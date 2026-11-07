package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzya {
    private zzxx zza = null;
    private ECPoint zzb = null;
    private Integer zzc = null;

    public /* synthetic */ zzya(byte[] bArr) {
    }

    public final zzya zza(zzxx zzxxVar) {
        this.zza = zzxxVar;
        return this;
    }

    public final zzya zzb(ECPoint eCPoint) {
        this.zzb = eCPoint;
        return this;
    }

    public final zzya zzc(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzyb zzd() throws GeneralSecurityException {
        zzady zzadyVarZza;
        zzxx zzxxVar = this.zza;
        if (zzxxVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without parameters");
            return null;
        }
        ECPoint eCPoint = this.zzb;
        if (eCPoint == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without public point");
            return null;
        }
        zztt.zza(eCPoint, zzxxVar.zzc().zza().getCurve());
        if (this.zza.zzf() && this.zzc == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!this.zza.zzf() && this.zzc != null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        if (this.zza.zze() == zzxw.zzd) {
            zzadyVarZza = zzvc.zza;
        } else if (this.zza.zze() == zzxw.zzc || this.zza.zze() == zzxw.zzb) {
            zzadyVarZza = zzvc.zza(this.zzc.intValue());
        } else {
            if (this.zza.zze() != zzxw.zza) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Unknown EcdsaParameters.Variant: ".concat(this.zza.zze().toString()));
                return null;
            }
            zzadyVarZza = zzvc.zzb(this.zzc.intValue());
        }
        return new zzyb(this.zza, this.zzb, zzadyVarZza, this.zzc, null);
    }
}
