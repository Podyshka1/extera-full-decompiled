package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.W1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2422W1 extends AbstractC2437Z1 implements InterfaceC2519n2 {
    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
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

    @Override // p022j$.util.stream.AbstractC2412U1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f1288b);
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        this.f1288b += ((AbstractC2437Z1) interfaceC2407T1).f1288b;
    }

    @Override // p022j$.util.stream.AbstractC2437Z1, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        this.f1288b++;
    }
}
