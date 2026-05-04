package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.AbstractC1760ak;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.q */
/* JADX INFO: loaded from: classes5.dex */
final class C1739q implements InterfaceC1698ai {

    /* JADX INFO: renamed from: a */
    private Context f527a;

    private C1739q() {
    }

    /* synthetic */ C1739q(C1738p c1738p) {
    }

    /* JADX INFO: renamed from: a */
    public final C1739q m420a(Context context) {
        context.getClass();
        this.f527a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.InterfaceC1698ai
    /* JADX INFO: renamed from: b */
    public final C1741s mo395b() {
        AbstractC1760ak.m455a(this.f527a, Context.class);
        return new C1741s(this.f527a, null);
    }
}
