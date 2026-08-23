package com.google.common.primitives;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Longs {

    public static final class LongArrayAsList extends AbstractList<Long> implements RandomAccess, Serializable {
    }

    public static int hashCode(long j) {
        return Long.hashCode(j);
    }

    public static long max(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            long j2 = jArr[i];
            if (j2 > j) {
                j = j2;
            }
        }
        return j;
    }

    public static long[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof LongArrayAsList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(collection);
            throw null;
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = ((Number) Preconditions.checkNotNull(array[i])).longValue();
        }
        return jArr;
    }
}
