package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Objects;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.j2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2497j2 implements InterfaceC2519n2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2529p2 f1400a;

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo954n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        AbstractC2573y1.m1038C(this, num);
    }

    public AbstractC2497j2(InterfaceC2529p2 interfaceC2529p2) {
        this.f1400a = (InterfaceC2529p2) Objects.requireNonNull(interfaceC2529p2);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public void mo873m(long j) {
        this.f1400a.mo873m(j);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public void end() {
        this.f1400a.end();
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public boolean mo874p() {
        return this.f1400a.mo874p();
    }
}
