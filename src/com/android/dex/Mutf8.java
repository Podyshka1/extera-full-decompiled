package com.android.dex;

import com.android.dex.util.ByteInput;
import com.android.p003dx.p006io.Opcodes;
import java.io.UTFDataFormatException;
import okhttp3.internal.p025ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Mutf8 {
    public static String decode(ByteInput byteInput, char[] cArr) throws UTFDataFormatException {
        int i;
        int i2 = 0;
        while (true) {
            char c = (char) (byteInput.readByte() & 255);
            if (c == 0) {
                return new String(cArr, 0, i2);
            }
            cArr[i2] = c;
            if (c < 128) {
                i2++;
            } else {
                if ((c & 224) == 192) {
                    byte b = byteInput.readByte();
                    if ((b & 192) != 128) {
                        throw new UTFDataFormatException("bad second byte");
                    }
                    i = i2 + 1;
                    cArr[i2] = (char) (((c & 31) << 6) | (b & 63));
                } else if ((c & 240) == 224) {
                    byte b2 = byteInput.readByte();
                    byte b3 = byteInput.readByte();
                    if ((b2 & 192) != 128 || (b3 & 192) != 128) {
                        break;
                    }
                    i = i2 + 1;
                    cArr[i2] = (char) (((c & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
                } else {
                    throw new UTFDataFormatException("bad byte");
                }
                i2 = i;
            }
        }
        throw new UTFDataFormatException("bad second or third byte");
    }

    private static long countBytes(String str, boolean z) throws UTFDataFormatException {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            j += (cCharAt == 0 || cCharAt > 127) ? cCharAt <= 2047 ? 2L : 3L : 1L;
            if (z && j > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                throw new UTFDataFormatException("String more than 65535 UTF bytes long");
            }
        }
        return j;
    }

    public static void encode(byte[] bArr, int i, String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != 0 && cCharAt <= 127) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else if (cCharAt <= 2047) {
                int i3 = i + 1;
                bArr[i] = (byte) (((cCharAt >> 6) & 31) | 192);
                i += 2;
                bArr[i3] = (byte) ((cCharAt & '?') | 128);
            } else {
                bArr[i] = (byte) (((cCharAt >> '\f') & 15) | Opcodes.SHL_INT_LIT8);
                int i4 = i + 2;
                bArr[i + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                i += 3;
                bArr[i4] = (byte) ((cCharAt & '?') | 128);
            }
        }
    }

    public static byte[] encode(String str) {
        byte[] bArr = new byte[(int) countBytes(str, true)];
        encode(bArr, 0, str);
        return bArr;
    }
}
