package com.exteragram.messenger.plugins;

import java.util.HashMap;
import java.util.Map;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class PluginsController$$ExternalSyntheticBackport1 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ Map m253m(Map.Entry[] entryArr) {
        HashMap map = new HashMap(entryArr.length);
        for (Map.Entry entry : entryArr) {
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (map.put(key, value) != null) {
                throw new IllegalArgumentException("duplicate key: " + key);
            }
        }
        return DesugarCollections.unmodifiableMap(map);
    }
}
