package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaah implements zzaai {
    private final String zza = _UrlKt.FRAGMENT_ENCODE_SET;
    private final int zzb = 2;

    @Override // com.google.android.gms.internal.measurement.zzaai
    public final zzzf zza(String str) {
        return new zzaar(this.zza, str, true, 2, true, true);
    }
}
