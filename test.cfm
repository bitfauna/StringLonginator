<cfoutput>
<!--- a string of length 49993 is safe, but 49994 will crash --->

<cfset path = GetDirectoryFromPath(GetCurrentTemplatePath()) />

<cfobject name="obj"
	class="com.bitfauna.StringLonginator.StringLonginator"
	type=".NET"
	action="create"
	assembly="#path#StringLonginator.dll">


<cfset str = obj.embiggen(49994)>

<cfdump var="#str#">


</cfoutput>