package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzc implements Callable {
    final /* synthetic */ SharedPreferences zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Long zzc;

    zzc(SharedPreferences sharedPreferences, String str, Long l) {
        this.zza = sharedPreferences;
        this.zzb = str;
        this.zzc = l;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        return Long.valueOf(this.zza.getLong(this.zzb, this.zzc.longValue()));
    }
}
