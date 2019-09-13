component extends="testbox.system.BaseSpec"{

	/*********************************** LIFE CYCLE Methods ***********************************/
	
		function beforeAll(){
			// customer = new model.services.CustomerService("Uma", "Fairfax", "uma@gmail.com");
			target = new controllers.checkingAccount(987654321, 250.00);
			check = new controllers.check();
			$mockbox.prepareMock(check);
			
			// worked with stub as well -- check = getMockBox().createStub(callLogging="true", extends="controllers.check");
		}
	
		function afterAll(){
			// Tear down
		}
	
	/*********************************** BDD SUITES ***********************************/
	
	function run(){
		scenario("Customers should be able to process a valid check on a checking account with sufficient funds", function(){
			given("a customer's checking account with an initial balance of $250.00", function(){
				when("a check for $100.00 is processed", function(){
					then("the new account balance should be $150.00", function(){
						
						check.$("getAmount").$results(100.00);
						check.$("getCheckNumber").$results(4321);
						
						target.processCheck(check);
						expect(target.getBalance(), 150.00);
					});
				});
			});
		});
	}
}