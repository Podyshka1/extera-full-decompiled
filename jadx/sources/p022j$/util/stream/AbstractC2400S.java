package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.util.Spliterator;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.S */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2400S implements InterfaceC2375M3, InterfaceC2380N3 {

    /* JADX INFO: renamed from: a */
    public final boolean f1243a;

    public /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void end() {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo873m(long j) {
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    public AbstractC2400S(boolean z) {
        this.f1243a = z;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: u */
    public final int mo861u() {
        if (this.f1243a) {
            return 0;
        }
        return EnumC2462d3.f1348r;
    }

    /* JADX INFO: renamed from: a */
    public final void m958a(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        if (this.f1243a) {
            new C2405T(abstractC2573y1, spliterator, this).invoke();
        } else {
            new C2410U(abstractC2573y1, spliterator, abstractC2573y1.mo983t0(this)).invoke();
        }
    }
}
