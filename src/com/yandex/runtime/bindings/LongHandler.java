package com.yandex.runtime.bindings;

/* JADX INFO: loaded from: classes5.dex */
public class LongHandler implements ArchivingHandler<Long> {
    private final boolean isOptional;

    public LongHandler() {
        this(false);
    }

    public LongHandler(boolean z) {
        this.isOptional = z;
    }

    @Override // com.yandex.runtime.bindings.ArchivingHandler
    public Long add(Long l, Archive archive) {
        return archive.add(l, this.isOptional);
    }
}
