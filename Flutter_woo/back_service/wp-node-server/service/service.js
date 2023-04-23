'use strict'

// const base64 = require('Base64')
// const btoa = base64.btoa

module.exports = class Service {
	constructor(fastify) {
		const { woo, axios, config } = fastify
		this.fastify = fastify
		this.axios = axios
		this.woo = woo
		this.config = config
	}

	// setAuth(username, password) {
	// 	this.authorization = `Basic ${btoa(username + ':' + password)}`
	// }

	// setAuthorization(authorization) {
	// 	this.authorization = authorization
	// }

	// setAdminAuth() {
	// 	this.authorization = `Basic ${btoa(this.config.wcKey + ':' + this.config.wcSecret)}`
	// }
}
