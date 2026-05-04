package p022j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.r0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2537r0 extends AbstractC2552u0 implements InterfaceC2519n2 {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ EnumC2557v0 f1459c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ IntPredicate f1460d;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo954n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        AbstractC2573y1.m1038C(this, num);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2537r0(EnumC2557v0 enumC2557v0, IntPredicate intPredicate) {
        super(enumC2557v0);
        this.f1459c = enumC2557v0;
        this.f1460d = intPredicate;
    }

    @Override // p022j$.util.stream.AbstractC2552u0, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        if (this.f1483a) {
            return;
        }
        boolean zTest = this.f1460d.test(i);
        EnumC2557v0 enumC2557v0 = this.f1459c;
        if (zTest == enumC2557v0.f1490a) {
            this.f1483a = true;
            this.f1484b = enumC2557v0.f1491b;
        }
    }
}
