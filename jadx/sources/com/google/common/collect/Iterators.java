package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Iterators {

    private enum EmptyModifiableIterator implements Iterator {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            CollectPreconditions.checkRemove(false);
        }
    }

    static Iterator emptyModifiableIterator() {
        return EmptyModifiableIterator.INSTANCE;
    }

    public static boolean contains(Iterator it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean removeAll(Iterator it, Collection collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean removeIf(Iterator it, Predicate predicate) {
        Preconditions.checkNotNull(predicate);
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean elementsEqual(Iterator it, Iterator it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equals(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static boolean addAll(Collection collection, Iterator it) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static UnmodifiableIterator filter(final Iterator it, final Predicate predicate) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(predicate);
        return new AbstractIterator() { // from class: com.google.common.collect.Iterators.5
            @Override // com.google.common.collect.AbstractIterator
            protected Object computeNext() {
                while (it.hasNext()) {
                    Object next = it.next();
                    if (predicate.apply(next)) {
                        return next;
                    }
                }
                return endOfData();
            }
        };
    }

    public static boolean any(Iterator it, Predicate predicate) {
        return indexOf(it, predicate) != -1;
    }

    public static Object find(Iterator it, Predicate predicate) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(predicate);
        while (it.hasNext()) {
            Object next = it.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    public static int indexOf(Iterator it, Predicate predicate) {
        Preconditions.checkNotNull(predicate, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static Object getNext(Iterator it, Object obj) {
        return it.hasNext() ? it.next() : obj;
    }

    public static Object getLast(Iterator it) {
        Object next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object getLast(Iterator it, Object obj) {
        return it.hasNext() ? getLast(it) : obj;
    }

    static Object pollNext(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        it.remove();
        return next;
    }

    static void clear(Iterator it) {
        Preconditions.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static UnmodifiableIterator singletonIterator(Object obj) {
        return new SingletonIterator(obj);
    }

    private static final class SingletonIterator extends UnmodifiableIterator {
        private boolean done;
        private final Object value;

        SingletonIterator(Object obj) {
            this.value = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.done;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.done) {
                throw new NoSuchElementException();
            }
            this.done = true;
            return this.value;
        }
    }
}
