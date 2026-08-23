package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzow implements zzgw {
    final /* synthetic */ String zza;
    final /* synthetic */ List zzb;
    final /* synthetic */ zzpg zzc;

    zzow(zzpg zzpgVar, String str, List list) {
        this.zza = str;
        this.zzb = list;
        Objects.requireNonNull(zzpgVar);
        this.zzc = zzpgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgw
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map map) {
        this.zzc.zzV(true, i, th, bArr, this.zza, this.zzb);
    }
}
