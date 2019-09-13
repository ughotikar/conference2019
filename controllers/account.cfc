abstract component displayName="account" hint="Abstract account CFC."{
	
	property numeric accountNumber;
	property numeric balance;
	// property customer owner;
	
	public account function init(
		required numeric accountNumber,
		required numeric balance
		// required customer owner
	){
		this.accountNumber = arguments.accountNumber;
		this.balance = arguments.balance;
		// this.owner = arguments.owner;
		return this;
	}

	public customer function getOwner(){
		return this.owner;
	}

	public numeric function getAccountNumber(){
		return this.accountNumber;
	}
	
	public numeric function getBalance() {
		return this.balance;
	}

	public void function deposit(
		required numeric amount
	){
		if (amount <= 0) {
			throw(type="negative deposit");
		} else {
			this.balance = this.balance + amount;
		}
	}

	public abstract void function withdraw(required numeric amount);
}