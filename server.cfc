<cfcomponent>
    <cffunction name="getdata" access="remote" output="false" returnformat="json">
	<cfargument type='string' name='type'>
	<cfargument type='string' name='user'>
	<cfif findnocase('major',user) gt 0 and findnocase('minor',user) gt 0>
	<cfset result = '{
        "data":
         [
            {"id" : 1,"task" : "to complete the assignment", "type" : "major"}, {"id" : 2,"task" : "to play cricket","type" : "major"}, {"id" : 3,"task" : "to call my friend","type" : "minor"}, {"id" : 4,"task" : "to buy maggi","type" : "minor"}
         ] 
        }'>
	<cfelseif findnocase('major',user) gt 0>
	<cfset result = '{
        "data":
         [
            {"id" : 1,"task" : "to complete the assignment", "type" : "major"}, {"id" : 2,"task" : "to play cricket","type" : "major"}
         ] 
        }'>
	<cfelseif findnocase('minor',user) gt 0>
	   <cfset result = '{
        "data":
         [
            {"id" : 3,"task" : "to call my friend","type" : "minor"}, {"id" : 4,"task" : "to buy maggi","type" : "minor"}
         ] 
        }'>
	<cfelse>
	   <cfset result = '{
        "data":
         [
            
         ] 
        }'>
	</cfif>
        <cfreturn result>
    </cffunction>

<cffunction name="adddata" access="remote" output="false" returnformat="json">
	<cfargument type='string' name='type'>
	<cfargument type='string' name='user'>
	
        <cfreturn 'success'>
    </cffunction>
    
   
</cfcomponent>