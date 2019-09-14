component extends="testbox.system.BaseSpec" {

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll() {
		// do something
		target = new controllers.demoOne();
	}

	function afterAll() {
		// do something
	}

	/*********************************** BDD SUITES ***********************************/

	function run(){
		scenario("concatenate strings", function(){
			given("two input strings", function(){
				when("`concatenate()` function is called", function(){
					then("concatenated string is returned", function(){
						expect(target.concatenate("one","two")).toBe("onetwo");
					});
					then("concatenated string is returned", function(){
						expect(target.concatenate("one","three")).toBe("onethree");
					});
				});
			});
		});
	}
}