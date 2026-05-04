package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.K */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2163K implements N3 {

    /* JADX INFO: renamed from: a */
    public boolean f932a;

    /* JADX INFO: renamed from: b */
    public Object f933b;

    @Override // j$.util.stream.InterfaceC6242p2
    public /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
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

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void m800v(Object obj) {
        if (this.f932a) {
            return;
        }
        this.f932a = true;
        this.f933b = obj;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return this.f932a;
    }
}
