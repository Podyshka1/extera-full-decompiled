package com.google.common.collect;

import com.google.common.base.Preconditions;
import okhttp3.internal.http.RealInterceptorChain$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
abstract class CollectPreconditions {
    public static void checkEntryNotNull(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        RealInterceptorChain$$ExternalSyntheticBUOutline0.m910m("null value in entry: ", obj, "=null");
    }

    public static int checkNonnegative(int i, String str) {
        if (i >= 0) {
            return i;
        }
        CollectPreconditions$$ExternalSyntheticBUOutline0.m457m(str, i);
        return 0;
    }

    public static void checkRemove(boolean z) {
        Preconditions.checkState(z, "no calls to next() since the last call to remove()");
    }
}
