package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Z1 extends U1 implements T1 {

    /* JADX INFO: renamed from: b */
    public long f1053b;

    public /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1053b = 0L;
    }
}
