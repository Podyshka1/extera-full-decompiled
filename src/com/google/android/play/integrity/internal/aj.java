package com.google.android.play.integrity.internal;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public final class aj implements ai {

    /* JADX INFO: renamed from: a */
    private static final aj f415a = new aj(null);

    /* JADX INFO: renamed from: b */
    private final Object f416b;

    private aj(Object obj) {
        this.f416b = obj;
    }

    /* JADX INFO: renamed from: b */
    public static ai m418b(Object obj) {
        if (obj != null) {
            return new aj(obj);
        }
        f$$ExternalSyntheticBUOutline2.m179m("instance cannot be null");
        return null;
    }

    @Override // com.google.android.play.integrity.internal.al
    /* JADX INFO: renamed from: a */
    public final Object mo358a() {
        return this.f416b;
    }
}
