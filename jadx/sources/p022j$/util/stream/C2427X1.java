package p022j$.util.stream;

import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.X1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2427X1 extends AbstractC2437Z1 implements InterfaceC2524o2 {
    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo876v((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2524o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo876v(Long l) {
        AbstractC2573y1.m1040E(this, l);
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

    @Override // p022j$.util.stream.AbstractC2437Z1, p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1288b++;
    }
}
