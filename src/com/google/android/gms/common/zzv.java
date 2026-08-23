package com.google.android.gms.common;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzv {
    private String zza = null;
    private Boolean zzb = null;
    private Boolean zzc = null;

    public /* synthetic */ zzv(byte[] bArr) {
    }

    public final zzv zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzv zzb(boolean z) {
        this.zzb = Boolean.valueOf(z);
        return this;
    }

    public final zzv zzc(boolean z) {
        this.zzc = Boolean.valueOf(z);
        return this;
    }

    public final zzw zzd() {
        Boolean bool = this.zzb;
        if (bool == null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("allowTestKeys must be set");
            return null;
        }
        if (this.zzc != null) {
            return new zzw(this.zza, bool.booleanValue(), false, false, this.zzc.booleanValue(), false, null);
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("isGoogleOrPlatformOnly must be set");
        return null;
    }
}
