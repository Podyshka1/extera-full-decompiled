package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class X1 extends Z1 implements InterfaceC6238o2 {
    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo747v((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC6238o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo747v(Long l) {
        AbstractC6277y1.m886E(this, l);
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

    @Override // j$.util.stream.Z1, j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1053b++;
    }
}
