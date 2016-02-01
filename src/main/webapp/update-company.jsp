<div ng-controller="company">
  <input type="text" class="form-control" id="update-company-id" name="update-company-id" placeholder="Company id" />
  <input type="text" class="form-control" id="update-company-name" name="update-company-name" placeholder="Company name" />
  <input type="text" class="form-control" id="update-company-address" name="update-company-address" placeholder="Company address" />
  <input type="text" class="form-control" id="update-company-city" name="update-company-city" placeholder="Company city" />
  <input type="text" class="form-control" id="update-company-country" name="update-company-country" placeholder="Company country" />
  <input type="text" class="form-control" id="update-company-email" name="update-company-email" placeholder="Company e-mail" />
  <input type="text" class="form-control" id="update-company-phone" name="update-company-phone" placeholder="Company phone" />
  <button class="btn btn-lg btn-primary btn-block" type="submit" ng-click="update()">Update company</button>
  <div class="alert alert-success" ng-show="updated">The company was updated</div>
  <div class="alert alert-danger" ng-show="updated != null && !updated">A problem occuried while updating the company</div>
</div>
