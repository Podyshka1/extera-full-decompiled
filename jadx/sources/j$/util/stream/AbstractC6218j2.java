package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.j2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6218j2 implements InterfaceC6234n2 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC6242p2 f1164a;

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo814n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        AbstractC6277y1.m884C(this, num);
    }

    public AbstractC6218j2(InterfaceC6242p2 interfaceC6242p2) {
        this.f1164a = (InterfaceC6242p2) Objects.requireNonNull(interfaceC6242p2);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public void mo744m(long j) {
        this.f1164a.mo744m(j);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public void end() {
        this.f1164a.end();
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public boolean mo745p() {
        return this.f1164a.mo745p();
    }
}
