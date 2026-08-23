package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.q */
/* JADX INFO: loaded from: classes5.dex */
final class C1690q implements ai {

    /* JADX INFO: renamed from: a */
    private Context f380a;

    private C1690q() {
    }

    public /* synthetic */ C1690q(C1689p c1689p) {
    }

    /* JADX INFO: renamed from: a */
    public final C1690q m384a(Context context) {
        context.getClass();
        this.f380a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ai
    /* JADX INFO: renamed from: b */
    public final C1692s mo359b() {
        com.google.android.play.integrity.internal.ak.m419a(this.f380a, Context.class);
        return new C1692s(this.f380a, null);
    }
}
