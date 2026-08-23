package j$.util.stream;

import j$.util.Optional;

/* JADX INFO: renamed from: j$.util.stream.J */
/* JADX INFO: loaded from: classes2.dex */
public final class C2162J extends AbstractC2163K {

    /* JADX INFO: renamed from: c */
    public static final C2158F f923c;

    /* JADX INFO: renamed from: d */
    public static final C2158F f924d;

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f932a) {
            return Optional.of(this.f933b);
        }
        return null;
    }

    static {
        EnumC6199e3 enumC6199e3 = EnumC6199e3.REFERENCE;
        f923c = new C2158F(true, enumC6199e3, Optional.empty(), new C2193p(9), new C2187j(12));
        f924d = new C2158F(false, enumC6199e3, Optional.empty(), new C2193p(9), new C2187j(12));
    }
}
