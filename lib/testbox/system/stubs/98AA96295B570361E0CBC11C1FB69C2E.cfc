<cfcomponent output="false" hint="A MockBox awesome Component" implements="coldbox.system.cache.ICacheProvider">
<cffunction access="public" hint="sets an object in cache and returns true if set correctly, else false." returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="set" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object cache key" name="objectKey" type="any">
<cfargument required="true" hint="The object to cache" name="object" type="any">
<cfargument required="false" hint="The timeout to use on the object (if any, provider specific)" name="timeout" type="any">
<cfargument required="false" hint="The idle timeout to use on the object (if any, provider specific)" name="lastAccessTimeout" type="any">
<cfargument required="false" hint="A map of name-value pairs to use as extra arguments to pass to a providers set operation" colddoc:generic="struct" name="extra" type="any">
</cffunction>
<cffunction access="public" hint="Expire all the elments in the cache (if supported by the provider)" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="expireAll" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Send a reap or flush command to the cache" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="reap" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="If the cache provider implements it, this returns the cache's object store as type: coldbox.system.cache.store.IObjectStore" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getObjectStore" colddoc:generic="coldbox.system.cache.store.IObjectStore" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get a key lookup structure where cachebox can build the report on. Ex: [timeout=timeout,lastAccessTimeout=idleTimeout].  It is a way for the visualizer to construct the columns correctly on the reports" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getStoreMetadataKeyMap" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="sets an object in cache and returns true if set correctly, else false. With no statistic updates or listener updates" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="setQuiet" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object cache key" name="objectKey" type="any">
<cfargument required="true" hint="The object to cache" name="object" type="any">
<cfargument required="false" hint="The timeout to use on the object (if any, provider specific)" name="timeout" type="any">
<cfargument required="false" hint="The idle timeout to use on the object (if any, provider specific)" name="lastAccessTimeout" type="any">
<cfargument required="false" hint="A map of name-value pairs to use as extra arguments to pass to a providers set operation" colddoc:generic="struct" name="extra" type="any">
</cffunction>
<cffunction access="public" hint="Set the cache factory reference for this cache" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="setCacheFactory" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" colddoc:generic="coldbox.system.cache.CacheFactory" name="cacheFactory" type="any">
</cffunction>
<cffunction access="public" hint="Check if an object is in cache, if not found it records a miss." returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="lookup" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The key of the object to lookup." name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Returns a flag indicating if the cache is ready for operation" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="isEnabled" colddoc:generic="Boolean" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get the cache statistics object as coldbox.system.cache.util.ICacheStats" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getStats" colddoc:generic="coldbox.system.cache.util.ICacheStats" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Shutdown command issued when CacheBox is going through shutdown phase" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="shutdown" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Has the object key expired in the cache" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="isExpired" colddoc:generic="boolean" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object key" name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Get the name of this cache" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getName" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="This method makes the cache ready to accept elements and run.  Usualy a cache is first created (init), then wired and then the factory calls configure() on it" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="configure" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get a structure of all the keys in the cache with their appropriate metadata structures. This is used to build the reporting.[keyX->[metadataStructure]]" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getStoreMetadataReport" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get a cache objects metadata about its performance. This value is a structure of name-value pairs of metadata." returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getCachedObjectMetadata" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The key of the object to lookup its metadata" name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Clear the cache statistics" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="clearStatistics" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get the number of elements in the cache" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getSize" colddoc:generic="numeric" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Expires an object from the cache by using its cache key. Returns false if object was not removed or did not exist anymore (if supported by the provider)" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="expireObject" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object cache key" name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Set the cache name" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="setName" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The cache name" name="name" type="any">
</cffunction>
<cffunction access="public" hint="Get an object from the cache without updating stats or listners" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getQuiet" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object key" name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Check if an object is in cache, no stats updated or listeners" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="lookupQuiet" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The key of the object to lookup." name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Set the event manager for this cache" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="setEventManager" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The event manager class" name="eventManager" type="any">
</cffunction>
<cffunction access="public" hint="Returns a flag indicating if the cache has reporting enabled" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="isReportingEnabled" colddoc:generic="Boolean" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get the structure of configuration parameters for the cache" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getConfiguration" colddoc:generic="struct" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get the cache factory reference this cache provider belongs to" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getCacheFactory" colddoc:generic="coldbox.system.cache.CacheFactory" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Returns a list of all elements in the cache, whether or not they are expired." returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getKeys" colddoc:generic="array" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Set the entire configuration structure for this cache" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="setConfiguration" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The configuration structure" colddoc:generic="struct" name="configuration" type="any">
</cffunction>
<cffunction access="public" hint="Clear all the cache elements from the cache" returnformat="wddx" returntype="void" output="false" closure="false" modifier="" name="clearAll" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Get an object from the cache and updates stats" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="get" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object key" name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Get this cache managers event listener manager" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="getEventManager" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
</cffunction>
<cffunction access="public" hint="Clears an object from the cache by using its cache key. Returns false if object was not removed or did not exist anymore without doing statistics or updating listeners" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="clearQuiet" colddoc:generic="boolean" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object cache key" name="objectKey" type="any">
</cffunction>
<cffunction access="public" hint="Clears an object from the cache by using its cache key. Returns false if object was not removed or did not exist anymore" returnformat="wddx" returntype="any" output="false" closure="false" modifier="" name="clear" colddoc:generic="boolean" owner="C:\www\apps\conference\lib\testbox\tests\resources\coldbox\system\cache\ICacheProvider.cfc" description="">
<cfargument required="true" hint="The object cache key" name="objectKey" type="any">
</cffunction>
</cfcomponent>