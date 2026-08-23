package com.android.dex;

import com.android.dex.util.ByteInput;

/* JADX INFO: loaded from: classes4.dex */
public final class EncodedValueReader {
    private int annotationType;
    private int arg;

    /* JADX INFO: renamed from: in */
    protected final ByteInput f79in;
    private int type;

    public EncodedValueReader(ByteInput byteInput) {
        this.type = -1;
        this.f79in = byteInput;
    }

    public EncodedValueReader(EncodedValue encodedValue) {
        this(encodedValue.asByteInput());
    }

    public EncodedValueReader(ByteInput byteInput, int i) {
        this.f79in = byteInput;
        this.type = i;
    }

    public EncodedValueReader(EncodedValue encodedValue, int i) {
        this(encodedValue.asByteInput(), i);
    }

    public int peek() {
        if (this.type == -1) {
            byte b = this.f79in.readByte();
            this.type = b & 31;
            this.arg = (b & 224) >> 5;
        }
        return this.type;
    }

    public int readArray() {
        checkType(28);
        this.type = -1;
        return Leb128.readUnsignedLeb128(this.f79in);
    }

    public int readAnnotation() {
        checkType(29);
        this.type = -1;
        this.annotationType = Leb128.readUnsignedLeb128(this.f79in);
        return Leb128.readUnsignedLeb128(this.f79in);
    }

    public int getAnnotationType() {
        return this.annotationType;
    }

    public int readAnnotationName() {
        return Leb128.readUnsignedLeb128(this.f79in);
    }

    public byte readByte() {
        checkType(0);
        this.type = -1;
        return (byte) EncodedValueCodec.readSignedInt(this.f79in, this.arg);
    }

    public short readShort() {
        checkType(2);
        this.type = -1;
        return (short) EncodedValueCodec.readSignedInt(this.f79in, this.arg);
    }

    public char readChar() {
        checkType(3);
        this.type = -1;
        return (char) EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public int readInt() {
        checkType(4);
        this.type = -1;
        return EncodedValueCodec.readSignedInt(this.f79in, this.arg);
    }

    public long readLong() {
        checkType(6);
        this.type = -1;
        return EncodedValueCodec.readSignedLong(this.f79in, this.arg);
    }

    public float readFloat() {
        checkType(16);
        this.type = -1;
        return Float.intBitsToFloat(EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, true));
    }

    public double readDouble() {
        checkType(17);
        this.type = -1;
        return Double.longBitsToDouble(EncodedValueCodec.readUnsignedLong(this.f79in, this.arg, true));
    }

    public int readMethodType() {
        checkType(21);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public int readMethodHandle() {
        checkType(22);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public int readString() {
        checkType(23);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public int readType() {
        checkType(24);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public int readField() {
        checkType(25);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public int readEnum() {
        checkType(27);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public int readMethod() {
        checkType(26);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f79in, this.arg, false);
    }

    public void readNull() {
        checkType(30);
        this.type = -1;
    }

    public boolean readBoolean() {
        checkType(31);
        this.type = -1;
        return this.arg != 0;
    }

    public void skipValue() {
        int iPeek = peek();
        if (iPeek == 0) {
            readByte();
            return;
        }
        if (iPeek == 6) {
            readLong();
            return;
        }
        if (iPeek == 2) {
            readShort();
            return;
        }
        if (iPeek == 3) {
            readChar();
            return;
        }
        if (iPeek == 4) {
            readInt();
            return;
        }
        if (iPeek == 16) {
            readFloat();
            return;
        }
        if (iPeek == 17) {
            readDouble();
            return;
        }
        int i = 0;
        switch (iPeek) {
            case 21:
                readMethodType();
                return;
            case 22:
                readMethodHandle();
                return;
            case 23:
                readString();
                return;
            case 24:
                readType();
                return;
            case 25:
                readField();
                return;
            case 26:
                readMethod();
                return;
            case 27:
                readEnum();
                return;
            case 28:
                int array = readArray();
                while (i < array) {
                    skipValue();
                    i++;
                }
                return;
            case 29:
                int annotation = readAnnotation();
                while (i < annotation) {
                    readAnnotationName();
                    skipValue();
                    i++;
                }
                return;
            case 30:
                readNull();
                return;
            case 31:
                readBoolean();
                return;
            default:
                throw new DexException("Unexpected type: " + Integer.toHexString(this.type));
        }
    }

    private void checkType(int i) {
        if (peek() != i) {
            throw new IllegalStateException(String.format("Expected %x but was %x", Integer.valueOf(i), Integer.valueOf(peek())));
        }
    }
}
