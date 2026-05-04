package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzso extends zzsr {
    private final int zzc;

    zzso(byte[] bArr, int i, int i2) {
        super(bArr);
        zzsu.zzj(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzsr, com.google.android.gms.internal.cast.zzsu
    final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.cast.zzsr
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.zzsr, com.google.android.gms.internal.cast.zzsu
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzsr, com.google.android.gms.internal.cast.zzsu
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
    }
}
