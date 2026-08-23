package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.m */
/* JADX INFO: loaded from: classes5.dex */
final class C1684m implements InterfaceC1693t {

    /* JADX INFO: renamed from: a */
    private Context f370a;

    private C1684m() {
    }

    public /* synthetic */ C1684m(C1683l c1683l) {
    }

    /* JADX INFO: renamed from: a */
    public final C1684m m379a(Context context) {
        context.getClass();
        this.f370a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.InterfaceC1693t
    /* JADX INFO: renamed from: b */
    public final C1688o mo380b() {
        com.google.android.play.integrity.internal.ak.m419a(this.f370a, Context.class);
        return new C1688o(this.f370a, null);
    }
}
