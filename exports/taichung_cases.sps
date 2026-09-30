* taichung_cases: de-identified dataset; variables in taichung_cases_codebook.md.
SET UNICODE=ON.
GET DATA /TYPE=TXT /FILE='taichung_cases.csv' /ENCODING='UTF8' /DELIMITERS=',' /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED /FIRSTCASE=2 /VARIABLES=
  case_id A200
  name_public A200
  fire_year F8.0
  heritage_category A200
  status_timing A200
  damage A200
  cause_category A200
  cause_unknown F8.0
  cause_status A200
  verification A200
  ownership A200
.
VARIABLE LABELS
  case_id '案例代號'
  name_public '案例名稱（僅公有）'
  fire_year '起火年份'
  heritage_category '文資層級'
  status_timing '身分與火災的先後'
  damage '損害程度'
  cause_category '起火原因（消防署分類）'
  cause_unknown '起火原因不明'
  cause_status '原因確認程度'
  verification '查證分級'
  ownership '產權'
.
VALUE LABELS heritage_category 'legal' '法定文資' 'pool' '候選池' 'de_facto' '事實上的古蹟'.
VALUE LABELS cause_unknown 1 '不明' 0 '已知'.
VALUE LABELS verification 'A' 'A' 'B' 'B' 'C' 'C'.
VALUE LABELS ownership '公有' '公有' '私有' '私有' '不明' '不明'.
EXECUTE.
