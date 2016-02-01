<div ng-controller="company">
  <button class="btn btn-lg btn-primary btn-block" type="submit" ng-click="list()">List</button>
  <div class="alert alert-info" ng-show="companies != null">{{companies}}</div>
</div>
