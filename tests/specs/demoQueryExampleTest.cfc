component extends="testbox.system.BaseSpec"{

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		
	}

	function afterAll(){
		
	}

/*********************************** BDD SUITES ***********************************/

	function run(){
		describe("query mock example", function(){
			it("will test function foo()", function(){
				
				target = new controllers.demoQueryExample();

				queryDef = 
				"id,name,publishedDate
				101|John|{ts '2019-09-01 00:00:00'}
				102|Mike|{ts '2019-09-02 00:00:00'}
				103|Steve|{ts '2019-09-03 00:00:00'}
				";

				inputQry = $mockBox.querySim(queryDef);

				// dump(inputQry);

				expectedResult = {
					// some result structure
				};

				receivedResult = target.foo(inputQry);

				expect(receivedResult).toBe(expectedResult);
			})
		})
	}
}