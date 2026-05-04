package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class W1 extends Z1 implements InterfaceC6234n2 {
    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo814n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        AbstractC6277y1.m884C(this, num);
    }

    @Override // j$.util.stream.U1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f1053b);
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        this.f1053b += ((Z1) t1).f1053b;
    }

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        this.f1053b++;
    }
}
