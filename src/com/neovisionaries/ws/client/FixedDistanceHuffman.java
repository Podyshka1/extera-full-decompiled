package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class FixedDistanceHuffman extends Huffman {
    private static final FixedDistanceHuffman INSTANCE = new FixedDistanceHuffman();

    private FixedDistanceHuffman() {
        super(buildCodeLensFromSym());
    }

    private static int[] buildCodeLensFromSym() {
        int[] iArr = new int[32];
        for (int i = 0; i < 32; i++) {
            iArr[i] = 5;
        }
        return iArr;
    }

    public static FixedDistanceHuffman getInstance() {
        return INSTANCE;
    }
}
