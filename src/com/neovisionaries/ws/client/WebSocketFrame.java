package com.neovisionaries.ws.client;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.UByte;
import okhttp3.internal.ws.WebSocketProtocol;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketFrame {
    private boolean mFin;
    private boolean mMask;
    private int mOpcode;
    private byte[] mPayload;
    private boolean mRsv1;
    private boolean mRsv2;
    private boolean mRsv3;

    public boolean getFin() {
        return this.mFin;
    }

    public WebSocketFrame setFin(boolean z) {
        this.mFin = z;
        return this;
    }

    public boolean getRsv1() {
        return this.mRsv1;
    }

    public WebSocketFrame setRsv1(boolean z) {
        this.mRsv1 = z;
        return this;
    }

    public boolean getRsv2() {
        return this.mRsv2;
    }

    public WebSocketFrame setRsv2(boolean z) {
        this.mRsv2 = z;
        return this;
    }

    public boolean getRsv3() {
        return this.mRsv3;
    }

    public WebSocketFrame setRsv3(boolean z) {
        this.mRsv3 = z;
        return this;
    }

    public int getOpcode() {
        return this.mOpcode;
    }

    public WebSocketFrame setOpcode(int i) {
        this.mOpcode = i;
        return this;
    }

    public boolean isContinuationFrame() {
        return this.mOpcode == 0;
    }

    public boolean isTextFrame() {
        return this.mOpcode == 1;
    }

    public boolean isBinaryFrame() {
        return this.mOpcode == 2;
    }

    public boolean isCloseFrame() {
        return this.mOpcode == 8;
    }

    public boolean isPingFrame() {
        return this.mOpcode == 9;
    }

    public boolean isPongFrame() {
        return this.mOpcode == 10;
    }

    public boolean isControlFrame() {
        int i = this.mOpcode;
        return 8 <= i && i <= 15;
    }

    public boolean getMask() {
        return this.mMask;
    }

    public WebSocketFrame setMask(boolean z) {
        this.mMask = z;
        return this;
    }

    public int getPayloadLength() {
        byte[] bArr = this.mPayload;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public byte[] getPayload() {
        return this.mPayload;
    }

    public String getPayloadText() {
        byte[] bArr = this.mPayload;
        if (bArr == null) {
            return null;
        }
        return Misc.toStringUTF8(bArr);
    }

    public WebSocketFrame setPayload(byte[] bArr) {
        if (bArr != null && bArr.length == 0) {
            bArr = null;
        }
        this.mPayload = bArr;
        return this;
    }

    public WebSocketFrame setPayload(String str) {
        if (str == null || str.length() == 0) {
            return setPayload((byte[]) null);
        }
        return setPayload(Misc.getBytesUTF8(str));
    }

    public WebSocketFrame setCloseFramePayload(int i, String str) {
        byte[] bArr = {(byte) ((i >> 8) & 255), (byte) (i & 255)};
        if (str == null || str.length() == 0) {
            return setPayload(bArr);
        }
        byte[] bytesUTF8 = Misc.getBytesUTF8(str);
        byte[] bArr2 = new byte[bytesUTF8.length + 2];
        System.arraycopy(bArr, 0, bArr2, 0, 2);
        System.arraycopy(bytesUTF8, 0, bArr2, 2, bytesUTF8.length);
        return setPayload(bArr2);
    }

    public int getCloseCode() {
        byte[] bArr = this.mPayload;
        if (bArr == null || bArr.length < 2) {
            return WebSocketProtocol.CLOSE_NO_STATUS_CODE;
        }
        return (bArr[1] & UByte.MAX_VALUE) | ((bArr[0] & UByte.MAX_VALUE) << 8);
    }

    public String getCloseReason() {
        byte[] bArr = this.mPayload;
        if (bArr == null || bArr.length < 3) {
            return null;
        }
        return Misc.toStringUTF8(bArr, 2, bArr.length - 2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("WebSocketFrame(FIN=");
        boolean z = this.mFin;
        String str = MVEL.VERSION_SUB;
        sb.append(z ? "1" : MVEL.VERSION_SUB);
        sb.append(",RSV1=");
        sb.append(this.mRsv1 ? "1" : MVEL.VERSION_SUB);
        sb.append(",RSV2=");
        sb.append(this.mRsv2 ? "1" : MVEL.VERSION_SUB);
        sb.append(",RSV3=");
        if (this.mRsv3) {
            str = "1";
        }
        sb.append(str);
        sb.append(",Opcode=");
        sb.append(Misc.toOpcodeName(this.mOpcode));
        sb.append(",Length=");
        sb.append(getPayloadLength());
        int i = this.mOpcode;
        if (i == 1) {
            appendPayloadText(sb);
        } else if (i == 2) {
            appendPayloadBinary(sb);
        } else if (i == 8) {
            appendPayloadClose(sb);
        }
        sb.append(")");
        return sb.toString();
    }

    private boolean appendPayloadCommon(StringBuilder sb) {
        sb.append(",Payload=");
        if (this.mPayload == null) {
            sb.append("null");
            return true;
        }
        if (!this.mRsv1) {
            return false;
        }
        sb.append("compressed");
        return true;
    }

    private void appendPayloadText(StringBuilder sb) {
        if (appendPayloadCommon(sb)) {
            return;
        }
        sb.append("\"");
        sb.append(getPayloadText());
        sb.append("\"");
    }

    private void appendPayloadClose(StringBuilder sb) {
        sb.append(",CloseCode=");
        sb.append(getCloseCode());
        sb.append(",Reason=");
        String closeReason = getCloseReason();
        if (closeReason == null) {
            sb.append("null");
            return;
        }
        sb.append("\"");
        sb.append(closeReason);
        sb.append("\"");
    }

    private void appendPayloadBinary(StringBuilder sb) {
        byte[] bArr;
        if (appendPayloadCommon(sb)) {
            return;
        }
        int i = 0;
        while (true) {
            bArr = this.mPayload;
            if (i >= bArr.length) {
                break;
            }
            sb.append(String.format("%02X ", Integer.valueOf(bArr[i] & UByte.MAX_VALUE)));
            i++;
        }
        if (bArr.length != 0) {
            sb.setLength(sb.length() - 1);
        }
    }

    public static WebSocketFrame createContinuationFrame() {
        return new WebSocketFrame().setOpcode(0);
    }

    public static WebSocketFrame createContinuationFrame(byte[] bArr) {
        return createContinuationFrame().setPayload(bArr);
    }

    public static WebSocketFrame createTextFrame(String str) {
        return new WebSocketFrame().setFin(true).setOpcode(1).setPayload(str);
    }

    public static WebSocketFrame createCloseFrame() {
        return new WebSocketFrame().setFin(true).setOpcode(8);
    }

    public static WebSocketFrame createCloseFrame(int i, String str) {
        return createCloseFrame().setCloseFramePayload(i, str);
    }

    public static WebSocketFrame createPingFrame() {
        return new WebSocketFrame().setFin(true).setOpcode(9);
    }

    public static WebSocketFrame createPingFrame(byte[] bArr) {
        return createPingFrame().setPayload(bArr);
    }

    public static WebSocketFrame createPongFrame() {
        return new WebSocketFrame().setFin(true).setOpcode(10);
    }

    public static WebSocketFrame createPongFrame(byte[] bArr) {
        return createPongFrame().setPayload(bArr);
    }

    public static byte[] mask(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr.length >= 4 && bArr2 != null) {
            for (int i = 0; i < bArr2.length; i++) {
                bArr2[i] = (byte) (bArr2[i] ^ bArr[i % 4]);
            }
        }
        return bArr2;
    }

    public static WebSocketFrame compressFrame(WebSocketFrame webSocketFrame, PerMessageCompressionExtension perMessageCompressionExtension) {
        byte[] payload;
        if (perMessageCompressionExtension == null) {
            return webSocketFrame;
        }
        if ((webSocketFrame.isTextFrame() || webSocketFrame.isBinaryFrame()) && webSocketFrame.getFin() && !webSocketFrame.getRsv1() && (payload = webSocketFrame.getPayload()) != null && payload.length != 0) {
            byte[] bArrCompress = compress(payload, perMessageCompressionExtension);
            if (payload.length > bArrCompress.length) {
                webSocketFrame.setPayload(bArrCompress);
                webSocketFrame.setRsv1(true);
            }
        }
        return webSocketFrame;
    }

    private static byte[] compress(byte[] bArr, PerMessageCompressionExtension perMessageCompressionExtension) {
        try {
            return perMessageCompressionExtension.compress(bArr);
        } catch (WebSocketException unused) {
            return bArr;
        }
    }

    public static List<WebSocketFrame> splitIfNecessary(WebSocketFrame webSocketFrame, int i, PerMessageCompressionExtension perMessageCompressionExtension) {
        if (i == 0 || webSocketFrame.getPayloadLength() <= i) {
            return null;
        }
        if (webSocketFrame.isBinaryFrame() || webSocketFrame.isTextFrame()) {
            webSocketFrame = compressFrame(webSocketFrame, perMessageCompressionExtension);
            if (webSocketFrame.getPayloadLength() <= i) {
                return null;
            }
        } else if (!webSocketFrame.isContinuationFrame()) {
            return null;
        }
        return split(webSocketFrame, i);
    }

    private static List<WebSocketFrame> split(WebSocketFrame webSocketFrame, int i) {
        byte[] payload = webSocketFrame.getPayload();
        boolean fin = webSocketFrame.getFin();
        ArrayList arrayList = new ArrayList();
        webSocketFrame.setFin(false).setPayload(Arrays.copyOf(payload, i));
        arrayList.add(webSocketFrame);
        int i2 = i;
        while (i2 < payload.length) {
            int i3 = i2 + i;
            arrayList.add(createContinuationFrame(Arrays.copyOfRange(payload, i2, Math.min(i3, payload.length))));
            i2 = i3;
        }
        if (fin) {
            ((WebSocketFrame) arrayList.get(arrayList.size() - 1)).setFin(true);
        }
        return arrayList;
    }
}
