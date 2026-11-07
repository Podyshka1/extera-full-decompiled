package com.google.android.recaptcha.internal;

import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzcm {
    public static final zzhg zza(Exception exc, zzhg zzhgVar) {
        return exc instanceof TimeoutCancellationException ? new zzhg(zzhf.zzb, zzhe.zzb, exc.getMessage(), null, 8, null) : exc instanceof zzhg ? (zzhg) exc : zzhgVar;
    }
}
