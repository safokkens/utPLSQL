/*
  utPLSQL - Version X.X.X.X
  Copyright 2016 - 2017 utPLSQL Project

  Licensed under the Apache License, Version 2.0 (the "License"):
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

Create all necessary grant for the user who owns test packages and want to execute utPLSQL framework
*/

@@define_ut3_owner_param.sql

set echo off
set feedback on
set heading off
set verify off

prompt Granting privileges on UTPLSQL objects in &&ut3_owner schema to PUBLIC

whenever sqlerror exit failure rollback
whenever oserror exit failure rollback

alter session set current_schema = &&ut3_owner;

grant execute on &&ut3_owner..ut_be_between to public;
grant execute on &&ut3_owner..ut_be_empty to public;
grant execute on &&ut3_owner..ut_be_false to public;
grant execute on &&ut3_owner..ut_be_greater_or_equal to public;
grant execute on &&ut3_owner..ut_be_greater_than to public;
grant execute on &&ut3_owner..ut_be_less_or_equal to public;
grant execute on &&ut3_owner..ut_be_less_than to public;
grant execute on &&ut3_owner..ut_be_like to public;
grant execute on &&ut3_owner..ut_be_not_null to public;
grant execute on &&ut3_owner..ut_be_null to public;
grant execute on &&ut3_owner..ut_be_true to public;
grant execute on &&ut3_owner..ut_equal to public;
grant execute on &&ut3_owner..ut_match to public;
grant execute on &&ut3_owner..ut to public;
grant execute on &&ut3_owner..ut_runner to public;
grant execute on &&ut3_owner..ut_teamcity_reporter to public;
grant execute on &&ut3_owner..ut_xunit_reporter to public;
grant execute on &&ut3_owner..ut_documentation_reporter to public;
grant execute on &&ut3_owner..ut_coverage_html_reporter to public;
grant execute on &&ut3_owner..ut_coverage_sonar_reporter to public;
grant execute on &&ut3_owner..ut_coveralls_reporter to public;
grant execute on &&ut3_owner..ut_reporters to public;
grant execute on &&ut3_owner..ut_varchar2_list to public;
grant execute on &&ut3_owner..ut_varchar2_rows to public;
grant execute on &&ut3_owner..ut_reporter_base to public;
grant execute on &&ut3_owner..ut_coverage to public;
grant execute on &&ut3_owner..ut_coverage_options to public;
grant execute on &&ut3_owner..ut_coverage_helper to public;
grant execute on &&ut3_owner..ut_output_buffer to public;
grant execute on &&ut3_owner..ut_file_mappings to public;
grant execute on &&ut3_owner..ut_file_mapping to public;
grant execute on &&ut3_owner..ut_file_mapper to public;
grant execute on &&ut3_owner..ut_key_value_pairs to public;
grant execute on &&ut3_owner..ut_key_value_pair to public;
grant select, insert, delete on &&ut3_owner..ut_cursor_data to public;
grant execute on &&ut3_owner..ut_sonar_test_reporter to public;

prompt Creating synonyms for UTPLSQL objects in &&ut3_owner schema to PUBLIC

create public synonym be_between for &&ut3_owner..ut_be_between;
create public synonym be_empty for &&ut3_owner..ut_be_empty;
create public synonym be_false for &&ut3_owner..ut_be_false;
create public synonym be_greater_or_equal for &&ut3_owner..ut_be_greater_or_equal;
create public synonym be_greater_than for &&ut3_owner..ut_be_greater_than;
create public synonym be_less_or_equal for &&ut3_owner..ut_be_less_or_equal;
create public synonym be_less_than for &&ut3_owner..ut_be_less_than;
create public synonym be_like for &&ut3_owner..ut_be_like;
create public synonym be_not_null for &&ut3_owner..ut_be_not_null;
create public synonym be_null for &&ut3_owner..ut_be_null;
create public synonym be_true for &&ut3_owner..ut_be_true;
create public synonym equal for &&ut3_owner..ut_equal;
create public synonym match for &&ut3_owner..ut_match;
create public synonym ut for &&ut3_owner..ut;
create public synonym ut_runner for &&ut3_owner..ut_runner;
create public synonym ut_teamcity_reporter for &&ut3_owner..ut_teamcity_reporter;
create public synonym ut_xunit_reporter for &&ut3_owner..ut_xunit_reporter;
create public synonym ut_documentation_reporter for &&ut3_owner..ut_documentation_reporter;
create public synonym ut_coverage_html_reporter for &&ut3_owner..ut_coverage_html_reporter;
create public synonym ut_coverage_sonar_reporter for &&ut3_owner..ut_coverage_sonar_reporter;
create public synonym ut_coveralls_reporter for &&ut3_owner..ut_coveralls_reporter;
create public synonym ut_reporters for &&ut3_owner..ut_reporters;
create public synonym ut_varchar2_list for &&ut3_owner..ut_varchar2_list;
create public synonym ut_varchar2_rows for &&ut3_owner..ut_varchar2_rows;
create public synonym ut_reporter_base for &&ut3_owner..ut_reporter_base;
create public synonym ut_coverage for &&ut3_owner..ut_coverage;
create public synonym ut_coverage_options for &&ut3_owner..ut_coverage_options;
create public synonym ut_coverage_helper for &&ut3_owner..ut_coverage_helper;
create public synonym ut_output_buffer for &&ut3_owner..ut_output_buffer;
create public synonym ut_file_mappings for &&ut3_owner..ut_file_mappings;
create public synonym ut_file_mapping for &&ut3_owner..ut_file_mapping;
create public synonym ut_file_mapper for &&ut3_owner..ut_file_mapper;
create public synonym ut_key_value_pairs for &&ut3_owner..ut_key_value_pairs;
create public synonym ut_key_value_pair for &&ut3_owner..ut_key_value_pair;
create public synonym ut_cursor_data for &&ut3_owner..ut_cursor_data;
create public synonym ut_sonar_test_reporter for &&ut3_owner..ut_sonar_test_reporter;
