package com.google.android.play.integrity.internal;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public final class az implements ay {

    /* JADX INFO: renamed from: a */
    private final Object f406a;

    private az(Object obj) {
        this.f406a = obj;
    }

    /* JADX INFO: renamed from: b */
    public static ay m458b(Object obj) {
        if (obj != null) {
            return new az(obj);
        }
        f$$ExternalSyntheticBUOutline2.m216m("instance cannot be null");
        return null;
    }

    @Override // com.google.android.play.integrity.internal.bd
    /* JADX INFO: renamed from: a */
    public final Object mo377a() {
        return this.f406a;
    }
}
