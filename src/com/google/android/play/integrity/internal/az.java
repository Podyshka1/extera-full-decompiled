package com.google.android.play.integrity.internal;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public final class az implements ay {

    /* JADX INFO: renamed from: a */
    private final Object f405a;

    private az(Object obj) {
        this.f405a = obj;
    }

    /* JADX INFO: renamed from: b */
    public static ay m434b(Object obj) {
        if (obj != null) {
            return new az(obj);
        }
        f$$ExternalSyntheticBUOutline2.m213m("instance cannot be null");
        return null;
    }

    @Override // com.google.android.play.integrity.internal.bd
    /* JADX INFO: renamed from: a */
    public final Object mo353a() {
        return this.f405a;
    }
}
