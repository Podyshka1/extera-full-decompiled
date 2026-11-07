package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.u */
/* JADX INFO: loaded from: classes5.dex */
final class C1796u implements av {

    /* JADX INFO: renamed from: a */
    private Context f354a;

    public /* synthetic */ C1796u(AbstractC1795t abstractC1795t) {
    }

    @Override // com.google.android.play.core.integrity.av
    /* JADX INFO: renamed from: b */
    public final aw mo355b() {
        com.google.android.play.integrity.internal.ba.m436a(this.f354a, Context.class);
        return new C1798w(this.f354a, null);
    }

    /* JADX INFO: renamed from: a */
    public final C1796u m385a(Context context) {
        context.getClass();
        this.f354a = context;
        return this;
    }
}
