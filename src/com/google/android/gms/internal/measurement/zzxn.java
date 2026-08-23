package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
final class zzxn extends zzyq {
    private static final zzyf zza = new zzxl();
    private final AtomicLong zzb = new AtomicLong(-1);

    public static zzyq zza(zzzj zzzjVar, zzyd zzydVar, long j) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzzjVar.zzd(zzxx.zzd));
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void zzb() {
        AtomicLong atomicLong = this.zzb;
        atomicLong.set(Math.max(-atomicLong.get(), 0L));
    }
}
