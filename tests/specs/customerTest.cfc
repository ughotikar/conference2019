/**
* This tests the BDD functionality in TestBox. This is CF10+, Railo4+
*/
component extends="testbox.system.BaseSpec"{

/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		customer = new controllers.customer(name="Foo", address="Virginia", email="foo@foo.com");
	}

	function afterAll(){
		
	}

/*********************************** BDD SUITES ***********************************/

	function run(){
		describe("Banking Application", function(){
			given("a customer exists", function(){
				when("customer's basic info is provided with new values", function(){
					then("customer name gets updated with new value", function(){
						expect(customer.getName()).toBe("Foo");
						customer.updateName("Foobar");
						expect(customer.getName()).toBe("Foobar");
					});
					then("customer address gets updated with new value", function(){
						customer.updateAddress("New York");
						expect(customer.getAddress()).toBe("New York");
					});
					then("customer email gets updated with new value", function(){
						customer.updateEmail("foobar@foobar.com");
						expect(customer.getEmail()).toBe("foobar@foobar.com");
					});
				});
			});
		});
	}
}