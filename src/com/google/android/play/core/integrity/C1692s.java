package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.s */
/* JADX INFO: loaded from: classes5.dex */
final class C1692s {

    /* JADX INFO: renamed from: a */
    private final C1692s f381a = this;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.al f382b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.al f383c;

    /* JADX INFO: renamed from: d */
    private final com.google.android.play.integrity.internal.al f384d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.play.integrity.internal.al f385e;

    /* JADX INFO: renamed from: f */
    private final com.google.android.play.integrity.internal.al f386f;

    public /* synthetic */ C1692s(Context context, C1691r c1691r) {
        com.google.android.play.integrity.internal.ai aiVarM418b = com.google.android.play.integrity.internal.aj.m418b(context);
        this.f382b = aiVarM418b;
        com.google.android.play.integrity.internal.al alVarM417b = com.google.android.play.integrity.internal.ah.m417b(an.f327a);
        this.f383c = alVarM417b;
        com.google.android.play.integrity.internal.al alVarM417b2 = com.google.android.play.integrity.internal.ah.m417b(new az(aiVarM418b, alVarM417b));
        this.f384d = alVarM417b2;
        com.google.android.play.integrity.internal.al alVarM417b3 = com.google.android.play.integrity.internal.ah.m417b(new be(alVarM417b2));
        this.f385e = alVarM417b3;
        this.f386f = com.google.android.play.integrity.internal.ah.m417b(new am(alVarM417b2, alVarM417b3));
    }

    /* JADX INFO: renamed from: a */
    public final StandardIntegrityManager m385a() {
        return (StandardIntegrityManager) this.f386f.mo358a();
    }
}
