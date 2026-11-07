package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzf {
    private static SharedPreferences zza;

    public static SharedPreferences zza(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            try {
                if (zza == null) {
                    zza = (SharedPreferences) com.google.android.gms.internal.flags.zzd.zza(new zze(context));
                }
                sharedPreferences = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }
}
