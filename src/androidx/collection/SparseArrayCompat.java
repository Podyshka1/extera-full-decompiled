package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public class SparseArrayCompat implements Cloneable {
    public /* synthetic */ boolean garbage;
    public /* synthetic */ int[] keys;
    public /* synthetic */ int size;
    public /* synthetic */ Object[] values;

    public SparseArrayCompat() {
        this(0, 1, null);
    }

    public SparseArrayCompat(int i) {
        if (i == 0) {
            this.keys = ContainerHelpersKt.EMPTY_INTS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i);
            this.keys = new int[iIdealIntArraySize];
            this.values = new Object[iIdealIntArraySize];
        }
    }

    public /* synthetic */ SparseArrayCompat(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat m2049clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) objClone;
        sparseArrayCompat.keys = (int[]) this.keys.clone();
        sparseArrayCompat.values = (Object[]) this.values.clone();
        return sparseArrayCompat;
    }

    public Object get(int i) {
        return SparseArrayCompatKt.commonGet(this, i);
    }

    public Object get(int i, Object obj) {
        return SparseArrayCompatKt.commonGet(this, i, obj);
    }

    public void put(int i, Object obj) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, i);
        if (iBinarySearch >= 0) {
            this.values[iBinarySearch] = obj;
            return;
        }
        int i2 = ~iBinarySearch;
        if (i2 < this.size && this.values[i2] == SparseArrayCompatKt.DELETED) {
            this.keys[i2] = i;
            this.values[i2] = obj;
            return;
        }
        if (this.garbage && this.size >= this.keys.length) {
            SparseArrayCompatKt.m111gc(this);
            i2 = ~ContainerHelpersKt.binarySearch(this.keys, this.size, i);
        }
        int i3 = this.size;
        if (i3 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.keys, iIdealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(...)");
            this.keys = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
            this.values = objArrCopyOf;
        }
        int i4 = this.size;
        if (i4 - i2 != 0) {
            int[] iArr = this.keys;
            int i5 = i2 + 1;
            ArraysKt.copyInto(iArr, iArr, i5, i2, i4);
            Object[] objArr = this.values;
            ArraysKt.copyInto(objArr, objArr, i5, i2, this.size);
        }
        this.keys[i2] = i;
        this.values[i2] = obj;
        this.size++;
    }

    public int size() {
        if (this.garbage) {
            SparseArrayCompatKt.m111gc(this);
        }
        return this.size;
    }

    public int keyAt(int i) {
        if (this.garbage) {
            SparseArrayCompatKt.m111gc(this);
        }
        return this.keys[i];
    }

    public Object valueAt(int i) {
        if (this.garbage) {
            SparseArrayCompatKt.m111gc(this);
        }
        Object[] objArr = this.values;
        if (i >= objArr.length) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        return objArr[i];
    }

    public int indexOfValue(Object obj) {
        if (this.garbage) {
            SparseArrayCompatKt.m111gc(this);
        }
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.values[i2] == obj) {
                return i2;
            }
        }
        return -1;
    }

    public void clear() {
        int i = this.size;
        Object[] objArr = this.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.size = 0;
        this.garbage = false;
    }

    public void append(int i, Object obj) {
        int i2 = this.size;
        if (i2 != 0 && i <= this.keys[i2 - 1]) {
            put(i, obj);
            return;
        }
        if (this.garbage && i2 >= this.keys.length) {
            SparseArrayCompatKt.m111gc(this);
        }
        int i3 = this.size;
        if (i3 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i3 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.keys, iIdealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(...)");
            this.keys = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.values, iIdealIntArraySize);
            Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
            this.values = objArrCopyOf;
        }
        this.keys[i3] = i;
        this.values[i3] = obj;
        this.size = i3 + 1;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.size * 28);
        sb.append('{');
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i2));
            sb.append(SignatureVisitor.INSTANCEOF);
            Object objValueAt = valueAt(i2);
            if (objValueAt != this) {
                sb.append(objValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
