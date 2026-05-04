package com.yandex.runtime.bindings;

/* JADX INFO: loaded from: classes5.dex */
public class BooleanHandler implements ArchivingHandler<Boolean> {
    private final boolean isOptional;

    public BooleanHandler() {
        this(false);
    }

    public BooleanHandler(boolean z) {
        this.isOptional = z;
    }

    @Override // com.yandex.runtime.bindings.ArchivingHandler
    public Boolean add(Boolean bool, Archive archive) {
        return archive.add(bool, this.isOptional);
    }
}
