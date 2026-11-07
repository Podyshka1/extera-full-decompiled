package com.google.firebase.components;

import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class Preconditions {
    public static void checkArgument(boolean z, String str) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(str);
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        f$$ExternalSyntheticBUOutline2.m216m(str);
        return null;
    }

    public static void checkState(boolean z, String str) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(str);
    }
}
