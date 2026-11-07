package com.neovisionaries.ws.client;

import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
class ByteArray {
    private ByteBuffer mBuffer;
    private int mLength = 0;

    public ByteArray(int i) {
        this.mBuffer = ByteBuffer.allocate(i);
    }

    public int length() {
        return this.mLength;
    }

    public byte get(int i) {
        if (i < 0 || this.mLength <= i) {
            throw new IndexOutOfBoundsException(String.format("Bad index: index=%d, length=%d", Integer.valueOf(i), Integer.valueOf(this.mLength)));
        }
        return this.mBuffer.get(i);
    }

    private void expandBuffer(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        int iPosition = this.mBuffer.position();
        this.mBuffer.position(0);
        byteBufferAllocate.put(this.mBuffer);
        byteBufferAllocate.position(iPosition);
        this.mBuffer = byteBufferAllocate;
    }

    public void put(int i) {
        int iCapacity = this.mBuffer.capacity();
        int i2 = this.mLength;
        if (iCapacity < i2 + 1) {
            expandBuffer(i2 + 1024);
        }
        this.mBuffer.put((byte) i);
        this.mLength++;
    }

    public void put(byte[] bArr) {
        int iCapacity = this.mBuffer.capacity();
        int i = this.mLength;
        if (iCapacity < bArr.length + i) {
            expandBuffer(i + bArr.length + 1024);
        }
        this.mBuffer.put(bArr);
        this.mLength += bArr.length;
    }

    public void put(byte[] bArr, int i, int i2) {
        int iCapacity = this.mBuffer.capacity();
        int i3 = this.mLength;
        if (iCapacity < i3 + i2) {
            expandBuffer(i3 + i2 + 1024);
        }
        this.mBuffer.put(bArr, i, i2);
        this.mLength += i2;
    }

    public void put(ByteArray byteArray, int i, int i2) {
        put(byteArray.mBuffer.array(), i, i2);
    }

    public byte[] toBytes(int i) {
        return toBytes(i, length());
    }

    public byte[] toBytes(int i, int i2) {
        int i3 = i2 - i;
        if (i3 < 0 || i < 0 || this.mLength < i2) {
            FieldSet$$ExternalSyntheticBUOutline0.m505m("Bad range: beginIndex=%d, endIndex=%d, length=%d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(this.mLength)});
            return null;
        }
        byte[] bArr = new byte[i3];
        if (i3 != 0) {
            System.arraycopy(this.mBuffer.array(), i, bArr, 0, i3);
        }
        return bArr;
    }

    public void clear() {
        this.mBuffer.clear();
        this.mBuffer.position(0);
        this.mLength = 0;
    }

    public void shrink(int i) {
        if (this.mBuffer.capacity() <= i) {
            return;
        }
        int i2 = this.mLength;
        byte[] bytes = toBytes(i2 - i, i2);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bytes);
        this.mBuffer = byteBufferWrap;
        byteBufferWrap.position(bytes.length);
        this.mLength = bytes.length;
    }

    public boolean getBit(int i) {
        return (get(i / 8) & (1 << (i % 8))) != 0;
    }

    public int getBits(int i, int i2) {
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < i2) {
            if (getBit(i + i3)) {
                i5 += i4;
            }
            i3++;
            i4 *= 2;
        }
        return i5;
    }

    public int getHuffmanBits(int i, int i2) {
        int i3 = 1;
        int i4 = i2 - 1;
        int i5 = 0;
        while (i4 >= 0) {
            if (getBit(i + i4)) {
                i5 += i3;
            }
            i4--;
            i3 *= 2;
        }
        return i5;
    }

    public boolean readBit(int[] iArr) {
        boolean bit = getBit(iArr[0]);
        iArr[0] = iArr[0] + 1;
        return bit;
    }

    public int readBits(int[] iArr, int i) {
        int bits = getBits(iArr[0], i);
        iArr[0] = iArr[0] + i;
        return bits;
    }

    public void setBit(int i, boolean z) {
        int i2 = i / 8;
        int i3 = i % 8;
        byte b2 = get(i2);
        this.mBuffer.put(i2, (byte) (z ? (1 << i3) | b2 : (~(1 << i3)) & b2));
    }

    public void clearBit(int i) {
        setBit(i, false);
    }
}
