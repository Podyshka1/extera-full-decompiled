package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.h3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2486h3 extends AbstractC2498j3 implements IntConsumer {

    /* JADX INFO: renamed from: c */
    public final int[] f1390c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    public C2486h3(int i) {
        this.f1390c = new int[i];
    }

    @Override // p022j$.util.stream.AbstractC2498j3
    /* JADX INFO: renamed from: a */
    public final void mo1010a(Object obj, long j) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < j; i++) {
            intConsumer.accept(this.f1390c[i]);
        }
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.f1401b;
        this.f1401b = i2 + 1;
        this.f1390c[i2] = i;
    }
}
