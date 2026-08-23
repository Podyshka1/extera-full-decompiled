package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C1777q;
import com.google.android.play.integrity.internal.InterfaceC1758ai;
import com.google.android.play.integrity.internal.InterfaceC1761al;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.af */
/* JADX INFO: loaded from: classes5.dex */
public final class C1695af implements InterfaceC1758ai {

    /* JADX INFO: renamed from: a */
    private final InterfaceC1761al f463a;

    /* JADX INFO: renamed from: b */
    private final InterfaceC1761al f464b;

    public C1695af(InterfaceC1761al interfaceC1761al, InterfaceC1761al interfaceC1761al2) {
        this.f463a = interfaceC1761al;
        this.f464b = interfaceC1761al2;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1761al
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo394a() {
        return new C1693ad((Context) this.f463a.mo394a(), (C1777q) this.f464b.mo394a());
    }
}
