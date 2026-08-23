package p022j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.O */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2230O extends InterfaceC2231P {
    @Override // java.util.Iterator, p022j$.util.InterfaceC2587y
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(LongConsumer longConsumer);

    @Override // java.util.Iterator
    Long next();

    long nextLong();
}
