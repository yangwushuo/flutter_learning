const Controller = require('./controller')

// 商品
module.exports = class ProductsController extends Controller {
	// 分类列表
	async categories(_request, reply) {
		const res = await this.ProductsService.categories()
		reply.send(res)
	}

	// 属性列表
	async attributes(_request, reply) {
		const res = await this.ProductsService.attributes()
		reply.send(res)
	}

	// 属性详情列表
	async attributeTerms(request, reply) {
		const { id } = request.params
		const res = await this.ProductsService.attributeTerms(id)
		reply.send(res)
	}

	// tags列表
	async tags(request, reply) {
		const params = {
			...request.query
		}
		const res = await this.ProductsService.tags(params)
		reply.send(res)
	}

	// 商品列表
	async products(request, reply) {
		const params = {
			...request.query
		}
		// TODO: 调试需要设置成 1,20
		params.page = 1
		params.per_page = 20
		const res = await this.ProductsService.products(params)
		reply.send(res)
	}

	// 商品详情
	async product(request, reply) {
		const { id } = request.params
		const res = await this.ProductsService.product(id)
		reply.send(res)
	}

	// 评论列表
	async reviews(request, reply) {
		const params = {
			...request.query
		}
		const res = await this.ProductsService.reviews(params)
		reply.send(res)
	}

	// 评论创建
	async reviewCreate(request, reply) {
		const { user_id } = request.user
		const user = await this.UsersService.profile(user_id)
		const data = {
			reviewer: user.username,
			reviewer_email: user.email,
			...request.body
		}
		const res = await this.ProductsService.reviewCreate(data)
		reply.code(201).send(res)
	}
}
