
component extends="account" displayName="checkingAccount" hint="Concrete CFC checkingAccount."{

	property minBalance;
	property oerdraftLimit;
	property overdraftFee;
	property serviceFee;
	property isOverDrawn;
	property droppedBelowMinBalance;

	public any function init(accountNumber, startBalance){
		super.init(arguments.accountNumber, arguments.startBalance);
		this.minBalance=100.0;
		this.overdraftLimit=0.0;
		this.overdraftFee=30.0;
		this.serviceFee=12.0;
		this.isOverDrawn=false;
		this.droppedBelowMinBalance =false;
		return this;
	}
	
	// Override
	public void function withdraw(required numeric amount){
		if(arguments.amount <= this.balance + this.overdraftLimit) {
			this.balance = this.balance - arguments.amount;
			// updateAccountStatus();
			if(this.isOverDrawn) {
				this.balance = this.balance - overdraftFee;
			}
		}else{
			throw(type="InsufficientFundsException");
		}
	}

	public void function processCheck(check check){
		withdraw(check.getAmount());
	}

}