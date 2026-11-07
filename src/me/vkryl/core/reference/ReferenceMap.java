package me.vkryl.core.reference;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import me.vkryl.core.reference.ReferenceList;

/* JADX INFO: loaded from: classes.dex */
public class ReferenceMap<K, T> {
    private final boolean cacheIterator;
    private int fullnessCounter;
    private final ReferenceList.FullnessListener fullnessListenerHelper;
    private final boolean isThreadSafe;
    protected final Map<K, ReferenceList<T>> map;
    private ReferenceList<T> reuse;

    /* JADX INFO: loaded from: classes5.dex */
    public interface FullnessListener<KK, TT> {
        void onFullnessStateChanged(ReferenceMap<KK, TT> referenceMap, boolean z);
    }

    public ReferenceMap(boolean z) {
        this(z, true, null);
    }

    public ReferenceMap(boolean z, boolean z2, final FullnessListener<K, T> fullnessListener) {
        this.map = new HashMap();
        this.isThreadSafe = z;
        this.cacheIterator = z2;
        if (fullnessListener != null) {
            this.fullnessListenerHelper = new ReferenceList.FullnessListener(fullnessListener) { // from class: me.vkryl.core.reference.ReferenceMap$$ExternalSyntheticLambda0
                @Override // me.vkryl.core.reference.ReferenceList.FullnessListener
                public final void onFullnessStateChanged(ReferenceList referenceList, boolean z3) {
                    this.f$0.lambda$new$0(null, referenceList, z3);
                }
            };
        } else {
            this.fullnessListenerHelper = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(FullnessListener fullnessListener, ReferenceList referenceList, boolean z) {
        synchronized (fullnessListener) {
            int i = this.fullnessCounter;
            try {
                if (z) {
                    this.fullnessCounter = i + 1;
                    if (i == 0) {
                        fullnessListener.onFullnessStateChanged(this, true);
                    }
                } else {
                    int i2 = i - 1;
                    this.fullnessCounter = i2;
                    if (i2 == 0) {
                        fullnessListener.onFullnessStateChanged(this, false);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean add(K k, T t) {
        boolean zAdd;
        synchronized (this.map) {
            try {
                ReferenceList<T> referenceList = this.map.get(k);
                if (referenceList == null) {
                    referenceList = this.reuse;
                    if (referenceList != null) {
                        this.reuse = referenceList.next;
                        referenceList.next = null;
                    } else {
                        referenceList = new ReferenceList<>(this.isThreadSafe, this.cacheIterator, this.fullnessListenerHelper);
                    }
                    this.map.put(k, referenceList);
                }
                zAdd = referenceList.add(t);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zAdd;
    }

    public final boolean has(K k) {
        boolean z;
        synchronized (this.map) {
            try {
                ReferenceList<T> referenceList = this.map.get(k);
                z = (referenceList == null || referenceList.isEmpty()) ? false : true;
            } finally {
            }
        }
        return z;
    }

    public final void remove(K k, T t) {
        synchronized (this.map) {
            try {
                ReferenceList<T> referenceList = this.map.get(k);
                if (referenceList != null) {
                    referenceList.remove(t);
                    if (referenceList.isEmpty()) {
                        this.map.remove(k);
                        referenceList.next = this.reuse;
                        this.reuse = referenceList;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Iterator<T> iterator(K k) {
        Iterator<T> it;
        synchronized (this.map) {
            try {
                ReferenceList<T> referenceList = this.map.get(k);
                it = referenceList != null ? referenceList.iterator() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return it;
    }

    public final Set<K> keySetUnchecked() {
        if (this.map.isEmpty()) {
            return null;
        }
        return this.map.keySet();
    }
}
