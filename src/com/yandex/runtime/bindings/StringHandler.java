package com.yandex.runtime.bindings;

/* JADX INFO: loaded from: classes5.dex */
public class StringHandler implements ArchivingHandler<String> {
    private final boolean isOptional;

    public StringHandler() {
        this(false);
    }

    public StringHandler(boolean z) {
        this.isOptional = z;
    }

    @Override // com.yandex.runtime.bindings.ArchivingHandler
    public String add(String str, Archive archive) {
        return archive.add(str, this.isOptional);
    }
}
