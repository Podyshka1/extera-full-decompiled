package j$.util.concurrent;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: j$.util.concurrent.b */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2106b implements Collection, Serializable {
    private static final long serialVersionUID = 7249069246763182397L;

    /* JADX INFO: renamed from: a */
    public final ConcurrentHashMap f725a;

    @Override // java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract Iterator iterator();

    @Override // java.util.Collection, java.util.Set
    public abstract boolean remove(Object obj);

    public AbstractC2106b(ConcurrentHashMap concurrentHashMap) {
        this.f725a = concurrentHashMap;
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f725a.clear();
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f725a.size();
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f725a.isEmpty();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        long jM711j = this.f725a.m711j();
        if (jM711j < 0) {
            jM711j = 0;
        }
        if (jM711j > 2147483639) {
            throw new OutOfMemoryError("Required array size too large");
        }
        int i = (int) jM711j;
        Object[] objArrCopyOf = new Object[i];
        int i2 = 0;
        for (Object obj : this) {
            if (i2 == i) {
                if (i >= 2147483639) {
                    throw new OutOfMemoryError("Required array size too large");
                }
                int i3 = i < 1073741819 ? (i >>> 1) + 1 + i : 2147483639;
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                i = i3;
            }
            objArrCopyOf[i2] = obj;
            i2++;
        }
        return i2 == i ? objArrCopyOf : Arrays.copyOf(objArrCopyOf, i2);
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        long jM711j = this.f725a.m711j();
        if (jM711j < 0) {
            jM711j = 0;
        }
        if (jM711j > 2147483639) {
            throw new OutOfMemoryError("Required array size too large");
        }
        int i = (int) jM711j;
        Object[] objArrCopyOf = objArr.length >= i ? objArr : (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        int length = objArrCopyOf.length;
        int i2 = 0;
        for (Object obj : this) {
            if (i2 == length) {
                if (length >= 2147483639) {
                    throw new OutOfMemoryError("Required array size too large");
                }
                int i3 = length < 1073741819 ? (length >>> 1) + 1 + length : 2147483639;
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                length = i3;
            }
            objArrCopyOf[i2] = obj;
            i2++;
        }
        if (objArr != objArrCopyOf || i2 >= length) {
            return i2 == length ? objArrCopyOf : Arrays.copyOf(objArrCopyOf, i2);
        }
        objArrCopyOf[i2] = null;
        return objArrCopyOf;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        if (it.hasNext()) {
            while (true) {
                Object next = it.next();
                if (next == this) {
                    next = "(this Collection)";
                }
                sb.append(next);
                if (!it.hasNext()) {
                    break;
                }
                sb.append(", ");
            }
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        if (collection == this) {
            return true;
        }
        for (Object obj : collection) {
            if (obj == null || !contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        collection.getClass();
        C2115k[] c2115kArr = this.f725a.f709a;
        boolean zRemove = false;
        if (c2115kArr == null) {
            return false;
        }
        if ((collection instanceof Set) && collection.size() > c2115kArr.length) {
            Iterator it = iterator();
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    zRemove = true;
                }
            }
            return zRemove;
        }
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            zRemove |= remove(it2.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        Iterator it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }
}
