package com.yandex.runtime.bindings;

import android.graphics.PointF;
import com.yandex.runtime.TypeDictionary;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Archive {
    byte add(byte b2);

    double add(double d);

    float add(float f);

    int add(int i);

    long add(long j);

    PointF add(PointF pointF, boolean z);

    <T> TypeDictionary<T> add(TypeDictionary<T> typeDictionary, boolean z, ArchivingHandler<T> archivingHandler);

    <T extends Serializable> T add(T t, boolean z, Class<T> cls);

    Boolean add(Boolean bool, boolean z);

    Byte add(Byte b2, boolean z);

    Double add(Double d, boolean z);

    <T extends Enum<T>> T add(T t, boolean z, Class<T> cls);

    Float add(Float f, boolean z);

    Integer add(Integer num, boolean z);

    Long add(Long l, boolean z);

    <T> T add(T t, ArchivingHandler<T> archivingHandler);

    String add(String str, boolean z);

    ByteBuffer add(ByteBuffer byteBuffer);

    <T> List<T> add(List<T> list, boolean z, ArchivingHandler<T> archivingHandler);

    <Key, Value> Map<Key, Value> add(Map<Key, Value> map, boolean z, ArchivingHandler<Key> archivingHandler, ArchivingHandler<Value> archivingHandler2);

    boolean add(boolean z);

    byte[] add(byte[] bArr, boolean z);

    boolean isReader();
}
