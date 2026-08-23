package j$.util;

import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.Z */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2101Z extends c0 {
    void forEachRemaining(LongConsumer longConsumer);

    boolean tryAdvance(LongConsumer longConsumer);

    @Override // j$.util.c0, j$.util.Spliterator
    InterfaceC2101Z trySplit();
}
