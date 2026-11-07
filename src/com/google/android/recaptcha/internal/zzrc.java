package com.google.android.recaptcha.internal;

import java.io.Serializable;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
final class zzrc extends zzre implements Serializable {
    final byte[] zza;

    @Override // com.google.android.recaptcha.internal.zzre
    public final int zza() {
        return this.zza.length * 8;
    }

    @Override // com.google.android.recaptcha.internal.zzre
    public final byte[] zzb() {
        return (byte[]) this.zza.clone();
    }

    @Override // com.google.android.recaptcha.internal.zzre
    public final int zzc() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        zzoq.zzd(length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", length);
        return ((bArr[3] & UByte.MAX_VALUE) << 24) | (bArr[0] & UByte.MAX_VALUE) | ((bArr[1] & UByte.MAX_VALUE) << 8) | ((bArr[2] & UByte.MAX_VALUE) << 16);
    }

    @Override // com.google.android.recaptcha.internal.zzre
    public final long zzd() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        zzoq.zzd(length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", length);
        long j = bArr[0] & UByte.MAX_VALUE;
        for (int i = 1; i < Math.min(bArr.length, 8); i++) {
            j |= (((long) bArr[i]) & 255) << (i * 8);
        }
        return j;
    }

    @Override // com.google.android.recaptcha.internal.zzre
    public final byte[] zze() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzre
    public final boolean zzf(zzre zzreVar) {
        int length = zzreVar.zze().length;
        byte[] bArr = this.zza;
        if (bArr.length != length) {
            return false;
        }
        boolean z = true;
        for (int i = 0; i < bArr.length; i++) {
            z &= bArr[i] == zzreVar.zze()[i];
        }
        return z;
    }

    public zzrc(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }
}
