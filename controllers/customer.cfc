component accessors=true{
	property string name;
	property string address;
	property string email;

	public void function default(struct rc = {}) {
		// dump(this);
		// echo(customerService.iExist());
	}

	public void function updateName(required string name) {
		variables.name = arguments.name;
	}

	public void function updateAddress(required string address) {
		variables.address = arguments.address;
	}

	public void function updateEmail(required string email) {
		variables.email = arguments.email;
	}
}
