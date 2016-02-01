function company($scope, $http) {
	$scope.add = function() {
		var employees = document.getElementsByName("add-company-employee");
		var value = "";
		for(var i = 0; i < employees.length -1; i++) {
			value += employees[i].value + ",";
		}
		value += employees[employees.length -1].value;
		var req = {			
			method : 'GET',
			url : 'rest/company/add?name=' + document
					.getElementById("add-company-name").value + '&address=' + document
					.getElementById("add-company-address").value + '&city=' + document
					.getElementById("add-company-city").value + '&country=' + document
					.getElementById("add-company-country").value + '&email=' + document
					.getElementById("add-company-email").value + '&phone=' + document
					.getElementById("add-company-phone").value + '&employees=' + value,
		};
		
		$http(req).success(function(data) {
			$scope.companyId = data;
		}).error(function(data) {
			alert("An expected error occuried while submitting the form data");
		})
	};
	
	$scope.list = function() {
		var req = {
			method : 'GET',
			url : 'rest/company/list',
		};
		$http(req).success(function(data) {
			$scope.companies = data;
		}).error(function(data) {
			alert("An expected error occuried while submitting the form data");
		})
	};
	
	$scope.get = function() {
		var req = {
			method : 'GET',
			url : 'rest/company/get?id=' + document.getElementById("get-company-id").value,
		};
		$http(req).success(function(data) {
			$scope.company = data;
		}).error(function(data) {
			alert("An expected error occuried while submitting the form data");
		})
	};
	
	$scope.update = function() {
		var req = {
			method : 'GET',
			url : 'rest/company/update?id=' + document
					.getElementById("update-company-id").value + '&name=' + document
					.getElementById("update-company-name").value + '&address=' + document
					.getElementById("update-company-address").value + '&city=' + document
					.getElementById("update-company-city").value + '&country=' + document
					.getElementById("update-company-country").value + '&email=' + document
					.getElementById("update-company-email").value + '&phone=' + document
					.getElementById("update-company-phone").value,
		};
		
		$http(req).success(function(data) {
			$scope.updated = data;
		}).error(function(data) {
			alert("An expected error occuried while submitting the form data");
		})
	};
	
	$scope.addEmployee = function() {
		var req = {
			method : 'GET',
			url : 'rest/company/add-employee?company-id=' + document
					.getElementById("add-employee-id").value + '&employee-name=' + document
					.getElementById("add-employee-name").value,
		};
		
		$http(req).success(function(data) {
			$scope.added = data;
		}).error(function(data) {
			alert("An expected error occuried while submitting the form data");
		})
	};
	
	$scope.addOwner = function() {
		var req = {
			method : 'GET',
			url : 'rest/company/add-owner?company-id=' + document
					.getElementById("add-owner-id").value + '&owner-name=' + document
					.getElementById("add-owner-name").value,
		};
		
		$http(req).success(function(data) {
			$scope.added = data;
		}).error(function(data) {
			alert("An expected error occuried while submitting the form data");
		})
	};
	
	$scope.moreEmployee = function() {
		var div = document.getElementById("employees");
		var input = document.createElement("input");
		input.type = "text";
		input.className = "form-control";
		input.name = "add-company-employee";
		input.id = "add-company-employee";
		input.placeholder = "Employee name";
		
		div.appendChild(input);
	};
}