package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.w */
/* JADX INFO: loaded from: classes5.dex */
final class C1919w implements aw {

    /* JADX INFO: renamed from: a */
    private final com.google.android.play.integrity.internal.bb f356a;

    /* JADX INFO: renamed from: b */
    private final com.google.android.play.integrity.internal.bb f357b;

    /* JADX INFO: renamed from: c */
    private final com.google.android.play.integrity.internal.bb f358c;

    /* JADX INFO: renamed from: d */
    private final com.google.android.play.integrity.internal.bb f359d;

    /* JADX INFO: renamed from: e */
    private final com.google.android.play.integrity.internal.bb f360e;

    /* JADX INFO: renamed from: f */
    private final com.google.android.play.integrity.internal.bb f361f;

    public /* synthetic */ C1919w(Context context, AbstractC1918v abstractC1918v) {
        com.google.android.play.integrity.internal.ay ayVarM458b = com.google.android.play.integrity.internal.az.m458b(context);
        this.f356a = ayVarM458b;
        com.google.android.play.integrity.internal.bb bbVarM457b = com.google.android.play.integrity.internal.ax.m457b(bb.f308a);
        this.f357b = bbVarM457b;
        au auVar = new au(ayVarM458b, AbstractC1914n.f354a);
        this.f358c = auVar;
        com.google.android.play.integrity.internal.bb bbVarM457b2 = com.google.android.play.integrity.internal.ax.m457b(new bp(ayVarM458b, bbVarM457b, auVar, AbstractC1914n.f354a));
        this.f359d = bbVarM457b2;
        com.google.android.play.integrity.internal.bb bbVarM457b3 = com.google.android.play.integrity.internal.ax.m457b(new bu(bbVarM457b2));
        this.f360e = bbVarM457b3;
        this.f361f = com.google.android.play.integrity.internal.ax.m457b(new ba(bbVarM457b2, bbVarM457b3));
    }

    @Override // com.google.android.play.core.integrity.aw
    /* JADX INFO: renamed from: a */
    public final StandardIntegrityManager mo380a() {
        return (StandardIntegrityManager) this.f361f.mo377a();
    }
}
