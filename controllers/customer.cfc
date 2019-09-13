component displayname="customer controller" accessors=true{
	property name="name";
	property name="address";
	property name="email";
	property customerService;

	public void function default(struct rc = {}) {
		// dump(this);
		// echo(customerService.iExist());
	}

	public void function updateName(required string name) {
		this.name = arguments.name;
	}

	public void function updateAddress(required string address) {
		this.address = arguments.address;
	}

	public void function updateEmail(required string email) {
		this.email = arguments.email;
	}
}
