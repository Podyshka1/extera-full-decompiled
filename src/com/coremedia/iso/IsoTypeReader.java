package com.coremedia.iso;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import kotlin.UByte;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IsoTypeReader {
    public static int byte2int(byte b2) {
        return b2 < 0 ? b2 + 256 : b2;
    }

    public static long readUInt32(ByteBuffer byteBuffer) {
        long j = byteBuffer.getInt();
        return j < 0 ? j + 4294967296L : j;
    }

    public static int readUInt24(ByteBuffer byteBuffer) {
        return (readUInt16(byteBuffer) << 8) + byte2int(byteBuffer.get());
    }

    public static int readUInt16(ByteBuffer byteBuffer) {
        return (byte2int(byteBuffer.get()) << 8) + byte2int(byteBuffer.get());
    }

    public static int readUInt8(ByteBuffer byteBuffer) {
        return byte2int(byteBuffer.get());
    }

    public static String readString(ByteBuffer byteBuffer, int i) {
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return Utf8.convert(bArr);
    }

    public static long readUInt64(ByteBuffer byteBuffer) {
        long uInt32 = readUInt32(byteBuffer) << 32;
        if (uInt32 < 0) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
            return 0L;
        }
        return uInt32 + readUInt32(byteBuffer);
    }

    public static double readFixedPoint1616(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) (((((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & UByte.MAX_VALUE))) / 65536.0d;
    }

    public static double readFixedPoint0230(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((double) (((((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & UByte.MAX_VALUE))) / 1.073741824E9d;
    }

    public static float readFixedPoint88(ByteBuffer byteBuffer) {
        byteBuffer.get(new byte[2]);
        return ((short) (((short) ((r0[0] << 8) & 65280)) | (r0[1] & UByte.MAX_VALUE))) / 256.0f;
    }

    public static String readIso639(ByteBuffer byteBuffer) {
        int uInt16 = readUInt16(byteBuffer);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 3; i++) {
            sb.append((char) (((uInt16 >> ((2 - i) * 5)) & 31) + 96));
        }
        return sb.toString();
    }

    public static String read4cc(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
            return null;
        }
    }

    public static long readUInt48(ByteBuffer byteBuffer) {
        long uInt16 = ((long) readUInt16(byteBuffer)) << 32;
        if (uInt16 < 0) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
            return 0L;
        }
        return uInt16 + readUInt32(byteBuffer);
    }
}
