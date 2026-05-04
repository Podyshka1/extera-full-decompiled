package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.i3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6215i3 extends AbstractC6219j3 implements LongConsumer {

    /* JADX INFO: renamed from: c */
    public final long[] f1159c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    public C6215i3(int i) {
        this.f1159c = new long[i];
    }

    @Override // j$.util.stream.AbstractC6219j3
    /* JADX INFO: renamed from: a */
    public final void mo859a(Object obj, long j) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < j; i++) {
            longConsumer.accept(this.f1159c[i]);
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f1165b;
        this.f1165b = i + 1;
        this.f1159c[i] = j;
    }
}
