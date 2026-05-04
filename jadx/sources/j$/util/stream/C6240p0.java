package j$.util.stream;

import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6240p0 implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1207a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ EnumC6264v0 f1208b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f1209c;

    public /* synthetic */ C6240p0(EnumC6264v0 enumC6264v0, Object obj, int i) {
        this.f1207a = i;
        this.f1208b = enumC6264v0;
        this.f1209c = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f1207a) {
            case 0:
                return new C6248r0(this.f1208b, (IntPredicate) this.f1209c);
            default:
                return new C6244q0(this.f1208b, (Predicate) this.f1209c);
        }
    }
}
