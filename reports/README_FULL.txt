FULL APK DECODE SUMMARY
================================================================================
run_started_utc: 2026-05-03 21:40:24 UTC
run_finished_utc: 2026-05-03 22:23:41 UTC
apk_path: C:\Users\ЗС\Desktop\Новая папка (7)\exteraGram-full-universal-30032026.apk
output_dir: C:\Users\ЗС\Desktop\Новая папка (7)\full

Main stats:
- dex_files: 7
- classes_total (from DEX): 49011
- jadx_classes (java files): 18427
- missing_after_jadx: 0
- androguard_fallback_generated: 0
- obfuscated_class_candidates: 174
- decoded_strings_found: 6521

Steps:
- extract_raw_apk_parts: OK (dex files: 7)
- build_class_index: OK (classes: 49011)
- apktool_decode: OK (ok)
- manifest_parse: OK (ok)
- jadx_decompile: OK (partial success (errors), java files: 18427)
- androguard_fallback: OK (no missing classes)
- decoded_strings_report: OK (items: 6521)
- obfuscation_report: OK (class candidates: 174)

Output structure:
- raw/                         raw extracted APK parts
- apktool/                     decoded resources + manifest
- jadx/sources/                primary Java decompilation
- androguard_fallback/sources/ missing-class Java fallback
- reports/                     manifest/obfuscation/summary reports

Important note:
Complete restoration of original developer names is impossible without an original mapping file.
This output is a best-effort readable project representation.
