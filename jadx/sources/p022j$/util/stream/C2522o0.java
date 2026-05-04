package p022j$.util.stream;

import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.o0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2522o0 implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1440a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ EnumC2557v0 f1441b;

    public /* synthetic */ C2522o0(EnumC2557v0 enumC2557v0, int i) {
        this.f1440a = i;
        this.f1441b = enumC2557v0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f1440a) {
            case 0:
                return new C2542s0(this.f1441b);
            default:
                return new C2547t0(this.f1441b);
        }
    }
}
