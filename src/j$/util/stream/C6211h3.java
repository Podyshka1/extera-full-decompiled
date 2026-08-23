package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.h3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6211h3 extends AbstractC6219j3 implements IntConsumer {

    /* JADX INFO: renamed from: c */
    public final int[] f1154c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    public C6211h3(int i) {
        this.f1154c = new int[i];
    }

    @Override // j$.util.stream.AbstractC6219j3
    /* JADX INFO: renamed from: a */
    public final void mo859a(Object obj, long j) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < j; i++) {
            intConsumer.accept(this.f1154c[i]);
        }
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.f1165b;
        this.f1165b = i2 + 1;
        this.f1154c[i2] = i;
    }
}
