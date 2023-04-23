const dotenv = require('dotenv')
const { parsed: config } = dotenv.config({ override: true })

module.exports = config
