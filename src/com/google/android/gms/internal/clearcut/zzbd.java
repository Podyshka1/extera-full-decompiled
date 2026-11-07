package com.google.android.gms.internal.clearcut;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zzbd implements zzbf {
    private zzbd() {
    }

    public /* synthetic */ zzbd(zzbc zzbcVar) {
        this();
    }

    @Override // com.google.android.gms.internal.clearcut.zzbf
    public final byte[] zzc(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }
}
