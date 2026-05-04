package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.util.Objects;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.l2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2509l2 implements InterfaceC2529p2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2529p2 f1423a;

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public AbstractC2509l2(InterfaceC2529p2 interfaceC2529p2) {
        this.f1423a = (InterfaceC2529p2) Objects.requireNonNull(interfaceC2529p2);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        this.f1423a.mo873m(j);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public void end() {
        this.f1423a.end();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public boolean mo874p() {
        return this.f1423a.mo874p();
    }
}
