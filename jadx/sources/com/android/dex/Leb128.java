package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.dex.util.ByteOutput;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Leb128 {
    public static int unsignedLeb128Size(int i) {
        int i2 = i >> 7;
        int i3 = 0;
        while (i2 != 0) {
            i2 >>= 7;
            i3++;
        }
        return i3 + 1;
    }

    public static int readSignedLeb128(ByteInput byteInput) {
        int i;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        do {
            byte b = byteInput.readByte();
            i2 |= (b & 127) << (i4 * 7);
            i3 <<= 7;
            i4++;
            i = b & 128;
            if (i != 128) {
                break;
            }
        } while (i4 < 5);
        if (i != 128) {
            return ((i3 >> 1) & i2) != 0 ? i2 | i3 : i2;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static int readUnsignedLeb128(ByteInput byteInput) {
        int i;
        int i2 = 0;
        int i3 = 0;
        do {
            byte b = byteInput.readByte();
            i2 |= (b & 127) << (i3 * 7);
            i3++;
            i = b & 128;
            if (i != 128) {
                break;
            }
        } while (i3 < 5);
        if (i != 128) {
            return i2;
        }
        throw new DexException("invalid LEB128 sequence");
    }

    public static void writeUnsignedLeb128(ByteOutput byteOutput, int i) {
        while (true) {
            int i2 = i;
            i >>>= 7;
            if (i != 0) {
                byteOutput.writeByte((byte) ((i2 & 127) | 128));
            } else {
                byteOutput.writeByte((byte) (i2 & 127));
                return;
            }
        }
    }

    public static void writeSignedLeb128(ByteOutput byteOutput, int i) {
        int i2 = i >> 7;
        int i3 = (Integer.MIN_VALUE & i) == 0 ? 0 : -1;
        int i4 = i;
        int i5 = i2;
        boolean z = true;
        while (z) {
            z = (i5 == i3 && (i5 & 1) == ((i4 >> 6) & 1)) ? false : true;
            byteOutput.writeByte((byte) ((i4 & 127) | (z ? 128 : 0)));
            i4 = i5;
            i5 >>= 7;
        }
    }
}
