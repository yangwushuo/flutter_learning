'use strict'

module.exports = async function (fastify, opts) {
	// 订单创建
	fastify.post('/', { schema: { body: { $ref: 'orderEntity' } } }, fastify.OrdersController.orderCreate)

	// 订单列表
	fastify.get('/', { schema: { query: { $ref: 'reqOrders' } } }, fastify.OrdersController.orders)

	// 订单详情
	fastify.get('/:id', { schema: {} }, fastify.OrdersController.order)

	// // 修改数量
	// fastify.put('/:id/quantity_change/:item_id', { schema: { body: { $ref: 'reqQuantityChange' } } }, fastify.OrdersController.quantityChange)

	// // 优惠券使用
	// fastify.put('/:id/coupon_apply', { schema: { body: { $ref: 'reqCouponApply' } } }, fastify.OrdersController.couponApply)

	// 支付确认
	fastify.put('/:id/checkout', { schema: { body: { $ref: 'reqCheckout' } } }, fastify.OrdersController.checkout)

	// 订单取消
	fastify.put('/:id/cancel', { schema: {} }, fastify.OrdersController.cancel)
}
