*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lhc_Delivery DEFINITION INHERITING FROM
cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE Delivery.
    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Delivery.
    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE Delivery.
    METHODS read FOR READ
      IMPORTING keys FOR READ Delivery RESULT result.
    METHODS cba_item FOR MODIFY
      IMPORTING entities_cba FOR CREATE Delivery\_item.
    METHODS rba_item FOR READ
      IMPORTING keys_rba FOR READ Delivery\_item FULL result_requested
      RESULT    result LINK association_links.
ENDCLASS.
CLASS lhc_Delivery IMPLEMENTATION.
  METHOD create.
    DATA: lt_del TYPE TABLE OF zlikp.
    lt_del = VALUE #( FOR ls_del IN entities
    (
    vbeln = ls_del-vbeln
    vstel = ls_del-vstel
    vkorg = ls_del-vkorg
    lfart = ls_del-lfart
    bzrik = ls_del-bzrik
    vsbed = ls_del-vsbed
    Vsart = ls_del-vsart
    kunag = ls_del-kunag
    kunnr = ls_del-kunnr
    lddat = ls_del-lddat
    lfdat = ls_del-lfdat
    kodat = ls_del-kodat
    lprio = ls_del-lprio
    lstel = ls_del-lstel
    fkdat = ls_del-fkdat
    route = ls_del-route
    wadat = ls_del-wadat
    kostk = ls_del-kostk
    ) ).
    INSERT zlikp FROM TABLE @lt_del.
  ENDMETHOD.


  METHOD delete.
    DATA: lt_del TYPE RANGE OF char10.
    lt_del = VALUE #(
    FOR ls_del IN keys
    (
    sign = 'I'
    option = 'EQ'
    low = ls_del-vbeln
    )
    ).
    DELETE FROM zlikp WHERE vbeln IN @lt_del.
  ENDMETHOD.


  METHOD read.

  ENDMETHOD.

  METHOD update.
    DATA: lt_del TYPE TABLE OF zlikp.
    lt_del = VALUE #( FOR ls_del IN entities
    (
    vbeln = ls_del-vbeln
    vstel = ls_del-vstel
    vkorg = ls_del-vkorg
    lfart = ls_del-lfart
    bzrik = ls_del-bzrik
    vsbed = ls_del-vsbed
    Vsart = ls_del-vsart
    kunag = ls_del-kunag
    kunnr = ls_del-kunnr
    lddat = ls_del-lddat
    lfdat = ls_del-lfdat
    kodat = ls_del-kodat
    lprio = ls_del-lprio
    lstel = ls_del-lstel
    fkdat = ls_del-fkdat
    route = ls_del-route
    wadat = ls_del-wadat
    kostk = ls_del-kostk
    ) ).
    UPDATE zlikp FROM TABLE @lt_del.
  ENDMETHOD.
  METHOD rba_item.

  ENDMETHOD.
  METHOD cba_item.
    DATA: lt_item TYPE TABLE OF zlips.
    lt_item = VALUE #(
    FOR ls_entity IN entities_cba
    FOR ls_item IN ls_entity-%target
    (
    vbeln = ls_item-vbeln
    posnr = ls_item-posnr
    matnr = ls_item-matnr
    lfimg = ls_item-lfimg
    meins = ls_item-meins
    )
    ).
    INSERT zlips FROM TABLE @lt_item.
  ENDMETHOD.
ENDCLASS.
