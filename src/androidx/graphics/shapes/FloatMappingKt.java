package androidx.graphics.shapes;

import androidx.collection.FloatList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import okio.Options$Companion$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0000\u001a\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H\u0000¨\u0006\u000e"}, d2 = {"linearMap", _UrlKt.FRAGMENT_ENCODE_SET, "xValues", "Landroidx/collection/FloatList;", "yValues", "x", "progressInRange", _UrlKt.FRAGMENT_ENCODE_SET, "progress", "progressFrom", "progressTo", "validateProgress", _UrlKt.FRAGMENT_ENCODE_SET, "p", "graphics-shapes_release"}, m862k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFloatMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/FloatList\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1#2:100\n75#3:101\n190#3,3:104\n253#3,4:107\n193#3,2:111\n258#3:113\n195#3:114\n223#4,2:102\n1774#4,4:115\n*S KotlinDebug\n*F\n+ 1 FloatMapping.kt\nandroidx/graphics/shapes/FloatMappingKt\n*L\n42#1:101\n93#1:104,3\n93#1:107,4\n93#1:111,2\n93#1:113\n93#1:114\n42#1:102,2\n96#1:115,4\n*E\n"})
public abstract class FloatMappingKt {
    public static final boolean progressInRange(float f, float f2, float f3) {
        return f3 >= f2 ? f2 <= f && f <= f3 : f >= f2 || f <= f3;
    }

    public static final void validateProgress(FloatList floatList) {
        int i;
        Boolean boolValueOf = Boolean.TRUE;
        float[] fArr = floatList.content;
        int i2 = floatList._size;
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
            Options$Companion$$ExternalSyntheticBUOutline0.m923m("FloatMapping - Progress outside of range: ", FloatList.joinToString$default(floatList, null, null, null, 0, null, 31, null));
            return;
        }
        Iterable iterableUntil = RangesKt.until(1, floatList.get_size());
        if ((iterableUntil instanceof Collection) && ((Collection) iterableUntil).isEmpty()) {
            i = 0;
        } else {
            Iterator it = iterableUntil.iterator();
            i = 0;
            while (it.hasNext()) {
                int iNextInt = ((IntIterator) it).nextInt();
                if (floatList.get(iNextInt) < floatList.get(iNextInt - 1) && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        if (i <= 1) {
            return;
        }
        Options$Companion$$ExternalSyntheticBUOutline0.m923m("FloatMapping - Progress wraps more than once: ", FloatList.joinToString$default(floatList, null, null, null, 0, null, 31, null));
    }

    public static final float linearMap(FloatList floatList, FloatList floatList2, float f) {
        if (0.0f > f || f > 1.0f) {
            throw new IllegalArgumentException(("Invalid progress: " + f).toString());
        }
        Iterator<Integer> it = RangesKt.until(0, floatList._size).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            int i = iNextInt + 1;
            if (progressInRange(f, floatList.get(iNextInt), floatList.get(i % floatList.get_size()))) {
                int i2 = i % floatList.get_size();
                float fPositiveModulo = Utils.positiveModulo(floatList.get(i2) - floatList.get(iNextInt), 1.0f);
                return Utils.positiveModulo(floatList2.get(iNextInt) + (Utils.positiveModulo(floatList2.get(i2) - floatList2.get(iNextInt), 1.0f) * (fPositiveModulo < 0.001f ? 0.5f : Utils.positiveModulo(f - floatList.get(iNextInt), 1.0f) / fPositiveModulo)), 1.0f);
            }
        }
        UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m("Collection contains no element matching the predicate.");
        return 0.0f;
    }
}
