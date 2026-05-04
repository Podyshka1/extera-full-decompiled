package p022j$.util.stream;

import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.stream.q0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2532q0 extends AbstractC2552u0 {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ EnumC2557v0 f1451c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Predicate f1452d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2532q0(EnumC2557v0 enumC2557v0, Predicate predicate) {
        super(enumC2557v0);
        this.f1451c = enumC2557v0;
        this.f1452d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.f1483a) {
            return;
        }
        boolean zTest = this.f1452d.test(obj);
        EnumC2557v0 enumC2557v0 = this.f1451c;
        if (zTest == enumC2557v0.f1490a) {
            this.f1483a = true;
            this.f1484b = enumC2557v0.f1491b;
        }
    }
}
