package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.I0 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2352I0 {
    /* JADX INFO: renamed from: a */
    InterfaceC2352I0 mo919a(int i);

    long count();

    /* JADX INFO: renamed from: e */
    InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction);

    /* JADX INFO: renamed from: f */
    void mo926f(Object[] objArr, int i);

    void forEach(Consumer consumer);

    /* JADX INFO: renamed from: g */
    Object[] mo927g(IntFunction intFunction);

    /* JADX INFO: renamed from: h */
    int mo928h();

    Spliterator spliterator();
}
