PROMPT Parse package level annotations with multiline declaration

--Arrange
declare
  l_source clob;
  l_parsing_result ut_annotations.typ_annotated_package;
  l_expected ut_annotations.typ_annotated_package;
  l_ann_param ut_annotations.typ_annotation_param;

begin
  l_source := 'PACKAGE test_tt
  ACCESSIBLE BY (calling_proc)
  authid current_user
  AS
  -- %suite
  -- %displayname(Name of suite)
  -- %suitepath(all.globaltests)

  procedure foo;
END;';

--Act
  l_parsing_result := ut_annotations.parse_package_annotations(l_source);

--Assert
  l_ann_param := null;
  l_ann_param.val := 'Name of suite';
  l_expected.package_annotations('suite').params := cast( null as ut_annotations.tt_annotation_params);
  l_expected.package_annotations('displayname').params(1) := l_ann_param;

  l_ann_param := null;
  l_ann_param.val := 'all.globaltests';
  l_expected.package_annotations('suitepath').params(1) := l_ann_param;

  check_annotation_parsing(l_expected, l_parsing_result);

  if ut_expectation_processor.get_status = ut_utils.tr_success then
    :test_result := ut_utils.tr_success;
  end if;

end;
/
