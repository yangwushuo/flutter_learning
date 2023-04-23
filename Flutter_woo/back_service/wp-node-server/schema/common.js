// 验证
const authorization = {
	$id: 'authorization',
	type: 'object',
	required: ['authorization'],
	properties: {
		authorization: {
			type: 'string'
		}
	}
}

module.exports = {
	authorization
}
