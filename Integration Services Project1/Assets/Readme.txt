To pump the latest data in TempDataBank table follow the following steps:
1.) Headers are defined in DataBank.xlsx file
2.) Copy latest data and split 52 week HL column via Text to Columns, delimited by "/"
3.) Copy the data to template DataBank.xlsx file
4.) Recreate the connection managers as theymight not be linked. Update the connection managers of:
	a.) DataBankFile flow
	b.) FlatFile Destination flow
	c.) FlatFile Destination 1 flow
Execute the package and data should get inserted 
