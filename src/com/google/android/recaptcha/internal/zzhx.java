package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.SecureRandom;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhx {
    private final zzaer zza;
    private final byte[] zzb;

    public zzhx(zzaer zzaerVar) {
        this.zza = zzaerVar;
        int i = zzair.$r8$clinit;
        byte[] bArr = new byte[12];
        new SecureRandom().nextBytes(bArr);
        this.zzb = bArr;
    }

    public final byte[] zza() {
        return this.zzb;
    }

    public final byte[] zzb(byte[] bArr, int i) {
        byte[] byteArray = BigInteger.valueOf(i).toByteArray();
        return CollectionsKt.toByteArray(ArraysKt.drop(zzair.zzb(bArr, this.zza.zzy(), ArraysKt.plus(ArraysKt.copyOfRange(this.zzb, 0, 12 - byteArray.length), byteArray)), 12));
    }
}
