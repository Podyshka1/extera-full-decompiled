package org.telegram.tgnet;

/* JADX INFO: loaded from: classes.dex */
public interface InputSerializedData {
    TLDataSourceType getDataSourceType();

    boolean readBool(boolean z);

    byte readByte(boolean z);

    byte[] readByteArray(boolean z);

    NativeByteBuffer readByteBuffer(boolean z);

    double readDouble(boolean z);

    float readFloat(boolean z);

    int readInt32(boolean z);

    long readInt64(boolean z);

    String readString(boolean z);

    int remaining();
}
