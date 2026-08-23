package j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.G */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2083G extends InterfaceC2092P {
    @Override // java.util.Iterator, j$.util.InterfaceC2209y
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(DoubleConsumer doubleConsumer);

    @Override // java.util.Iterator
    Double next();

    double nextDouble();
}
