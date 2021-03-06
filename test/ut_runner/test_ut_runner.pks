create or replace package test_ut_runner is

  --%suite(ut_runner)
  --%suitepath(utplsql)
  --%rollback(manual)

  --%test(transaction stays open after the run if it was opened before the run)
  procedure keep_an_open_transaction;

  --%test(closes open transactions if no transaction was open before run)
  procedure close_newly_opened_transaction;

  --%test(version_compatibility_check compares major, minor and bugfix number)
  procedure version_comp_check_compare;

  --%test(version_compatibility_check ignores build number)
  procedure version_comp_check_ignore;

  --%test(version_compatibility_check compares short version to a full version)
  procedure version_comp_check_short;

  --%test(version_compatibility_check raises exception when invalid version passed)
  procedure version_comp_check_exception;

  --%test(run resets cache of package body after every run)
  procedure run_reset_package_body_cache;

  --%test(does not consume dbms_output from before the run)
  procedure run_keep_dbms_output_buffer;

end;
/
