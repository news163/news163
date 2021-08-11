CLASS lhc_ZCDSV_STUDENT_TABLE DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zcdsv_student_table1 RESULT result.

ENDCLASS.

CLASS lhc_ZCDSV_STUDENT_TABLE IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
