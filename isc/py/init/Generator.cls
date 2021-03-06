Class isc.py.init.Generator Extends isc.py.init.Abstract
{

Parameter Modules = {$lb("types", "json", "inspect", "random")};

ClassMethod InitGetMembers() As %Status [ CodeMode = expression ]
{
##class(isc.py.Main).SimpleString(  "def zzzgetmembers(object, predicate):" _ $c(10) _ 
									"    return json.dumps([item[0] for item in inspect.getmembers(object, predicate)])")
}

ClassMethod InitUncallable() As %Status [ CodeMode = expression ]
{
##class(isc.py.Main).SimpleString(  "def zzzuncallable(object):" _ $c(10) _ 
									"    return not callable(object)")
}

}

