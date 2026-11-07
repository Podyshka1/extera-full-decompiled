package com.google.firebase.sessions.dagger.internal;

import dagger.internal.Preconditions$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public abstract class Preconditions {
    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        f$$ExternalSyntheticBUOutline2.m213m(str);
        return null;
    }

    public static <T> T checkNotNullFromProvides(T t) {
        if (t != null) {
            return t;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Cannot return null from a non-@Nullable @Provides method");
        return null;
    }

    public static <T> void checkBuilderRequirement(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        Preconditions$$ExternalSyntheticBUOutline0.m499m(cls.getCanonicalName(), " must be set");
    }
}
