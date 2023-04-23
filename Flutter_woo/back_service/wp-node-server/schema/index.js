const common = require('./common')
const user = require('./user')
const woo = require('./woo')

module.exports = {
	...common,
	...user,
	...woo
}
