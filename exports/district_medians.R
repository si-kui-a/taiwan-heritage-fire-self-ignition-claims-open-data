# district_medians: de-identified dataset; variables in district_medians_codebook.md
d <- read.csv("district_medians.csv", fileEncoding = "UTF-8", stringsAsFactors = FALSE)
attr(d$year, "label") <- "年份"
attr(d$district, "label") <- "行政區"
attr(d$median_value, "label") <- "公告土地現值中位數（元／平方公尺）"
attr(d$parcels, "label") <- "地號數"
