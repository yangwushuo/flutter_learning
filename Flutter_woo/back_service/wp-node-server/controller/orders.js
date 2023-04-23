const Controller = require('./controller')

// 订单
module.exports = class OrdersController extends Controller {
	// 订单创建
	async orderCreate(request, reply) {
		const { user_id } = request.user
		const data = {
			customer_id: user_id,
			...request.body
		}

		const res = await this.OrdersService.orderCreate(data)
		reply.code(201).send(res)
	}

	// 订单列表
	async orders(request, reply) {
		const { user_id } = request.user
		const params = {
			...request.query,
			customer: user_id
			// status: ['pending', 'processing', 'on-hold', 'completed']
		}
		const res = await this.OrdersService.orders(params)
		reply.send(res)
	}

	// 订单详情
	async order(request, reply) {
		const { id: order_id } = request.params

		// 检查状态
		if ((await this.OrdersService.chkIsSelf(request, order_id)) == false) {
			return reply.methodNotAllowed('订单访问不被允许')
		}

		// 检查待支付状态
		const res = await this.OrdersService.order(order_id)
		reply.send(res)
	}

	// 修改数量
	async quantityChange(request, reply) {
		const { id: order_id, item_id } = request.params
		const { product_id, quantity } = request.body

		// 检查状态
		if ((await this.OrdersService.chkIsSelf(request, order_id)) == false) {
			return reply.methodNotAllowed('订单访问不被允许')
		}

		// 检查状态
		if ((await this.OrdersService.chkIsPending(order_id)) == false) {
			return reply.methodNotAllowed('订单 pending 才能操作')
		}

		// 修改数量
		const res = await this.OrdersService.quantityChange(order_id, item_id, product_id, quantity)
		reply.send(res)
	}

	// 优惠券使用
	async couponApply(request, reply) {
		const { id: order_id } = request.params
		const { code } = request.body

		// 检查状态
		if ((await this.OrdersService.chkIsSelf(request, order_id)) == false) {
			return reply.methodNotAllowed('订单访问不被允许')
		}

		// 检查状态
		if ((await this.OrdersService.chkIsPending(order_id)) == false) {
			return reply.methodNotAllowed('订单 pending 才能操作')
		}

		// 使用优惠券
		const res = await this.OrdersService.couponApply(order_id, code)
		reply.send(res)
	}

	// 支付确认
	async checkout(request, reply) {
		const { order_id, payment_method, payment_method_title } = request.body

		// 检查状态
		if ((await this.OrdersService.chkIsSelf(request, order_id)) == false) {
			return reply.methodNotAllowed('订单访问不被允许')
		}

		// 检查状态
		if ((await this.OrdersService.chkIsPending(order_id)) == false) {
			return reply.methodNotAllowed('订单 pending 才能操作')
		}

		// 支付
		const res = await this.OrdersService.checkout(order_id, payment_method, payment_method_title)
		reply.send(res)
	}

	// 订单取消
	async cancel(request, reply) {
		const { id: order_id } = request.params

		// 检查状态
		if ((await this.OrdersService.chkIsSelf(request, order_id)) == false) {
			return reply.methodNotAllowed('订单访问不被允许')
		}

		// 检查状态
		if ((await this.OrdersService.chkIsPending(order_id)) == false) {
			return reply.methodNotAllowed('订单 pending 才能操作')
		}

		// 取消
		const res = await this.OrdersService.cancel(order_id)
		reply.send(res)
	}
}
