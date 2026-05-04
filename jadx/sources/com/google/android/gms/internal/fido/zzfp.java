package com.google.android.gms.internal.fido;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzfp extends zzfr {
    private final ByteBuffer zza = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    zzfp() {
    }

    protected abstract void zzb(byte[] bArr, int i, int i2);

    @Override // com.google.android.gms.internal.fido.zzfv
    public final zzfv zza(byte[] bArr) {
        bArr.getClass();
        zzb(bArr, 0, bArr.length);
        return this;
    }
}
