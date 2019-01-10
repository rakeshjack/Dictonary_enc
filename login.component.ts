import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ToastrService } from 'ngx-toastr';
import { NgxSpinnerService } from 'ngx-spinner';
import { CommonsService } from '../../../commons.service';
import { CookieStorage, LocalStorage, SessionStorage, WebstorableArray } from 'ngx-store';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  public baseUrl:String;
  attendance_allowed: any;
  system_info: any=[];
  signout_approval: any;
  signout_required:  any;
  currency_code:String;
  currency: any;

  constructor(
    private commons: CommonsService,
    private _router: Router,
    private http: HttpClient,
    private toastr: ToastrService,
    private spinner: NgxSpinnerService) {}
  ngOnInit() {
    this.baseUrl=this.commons.baseUrl;
    this.get_system_config();
  }
  checklogin(forms): void {
    this.spinner.show();
    let Form = JSON.parse(JSON.stringify(forms.value));
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':  'application/json',
        'Authorization': 'Basic cGFydGhpOnBhcnRoaQ=='
      })
    };
    this.http
      .post(this.baseUrl+'client-api', { from: 'checkloginauthendication', action: 'login', Form },httpOptions)
      .subscribe((res: any) => {
        this.spinner.hide();
        if (res.status) {
          this.toastr.success(" Logged in", res.content[0].username);
          // // this._router.navigate(['lead/dashboard/userdashboard']);
          // if(res.content[0].user_type=='3') {
          // // this._router.navigate(['lead/prospectmain/upload-prospect']);
          // this._router.navigate(['lead/telecaller/telecaller-planner']);
          // } else {
          // this._router.navigate(['lead/master/usertype']);
          // }
          // this.commons.setauthendication(
          //   res.content[0].employee_id,
          //   res.content[0].username,
          //   res.content[0].user_type, 
          //   res.content[0].code,
          //   this.currency_code,
          //   this.attendance_allowed,
          //   this.signout_approval,res.content[0].company_logo,res.content[0].log_privileges);
        } else {
          this.toastr.error('Failed', res.message);
          this.commons.removeauthendication();
        }
      }, err => this.toastr.error('Failed', "Please contact administrator"));
  }
  get_system_config() {
    this.http
      .post(this.baseUrl+'masters', { from: 'system_config', action: 'records'})
      .subscribe((res: any) => {
        if (res.status) {
            this.system_info=res.content[0];
            this.currency_code=this.system_info.currency;
            this.attendance_allowed=this.system_info.attendance_limit;
            this.signout_approval=this.system_info.signout_approval;
            this.signout_required=this.system_info.signout_required;
        } else {
          console.log("no results to view");
        }
      }, err => console.log("error", err));
  }
}
