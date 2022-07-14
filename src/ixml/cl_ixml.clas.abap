CLASS cl_ixml DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES if_ixml.
    CLASS-METHODS
      create
        RETURNING
          VALUE(xml) TYPE REF TO if_ixml.
ENDCLASS.

CLASS cl_ixml IMPLEMENTATION.
  METHOD create.
    CREATE OBJECT xml TYPE cl_ixml.
  ENDMETHOD.

  METHOD if_ixml~create_encoding.
    CREATE OBJECT rval TYPE lcl_encoding.
  ENDMETHOD.

  METHOD if_ixml~create_document.
    CREATE OBJECT doc TYPE lcl_document.
  ENDMETHOD.

  METHOD if_ixml~create_stream_factory.
    CREATE OBJECT stream TYPE lcl_stream_factory.
  ENDMETHOD.

  METHOD if_ixml~create_renderer.
    CREATE OBJECT renderer TYPE lcl_renderer
      EXPORTING
        ostream  = ostream
        document = document.
  ENDMETHOD.

  METHOD if_ixml~create_parser.
    CREATE OBJECT parser TYPE lcl_parser
      EXPORTING
        istream  = istream
        document = document.
  ENDMETHOD.

ENDCLASS.