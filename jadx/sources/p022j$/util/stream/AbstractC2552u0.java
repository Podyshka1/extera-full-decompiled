package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.u0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2552u0 implements InterfaceC2529p2 {

    /* JADX INFO: renamed from: a */
    public boolean f1483a;

    /* JADX INFO: renamed from: b */
    public boolean f1484b;

    @Override // p022j$.util.stream.InterfaceC2529p2
    public /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
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

    public AbstractC2552u0(EnumC2557v0 enumC2557v0) {
        this.f1484b = !enumC2557v0.f1491b;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return this.f1483a;
    }
}
