package p022j$.util.stream;

import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.stream.i3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2492i3 extends AbstractC2498j3 implements LongConsumer {

    /* JADX INFO: renamed from: c */
    public final long[] f1395c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    public C2492i3(int i) {
        this.f1395c = new long[i];
    }

    @Override // p022j$.util.stream.AbstractC2498j3
    /* JADX INFO: renamed from: a */
    public final void mo1010a(Object obj, long j) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < j; i++) {
            longConsumer.accept(this.f1395c[i]);
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f1401b;
        this.f1401b = i + 1;
        this.f1395c[i] = j;
    }
}
