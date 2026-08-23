package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
public final class TypePath {
    public static final int ARRAY_ELEMENT = 0;
    public static final int INNER_TYPE = 1;
    public static final int TYPE_ARGUMENT = 3;
    public static final int WILDCARD_BOUND = 2;
    private final byte[] typePathContainer;
    private final int typePathOffset;

    TypePath(byte[] bArr, int i) {
        this.typePathContainer = bArr;
        this.typePathOffset = i;
    }

    public int getLength() {
        return this.typePathContainer[this.typePathOffset];
    }

    public int getStep(int i) {
        return this.typePathContainer[this.typePathOffset + (i * 2) + 1];
    }

    public int getStepArgument(int i) {
        return this.typePathContainer[this.typePathOffset + (i * 2) + 2];
    }

    public static TypePath fromString(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        int length = str.length();
        ByteVector byteVector = new ByteVector(length);
        byteVector.putByte(0);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt == '[') {
                byteVector.put11(0, 0);
            } else if (cCharAt == '.') {
                byteVector.put11(1, 0);
            } else if (cCharAt == '*') {
                byteVector.put11(2, 0);
            } else if (cCharAt >= '0' && cCharAt <= '9') {
                int i3 = cCharAt - '0';
                while (i2 < length) {
                    int i4 = i2 + 1;
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                        i3 = ((i3 * 10) + cCharAt2) - 48;
                        i2 = i4;
                    } else {
                        if (cCharAt2 != ';') {
                            throw new IllegalArgumentException();
                        }
                        i2 = i4;
                        byteVector.put11(3, i3);
                    }
                }
                byteVector.put11(3, i3);
            } else {
                throw new IllegalArgumentException();
            }
            i = i2;
        }
        byte[] bArr = byteVector.data;
        bArr[0] = (byte) (byteVector.length / 2);
        return new TypePath(bArr, 0);
    }

    public String toString() {
        int length = getLength();
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            int step = getStep(i);
            if (step == 0) {
                sb.append('[');
            } else if (step == 1) {
                sb.append('.');
            } else if (step == 2) {
                sb.append('*');
            } else if (step == 3) {
                sb.append(getStepArgument(i));
                sb.append(';');
            } else {
                throw new AssertionError();
            }
        }
        return sb.toString();
    }

    static void put(TypePath typePath, ByteVector byteVector) {
        if (typePath == null) {
            byteVector.putByte(0);
            return;
        }
        byte[] bArr = typePath.typePathContainer;
        int i = typePath.typePathOffset;
        byteVector.putByteArray(bArr, i, (bArr[i] * 2) + 1);
    }
}
