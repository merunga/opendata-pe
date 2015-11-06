del "..\..\output\ciudades-del-mundo.csv"
c:\wamp\bin\mysql\mysql5.6.17\bin\mysql.exe -u root -e "SOURCE explode-world.sql"
copy "..\..\output\ciudades-del-mundo.csv"  "c:\Users\merunga\Google Drive\opendata-pe\"
copy "..\..\output\ciudades-del-mundo.csv"  "c:\Users\merunga\Dropbox\opendata-pe\"
cmd \k