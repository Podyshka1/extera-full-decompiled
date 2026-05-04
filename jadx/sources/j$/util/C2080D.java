package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.stream.InterfaceC6242p2;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.D */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2080D implements DoubleConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f664a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Consumer f665b;

    public /* synthetic */ C2080D(Consumer consumer, int i) {
        this.f664a = i;
        this.f665b = consumer;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.f664a) {
            case 0:
                this.f665b.accept(Double.valueOf(d));
                break;
            default:
                ((InterfaceC6242p2) this.f665b).accept(d);
                break;
        }
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f664a) {
        }
        return AbstractC1965a.m419b(this, doubleConsumer);
    }
}
