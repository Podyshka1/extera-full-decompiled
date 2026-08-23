package com.yandex.runtime.bindings;

/* JADX INFO: loaded from: classes5.dex */
public class FloatHandler implements ArchivingHandler<Float> {
    private final boolean isOptional;

    public FloatHandler() {
        this(false);
    }

    public FloatHandler(boolean z) {
        this.isOptional = z;
    }

    @Override // com.yandex.runtime.bindings.ArchivingHandler
    public Float add(Float f, Archive archive) {
        return archive.add(f, this.isOptional);
    }
}
