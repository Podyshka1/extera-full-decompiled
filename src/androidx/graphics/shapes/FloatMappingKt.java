package androidx.graphics.shapes;

import androidx.collection.FloatList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class FloatMappingKt {
    public static final boolean progressInRange(float f, float f2, float f3) {
        return f3 >= f2 ? f2 <= f && f <= f3 : f >= f2 || f <= f3;
    }

    public static final void validateProgress(FloatList p) {
        int i;
        Intrinsics.checkNotNullParameter(p, "p");
        Boolean boolValueOf = Boolean.TRUE;
        float[] fArr = p.content;
        int i2 = p._size;
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= i2) {
                break;
            }
            float f = fArr[i3];
            if (!boolValueOf.booleanValue() || 0.0f > f || f > 1.0f) {
                z = false;
            }
            boolValueOf = Boolean.valueOf(z);
            i3++;
        }
        if (!boolValueOf.booleanValue()) {
            throw new IllegalArgumentException(("FloatMapping - Progress outside of range: " + FloatList.joinToString$default(p, null, null, null, 0, null, 31, null)).toString());
        }
        Iterable iterableUntil = RangesKt.until(1, p.getSize());
        if ((iterableUntil instanceof Collection) && ((Collection) iterableUntil).isEmpty()) {
            i = 0;
        } else {
            Iterator it = iterableUntil.iterator();
            i = 0;
            while (it.hasNext()) {
                int iNextInt = ((IntIterator) it).nextInt();
                if (p.get(iNextInt) < p.get(iNextInt - 1) && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        if (i <= 1) {
            return;
        }
        throw new IllegalArgumentException(("FloatMapping - Progress wraps more than once: " + FloatList.joinToString$default(p, null, null, null, 0, null, 31, null)).toString());
    }

    public static final float linearMap(FloatList xValues, FloatList yValues, float f) {
        Intrinsics.checkNotNullParameter(xValues, "xValues");
        Intrinsics.checkNotNullParameter(yValues, "yValues");
        if (0.0f > f || f > 1.0f) {
            throw new IllegalArgumentException(("Invalid progress: " + f).toString());
        }
        Iterator it = RangesKt.until(0, xValues._size).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            int i = iNextInt + 1;
            if (progressInRange(f, xValues.get(iNextInt), xValues.get(i % xValues.getSize()))) {
                int size = i % xValues.getSize();
                float fPositiveModulo = Utils.positiveModulo(xValues.get(size) - xValues.get(iNextInt), 1.0f);
                return Utils.positiveModulo(yValues.get(iNextInt) + (Utils.positiveModulo(yValues.get(size) - yValues.get(iNextInt), 1.0f) * (fPositiveModulo < 0.001f ? 0.5f : Utils.positiveModulo(f - xValues.get(iNextInt), 1.0f) / fPositiveModulo)), 1.0f);
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }
}
