package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.g3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2480g3 extends AbstractC2498j3 implements DoubleConsumer {

    /* JADX INFO: renamed from: c */
    public final double[] f1384c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    public C2480g3(int i) {
        this.f1384c = new double[i];
    }

    @Override // p022j$.util.stream.AbstractC2498j3
    /* JADX INFO: renamed from: a */
    public final void mo1010a(Object obj, long j) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < j; i++) {
            doubleConsumer.accept(this.f1384c[i]);
        }
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f1401b;
        this.f1401b = i + 1;
        this.f1384c[i] = d;
    }
}
