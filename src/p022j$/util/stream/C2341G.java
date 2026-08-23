package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2217B;

/* JADX INFO: renamed from: j$.util.stream.G */
/* JADX INFO: loaded from: classes2.dex */
public final class C2341G extends AbstractC2361K implements InterfaceC2514m2 {

    /* JADX INFO: renamed from: c */
    public static final C2336F f1137c;

    /* JADX INFO: renamed from: d */
    public static final C2336F f1138d;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2361K, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        m940v(Double.valueOf(d));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f1167a) {
            return new C2217B(((Double) this.f1168b).doubleValue());
        }
        return null;
    }

    static {
        EnumC2468e3 enumC2468e3 = EnumC2468e3.DOUBLE_VALUE;
        C2526p c2526p = new C2526p(6);
        C2494j c2494j = new C2494j(9);
        C2217B c2217b = C2217B.f891c;
        f1137c = new C2336F(true, enumC2468e3, c2217b, c2526p, c2494j);
        f1138d = new C2336F(false, enumC2468e3, c2217b, new C2526p(6), new C2494j(9));
    }
}
