component displayname="demo controller" accessors=true {

	property demoAPI;

	public void function default(struct rc = {}) {
		dump(this);
		echo(demoAPI.iExist());
	}

	public void function add(struct rc = {}) {
		
	}

	public void function view(struct rc = {}) {
		
	}

	public void function delete(struct rc = {}) {
		
	}

	public void function list(struct rc = {}) {
		
	}
}
