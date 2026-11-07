package androidx.core.util;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TypedValueCompat {
    @SuppressLint({"WrongConstant"})
    public static int getUnitFromComplexDimension(int i) {
        return i & 15;
    }
}
