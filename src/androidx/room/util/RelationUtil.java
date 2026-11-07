package androidx.room.util;

import androidx.collection.LongSparseArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"androidx/room/util/RelationUtil__RelationUtilKt"}, d2 = {}, m910k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class RelationUtil {
    public static final <V> void recursiveFetchLongSparseArray(LongSparseArray<V> longSparseArray, boolean z, Function1<? super LongSparseArray<V>, Unit> function1) {
        RelationUtil__RelationUtilKt.recursiveFetchLongSparseArray(longSparseArray, z, function1);
    }
}
