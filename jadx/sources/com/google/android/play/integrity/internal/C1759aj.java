package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.aj */
/* JADX INFO: loaded from: classes5.dex */
public final class C1759aj implements InterfaceC1758ai {

    /* JADX INFO: renamed from: a */
    private static final C1759aj f562a = new C1759aj(null);

    /* JADX INFO: renamed from: b */
    private final Object f563b;

    private C1759aj(Object obj) {
        this.f563b = obj;
    }

    /* JADX INFO: renamed from: b */
    public static InterfaceC1758ai m454b(Object obj) {
        if (obj != null) {
            return new C1759aj(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1761al
    /* JADX INFO: renamed from: a */
    public final Object mo394a() {
        return this.f563b;
    }
}
