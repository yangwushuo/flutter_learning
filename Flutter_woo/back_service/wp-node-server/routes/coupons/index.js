'use strict'

module.exports = async function (fastify, opts) {
	// 优惠券列表
	fastify.get('/', { schema: { query: { $ref: 'reqCoupons' } } }, fastify.CouponsController.coupons)

	// 优惠券详情
	fastify.get('/:id', { schema: {} }, fastify.CouponsController.coupon)
}
