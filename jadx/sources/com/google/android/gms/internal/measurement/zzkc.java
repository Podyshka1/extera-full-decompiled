package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
final class zzkc extends zzkm {
    zzkc(zzkg zzkgVar, String str, Long l, boolean z) {
        super(zzkgVar, str, l, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkm
    final /* synthetic */ Object zza(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String str = this.zzb;
        String string = obj.toString();
        StringBuilder sb = new StringBuilder(str.length() + 25 + string.length());
        sb.append("Invalid long value for ");
        sb.append(str);
        sb.append(": ");
        sb.append(string);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
