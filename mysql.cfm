<cfquery datasource="classicmodels" name="test">
	SELECT *
	FROM customers
</cfquery>

<table>
	<tr>
		<th>Customer #</th>
		<th>Customer Name</th>
		<th>Phone</th>
		<th>City</th>
		<th>Country</th>
		<th>Credit Limit</th>
	</tr>
	<cfloop query="#test#">
		<cfoutput>
			<tr>
				<td>#customerNumber#</td>
				<td>#customerName#</td>
				<td>#phone#</td>
				<td>#city#</td>
				<td>#country#</td>
				<td>#creditLimit#</td>
			</tr>
		</cfoutput>
	</cfloop>
</table>
