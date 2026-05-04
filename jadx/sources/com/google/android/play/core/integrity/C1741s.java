package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C1757ah;
import com.google.android.play.integrity.internal.C1759aj;
import com.google.android.play.integrity.internal.InterfaceC1758ai;
import com.google.android.play.integrity.internal.InterfaceC1761al;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.s */
/* JADX INFO: loaded from: classes5.dex */
final class C1741s {

    /* JADX INFO: renamed from: a */
    private final C1741s f528a = this;

    /* JADX INFO: renamed from: b */
    private final InterfaceC1761al f529b;

    /* JADX INFO: renamed from: c */
    private final InterfaceC1761al f530c;

    /* JADX INFO: renamed from: d */
    private final InterfaceC1761al f531d;

    /* JADX INFO: renamed from: e */
    private final InterfaceC1761al f532e;

    /* JADX INFO: renamed from: f */
    private final InterfaceC1761al f533f;

    /* synthetic */ C1741s(Context context, C1740r c1740r) {
        InterfaceC1758ai interfaceC1758aiM454b = C1759aj.m454b(context);
        this.f529b = interfaceC1758aiM454b;
        InterfaceC1761al interfaceC1761alM453b = C1757ah.m453b(C1703an.f474a);
        this.f530c = interfaceC1761alM453b;
        InterfaceC1761al interfaceC1761alM453b2 = C1757ah.m453b(new C1715az(interfaceC1758aiM454b, interfaceC1761alM453b));
        this.f531d = interfaceC1761alM453b2;
        InterfaceC1761al interfaceC1761alM453b3 = C1757ah.m453b(new C1721be(interfaceC1761alM453b2));
        this.f532e = interfaceC1761alM453b3;
        this.f533f = C1757ah.m453b(new C1702am(interfaceC1761alM453b2, interfaceC1761alM453b3));
    }

    /* JADX INFO: renamed from: a */
    public final StandardIntegrityManager m421a() {
        return (StandardIntegrityManager) this.f533f.mo394a();
    }
}
