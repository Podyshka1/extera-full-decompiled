package okio.internal;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class _AtomicKt {
    public static final int setBitsOrZero(AtomicInteger atomicInteger, int i) {
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        do {
            i2 = atomicInteger.get();
            if ((i2 & i) != 0) {
                return 0;
            }
            i3 = i2 | i;
        } while (!atomicInteger.compareAndSet(i2, i3));
        return i3;
    }
}
