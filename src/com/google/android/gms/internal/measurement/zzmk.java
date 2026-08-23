package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmk extends RuntimeException {
    private final int zza;

    public zzmk(int i, String str, Throwable th) {
        String strValueOf;
        if (str != null) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 2 + str.length());
            sb.append(i);
            sb.append(": ");
            sb.append(str);
            strValueOf = sb.toString();
        } else {
            strValueOf = String.valueOf(i);
        }
        super(strValueOf, th);
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }
}
