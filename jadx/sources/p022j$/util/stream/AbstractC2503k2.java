package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Objects;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.k2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2503k2 implements InterfaceC2524o2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2529p2 f1409a;

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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo876v((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2524o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo876v(Long l) {
        AbstractC2573y1.m1040E(this, l);
    }

    public AbstractC2503k2(InterfaceC2529p2 interfaceC2529p2) {
        this.f1409a = (InterfaceC2529p2) Objects.requireNonNull(interfaceC2529p2);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        this.f1409a.mo873m(j);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public void end() {
        this.f1409a.end();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public boolean mo874p() {
        return this.f1409a.mo874p();
    }
}
