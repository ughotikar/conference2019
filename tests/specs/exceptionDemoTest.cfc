component extends="testbox.system.BaseSpec" {

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll() {
		
	}

	function afterAll() {
		
	}

	/*********************************** BDD SUITES ***********************************/

	function run(){
		describe("ExceptionDemo.division()", function(){
			beforeEach(function(currentSpec){
				target = new controllers.exceptionDemo();
			});

			when("two non-zero positive integers are given", function(){
				then("a non-zero positive integer result is returned", function(){
					expectedResult = 2;
					expect(target.division(10,5)).toBe(expectedResult);
				});
			});

			when("numOne is zero and numTwo is non-zero positive integer", function(){
				then("zero is returned", function(){
					expectedResult = 0;
					expect(target.division(0,4)).toBe(expectedResult);
				});
			});

			when("numOne is non-zero positive integer and numTwo is zero", function(){
				then("an exception of the type `Division by zero` is thrown", function(){
					expect(function(){
						target.division(10,0)
					}).toThrow("Division by zero");
				});
			});
		});
	}
}