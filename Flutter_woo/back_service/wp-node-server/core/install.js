'use strict'

const fp = require('fastify-plugin')
const WooCommerceRestApi = require('@woocommerce/woocommerce-rest-api').default

const schemas = require('../schema/index')
const services = require('../service/index')
const controllers = require('../controller/index')

const config = require('../utils/config')
console.log(config)

/*
  核心组件
*/
module.exports = fp(async function (fastify, opts) {
	/*
		plugins
	*/

	// handle http errors
	await fastify.register(require('fastify-sensible'), {
		errorHandler: false
	})
	console.log('plugin: sensible ok')

	// env
	fastify.decorate('config', config)

	// swagger
	await fastify.register(require('fastify-swagger'), {
		exposeRoute: true,
		routePrefix: '/docs',
		swagger: {
			info: { title: 'wp-ducafecat-api' }
		}
	})
	console.log('plugin: swagger ok')

	// axios
	fastify.register(require('fastify-axios'), {
		baseURL: config.wcHost
	})
	console.log('plugin: axios ok')

	// woo
	fastify.decorate(
		'woo',
		new WooCommerceRestApi({
			url: config.wcHost,
			consumerKey: config.wcKey,
			consumerSecret: config.wcSecret,
			version: 'wc/v3',
			queryStringAuth: true // Force Basic Authentication as query string true and using under HTTPS
		})
	)
	console.log('plugin: woo ok')

	// jwt
	await fastify.register(require('fastify-jwt'), {
		secret: config.jwtSecret
	})
	fastify.addHook('onRequest', async (request, reply) => {
		try {
			await request.jwtVerify()
		} catch (err) {
			const wl = config.jwtWhitelist.split(',').find(val => {
				return request.routerPath === val
			})
			if (wl === undefined) {
				reply.send(err)
			}
		}
	})
	console.log('plugin: jwt ok')

	/*
		schema
	*/
	for (const key in schemas) {
		fastify.addSchema(schemas[key])
		console.log(`schema: ${key} ok`)
	}

	/*
		service
	*/
	for (const key in services) {
		fastify.decorate(key, new services[key](fastify))
		console.log(`service: ${key} ok`)
	}

	/*
		controller
	*/
	for (const key in controllers) {
		fastify.decorate(key, new controllers[key](fastify))
		console.log(`controller: ${key} ok`)
	}

	// done
})
