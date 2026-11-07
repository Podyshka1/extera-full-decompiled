package com.neovisionaries.ws.client;

import com.android.dx.io.Opcodes;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
class WebSocketOutputStream extends BufferedOutputStream {
    public WebSocketOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void write(String str) throws IOException {
        write(Misc.getBytesUTF8(str));
    }

    public void write(WebSocketFrame webSocketFrame) throws IOException {
        writeFrame0(webSocketFrame);
        writeFrame1(webSocketFrame);
        writeFrameExtendedPayloadLength(webSocketFrame);
        byte[] bArrNextBytes = Misc.nextBytes(4);
        write(bArrNextBytes);
        writeFramePayload(webSocketFrame, bArrNextBytes);
    }

    private void writeFrame0(WebSocketFrame webSocketFrame) throws IOException {
        write((webSocketFrame.getOpcode() & 15) | (webSocketFrame.getFin() ? 128 : 0) | (webSocketFrame.getRsv1() ? 64 : 0) | (webSocketFrame.getRsv2() ? 32 : 0) | (webSocketFrame.getRsv3() ? 16 : 0));
    }

    private void writeFrame1(WebSocketFrame webSocketFrame) throws IOException {
        int payloadLength = webSocketFrame.getPayloadLength();
        write(payloadLength <= 125 ? payloadLength | 128 : payloadLength <= 65535 ? Opcodes.CONST_METHOD_HANDLE : 255);
    }

    private void writeFrameExtendedPayloadLength(WebSocketFrame webSocketFrame) throws IOException {
        byte[] bArr;
        int payloadLength = webSocketFrame.getPayloadLength();
        if (payloadLength <= 125) {
            return;
        }
        if (payloadLength <= 65535) {
            bArr = new byte[]{(byte) ((payloadLength >> 8) & 255), (byte) (payloadLength & 255)};
        } else {
            bArr = new byte[8];
            for (int i = 7; i >= 0; i--) {
                bArr[i] = (byte) (payloadLength & 255);
                payloadLength >>>= 8;
            }
        }
        write(bArr);
    }

    private void writeFramePayload(WebSocketFrame webSocketFrame, byte[] bArr) throws IOException {
        byte[] payload = webSocketFrame.getPayload();
        if (payload == null) {
            return;
        }
        byte[] bArr2 = new byte[payload.length];
        for (int i = 0; i < payload.length; i++) {
            bArr2[i] = (byte) ((payload[i] ^ bArr[i % 4]) & 255);
        }
        write(bArr2);
    }
}
