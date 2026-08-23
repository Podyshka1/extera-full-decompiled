package com.google.zxing.common;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class DecoderResult {
    private final List byteSegments;
    private final String ecLevel;
    private int numBits;
    private Object other;
    private final byte[] rawBytes;
    private final int structuredAppendParity;
    private final int structuredAppendSequenceNumber;
    private final String text;

    public DecoderResult(byte[] bArr, String str, List list, String str2, int i, int i2) {
        this.rawBytes = bArr;
        this.numBits = bArr == null ? 0 : bArr.length * 8;
        this.text = str;
        this.byteSegments = list;
        this.ecLevel = str2;
        this.structuredAppendParity = i2;
        this.structuredAppendSequenceNumber = i;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    public String getText() {
        return this.text;
    }

    public List getByteSegments() {
        return this.byteSegments;
    }

    public String getECLevel() {
        return this.ecLevel;
    }

    public Object getOther() {
        return this.other;
    }

    public void setOther(Object obj) {
        this.other = obj;
    }

    public boolean hasStructuredAppend() {
        return this.structuredAppendParity >= 0 && this.structuredAppendSequenceNumber >= 0;
    }

    public int getStructuredAppendParity() {
        return this.structuredAppendParity;
    }

    public int getStructuredAppendSequenceNumber() {
        return this.structuredAppendSequenceNumber;
    }
}
