package j$.util.stream;

import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6236o0 implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1204a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ EnumC6264v0 f1205b;

    public /* synthetic */ C6236o0(EnumC6264v0 enumC6264v0, int i) {
        this.f1204a = i;
        this.f1205b = enumC6264v0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f1204a) {
            case 0:
                return new C6252s0(this.f1205b);
            default:
                return new C6256t0(this.f1205b);
        }
    }
}
