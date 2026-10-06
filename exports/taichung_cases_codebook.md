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
| structure | 構造材質 | string | 木造=木造；磚造=磚造；石造或土造=石造或土造；加強磚造=加強磚造；鋼筋混凝土造=鋼筋混凝土造；鋼構造=鋼構造；混合或不明=混合或不明；待查=待查 |
| damage_level | 損害程度（文資法第 24 條判準） | string |  |
| damage_extent | 損害範圍 | string | 單棟=單棟；群組中部分=群組中部分；延燒多棟=延燒多棟；不明=不明；待查=待查 |
| heritage_status | 火災後文資身分 | string | 維持=維持；變更類別=變更類別；廢止=廢止；非法定=非法定；不明=不明；待查=待查 |
| physical_status | 火災後實體狀況 | string | 緊急搶修=緊急搶修；修復中=修復中；修復完成=修復完成；再利用=再利用；閒置未修=閒置未修；拆除=拆除；空地=空地；新建=新建；不明=不明；待查=待查 |
