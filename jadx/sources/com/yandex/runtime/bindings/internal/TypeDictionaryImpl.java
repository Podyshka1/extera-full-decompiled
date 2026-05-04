package com.yandex.runtime.bindings.internal;

import android.os.Build;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.TypeDictionary;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p022j$.util.Map;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class TypeDictionaryImpl<T> implements TypeDictionary<T> {
    private Map<String, T> map;
    private NativeObject nativeObject;

    private native Object getItemNative(String str);

    private native List<String> getKeys();

    private TypeDictionaryImpl(NativeObject nativeObject) {
        this.map = new ConcurrentHashMap();
        this.nativeObject = nativeObject;
    }

    TypeDictionaryImpl(Map<String, T> map) {
        new ConcurrentHashMap();
        this.map = map;
    }

    @Override // com.yandex.runtime.TypeDictionary
    public <U extends T> U getItem(Class<U> cls) {
        String strKeyForClass = keyForClass(cls);
        if (strKeyForClass == null) {
            return null;
        }
        return (U) getItemByKey(strKeyForClass);
    }

    @Override // com.yandex.runtime.TypeDictionary
    public Map<String, T> getAllItems() {
        if (this.nativeObject != null) {
            Iterator<String> it = getKeys().iterator();
            while (it.hasNext()) {
                getItemByKey(it.next());
            }
        }
        return this.map;
    }

    private <U extends T> U getItemByKey(String str) {
        T t = this.map.get(str);
        if (t != null || this.nativeObject == null || (t = (U) getItemNative(str)) == null) {
            return t;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            U u = (U) Map.EL.putIfAbsent(this.map, str, t);
            return u != null ? u : t;
        }
        synchronized (this.map) {
            T t2 = this.map.get(str);
            if (t2 != null) {
                t = (U) t2;
            } else {
                this.map.put(str, (T) t);
            }
        }
        return t;
    }

    private <U> String keyForClass(Class<U> cls) {
        try {
            return (String) cls.getMethod("getNativeName", null).invoke(null, null);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            throw new IllegalArgumentException(String.format("Objects of class %s cannot be stored in com.yandex.runtime.bindings.internal.TypeDictionaryImpl", cls.getName()), e);
        }
    }
}
