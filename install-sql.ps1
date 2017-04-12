<powershell>
$client = new-object System.Net.WebClient
$client.DownloadFile("https://s3.eu-west-2.amazonaws.com/dcas1995/en_sql_server_2016_developer_x64_dvd_8777069.iso","C:\Users\Administrator\sql_server.iso")
$client.DownloadFile("https://s3.eu-west-2.amazonaws.com/dcas1995/ConfigurationFile.ini","C:\Users\Administrator\ConfigurationFile.ini")
ls
#Set-Location "C:\Users\Daniel\Downloads\"
#ls 
Mount-DiskImage -ImagePath "C:\Users\Administrator\sql_server.iso"
cd D:
.\setup.exe /ConfigurationFile=C:\Users\Administrator\ConfigurationFile.ini
</powershell>0