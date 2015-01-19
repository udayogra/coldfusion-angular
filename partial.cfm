<div ng-init='readrules()' class='center'>
<br>

<div class="form-group row common">
  <label for="likes" class="col-sm-2 control-label">Select Your Task Type</label>
   <div class="col-sm-5">
      <button ng-click="checkAll()" class="btn btn-success" style="margin-right: 10px">Check all</button>
      <button ng-click="uncheckAll()" class="btn btn-success" style="margin-right: 10px">Uncheck all</button>
	  <br><br>
	  <div style=';overflow:overlay'>
      <label ng-repeat="role in formdata.roles">
        <input style='margin-left:10px' type="checkbox" checklist-model="formdata.user.roles" checklist-value="role.name"> {{role.name}}
      </label>
	  </div>
	 <span class="help-block">Type of tasks</span>
    </div>
  </div>
  
  <br>
   
<button type="button" class="btn btn-lg  btn-success" ng-click='getstats()'>Get Tasks</button>
<button type="button" class="btn btn-lg  btn-success"  ng-click='addtask()'>Add Tasks</button>
<button type="button" class="btn btn-lg  btn-success" ng-click='deletetasks()'>Delete All Tasks</button>

<br>

<div class='row'>
<div class='col-sm-12'>
 <div class='common'>
   <b class='label'>Report ({{fakefriendscount}})</b> <br> <small>Total tasks found <b>{{bugreportdata.length}} </b>
   (Report generated at <i><cfoutput>#TimeFormat(Now(),"HH:mm:ss tt")#</i>)</cfoutput></small>
 </div>
 <div class="gridStyle center" ng-grid="reportgrid"></div>
</div>
</div>

<br>

</div>