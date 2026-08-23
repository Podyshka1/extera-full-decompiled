package org.telegram.tgnet;

/* JADX INFO: loaded from: classes.dex */
public interface OutputSerializedData {
    void writeBool(boolean z);

    void writeByte(byte b2);

    void writeByteArray(byte[] bArr);

    void writeByteBuffer(NativeByteBuffer nativeByteBuffer);

    void writeBytes(byte[] bArr);

    void writeDouble(double d);

    void writeFloat(float f);

    void writeInt32(int i);

    void writeInt64(long j);

    void writeString(String str);
}
