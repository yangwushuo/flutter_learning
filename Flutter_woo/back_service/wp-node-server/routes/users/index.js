'use strict'

module.exports = async function (fastify, opts) {
	// 登录
	fastify.post('/login', { schema: { body: { $ref: 'reqUserLogin' }, response: { 200: { $ref: 'resUserLogin' } } } }, fastify.UsersController.login)

	// 注册
	fastify.post('/register', { schema: { body: { $ref: 'reqUserRegister' } } }, fastify.UsersController.register)

	// Profile
	fastify.get('/me', { schema: { headers: { $ref: 'authorization' } } }, fastify.UsersController.profile)

	// 更新
	fastify.put('/me', { schema: { headers: { $ref: 'authorization' }, body: { $ref: 'userEntity' } } }, fastify.UsersController.update)

	// 洲 国家 省
	fastify.get('/continents', { schema: { headers: { $ref: 'authorization' } } }, fastify.UsersController.continents)
}
