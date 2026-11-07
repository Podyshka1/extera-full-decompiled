package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzev extends zzfa {
    final /* synthetic */ zzfb zza;
    final /* synthetic */ zzew zzb;

    public zzev(zzew zzewVar, zzfb zzfbVar) {
        this.zza = zzfbVar;
        Objects.requireNonNull(zzewVar);
        this.zzb = zzewVar;
    }

    @Override // com.google.android.gms.internal.cast.zzfb
    public final void zzb(int i, ApiMetadata apiMetadata) {
        zzew.zze.m287d("onRemoteDisplayEnded", new Object[0]);
        zzfb zzfbVar = this.zza;
        if (zzfbVar != null) {
            zzfbVar.zzb(i, apiMetadata);
        }
        zzew zzewVar = this.zzb;
        if (zzewVar.zzs() != null) {
            zzewVar.zzs().onRemoteDisplayEnded(new Status(i));
        }
    }
}
