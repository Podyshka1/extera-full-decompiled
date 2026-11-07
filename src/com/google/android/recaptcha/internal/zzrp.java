package com.google.android.recaptcha.internal;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzrp extends zzqx implements Serializable {
    private final MessageDigest zza;
    private final int zzb;
    private final boolean zzc;
    private final String zzd;

    public zzrp(String str, String str2) {
        MessageDigest messageDigestZze = zze("SHA-256");
        this.zza = messageDigestZze;
        this.zzb = messageDigestZze.getDigestLength();
        this.zzd = "Hashing.sha256()";
        this.zzc = zzd(messageDigestZze);
    }

    private static boolean zzd(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    private static MessageDigest zze(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            Buffer$$ExternalSyntheticBUOutline2.m965m(e);
            return null;
        }
    }

    public final String toString() {
        return this.zzd;
    }

    @Override // com.google.android.recaptcha.internal.zzrf
    public final zzrg zzc() {
        byte[] bArr = null;
        if (this.zzc) {
            try {
                return new zzro((MessageDigest) this.zza.clone(), this.zzb, bArr);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new zzro(zze(this.zza.getAlgorithm()), this.zzb, bArr);
    }
}
