package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.g3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6207g3 extends AbstractC6219j3 implements DoubleConsumer {

    /* JADX INFO: renamed from: c */
    public final double[] f1148c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    public C6207g3(int i) {
        this.f1148c = new double[i];
    }

    @Override // j$.util.stream.AbstractC6219j3
    /* JADX INFO: renamed from: a */
    public final void mo859a(Object obj, long j) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < j; i++) {
            doubleConsumer.accept(this.f1148c[i]);
        }
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f1165b;
        this.f1165b = i + 1;
        this.f1148c[i] = d;
    }
}
