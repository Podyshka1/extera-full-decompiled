package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzd implements Callable<String> {
    final /* synthetic */ SharedPreferences zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;

    public zzd(SharedPreferences sharedPreferences, String str, String str2) {
        this.zza = sharedPreferences;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        return this.zza.getString(this.zzb, this.zzc);
    }
}
