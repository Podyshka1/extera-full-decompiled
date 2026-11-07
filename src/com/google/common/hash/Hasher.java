package com.google.common.hash;

/* JADX INFO: loaded from: classes5.dex */
public interface Hasher {
    HashCode hash();

    Hasher putByte(byte b2);

    Hasher putBytes(byte[] bArr);
}
