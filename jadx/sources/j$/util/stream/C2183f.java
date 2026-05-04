package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.stream.DoubleStream;

/* JADX INFO: renamed from: j$.util.stream.f */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2183f implements BaseStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.util.stream.BaseStream f1134a;

    public /* synthetic */ C2183f(java.util.stream.BaseStream baseStream) {
        this.f1134a = baseStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ BaseStream m854f(java.util.stream.BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2184g ? ((C2184g) baseStream).f1144a : baseStream instanceof DoubleStream ? C2155C.m770f((DoubleStream) baseStream) : baseStream instanceof java.util.stream.IntStream ? IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) baseStream) : baseStream instanceof java.util.stream.LongStream ? C6228m0.m864f((java.util.stream.LongStream) baseStream) : baseStream instanceof java.util.stream.Stream ? Stream.VivifiedWrapper.convert((java.util.stream.Stream) baseStream) : new C2183f(baseStream);
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1134a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.BaseStream baseStream = this.f1134a;
        if (obj instanceof C2183f) {
            obj = ((C2183f) obj).f1134a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1134a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1134a.isParallel();
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ Iterator iterator() {
        return this.f1134a.iterator();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m854f(this.f1134a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ BaseStream parallel() {
        return m854f(this.f1134a.parallel());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ BaseStream sequential() {
        return m854f(this.f1134a.sequential());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.d0.m739a(this.f1134a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return m854f(this.f1134a.unordered());
    }
}
