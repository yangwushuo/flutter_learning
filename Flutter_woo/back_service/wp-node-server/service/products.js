'use strict'

const Service = require('./service')

module.exports = class ProductsService extends Service {
	// 分类列表
	async categories() {
		const { data: res } = await this.woo.get(`products/categories`)
		return res
	}

	// 属性列表
	async attributes() {
		const { data: res } = await this.woo.get(`products/attributes`)
		return res
	}

	// 属性详情列表
	async attributeTerms(attributeId) {
		const { data: res } = await this.woo.get(`products/attributes/${attributeId}/terms`)
		return res
	}

	// tags列表
	async tags(req) {
		let params = {
			page: req.page,
			per_page: req.per_page
		}
		if (req.search ?? '' !== '') {
			params.search = req.search
		}
		if (req.slug ?? '' !== '') {
			params.slug = req.slug
		}
		const { data: res } = await this.woo.get(`products/tags`, params)
		return res
	}

	// 商品列表
	async products(req) {
		let params = {
			// page: req.page,
			// per_page: req.per_page,
			// ...req,
			page: 1,
			per_page: req.per_page ?? 20,
			status: 'publish'
		}
		if (req.include != undefined) {
			params.include = req.include
		}
		if (req.featured === true) {
			params.featured = true
		}
		if (req.category ?? '' !== '') {
			params.category = req.category
		}
		if (req.search ?? '' !== '') {
			params.search = req.search
		}
		if (req.slug ?? '' !== '') {
			params.slug = req.slug
		}
		if (req.tag ?? '' !== '') {
			params.tag = req.tag
		}
		if (req.status ?? '' !== '') {
			params.status = req.status
		}
		if (req.sku ?? '' !== '') {
			params.sku = req.sku
		}
		if (req.attribute ?? '' !== '') {
			params.attribute = req.attribute
		}
		if (req.attribute_term ?? '' !== '') {
			params.attribute_term = req.attribute_term
		}
		if (req.min_price ?? '' !== '') {
			params.min_price = req.min_price
		}
		if (req.max_price ?? '' !== '') {
			params.max_price = req.max_price
		}
		if (req.orderby ?? '' !== '') {
			params.orderby = req.orderby
		}
		if (req.order ?? '' !== '') {
			params.order = req.order
		}
		const { data: res } = await this.woo.get(`products`, params)
		return res
	}

	// 商品详情
	async product(product_id) {
		const { data: res } = await this.woo.get(`products/${product_id}`)
		return res
	}

	// 评论列表
	async reviews(req) {
		const { page, per_page, product } = req
		const params = {
			page: page,
			per_page: per_page,
			product: [product]
		}
		const { data: res } = await this.woo.get(`products/reviews`, params)
		return res
	}

	// 评论创建
	async reviewCreate(data) {
		// const params = {
		// 	product_id: pid,
		// 	review: review,
		// 	reviewer: reviewer,
		// 	reviewer_email: reviewerEmail,
		// 	rating: rating
		// }
		const { data: res } = await this.woo.post(`products/reviews`, data)
		return res
	}
}
