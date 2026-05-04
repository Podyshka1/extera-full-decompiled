package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6209h1 extends AbstractC6217j1 implements Spliterator.OfInt {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m395A(this, consumer);
    }
}
