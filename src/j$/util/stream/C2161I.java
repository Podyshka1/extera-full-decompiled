package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.C2079C;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.I */
/* JADX INFO: loaded from: classes2.dex */
public final class C2161I extends AbstractC2163K implements InterfaceC6238o2 {

    /* JADX INFO: renamed from: c */
    public static final C2158F f915c;

    /* JADX INFO: renamed from: d */
    public static final C2158F f916d;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.AbstractC2163K, j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        m800v(Long.valueOf(j));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f932a) {
            return new C2079C(((Long) this.f933b).longValue());
        }
        return null;
    }

    static {
        EnumC6199e3 enumC6199e3 = EnumC6199e3.LONG_VALUE;
        C2193p c2193p = new C2193p(8);
        C2187j c2187j = new C2187j(11);
        C2079C c2079c = C2079C.f661c;
        f915c = new C2158F(true, enumC6199e3, c2079c, c2193p, c2187j);
        f916d = new C2158F(false, enumC6199e3, c2079c, new C2193p(8), new C2187j(11));
    }
}
