package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyi extends zzaaw {
    private final zzyo zza;
    private final zzaea zzb;

    private zzyi(zzyo zzyoVar, zzaea zzaeaVar) {
        this.zza = zzyoVar;
        this.zzb = zzaeaVar;
    }

    public static zzyi zzc(zzyo zzyoVar, zzaea zzaeaVar) throws GeneralSecurityException {
        if (zzaeaVar.zzc() == 32) {
            if (Arrays.equals(zzyoVar.zzd().zzc(), zztp.zza(zztp.zzb(zzaeaVar.zzb(zzsd.zza()))))) {
                return new zzyi(zzyoVar, zzaeaVar);
            }
            zzsj$$ExternalSyntheticBUOutline1.m456m("Ed25519 keys mismatch");
            return null;
        }
        int iZzc = zzaeaVar.zzc();
        StringBuilder sb = new StringBuilder(String.valueOf(iZzc).length() + 65);
        sb.append("Ed25519 key must be constructed with key of length 32 bytes, not ");
        sb.append(iZzc);
        throw new GeneralSecurityException(sb.toString());
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final /* synthetic */ zzsl zza() {
        return this.zza.zzf();
    }

    public final zzyh zzd() {
        return this.zza.zzf();
    }

    public final zzyo zze() {
        return this.zza;
    }

    public final zzaea zzf() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzaaw
    public final /* synthetic */ zzaax zzg() {
        return this.zza;
    }
}
