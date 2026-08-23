package com.google.common.hash;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractHasher implements Hasher {
    public abstract Hasher putBytes(byte[] bArr, int i, int i2);

    @Override // com.google.common.hash.Hasher
    public Hasher putBytes(byte[] bArr) {
        return putBytes(bArr, 0, bArr.length);
    }
}
