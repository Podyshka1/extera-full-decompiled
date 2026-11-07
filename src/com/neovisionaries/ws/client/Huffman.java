package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class Huffman {
    private final int mMaxCodeLen;
    private final int[] mMaxCodeValsFromCodeLen;
    private final int mMinCodeLen;
    private final int[] mSymsFromCodeVal;

    public Huffman(int[] iArr) {
        this.mMinCodeLen = Math.max(Misc.min(iArr), 1);
        int iMax = Misc.max(iArr);
        this.mMaxCodeLen = iMax;
        Object[] objArr = new Object[2];
        this.mMaxCodeValsFromCodeLen = createMaxCodeValsFromCodeLen(createCountsFromCodeLen(iArr, iMax), iMax, objArr);
        this.mSymsFromCodeVal = createSymsFromCodeVal(iArr, (int[]) objArr[0], ((Integer) objArr[1]).intValue());
    }

    private static int[] createIntArray(int i, int i2) {
        int[] iArr = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            iArr[i3] = i2;
        }
        return iArr;
    }

    private static int[] createCountsFromCodeLen(int[] iArr, int i) {
        int[] iArr2 = new int[i + 1];
        for (int i2 : iArr) {
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }

    private static int[] createMaxCodeValsFromCodeLen(int[] iArr, int i, Object[] objArr) {
        int i2 = i + 1;
        int[] iArrCreateIntArray = createIntArray(i2, -1);
        iArr[0] = 0;
        int[] iArr2 = new int[i2];
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 1; i5 < iArr.length; i5++) {
            i4 = (i4 + iArr[i5 - 1]) << 1;
            iArr2[i5] = i4;
            i3 = (iArr[i5] + i4) - 1;
            iArrCreateIntArray[i5] = i3;
        }
        objArr[0] = iArr2;
        objArr[1] = Integer.valueOf(i3);
        return iArrCreateIntArray;
    }

    private static int[] createSymsFromCodeVal(int[] iArr, int[] iArr2, int i) {
        int[] iArr3 = new int[i + 1];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                int i4 = iArr2[i3];
                iArr2[i3] = i4 + 1;
                iArr3[i4] = i2;
            }
        }
        return iArr3;
    }

    public int readSym(ByteArray byteArray, int[] iArr) throws FormatException {
        int huffmanBits;
        for (int i = this.mMinCodeLen; i <= this.mMaxCodeLen; i++) {
            int i2 = this.mMaxCodeValsFromCodeLen[i];
            if (i2 >= 0 && i2 >= (huffmanBits = byteArray.getHuffmanBits(iArr[0], i))) {
                int i3 = this.mSymsFromCodeVal[huffmanBits];
                iArr[0] = iArr[0] + i;
                return i3;
            }
        }
        throw new FormatException(String.format("[%s] Bad code at the bit index '%d'.", getClass().getSimpleName(), Integer.valueOf(iArr[0])));
    }
}
