package com.google.android.recaptcha.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzqz extends zzqy {
    ByteBuffer zza;
    final /* synthetic */ zzra zzb;

    public zzqz(zzra zzraVar, int i) {
        Objects.requireNonNull(zzraVar);
        this.zzb = zzraVar;
        this.zza = ByteBuffer.allocate(32).order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // com.google.android.recaptcha.internal.zzqy
    public final zzrg zzc(byte[] bArr, int i, int i2) {
        if (this.zza.remaining() < i2) {
            int iCapacity = this.zza.capacity();
            ByteBuffer byteBufferOrder = ByteBuffer.allocate(Math.max(iCapacity + iCapacity, this.zza.position() + i2)).order(ByteOrder.LITTLE_ENDIAN);
            this.zza.flip();
            byteBufferOrder.put(this.zza);
            this.zza = byteBufferOrder;
        }
        this.zza.put(bArr, 0, i2);
        return this;
    }

    @Override // com.google.android.recaptcha.internal.zzrg
    public final zzre zzf() {
        return this.zzb.zzb(this.zza.array(), 0, this.zza.position());
    }
}
