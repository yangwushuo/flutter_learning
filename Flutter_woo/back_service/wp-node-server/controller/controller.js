'use strict'

// 控制器
module.exports = class Controller {
	constructor(fastify, opts) {
		const { config } = fastify
		this.fastify = fastify
		this.opts = opts
		this.config = config
	}
}
