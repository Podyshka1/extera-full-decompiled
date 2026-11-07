package com.neovisionaries.ws.client;

import java.util.Map;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
class PerMessageDeflateExtension extends PerMessageCompressionExtension {
    private static final byte[] COMPRESSION_TERMINATOR = {0, 0, -1, -1};
    private boolean mClientNoContextTakeover;
    private int mClientWindowSize;
    private ByteArray mIncomingSlidingWindow;
    private int mIncomingSlidingWindowBufferSize;
    private boolean mServerNoContextTakeover;
    private int mServerWindowSize;

    public PerMessageDeflateExtension(String str) {
        super(str);
        this.mServerWindowSize = 32768;
        this.mClientWindowSize = 32768;
    }

    @Override // com.neovisionaries.ws.client.WebSocketExtension
    public void validate() throws WebSocketException {
        for (Map.Entry<String, String> entry : getParameters().entrySet()) {
            validateParameter(entry.getKey(), entry.getValue());
        }
        this.mIncomingSlidingWindowBufferSize = this.mServerWindowSize + 1024;
    }

    private void validateParameter(String str, String str2) throws WebSocketException {
        if ("server_no_context_takeover".equals(str)) {
            this.mServerNoContextTakeover = true;
            return;
        }
        if ("client_no_context_takeover".equals(str)) {
            this.mClientNoContextTakeover = true;
            return;
        }
        if ("server_max_window_bits".equals(str)) {
            this.mServerWindowSize = computeWindowSize(str, str2);
        } else {
            if ("client_max_window_bits".equals(str)) {
                this.mClientWindowSize = computeWindowSize(str, str2);
                return;
            }
            throw new WebSocketException(WebSocketError.PERMESSAGE_DEFLATE_UNSUPPORTED_PARAMETER, "permessage-deflate extension contains an unsupported parameter: " + str);
        }
    }

    private int computeWindowSize(String str, String str2) throws WebSocketException {
        int iExtractMaxWindowBits = extractMaxWindowBits(str, str2);
        int i = 256;
        for (int i2 = 8; i2 < iExtractMaxWindowBits; i2++) {
            i *= 2;
        }
        return i;
    }

    private int extractMaxWindowBits(String str, String str2) throws WebSocketException {
        int maxWindowBits = parseMaxWindowBits(str2);
        if (maxWindowBits >= 0) {
            return maxWindowBits;
        }
        throw new WebSocketException(WebSocketError.PERMESSAGE_DEFLATE_INVALID_MAX_WINDOW_BITS, String.format("The value of %s parameter of permessage-deflate extension is invalid: %s", str, str2));
    }

    private int parseMaxWindowBits(String str) {
        int i;
        if (str == null) {
            return -1;
        }
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        if (i < 8 || 15 < i) {
            return -1;
        }
        return i;
    }

    @Override // com.neovisionaries.ws.client.PerMessageCompressionExtension
    public byte[] decompress(byte[] bArr) throws WebSocketException {
        int length = bArr.length;
        byte[] bArr2 = COMPRESSION_TERMINATOR;
        ByteArray byteArray = new ByteArray(length + bArr2.length);
        byteArray.put(bArr);
        byteArray.put(bArr2);
        if (this.mIncomingSlidingWindow == null) {
            this.mIncomingSlidingWindow = new ByteArray(this.mIncomingSlidingWindowBufferSize);
        }
        int length2 = this.mIncomingSlidingWindow.length();
        try {
            DeflateDecompressor.decompress(byteArray, this.mIncomingSlidingWindow);
            byte[] bytes = this.mIncomingSlidingWindow.toBytes(length2);
            this.mIncomingSlidingWindow.shrink(this.mIncomingSlidingWindowBufferSize);
            if (this.mServerNoContextTakeover) {
                this.mIncomingSlidingWindow.clear();
            }
            return bytes;
        } catch (Exception e) {
            throw new WebSocketException(WebSocketError.DECOMPRESSION_ERROR, String.format("Failed to decompress the message: %s", e.getMessage()), e);
        }
    }

