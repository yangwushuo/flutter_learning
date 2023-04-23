'use strict'

const Service = require('./service')

module.exports = class CouponsService extends Service {
	// 优惠券列表
	async coupons(code) {
		let params = {
			code: code
		}
		const { data: res } = await this.woo.get(`coupons`, params)
		return res
	}

	// 优惠券详情
	async coupon(id) {
		let { data: res } = await this.woo.get(`coupons/${id}`)
		return res
	}
}
