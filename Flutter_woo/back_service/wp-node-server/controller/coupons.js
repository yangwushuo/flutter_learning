const Controller = require('./controller')

// 优惠券
module.exports = class CouponsController extends Controller {
	// 优惠券列表
	async coupons(request, reply) {
		const { code } = request.query
		const res = await this.CouponsService.coupons(code)
		reply.send(res)
	}

	// 优惠券详情
	async coupon(request, reply) {
		const { id: coupon_id } = request.params
		const res = await this.CouponsService.coupon(coupon_id)
		reply.send(res)
	}
}
