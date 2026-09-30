* district_medians: de-identified dataset; variables in district_medians_codebook.md.
SET UNICODE=ON.
GET DATA /TYPE=TXT /FILE='district_medians.csv' /ENCODING='UTF8' /DELIMITERS=',' /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED /FIRSTCASE=2 /VARIABLES=
  year F8.0
  district A200
  median_value F8.0
  parcels F8.0
.
VARIABLE LABELS
  year '年份'
  district '行政區'
  median_value '公告土地現值中位數（元／平方公尺）'
  parcels '地號數'
.
EXECUTE.
