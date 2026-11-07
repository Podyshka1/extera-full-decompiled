package org.telegram.tgnet;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.LinkedList;
import okhttp3.internal.url._UrlKt;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class NativeByteBuffer extends AbstractSerializedData {
    private static final int MAX_POOLED_WRAPPERS = 64;
    private static final ThreadLocal<LinkedList<NativeByteBuffer>> addressWrappers = new ThreadLocal<LinkedList<NativeByteBuffer>>() { // from class: org.telegram.tgnet.NativeByteBuffer.1
        @Override // java.lang.ThreadLocal
        public LinkedList<NativeByteBuffer> initialValue() {
            return new LinkedList<>();
        }
    };
    protected long address;
    public ByteBuffer buffer;
    private boolean justCalc;
    private int len;
    public boolean reused = true;

    public static native long native_getFreeBuffer(int i);

    public static native ByteBuffer native_getJavaByteBuffer(long j);

    public static native int native_limit(long j);

    public static native int native_position(long j);

    public static native void native_reuse(long j);

    public int getIntFromByte(byte b2) {
        return b2 >= 0 ? b2 : b2 + 256;
    }

    public static NativeByteBuffer wrap(long j) {
        if (j == 0) {
            return null;
        }
        NativeByteBuffer nativeByteBufferPoll = addressWrappers.get().poll();
        if (nativeByteBufferPoll == null) {
            nativeByteBufferPoll = new NativeByteBuffer(0, true);
        }
        nativeByteBufferPoll.address = j;
        nativeByteBufferPoll.reused = false;
        ByteBuffer byteBufferNative_getJavaByteBuffer = native_getJavaByteBuffer(j);
        nativeByteBufferPoll.buffer = byteBufferNative_getJavaByteBuffer;
        byteBufferNative_getJavaByteBuffer.limit(native_limit(j));
        int iNative_position = native_position(j);
        if (iNative_position <= nativeByteBufferPoll.buffer.limit()) {
            nativeByteBufferPoll.buffer.position(iNative_position);
        }
        nativeByteBufferPoll.buffer.order(ByteOrder.LITTLE_ENDIAN);
        return nativeByteBufferPoll;
    }

    private NativeByteBuffer(int i, boolean z) {
    }

    public NativeByteBuffer(int i) throws Exception {
        if (i >= 0) {
            long jNative_getFreeBuffer = native_getFreeBuffer(i);
            this.address = jNative_getFreeBuffer;
            if (jNative_getFreeBuffer != 0) {
                ByteBuffer byteBufferNative_getJavaByteBuffer = native_getJavaByteBuffer(jNative_getFreeBuffer);
                this.buffer = byteBufferNative_getJavaByteBuffer;
                byteBufferNative_getJavaByteBuffer.position(0);
                this.buffer.limit(i);
                this.buffer.order(ByteOrder.LITTLE_ENDIAN);
                return;
            }
            return;
        }
        throw new Exception("invalid NativeByteBuffer size");
    }

    public NativeByteBuffer(boolean z) {
        this.justCalc = z;
    }

    public int position() {
        return this.buffer.position();
    }

    public void position(int i) {
        this.buffer.position(i);
    }

    public int capacity() {
        return this.buffer.capacity();
    }

    public int limit() {
        return this.buffer.limit();
    }

    public void limit(int i) {
        this.buffer.limit(i);
    }

    public void put(ByteBuffer byteBuffer) {
        this.buffer.put(byteBuffer);
    }

    public void rewind() {
        if (this.justCalc) {
            this.len = 0;
        } else {
            this.buffer.rewind();
        }
    }

    public void compact() {
        this.buffer.compact();
    }

    public boolean hasRemaining() {
        return this.buffer.hasRemaining();
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeInt32(int i) {
        try {
            if (!this.justCalc) {
                this.buffer.putInt(i);
            } else {
                this.len += 4;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write int32 error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeInt64(long j) {
        try {
            if (!this.justCalc) {
                this.buffer.putLong(j);
            } else {
                this.len += 8;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write int64 error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeFloat(float f) {
        try {
            if (!this.justCalc) {
                this.buffer.putInt(Float.floatToIntBits(f));
            } else {
                this.len += 4;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write float error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeBool(boolean z) {
        if (this.justCalc) {
            this.len += 4;
        } else if (z) {
            writeInt32(TLRPC.TL_boolTrue.constructor);
        } else {
            writeInt32(TLRPC.TL_boolFalse.constructor);
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeBytes(byte[] bArr) {
        try {
            if (!this.justCalc) {
                this.buffer.put(bArr);
            } else {
                this.len += bArr.length;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write raw error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeBytes(byte[] bArr, int i, int i2) {
        try {
            if (!this.justCalc) {
                this.buffer.put(bArr, i, i2);
            } else {
                this.len += i2;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write raw error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeByte(int i) {
        writeByte((byte) i);
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeByte(byte b2) {
        try {
            if (!this.justCalc) {
                this.buffer.put(b2);
            } else {
                this.len++;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write byte error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeString(String str) {
        if (str == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write string null");
                FileLog.m1040e(new Throwable());
            }
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        try {
            writeByteArray(str.getBytes("UTF-8"));
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write string error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeByteArray(byte[] bArr, int i, int i2) {
        boolean z = this.justCalc;
        try {
            if (i2 <= 253) {
                if (z) {
                    this.len++;
                } else {
                    this.buffer.put((byte) i2);
                }
            } else if (z) {
                this.len += 4;
            } else {
                this.buffer.put((byte) -2);
                this.buffer.put((byte) i2);
                this.buffer.put((byte) (i2 >> 8));
                this.buffer.put((byte) (i2 >> 16));
            }
            if (this.justCalc) {
                this.len += i2;
            } else {
                this.buffer.put(bArr, i, i2);
            }
            for (int i3 = i2 <= 253 ? 1 : 4; (i2 + i3) % 4 != 0; i3++) {
                if (this.justCalc) {
                    this.len++;
                } else {
                    this.buffer.put((byte) 0);
                }
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write byte array error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeByteArray(byte[] bArr) {
        try {
            int length = bArr.length;
            boolean z = this.justCalc;
            if (length <= 253) {
                if (z) {
                    this.len++;
                } else {
                    this.buffer.put((byte) bArr.length);
                }
            } else if (z) {
                this.len += 4;
            } else {
                this.buffer.put((byte) -2);
                this.buffer.put((byte) bArr.length);
                this.buffer.put((byte) (bArr.length >> 8));
                this.buffer.put((byte) (bArr.length >> 16));
            }
            if (this.justCalc) {
                this.len += bArr.length;
            } else {
                this.buffer.put(bArr);
            }
            for (int i = bArr.length <= 253 ? 1 : 4; (bArr.length + i) % 4 != 0; i++) {
                if (this.justCalc) {
                    this.len++;
                } else {
                    this.buffer.put((byte) 0);
                }
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write byte array error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeDouble(double d) {
        try {
            writeInt64(Double.doubleToRawLongBits(d));
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("write double error");
                FileLog.m1040e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeByteBuffer(NativeByteBuffer nativeByteBuffer) {
        try {
            int iLimit = nativeByteBuffer.limit();
            boolean z = this.justCalc;
            if (iLimit <= 253) {
                if (z) {
                    this.len++;
                } else {
                    this.buffer.put((byte) iLimit);
                }
            } else if (z) {
                this.len += 4;
            } else {
                this.buffer.put((byte) -2);
                this.buffer.put((byte) iLimit);
                this.buffer.put((byte) (iLimit >> 8));
                this.buffer.put((byte) (iLimit >> 16));
            }
            if (this.justCalc) {
                this.len += iLimit;
            } else {
                nativeByteBuffer.rewind();
                this.buffer.put(nativeByteBuffer.buffer);
            }
            for (int i = iLimit <= 253 ? 1 : 4; (iLimit + i) % 4 != 0; i++) {
                if (this.justCalc) {
                    this.len++;
                } else {
                    this.buffer.put((byte) 0);
                }
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void writeBytes(NativeByteBuffer nativeByteBuffer) {
        if (this.justCalc) {
            this.len += nativeByteBuffer.limit();
        } else {
            nativeByteBuffer.rewind();
            this.buffer.put(nativeByteBuffer.buffer);
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public int length() {
        if (!this.justCalc) {
            return this.buffer.position();
        }
        return this.len;
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData, org.telegram.tgnet.OutputSerializedData
    public void skip(int i) {
        if (i == 0) {
            return;
        }
        if (!this.justCalc) {
            ByteBuffer byteBuffer = this.buffer;
            byteBuffer.position(byteBuffer.position() + i);
        } else {
            this.len += i;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData, org.telegram.tgnet.OutputSerializedData
    public int getPosition() {
        return this.buffer.position();
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public byte readByte(boolean z) {
        try {
            return this.buffer.get();
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read byte error", e);
                return (byte) 0;
            }
            if (!BuildVars.LOGS_ENABLED) {
                return (byte) 0;
            }
            FileLog.m1038e("read byte error");
            FileLog.m1040e(e);
            return (byte) 0;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public int readInt32(boolean z) {
        try {
            return this.buffer.getInt();
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read int32 error", e);
                return 0;
            }
            if (!BuildVars.LOGS_ENABLED) {
                return 0;
            }
            FileLog.m1038e("read int32 error");
            FileLog.m1040e(e);
            return 0;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public float readFloat(boolean z) {
        try {
            return Float.intBitsToFloat(this.buffer.getInt());
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read float error", e);
                return 0.0f;
            }
            if (!BuildVars.LOGS_ENABLED) {
                return 0.0f;
            }
            FileLog.m1038e("read float error");
            FileLog.m1040e(e);
            return 0.0f;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public boolean readBool(boolean z) {
        int int32 = readInt32(z);
        if (int32 == -1720552011) {
            return true;
        }
        if (int32 == -1132882121) {
            return false;
        }
        if (z) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("Not bool value!");
            return false;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1038e("Not bool value!");
        }
        return false;
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public long readInt64(boolean z) {
        try {
            return this.buffer.getLong();
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read int64 error", e);
                return 0L;
            }
            if (!BuildVars.LOGS_ENABLED) {
                return 0L;
            }
            FileLog.m1038e("read int64 error");
            FileLog.m1040e(e);
            return 0L;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public void readBytes(byte[] bArr, boolean z) {
        try {
            this.buffer.get(bArr);
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read raw error", e);
            } else if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("read raw error");
                FileLog.m1040e(e);
            }
        }
    }

    public void readBytes(byte[] bArr, int i, int i2, boolean z) {
        try {
            this.buffer.get(bArr, i, i2);
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read raw error", e);
            } else if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("read raw error");
                FileLog.m1040e(e);
            }
        }
    }

    public String hex() {
        try {
            return Utilities.bytesToHex(readData(Math.min(limit(), 1024), true));
        } catch (Exception e) {
            FileLog.m1040e(e);
            return "<err>";
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public byte[] readData(int i, boolean z) {
        byte[] bArr = new byte[i];
        readBytes(bArr, z);
        return bArr;
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public String readString(boolean z) {
        int i;
        int position = getPosition();
        try {
            int intFromByte = getIntFromByte(this.buffer.get());
            if (intFromByte >= 254) {
                intFromByte = getIntFromByte(this.buffer.get()) | (getIntFromByte(this.buffer.get()) << 8) | (getIntFromByte(this.buffer.get()) << 16);
                i = 4;
            } else {
                i = 1;
            }
            if (intFromByte > remaining() || intFromByte < 0) {
                throw new RuntimeException("string size too big");
            }
            byte[] bArr = new byte[intFromByte];
            this.buffer.get(bArr);
            while ((intFromByte + i) % 4 != 0) {
                this.buffer.get();
                i++;
            }
            return new String(bArr, StandardCharsets.UTF_8);
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read string error", e);
                return null;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("read string error");
                FileLog.m1040e(e);
            }
            position(position);
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public byte[] readByteArray(boolean z) {
        int i;
        try {
            int intFromByte = getIntFromByte(this.buffer.get());
            if (intFromByte >= 254) {
                intFromByte = getIntFromByte(this.buffer.get()) | (getIntFromByte(this.buffer.get()) << 8) | (getIntFromByte(this.buffer.get()) << 16);
                i = 4;
            } else {
                i = 1;
            }
            if (intFromByte > remaining() || intFromByte < 0) {
                throw new RuntimeException("byte array size too big");
            }
            byte[] bArr = new byte[intFromByte];
            this.buffer.get(bArr);
            while ((intFromByte + i) % 4 != 0) {
                this.buffer.get();
                i++;
            }
            return bArr;
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read byte array error", e);
                return null;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1038e("read byte array error");
                FileLog.m1040e(e);
            }
            return new byte[0];
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public NativeByteBuffer readByteBuffer(boolean z) {
        int i;
        try {
            int intFromByte = getIntFromByte(this.buffer.get());
            if (intFromByte >= 254) {
                intFromByte = getIntFromByte(this.buffer.get()) | (getIntFromByte(this.buffer.get()) << 8) | (getIntFromByte(this.buffer.get()) << 16);
                i = 4;
            } else {
                i = 1;
            }
            if (intFromByte > remaining() || intFromByte < 0) {
                throw new RuntimeException("byte array size too big");
            }
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(intFromByte);
            int iLimit = this.buffer.limit();
            ByteBuffer byteBuffer = this.buffer;
            byteBuffer.limit(byteBuffer.position() + intFromByte);
            nativeByteBuffer.buffer.put(this.buffer);
            this.buffer.limit(iLimit);
            nativeByteBuffer.buffer.position(0);
            while ((intFromByte + i) % 4 != 0) {
                this.buffer.get();
                i++;
            }
            return nativeByteBuffer;
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read byte array error", e);
                return null;
            }
            if (!BuildVars.LOGS_ENABLED) {
                return null;
            }
            FileLog.m1038e("read byte array error");
            FileLog.m1040e(e);
            return null;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public double readDouble(boolean z) {
        try {
            return Double.longBitsToDouble(readInt64(z));
        } catch (Exception e) {
            if (z) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("read double error", e);
                return 0.0d;
            }
            if (!BuildVars.LOGS_ENABLED) {
                return 0.0d;
            }
            FileLog.m1038e("read double error");
            FileLog.m1040e(e);
            return 0.0d;
        }
    }

    public void reuse() {
        reuse(false);
    }

    public void reuse(boolean z) {
        if (this.address != 0) {
            if (!z) {
                LinkedList<NativeByteBuffer> linkedList = addressWrappers.get();
                if (linkedList.size() < 64) {
                    linkedList.add(this);
                }
            }
            this.reused = true;
            native_reuse(this.address);
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public int remaining() {
        return this.buffer.remaining();
    }

    public void finalize() throws Throwable {
        if (!this.reused) {
            reuse(true);
        }
        super.finalize();
    }
}
