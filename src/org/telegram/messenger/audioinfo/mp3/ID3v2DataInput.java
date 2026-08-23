package org.telegram.messenger.audioinfo.mp3;

import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Buffer$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ID3v2DataInput {
    private final InputStream input;

    public ID3v2DataInput(InputStream inputStream) {
        this.input = inputStream;
    }

    public final void readFully(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int i4 = this.input.read(bArr, i + i3, i2 - i3);
            if (i4 <= 0) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return;
            }
            i3 += i4;
        }
    }

    public byte[] readFully(int i) throws IOException {
        byte[] bArr = new byte[i];
        readFully(bArr, 0, i);
        return bArr;
    }

    public void skipFully(long j) throws IOException {
        long j2 = 0;
        while (j2 < j) {
            long jSkip = this.input.skip(j - j2);
            if (jSkip <= 0) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return;
            }
            j2 += jSkip;
        }
    }

    public byte readByte() throws IOException {
        int i = this.input.read();
        if (i >= 0) {
            return (byte) i;
        }
        Buffer$$ExternalSyntheticBUOutline1.m834m();
        return (byte) 0;
    }

    public int readInt() {
        return (readByte() & UByte.MAX_VALUE) | ((readByte() & UByte.MAX_VALUE) << 24) | ((readByte() & UByte.MAX_VALUE) << 16) | ((readByte() & UByte.MAX_VALUE) << 8);
    }

    public int readSyncsafeInt() {
        return (readByte() & ByteCompanionObject.MAX_VALUE) | ((readByte() & ByteCompanionObject.MAX_VALUE) << 21) | ((readByte() & ByteCompanionObject.MAX_VALUE) << 14) | ((readByte() & ByteCompanionObject.MAX_VALUE) << 7);
    }
}
