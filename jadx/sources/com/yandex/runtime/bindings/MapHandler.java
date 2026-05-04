package com.yandex.runtime.bindings;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MapHandler<T> implements ArchivingHandler<Map<String, T>> {
    private final boolean isOptional;
    private final ArchivingHandler<T> valueHandler;

    public MapHandler(ArchivingHandler<T> archivingHandler) {
        this(false, archivingHandler);
    }

    public MapHandler(boolean z, ArchivingHandler<T> archivingHandler) {
        this.isOptional = z;
        this.valueHandler = archivingHandler;
    }

    @Override // com.yandex.runtime.bindings.ArchivingHandler
    public Map<String, T> add(Map<String, T> map, Archive archive) {
        return archive.add(map, this.isOptional, new StringHandler(), this.valueHandler);
    }
}
