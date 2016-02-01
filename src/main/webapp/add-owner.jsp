<div ng-controller="company">
  <input type="text" class="form-control" id="add-owner-id" name="add-owner-id" placeholder="Company id" />
  <input type="text" class="form-control" id="add-owner-name" name="add-owner-name" placeholder="Owner name" />
  <button class="btn btn-lg btn-primary btn-block" type="submit" ng-click="addOwner()">Add owner</button>
  <div class="alert alert-success" ng-show="added">The owner was added!</div>
  <div class="alert alert-danger" ng-show="added != null && !added">Could not find the company!</div>
</div>
