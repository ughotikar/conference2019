component extends="testbox.system.BaseSpec"{

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		application.salvador = 1;
	}

	function afterAll(){
		structClear( application );	
	}

	/*********************************** BDD SUITES ***********************************/

	/* All suites go here */
	function run(){

		/* Suite `describe()` */
		describe("A Suite", function(){
		
			/* before each spec in THIS suite group */
			beforeEach(function(){
				coldbox = 0;
				coldbox++;
			});
			
			/* after each spec in THIS suite group */
			afterEach(function(){
				foo = 0;
			});

			/* executes around the executing spec so you can provide code surrounding the spec */
			aroundEach(function (spec, suite){
				transaction{
					// execute the spec
					arguments.spec.body();
					transaction action = "rollback";
				}
			});
			
			it("is just a closure so it can contain code", function(){
				expect( coldbox ).toBe( 1 );
			});

			// more than 1 expectation
			it("can have more than one expectation test", function(){
				coldbox = coldbox * 8;
				// type checks
				expect( coldbox ).toBeTypeOf( 'numeric' );
				// dynamic type methods
				expect( coldbox ).toBeNumeric();
				// delta ranges
				expect( coldbox ).toBeCloseTo( expected=10, delta=2 );
				// negations
				expect( coldbox ).notToBe( 4 );
			});

			it("can have negative expectations", function(){
				coldbox = coldbox * 8;
				// type checks
				expect( coldbox ).notToBeTypeOf( 'usdate' );
				// dynamic type methods
				expect( coldbox ).notToBeArray();
				// delta ranges
				expect( coldbox ).notToBeCloseTo( expected=10, delta=2 );
			});
		});

		
		/* Outer Suite `describe()` */
		describe("Outer Suite", function(){
			it("contains spec in outer suite", function(){
				expect(4==4).toBeTrue();
			});

			/* Netsed Suite #1: `describe()` */
			describe("Nested Suite ##1", function(){
				/* before each spec in THIS suite group */
				beforeEach(function(){
					/* do something */
				});
				
				/* after each spec in THIS suite group */
				afterEach(function(){
					/* do something */
				});

				it("is just a closure so it can contain code", function(){
					expect(2 > 8).toBeFalse();
					expect(2 > 8).notToBeTrue();
				});

				// xit() skips
				xit("can have tests that can be skipped easily like this one", function(){
					fail( "xit() this should skip" );	
				});

				/* given - when - then */
				given("two positive integers", function(){
					when("addition is performed", function(){
						then("their sum is returned", function(){
							expect(1+5).toBe(6);
						});
					});
					when("subtraction is performed", function(){
						then("the difference between them is returned", function(){
							expect(10-2).toBe(8);
						});
					});
				});
			});

			/* Nested Suite #2: `describe()` */
			describe("Nested Suite ##2", function(){
				// specs with a random skip closure
				it(title="can have a skip that is executed at runtime", body=function(){
					fail( "Skipped programmatically, this should fail" );
				},skip=function(){ return true; });

				it("contains spec in nested suite ##2", function(){
					expect(["ColdFusion","LUCEE","JAVA"]).toBeArray();
				});

				// lucee, acf dynamic skips
				it( title="can have tests that execute if the right environment exists (railo only)", body=function(){
					expect( server ).toHaveKey( "railo" );
				}, skip=( !isRailo() ));

				// railo dynamic skips
				it( title="can have tests that execute if the right environment exists (lucee or acf only)", body=function(){
					expect( server ).notToHaveKey( "railo" );
				}, skip=( isRailo() ));
			});
		});
	}

	private function isRailo(){
		return ( structKeyExists( server, "railo" ) );
	}
}