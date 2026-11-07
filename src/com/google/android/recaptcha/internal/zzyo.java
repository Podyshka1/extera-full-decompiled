package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyo extends zzaax {
    private final zzyh zza;
    private final zzady zzb;
    private final zzady zzc;
    private final Integer zzd;

    private zzyo(zzyh zzyhVar, zzady zzadyVar, zzady zzadyVar2, Integer num) {
        this.zza = zzyhVar;
        this.zzb = zzadyVar;
        this.zzc = zzadyVar2;
        this.zzd = num;
    }

    public static zzyo zzc(zzyg zzygVar, zzady zzadyVar, Integer num) throws GeneralSecurityException {
        zzady zzadyVarZza;
        zzyh zzyhVarZza = zzyh.zza(zzygVar);
        zzyg zzygVar2 = zzyg.zzd;
        if (!zzygVar.equals(zzygVar2) && num == null) {
            String string = zzygVar.toString();
            StringBuilder sb = new StringBuilder(string.length() + 62);
            sb.append("For given Variant ");
            sb.append(string);
            sb.append(" the value of idRequirement must be non-null");
            throw new GeneralSecurityException(sb.toString());
        }
        if (zzygVar == zzygVar2 && num != null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("For given Variant NO_PREFIX the value of idRequirement must be null");
            return null;
        }
        if (zzadyVar.zzd() != 32) {
            int iZzd = zzadyVar.zzd();
            StringBuilder sb2 = new StringBuilder(String.valueOf(iZzd).length() + 65);
            sb2.append("Ed25519 key must be constructed with key of length 32 bytes, not ");
            sb2.append(iZzd);
            throw new GeneralSecurityException(sb2.toString());
        }
        if (zzyhVarZza.zzb() == zzygVar2) {
            zzadyVarZza = zzvc.zza;
        } else if (zzyhVarZza.zzb() == zzyg.zzb || zzyhVarZza.zzb() == zzyg.zzc) {
            zzadyVarZza = zzvc.zza(num.intValue());
        } else {
            if (zzyhVarZza.zzb() != zzyg.zza) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Unknown Variant: ".concat(zzyhVarZza.zzb().toString()));
                return null;
            }
            zzadyVarZza = zzvc.zzb(num.intValue());
        }
        return new zzyo(zzyhVarZza, zzadyVar, zzadyVarZza, num);
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final /* synthetic */ zzsl zza() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final Integer zzb() {
        return this.zzd;
    }

    public final zzady zzd() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzaax
    public final zzady zze() {
        return this.zzc;
    }

    public final zzyh zzf() {
        return this.zza;
    }
}
