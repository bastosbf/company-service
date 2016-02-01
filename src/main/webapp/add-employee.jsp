<div ng-controller="company">
  <input type="text" class="form-control" id="add-employee-id" name="add-employee-id" placeholder="Company id" />
  <input type="text" class="form-control" id="add-employee-name" name="add-employee-name" placeholder="Employee name" />
  <button class="btn btn-lg btn-primary btn-block" type="submit" ng-click="addEmployee()">Add employee</button>
  <div class="alert alert-success" ng-show="added">The employee was added!</div>
  <div class="alert alert-danger" ng-show="added != null && !added">Could not find the company!</div>
</div>
