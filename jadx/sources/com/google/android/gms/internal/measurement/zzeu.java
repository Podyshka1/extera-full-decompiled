package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.common.internal.Preconditions;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzeu extends zzeq {
    final /* synthetic */ Activity zza;
    final /* synthetic */ zzfa zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeu(zzfa zzfaVar, Activity activity) {
        super(zzfaVar.zza, true);
        this.zza = activity;
        Objects.requireNonNull(zzfaVar);
        this.zzb = zzfaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeq
    final void zza() {
        ((zzcr) Preconditions.checkNotNull(this.zzb.zza.zzQ())).onActivityStartedByScionActivityInfo(zzdf.zza(this.zza), this.zzi);
    }
}
