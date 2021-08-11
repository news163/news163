@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ZCDSV_ENROLL_TABLE'
define root view entity ZCDSV_ENROLL_TABLE1 as select from zstudent_enroll1
  association [0..*] to zcourse_draft1  as _course  on _course.courseid = $projection.Courseid
  association [0..*] to zstudent_draft1 as _student on _student.studentid = $projection.Studentid
{
  key enroll_uuid as EnrollUuid,
  key studentid   as Studentid,
  key courseid    as Courseid,
      status      as Status,
      marks       as Marks,
      // associations
      _student,
      _course
}
