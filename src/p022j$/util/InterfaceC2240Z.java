package p022j$.util;

import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.Z */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2240Z extends InterfaceC2246c0 {
    void forEachRemaining(LongConsumer longConsumer);

    boolean tryAdvance(LongConsumer longConsumer);

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    InterfaceC2240Z trySplit();
}
