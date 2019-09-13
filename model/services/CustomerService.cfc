component displayname="CustomerService service" accessors=true{
	property name="name";
	property name="address";
	property name="email";

	public CustomerService function init(name, address, email) {
		variables.name = arguments.name;
		variables.address = arguments.address;
		variables.email = arguments.email;
		return this;
	}

	public boolean function iExist(){
		return true;
	}

	public void function updateName(required string name) {
		this.name = arguments.name;
	}

	public function updateAddress(required string address) {
		this.address = arguments.address;
	}

	public function updateEmail(required string email) {
		this.email = arguments.email;
	}
}

