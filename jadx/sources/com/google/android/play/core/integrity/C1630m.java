package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.m */
/* JADX INFO: loaded from: classes5.dex */
final class C1630m implements InterfaceC1639t {

    /* JADX INFO: renamed from: a */
    private Context f311a;

    private C1630m() {
    }

    /* synthetic */ C1630m(C1629l c1629l) {
    }

    /* JADX INFO: renamed from: a */
    public final C1630m m320a(Context context) {
        context.getClass();
        this.f311a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.InterfaceC1639t
    /* JADX INFO: renamed from: b */
    public final C1634o mo321b() {
        com.google.android.play.integrity.internal.ak.m360a(this.f311a, Context.class);
        return new C1634o(this.f311a, null);
    }
}
