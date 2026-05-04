package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6260u0 implements InterfaceC6242p2 {

    /* JADX INFO: renamed from: a */
    public boolean f1247a;

    /* JADX INFO: renamed from: b */
    public boolean f1248b;

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

    public AbstractC6260u0(EnumC6264v0 enumC6264v0) {
        this.f1248b = !enumC6264v0.f1255b;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return this.f1247a;
    }
}
