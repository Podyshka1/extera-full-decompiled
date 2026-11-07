package com.google.android.recaptcha.internal;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzvc {
    public static final zzady zza = zzady.zza(new byte[0]);

    public static final zzady zza(int i) {
        return zzady.zza(ByteBuffer.allocate(5).put((byte) 0).putInt(i).array());
    }

    public static final zzady zzb(int i) {
        return zzady.zza(ByteBuffer.allocate(5).put((byte) 1).putInt(i).array());
    }
}
