package com.yandex.runtime.bindings.internal;

import com.yandex.runtime.NativeObject;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

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
        E ePutIfAbsent;
        E e = this.map.get(obj);
        return (e != null || (e = getNative(obj)) == null || (ePutIfAbsent = this.map.putIfAbsent((String) obj, e)) == null) ? e : ePutIfAbsent;
    }
}
