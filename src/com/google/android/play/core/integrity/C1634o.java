package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.o */
/* JADX INFO: loaded from: classes5.dex */
final class C1634o {

    /* JADX INFO: renamed from: a */
    private final C1634o f316a = this;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.al f317b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.al f318c;

    /* JADX INFO: renamed from: d */
    private final com.google.android.play.integrity.internal.al f319d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.play.integrity.internal.al f320e;

    /* synthetic */ C1634o(Context context, C1633n c1633n) {
        com.google.android.play.integrity.internal.ai aiVarM359b = com.google.android.play.integrity.internal.aj.m359b(context);
        this.f317b = aiVarM359b;
        com.google.android.play.integrity.internal.al alVarM358b = com.google.android.play.integrity.internal.ah.m358b(C1644y.f333a);
        this.f318c = alVarM358b;
        com.google.android.play.integrity.internal.al alVarM358b2 = com.google.android.play.integrity.internal.ah.m358b(new af(aiVarM359b, alVarM358b));
        this.f319d = alVarM358b2;
        this.f320e = com.google.android.play.integrity.internal.ah.m358b(new C1643x(alVarM358b2));
    }

    /* JADX INFO: renamed from: a */
    public final IntegrityManager m324a() {
        return (IntegrityManager) this.f320e.mo299a();
    }
}
