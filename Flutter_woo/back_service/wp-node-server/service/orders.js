'use strict'

const Service = require('./service')

module.exports = class OrdersService extends Service {
	// 订单创建
	async orderCreate(data) {
		// 默认下免费配送方案
		data.shipping_lines = [
			{
				method_title: '免费配送',
				method_id: 'free_shipping',
				total: '0.00'
			}
		]
		const { data: res } = await this.woo.post(`orders`, data)
		return res
	}

	// 订单列表
	async orders(params) {
		const { data: res } = await this.woo.get(`orders`, params)

		// 加入商品信息
		for (let i = 0; i < res.length; i++) {
			const order = res[i]
			const { line_items } = order
			const products = await this.fastify.ProductsService.products(line_items.map(item => item.product_id))
			for (let j = 0; j < line_items.length; j++) {
				const item = line_items[j]
				const product = products.find(p => p.id == item.product_id)
				item.product = product
			}
		}

		return res
	}

	// 订单详情
	async order(id) {
		let { data: res } = await this.woo.get(`orders/${id}`)
		const product = await this.fastify.ProductsService.product(res.line_items[0].product_id)
		res.line_items[0].product = product
		return res
	}

	// 修改数量
	async quantityChange(order_id, item_id, product_id, quantity) {
		const params = {
			line_items: [
				{
					id: item_id,
					product_id: product_id,
					quantity: quantity
				}
			]
		}
		let { data: res } = await this.woo.put(`orders/${order_id}`, params)
		const product = await this.fastify.ProductsService.product(res.line_items[0].product_id)
		res.line_items[0].product = product
		return res
	}

	// 优惠券使用
	async couponApply(order_id, code) {
		const params = {
			coupon_lines: [
				{
					code
				}
			]
		}
		let { data: res } = await this.woo.put(`orders/${order_id}`, params)
		const product = await this.fastify.ProductsService.product(res.line_items[0].product_id)
		res.line_items[0].product = product
		return res
	}

	// 支付确认
	async checkout(order_id, payment_method, payment_method_title) {
		const params = {
			status: 'processing',
			payment_method: payment_method,
			payment_method_title: payment_method_title
		}
		let { data: res } = await this.woo.put(`orders/${order_id}`, params)
		const product = await this.fastify.ProductsService.product(res.line_items[0].product_id)
		res.line_items[0].product = product
		return res
	}

	// 订单取消
	async cancel(order_id) {
		const params = {
			status: 'cancelled'
		}
		let { data: res } = await this.woo.put(`orders/${order_id}`, params)
		const product = await this.fastify.ProductsService.product(res.line_items[0].product_id)
		res.line_items[0].product = product
		return res
	}

	// 检查是否 pending
	async chkIsPending(order_id) {
		const { data: res } = await this.woo.get(`orders/${order_id}`)
		if (res.status != 'pending') {
			return false
		}
		return true
	}

	// 检查是否 自己订单
	async chkIsSelf(request, order_id) {
		const { user_id } = request.user
		const { data: res } = await this.woo.get(`orders/${order_id}`)
		if (res.customer_id != user_id) {
			return false
		}
		return true
	}
}
