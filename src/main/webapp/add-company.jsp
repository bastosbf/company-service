<div ng-controller="company">
  <input type="text" class="form-control" id="add-company-name" name="add-company-name" placeholder="Company name" />
  <input type="text" class="form-control" id="add-company-address" name="add-company-address" placeholder="Company address" />
  <input type="text" class="form-control" id="add-company-city" name="add-company-city" placeholder="Company city" />
  <input type="text" class="form-control" id="add-company-country" name="add-company-country" placeholder="Company country" />
  <input type="text" class="form-control" id="add-company-email" name="add-company-email" placeholder="Company e-mail" />
  <input type="text" class="form-control" id="add-company-phone" name="add-company-phone" placeholder="Company phone" />
  <button class="btn btn-lg btn-primary btn-block" type="submit" ng-click="add()">Add company</button>
  <div class="alert alert-success" ng-show="companyId != -1 && companyId != null">The company was added with id: {{companyId}}</div>
  <div class="alert alert-danger" ng-show="companyId == -1">A problem occuried while adding the company</div>
</div>