package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
enum zzrj implements zzrk {
    INSTANCE;

    @Override // com.google.android.recaptcha.internal.zzrk
    public final /* synthetic */ long zza(byte[] bArr, int i) {
        if (ordinal() != 0) {
            throw null;
        }
        byte b2 = bArr[i + 7];
        return ((((long) bArr[i + 6]) & 255) << 48) | ((b2 & 255) << 56) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255);
    }
}
