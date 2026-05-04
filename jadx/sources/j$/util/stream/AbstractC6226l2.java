package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.l2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6226l2 implements InterfaceC6242p2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC6242p2 f1187a;

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public AbstractC6226l2(InterfaceC6242p2 interfaceC6242p2) {
        this.f1187a = (InterfaceC6242p2) Objects.requireNonNull(interfaceC6242p2);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public void mo744m(long j) {
        this.f1187a.mo744m(j);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public void end() {
        this.f1187a.end();
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public boolean mo745p() {
        return this.f1187a.mo745p();
    }
}
