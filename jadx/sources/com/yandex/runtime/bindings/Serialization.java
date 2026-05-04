package com.yandex.runtime.bindings;

import com.yandex.runtime.bindings.internal.ArchiveReader;
import com.yandex.runtime.bindings.internal.ArchiveWriter;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class Serialization {
    public static <T extends Serializable> ByteBuffer serialize(T t) {
        ArchiveWriter archiveWriter = new ArchiveWriter();
        t.serialize(archiveWriter);
        return archiveWriter.data();
    }

    public static <T extends Serializable> byte[] serializeToBytes(T t) {
        return byteBufferToByteArray(serialize(t));
    }

    public static <T extends Serializable> T deserialize(ByteBuffer byteBuffer, Class<T> cls) {
        return (T) new ArchiveReader(byteBuffer).add((Serializable) null, false, (Class) cls);
    }

    public static <T extends Serializable> T deserializeFromBytes(byte[] bArr, Class<T> cls) {
        return (T) deserialize(ByteBuffer.wrap(bArr), cls);
    }

    public static <T extends Serializable> ByteBuffer serializeArray(List<T> list) {
        ArchiveWriter archiveWriter = new ArchiveWriter();
        archiveWriter.add(list.size());
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            it.next().serialize(archiveWriter);
        }
        return archiveWriter.data();
    }

    public static <T extends Serializable> byte[] serializeArrayToBytes(List<T> list) {
        return byteBufferToByteArray(serializeArray(list));
    }

    public static <T extends Serializable> List<T> deserializeArray(ByteBuffer byteBuffer, Class<T> cls) {
        return new ArchiveReader(byteBuffer).add((List) null, false, (ArchivingHandler) new ClassHandler(cls));
    }

    public static <T extends Serializable> List<T> deserializeArrayFromBytes(byte[] bArr, Class<T> cls) {
        return deserializeArray(ByteBuffer.wrap(bArr), cls);
    }

    private static byte[] byteBufferToByteArray(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        byte[] bArr = new byte[iPosition];
        byteBuffer.position(0);
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return bArr;
    }
}
