package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.u */
/* JADX INFO: loaded from: classes5.dex */
final class C1917u implements av {

    /* JADX INFO: renamed from: a */
    private Context f355a;

    public /* synthetic */ C1917u(AbstractC1916t abstractC1916t) {
    }

    @Override // com.google.android.play.core.integrity.av
    /* JADX INFO: renamed from: b */
    public final aw mo379b() {
        com.google.android.play.integrity.internal.ba.m460a(this.f355a, Context.class);
        return new C1919w(this.f355a, null);
    }

    /* JADX INFO: renamed from: a */
    public final C1917u m409a(Context context) {
        context.getClass();
        this.f355a = context;
        return this;
    }
}
