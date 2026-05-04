package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class CopyOnWriteMultiset implements Iterable {
    private final Object lock = new Object();
    private final Map elementCounts = new HashMap();
    private Set elementSet = Collections.EMPTY_SET;
    private List elements = Collections.EMPTY_LIST;

    public void add(Object obj) {
        synchronized (this.lock) {
            try {
                ArrayList arrayList = new ArrayList(this.elements);
                arrayList.add(obj);
                this.elements = DesugarCollections.unmodifiableList(arrayList);
                Integer num = (Integer) this.elementCounts.get(obj);
                if (num == null) {
                    HashSet hashSet = new HashSet(this.elementSet);
                    hashSet.add(obj);
                    this.elementSet = DesugarCollections.unmodifiableSet(hashSet);
                }
                this.elementCounts.put(obj, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void remove(Object obj) {
        synchronized (this.lock) {
            try {
                Integer num = (Integer) this.elementCounts.get(obj);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.elements);
                arrayList.remove(obj);
                this.elements = DesugarCollections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.elementCounts.remove(obj);
                    HashSet hashSet = new HashSet(this.elementSet);
                    hashSet.remove(obj);
                    this.elementSet = DesugarCollections.unmodifiableSet(hashSet);
                } else {
                    this.elementCounts.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Set elementSet() {
        Set set;
        synchronized (this.lock) {
            set = this.elementSet;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        Iterator it;
        synchronized (this.lock) {
            it = this.elements.iterator();
        }
        return it;
    }

    public int count(Object obj) {
        int iIntValue;
        synchronized (this.lock) {
            try {
                iIntValue = this.elementCounts.containsKey(obj) ? ((Integer) this.elementCounts.get(obj)).intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }
}
