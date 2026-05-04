package p022j$.util.stream;

import java.util.Iterator;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p022j$.util.C2272d0;
import p022j$.util.Spliterator;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.stream.f */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2470f implements BaseStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ BaseStream f1370a;

    public /* synthetic */ C2470f(BaseStream baseStream) {
        this.f1370a = baseStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ BaseStream m1005f(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2476g ? ((C2476g) baseStream).f1380a : baseStream instanceof DoubleStream ? C2321C.m906f((DoubleStream) baseStream) : baseStream instanceof IntStream ? IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) baseStream) : baseStream instanceof LongStream ? C2512m0.m1016f((LongStream) baseStream) : baseStream instanceof Stream ? Stream.VivifiedWrapper.convert((java.util.stream.Stream) baseStream) : new C2470f(baseStream);
    }

    @Override // p022j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1370a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BaseStream baseStream = this.f1370a;
        if (obj instanceof C2470f) {
            obj = ((C2470f) obj).f1370a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1370a.hashCode();
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1370a.isParallel();
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ Iterator iterator() {
        return this.f1370a.iterator();
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m1005f(this.f1370a.onClose(runnable));
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ BaseStream parallel() {
        return m1005f(this.f1370a.parallel());
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ BaseStream sequential() {
        return m1005f(this.f1370a.sequential());
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return C2272d0.m865a(this.f1370a.spliterator());
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return m1005f(this.f1370a.unordered());
    }
}
