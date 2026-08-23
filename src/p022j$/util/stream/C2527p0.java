package p022j$.util.stream;

import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.p0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2527p0 implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1443a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ EnumC2557v0 f1444b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f1445c;

    public /* synthetic */ C2527p0(EnumC2557v0 enumC2557v0, Object obj, int i) {
        this.f1443a = i;
        this.f1444b = enumC2557v0;
        this.f1445c = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f1443a) {
            case 0:
                return new C2537r0(this.f1444b, (IntPredicate) this.f1445c);
            default:
                return new C2532q0(this.f1444b, (Predicate) this.f1445c);
        }
    }
}
