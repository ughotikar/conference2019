<cfcomponent output="false" hint="A MockBox awesome Component" implements="tests.resources.NestedInterface">
<cffunction access="public" returnformat="wddx" returntype="any" output="true" closure="false" modifier="" name="testThisToo" owner="C:\www\apps\conference\lib\testbox\tests\resources\NestedInterface.cfc" description="">
<cfargument required="true" name="greeting" type="any">
<cfargument required="false" name="name" type="any">
</cffunction>
<cffunction access="public" returnformat="wddx" returntype="any" output="true" closure="false" modifier="" name="testThis" owner="C:\www\apps\conference\lib\testbox\tests\resources\MyInterface.cfc" description="">
<cfargument required="true" name="name" type="any">
<cfargument required="false" name="age" type="any">
</cffunction>
</cfcomponent>