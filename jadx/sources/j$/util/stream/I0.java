package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public interface I0 {
    /* JADX INFO: renamed from: a */
    I0 mo782a(int i);

    long count();

    /* JADX INFO: renamed from: e */
    I0 mo788e(long j, long j2, IntFunction intFunction);

    /* JADX INFO: renamed from: f */
    void mo789f(Object[] objArr, int i);

    void forEach(Consumer consumer);

    /* JADX INFO: renamed from: g */
    Object[] mo790g(IntFunction intFunction);

    /* JADX INFO: renamed from: h */
    int mo791h();

    Spliterator spliterator();
}
