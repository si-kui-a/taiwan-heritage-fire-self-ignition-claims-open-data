# taichung_cases

臺中 17 件火災案例（E1、P1–P7 的描述）；私有或權屬不明者不具名。由原始資料表去識別化產生（原始表含私有資訊，不公開）；更正請開 issue。

筆數：17

| 變項 | 標籤 | 類型 | 數值標籤 |
|---|---|---|---|
| case_id | 案例代號 | string |  |
| name_public | 案例名稱（僅公有） | string |  |
| fire_year | 起火年份 | numeric |  |
| heritage_category | 文資層級 | string | legal=法定文資；pool=候選池；de_facto=事實上的古蹟 |
| status_timing | 身分與火災的先後 | string |  |
| damage | 損害程度 | string |  |
| cause_category | 起火原因（消防署分類） | string |  |
| cause_unknown | 起火原因不明 | numeric | 1=不明；0=已知 |
| cause_status | 原因確認程度 | string |  |
| verification | 查證分級 | string | A=A；B=B；C=C |
| ownership | 產權 | string | 公有=公有；私有=私有；不明=不明 |
