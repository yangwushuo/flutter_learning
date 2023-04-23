const reqUserLogin = {
	$id: 'reqUserLogin',
	type: 'object',
	required: ['username', 'password'],
	properties: {
		username: {
			type: 'string'
		},
		password: {
			type: 'string'
		}
	}
}

const resUserLogin = {
	$id: 'resUserLogin',
	type: 'object',
	properties: {
		token: {
			type: 'string'
		}
	}
}

const reqUserRegister = {
	$id: 'reqUserRegister',
	type: 'object',
	required: ['username', 'password', 'email', 'first_name', 'last_name'],
	properties: {
		username: {
			type: 'string'
		},
		password: {
			type: 'string'
		},
		email: {
			type: 'string'
		},
		first_name: {
			type: 'string'
		},
		last_name: {
			type: 'string'
		}
	}
}

module.exports = {
	reqUserLogin,
	resUserLogin,
	reqUserRegister
}
