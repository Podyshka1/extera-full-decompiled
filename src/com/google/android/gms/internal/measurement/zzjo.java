package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzjo extends ContentObserver {
    final /* synthetic */ zzjr zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzjo(zzjr zzjrVar, Handler handler) {
        super(null);
        Objects.requireNonNull(zzjrVar);
        this.zza = zzjrVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zza.zzc();
    }
}
