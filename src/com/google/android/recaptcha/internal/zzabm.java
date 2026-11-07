package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
public final class zzabm implements zzst {
    static final zztv zza;
    static final zztv zzb;
    static final zztv zzc;
    private static final byte[] zze = new byte[0];
    private static final byte[] zzf = {0};
    private final ECPublicKey zzg;
    private final String zzh;
    private final zzacz zzi;
    private final byte[] zzj;
    private final byte[] zzk;
    private final Provider zzl;

    static {
        zztu zztuVarZza = zztv.zza();
        zztuVarZza.zza(zzado.SHA256, zzxu.zza);
        zztuVarZza.zza(zzado.SHA384, zzxu.zzb);
        zztuVarZza.zza(zzado.SHA512, zzxu.zzc);
        zza = zztuVarZza.zzb();
        zztu zztuVarZza2 = zztv.zza();
        zztuVarZza2.zza(zzacz.IEEE_P1363, zzxv.zza);
        zztuVarZza2.zza(zzacz.DER, zzxv.zzb);
        zzb = zztuVarZza2.zzb();
        zztu zztuVarZza3 = zztv.zza();
        zztuVarZza3.zza(zzacy.NIST_P256, zzxt.zza);
        zztuVarZza3.zza(zzacy.NIST_P384, zzxt.zzb);
        zztuVarZza3.zza(zzacy.NIST_P521, zzxt.zzc);
        zzc = zztuVarZza3.zzb();
    }

    private zzabm(ECPublicKey eCPublicKey, zzado zzadoVar, zzacz zzaczVar, byte[] bArr, byte[] bArr2, Provider provider) throws GeneralSecurityException {
        if (!zzte.zza(2)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Can not use ECDSA in FIPS-mode, as BoringCrypto is not available.");
            throw null;
        }
        this.zzh = zzadw.zza(zzadoVar);
        this.zzg = eCPublicKey;
        this.zzi = zzaczVar;
        this.zzj = bArr;
        this.zzk = bArr2;
        this.zzl = provider;
    }

    public static zzst zzb(zzyb zzybVar, Provider provider) {
        return new zzabm((ECPublicKey) (provider != null ? KeyFactory.getInstance("EC", provider) : (KeyFactory) zzadf.zzc.zzb("EC")).generatePublic(new ECPublicKeySpec(zzybVar.zzd(), zzada.zzb((zzacy) zzc.zzb(zzybVar.zzf().zzc())))), (zzado) zza.zzb(zzybVar.zzf().zzd()), (zzacz) zzb.zzb(zzybVar.zzf().zzb()), zzybVar.zze().zzc(), zzybVar.zzf().zze().equals(zzxw.zzc) ? zzf : zze, provider);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cf A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        byte b2;
        int i6;
        byte b3;
        Signature signature;
        byte[] bArr3;
        if (this.zzi == zzacz.IEEE_P1363) {
            EllipticCurve curve = this.zzg.getParams().getCurve();
            int length = bArr.length;
            int iBitLength = (zztt.zzc(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
            if (length != iBitLength + iBitLength) {
                zzsj$$ExternalSyntheticBUOutline1.m480m("Invalid signature");
                return;
            }
            bArr = zzada.zza(bArr);
        }
        int length2 = bArr.length;
        if (length2 >= 8 && bArr[0] == 48) {
            int i7 = bArr[1] & UByte.MAX_VALUE;
            if (i7 == 129) {
                i7 = bArr[2] & UByte.MAX_VALUE;
                if (i7 >= 128) {
                    i = 2;
                    if (i7 == (length2 - 1) - i && bArr[i + 1] == 2 && (i5 = (i4 = (i3 = i + 3) + (i2 = bArr[i + 2] & UByte.MAX_VALUE)) + 1) < length2 && i2 != 0) {
                        b2 = bArr[i3];
                        if ((b2 & UByte.MAX_VALUE) < 128 && ((i2 <= 1 || b2 != 0 || (bArr[i + 4] & UByte.MAX_VALUE) >= 128) && bArr[i4] == 2)) {
                            i6 = bArr[i5] & UByte.MAX_VALUE;
                            if (i4 + 2 + i6 == length2 && i6 != 0) {
                                b3 = bArr[i + 5 + i2];
                                if ((b3 & UByte.MAX_VALUE) < 128 && (i6 <= 1 || b3 != 0 || (bArr[i + 6 + i2] & UByte.MAX_VALUE) >= 128)) {
                                    String str = this.zzh;
                                    Provider provider = this.zzl;
                                    signature = provider == null ? Signature.getInstance(str, provider) : (Signature) zzadf.zza.zzb(str);
                                    signature.initVerify(this.zzg);
                                    signature.update(bArr2);
                                    bArr3 = this.zzk;
                                    if (bArr3.length > 0) {
                                        signature.update(bArr3);
                                    }
                                    try {
                                        if (signature.verify(bArr)) {
                                            return;
                                        }
                                    } catch (RuntimeException unused) {
                                    }
                                    zzsj$$ExternalSyntheticBUOutline1.m480m("Invalid signature");
                                    return;
                                }
                            }
                        }
                    }
                }
            } else if (i7 != 128 && i7 <= 129) {
                i = 1;
                if (i7 == (length2 - 1) - i) {
                    b2 = bArr[i3];
                    if ((b2 & UByte.MAX_VALUE) < 128) {
                        i6 = bArr[i5] & UByte.MAX_VALUE;
                        if (i4 + 2 + i6 == length2) {
                            b3 = bArr[i + 5 + i2];
                            if ((b3 & UByte.MAX_VALUE) < 128) {
                                String str2 = this.zzh;
                                Provider provider2 = this.zzl;
                                if (provider2 == null) {
                                }
                                signature.initVerify(this.zzg);
                                signature.update(bArr2);
                                bArr3 = this.zzk;
                                if (bArr3.length > 0) {
                                }
                                if (signature.verify(bArr)) {
                                }
                                zzsj$$ExternalSyntheticBUOutline1.m480m("Invalid signature");
                                return;
                            }
                        }
                    }
                }
            }
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("Invalid signature");
    }

    @Override // com.google.android.recaptcha.internal.zzst
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzj;
        int length = bArr3.length;
        if (length == 0) {
            zzc(bArr, bArr2);
        } else if (zzwc.zzc(bArr3, bArr)) {
            zzc(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
        } else {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Invalid signature (output prefix mismatch)");
        }
    }
}
