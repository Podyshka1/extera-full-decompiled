package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.OptionalInt;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.H */
/* JADX INFO: loaded from: classes2.dex */
public final class C2160H extends AbstractC2163K implements InterfaceC6234n2 {

    /* JADX INFO: renamed from: c */
    public static final C2158F f910c;

    /* JADX INFO: renamed from: d */
    public static final C2158F f911d;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.AbstractC2163K, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        m800v(Integer.valueOf(i));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f932a) {
            return new OptionalInt(((Integer) this.f933b).intValue());
        }
        return null;
    }

    static {
        EnumC6199e3 enumC6199e3 = EnumC6199e3.INT_VALUE;
        C2193p c2193p = new C2193p(7);
        C2187j c2187j = new C2187j(10);
        OptionalInt optionalInt = OptionalInt.f678c;
        f910c = new C2158F(true, enumC6199e3, optionalInt, c2193p, c2187j);
        f911d = new C2158F(false, enumC6199e3, optionalInt, new C2193p(7), new C2187j(10));
    }
}
