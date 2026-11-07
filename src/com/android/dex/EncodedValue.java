package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.ByteArrayByteInput;
import com.android.dex.util.ByteInput;
import kotlin.UByte;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodedValue implements Comparable<EncodedValue> {
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
        int length;
        int length2;
        int iMin = Math.min(this.data.length, encodedValue.data.length);
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i < iMin) {
                byte b2 = bArr[i];
                byte b3 = encodedValue.data[i];
                if (b2 != b3) {
                    length = b2 & UByte.MAX_VALUE;
                    length2 = b3 & UByte.MAX_VALUE;
                    break;
                }
                i++;
            } else {
                length = bArr.length;
                length2 = encodedValue.data.length;
                break;
            }
        }
        return length - length2;
    }

    public String toString() {
        return Integer.toHexString(this.data[0] & UByte.MAX_VALUE) + "...(" + this.data.length + ")";
    }
}
