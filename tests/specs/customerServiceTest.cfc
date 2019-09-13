/**
* This tests the BDD functionality in TestBox. This is CF10+, Railo4+
*/
component extends="testbox.system.BaseSpec"{

/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		
	}

	function afterAll(){
		
	}

/*********************************** BDD SUITES ***********************************/

	function run(){

		/** 
		* describe() starts a suite group of spec tests.
		* Arguments:
		* @title The title of the suite, Usually how you want to name the desired behavior
		* @body A closure that will resemble the tests to execute.
		* @labels The list or array of labels this suite group belongs to
		* @asyncAll If you want to parallelize the execution of the defined specs in this suite group.
		* @skip A flag that tells TestBox to skip this suite group from testing if true
		*/
		describe( "A spec", function(){
		
			// before each spec in THIS suite group
			beforeEach(function(currentSpec){
				target = new model.services.CustomerService("Uma", "Fairfax", "uma@gmail.com");
			});
			
			/** 
			* it() describes a spec to test. Usually the title is prefixed with the suite name to create an expression.
			* Arguments:
			* @title The title of the spec
			* @spec A closure that represents the test to execute
			* @labels The list or array of labels this spec belongs to
			* @skip A flag that tells TestBox to skip this spec from testing if true
			*/
			
			given("a customer", function(){
				when("customer's basic info is provided with new values", function(){
					then("customer name gets updated with new value", function(){
						// target = new model.services.CustomerService("Uma", "Fairfax", "uma@gmail.com");
						expect(target.getName()).toBe("Uma");
						// customer.updateName("Minnie Mouse");
						// expect(customer.getName()).toBe("Minnie Mouse");
					});
					then("customer address gets updated with new value", function(){
						target.updateAddress("Disney World");
						expect(target.getAddress()).toBe("Disney World");
					});
					/* then("customer email gets updated with new value", function(){
						target.updateEmail("Minnie@Disneyworld.com");
						expect(target.getEmail()).toBe("Minnie@Disneyworld.com");
					}); */
				});
			});

				
				
		
			

			
		
		});


	}
}