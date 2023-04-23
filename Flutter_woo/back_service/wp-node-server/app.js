'use strict'

const path = require('path')
const AutoLoad = require('fastify-autoload')
const StringUtil = require('./utils/string')

module.exports = async function (fastify, opts) {
	// 自定义错误信息
	fastify.setErrorHandler(function (error, request, reply) {
		fastify.log.error(error)
		const statusCode = error.response?.status || error.response?.data.status || reply.statusCode || 500
		const errTitle = error.response?.data.code || error.response?.statusText || error.name || 'Internal Server Error'
		const errMessage = error.response?.data.message || error.message || 'Internal Server Error'
		const result = {
			statusCode: statusCode,
			error: errTitle,
			message: StringUtil.cleanHtmlTag(errMessage)
		}
		reply.status(statusCode).send(result)
	})

	await fastify.register(AutoLoad, {
		dir: path.join(__dirname, 'core'),
		options: Object.assign({}, opts)
	})
	console.log('core ok')

	await fastify.register(AutoLoad, {
		dir: path.join(__dirname, 'routes'),
		options: Object.assign({}, opts)
	})
	console.log('routes ok')
}
