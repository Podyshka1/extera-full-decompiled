package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;

/* JADX INFO: renamed from: j$.util.stream.g1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2478g1 extends AbstractC2496j1 implements InterfaceC2235U {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m547j(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m563z(this, consumer);
    }
}
