package com.android.p003dx.ssa;

import com.android.p003dx.util.BitIntSet;
import com.android.p003dx.util.IntSet;
import com.android.p003dx.util.ListIntSet;

/* JADX INFO: loaded from: classes4.dex */
public final class SetFactory {
    private static final int DOMFRONT_SET_THRESHOLD_SIZE = 3072;
    private static final int INTERFERENCE_SET_THRESHOLD_SIZE = 3072;
    private static final int LIVENESS_SET_THRESHOLD_SIZE = 3072;

    static IntSet makeDomFrontSet(int i) {
        return i <= 3072 ? new BitIntSet(i) : new ListIntSet();
    }

    public static IntSet makeInterferenceSet(int i) {
        return i <= 3072 ? new BitIntSet(i) : new ListIntSet();
    }

    static IntSet makeLivenessSet(int i) {
        return i <= 3072 ? new BitIntSet(i) : new ListIntSet();
    }
}
