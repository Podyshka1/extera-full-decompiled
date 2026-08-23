package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.Cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzu implements Runnable {
    final /* synthetic */ zzw zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;

    zzu(zzv zzvVar, zzw zzwVar, String str, String str2) {
        this.zza = zzwVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Cast.MessageReceivedCallback messageReceivedCallback;
        synchronized (this.zza.zzk) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) this.zza.zzk.get(this.zzb);
        }
        if (messageReceivedCallback != null) {
            messageReceivedCallback.onMessageReceived(this.zza.zzi, this.zzb, this.zzc);
        } else {
            zzw.zze.m336d("Discarded message for unknown namespace '%s'", this.zzb);
        }
    }
}
