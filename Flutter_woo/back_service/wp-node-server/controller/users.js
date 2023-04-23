const Controller = require('./controller')
const { aesDecrypt } = require('../utils/crypto')

// 用户
module.exports = class UsersController extends Controller {
	// 注册
	async register(request, reply) {
		const data = {
			...request.body
		}
		const res = await this.UsersService.create(data)
		reply.code(201).send(res)
	}

	// 登录
	async login(request, reply) {
		const { username, password } = request.body
		let decryptPassword = aesDecrypt(password)

		const res = await this.UsersService.login(username, decryptPassword)
		const { id, name } = res
		const payload = { user_id: id, username: name }
		const token = await reply.jwtSign(payload, {
			expiresIn: this.config.jwtExpiresIn
		})
		reply.send({ token })
	}

	// 用户信息 Profile
	async profile(request, reply) {
		const { user_id } = request.user
		const data = await this.UsersService.profile(user_id)
		reply.send(data)
	}

	// 更新用户信息
	async update(request, reply) {
		const data = {
			id: request.user.user_id,
			...request.body
		}
		const res = await this.UsersService.update(data)
		reply.send(res)
	}

	// 洲 国家 省
	async continents(_request, reply) {
		const data = await this.UsersService.continents()
		reply.send(data)
	}
}
