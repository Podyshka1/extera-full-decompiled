package p022j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.stream.InterfaceC2529p2;

/* JADX INFO: renamed from: j$.util.D */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2219D implements DoubleConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f899a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f900b;

    public /* synthetic */ C2219D(Consumer consumer, int i) {
        this.f899a = i;
        this.f900b = consumer;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.f899a) {
            case 0:
                this.f900b.accept(Double.valueOf(d));
                break;
            default:
                ((InterfaceC2529p2) this.f900b).accept(d);
                break;
        }
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f899a) {
        }
        return AbstractC2104a.m539b(this, doubleConsumer);
    }
}
