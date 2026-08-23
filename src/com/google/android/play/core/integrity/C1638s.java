package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.s */
/* JADX INFO: loaded from: classes5.dex */
final class C1638s {

    /* JADX INFO: renamed from: a */
    private final C1638s f322a = this;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.al f323b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.al f324c;

    /* JADX INFO: renamed from: d */
    private final com.google.android.play.integrity.internal.al f325d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.play.integrity.internal.al f326e;

    /* JADX INFO: renamed from: f */
    private final com.google.android.play.integrity.internal.al f327f;

    /* synthetic */ C1638s(Context context, C1637r c1637r) {
        com.google.android.play.integrity.internal.ai aiVarM359b = com.google.android.play.integrity.internal.aj.m359b(context);
        this.f323b = aiVarM359b;
        com.google.android.play.integrity.internal.al alVarM358b = com.google.android.play.integrity.internal.ah.m358b(an.f268a);
        this.f324c = alVarM358b;
        com.google.android.play.integrity.internal.al alVarM358b2 = com.google.android.play.integrity.internal.ah.m358b(new az(aiVarM359b, alVarM358b));
        this.f325d = alVarM358b2;
        com.google.android.play.integrity.internal.al alVarM358b3 = com.google.android.play.integrity.internal.ah.m358b(new be(alVarM358b2));
        this.f326e = alVarM358b3;
        this.f327f = com.google.android.play.integrity.internal.ah.m358b(new am(alVarM358b2, alVarM358b3));
    }

    /* JADX INFO: renamed from: a */
    public final StandardIntegrityManager m326a() {
        return (StandardIntegrityManager) this.f327f.mo299a();
    }
}
