package p022j$.util.stream;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p022j$.util.Spliterator;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.stream.g */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2476g implements BaseStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BaseStream f1380a;

    public /* synthetic */ C2476g(BaseStream baseStream) {
        this.f1380a = baseStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ BaseStream m1009f(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2470f ? ((C2470f) baseStream).f1370a : baseStream instanceof InterfaceC2331E ? C2326D.m910f((InterfaceC2331E) baseStream) : baseStream instanceof IntStream ? IntStream.Wrapper.convert((IntStream) baseStream) : baseStream instanceof LongStream ? C2517n0.m1017f((LongStream) baseStream) : baseStream instanceof Stream ? Stream.Wrapper.convert((Stream) baseStream) : new C2476g(baseStream);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1380a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BaseStream baseStream = this.f1380a;
        if (obj instanceof C2476g) {
            obj = ((C2476g) obj).f1380a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1380a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1380a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Iterator iterator() {
        return this.f1380a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m1009f(this.f1380a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return m1009f(this.f1380a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return m1009f(this.f1380a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(this.f1380a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return m1009f(this.f1380a.unordered());
    }
}
