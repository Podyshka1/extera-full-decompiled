package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class aj implements ai {

    /* JADX INFO: renamed from: a */
    private static final aj f356a = new aj(null);

    /* JADX INFO: renamed from: b */
    private final Object f357b;

    private aj(Object obj) {
        this.f357b = obj;
    }

    /* JADX INFO: renamed from: b */
    public static ai m359b(Object obj) {
        if (obj != null) {
            return new aj(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // com.google.android.play.integrity.internal.al
    /* JADX INFO: renamed from: a */
    public final Object mo299a() {
        return this.f357b;
    }
}
