package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.g */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2184g implements java.util.stream.BaseStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BaseStream f1144a;

    public /* synthetic */ C2184g(BaseStream baseStream) {
        this.f1144a = baseStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ java.util.stream.BaseStream m858f(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2183f ? ((C2183f) baseStream).f1134a : baseStream instanceof InterfaceC2157E ? C2156D.m773f((InterfaceC2157E) baseStream) : baseStream instanceof IntStream ? IntStream.Wrapper.convert((IntStream) baseStream) : baseStream instanceof LongStream ? C6232n0.m865f((LongStream) baseStream) : baseStream instanceof Stream ? Stream.Wrapper.convert((Stream) baseStream) : new C2184g(baseStream);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1144a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BaseStream baseStream = this.f1144a;
        if (obj instanceof C2184g) {
            obj = ((C2184g) obj).f1144a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1144a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1144a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Iterator iterator() {
        return this.f1144a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream onClose(Runnable runnable) {
        return m858f(this.f1144a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream parallel() {
        return m858f(this.f1144a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream sequential() {
        return m858f(this.f1144a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(this.f1144a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream unordered() {
        return m858f(this.f1144a.unordered());
    }
}
