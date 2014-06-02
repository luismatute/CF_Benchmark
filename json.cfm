<cffile
    action = "read"
    file = "#getDirectoryFromPath(getCurrentTemplatePath())#random.json"
    variable = "data"
    >

<cfoutput>
	<cfloop array="#DeserializeJSON(data)#" index="row">
		<h2>#row.company#</h2>
		<p>#row.about#</p>
		<img src="#row.picture#" alt="">
	</cfloop>
</cfoutput>