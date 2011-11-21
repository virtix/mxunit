<cfcomponent output="false" extends="BaseTest">
<cfscript>

function mockShouldBeCaseInsensitive(){
	var val1 = "";
	var val2 = "";
   m = $('bar');
   m.foo('bar').returns(true);
   m.bar("{*}").returns("foo");
   
   m.foo('bar');
   m.foo('Bar');
   m.fOo('BaR');
   m.fOO('bAr');
   m.verifyTimes(4).foo('bar');
   val1 = m.bar("arg");
   val2 = m.bAr("arg");
   m.verifyTimes(2).bar("{*}");
   assertEquals("foo", val1);
   assertEquals("foo", val2);
}


  function setUp(){
   
  }

  function tearDown(){

  }



</cfscript>

</cfcomponent>
