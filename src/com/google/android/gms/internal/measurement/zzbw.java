package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzbw extends zzcc {
    private String zza;
    private byte zzb;
    private int zzc;
    private int zzd;

    public final zzcc zza(String str) {
        this.zza = _UrlKt.FRAGMENT_ENCODE_SET;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final zzcc zzb(boolean z) {
        this.zzb = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final zzcc zzd(int i) {
        this.zzc = i;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final zzcc zze(int i) {
        this.zzd = 1;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final zzcd zzc() {
        if (this.zzb == 1 && this.zza != null && this.zzc != 0 && this.zzd != 0) {
            return new zzbx(this.zza, false, this.zzc, null, this.zzd, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" fileOwner");
        }
        if (this.zzb == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.zzc == 0) {
            sb.append(" fileChecks");
        }
        if (this.zzd == 0) {
            sb.append(" filePurpose");
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
