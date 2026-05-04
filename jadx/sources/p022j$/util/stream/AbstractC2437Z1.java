package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.Z1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2437Z1 extends AbstractC2412U1 implements InterfaceC2407T1 {

    /* JADX INFO: renamed from: b */
    public long f1288b;

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
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1288b = 0L;
    }
}
