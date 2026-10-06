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
  structure A200
  damage_level A200
  damage_extent A200
  heritage_status A200
  physical_status A200
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
  structure '構造材質'
  damage_level '損害程度（文資法第 24 條判準）'
  damage_extent '損害範圍'
  heritage_status '火災後文資身分'
  physical_status '火災後實體狀況'
.
VALUE LABELS heritage_category 'legal' '法定文資' 'pool' '候選池' 'de_facto' '事實上的古蹟'.
VALUE LABELS cause_unknown 1 '不明' 0 '已知'.
VALUE LABELS verification 'A' 'A' 'B' 'B' 'C' 'C'.
VALUE LABELS ownership '公有' '公有' '私有' '私有' '不明' '不明'.
VALUE LABELS structure '木造' '木造' '磚造' '磚造' '石造或土造' '石造或土造' '加強磚造' '加強磚造' '鋼筋混凝土造' '鋼筋混凝土造' '鋼構造' '鋼構造' '混合或不明' '混合或不明' '待查' '待查'.
VALUE LABELS damage_extent '單棟' '單棟' '群組中部分' '群組中部分' '延燒多棟' '延燒多棟' '不明' '不明' '待查' '待查'.
VALUE LABELS heritage_status '維持' '維持' '變更類別' '變更類別' '廢止' '廢止' '非法定' '非法定' '不明' '不明' '待查' '待查'.
VALUE LABELS physical_status '緊急搶修' '緊急搶修' '修復中' '修復中' '修復完成' '修復完成' '再利用' '再利用' '閒置未修' '閒置未修' '拆除' '拆除' '空地' '空地' '新建' '新建' '不明' '不明' '待查' '待查'.
EXECUTE.
