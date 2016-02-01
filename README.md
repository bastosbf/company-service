# company-service

For quering the service with some data you may use the curl commands below (assuming that you are running the service at localhost:8080).

	curl 'http://localhost:8080/company-service/rest/company/add?name=Company%201&address=Address%20company%201&city=City%20company%201&country=Country%20company%201' -H 'Accept-Encoding: gzip, flate, sdch'
	curl 'http://localhost:8080/company-service/rest/company/add?name=Company%202&address=Address%20company%202&city=City%20company%202&country=Country%20company%202&email=email@company2.com' -H 'Accept-Encoding: gzip, flate, sdch'
	curl 'http://localhost:8080/company-service/rest/company/add?name=Company%203&address=Address%20company%203&city=City%20company%203&country=Country%20company%203&email=email@company3.com&phone=99999999' -H 'Accept-Encoding: gzip, flate, sdch'
	curl 'http://localhost:8080/company-service/rest/company/add?name=Company%204&address=Address%20company%204&city=City%20company%204&country=Country%20company%204&email=email@company4.com&phone=99999999' -H 'Accept-Encoding: gzip, flate, sdch'
	curl 'http://localhost:8080/company-service/rest/company/add?name=Company%205&address=Address%20company%205&city=City%20company%205&country=Country%20company%205&email=email@company5.com&phone=99999999' -H 'Accept-Encoding: gzip, flate, sdch'

	curl 'http://localhost:8080/company-service/rest/company/list' -H 'Accept-Encoding: gzip, flate, sdch'

	curl 'http://localhost:8080/company-service/rest/company/get?id=1' -H 'Accept-Encoding: gzip, flate, sdch'

	curl 'http://localhost:8080/company-service/rest/company/update?id=1&name=Company%206&address=Address%20company%206&city=City%20company%206&country=Country%20company%206' -H 'Accept-Encoding: gzip, flate, sdch'

	curl 'http://localhost:8080/company-service/rest/company/add-employee?company-id=1&employee-name=Employee%201' -H 'Accept-Encoding: gzip, flate, sdch'
	curl 'http://localhost:8080/company-service/rest/company/add-employee?company-id=1&employee-name=Employee%202' -H 'Accept-Encoding: gzip, flate, sdch'

	curl 'http://localhost:8080/company-service/rest/company/get?id=1' -H 'Accept-Encoding: gzip, flate, sdch'

	curl 'http://localhost:8080/company-service/rest/company/add-owner?company-id=1&owner-name=Owner%201' -H 'Accept-Encoding: gzip, flate, sdch'
	curl 'http://localhost:8080/company-service/rest/company/add-owner?company-id=1&owner-name=Owner%202' -H 'Accept-Encoding: gzip, flate, sdch'

	curl 'http://localhost:8080/company-service/rest/company/get?id=1' -H 'Accept-Encoding: gzip, flate, sdch'