    @Override // com.neovisionaries.ws.client.PerMessageCompressionExtension
    public byte[] compress(byte[] bArr) throws WebSocketException {
        if (!canCompress(bArr)) {
            return bArr;
        }
        try {
            return adjustCompressedData(DeflateCompressor.compress(bArr));
        } catch (Exception e) {
            throw new WebSocketException(WebSocketError.COMPRESSION_ERROR, String.format("Failed to compress the message: %s", e.getMessage()), e);
        }
    }

    private boolean canCompress(byte[] bArr) {
        int i = this.mClientWindowSize;
        return i == 32768 || bArr.length < i;
    }

    private static byte[] adjustCompressedData(byte[] bArr) {
        ByteArray byteArray = new ByteArray(bArr.length + 1);
        byteArray.put(bArr);
        int[] iArr = new int[1];
        boolean[] zArr = new boolean[1];
        while (skipBlock(byteArray, iArr, zArr)) {
        }
        if (zArr[0]) {
            return byteArray.toBytes(0, ((iArr[0] - 1) / 8) - 3);
        }
        appendEmptyBlock(byteArray, iArr);
        return byteArray.toBytes(0, ((iArr[0] - 1) / 8) + 1);
    }

    private static void appendEmptyBlock(ByteArray byteArray, int[] iArr) {
        int i = iArr[0] % 8;
        if (i == 0 || i == 6 || i == 7) {
            byteArray.put(0);
        }
        iArr[0] = iArr[0] + 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean skipBlock(ByteArray byteArray, int[] iArr, boolean[] zArr) throws FormatException {
        boolean z;
        boolean bit = byteArray.readBit(iArr);
        if (bit) {
            byteArray.clearBit(iArr[0] - 1);
        }
        int bits = byteArray.readBits(iArr, 2);
        if (bits == 0) {
            if (skipPlainBlock(byteArray, iArr) == 0) {
                z = true;
            }
            if (byteArray.length() <= iArr[0] / 8) {
                bit = true;
            }
            if (bit && z) {
                zArr[0] = true;
            }
            return !bit;
        }
        if (bits == 1) {
            skipFixedBlock(byteArray, iArr);
        } else if (bits == 2) {
            skipDynamicBlock(byteArray, iArr);
        } else {
            throw new FormatException(String.format("[%s] Bad compression type '11' at the bit index '%d'.", PerMessageDeflateExtension.class.getSimpleName(), Integer.valueOf(iArr[0])));
        }
        z = false;
        if (byteArray.length() <= iArr[0] / 8) {
        }
        if (bit) {
            zArr[0] = true;
        }
        return !bit;
    }

    private static int skipPlainBlock(ByteArray byteArray, int[] iArr) {
        int i = ((iArr[0] + 7) & (-8)) / 8;
        int i2 = (byteArray.get(i) & UByte.MAX_VALUE) + ((byteArray.get(i + 1) & UByte.MAX_VALUE) * 256);
        iArr[0] = (i + 4 + i2) * 8;
        return i2;
    }

    private static void skipFixedBlock(ByteArray byteArray, int[] iArr) throws FormatException {
        skipData(byteArray, iArr, FixedLiteralLengthHuffman.getInstance(), FixedDistanceHuffman.getInstance());
    }

    private static void skipDynamicBlock(ByteArray byteArray, int[] iArr) throws FormatException {
        Huffman[] huffmanArr = new Huffman[2];
        DeflateUtil.readDynamicTables(byteArray, iArr, huffmanArr);
        skipData(byteArray, iArr, huffmanArr[0], huffmanArr[1]);
    }

    private static void skipData(ByteArray byteArray, int[] iArr, Huffman huffman, Huffman huffman2) throws FormatException {
        while (true) {
            int sym = huffman.readSym(byteArray, iArr);
            if (sym == 256) {
                return;
            }
            if (sym < 0 || sym > 255) {
                DeflateUtil.readLength(byteArray, iArr, sym);
                DeflateUtil.readDistance(byteArray, iArr, huffman2);
            }
        }
    }
}
