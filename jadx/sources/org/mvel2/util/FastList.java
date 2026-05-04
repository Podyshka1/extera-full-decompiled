package org.mvel2.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.mvel2.ImmutableElementException;

/* JADX INFO: loaded from: classes5.dex */
public class FastList<E> extends AbstractList<E> implements Externalizable {
    private E[] elements;
    private int size;
    private boolean updated;

    public FastList(int i) {
        this.size = 0;
        this.updated = false;
        this.elements = (E[]) new Object[i == 0 ? 1 : i];
    }

    public FastList(E[] eArr) {
        this.size = 0;
        this.updated = false;
        this.elements = eArr;
        this.size = eArr.length;
    }

    public FastList() {
        this(10);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.size);
        for (int i = 0; i < this.size; i++) {
            objectOutput.writeObject(this.elements[i]);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        int i = objectInput.readInt();
        this.size = i;
        this.elements = (E[]) new Object[i];
        for (int i2 = 0; i2 < this.size; i2++) {
            ((E[]) this.elements)[i2] = objectInput.readObject();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        return this.elements[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        int i = this.size;
        E[] eArr = this.elements;
        if (i == eArr.length) {
            increaseSize(eArr.length * 2);
        }
        E[] eArr2 = this.elements;
        int i2 = this.size;
        this.size = i2 + 1;
        eArr2[i2] = e;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        if (!this.updated) {
            copyArray();
        }
        E[] eArr = this.elements;
        E e2 = eArr[i];
        eArr[i] = e;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        int i2 = this.size;
        E[] eArr = this.elements;
        if (i2 == eArr.length) {
            increaseSize(eArr.length * 2);
        }
        for (int i3 = this.size; i3 != i; i3--) {
            E[] eArr2 = this.elements;
            eArr2[i3] = eArr2[i3 - 1];
        }
        this.elements[i] = e;
        this.size++;
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        E e = this.elements[i];
        while (true) {
            i++;
            int i2 = this.size;
            if (i < i2) {
                E[] eArr = this.elements;
                eArr[i - 1] = eArr[i];
                eArr[i] = null;
            } else {
                this.size = i2 - 1;
                return e;
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int i = 0;
        while (true) {
            E[] eArr = this.elements;
            if (i >= eArr.length) {
                return -1;
            }
            if (obj.equals(eArr[i])) {
                return i;
            }
            i++;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int length = this.elements.length - 1; length != -1; length--) {
            if (obj.equals(this.elements[length])) {
                return length;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.elements = (E[]) new Object[1];
        this.size = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        int size = collection.size();
        ensureCapacity(this.size + size);
        if (i != 0) {
            for (int i2 = i; i2 != i + size; i2++) {
                E[] eArr = this.elements;
                eArr[i2 + size + 1] = eArr[i2];
            }
        }
        int i3 = this.size == 0 ? -1 : 0;
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            this.elements[i3 + size] = it.next();
            i3++;
        }
        this.size += size;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        final int i = this.size;
        return new Iterator() { // from class: org.mvel2.util.FastList.1
            private int cursor = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.cursor < i;
            }

            @Override // java.util.Iterator
            public Object next() {
                Object[] objArr = FastList.this.elements;
                int i2 = this.cursor;
                this.cursor = i2 + 1;
                return objArr[i2];
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new ImmutableElementException("cannot change elements in immutable list");
            }
        };
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new ListIterator<E>() { // from class: org.mvel2.util.FastList.2

            /* JADX INFO: renamed from: i */
            private int f1579i = -1;

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f1579i < FastList.this.size - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public E next() {
                Object[] objArr = FastList.this.elements;
                int i = this.f1579i + 1;
                this.f1579i = i;
                return (E) objArr[i];
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f1579i > 0;
            }

            @Override // java.util.ListIterator
            public E previous() {
                Object[] objArr = FastList.this.elements;
                int i = this.f1579i - 1;
                this.f1579i = i;
                return (E) objArr[i];
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                int i = this.f1579i;
                this.f1579i = i + 1;
                return i;
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                int i = this.f1579i;
                this.f1579i = i - 1;
                return i;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.ListIterator
            public void set(E e) {
                FastList.this.elements[this.f1579i] = e;
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i) {
        return super.listIterator(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public List subList(int i, int i2) {
        return super.subList(i, i2);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        ListIterator<E> listIterator = listIterator();
        ListIterator<E> listIterator2 = ((List) obj).listIterator();
        while (listIterator.hasNext() && listIterator2.hasNext()) {
            E next = listIterator.next();
            E next2 = listIterator2.next();
            if (next == null) {
                if (next2 != null) {
                    return false;
                }
            } else if (!next.equals(next2)) {
                return false;
            }
        }
        return (listIterator.hasNext() || listIterator2.hasNext()) ? false : true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return super.hashCode();
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i, int i2) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[this.size]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int i = this.size;
        if (length < i) {
            objArr = new Object[i];
        }
        for (int i2 = 0; i2 < this.size; i2++) {
            objArr[i2] = this.elements[i2];
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean containsAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        return addAll(this.size, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    private void ensureCapacity(int i) {
        int i2 = this.size;
        if (i2 + i > this.elements.length) {
            increaseSize((i2 + i) * 2);
        }
    }

    private void copyArray() {
        increaseSize(this.elements.length);
    }

    private void increaseSize(int i) {
        E[] eArr = (E[]) new Object[i];
        int i2 = 0;
        while (true) {
            E[] eArr2 = this.elements;
            if (i2 < eArr2.length) {
                eArr[i2] = eArr2[i2];
                i2++;
            } else {
                this.elements = eArr;
                this.updated = true;
                return;
            }
        }
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return super.toString();
    }
}
