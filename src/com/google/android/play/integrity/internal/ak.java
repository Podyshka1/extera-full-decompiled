package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ak {
    /* JADX INFO: renamed from: a */
    public static void m360a(Object obj, Class cls) {
        if (obj == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }
}
