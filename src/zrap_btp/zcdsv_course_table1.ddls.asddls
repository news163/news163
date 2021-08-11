@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZCDSV_COURSE_TABLE'
define root view entity ZCDSV_COURSE_TABLE1 as select from zcourse_table_1
{
    key courseid ,
    coursename as Coursename,
    virtualpossible as Virtualpossible,
    ishandson as Ishandson,
    totalmarks as Totalmarks,
    cutofmarks as Cutofmarks,
    start_date ,
    end_date  ,
    iscomplete as Iscomplete,
    capacity as Capacity
}
