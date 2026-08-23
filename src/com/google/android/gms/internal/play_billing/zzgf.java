package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzgf extends zzgi {
    private final int zzc;

    zzgf(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgk.zzh(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgi, com.google.android.gms.internal.play_billing.zzgk
    final byte zzb(int i) {
        return ((zzgi) this).zza[i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzgi
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgi, com.google.android.gms.internal.play_billing.zzgk
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgi, com.google.android.gms.internal.play_billing.zzgk
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return ((zzgi) this).zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
    }
}
