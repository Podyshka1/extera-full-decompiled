package com.exteragram.messenger.badges;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class CachedRemoteSet$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ Set m227m(Collection collection) {
        HashSet hashSet = new HashSet(collection.size());
        for (Object obj : collection) {
            Objects.requireNonNull(obj);
            hashSet.add(obj);
        }
        return DesugarCollections.unmodifiableSet(hashSet);
    }
}
