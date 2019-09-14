component extends="testbox.system.BaseSpec" {

	void function beforeTests(){
		variables.target = new controllers.demoOne();
	}

	function testConcatenateWithFirstExample(){
		var expected = "onetwo";
		var actual = target.concatenate("one","two");
		$assert.isEqual(expected,actual);
	}

	function testConcatenateWithAnotherExample(){
		var expected = "onethree";
		var actual = target.concatenate("one","three");
		$assert.isEqual(expected,actual);
	}
}