-- Part A

type Planet = String
data Orbit = Orb Planet Planet
    deriving Show
type Graph = ([Planet], [Orbit])

testInput :: [Orbit]
testInput = [Orb "COM" "B", Orb "B" "C",Orb "C" "D", Orb "D" "E", Orb "E" "F", Orb "B" "G", Orb "G" "H", Orb "D" "I", Orb "E" "J", Orb "J" "K", Orb "K" "L"]

input :: [Orbit] 
input = [Orb "3TK" "7K5", Orb "M33" "KHG", Orb "SRG" "PM6", Orb "9J7" "D3N", Orb "BV1" "HTK", Orb "NQZ" "P9P", Orb "P37" "8RV", Orb "J8J" "YY6", Orb "RRN" "FH3", Orb "5DG" "K7K", Orb "RP6" "5B1", Orb "4DY" "8XJ", Orb "Z2H" "M85", Orb "LPL" "X69", Orb "NDC" "PPK", Orb "7QT" "8JY", Orb "DYB" "QFL", Orb "JKN" "JX6", Orb "9NY" "V2G", Orb "TVC" "B8Y", Orb "V85" "9J7", Orb "65S" "K5S", Orb "KY1" "BCQ", Orb "M12" "DKQ", Orb "37X" "JVW", Orb "J1J" "479", Orb "22J" "B25", Orb "CLV" "WFH", Orb "DVN" "LQY", Orb "X92" "FYT", Orb "L93" "156", Orb "VPY" "FSX", Orb "TXC" "VB9", Orb "583" "5DK", Orb "Z3F" "L5D", Orb "NYX" "B1Y", Orb "VZJ" "LK6", Orb "8MT" "8N3", Orb "513" "3YP", Orb "FDV" "ZLW", Orb "3XT" "T11", Orb "7XG" "5WB", Orb "DKJ" "KN1", Orb "DJ7" "517", Orb "YTP" "F34", Orb "YPQ" "7XZ", Orb "HCC" "RMS", Orb "LPH" "7JP", Orb "V4N" "JSX", Orb "X5T" "93R", Orb "3FW" "WK9", Orb "M79" "NK3", Orb "PXL" "ZB1", Orb "7QC" "B2Y", Orb "GLV" "V76", Orb "JX6" "QKW", Orb "325" "RW9", Orb "8HF" "WTK", Orb "GVY" "ZLB", Orb "H7K" "P37", Orb "LW1" "KHX", Orb "36S" "VC3", Orb "PV1" "RYV", Orb "8RV" "VHP", Orb "1MH" "5S4", Orb "9LV" "85Q", Orb "BFM" "BG6", Orb "QD4" "6YZ", Orb "156" "9CG", Orb "CC1" "ZJH", Orb "RSH" "95F", Orb "P4M" "QPL", Orb "LHN" "F7C", Orb "XBW" "TSD", Orb "4R9" "HTS", Orb "B8Y" "HZH", Orb "QFV" "475", Orb "WT9" "CVL", Orb "WK9" "ZJX", Orb "J71" "GH2", Orb "7S3" "LQX", Orb "8T4" "1M4", Orb "3SV" "3Z4", Orb "9K7" "513", Orb "HFB" "PZV", Orb "Y15" "QTZ", Orb "1C6" "SZ6", Orb "9RP" "DBT", Orb "VB9" "NJT", Orb "Z2R" "1WH", Orb "R76" "WZ4", Orb "T7Q" "5L1", Orb "KJB" "T24", Orb "YSZ" "VXN", Orb "K9D" "RZN", Orb "Y5B" "BR3", Orb "KNL" "4FQ", Orb "QPC" "RKX", Orb "CJC" "G1N", Orb "C2M" "Q89", Orb "Y3C" "9ZV", Orb "KHV" "V1W", Orb "YXZ" "PQH", Orb "B25" "99L", Orb "9MV" "BRH", Orb "XH7" "ZG7", Orb "2GJ" "4FM", Orb "RZN" "TR3", Orb "S4Y" "C2M", Orb "CDR" "QC3", Orb "9QH" "W45", Orb "S1M" "WT9", Orb "ZFN" "XNH", Orb "5C8" "HQV", Orb "58V" "RXM", Orb "467" "LML", Orb "FGB" "1C6", Orb "SHF" "VFG", Orb "PQH" "6LP", Orb "4CK" "33F", Orb "JYK" "QRK", Orb "8NW" "YY8", Orb "85X" "2RH", Orb "FK8" "YPQ", Orb "5YX" "9PR", Orb "JV3" "1WC", Orb "ML2" "PVD", Orb "C79" "L6J", Orb "H9W" "L8M", Orb "LKN" "CY4", Orb "1SW" "TKJ", Orb "MJG" "6WX", Orb "HH7" "7SX", Orb "4B9" "BV1", Orb "CFY" "82B", Orb "KHS" "BDS", Orb "KV4" "JGM", Orb "6LC" "KSS", Orb "LFN" "GWR", Orb "KG7" "BYC", Orb "5FT" "Z8B", Orb "K3J" "3SV", Orb "KZL" "SS8", Orb "B1R" "BPG", Orb "CJV" "BYK", Orb "1FH" "PCQ", Orb "Z83" "FMW", Orb "BFF" "Q6Z", Orb "NC1" "HM5", Orb "QRK" "5BT", Orb "WJ2" "FPF", Orb "9M2" "57G", Orb "33X" "2BP", Orb "G78" "GB8", Orb "CPH" "1GX", Orb "T69" "H1D", Orb "DGS" "GF7", Orb "VS2" "G2B", Orb "LLB" "F25", Orb "RF9" "2G7", Orb "JN6" "TRK", Orb "TC6" "KMM", Orb "TX9" "ZWD", Orb "QPV" "V2Q", Orb "39Q" "492", Orb "QFL" "YSR", Orb "23D" "K85", Orb "CD9" "H3H", Orb "W54" "8SD", Orb "9C1" "K5K", Orb "CYB" "V4N", Orb "5DS" "V3Q", Orb "7YL" "883", Orb "FB4" "7KN", Orb "TQR" "N1X", Orb "W5L" "NT3", Orb "TWN" "7Q5", Orb "1DN" "L8Y", Orb "QCC" "HDV", Orb "38B" "5V3", Orb "R8F" "FQF", Orb "XM2" "KH4", Orb "RQW" "GKV", Orb "2R5" "RV7", Orb "2BY" "H2T", Orb "B99" "V8N", Orb "2BP" "K54", Orb "TV5" "KZL", Orb "9TH" "Q7N", Orb "ZWD" "PW9", Orb "HGV" "B4Z", Orb "VJ6" "VSS", Orb "KV4" "C79", Orb "RWZ" "4YZ", Orb "6X9" "G6Z", Orb "VNS" "QN1", Orb "P5Z" "5F6", Orb "9QP" "BD6", Orb "JKC" "58V", Orb "V35" "1TQ", Orb "ZTW" "1SQ", Orb "VJQ" "VL3", Orb "TLY" "M6L", Orb "ZDC" "XDN", Orb "VXN" "BG5", Orb "XT9" "VJQ", Orb "BTL" "LHN", Orb "3J4" "N38", Orb "Z35" "3FP", Orb "ZN4" "R45", Orb "CPP" "D37", Orb "828" "CJY", Orb "TMX" "99R", Orb "KPQ" "QXC", Orb "6X9" "KP2", Orb "WD6" "78Q", Orb "GH7" "NF1", Orb "C67" "6X9", Orb "2R2" "3GJ", Orb "2XJ" "M5B", Orb "TSZ" "94F", Orb "3VB" "JG8", Orb "37C" "SL7", Orb "LYQ" "QFP", Orb "PW9" "9W1", Orb "8HH" "NSX", Orb "G49" "QW9", Orb "VVT" "LGV", Orb "STL" "TM1", Orb "5LH" "VZH", Orb "NHS" "3W5", Orb "RR9" "7J9", Orb "DKJ" "LGK", Orb "P3L" "2B1", Orb "CYT" "JZ3", Orb "MG2" "PXL", Orb "SS8" "B7Y", Orb "QCQ" "DGR", Orb "TPS" "5YN", Orb "D7K" "FQX", Orb "ZY5" "DL8", Orb "S55" "PQC", Orb "G55" "TD6", Orb "N2B" "71K", Orb "FFQ" "KPQ", Orb "C4K" "VD8", Orb "KWM" "7LB", Orb "JYR" "GLV", Orb "G4J" "25F", Orb "H1Y" "VTZ", Orb "DZD" "L3Y", Orb "KNG" "56Y", Orb "B4D" "24F", Orb "KKB" "N42", Orb "9C4" "BTT", Orb "L8M" "MF5", Orb "DSN" "8L1", Orb "GLJ" "FR2", Orb "Y6H" "LW1", Orb "J5J" "ZB8", Orb "361" "Z2P", Orb "HP7" "CHC", Orb "GZS" "33X", Orb "SWP" "3XT", Orb "BHY" "P13", Orb "W7M" "88L", Orb "632" "CCN", Orb "KCH" "MSJ", Orb "6P1" "BJL", Orb "JWM" "VJ3", Orb "XGM" "KXF", Orb "DBT" "D6C", Orb "P13" "5DS", Orb "FRK" "9W8", Orb "7XX" "B24", Orb "R1J" "Z5F", Orb "CN8" "M37", Orb "BCD" "K3J", Orb "YWC" "8JZ", Orb "ZNM" "C8G", Orb "L6D" "895", Orb "QXL" "YC8", Orb "VHP" "S15", Orb "XXT" "XM2", Orb "7KT" "XCJ", Orb "55Z" "66Y", Orb "29P" "WD6", Orb "YBZ" "PV1", Orb "ZHM" "SLK", Orb "GZL" "RD8", Orb "9TS" "V75", Orb "48Z" "LLY", Orb "PXC" "15S", Orb "DS4" "BLD", Orb "624" "6P1", Orb "81D" "1MR", Orb "4LK" "GKN", Orb "22X" "QPC", Orb "M76" "DC7", Orb "DF1" "7QC", Orb "PYL" "DGS", Orb "Y5F" "887", Orb "W39" "95Z", Orb "62W" "FDV", Orb "51R" "Q4F", Orb "2RK" "42X", Orb "KSX" "L2T", Orb "4BM" "XNG", Orb "YPY" "SKD", Orb "H1D" "VBT", Orb "Q6C" "49L", Orb "VLK" "P45", Orb "929" "7QG", Orb "SM3" "BLQ", Orb "K4B" "J83", Orb "HB5" "S1M", Orb "NCN" "QW8", Orb "HNT" "2R2", Orb "YJW" "4BM", Orb "QBF" "WBZ", Orb "FJN" "SP2", Orb "TZJ" "LHD", Orb "V2Q" "KL2", Orb "57J" "9MQ", Orb "9S4" "JYK", Orb "RNJ" "DF1", Orb "ZYW" "H9V", Orb "5T8" "H58", Orb "21L" "ZDC", Orb "T1M" "MN9", Orb "WNL" "G6B", Orb "7XZ" "47C", Orb "9XR" "GGY", Orb "5S4" "VLK", Orb "LVS" "X2N", Orb "C6D" "QXQ", Orb "WND" "5CF", Orb "BYK" "RKQ", Orb "TKK" "Y69", Orb "MCX" "GS1", Orb "25W" "PP1", Orb "NF1" "3M5", Orb "9WW" "YG6", Orb "3FF" "ZP8", Orb "TJW" "CYJ", Orb "31H" "6LC", Orb "3GJ" "YH5", Orb "TQ9" "Q8Q", Orb "S15" "8FP", Orb "S2G" "9KK", Orb "KNM" "C67", Orb "4RV" "DZW", Orb "9DN" "S4M", Orb "MQP" "4CK", Orb "15C" "6NH", Orb "TSQ" "467", Orb "BKX" "K65", Orb "HBL" "GBN", Orb "RTC" "CZ6", Orb "15N" "P53", Orb "L2L" "DX6", Orb "H11" "8MR", Orb "W5V" "ZFQ", Orb "T81" "W5K", Orb "6SX" "2GJ", Orb "TZH" "MTP", Orb "1JM" "TQ5", Orb "F7M" "BNJ", Orb "N2P" "QXL", Orb "1R1" "GNG", Orb "L7K" "ZBR", Orb "KHL" "NS9", Orb "1RC" "SSN", Orb "8T8" "R26", Orb "FPZ" "YKK", Orb "VY5" "PNW", Orb "S7V" "KNL", Orb "M45" "SBN", Orb "M5B" "14S", Orb "2VR" "Q37", Orb "339" "D1Z", Orb "RVH" "35V", Orb "C1P" "FTX", Orb "191" "SXC", Orb "G6Z" "N46", Orb "GB3" "V6Z", Orb "VQD" "D5W", Orb "V22" "BM6", Orb "WY6" "D96", Orb "LGK" "LVR", Orb "DY3" "KT2", Orb "HBY" "BBX", Orb "WDN" "GY5", Orb "HTS" "B8J", Orb "PRP" "GJB", Orb "VTZ" "3SQ", Orb "CXY" "7TX", Orb "FSH" "5WQ", Orb "CFV" "QGK", Orb "65V" "6WF", Orb "SKC" "MBX", Orb "7C5" "535", Orb "T91" "48Z", Orb "GJT" "G86", Orb "1M4" "HTX", Orb "42W" "LKN", Orb "956" "MZY", Orb "WH3" "Z58", Orb "PNM" "LWB", Orb "852" "3BL", Orb "52F" "1ZD", Orb "4XT" "39Q", Orb "Y4P" "7XX", Orb "BP2" "J3G", Orb "KC2" "C51", Orb "T11" "WBK", Orb "57C" "5XB", Orb "Q2W" "495", Orb "JZT" "CD9", Orb "3J5" "M7Y", Orb "2RH" "986", Orb "BDT" "TXC", Orb "PNW" "5GN", Orb "RBN" "ZSG", Orb "HK5" "LGX", Orb "MBX" "9TH", Orb "SM1" "DG9", Orb "9W8" "8WH", Orb "YGW" "HKK", Orb "1CG" "NSB", Orb "D34" "PGR", Orb "JKF" "GKH", Orb "6CT" "CLH", Orb "XCJ" "BDC", Orb "TX9" "8ZL", Orb "MXJ" "1JM", Orb "PNW" "GB3", Orb "GSL" "JS7", Orb "PHM" "3XB", Orb "D57" "L7H", Orb "51R" "B8R", Orb "GY5" "ZKL", Orb "K49" "ZQD", Orb "HDV" "3TK", Orb "F1T" "W85", Orb "KXF" "M45", Orb "MZ7" "SHF", Orb "D96" "TXM", Orb "88N" "WW2", Orb "5B2" "45N", Orb "STX" "65S", Orb "BZM" "BFN", Orb "XBN" "M12", Orb "CXQ" "9S4", Orb "FFT" "YJ3", Orb "712" "P4M", Orb "GKN" "ST3", Orb "4P3" "K5X", Orb "CN8" "769", Orb "K1T" "1J4", Orb "FXT" "55Z", Orb "BJL" "FXT", Orb "K8B" "V3L", Orb "99R" "2MH", Orb "C8G" "D2N", Orb "6R3" "HGV", Orb "JWF" "JN6", Orb "WZ9" "VVT", Orb "3MG" "8T4", Orb "GWT" "PYX", Orb "H8W" "VPY", Orb "G6Z" "WPC", Orb "TQ1" "1WD", Orb "DXT" "4R3", Orb "GWR" "M76", Orb "4LL" "PY1", Orb "NKH" "TWD", Orb "KW9" "TXV", Orb "NZN" "XMW", Orb "9K8" "WZX", Orb "GZ4" "SRB", Orb "83V" "2BY", Orb "RMS" "NVS", Orb "GBN" "DLR", Orb "2SK" "YMG", Orb "1MR" "4NP", Orb "LVR" "CXQ", Orb "YSG" "9RH", Orb "13R" "9LN", Orb "88T" "29N", Orb "33F" "DJH", Orb "ZHF" "7JQ", Orb "GB3" "D99", Orb "1L1" "XJQ", Orb "SKL" "ZVM", Orb "NZ2" "RWZ", Orb "Q7H" "S5F", Orb "N42" "X2K", Orb "RLW" "BKM", Orb "NDJ" "HQB", Orb "QXG" "JM3", Orb "H3H" "ZHW", Orb "MTP" "36Y", Orb "ZTL" "P34", Orb "87R" "226", Orb "F34" "YML", Orb "W45" "C2W", Orb "CQ9" "31H", Orb "RSR" "5PM", Orb "BD6" "5Y1", Orb "XBV" "4G1", Orb "5C8" "FRK", Orb "Y96" "9C1", Orb "JVW" "JGG", Orb "QQG" "PX4", Orb "RMB" "WK3", Orb "6ZX" "6W2", Orb "Q6H" "DXC", Orb "3NY" "1C3", Orb "JDN" "LQQ", Orb "8PF" "TQ1", Orb "6NH" "KR6", Orb "LQY" "RTC", Orb "Q3S" "Q25", Orb "554" "VR5", Orb "TTW" "K5Z", Orb "WZF" "4R9", Orb "284" "Y9Z", Orb "SZS" "NYX", Orb "GGX" "8KX", Orb "BZD" "X74", Orb "6ZJ" "HB5", Orb "144" "JPJ", Orb "3TD" "23Q", Orb "FD3" "DSN", Orb "V89" "KVF", Orb "CDR" "S72", Orb "XZM" "N2T", Orb "V1W" "KZN", Orb "MF5" "14R", Orb "PW3" "99G", Orb "HTK" "SB4", Orb "23J" "JZN", Orb "1CT" "1CG", Orb "Z9H" "GY3", Orb "D8G" "2Y2", Orb "QW8" "G6Y", Orb "94F" "9ST", Orb "7TM" "BTY", Orb "SV9" "8V1", Orb "2JQ" "B77", Orb "T9H" "KL9", Orb "9SX" "1HX", Orb "Y7L" "ZBY", Orb "9PR" "J8C", Orb "FMK" "W54", Orb "X1T" "YOU", Orb "7YC" "RCP", Orb "QN1" "W39", Orb "PD9" "8SW", Orb "F7C" "CVD", Orb "SGY" "8HF", Orb "21L" "XCD", Orb "PZ9" "44P", Orb "X1V" "284", Orb "M9Y" "XNF", Orb "HFK" "YQK", Orb "K85" "QPV", Orb "NCJ" "QF1", Orb "XBR" "DZT", Orb "VR5" "VLW", Orb "V4H" "B99", Orb "DYJ" "SN5", Orb "5DS" "YVH", Orb "717" "YQ9", Orb "NFM" "WJ2", Orb "YWP" "N15", Orb "Q37" "XBN", Orb "WZ4" "9ZQ", Orb "NB5" "QFH", Orb "87R" "BS5", Orb "NLZ" "BNL", Orb "TKV" "CTP", Orb "WLT" "Q7S", Orb "JM3" "BWR", Orb "WM8" "HRL", Orb "SCL" "VCD", Orb "99G" "XGZ", Orb "V2D" "2FJ", Orb "KP2" "GGX", Orb "57R" "5B2", Orb "H58" "K8B", Orb "B3L" "MQP", Orb "LG4" "1V8", Orb "WZX" "D53", Orb "8FF" "W65", Orb "SRD" "855", Orb "KVF" "RRN", Orb "Q31" "F9S", Orb "5Y2" "BSW", Orb "WWP" "2YP", Orb "6B2" "9RP", Orb "V2G" "GJT", Orb "KHT" "NQZ", Orb "MZL" "WWP", Orb "2XP" "FFF", Orb "SGV" "Z92", Orb "MNW" "HZV", Orb "BTT" "MCX", Orb "GJB" "5N1", Orb "R3C" "GR3", Orb "77N" "V88", Orb "WFZ" "MZ7", Orb "COM" "7FQ", Orb "RFX" "9P9", Orb "XG2" "RQ2", Orb "N7C" "X7D", Orb "GK2" "ZS6", Orb "CPW" "ZHM", Orb "Q95" "XRX", Orb "3W6" "WFZ", Orb "D6C" "LMG", Orb "44P" "RKW", Orb "HHM" "KBY", Orb "49L" "DL5", Orb "L16" "GSL", Orb "9X2" "GJ4", Orb "Q89" "RLW", Orb "3J4" "NFM", Orb "4CK" "BPN", Orb "Y6S" "NS7", Orb "C22" "W8G", Orb "GD1" "97T", Orb "PQ2" "J7F", Orb "8K5" "TZJ", Orb "WYX" "NTR", Orb "GTQ" "8M8", Orb "PV2" "2X8", Orb "W11" "VC8", Orb "QQN" "S73", Orb "VP2" "TMX", Orb "9KK" "KHS", Orb "P34" "9K7", Orb "99L" "2PR", Orb "XFB" "TKV", Orb "TR2" "MGZ", Orb "T9H" "9TS", Orb "B3S" "D8G", Orb "JGG" "M5X", Orb "CFT" "LV3", Orb "K5Z" "KNQ", Orb "ZBR" "34T", Orb "6Q1" "H7K", Orb "YVH" "J5J", Orb "B7Y" "ZDF", Orb "2Y2" "2L4", Orb "T71" "6CT", Orb "4DM" "K1R", Orb "7NC" "83P", Orb "YQ9" "F65", Orb "QWD" "QF9", Orb "XF2" "WCC", Orb "62C" "GZL", Orb "X3F" "Y15", Orb "Q7S" "X1T", Orb "Z58" "9C4", Orb "YML" "R1J", Orb "73G" "B5F", Orb "149" "D6N", Orb "14R" "HH7", Orb "H6Z" "TPS", Orb "RC1" "SCB", Orb "P44" "YTP", Orb "3ZP" "XLW", Orb "BPG" "41F", Orb "4JL" "W51", Orb "PQC" "BT8", Orb "LQX" "BHX", Orb "4Q5" "DFD", Orb "TTW" "W5V", Orb "RYV" "YZR", Orb "RV7" "TH7", Orb "SG9" "QFV", Orb "97T" "97R", Orb "6YB" "FQ8", Orb "3K2" "6FD", Orb "VX1" "YB8", Orb "PD9" "5HL", Orb "WQN" "XYZ", Orb "Z2Y" "1TP", Orb "3NY" "9JW", Orb "K54" "JYR", Orb "GCJ" "RZC", Orb "KT2" "PBJ", Orb "GGJ" "554", Orb "RZC" "CJV", Orb "8JZ" "9DP", Orb "TH7" "CC1", Orb "8KX" "4Q5", Orb "4BX" "JWM", Orb "QXC" "7QT", Orb "H9V" "S4Y", Orb "PD4" "5YX", Orb "2D3" "89D", Orb "BL1" "3JQ", Orb "KR6" "5QQ", Orb "V6L" "5KY", Orb "3BD" "V2D", Orb "FMW" "YQP", Orb "VTC" "TT8", Orb "TT8" "KW9", Orb "BG1" "6TC", Orb "4FM" "GVB", Orb "LW3" "T42", Orb "G2B" "3X9", Orb "PPK" "LFN", Orb "GF2" "BTH", Orb "C54" "3MG", Orb "1N1" "DKL", Orb "2S8" "1B3", Orb "XW3" "3ZM", Orb "8DX" "1DN", Orb "S2H" "9NY", Orb "RD8" "BXB", Orb "D66" "9C5", Orb "SKW" "TG3", Orb "9RH" "385", Orb "66Y" "K6Q", Orb "XLW" "CPW", Orb "FQ8" "DYT", Orb "TJM" "T71", Orb "XN9" "RSH", Orb "T5Q" "WLW", Orb "DBV" "TQ9", Orb "B8R" "83V", Orb "WJ8" "8QJ", Orb "QGG" "YJW", Orb "17H" "3M7", Orb "ZB1" "15G", Orb "2D9" "P36", Orb "Z71" "K4W", Orb "FYN" "NZ2", Orb "W9V" "VHW", Orb "7TM" "JKF", Orb "2YS" "KR3", Orb "HKN" "4DM", Orb "ZCY" "XT9", Orb "924" "41B", Orb "ZWF" "G35", Orb "ZWF" "R8F", Orb "8LY" "M8L", Orb "7J9" "B1R", Orb "FX2" "SKL", Orb "1RS" "RN9", Orb "2D9" "PNM", Orb "PZ9" "5HP", Orb "XLN" "9WW", Orb "W9F" "ML8", Orb "LV3" "WJR", Orb "HNT" "DC8", Orb "WJR" "361", Orb "VJ3" "MN7", Orb "1VD" "GW8", Orb "6QN" "81D", Orb "BNY" "XJT", Orb "3SQ" "G9D", Orb "NS9" "Y4P", Orb "1FQ" "QXG", Orb "CNG" "DMD", Orb "T24" "31L", Orb "DKM" "X61", Orb "D37" "7DC", Orb "KN1" "5SP", Orb "L96" "GML", Orb "SB4" "D57", Orb "Y2Q" "MPM", Orb "VLW" "PJ9", Orb "M55" "T3B", Orb "D8R" "MND", Orb "KHG" "MZP", Orb "V1D" "RXS", Orb "FQF" "MJW", Orb "QLL" "SFV", Orb "7LB" "763", Orb "RFX" "LL2", Orb "SCL" "3FW", Orb "NSG" "HV7", Orb "FK8" "9MP", Orb "DKL" "YVB", Orb "7JP" "7NH", Orb "HJS" "2H7", Orb "YN4" "3SX", Orb "SVQ" "57J", Orb "37L" "3WY", Orb "K65" "D7G", Orb "Q83" "BFF", Orb "KM9" "DF9", Orb "T7X" "3WJ", Orb "2FN" "L2H", Orb "HPL" "K9D", Orb "W3H" "912", Orb "BPN" "T81", Orb "9RC" "8W4", Orb "DGR" "H33", Orb "C6M" "CLV", Orb "K5K" "R5N", Orb "RTZ" "9LV", Orb "F5X" "VNJ", Orb "JC9" "HSH", Orb "517" "4VY", Orb "CXP" "7YC", Orb "LGV" "ZCY", Orb "72T" "T1M", Orb "2CV" "GF4", Orb "45N" "2H4", Orb "77N" "TXL", Orb "GNT" "727", Orb "821" "WYC", Orb "JWF" "XGM", Orb "3SS" "CYT", Orb "V75" "SRD", Orb "F5W" "RMB", Orb "TWM" "BS9", Orb "MZY" "NVK", Orb "KDZ" "QPM", Orb "365" "FVD", Orb "GRZ" "NSG", Orb "8FV" "D46", Orb "MBT" "6C7", Orb "GK6" "G1S", Orb "D6M" "57C", Orb "BS9" "R51", Orb "3JQ" "GF2", Orb "D7G" "Z4K", Orb "1NT" "CTD", Orb "F84" "MXV", Orb "1M4" "Q83", Orb "G2X" "6MB", Orb "T5G" "5DG", Orb "57H" "747", Orb "XWC" "JS3", Orb "X8R" "FZ7", Orb "ZVH" "BDT", Orb "FRF" "N95", Orb "BCQ" "QL2", Orb "15N" "PT2", Orb "93R" "1X7", Orb "PCQ" "D34", Orb "W85" "2JQ", Orb "C7N" "L6D", Orb "S8N" "C1P", Orb "YZY" "KM4", Orb "NHX" "KCC", Orb "KL9" "4LL", Orb "RW9" "3PK", Orb "Y6G" "MP5", Orb "5N1" "MCP", Orb "T42" "NHS", Orb "ZLW" "B6K", Orb "L2H" "FZZ", Orb "XKY" "3K2", Orb "2H7" "BZM", Orb "FB6" "65V", Orb "1RC" "DY3", Orb "5B1" "Y26", Orb "X1Z" "852", Orb "DXC" "N2P", Orb "57X" "CPP", Orb "1HX" "NHX", Orb "NH9" "DWH", Orb "XWH" "186", Orb "TRK" "Q2W", Orb "P72" "K51", Orb "G43" "3TF", Orb "75T" "HKP", Orb "VZH" "PTD", Orb "BR3" "3NF", Orb "1R1" "4XT", Orb "6XV" "Z4B", Orb "9W1" "7P1", Orb "JZ3" "GGJ", Orb "VZ6" "1RS", Orb "RW9" "RC1", Orb "6GY" "ZTL", Orb "FR2" "GNT", Orb "DSN" "KM9", Orb "HXW" "KHV", Orb "DL8" "P38", Orb "VFG" "WPQ", Orb "Z8B" "KK4", Orb "N2D" "YQD", Orb "Z2Y" "16Z", Orb "NTR" "9TN", Orb "H2T" "3QN", Orb "XCV" "YN4", Orb "855" "N2B", Orb "SRD" "W41", Orb "W8G" "G49", Orb "L7H" "GH7", Orb "FMZ" "RTZ", Orb "XDN" "3QS", Orb "T8L" "NDC", Orb "DZS" "DS4", Orb "XS4" "293", Orb "22D" "Y76", Orb "29N" "DKM", Orb "38Z" "9MV", Orb "747" "V77", Orb "1XG" "5Y2", Orb "NDC" "4BV", Orb "9C4" "C7N", Orb "GRZ" "XFB", Orb "BNJ" "HKN", Orb "XQD" "SM3", Orb "JXH" "WYX", Orb "YSR" "7NC", Orb "G6Y" "N4W", Orb "YJ3" "LG4", Orb "QJG" "KSX", Orb "7QG" "CGC", Orb "F65" "QJG", Orb "9W1" "56W", Orb "QZS" "G19", Orb "RYD" "LST", Orb "727" "1VD", Orb "FLZ" "HCC", Orb "PCQ" "M9Y", Orb "XJT" "Y8Y", Orb "9CY" "RFX", Orb "74J" "1MB", Orb "JSX" "QK9", Orb "D4R" "6MY", Orb "3PK" "S8N", Orb "D5B" "JVD", Orb "H2C" "TWN", Orb "TQX" "VP2", Orb "W65" "JMP", Orb "GF7" "X8R", Orb "1SQ" "XCV", Orb "1SR" "J71", Orb "3NB" "2MY", Orb "6RL" "2WM", Orb "XMW" "F84", Orb "K18" "VS2", Orb "FMW" "T4B", Orb "XJC" "VQD", Orb "FTR" "6S7", Orb "KWD" "M55", Orb "N95" "S7V", Orb "PDL" "HMQ", Orb "JLK" "QCQ", Orb "GS1" "Z3F", Orb "82B" "BMV", Orb "212" "GD1", Orb "CGC" "3J5", Orb "C2M" "DH3", Orb "G9X" "GNJ", Orb "HV7" "GGH", Orb "SXC" "57K", Orb "HFK" "TQX", Orb "QKL" "YS8", Orb "XL6" "SZS", Orb "L8W" "JJ3", Orb "LSM" "DXG", Orb "NJT" "HGH", Orb "15S" "WZ9", Orb "YWP" "N5F", Orb "4G1" "LB4", Orb "VK7" "YFQ", Orb "88L" "F5W", Orb "F15" "W4Z", Orb "NVK" "8T8", Orb "L6J" "PRP", Orb "LSM" "41T", Orb "763" "GZS", Orb "WZM" "144", Orb "HRL" "395", Orb "VC2" "GC8", Orb "5KY" "QLF", Orb "LL2" "RCT", Orb "MXR" "FGB", Orb "WZX" "FB4", Orb "BKP" "2NH", Orb "F6C" "9DN", Orb "P45" "NN2", Orb "NZM" "J89", Orb "J3G" "K1T", Orb "QWC" "1XG", Orb "7HY" "62C", Orb "JRS" "1SR", Orb "B5F" "GD4", Orb "9ST" "9Y9", Orb "RDL" "LHJ", Orb "PP1" "6TK", Orb "3YP" "P44", Orb "K3L" "7NX", Orb "TKJ" "WJK", Orb "K51" "BZD", Orb "ZB8" "KY1", Orb "J41" "QWC", Orb "45L" "TJM", Orb "3Z4" "T9B", Orb "3CX" "RYD", Orb "5CF" "BQS", Orb "9BS" "9X2", Orb "5H6" "H2C", Orb "XCB" "8WT", Orb "N5B" "FML", Orb "VW4" "ZNM", Orb "R2L" "956", Orb "GZS" "QBF", Orb "P38" "NDS", Orb "WYC" "CJC", Orb "NHY" "BG1", Orb "V8N" "HX9", Orb "57K" "4Q1", Orb "XDZ" "JDN", Orb "7QB" "3GL", Orb "X2K" "YB9", Orb "5MH" "MMM", Orb "J6D" "49T", Orb "78Q" "G6L", Orb "ZDV" "614", Orb "STY" "7XG", Orb "XRX" "6ZJ", Orb "Q43" "HHX", Orb "7FQ" "J6D", Orb "D9P" "27G", Orb "TH7" "GRZ", Orb "PYX" "4W1", Orb "11F" "Z2R", Orb "9C5" "WHN", Orb "2H4" "3CX", Orb "3TF" "RKY", Orb "25F" "QYZ", Orb "4NP" "158", Orb "HMD" "9K8", Orb "7KN" "VS9", Orb "TM1" "GMK", Orb "GKV" "VJ1", Orb "G1N" "5HW", Orb "NSX" "CFX", Orb "3WB" "QKL", Orb "5PJ" "7R8", Orb "FQX" "F3T", Orb "KRJ" "R87", Orb "C1H" "821", Orb "FWG" "QZG", Orb "NJ2" "ZHG", Orb "KM4" "828", Orb "3TK" "TFK", Orb "88Y" "X57", Orb "9LF" "VR8", Orb "G7Y" "872", Orb "1VL" "RZY", Orb "6DW" "9Z7", Orb "C79" "VVB", Orb "CM9" "KM6", Orb "47C" "XHX", Orb "84W" "ZTW", Orb "Z6K" "712", Orb "8W4" "T6X", Orb "V73" "D9P", Orb "LRJ" "45L", Orb "Q25" "3KC", Orb "SZZ" "YWP", Orb "97R" "1CC", Orb "BTH" "W6J", Orb "PXL" "BGV", Orb "GY5" "L5H", Orb "P7Q" "HTJ", Orb "SCB" "3FF", Orb "LQX" "F3D", Orb "BC4" "FNB", Orb "186" "SAN", Orb "57G" "M33", Orb "KZN" "RGX", Orb "X25" "KY3", Orb "G1L" "447", Orb "QPM" "6YB", Orb "385" "JXH", Orb "H7B" "HGX", Orb "TVQ" "BJP", Orb "7KF" "QB4", Orb "L5H" "FNT", Orb "Y8Y" "V4H", Orb "YSG" "9P4", Orb "BVK" "2S5", Orb "3KC" "ZF1", Orb "J5G" "PHM", Orb "8QJ" "7Q6", Orb "J2W" "8JJ", Orb "TXJ" "BY8", Orb "BXB" "ZGW", Orb "YXP" "ZHF", Orb "9BB" "HC3", Orb "DC8" "G3K", Orb "JD8" "S2H", Orb "GGY" "MNW", Orb "7NX" "T91", Orb "2L4" "NH9", Orb "3SX" "8YK", Orb "447" "VV7", Orb "LLY" "4WH", Orb "3B9" "X1Z", Orb "GJ4" "DF2", Orb "RNZ" "QGG", Orb "JTX" "G7Y", Orb "94F" "6RZ", Orb "KYD" "SZZ", Orb "J8L" "SCL", Orb "9P9" "W11", Orb "8SD" "RVM", Orb "4Y9" "NC1", Orb "8NT" "6PS", Orb "27G" "655", Orb "6NH" "6Q1", Orb "XGZ" "ZFN", Orb "986" "DTH", Orb "8Y9" "2D9", Orb "TD6" "DZD", Orb "41F" "PYL", Orb "QW9" "ZYB", Orb "ZS5" "6M6", Orb "F87" "ZWF", Orb "PY3" "DG4", Orb "V6Z" "22X", Orb "191" "XH7", Orb "YVB" "6QN", Orb "BGZ" "G57", Orb "LSQ" "LYQ", Orb "QX6" "TJW", Orb "4X6" "21L", Orb "XC3" "F95", Orb "FPF" "333", Orb "K4W" "W1C", Orb "5Y1" "15N", Orb "V88" "Y6S", Orb "DF9" "FXL", Orb "1PC" "D8R", Orb "8WH" "QLW", Orb "NQC" "TZH", Orb "9C8" "YDG", Orb "5WM" "XG2", Orb "ZFH" "H7B", Orb "2MH" "XS4", Orb "NK1" "TS5", Orb "4FQ" "JZS", Orb "643" "Q8G", Orb "R6H" "BDX", Orb "927" "Z35", Orb "94V" "V7H", Orb "475" "XW3", Orb "SFH" "WJ8", Orb "QK9" "7KF", Orb "954" "HK5", Orb "WQN" "LC3", Orb "7Q3" "DYB", Orb "GKH" "LW3", Orb "LST" "WZF", Orb "MND" "SM1", Orb "HFB" "6B2", Orb "GYF" "1FH", Orb "CCT" "KK8", Orb "2PR" "Y3C", Orb "NS7" "QX6", Orb "11V" "SG1", Orb "R45" "KWM", Orb "NMW" "KWD", Orb "BG9" "75T", Orb "XGB" "V4L", Orb "ZNQ" "Y6H", Orb "614" "Q43", Orb "887" "V85", Orb "1C3" "LSQ", Orb "883" "RQW", Orb "VK7" "ZB9", Orb "1ZD" "Y5B", Orb "JG8" "PXC", Orb "M5R" "8Y9", Orb "BZ2" "Z2H", Orb "QPG" "YPY", Orb "T4B" "2C6", Orb "DFL" "JQY", Orb "2S5" "K18", Orb "MB3" "F1B", Orb "ZHW" "BL1", Orb "C2J" "7HY", Orb "35V" "YRZ", Orb "CPG" "1R1", Orb "14S" "BFQ", Orb "YQK" "QLL", Orb "LGX" "KHT", Orb "5XB" "171", Orb "1P5" "74J", Orb "9ZQ" "KJB", Orb "7BT" "8NW", Orb "HGX" "47V", Orb "TNG" "ZZ6", Orb "YY6" "WM8", Orb "6MY" "CN8", Orb "Q6Z" "RNJ", Orb "3LT" "XKY", Orb "QFH" "SKC", Orb "MB7" "GK6", Orb "DBJ" "2XJ", Orb "3M5" "PD4", Orb "DJH" "GLJ", Orb "YYZ" "HBV", Orb "DGR" "1CT", Orb "5FT" "T3G", Orb "34T" "JZR", Orb "XWC" "PYB", Orb "36Y" "3TD", Orb "6FY" "266", Orb "MGC" "WJH", Orb "CGC" "3VB", Orb "58V" "DBJ", Orb "V1V" "HFB", Orb "B36" "VTC", Orb "3XB" "9RT", Orb "37X" "11V", Orb "3WK" "PRQ", Orb "GB8" "773", Orb "9CY" "NLZ", Orb "8FP" "Q3S", Orb "RKK" "37C", Orb "L71" "CPG", Orb "QT5" "GWT", Orb "BDX" "X5Q", Orb "K65" "35F", Orb "9G4" "55S", Orb "5XJ" "LT2", Orb "FML" "BHC", Orb "RKW" "149", Orb "HM5" "DVY", Orb "8SW" "TNG", Orb "JQY" "C3M", Orb "8PF" "VZG", Orb "16Z" "YWT", Orb "MSJ" "FHS", Orb "25W" "TX9", Orb "9MV" "MFY", Orb "RLD" "DSJ", Orb "2CJ" "SP7", Orb "X61" "YGW", Orb "HSH" "J4Q", Orb "MCP" "XBW", Orb "WTK" "C4K", Orb "D8G" "LKD", Orb "JQP" "L7L", Orb "SSN" "PKB", Orb "Q7N" "Z83", Orb "XQ5" "7BT", Orb "V76" "VZ6", Orb "49T" "MZL", Orb "VFS" "D7K", Orb "ZFQ" "L6Z", Orb "ML8" "9M2", Orb "N1X" "XWC", Orb "CQ2" "6TS", Orb "CLQ" "JYV", Orb "41B" "Q7H", Orb "QBG" "LM8", Orb "7SX" "T7X", Orb "D57" "X25", Orb "JZR" "3NY", Orb "HR8" "R5B", Orb "5KS" "CPR", Orb "18J" "RRR", Orb "QF9" "FFQ", Orb "VS9" "YGR", Orb "GMK" "HJS", Orb "TQ2" "717", Orb "8XN" "V1V", Orb "1B3" "2F1", Orb "4Y9" "L6V", Orb "664" "MDJ", Orb "DZF" "DBV", Orb "38H" "CYB", Orb "5L1" "WDN", Orb "HCM" "CXX", Orb "6TR" "91J", Orb "ZP8" "JRS", Orb "QTZ" "5DN", Orb "65V" "C1H", Orb "HBY" "B4D", Orb "9CG" "C6M", Orb "CCN" "Z9H", Orb "362" "8MT", Orb "6MB" "L7K", Orb "BYC" "FFT", Orb "RKR" "FS5", Orb "SV4" "PV2", Orb "FYT" "BW6", Orb "MJY" "K49", Orb "6M6" "9HY", Orb "5HW" "NR1", Orb "D5W" "SJD", Orb "YM4" "KNM", Orb "BCB" "6YP", Orb "DFL" "Z71", Orb "BNL" "TPR", Orb "D6N" "QQN", Orb "5HP" "X3F", Orb "F1B" "8K5", Orb "V3Q" "RKN", Orb "R87" "PKN", Orb "9Z7" "CXW", Orb "93T" "H11", Orb "KL2" "2K8", Orb "SF4" "68X", Orb "RXM" "ZN4", Orb "TS5" "57X", Orb "K6Q" "WH3", Orb "83S" "X5T", Orb "5CV" "G1L", Orb "CXW" "PDL", Orb "WBZ" "CM9", Orb "655" "B3L", Orb "D46" "4P3", Orb "GF6" "4RV", Orb "H9V" "L93", Orb "R33" "TRF", Orb "L8Y" "ZZM", Orb "G5S" "3BD", Orb "G57" "XCB", Orb "TG3" "5FT", Orb "LMG" "RP6", Orb "P53" "XWH", Orb "55S" "5CV", Orb "JYD" "MYJ", Orb "CTP" "ZNQ", Orb "GNG" "NB5", Orb "DX8" "ZFH", Orb "N3Y" "23D", Orb "DJM" "NMW", Orb "MB4" "Q6H", Orb "H4Z" "8FK", Orb "PN1" "87R", Orb "P2H" "TLY", Orb "FWY" "W3H", Orb "TR3" "P5W", Orb "GKG" "362", Orb "L1H" "1FQ", Orb "1YH" "Q48", Orb "3QS" "BG9", Orb "ST3" "9BS", Orb "655" "TXJ", Orb "MPM" "F71", Orb "VHW" "29P", Orb "CHC" "BKX", Orb "PY1" "MG2", Orb "3MH" "VZP", Orb "GD4" "HJT", Orb "BDC" "93T", Orb "58J" "X92", Orb "2X8" "3WK", Orb "B24" "DXT", Orb "DBY" "Q1X", Orb "2S5" "1SK", Orb "CPY" "RLD", Orb "4CZ" "V6L", Orb "GF2" "SPF", Orb "FHS" "F6C", Orb "YVK" "K3L", Orb "ZQJ" "KS7", Orb "ZB9" "SH9", Orb "VSS" "W7M", Orb "VTP" "1P5", Orb "L2T" "LTW", Orb "XJQ" "D6M", Orb "YX4" "8FV", Orb "5SP" "ZWX", Orb "JTX" "BNR", Orb "3ZM" "GCD", Orb "HZH" "JV3", Orb "GQP" "SXL", Orb "JGM" "M3N", Orb "VZP" "JD8", Orb "8XJ" "SF4", Orb "757" "CLL", Orb "L7L" "G9L", Orb "4VY" "3MH", Orb "9LN" "4GL", Orb "9XX" "N2Q", Orb "RT1" "6XV", Orb "SGP" "R98", Orb "RCP" "GCJ", Orb "6XP" "D5X", Orb "Q55" "1NT", Orb "YS8" "DZS", Orb "KCW" "5H6", Orb "YQP" "K6F", Orb "PX4" "Z9Z", Orb "W41" "3NB", Orb "LHJ" "XZM", Orb "SK7" "QCC", Orb "D53" "XKM", Orb "D5X" "J5G", Orb "V88" "HNT", Orb "WMJ" "7YL", Orb "7DH" "GK2", Orb "28T" "DJ7", Orb "F71" "FJN", Orb "1SJ" "GYF", Orb "DLY" "WF4", Orb "YML" "PBT", Orb "SG1" "QSM", Orb "WLW" "GKG", Orb "HCM" "HBL", Orb "VPT" "929", Orb "NN2" "6CJ", Orb "FZZ" "83S", Orb "KT2" "624", Orb "HQV" "XZ4", Orb "293" "TR2", Orb "JK4" "NB3", Orb "9HY" "JC9", Orb "763" "HCM", Orb "2C6" "F1T", Orb "2WM" "52F", Orb "K1L" "57R", Orb "G6B" "1SJ", Orb "395" "KC2", Orb "HZV" "CNG", Orb "Z6K" "7VY", Orb "TFK" "L2L", Orb "KM6" "632", Orb "NGM" "G55", Orb "4XK" "XGB", Orb "W8V" "NBP", Orb "9RT" "B87", Orb "J3D" "NWX", Orb "T7Q" "4B9", Orb "VVB" "6R3", Orb "95Z" "RSB", Orb "GH2" "LRJ", Orb "9JN" "Q31", Orb "1SK" "KRJ", Orb "QL2" "G78", Orb "5Y2" "HWL", Orb "KD9" "4JX", Orb "VPZ" "Z4V", Orb "N38" "VMW", Orb "K29" "HFK", Orb "FBC" "4KK", Orb "1DR" "CQ9", Orb "CFX" "BFM", Orb "Z4B" "GZ9", Orb "SN5" "96M", Orb "FFF" "WQN", Orb "SVQ" "3W6", Orb "RKN" "2P4", Orb "BLD" "VPT", Orb "SH9" "R4S", Orb "554" "X1V", Orb "TXM" "GQP", Orb "R51" "V22", Orb "STL" "HH1", Orb "4YZ" "2P3", Orb "HTX" "STY", Orb "BT8" "RT1", Orb "9P4" "9JN", Orb "VBT" "9G4", Orb "QBD" "5SJ", Orb "G3K" "NDJ", Orb "X5Q" "M79", Orb "3FP" "6TR", Orb "C3M" "XQ5", Orb "QXQ" "NHY", Orb "NHS" "FTR", Orb "R98" "DZF", Orb "PKB" "D8N", Orb "YC8" "K1L", Orb "BTL" "38Z", Orb "R4S" "8NX", Orb "NVG" "ZQJ", Orb "FSX" "1PJ", Orb "CJY" "G2X", Orb "LWB" "335", Orb "X7D" "38B", Orb "GZ4" "3WB", Orb "J4Q" "57H", Orb "V2Q" "Y6G", Orb "K7P" "NCJ", Orb "M6L" "NN8", Orb "WPC" "VFS", Orb "VMW" "XN9", Orb "KHV" "KHL", Orb "GR3" "BKP", Orb "RXS" "84W", Orb "HRL" "YXZ", Orb "XNF" "3TS", Orb "JPJ" "BPF", Orb "5BT" "XV7", Orb "D3N" "P3L", Orb "9TN" "NJH", Orb "GDH" "3SS", Orb "WJK" "58J", Orb "91J" "MB4", Orb "BS9" "8PW", Orb "YY8" "339", Orb "V3L" "R2L", Orb "Q8Q" "JK4", Orb "WW2" "CXP", Orb "VCD" "W5L", Orb "6FB" "FWY", Orb "KR3" "YWC", Orb "5PM" "X6F", Orb "MXV" "5XY", Orb "4SH" "XC3", Orb "5B2" "7KT", Orb "XHX" "CPH", Orb "1J4" "ZYW", Orb "RGX" "1VL", Orb "WNW" "DR4", Orb "J2W" "D4R", Orb "W4Z" "YM4", Orb "1ZX" "NVG", Orb "G19" "MJY", Orb "HJM" "77N", Orb "T9B" "1T1", Orb "V4L" "YGY", Orb "3BL" "2RK", Orb "XJT" "PZ9", Orb "CZ6" "HZ8", Orb "VNJ" "5WM", Orb "BFJ" "XBR", Orb "J89" "9LF", Orb "2YS" "VY5", Orb "YKK" "R3C", Orb "441" "JLK", Orb "HJT" "Q55", Orb "CC1" "T5G", Orb "TWD" "GZN", Orb "W4Z" "K1N", Orb "JZN" "W61", Orb "WCC" "XBF", Orb "WJH" "85X", Orb "GK6" "C29", Orb "GCD" "KV4", Orb "24F" "C4C", Orb "2YP" "JKC", Orb "PZV" "DBY", Orb "HC3" "W3J", Orb "7VY" "TSQ", Orb "BPF" "664", Orb "FQ6" "TQ2", Orb "JVD" "LSM", Orb "ZYB" "1SB", Orb "BKX" "XVW", Orb "88L" "W6W", Orb "M5X" "PZ1", Orb "MP9" "87H", Orb "LHD" "7CB", Orb "CXD" "NKH", Orb "BY8" "4DY", Orb "LK6" "23J", Orb "P36" "QG2", Orb "NML" "SRG", Orb "VJC" "R81", Orb "6RZ" "4CZ", Orb "XCD" "P2H", Orb "5XY" "ZY5", Orb "B87" "J9X", Orb "NSB" "SV4", Orb "WG5" "6G3", Orb "HWL" "DLY", Orb "XPR" "P5N", Orb "GR1" "BWZ", Orb "MWT" "4SH", Orb "X69" "GZ4", Orb "JS3" "QD4", Orb "MXV" "LDH", Orb "4Q1" "4BX", Orb "R5B" "RR9", Orb "9W8" "Z2K", Orb "CYJ" "4W6", Orb "XKM" "QCN", Orb "4HT" "CKC", Orb "5ZN" "D5B", Orb "W1C" "179", Orb "WJ1" "5LS", Orb "41B" "W9F", Orb "18Y" "MBT", Orb "2MY" "CQ5", Orb "RKX" "WC3", Orb "Q7S" "22J", Orb "QDB" "22D", Orb "SBN" "519", Orb "BDS" "DRV", Orb "4BV" "PK6", Orb "SG1" "SFH", Orb "PVX" "XDZ", Orb "895" "RF9", Orb "519" "H93", Orb "SP2" "HP7", Orb "WC3" "5HN", Orb "NK3" "FJ6", Orb "9ZV" "Q6C", Orb "8L1" "2VR", Orb "G35" "W1Z", Orb "9MP" "Y77", Orb "KNL" "ZCH", Orb "1X7" "KW2", Orb "5KY" "583", Orb "SL7" "2FN", Orb "QGV" "18Y", Orb "FRF" "724", Orb "KK8" "VMF", Orb "PJ9" "ZDV", Orb "7R8" "WYT", Orb "BGV" "MZ8", Orb "BWZ" "YSG", Orb "GGH" "QH4", Orb "6C7" "PQ2", Orb "5YN" "2CJ", Orb "LKZ" "G5S", Orb "HH2" "Y96", Orb "L6Z" "DMP", Orb "N2T" "V89", Orb "PYB" "BVK", Orb "V4N" "MB7", Orb "BG6" "R76", Orb "158" "BFJ", Orb "89D" "S55", Orb "DFD" "NK1", Orb "42X" "XL6", Orb "4WN" "T7Q", Orb "QB4" "MB3", Orb "K8N" "RDL", Orb "BQS" "4P2", Orb "5NT" "MXJ", Orb "L2H" "SGP", Orb "VD8" "88Y", Orb "MP5" "F15", Orb "W1Z" "5ZN", Orb "LGK" "924", Orb "6TS" "5MH", Orb "CVL" "MYV", Orb "ZF1" "DFL", Orb "WZD" "JWF", Orb "SJD" "XKJ", Orb "SZ4" "P72", Orb "BBX" "RSG", Orb "D6H" "QBD", Orb "H93" "9ZH", Orb "LT2" "DJM", Orb "T3G" "MJG", Orb "BWR" "FBC", Orb "QLW" "RKR", Orb "XN9" "7CC", Orb "6FQ" "D6H", Orb "GZN" "C3W", Orb "MK5" "WYD", Orb "2K5" "VTP", Orb "1W5" "42W", Orb "K1N" "K7P", Orb "WNT" "YYZ", Orb "4P5" "QLB", Orb "XVC" "2S8", Orb "HTJ" "VZJ", Orb "XDN" "56Z", Orb "DR4" "FRF", Orb "CKC" "KNG", Orb "W6W" "5C8", Orb "C5Z" "51R", Orb "KBY" "STX", Orb "BM6" "BHY", Orb "DH3" "TVC", Orb "9DP" "PQP", Orb "PK6" "VW4", Orb "333" "HBY", Orb "BTY" "F3H", Orb "WRX" "YXP", Orb "3M7" "6ZX", Orb "DX6" "WNL", Orb "SZZ" "2R7", Orb "WJH" "YZY", Orb "1WD" "SKW", Orb "1WH" "MK5", Orb "QLB" "XHM", Orb "R5N" "R33", Orb "W51" "63R", Orb "QSM" "2K5", Orb "P5W" "B36", Orb "RRR" "TKK", Orb "3TS" "SMD", Orb "LTW" "HR8", Orb "QKW" "FRW", Orb "5SJ" "1YH", Orb "LML" "J1J", Orb "ZSG" "CQ2", Orb "H6R" "CDR", Orb "SLK" "88T", Orb "6G3" "B3S", Orb "335" "SZ4", Orb "GQ2" "SVQ", Orb "B1X" "NKZ", Orb "TPR" "XVC", Orb "CFX" "2CV", Orb "7DC" "TTW", Orb "D99" "H1Y", Orb "PZ1" "WLT", Orb "YVH" "NN1", Orb "KN1" "P7Q", Orb "HKP" "4Y6", Orb "QQ3" "LKZ", Orb "VC8" "XXT", Orb "T3B" "1JL", Orb "FRW" "38H", Orb "XHM" "2SK", Orb "B8J" "7QB", Orb "V7H" "PS1", Orb "769" "4LK", Orb "BPF" "2YS", Orb "5GN" "KKB", Orb "QFP" "9XX", Orb "TJM" "XBV", Orb "R26" "PVX", Orb "RVM" "NHB", Orb "WHN" "954", Orb "D37" "9BB", Orb "HMQ" "9C8", Orb "57H" "L1H", Orb "CY4" "H9W", Orb "9Y9" "W8V", Orb "2P4" "W9V", Orb "G9L" "N7C", Orb "LST" "K4B", Orb "J7F" "BC4", Orb "QCN" "FLZ", Orb "S5F" "28T", Orb "Q8G" "XJC", Orb "JZS" "C5N", Orb "5LS" "1SW", Orb "BJH" "FK8", Orb "6LP" "QPG", Orb "68Z" "F7M", Orb "TZJ" "8DX", Orb "8JJ" "4WN", Orb "BRH" "J8L", Orb "FZ7" "BCB", Orb "FS5" "FB6", Orb "BS5" "C22", Orb "KCC" "8LY", Orb "5DK" "FMK", Orb "ZJX" "VPZ", Orb "XV7" "9CY", Orb "MJW" "YVK", Orb "GZ9" "JKN", Orb "DLR" "H6Z", Orb "ZG7" "J3D", Orb "HBL" "GVY", Orb "YH5" "C6D", Orb "6YZ" "N3Y", Orb "LKZ" "XY2", Orb "JYR" "F87", Orb "MZ8" "HMD", Orb "HNM" "4P5", Orb "JVG" "H6R", Orb "87L" "HJM", Orb "P9P" "68Z", Orb "35F" "WRX", Orb "WK3" "C4F", Orb "F15" "6RL", Orb "C67" "6P7", Orb "VTZ" "FD3", Orb "PBJ" "5LH", Orb "P3L" "MWT", Orb "WF4" "6SX", Orb "HH1" "6FY", Orb "2FJ" "WZR", Orb "CVD" "36S", Orb "RDL" "WG5", Orb "N15" "NGM", Orb "TSQ" "4LZ", Orb "D8N" "BGZ", Orb "C4F" "FYN", Orb "CMD" "GR1", Orb "T6X" "TC6", Orb "95F" "17H", Orb "LDH" "K8N", Orb "1MC" "LWG", Orb "9ZV" "8PF", Orb "GFT" "MP9", Orb "41T" "YX4", Orb "PTJ" "TSZ", Orb "XYZ" "NCN", Orb "X6F" "MGC", Orb "VR8" "NZN", Orb "96M" "HH2", Orb "MYJ" "88N", Orb "VMF" "XLN", Orb "F9S" "MZ1", Orb "H55" "Z93", Orb "L5D" "6FS", Orb "492" "FX2", Orb "ZTW" "441", Orb "F5X" "QWD", Orb "VFG" "4JL", Orb "DG4" "62W", Orb "LM8" "JTX", Orb "7NH" "J2W", Orb "5QQ" "RVH", Orb "KL9" "FWG", Orb "PS1" "8XN", Orb "1WC" "NJ2", Orb "VZG" "JQP", Orb "CTD" "97C", Orb "RSB" "FX4", Orb "DMP" "Y35", Orb "RHT" "N2D", Orb "97C" "WZD", Orb "SSN" "15C", Orb "GML" "FTG", Orb "XZ4" "11F", Orb "H33" "2D3", Orb "VL3" "73G", Orb "DVY" "RNZ", Orb "HKK" "H8W", Orb "YGR" "BJH", Orb "Z5F" "BP2", Orb "PQP" "GXY", Orb "495" "CBS", Orb "DG9" "PTJ", Orb "GC8" "1PC", Orb "HBV" "R31", Orb "BLQ" "STL", Orb "RCT" "T69", Orb "JYV" "FSH", Orb "G1S" "LLB", Orb "DSJ" "B1X", Orb "RQ5" "9QP", Orb "JC5" "SK7", Orb "724" "YSZ", Orb "T81" "SGY", Orb "DYJ" "ZS5", Orb "ZCH" "DYJ", Orb "5HL" "TVQ", Orb "SRB" "BTL", Orb "VJ1" "MXR", Orb "DTH" "P7D", Orb "4W6" "49P", Orb "YGY" "7WN", Orb "M7Y" "1ZX", Orb "SFV" "MJV", Orb "HZ8" "QZS", Orb "2R7" "C2J", Orb "83P" "VK7", Orb "KS7" "V35", Orb "PRQ" "CCT", Orb "ZHF" "C54", Orb "226" "18J", Orb "7JQ" "7C5", Orb "K5X" "VJC", Orb "J8J" "G4J", Orb "X6F" "WJ1", Orb "Y76" "BCD", Orb "J8L" "ML2", Orb "W3J" "7Q3", Orb "MYV" "LPH", Orb "6FS" "C74", Orb "15G" "7TM", Orb "3X9" "4Y9", Orb "179" "JC5", Orb "HGH" "3B9", Orb "MQP" "L16", Orb "D2N" "GFN", Orb "6PS" "7S3", Orb "ZZM" "Y2Q", Orb "DWH" "NML", Orb "YFQ" "S2G", Orb "C4C" "LVS", Orb "M3N" "TV6", Orb "YB9" "87L", Orb "YF1" "Y7L", Orb "Z4K" "H55", Orb "BKM" "JYD", Orb "6FB" "BNY", Orb "4LZ" "RKK", Orb "BJP" "6FQ", Orb "XVW" "TV5", Orb "5F6" "PD9", Orb "8PW" "NZM", Orb "KK4" "W6N", Orb "4W1" "GZM", Orb "RCT" "CFY", Orb "1J5" "J8J", Orb "D1Z" "VH4", Orb "3QN" "ZD7", Orb "L2L" "WY6", Orb "WBK" "DVN", Orb "V2D" "3LT", Orb "CXX" "KCH", Orb "ZVM" "5KS", Orb "QZG" "QGV", Orb "3J5" "757", Orb "NVS" "J2P", Orb "56W" "2XP", Orb "TQ5" "P5Z", Orb "7Q5" "1MC", Orb "4WH" "WMJ", Orb "NN1" "5PJ", Orb "M37" "YF1", Orb "4GL" "L96", Orb "KHL" "G9X", Orb "6P7" "GQ2", Orb "Y9Z" "SGV", Orb "B1Y" "WNT", Orb "LC3" "T5Q", Orb "B6K" "1N1", Orb "JMP" "KD9", Orb "RKQ" "3ZP", Orb "XRX" "V73", Orb "63R" "72T", Orb "X2N" "FFK", Orb "C29" "QBG", Orb "8ZL" "69Z", Orb "7CB" "G43", Orb "DZT" "37X", Orb "NHY" "3CT", Orb "SGV" "HNM", Orb "8JY" "XPR", Orb "HP6" "325", Orb "B99" "CFT", Orb "9JW" "L71", Orb "912" "7CX", Orb "69Z" "WZM", Orb "F3D" "VNS", Orb "CLH" "FQ6", Orb "G86" "7DH", Orb "85Q" "927", Orb "7QB" "3J4", Orb "DC7" "SG9", Orb "QGK" "XXV", Orb "WYD" "CXY", Orb "SZ6" "365", Orb "FTX" "SVB", Orb "5XB" "XLV", Orb "MFK" "L8W", Orb "YDG" "N5B", Orb "R47" "WND", Orb "ZKL" "5NT", Orb "S72" "KCW", Orb "8FK" "9SX", Orb "DYT" "K29", Orb "XKJ" "SV9", Orb "HHX" "KYD", Orb "8M8" "VKL", Orb "4BV" "Z6K", Orb "PT2" "9RC", Orb "WPJ" "TQR", Orb "7P1" "RHT", Orb "WYT" "WPJ", Orb "ZLB" "QQ3", Orb "MMM" "LHF", Orb "KMM" "6FB", Orb "7K5" "T8L", Orb "XGZ" "1MH", Orb "BG5" "RSR", Orb "SPF" "GDH", Orb "28T" "CMD", Orb "3CT" "1DR", Orb "6CJ" "JKT", Orb "6C7" "QDB", Orb "RKY" "FMZ", Orb "YG6" "HXW", Orb "GNJ" "8FF", Orb "PGR" "PN1", Orb "W6J" "MFK", Orb "XHF" "1ZK", Orb "LB4" "4XK", Orb "2K8" "2R5", Orb "W6N" "J87", Orb "N5F" "643", Orb "K6F" "XQD", Orb "ZGW" "D66", Orb "ZDF" "RBN", Orb "L96" "Q95", Orb "2B1" "CLQ", Orb "8FK" "TWM", Orb "PVD" "C5Z", Orb "TNG" "6DW", Orb "V77" "25W", Orb "ZD7" "VX1", Orb "Z9Z" "R4M", Orb "FXL" "KDZ", Orb "2P3" "37L", Orb "RQ2" "13R", Orb "F3H" "NQC", Orb "FVD" "V1D", Orb "171" "4X6", Orb "1ZK" "9XR", Orb "DMD" "VJ6", Orb "XJC" "L2J", Orb "WZR" "GF6", Orb "9ZH" "DKJ", Orb "7CX" "9QH", Orb "1PJ" "ZVH", Orb "6YP" "LPL", Orb "Z93" "HP6", Orb "NBP" "H4Z", Orb "VKL" "CFV", Orb "PY3" "9MD", Orb "TXL" "QQG", Orb "BMV" "DX8", Orb "XL6" "WNW", Orb "K7K" "191", Orb "ZS6" "GTQ", Orb "6S7" "R47", Orb "CXW" "FPZ", Orb "J9X" "XHF", Orb "J87" "Z2Y", Orb "1MB" "BZ2", Orb "RZY" "1RC", Orb "85Q" "QT5", Orb "J8C" "SWP", Orb "5DN" "YBZ", Orb "Y77" "F5X", Orb "91J" "5XJ", Orb "9MD" "1L1", Orb "9MP" "KG7", Orb "CLL" "XF2", Orb "KY3" "HPL", Orb "BNR" "8NT", Orb "ZJH" "RQ5", Orb "GXY" "WTV", Orb "C51" "212", Orb "J8C" "6GY", Orb "6FD" "M5R", Orb "8V1" "5FB", Orb "266" "5T8", Orb "R4M" "JVG", Orb "WPQ" "P7M", Orb "PBT" "J41", Orb "WK3" "VC2", Orb "VV7" "JZT", Orb "ZWX" "CXD", Orb "56Z" "GFT", Orb "QYZ" "CHF", Orb "SMD" "T9H", Orb "1TP" "1W5", Orb "K1R" "6XP", Orb "FTG" "1J5", Orb "CQ5" "8HH", Orb "YB8" "TSX", Orb "G2B" "Y5F", Orb "FNB" "HHM", Orb "TQX" "CPY", Orb "TQ5" "4HT", Orb "W5K" "PW3", Orb "Z2K" "R6H", Orb "6XP" "94V", Orb "LQQ" "PY3"]

