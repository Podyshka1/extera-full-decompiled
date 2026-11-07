package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxy {
    private zzyb zza = null;
    private zzadz zzb = null;

    public /* synthetic */ zzxy(byte[] bArr) {
    }

    public final zzxy zza(zzyb zzybVar) {
        this.zza = zzybVar;
        return this;
    }

    public final zzxy zzb(zzadz zzadzVar) {
        this.zzb = zzadzVar;
        return this;
    }

    public final zzxz zzc() throws GeneralSecurityException {
        zzyb zzybVar = this.zza;
        byte[] bArr = null;
        if (zzybVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without a ecdsa public key");
            return null;
        }
        zzadz zzadzVar = this.zzb;
        if (zzadzVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without a private value");
            return null;
        }
        BigInteger bigIntegerZzb = zzadzVar.zzb(zzsd.zza());
        ECPoint eCPointZzd = zzybVar.zzd();
        zzxt zzxtVarZzc = zzybVar.zzf().zzc();
        BigInteger order = zzxtVarZzc.zza().getOrder();
        if (bigIntegerZzb.signum() <= 0 || bigIntegerZzb.compareTo(order) >= 0) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Invalid private value");
            return null;
        }
        if (zztt.zzd(bigIntegerZzb, zzxtVarZzc.zza()).equals(eCPointZzd)) {
            return new zzxz(this.zza, this.zzb, bArr);
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("Invalid private value");
        return null;
    }
}
