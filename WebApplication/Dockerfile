# escape=`
FROM microsoft/aspnet:4.6.2

# Configure the IIS Application Pool for 32-bit applications
RUN C:\Windows\System32\inetsrv\appcmd set apppool /apppool.name:DefaultAppPool /enable32bitapponwin64:true;

# Create a new ODBC DSN mapped to the database file
RUN	Add-OdbcDsn -Name "AWDB" `
	-DriverName "'Microsoft Access Driver (*.mdb)'" `
	-Platform "32-bit" `
	-DsnType "System" `
	-SetPropertyValue 'Dbq=C:\inetpub\wwwroot\App_Data\AdventureWorks.mdb' `
	-PassThru

# Copy files into container
ADD . /inetpub/wwwroot
