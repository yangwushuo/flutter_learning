'use strict'

const Service = require('./service')
const base64 = require('Base64')
const btoa = base64.btoa

module.exports = class UsersService extends Service {
	// 登陆
	async login(username, password) {
		const authorization = `Basic ${btoa(username + ':' + password)}`
		const { data: res } = await this.axios.get('/wp-json/wp/v2/users/me', { headers: { Authorization: authorization } })
		return res
	}

	// 个人信息
	async profile(user_id) {
		const { data: res } = await this.woo.get(`customers/${user_id}`)
		return res
	}

	// 创建新用户
	async create(data) {
		// const data = {
		// 	email: email,
		// 	username: username,
		// 	password: password,
		// 	first_name: '',
		// 	last_name: ''
		// }
		const { data: res } = await this.woo.post(`customers`, data)
		return res
	}

	// 更新用户信息
	async update(data) {
		const { id: user_id } = data
		// const data = {
		// 	email: email,
		// 	username: username,
		// 	password: password,
		// 	first_name: '',
		// 	last_name: ''
		// }
		const { data: res } = await this.woo.put(`customers/${user_id}`, data)
		return res
	}

	// 洲 国家 省
	async continents() {
		const { data: res } = await this.woo.get(`data/continents`)
		return res
	}
}
