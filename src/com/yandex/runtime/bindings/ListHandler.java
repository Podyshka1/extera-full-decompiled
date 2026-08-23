package com.yandex.runtime.bindings;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ListHandler<T> implements ArchivingHandler<List<T>> {
    private final boolean isOptional;
    private final ArchivingHandler<T> valueHandler;

    public ListHandler(ArchivingHandler<T> archivingHandler) {
        this(false, archivingHandler);
    }

    public ListHandler(boolean z, ArchivingHandler<T> archivingHandler) {
        this.isOptional = z;
        this.valueHandler = archivingHandler;
    }

    @Override // com.yandex.runtime.bindings.ArchivingHandler
    public List<T> add(List<T> list, Archive archive) {
        return archive.add(list, this.isOptional, this.valueHandler);
    }
}
