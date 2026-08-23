package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6205g1 extends AbstractC6217j1 implements InterfaceC2096U {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m427j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m443z(this, consumer);
    }
}
