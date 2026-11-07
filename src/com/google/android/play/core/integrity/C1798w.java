package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.w */
/* JADX INFO: loaded from: classes5.dex */
final class C1798w implements aw {

    /* JADX INFO: renamed from: a */
    private final com.google.android.play.integrity.internal.bb f355a;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.bb f356b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.bb f357c;

    /* JADX INFO: renamed from: d */
    private final com.google.android.play.integrity.internal.bb f358d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.play.integrity.internal.bb f359e;

    /* JADX INFO: renamed from: f */
    private final com.google.android.play.integrity.internal.bb f360f;

    public /* synthetic */ C1798w(Context context, AbstractC1797v abstractC1797v) {
        com.google.android.play.integrity.internal.ay ayVarM434b = com.google.android.play.integrity.internal.az.m434b(context);
        this.f355a = ayVarM434b;
        com.google.android.play.integrity.internal.bb bbVarM433b = com.google.android.play.integrity.internal.ax.m433b(bb.f307a);
        this.f356b = bbVarM433b;
        au auVar = new au(ayVarM434b, AbstractC1793n.f353a);
        this.f357c = auVar;
        com.google.android.play.integrity.internal.bb bbVarM433b2 = com.google.android.play.integrity.internal.ax.m433b(new bp(ayVarM434b, bbVarM433b, auVar, AbstractC1793n.f353a));
        this.f358d = bbVarM433b2;
        com.google.android.play.integrity.internal.bb bbVarM433b3 = com.google.android.play.integrity.internal.ax.m433b(new bu(bbVarM433b2));
        this.f359e = bbVarM433b3;
        this.f360f = com.google.android.play.integrity.internal.ax.m433b(new ba(bbVarM433b2, bbVarM433b3));
    }

    @Override // com.google.android.play.core.integrity.aw
    /* JADX INFO: renamed from: a */
    public final StandardIntegrityManager mo356a() {
        return (StandardIntegrityManager) this.f360f.mo353a();
    }
}
