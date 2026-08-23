package com.google.android.recaptcha.internal;

import com.google.android.gms.internal.fido.zzgr$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.fido.zzgr$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzgq extends zzgt {
    private final int zzc;

    public zzgq(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgw.zzk(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.recaptcha.internal.zzgt, com.google.android.recaptcha.internal.zzgw
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.recaptcha.internal.zzgt
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.recaptcha.internal.zzgt, com.google.android.recaptcha.internal.zzgw
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzgt, com.google.android.recaptcha.internal.zzgw
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, 0, bArr, 0, i3);
    }

    @Override // com.google.android.recaptcha.internal.zzgt, com.google.android.recaptcha.internal.zzgw
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[i];
        }
        if (i < 0) {
            zzgr$$ExternalSyntheticBUOutline0.m315m(i);
            return (byte) 0;
        }
        zzgr$$ExternalSyntheticBUOutline1.m316m(i, i2);
        return (byte) 0;
    }
}
