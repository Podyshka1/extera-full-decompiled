package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Assertions {
    @Pure
    public static void checkArgument(boolean z) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline0.m847m();
    }

    @Pure
    public static void checkArgument(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @Pure
    public static int checkIndex(int i, int i2, int i3) {
        if (i < i2 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    @Pure
    public static void checkState(boolean z) {
        if (z) {
            return;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m863m();
    }

    @Pure
    public static void checkState(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T checkStateNotNull(T t) {
        if (t != null) {
            return t;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m863m();
        return null;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T checkStateNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T checkNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static String checkNotEmpty(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        Segment$$ExternalSyntheticBUOutline0.m847m();
        return null;
    }
}
