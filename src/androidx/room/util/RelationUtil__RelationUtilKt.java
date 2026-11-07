package androidx.room.util;

import androidx.collection.LongSparseArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u001aE\u0010\b\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0001\u0012\u0004\u0012\u00020\u00060\u0005H\u0007¢\u0006\u0004\b\b\u0010\t\"\u0014\u0010\u000b\u001a\u00020\n8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"V", "Landroidx/collection/LongSparseArray;", "map", _UrlKt.FRAGMENT_ENCODE_SET, "isRelationCollection", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "fetchBlock", "recursiveFetchLongSparseArray", "(Landroidx/collection/LongSparseArray;ZLkotlin/jvm/functions/Function1;)V", _UrlKt.FRAGMENT_ENCODE_SET, "MAX_BIND_PARAMETER_CNT", "I", "room-runtime"}, m910k = 5, mv = {2, 1, 0}, xi = 48, xs = "androidx/room/util/RelationUtil")
abstract /* synthetic */ class RelationUtil__RelationUtilKt {
    public static final <V> void recursiveFetchLongSparseArray(LongSparseArray<V> longSparseArray, boolean z, Function1<? super LongSparseArray<V>, Unit> function1) {
        LongSparseArray<? extends V> longSparseArray2 = new LongSparseArray<>(999);
        int size = longSparseArray.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (z) {
                longSparseArray2.put(longSparseArray.keyAt(i), longSparseArray.valueAt(i));
            } else {
                longSparseArray2.put(longSparseArray.keyAt(i), null);
            }
            i++;
            i2++;
            if (i2 == 999) {
                function1.invoke(longSparseArray2);
                if (!z) {
                    longSparseArray.putAll(longSparseArray2);
                }
                longSparseArray2.clear();
                i2 = 0;
            }
        }
        if (i2 > 0) {
            function1.invoke(longSparseArray2);
            if (z) {
                return;
            }
            longSparseArray.putAll(longSparseArray2);
        }
    }
}
