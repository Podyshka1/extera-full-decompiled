package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C1777q;
import com.google.android.play.integrity.internal.InterfaceC1758ai;
import com.google.android.play.integrity.internal.InterfaceC1761al;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.az */
/* JADX INFO: loaded from: classes5.dex */
public final class C1715az implements InterfaceC1758ai {

    /* JADX INFO: renamed from: a */
    private final InterfaceC1761al f496a;

    /* JADX INFO: renamed from: b */
    private final InterfaceC1761al f497b;

    public C1715az(InterfaceC1761al interfaceC1761al, InterfaceC1761al interfaceC1761al2) {
        this.f496a = interfaceC1761al;
        this.f497b = interfaceC1761al2;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1761al
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo394a() {
        return new C1713ax((Context) this.f496a.mo394a(), (C1777q) this.f497b.mo394a());
    }
}
