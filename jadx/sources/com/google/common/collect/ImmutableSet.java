package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
import org.telegram.tgnet.TLObject;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableSet extends ImmutableCollection implements Set, p022j$.util.Set {
    private transient ImmutableList asList;

    private static boolean shouldTrim(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public abstract UnmodifiableIterator iterator();

    /* JADX INFO: renamed from: of */
    public static ImmutableSet m492of() {
        return RegularImmutableSet.EMPTY;
    }

    /* JADX INFO: renamed from: of */
    public static ImmutableSet m493of(Object obj) {
        return new SingletonImmutableSet(obj);
    }

    /* JADX INFO: renamed from: of */
    public static ImmutableSet m494of(Object obj, Object obj2) {
        return construct(2, obj, obj2);
    }

    /* JADX INFO: renamed from: of */
    public static ImmutableSet m495of(Object obj, Object obj2, Object obj3) {
        return construct(3, obj, obj2, obj3);
    }

    /* JADX INFO: renamed from: of */
    public static ImmutableSet m496of(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return construct(5, obj, obj2, obj3, obj4, obj5);
    }

    /* JADX INFO: renamed from: of */
    public static ImmutableSet m497of(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Preconditions.checkArgument(objArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = objArr.length + 6;
        Object[] objArr2 = new Object[length];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, objArr.length);
        return construct(length, objArr2);
    }

    private static ImmutableSet construct(int i, Object... objArr) {
        if (i == 0) {
            return m492of();
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return m493of(obj);
        }
        int iChooseTableSize = chooseTableSize(i);
        Object[] objArr2 = new Object[iChooseTableSize];
        int i2 = iChooseTableSize - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object objCheckElementNotNull = ObjectArrays.checkElementNotNull(objArr[i5], i5);
            int iHashCode = objCheckElementNotNull.hashCode();
            int iSmear = Hashing.smear(iHashCode);
            while (true) {
                int i6 = iSmear & i2;
                Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = objCheckElementNotNull;
                    objArr2[i6] = objCheckElementNotNull;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj2.equals(objCheckElementNotNull)) {
                    break;
                }
                iSmear++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return new SingletonImmutableSet(obj3);
        }
        if (chooseTableSize(i4) < iChooseTableSize / 2) {
            return construct(i4, objArr);
        }
        if (shouldTrim(i4, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new RegularImmutableSet(objArr, i3, objArr2, i2, i4);
    }

    static int chooseTableSize(int i) {
        int iMax = Math.max(i, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
            while (((double) iHighestOneBit) * 0.7d < iMax) {
                iHighestOneBit <<= 1;
            }
            return iHighestOneBit;
        }
        Preconditions.checkArgument(iMax < 1073741824, "collection too large");
        return TLObject.FLAG_30;
    }

    public static ImmutableSet copyOf(Collection collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return construct(array.length, array);
    }

    public static ImmutableSet copyOf(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return m492of();
        }
        if (length == 1) {
            return m493of(objArr[0]);
        }
        return construct(objArr.length, (Object[]) objArr.clone());
    }

    ImmutableSet() {
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.hashCodeImpl(this);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList asList() {
        ImmutableList immutableList = this.asList;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList immutableListCreateAsList = createAsList();
        this.asList = immutableListCreateAsList;
        return immutableListCreateAsList;
    }

    ImmutableList createAsList() {
        return ImmutableList.asImmutableList(toArray());
    }
}