getPlanetsOrbiting :: Planet -> [Orbit] -> [Planet]
getPlanetsOrbiting p [] = []
getPlanetsOrbiting p ((Orb p1 p2):ps) = if p==p1 then p2:(getPlanetsOrbiting p ps)
                                            else getPlanetsOrbiting p ps

countOrbits :: Planet -> [Orbit] -> [Planet] -> Int
countOrbits p os pss = length pss + (foldr ((+).(\p1 -> countOrbits p1 os (p:pss))) 0 (getPlanetsOrbiting p os))  

answerA :: Int
answerA = countOrbits "COM" input []

-- Answer : 387356

--Part B

getPlanetOrbiting :: Planet -> [Orbit] -> [Planet]
getPlanetOrbiting p [] = []
getPlanetOrbiting p ((Orb p1 p2):ps) = if p==p2 then [p1]
                                            else getPlanetOrbiting p ps


searchFor :: Planet -> Int -> [Planet] -> [Planet] -> [Orbit] -> Int
searchFor p hops fringe visited os = if elem p fringe then hops
                                        else 
                                            let newVisited = visited ++ fringe in
                                                searchFor p (hops + 1) (filter (\pl -> not( elem pl newVisited )) (concat (map (\f -> (getPlanetOrbiting f os)++(getPlanetsOrbiting f os)) fringe))) newVisited os

testInput2 :: [Orbit]
testInput2 = [Orb "COM" "B", Orb "B" "C", Orb "C" "D", Orb "D" "E", Orb "E" "F", Orb "B" "G", Orb "G" "H", Orb "D" "I", Orb "E" "J", Orb "J" "K", Orb "K" "L", Orb "K" "YOU", Orb "I" "SAN"]

answerB :: Int
answerB = searchFor (head (getPlanetOrbiting "SAN" input)) (0) (getPlanetOrbiting "YOU" input) [] input

-- Answer : 532