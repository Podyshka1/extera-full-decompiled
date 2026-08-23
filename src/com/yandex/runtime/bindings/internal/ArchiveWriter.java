package com.yandex.runtime.bindings.internal;

import android.graphics.PointF;
import com.yandex.runtime.TypeDictionary;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ArchiveWriter implements Archive {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int DEFAULT_SIZE = 16384;
    private ByteBuffer data = allocate(16384);

    @Override // com.yandex.runtime.bindings.Archive
    public boolean isReader() {
        return false;
    }

    public ByteBuffer data() {
        return this.data;
    }

    private static ByteBuffer allocate(int i) {
        return ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
    }

    private void ensureSize(int i) {
        int iPosition = this.data.position();
        int iCapacity = this.data.capacity();
        int i2 = i + iPosition;
        if (i2 > iCapacity) {
            ByteBuffer byteBufferAllocate = allocate(Math.max((int) (((double) iCapacity) * 1.6d), i2));
            this.data.position(0);
            byteBufferAllocate.put(this.data);
            byteBufferAllocate.position(iPosition);
            this.data = byteBufferAllocate;
        }
    }

    @Override // com.yandex.runtime.bindings.Archive
    public boolean add(boolean z) {
        add(z ? (byte) 1 : (byte) 0);
        return z;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public byte add(byte b) {
        ensureSize(1);
        this.data.put(b);
        return b;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public int add(int i) {
        ensureSize(4);
        this.data.putInt(i);
        return i;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public long add(long j) {
        ensureSize(8);
        this.data.putLong(j);
        return j;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public float add(float f) {
        ensureSize(4);
        this.data.putFloat(f);
        return f;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public double add(double d) {
        ensureSize(8);
        this.data.putDouble(d);
        return d;
    }

    private <T> boolean writeOptionalFlag(boolean z, T t) {
        if (z) {
            return add(t != null);
        }
        return true;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public Boolean add(Boolean bool, boolean z) {
        if (writeOptionalFlag(z, bool)) {
            return Boolean.valueOf(add(bool.booleanValue()));
        }
        return null;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public Byte add(Byte b, boolean z) {
        if (writeOptionalFlag(z, b)) {
            return Byte.valueOf(add(b.byteValue()));
        }
        return null;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public Integer add(Integer num, boolean z) {
        if (writeOptionalFlag(z, num)) {
            return Integer.valueOf(add(num.intValue()));
        }
        return null;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public Long add(Long l, boolean z) {
        if (writeOptionalFlag(z, l)) {
            return Long.valueOf(add(l.longValue()));
        }
        return null;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public Float add(Float f, boolean z) {
        if (writeOptionalFlag(z, f)) {
            return Float.valueOf(add(f.floatValue()));
        }
        return null;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public Double add(Double d, boolean z) {
        if (writeOptionalFlag(z, d)) {
            return Double.valueOf(add(d.doubleValue()));
        }
        return null;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public ByteBuffer add(ByteBuffer byteBuffer) {
        ensureSize(byteBuffer.capacity());
        this.data.put(byteBuffer);
        return this.data;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public byte[] add(byte[] bArr, boolean z) {
        if (!writeOptionalFlag(z, bArr)) {
            return null;
        }
        add(bArr.length);
        ensureSize(bArr.length);
        this.data.put(bArr);
        return bArr;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public String add(String str, boolean z) {
        if (!writeOptionalFlag(z, str)) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            add(bytes.length);
            ensureSize(bytes.length);
            this.data.put(bytes);
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.yandex.runtime.bindings.Archive
    public <T extends Enum<T>> T add(T t, boolean z, Class<T> cls) {
        if (!writeOptionalFlag(z, t)) {
            return null;
        }
        add(t.ordinal());
        return t;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public <T> List<T> add(List<T> list, boolean z, ArchivingHandler<T> archivingHandler) {
        if (!writeOptionalFlag(z, list)) {
            return null;
        }
        add(list.size());
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            archivingHandler.add(it.next(), this);
        }
        return list;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public <Key, Value> Map<Key, Value> add(Map<Key, Value> map, boolean z, ArchivingHandler<Key> archivingHandler, ArchivingHandler<Value> archivingHandler2) {
        if (!writeOptionalFlag(z, map)) {
            return null;
        }
        add(map.size());
        for (Map.Entry<Key, Value> entry : map.entrySet()) {
            archivingHandler.add(entry.getKey(), this);
            archivingHandler2.add(entry.getValue(), this);
        }
        return map;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public <Value> TypeDictionary<Value> add(TypeDictionary<Value> typeDictionary, boolean z, ArchivingHandler<Value> archivingHandler) {
        if (!writeOptionalFlag(z, typeDictionary)) {
            return null;
        }
        add(typeDictionary.getAllItems(), false, new StringHandler(), archivingHandler);
        return typeDictionary;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public <T extends Serializable> T add(T t, boolean z, Class<T> cls) {
        if (!writeOptionalFlag(z, t)) {
            return null;
        }
        if (cls.isInterface()) {
            add(t.getClass().getName(), false);
        }
        t.serialize(this);
        return t;
    }

    @Override // com.yandex.runtime.bindings.Archive
    public <T> T add(T t, ArchivingHandler<T> archivingHandler) {
        return archivingHandler.add(t, this);
    }

    @Override // com.yandex.runtime.bindings.Archive
    public PointF add(PointF pointF, boolean z) {
        if (!writeOptionalFlag(z, pointF)) {
            return null;
        }
        add(pointF.x);
        add(pointF.y);
        return pointF;
    }
}
