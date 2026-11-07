package me.vkryl.core.reference;

import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Semaphore;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public final class ReferenceList<T> implements Iterable<T>, ReferenceCreator<T> {
    private final boolean cacheIterator;
    private final FullnessListener fullnessListener;
    private boolean isFull;
    private boolean isLocked;
    private final List<Reference<T>> items;
    private final List<Reference<T>> itemsToAdd;
    private final List<Reference<T>> itemsToRemove;
    private ReferenceList<T>.Itr itr;
    ReferenceList<T> next;
    private final Semaphore semaphore;

    /* JADX INFO: loaded from: classes5.dex */
    public interface FullnessListener {
        void onFullnessStateChanged(ReferenceList<?> referenceList, boolean z);
    }

    public ReferenceList() {
        this(false, true, null);
    }

    public ReferenceList(boolean z) {
        this(z, true, null);
    }

    public ReferenceList(boolean z, boolean z2, FullnessListener fullnessListener) {
        this.itemsToRemove = new ArrayList();
        this.itemsToAdd = new ArrayList();
        this.semaphore = z ? new Semaphore(1) : null;
        this.cacheIterator = z2;
        this.items = new ArrayList();
        this.fullnessListener = fullnessListener;
    }

    private void checkFull() {
        boolean z;
        if (this.fullnessListener == null || this.isFull == (!this.items.isEmpty())) {
            return;
        }
        this.isFull = z;
        this.fullnessListener.onFullnessStateChanged(this, z);
    }

    private void lock() {
        if (this.isLocked) {
            MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        } else {
            this.isLocked = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlock() {
        if (!this.isLocked) {
            MethodWriter$$ExternalSyntheticBUOutline0.m959m();
            return;
        }
        this.isLocked = false;
        if (!this.itemsToRemove.isEmpty()) {
            this.items.removeAll(this.itemsToRemove);
            this.itemsToRemove.clear();
        }
        if (!this.itemsToAdd.isEmpty()) {
            this.items.addAll(this.itemsToAdd);
            this.itemsToAdd.clear();
        }
        checkFull();
    }

    private int indexOf(T t) {
        if (t == null) {
            return -1;
        }
        for (int size = this.items.size() - 1; size >= 0; size--) {
            if (this.items.get(size).get() == t) {
                return size;
            }
        }
        return -1;
    }

    public final boolean add(T t) {
        synchronized (this.items) {
            try {
                if (indexOf(t) != -1) {
                    return false;
                }
                if (this.isLocked) {
                    boolean zAddReference = ReferenceUtils.addReference(this, this.itemsToAdd, t);
                    ReferenceUtils.removeReference(this.itemsToRemove, t);
                    return zAddReference;
                }
                this.items.add(newReference(t));
                checkFull();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean remove(T t) {
        synchronized (this.items) {
            try {
                int iIndexOf = indexOf(t);
                if (iIndexOf == -1) {
                    return false;
                }
                boolean z = this.isLocked;
                List<Reference<T>> list = this.items;
                if (z) {
                    Reference<T> reference = list.get(iIndexOf);
                    if (!this.itemsToRemove.contains(reference)) {
                        this.itemsToRemove.add(reference);
                    }
                    ReferenceUtils.removeReference(this.itemsToAdd, reference.get());
                } else {
                    list.remove(iIndexOf);
                    checkFull();
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void clear() {
        synchronized (this.items) {
            try {
                boolean z = this.isLocked;
                List<Reference<T>> list = this.items;
                if (z) {
                    for (Reference<T> reference : list) {
                        if (!this.itemsToRemove.contains(reference)) {
                            this.itemsToRemove.add(reference);
                        }
                        ReferenceUtils.removeReference(this.itemsToAdd, reference.get());
                    }
                } else {
                    list.clear();
                    checkFull();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean isEmpty() {
        synchronized (this.items) {
            try {
                boolean z = this.isLocked;
                List<Reference<T>> list = this.items;
                if (z) {
                    return list.isEmpty() && this.itemsToAdd.isEmpty();
                }
                ReferenceUtils.gcReferenceList(list);
                return this.items.isEmpty();
            } finally {
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<T> iterator() {
        Semaphore semaphore = this.semaphore;
        if (semaphore != null) {
            try {
                semaphore.acquire();
            } catch (InterruptedException unused) {
                MethodWriter$$ExternalSyntheticBUOutline0.m959m();
                return null;
            }
        }
        synchronized (this.items) {
            try {
                if (this.cacheIterator) {
                    lock();
                    ReferenceList<T>.Itr itr = this.itr;
                    if (itr == null) {
                        this.itr = new Itr();
                    } else {
                        ((Itr) itr).index = this.items.size();
                        ((Itr) this.itr).nextItem = null;
                    }
                    return this.itr;
                }
                if (this.items.isEmpty()) {
                    return Collections.emptyIterator();
                }
                return new Itr();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final class Itr implements Iterator<T> {
        private int index;
        private T nextItem;

        private Itr() {
            this.index = ReferenceList.this.items.size();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            synchronized (ReferenceList.this.items) {
                try {
                    this.nextItem = null;
                    while (true) {
                        if (this.nextItem == null && this.index > 0) {
                            List list = ReferenceList.this.items;
                            int i = this.index - 1;
                            this.index = i;
                            Reference reference = (Reference) list.get(i);
                            T t = (T) reference.get();
                            if (t != null && !ReferenceList.this.itemsToRemove.contains(reference)) {
                                this.nextItem = t;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (this.nextItem == null && ReferenceList.this.cacheIterator) {
                        ReferenceList.this.unlock();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.nextItem != null) {
                return true;
            }
            if (ReferenceList.this.semaphore == null) {
                return false;
            }
            ReferenceList.this.semaphore.release();
            return false;
        }

        @Override // java.util.Iterator
        public final T next() {
            T t = this.nextItem;
            if (t != null) {
                return t;
            }
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
    }
}
