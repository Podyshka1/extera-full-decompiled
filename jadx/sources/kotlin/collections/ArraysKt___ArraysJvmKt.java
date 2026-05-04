package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class ArraysKt___ArraysJvmKt extends ArraysKt__ArraysKt {
    public static List asList(Object[] objArr) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        List listAsList = ArraysUtilJVM.asList(objArr);
        Intrinsics.checkNotNullExpressionValue(listAsList, "asList(...)");
        return listAsList;
    }

    /* JADX INFO: renamed from: kotlin.collections.ArraysKt___ArraysJvmKt$asList$3 */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class C25893 extends AbstractList implements RandomAccess {
        final /* synthetic */ int[] $this_asList;

        C25893(int[] iArr) {
            this.$this_asList = iArr;
        }

        @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof Integer) {
                return contains(((Number) obj).intValue());
            }
            return false;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return indexOf(((Number) obj).intValue());
            }
            return -1;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return lastIndexOf(((Number) obj).intValue());
            }
            return -1;
        }

        @Override // kotlin.collections.AbstractCollection
        public int getSize() {
            return this.$this_asList.length;
        }

        @Override // kotlin.collections.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.$this_asList.length == 0;
        }

        public boolean contains(int i) {
            return ArraysKt___ArraysKt.contains(this.$this_asList, i);
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public Integer get(int i) {
            return Integer.valueOf(this.$this_asList[i]);
        }

        public int indexOf(int i) {
            return ArraysKt___ArraysKt.indexOf(this.$this_asList, i);
        }

        public int lastIndexOf(int i) {
            return ArraysKt___ArraysKt.lastIndexOf(this.$this_asList, i);
        }
    }

    public static List asList(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        return new C25893(iArr);
    }

    public static /* synthetic */ Object[] copyInto$default(Object[] objArr, Object[] objArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = objArr.length;
        }
        return copyInto(objArr, objArr2, i, i2, i3);
    }

    public static Object[] copyInto(Object[] objArr, Object[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(objArr, i2, destination, i, i3 - i2);
        return destination;
    }

    public static /* synthetic */ byte[] copyInto$default(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = bArr.length;
        }
        return copyInto(bArr, bArr2, i, i2, i3);
    }

    public static byte[] copyInto(byte[] bArr, byte[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(bArr, i2, destination, i, i3 - i2);
        return destination;
    }

    public static /* synthetic */ int[] copyInto$default(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = iArr.length;
        }
        return copyInto(iArr, iArr2, i, i2, i3);
    }

    public static int[] copyInto(int[] iArr, int[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(iArr, i2, destination, i, i3 - i2);
        return destination;
    }

    public static long[] copyInto(long[] jArr, long[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(jArr, i2, destination, i, i3 - i2);
        return destination;
    }

    public static /* synthetic */ float[] copyInto$default(float[] fArr, float[] fArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = fArr.length;
        }
        return copyInto(fArr, fArr2, i, i2, i3);
    }

    public static final float[] copyInto(float[] fArr, float[] destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        System.arraycopy(fArr, i2, destination, i, i3 - i2);
        return destination;
    }

    public static Object[] copyOfRange(Object[] objArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        ArraysKt__ArraysJVMKt.copyOfRangeToIndexCheck(i2, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i, i2);
        Intrinsics.checkNotNullExpressionValue(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static byte[] copyOfRange(byte[] bArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        ArraysKt__ArraysJVMKt.copyOfRangeToIndexCheck(i2, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i, i2);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static /* synthetic */ void fill$default(Object[] objArr, Object obj, int i, int i2, int i3, Object obj2) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = objArr.length;
        }
        fill(objArr, obj, i, i2);
    }

    public static void fill(Object[] objArr, Object obj, int i, int i2) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        Arrays.fill(objArr, i, i2, obj);
    }

    public static void fill(byte[] bArr, byte b, int i, int i2) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Arrays.fill(bArr, i, i2, b);
    }

    public static /* synthetic */ void fill$default(int[] iArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = iArr.length;
        }
        fill(iArr, i, i2, i3);
    }

    public static final void fill(int[] iArr, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        Arrays.fill(iArr, i2, i3, i);
    }

    public static /* synthetic */ void fill$default(long[] jArr, long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = jArr.length;
        }
        fill(jArr, j, i, i2);
    }

    public static final void fill(long[] jArr, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        Arrays.fill(jArr, i, i2, j);
    }

    public static /* synthetic */ void fill$default(boolean[] zArr, boolean z, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = zArr.length;
        }
        fill(zArr, z, i, i2);
    }

    public static final void fill(boolean[] zArr, boolean z, int i, int i2) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        Arrays.fill(zArr, i, i2, z);
    }

    public static Object[] plus(Object[] objArr, Object[] elements) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        int length = objArr.length;
        int length2 = elements.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, length + length2);
        System.arraycopy(elements, 0, objArrCopyOf, length, length2);
        Intrinsics.checkNotNull(objArrCopyOf);
        return objArrCopyOf;
    }

    public static final void sort(Object[] objArr) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        if (objArr.length > 1) {
            Arrays.sort(objArr);
        }
    }

    public static void sortWith(Object[] objArr, Comparator comparator) {
        Intrinsics.checkNotNullParameter(objArr, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (objArr.length > 1) {
            Arrays.sort(objArr, comparator);
        }
    }

    public static Integer[] toTypedArray(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        Integer[] numArr = new Integer[iArr.length];
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }
}
