package com.google.android.recaptcha.internal;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzaw implements Function1 {
    static final /* synthetic */ zzaw zza = new zzaw();

    private /* synthetic */ zzaw() {
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ Object invoke(Object obj) {
        zzaju zzajuVar = (zzaju) obj;
        String strZza = zzau.zza(zzajuVar);
        String str = "REAL";
        switch (zzajuVar.ordinal()) {
            case 1:
                str = "INTEGER PRIMARY KEY AUTOINCREMENT";
                break;
            case 2:
                str = "BLOB";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "INTEGER";
                break;
            case 9:
            case 10:
            case 15:
            case 16:
                break;
            default:
                str = "COLUMN_UNSPECIFIED";
                break;
        }
        StringBuilder sb = new StringBuilder(strZza.length() + 1 + str.length());
        sb.append(strZza);
        sb.append(" ");
        sb.append(str);
        return sb.toString();
    }
}
