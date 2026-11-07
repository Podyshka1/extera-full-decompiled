package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.Cast;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzv implements Runnable {
    final /* synthetic */ zzx zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;

    public zzv(zzw zzwVar, zzx zzxVar, String str, String str2) {
        this.zza = zzxVar;
        this.zzb = str;
        this.zzc = str2;
        Objects.requireNonNull(zzwVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Cast.MessageReceivedCallback messageReceivedCallback;
        zzx zzxVar = this.zza;
        synchronized (zzxVar.zzR()) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) zzxVar.zzR().get(this.zzb);
        }
        if (messageReceivedCallback == null) {
            zzx.zzf.m311d("Discarded message for unknown namespace '%s'", this.zzb);
        } else {
            zzx zzxVar2 = this.zza;
            messageReceivedCallback.onMessageReceived(zzxVar2.zzP(), this.zzb, this.zzc);
        }
    }
}
