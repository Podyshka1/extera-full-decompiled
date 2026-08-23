package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.o */
/* JADX INFO: loaded from: classes5.dex */
final class C1688o {

    /* JADX INFO: renamed from: a */
    private final C1688o f375a = this;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.al f376b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.al f377c;

    /* JADX INFO: renamed from: d */
    private final com.google.android.play.integrity.internal.al f378d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.play.integrity.internal.al f379e;

    public /* synthetic */ C1688o(Context context, C1687n c1687n) {
        com.google.android.play.integrity.internal.ai aiVarM418b = com.google.android.play.integrity.internal.aj.m418b(context);
        this.f376b = aiVarM418b;
        com.google.android.play.integrity.internal.al alVarM417b = com.google.android.play.integrity.internal.ah.m417b(C1698y.f392a);
        this.f377c = alVarM417b;
        com.google.android.play.integrity.internal.al alVarM417b2 = com.google.android.play.integrity.internal.ah.m417b(new af(aiVarM418b, alVarM417b));
        this.f378d = alVarM417b2;
        this.f379e = com.google.android.play.integrity.internal.ah.m417b(new C1697x(alVarM417b2));
    }

    /* JADX INFO: renamed from: a */
    public final IntegrityManager m383a() {
        return (IntegrityManager) this.f379e.mo358a();
    }
}
