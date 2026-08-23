package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.S */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2170S implements M3, N3 {

    /* JADX INFO: renamed from: a */
    public final boolean f1008a;

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
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ void mo744m(long j) {
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    public AbstractC2170S(boolean z) {
        this.f1008a = z;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: u */
    public final int mo735u() {
        if (this.f1008a) {
            return 0;
        }
        return EnumC6195d3.f1112r;
    }

    /* JADX INFO: renamed from: a */
    public final void m818a(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        if (this.f1008a) {
            new C2171T(abstractC6277y1, spliterator, this).invoke();
        } else {
            new C2172U(abstractC6277y1, spliterator, abstractC6277y1.t0(this)).invoke();
        }
    }
}
