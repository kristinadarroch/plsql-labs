/*
||  Name:          apply_plsql_lab2-2.sql
||  Date:          11 Nov 2016
||  Purpose:       Complete 325 Chapter 3 lab.
||  Dependencies:  Run the Oracle Database 12c PL/SQL Programming setup programs.
*/
SET SERVEROUTPUT ON SIZE UNLIMITED
SET VERIFY OFF

DECLARE
  lv_raw_input VARCHAR2(50);
  lv_input VARCHAR2(10);
BEGIN
  lv_raw_input := '&1';

  IF lv_raw_input IS NULL THEN
    dbms_output.put_line('Hello World!');
  ELSIF LENGTH(lv_raw_input) <= 10 THEN
    lv_input := lv_raw_input;
    dbms_output.put_line('Hello '||lv_input||'!');
  ELSE
    lv_input := SUBSTR(lv_raw_input, 1, 10);
    dbms_output.put_line('Hello '||lv_input||'!');
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    dbms_output.put_line('Exception '||SQLERRM);
END;
/

-- Close log file.
SPOOL OFF

EXIT;
