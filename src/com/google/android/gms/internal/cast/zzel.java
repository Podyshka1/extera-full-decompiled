package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.ApiMetadata;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzel extends zzfa {
    final /* synthetic */ zzet zza;

    public zzel(zzet zzetVar) {
        Objects.requireNonNull(zzetVar);
        this.zza = zzetVar;
    }

    @Override // com.google.android.gms.internal.cast.zzfb
    public final void zzb(int i, ApiMetadata apiMetadata) {
        zzet.zzb.m282d("onRemoteDisplayEnded", new Object[0]);
        this.zza.zza();
    }
}
