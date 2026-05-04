package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.q */
/* JADX INFO: loaded from: classes5.dex */
final class C1636q implements ai {

    /* JADX INFO: renamed from: a */
    private Context f321a;

    private C1636q() {
    }

    /* synthetic */ C1636q(C1635p c1635p) {
    }

    /* JADX INFO: renamed from: a */
    public final C1636q m325a(Context context) {
        context.getClass();
        this.f321a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.ai
    /* JADX INFO: renamed from: b */
    public final C1638s mo300b() {
        com.google.android.play.integrity.internal.ak.m360a(this.f321a, Context.class);
        return new C1638s(this.f321a, null);
    }
}
