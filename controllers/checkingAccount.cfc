
component extends="account" displayName="checkingAccount" hint="Concrete CFC checkingAccount." accessors=true{
	property accountNumber;
	property balance;
	property minBalance;
	property overdraftLimit;
	property overdraftFee;
	property serviceFee;
	property isOverDrawn;
	property droppedBelowMinBalance;
	property NotificationService;

	public any function init(
		accountNumber, balance, any NotificationService = {}
	){
		super.init(
			arguments.accountNumber,
			arguments.balance
		);
		variables.minBalance = 100.0;
		variables.overdraftLimit = 0.0;
		variables.overdraftFee = 30.0;
		variables.serviceFee = 12.0;
		variables.isOverDrawn = false;
		variables.droppedBelowMinBalance = false;

		if(structIsEmpty(arguments.NotificationService)){
			arguments.NotificationService = new model.services.NotificationService();
		}
		
		setNotificationService(arguments.NotificationService);
		
		return this;
	}
	
	// Override
	public void function withdraw(
		required numeric withdrawAmount
	){
		if(arguments.withdrawAmount > variables.balance){
			throw(type="InsufficientFundsException");
		}else{
			variables.balance = variables.balance - arguments.withdrawAmount;
			updateAccountStatus();
		}
	}

	// Override
	public void function deposit(
		required numeric depositAmount
	){
		super.deposit(arguments.depositAmount);
		updateAccountStatus();
	}

	public void function processCheck(
		required check check
	){
		withdraw(check.getAmount());
	}

	private void function updateAccountStatus(){
		if(variables.balance < variables.minBalance){
			variables.droppedBelowMinBalance = true;
		}
		
		getNotificationService().notify();
	}

}