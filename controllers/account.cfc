abstract component displayName="account" hint="Abstract account CFC."{
	
	property numeric accountNumber;
	property numeric balance;
	// property customer owner;
	
	public account function init(
		required numeric accountNumber,
		required numeric balance
	){
		variables.accountNumber = arguments.accountNumber;
		variables.balance = arguments.balance;
		// this.owner = arguments.owner;
		return this;
	}

	/* public customer function getOwner(){
		return this.owner;
	}

	public numeric function getAccountNumber(){
		return this.accountNumber;
	} */
	
	public numeric function getBalance() {
		return variables.balance;
	}

	public void function deposit(
		required numeric depositAmount
	){
		if(arguments.depositAmount <= 0){
			throw(type="negative deposit");
		}else{
			variables.balance = variables.balance + arguments.depositAmount;
		}
	}

	public abstract void function withdraw(
		required numeric withdrawAmount
	);
}