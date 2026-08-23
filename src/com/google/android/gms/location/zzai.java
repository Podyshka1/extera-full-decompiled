package com.google.android.gms.location;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzai {
    public static String zza(int i) {
        if (i == 0) {
            return "THROTTLE_BACKGROUND";
        }
        if (i == 1) {
            return "THROTTLE_ALWAYS";
        }
        if (i == 2) {
            return "THROTTLE_NEVER";
        }
        throw new IllegalArgumentException();
    }
}
