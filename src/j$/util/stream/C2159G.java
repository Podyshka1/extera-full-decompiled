package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.C2078B;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.G */
/* JADX INFO: loaded from: classes2.dex */
public final class C2159G extends AbstractC2163K implements InterfaceC6230m2 {

    /* JADX INFO: renamed from: c */
    public static final C2158F f902c;

    /* JADX INFO: renamed from: d */
    public static final C2158F f903d;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.stream.AbstractC2163K, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        m800v(Double.valueOf(d));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f932a) {
            return new C2078B(((Double) this.f933b).doubleValue());
        }
        return null;
    }

    static {
        EnumC6199e3 enumC6199e3 = EnumC6199e3.DOUBLE_VALUE;
        C2193p c2193p = new C2193p(6);
        C2187j c2187j = new C2187j(9);
        C2078B c2078b = C2078B.f656c;
        f902c = new C2158F(true, enumC6199e3, c2078b, c2193p, c2187j);
        f903d = new C2158F(false, enumC6199e3, c2078b, new C2193p(6), new C2187j(9));
    }
}
