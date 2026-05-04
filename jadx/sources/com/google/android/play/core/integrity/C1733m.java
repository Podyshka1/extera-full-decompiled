package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.AbstractC1760ak;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.m */
/* JADX INFO: loaded from: classes5.dex */
final class C1733m implements InterfaceC1742t {

    /* JADX INFO: renamed from: a */
    private Context f517a;

    private C1733m() {
    }

    /* synthetic */ C1733m(C1732l c1732l) {
    }

    /* JADX INFO: renamed from: a */
    public final C1733m m415a(Context context) {
        context.getClass();
        this.f517a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.InterfaceC1742t
    /* JADX INFO: renamed from: b */
    public final C1737o mo416b() {
        AbstractC1760ak.m455a(this.f517a, Context.class);
        return new C1737o(this.f517a, null);
    }
}
