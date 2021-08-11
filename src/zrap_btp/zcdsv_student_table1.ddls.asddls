@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZCDSV_STUDENT_TABLE' 
define root  view entity ZCDSV_STUDENT_TABLE1 as select from zstudent_table_1 {
    key studentid,
    fname,
    lname,
    mname,
    dob,
    gender 
}
