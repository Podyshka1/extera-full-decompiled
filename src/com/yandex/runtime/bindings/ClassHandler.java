package com.yandex.runtime.bindings;

import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ClassHandler<T extends Serializable> implements ArchivingHandler<T> {
    private final boolean isOptional;
    private Class<T> itemClass;

    public ClassHandler(Class<T> cls) {
        this(false, cls);
    }

    public ClassHandler(boolean z, Class<T> cls) {
        this.isOptional = z;
        this.itemClass = cls;
    }

    @Override // com.yandex.runtime.bindings.ArchivingHandler
    public T add(T t, Archive archive) {
        return (T) archive.add(t, this.isOptional, this.itemClass);
    }
}
