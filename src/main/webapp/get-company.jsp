<div ng-controller="company">
  <input type="text" class="form-control" id="get-company-id" name="get-company-id" placeholder="Company id" />
  <button class="btn btn-lg btn-primary btn-block" type="submit" ng-click="get()">Get company</button>
  <div class="alert alert-info" ng-show="company != null && company != ''">{{company}}</div>
</div>
