package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C1757ah;
import com.google.android.play.integrity.internal.C1759aj;
import com.google.android.play.integrity.internal.InterfaceC1758ai;
import com.google.android.play.integrity.internal.InterfaceC1761al;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.o */
/* JADX INFO: loaded from: classes5.dex */
final class C1737o {

    /* JADX INFO: renamed from: a */
    private final C1737o f522a = this;

    /* JADX INFO: renamed from: b */
    private final InterfaceC1761al f523b;

    /* JADX INFO: renamed from: c */
    private final InterfaceC1761al f524c;

    /* JADX INFO: renamed from: d */
    private final InterfaceC1761al f525d;

    /* JADX INFO: renamed from: e */
    private final InterfaceC1761al f526e;

    /* synthetic */ C1737o(Context context, C1736n c1736n) {
        InterfaceC1758ai interfaceC1758aiM454b = C1759aj.m454b(context);
        this.f523b = interfaceC1758aiM454b;
        InterfaceC1761al interfaceC1761alM453b = C1757ah.m453b(C1747y.f539a);
        this.f524c = interfaceC1761alM453b;
        InterfaceC1761al interfaceC1761alM453b2 = C1757ah.m453b(new C1695af(interfaceC1758aiM454b, interfaceC1761alM453b));
        this.f525d = interfaceC1761alM453b2;
        this.f526e = C1757ah.m453b(new C1746x(interfaceC1761alM453b2));
    }

    /* JADX INFO: renamed from: a */
    public final IntegrityManager m419a() {
        return (IntegrityManager) this.f526e.mo394a();
    }
}
