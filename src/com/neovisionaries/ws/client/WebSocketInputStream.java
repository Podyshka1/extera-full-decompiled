package com.neovisionaries.ws.client;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
class WebSocketInputStream extends FilterInputStream implements InputStreamRetargetInterface {
    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    public WebSocketInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public String readLine() {
        return Misc.readLine(this, "UTF-8");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public WebSocketFrame readFrame() throws WebSocketException, IOException {
        int i;
        byte b2;
        byte[] bArr;
        byte[] bArr2 = new byte[8];
        try {
            readBytes(bArr2, 2);
            byte b3 = bArr2[0];
            boolean z = (b3 & ByteCompanionObject.MIN_VALUE) != 0;
            boolean z2 = (b3 & 64) != 0;
            boolean z3 = (b3 & 32) != 0;
            boolean z4 = (b3 & 16) != 0;
            int i2 = b3 & 15;
            byte b4 = bArr2[1];
            boolean z5 = (b4 & ByteCompanionObject.MIN_VALUE) != 0;
            long j = b4 & ByteCompanionObject.MAX_VALUE;
            if (j != 126) {
                if (j == 127) {
                    readBytes(bArr2, 8);
                    byte b5 = bArr2[0];
                    if ((b5 & ByteCompanionObject.MIN_VALUE) != 0) {
                        throw new WebSocketException(WebSocketError.INVALID_PAYLOAD_LENGTH, "The payload length of a frame is invalid.");
                    }
                    i = ((bArr2[6] & UByte.MAX_VALUE) << 8) | ((bArr2[2] & UByte.MAX_VALUE) << 40) | ((b5 & UByte.MAX_VALUE) << 56) | ((bArr2[1] & UByte.MAX_VALUE) << 48) | ((bArr2[3] & UByte.MAX_VALUE) << 32) | ((bArr2[4] & UByte.MAX_VALUE) << 24) | ((bArr2[5] & UByte.MAX_VALUE) << 16);
                    b2 = bArr2[7];
                }
                if (z5) {
                    bArr = null;
                } else {
                    bArr = new byte[4];
                    readBytes(bArr, 4);
                }
                if (2147483647L >= j) {
                    skipQuietly(j);
                    throw new WebSocketException(WebSocketError.TOO_LONG_PAYLOAD, "The payload length of a frame exceeds the maximum array size in Java.");
                }
                return new WebSocketFrame().setFin(z).setRsv1(z2).setRsv2(z3).setRsv3(z4).setOpcode(i2).setMask(z5).setPayload(readPayload(j, z5, bArr));
            }
            readBytes(bArr2, 2);
            i = (bArr2[0] & UByte.MAX_VALUE) << 8;
            b2 = bArr2[1];
            j = i | (b2 & UByte.MAX_VALUE);
            if (z5) {
            }
            if (2147483647L >= j) {
            }
        } catch (InsufficientDataException e) {
            if (e.getReadByteCount() == 0) {
                throw new NoMoreFrameException();
            }
            throw e;
        }
    }

    public void readBytes(byte[] bArr, int i) throws IOException, InsufficientDataException {
        int i2 = 0;
        while (i2 < i) {
            int i3 = read(bArr, i2, i - i2);
            if (i3 <= 0) {
                throw new InsufficientDataException(i, i2);
            }
            i2 += i3;
        }
    }

    private void skipQuietly(long j) {
        try {
            skip(j);
        } catch (IOException unused) {
        }
    }

    private byte[] readPayload(long j, boolean z, byte[] bArr) throws WebSocketException, IOException {
        if (j == 0) {
            return null;
        }
        int i = (int) j;
        try {
            byte[] bArr2 = new byte[i];
            readBytes(bArr2, i);
            if (z) {
                WebSocketFrame.mask(bArr, bArr2);
            }
            return bArr2;
        } catch (OutOfMemoryError e) {
            skipQuietly(j);
            throw new WebSocketException(WebSocketError.INSUFFICIENT_MEMORY_FOR_PAYLOAD, "OutOfMemoryError occurred during a trial to allocate a memory area for a frame's payload: " + e.getMessage(), e);
        }
    }
}
