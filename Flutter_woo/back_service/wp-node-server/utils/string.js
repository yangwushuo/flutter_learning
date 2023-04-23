// 清除 HTML 标签
const cleanHtmlTag = function (strVal) {
	return strVal.replace(/<\/?[^>]+>/gi, '')
}

module.exports = {
	cleanHtmlTag
}
