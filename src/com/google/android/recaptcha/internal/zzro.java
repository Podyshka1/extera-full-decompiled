package com.google.android.recaptcha.internal;

import java.security.MessageDigest;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class zzro extends zzqw {
    private final MessageDigest zza;
    private final int zzb;
    private boolean zzc;

    public /* synthetic */ zzro(MessageDigest messageDigest, int i, byte[] bArr) {
        this.zza = messageDigest;
        this.zzb = i;
    }

    private final void zze() {
        zzoq.zzc(!this.zzc, "Cannot re-use a Hasher after calling hash() on it");
    }

    @Override // com.google.android.recaptcha.internal.zzqw
    public final void zza(byte[] bArr, int i, int i2) {
        zze();
        this.zza.update(bArr, 0, i2);
    }

    @Override // com.google.android.recaptcha.internal.zzrg
    public final zzre zzf() {
        zze();
        this.zzc = true;
        int i = this.zzb;
        MessageDigest messageDigest = this.zza;
        if (i == messageDigest.getDigestLength()) {
            byte[] bArrDigest = messageDigest.digest();
            int i2 = zzre.$r8$clinit;
            return new zzrc(bArrDigest);
        }
        byte[] bArrCopyOf = Arrays.copyOf(messageDigest.digest(), i);
        int i3 = zzre.$r8$clinit;
        return new zzrc(bArrCopyOf);
    }
}
