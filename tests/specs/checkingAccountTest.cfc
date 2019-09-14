component extends="testbox.system.BaseSpec"{

	/*********************************** LIFE CYCLE Methods ***********************************/
	
		function beforeAll(){
			// customer = new model.services.CustomerService("Uma", "Fairfax", "uma@gmail.com");
			
			check = new controllers.check();
			$mockbox.prepareMock(check);

			// worked with stub as well -- check = getMockBox().createStub(callLogging="true", extends="controllers.check");

			NotificationService = getMockBox().createMock("model.services.NotificationService");
			NotificationService.$("notify");
		}
	
		function afterAll(){
			// Tear down
		}
	
	/*********************************** BDD SUITES ***********************************/
	
	function run(){
		/* Simple scenario - Demo Given - When - Then */
		scenario("customer should be able to withdraw amount from checking account with sufficient funds", function(){
			given("a customer's checking account with an initial balance of $500.00", function(){
				when("an amount of $200.00 is withdrawan", function(){
					then("the new account balance should be $300.00", function(){
						target = new controllers.checkingAccount(
							accountNumber = 987654321,
							balance = 500.00
						);
						
						target.withdraw(200);
						expect(target.getBalance()).toBe(300.00);
					});
				});
			});
		});

		/* Demo of Expecting Exceptions */
		scenario("an exception is thrown when the customer attempts to withdraw amount from checking account with insufficient funds", function(){
			given("a customer's checking account with an initial balance of $500.00", function(){
				when("customer attempts to withdraw an amount of $800.00", function(){
					then("the exception is thrown", function(){
						target = new controllers.checkingAccount(
							accountNumber = 987654321,
							balance = 500.00
						);
						
						expect(function(){
							target.withdraw(800)
						}).toThrow("InsufficientFundsException");
					});
				});
			});
		});

		/* Demo of Mocking */
		scenario("customer should be able to process a valid check on a checking account with sufficient funds", function(){
			given("a customer's checking account with an initial balance of $250.00", function(){
				when("a check for $100.00 is processed", function(){
					then("the new account balance should be $150.00", function(){
						target = new controllers.checkingAccount(
							accountNumber = 987654321,
							balance = 250
						);
						
						check.$("getAmount").$results(100.00);
						check.$("getCheckNumber").$results(4321);
						
						target.processCheck(check);
						expect(target.getBalance()).toBe(150.00);
					});
				});
			});
		});

		/* Demo of `it` */
		scenario("customer should be able to deposit a positive amount to a checking account", function(){
			it("deposits amount to a checking account and updates the checking account balance", function(){
				target = new controllers.checkingAccount(
					accountNumber = 987654321,
					balance = 1000
				);
				
				target.deposit(200);
				expect(target.getBalance()).toBe(1200.00);
			});
		});

		/* Demo of `it` */
		scenario("customer should be able to deposit a positive amount to a checking account", function(){
			it("deposits amount to a checking account and updates the checking account balance", function(){
				target = new controllers.checkingAccount(
					accountNumber = 987654321,
					balance = 1000
				);
				
				expect(function(){
					target.deposit(-20)
				}).toThrow("negative deposit");
			});
		});
	}
}