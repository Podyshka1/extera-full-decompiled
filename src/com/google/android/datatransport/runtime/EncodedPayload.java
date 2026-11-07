package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import java.util.Arrays;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodedPayload {
    private final byte[] bytes;
    private final Encoding encoding;

    public EncodedPayload(Encoding encoding, byte[] bArr) {
        if (encoding == null) {
            f$$ExternalSyntheticBUOutline2.m213m("encoding is null");
            throw null;
        }
        if (bArr == null) {
            f$$ExternalSyntheticBUOutline2.m213m("bytes is null");
            throw null;
        }
        this.encoding = encoding;
        this.bytes = bArr;
    }

    public Encoding getEncoding() {
        return this.encoding;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncodedPayload)) {
            return false;
        }
        EncodedPayload encodedPayload = (EncodedPayload) obj;
        if (this.encoding.equals(encodedPayload.encoding)) {
            return Arrays.equals(this.bytes, encodedPayload.bytes);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.bytes) ^ ((this.encoding.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.encoding + ", bytes=[...]}";
    }
}
