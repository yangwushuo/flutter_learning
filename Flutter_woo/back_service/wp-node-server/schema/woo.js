////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Entity Schema Definition

const addressEntity = {
	$id: 'addressEntity',
	type: 'object',
	properties: {
		first_name: {
			type: 'string'
		},
		last_name: {
			type: 'string'
		},
		company: {
			type: 'string'
		},
		address_1: {
			type: 'string'
		},
		address_2: {
			type: 'string'
		},
		city: {
			type: 'string'
		},
		postcode: {
			type: 'string'
		},
		country: {
			type: 'string'
		},
		state: {
			type: 'string'
		},
		email: {
			type: 'string'
		},
		phone: {
			type: 'string'
		}
	}
}

const userEntity = {
	$id: 'userEntity',
	type: 'object',
	properties: {
		id: {
			type: 'integer'
		},
		date_created: {
			type: 'string',
			format: 'date-time'
		},
		date_created_gmt: {
			type: 'string',
			format: 'date-time'
		},
		date_modified: {
			type: 'string',
			format: 'date-time'
		},
		date_modified_gmt: {
			type: 'string',
			format: 'date-time'
		},
		email: {
			type: 'string'
		},
		first_name: {
			type: 'string'
		},
		last_name: {
			type: 'string'
		},
		role: {
			type: 'string'
		},
		username: {
			type: 'string'
		},
		billing: {
			$ref: 'addressEntity'
		},
		shipping: {
			$ref: 'addressEntity'
		},
		is_paying_customer: {
			type: 'boolean'
		},
		avatar_url: {
			type: 'string'
		}
	}
}

// 购物车项
const lineItemEntity = {
	$id: 'lineItemEntity',
	type: 'object',
	properties: {
		id: {
			type: 'integer'
		},
		product_id: {
			type: 'integer'
		},
		quantity: {
			type: 'integer'
		}
	}
}

// 运费计算
const shippingLinesEntity = {
	$id: 'shippingLinesEntity',
	type: 'object',
	properties: {
		product_id: {
			type: 'integer'
		},
		quantity: {
			type: 'integer'
		}
	}
}

// 优惠券
const couponEntity = {
	$id: 'couponEntity',
	type: 'object',
	properties: {
		code: {
			type: 'string'
		}
	}
}

// 订单
const orderEntity = {
	$id: 'orderEntity',
	type: 'object',
	properties: {
		customer_id: {
			type: 'integer'
		},
		billing: {
			$ref: 'addressEntity'
		},
		shipping: {
			$ref: 'addressEntity'
		},
		line_items: {
			type: 'array',
			items: {
				$ref: 'lineItemEntity'
			}
		},
		shipping_lines: {
			type: 'array',
			items: {
				$ref: 'shippingLinesEntity'
			}
		},
		coupon_lines: {
			type: 'array',
			items: {
				$ref: 'couponEntity'
			}
		}
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Application Schema Definition

// 搜索Tags
const reqTags = {
	$id: 'reqTags',
	type: 'object',
	properties: {
		page: {
			type: 'integer'
		},
		per_page: {
			type: 'integer'
		},
		search: {
			type: 'string'
		},
		slug: {
			type: 'string'
		}
	}
}

// 搜索商品
const reqProducts = {
	$id: 'reqProducts',
	type: 'object',
	properties: {
		page: {
			type: 'integer'
		},
		per_page: {
			type: 'integer'
		},
		featured: {
			type: 'boolean'
		},
		category: {
			type: 'string'
		},
		search: {
			type: 'string'
		},
		slug: {
			type: 'string'
		},
		tag: {
			type: 'string'
		},
		status: {
			type: 'string'
		},
		sku: {
			type: 'string'
		},
		attribute: {
			type: 'string'
		},
		attribute_term: {
			type: 'string'
		},
		min_price: {
			type: 'string'
		},
		max_price: {
			type: 'string'
		},
		orderby: {
			type: 'string'
		},
		order: {
			type: 'string'
		}
	}
}

// 商品评论列表
const reqProductReviews = {
	$id: 'reqProductReviews',
	type: 'object',
	required: ['product'],
	properties: {
		page: {
			type: 'integer'
		},
		per_page: {
			type: 'integer'
		},
		product: {
			type: 'integer'
		}
	}
}

// 商品评论创建
const reqProductReviewsCreate = {
	$id: 'reqProductReviewsCreate',
	type: 'object',
	required: ['product_id', 'rating', 'review'],
	properties: {
		product_id: {
			type: 'integer'
		},
		review: {
			type: 'string'
		},
		// reviewer: {
		// 	type: 'string'
		// },
		// reviewer_email: {
		// 	type: 'string'
		// },
		rating: {
			type: 'integer'
		}
	}
}

// 搜索订单
const reqOrders = {
	$id: 'reqOrders',
	type: 'object',
	properties: {
		page: {
			type: 'integer'
		},
		per_page: {
			type: 'integer'
		}
		// customer: {
		// 	type: 'integer'
		// }
	}
}

// 修改数量
const reqQuantityChange = {
	$id: 'reqQuantityChange',
	type: 'object',
	required: ['order_id', 'item_id', 'product_id', 'quantity'],
	properties: {
		order_id: {
			type: 'integer'
		},
		item_id: {
			type: 'integer'
		},
		product_id: {
			type: 'integer'
		},
		quantity: {
			type: 'integer'
		}
	}
}

// 修改数量
const reqCouponApply = {
	$id: 'reqCouponApply',
	type: 'object',
	required: ['code'],
	properties: {
		code: {
			type: 'string'
		}
	}
}

// 支付确认
const reqCheckout = {
	$id: 'reqCheckout',
	type: 'object',
	required: ['order_id', 'payment_method', 'payment_method_title'],
	properties: {
		order_id: {
			type: 'integer'
		},
		payment_method: {
			type: 'string'
		},
		payment_method_title: {
			type: 'string'
		}
	}
}

// 搜索优惠券
const reqCoupons = {
	$id: 'reqCoupons',
	type: 'object',
	required: ['code'],
	properties: {
		code: {
			type: 'string'
		}
	}
}

module.exports = {
	// entities
	addressEntity,
	userEntity,
	lineItemEntity,
	shippingLinesEntity,
	couponEntity,
	orderEntity,

	// application schema
	reqTags,
	reqProducts,
	reqProductReviews,
	reqProductReviewsCreate,
	reqOrders,
	reqQuantityChange,
	reqCouponApply,
	reqCheckout,
	reqCoupons
}
