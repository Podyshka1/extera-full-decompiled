package com.yandex.runtime.bindings.internal;

import android.os.Build;
import com.yandex.runtime.NativeObject;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
class StringDictionary<E> extends AbstractMap<String, E> {
    private ConcurrentHashMap<String, E> map = new ConcurrentHashMap<>();
    private NativeObject nativeObject;

    public native boolean containsKeyNative(Object obj);

    @Override // java.util.AbstractMap, java.util.Map
    public native Set<Map.Entry<String, E>> entrySet();

    public native E getNative(Object obj);

    @Override // java.util.AbstractMap, java.util.Map
    public native int size();

    public StringDictionary(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj) || containsKeyNative(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public E get(Object obj) {
        E e = this.map.get(obj);
        if (e != null || (e = getNative(obj)) == null) {
            return e;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            E ePutIfAbsent = this.map.putIfAbsent((String) obj, e);
            return ePutIfAbsent != null ? ePutIfAbsent : e;
        }
        synchronized (this.map) {
            E e2 = this.map.get((String) obj);
            if (e2 != null) {
                e = e2;
            } else {
                this.map.put((String) obj, e);
            }
        }
        return e;
    }
}
