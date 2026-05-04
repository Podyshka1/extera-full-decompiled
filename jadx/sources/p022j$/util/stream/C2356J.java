package p022j$.util.stream;

import p022j$.util.Optional;

/* JADX INFO: renamed from: j$.util.stream.J */
/* JADX INFO: loaded from: classes2.dex */
public final class C2356J extends AbstractC2361K {

    /* JADX INFO: renamed from: c */
    public static final C2336F f1158c;

    /* JADX INFO: renamed from: d */
    public static final C2336F f1159d;

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f1167a) {
            return Optional.m814of(this.f1168b);
        }
        return null;
    }

    static {
        EnumC2468e3 enumC2468e3 = EnumC2468e3.REFERENCE;
        f1158c = new C2336F(true, enumC2468e3, Optional.empty(), new C2526p(9), new C2494j(12));
        f1159d = new C2336F(false, enumC2468e3, Optional.empty(), new C2526p(9), new C2494j(12));
    }
}
