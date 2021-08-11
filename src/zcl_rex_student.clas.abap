CLASS zcl_rex_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_rex_student IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA: lt_student TYPE STANDARD TABLE OF zstudent_table_1.

    lt_student = VALUE #(
    ( studentid = '1000101' fname = 'RAKESH' lname = 'KUMAR' gender = 'M'
    dob = '19900414' )
    ( studentid = '1000102' fname = 'SUNITA' lname = 'RAVAL' gender = 'F'
    dob = '19900612' )
    ( studentid = '1000103' fname = 'BHAVAN' lname = 'SHARMA' gender = 'M'
    dob = '19900911'  )
    ( studentid = '1000104' fname = 'MOHAMMAD' lname = 'KHAN' gender = 'M'
    dob = '19890612' )
    ( studentid = '1000105' fname = 'JENNIFER' lname = 'DESOZA' gender = 'F'
    dob = '19900403'  )
    ( studentid = '1000106' fname = 'PRIYANK' lname = 'CHATURVEDI' gender = 'M'
    dob = '19911206' )
    ( studentid = '1000107' fname = 'RISHABH' lname = 'BHAT' gender = 'M'
    dob = '19911125'  )
    ( studentid = '1000108' fname = 'MUKESH' lname = 'SAHANI' gender = 'M'
    dob = '19891010' )
    ( studentid = '1000109' fname = 'KETKI' lname = 'BHAT' gender = 'F'
    dob = '19900501'  )
    ( studentid = '1000110' fname = 'KANHA' lname = 'PANDE' gender = 'M'
    dob = '19910923' ) ).

    DELETE FROM zstudent_table_1.
    INSERT zstudent_table_1 FROM TABLE @lt_student.
    CLEAR lt_student.

    SELECT * FROM zstudent_table_1 INTO TABLE @lt_student.
    IF sy-subrc IS INITIAL.
      out->write('data inserted successfully!').
      out->write( lt_student ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
