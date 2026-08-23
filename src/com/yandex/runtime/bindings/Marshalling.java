package com.yandex.runtime.bindings;

import com.yandex.runtime.bindings.internal.ArchiveReader;
import com.yandex.runtime.bindings.internal.ArchiveWriter;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class Marshalling {
    public static <T> ByteBuffer serialize(T t, ArchivingHandler<T> archivingHandler) {
        ArchiveWriter archiveWriter = new ArchiveWriter();
        archiveWriter.add(t, archivingHandler);
        return archiveWriter.data();
    }

    public static <T> ByteBuffer serializeArray(List<T> list, ArchivingHandler<T> archivingHandler) {
        ArchiveWriter archiveWriter = new ArchiveWriter();
        archiveWriter.add((List) list, false, (ArchivingHandler) archivingHandler);
        return archiveWriter.data();
    }

    public static <K, V> ByteBuffer serializeMap(Map<K, V> map, ArchivingHandler<K> archivingHandler, ArchivingHandler<V> archivingHandler2) {
        ArchiveWriter archiveWriter = new ArchiveWriter();
        archiveWriter.add(map, false, archivingHandler, archivingHandler2);
        return archiveWriter.data();
    }

    public static <T> T deserialize(ByteBuffer byteBuffer, ArchivingHandler<T> archivingHandler) {
        return (T) new ArchiveReader(byteBuffer).add((Object) null, archivingHandler);
    }

    public static <T> List<T> deserializeArray(ByteBuffer byteBuffer, ArchivingHandler<T> archivingHandler) {
        return new ArchiveReader(byteBuffer).add((List) null, false, (ArchivingHandler) archivingHandler);
    }

    public static <K, V> Map<K, V> deserializeMap(ByteBuffer byteBuffer, ArchivingHandler<K> archivingHandler, ArchivingHandler<V> archivingHandler2) {
        return new ArchiveReader(byteBuffer).add(null, false, archivingHandler, archivingHandler2);
    }
}
