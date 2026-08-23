package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zza implements Callable<Boolean> {
    final /* synthetic */ SharedPreferences zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Boolean zzc;

    public zza(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.zza = sharedPreferences;
        this.zzb = str;
        this.zzc = bool;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() {
        return Boolean.valueOf(this.zza.getBoolean(this.zzb, this.zzc.booleanValue()));
    }
}
