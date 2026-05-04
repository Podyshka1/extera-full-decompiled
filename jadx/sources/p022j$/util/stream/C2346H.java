package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.OptionalInt;

/* JADX INFO: renamed from: j$.util.stream.H */
/* JADX INFO: loaded from: classes2.dex */
public final class C2346H extends AbstractC2361K implements InterfaceC2519n2 {

    /* JADX INFO: renamed from: c */
    public static final C2336F f1145c;

    /* JADX INFO: renamed from: d */
    public static final C2336F f1146d;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.AbstractC2361K, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        m940v(Integer.valueOf(i));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f1167a) {
            return new OptionalInt(((Integer) this.f1168b).intValue());
        }
        return null;
    }

    static {
        EnumC2468e3 enumC2468e3 = EnumC2468e3.INT_VALUE;
        C2526p c2526p = new C2526p(7);
        C2494j c2494j = new C2494j(10);
        OptionalInt optionalInt = OptionalInt.f913c;
        f1145c = new C2336F(true, enumC2468e3, optionalInt, c2526p, c2494j);
        f1146d = new C2336F(false, enumC2468e3, optionalInt, new C2526p(7), new C2494j(10));
    }
}
