component hint="I am to demo exceptions" {
	public numeric function division(
		required numeric numOne,
		required numeric numTwo
	){
		try{
			var result = arguments.numOne / arguments.numTwo;
			return result;
		}catch(any e){
			/* throw the error */
			throw(type="Division by zero");
		}
	}
}