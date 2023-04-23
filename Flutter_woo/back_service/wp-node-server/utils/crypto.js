const config = require('./config')
const CryptoJS = require('crypto-js')
const key = CryptoJS.enc.Utf8.parse(config.aesKey)
const iv = CryptoJS.enc.Utf8.parse(config.aesIV)
const options = {
	iv: iv,
	mode: CryptoJS.mode.CBC,
	padding: CryptoJS.pad.Pkcs7
}

// aes 加密
const aesEncrypt = function (strVal) {
	let encrypted = CryptoJS.AES.encrypt(strVal, key, options)
	let base64Val = CryptoJS.enc.Base64.stringify(encrypted.toString())
	return base64Val
}

// aes 解密
const aesDecrypt = function (base64Val) {
	let decrypted = CryptoJS.AES.decrypt(base64Val, key, options)
	let decryptedStr = decrypted.toString(CryptoJS.enc.Base64)
	decryptedStr = Buffer.from(decryptedStr, 'base64').toString()

	return decryptedStr
}

module.exports = {
	aesEncrypt,
	aesDecrypt
}
