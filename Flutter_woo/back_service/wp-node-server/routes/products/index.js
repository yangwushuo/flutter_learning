'use strict'

module.exports = async function (fastify, opts) {
	// 分类列表
	fastify.get('/categories', { schema: {} }, fastify.ProductsController.categories)

	// 属性列表
	fastify.get('/attributes', { schema: {} }, fastify.ProductsController.attributes)

	// 属性详情列表
	fastify.get('/attributes/:id/terms', { schema: {} }, fastify.ProductsController.attributeTerms)

	// tags列表
	fastify.get('/tags', { schema: { query: { $ref: 'reqTags' } } }, fastify.ProductsController.tags)

	// 商品列表
	fastify.get('/', { schema: { query: { $ref: 'reqProducts' } } }, fastify.ProductsController.products)

	// 商品详情
	fastify.get('/:id', { schema: {} }, fastify.ProductsController.product)

	// 商品评论列表
	fastify.get('/reviews', { schema: { query: { $ref: 'reqProductReviews' } } }, fastify.ProductsController.reviews)

	// 商品评论创建
	fastify.post('/reviews', { schema: { body: { $ref: 'reqProductReviewsCreate' } } }, fastify.ProductsController.reviewCreate)
}
