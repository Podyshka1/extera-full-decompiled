package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxs {
    private zzxv zza = null;
    private zzxt zzb = null;
    private zzxu zzc = null;
    private zzxw zzd = zzxw.zzd;

    public /* synthetic */ zzxs(byte[] bArr) {
    }

    public final zzxs zza(zzxv zzxvVar) {
        this.zza = zzxvVar;
        return this;
    }

    public final zzxs zzb(zzxt zzxtVar) {
        this.zzb = zzxtVar;
        return this;
    }

    public final zzxs zzc(zzxu zzxuVar) {
        this.zzc = zzxuVar;
        return this;
    }

    public final zzxs zzd(zzxw zzxwVar) {
        this.zzd = zzxwVar;
        return this;
    }

    public final zzxx zze() throws GeneralSecurityException {
        zzxv zzxvVar = this.zza;
        if (zzxvVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("signature encoding is not set");
            return null;
        }
        zzxt zzxtVar = this.zzb;
        if (zzxtVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("EC curve type is not set");
            return null;
        }
        zzxu zzxuVar = this.zzc;
        if (zzxuVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("hash type is not set");
            return null;
        }
        zzxw zzxwVar = this.zzd;
        if (zzxwVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("variant is not set");
            return null;
        }
        if (zzxtVar == zzxt.zza && zzxuVar != zzxu.zza) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("NIST_P256 requires SHA256");
            return null;
        }
        if (zzxtVar == zzxt.zzb && zzxuVar != zzxu.zzb && zzxuVar != zzxu.zzc) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("NIST_P384 requires SHA384 or SHA512");
            return null;
        }
        if (zzxtVar != zzxt.zzc || zzxuVar == zzxu.zzc) {
            return new zzxx(zzxvVar, zzxtVar, zzxuVar, zzxwVar, null);
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("NIST_P521 requires SHA512");
        return null;
    }
}
