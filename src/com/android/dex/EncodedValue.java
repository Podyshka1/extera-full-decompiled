package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.ByteArrayByteInput;
import com.android.dex.util.ByteInput;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodedValue implements Comparable {
    private final byte[] data;

    public EncodedValue(byte[] bArr) {
        this.data = bArr;
    }

    public ByteInput asByteInput() {
        return new ByteArrayByteInput(this.data);
    }

    public void writeTo(Dex.Section section) {
        section.write(this.data);
    }

    @Override // java.lang.Comparable
    public int compareTo(EncodedValue encodedValue) {
        int iMin = Math.min(this.data.length, encodedValue.data.length);
        for (int i = 0; i < iMin; i++) {
            byte b = this.data[i];
            byte b2 = encodedValue.data[i];
            if (b != b2) {
                return (b & 255) - (b2 & 255);
            }
        }
        return this.data.length - encodedValue.data.length;
    }

    public String toString() {
        return Integer.toHexString(this.data[0] & 255) + "...(" + this.data.length + ")";
    }
}
