package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzb implements Callable {
    final /* synthetic */ SharedPreferences zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Integer zzc;

    zzb(SharedPreferences sharedPreferences, String str, Integer num) {
        this.zza = sharedPreferences;
        this.zzb = str;
        this.zzc = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        return Integer.valueOf(this.zza.getInt(this.zzb, this.zzc.intValue()));
    }
}
