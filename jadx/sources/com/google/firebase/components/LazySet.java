package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import p022j$.util.DesugarCollections;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class LazySet implements Provider {
    private volatile Set actualSet = null;
    private volatile Set providers = Collections.newSetFromMap(new ConcurrentHashMap());

    LazySet(Collection collection) {
        this.providers.addAll(collection);
    }

    static LazySet fromCollection(Collection collection) {
        return new LazySet((Set) collection);
    }

    @Override // com.google.firebase.inject.Provider
    public Set get() {
        if (this.actualSet == null) {
            synchronized (this) {
                try {
                    if (this.actualSet == null) {
                        this.actualSet = Collections.newSetFromMap(new ConcurrentHashMap());
                        updateSet();
                    }
                } finally {
                }
            }
        }
        return DesugarCollections.unmodifiableSet(this.actualSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void add(Provider provider) {
        try {
            if (this.actualSet == null) {
                this.providers.add(provider);
            } else {
                this.actualSet.add(provider.get());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void updateSet() {
        try {
            Iterator it = this.providers.iterator();
            while (it.hasNext()) {
                this.actualSet.add(((Provider) it.next()).get());
            }
            this.providers = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
