# taichung_cases: de-identified dataset; variables in taichung_cases_codebook.md
d <- read.csv("taichung_cases.csv", fileEncoding = "UTF-8", stringsAsFactors = FALSE)
attr(d$case_id, "label") <- "案例代號"
attr(d$name_public, "label") <- "案例名稱（僅公有）"
attr(d$fire_year, "label") <- "起火年份"
d$heritage_category <- factor(d$heritage_category, levels = c("legal", "pool", "de_facto"), labels = c("法定文資", "候選池", "事實上的古蹟"))
attr(d$heritage_category, "label") <- "文資層級"
attr(d$status_timing, "label") <- "身分與火災的先後"
attr(d$damage, "label") <- "損害程度"
attr(d$cause_category, "label") <- "起火原因（消防署分類）"
d$cause_unknown <- factor(d$cause_unknown, levels = c("1", "0"), labels = c("不明", "已知"))
attr(d$cause_unknown, "label") <- "起火原因不明"
attr(d$cause_status, "label") <- "原因確認程度"
d$verification <- factor(d$verification, levels = c("A", "B", "C"), labels = c("A", "B", "C"))
attr(d$verification, "label") <- "查證分級"
d$ownership <- factor(d$ownership, levels = c("公有", "私有", "不明"), labels = c("公有", "私有", "不明"))
attr(d$ownership, "label") <- "產權"
d$structure <- factor(d$structure, levels = c("木造", "磚造", "石造或土造", "加強磚造", "鋼筋混凝土造", "鋼構造", "混合或不明", "待查"), labels = c("木造", "磚造", "石造或土造", "加強磚造", "鋼筋混凝土造", "鋼構造", "混合或不明", "待查"))
attr(d$structure, "label") <- "構造材質"
attr(d$damage_level, "label") <- "損害程度（文資法第 24 條判準）"
d$damage_extent <- factor(d$damage_extent, levels = c("單棟", "群組中部分", "延燒多棟", "不明", "待查"), labels = c("單棟", "群組中部分", "延燒多棟", "不明", "待查"))
attr(d$damage_extent, "label") <- "損害範圍"
d$heritage_status <- factor(d$heritage_status, levels = c("維持", "變更類別", "廢止", "非法定", "不明", "待查"), labels = c("維持", "變更類別", "廢止", "非法定", "不明", "待查"))
attr(d$heritage_status, "label") <- "火災後文資身分"
d$physical_status <- factor(d$physical_status, levels = c("緊急搶修", "修復中", "修復完成", "再利用", "閒置未修", "拆除", "空地", "新建", "不明", "待查"), labels = c("緊急搶修", "修復中", "修復完成", "再利用", "閒置未修", "拆除", "空地", "新建", "不明", "待查"))
attr(d$physical_status, "label") <- "火災後實體狀況"
