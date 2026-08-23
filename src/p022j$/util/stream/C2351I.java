package p022j$.util.stream;

import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2218C;

/* JADX INFO: renamed from: j$.util.stream.I */
/* JADX INFO: loaded from: classes2.dex */
public final class C2351I extends AbstractC2361K implements InterfaceC2524o2 {

    /* JADX INFO: renamed from: c */
    public static final C2336F f1150c;

    /* JADX INFO: renamed from: d */
    public static final C2336F f1151d;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2361K, p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        m940v(Long.valueOf(j));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f1167a) {
            return new C2218C(((Long) this.f1168b).longValue());
        }
        return null;
    }

    static {
        EnumC2468e3 enumC2468e3 = EnumC2468e3.LONG_VALUE;
        C2526p c2526p = new C2526p(8);
        C2494j c2494j = new C2494j(11);
        C2218C c2218c = C2218C.f896c;
        f1150c = new C2336F(true, enumC2468e3, c2218c, c2526p, c2494j);
        f1151d = new C2336F(false, enumC2468e3, c2218c, new C2526p(8), new C2494j(11));
    }
}
