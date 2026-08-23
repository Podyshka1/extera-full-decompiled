package j$.util.stream;

import j$.util.C2140g;
import j$.util.stream.IntStream;
import java.util.function.IntFunction;
import java.util.function.LongFunction;

/* JADX INFO: renamed from: j$.util.stream.M */
/* JADX INFO: loaded from: classes2.dex */
public final class C2165M implements IntFunction, LongFunction {

    /* JADX INFO: renamed from: a */
    public IntFunction f957a;

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        Object objApply = this.f957a.apply(i);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) objApply);
        }
        if (objApply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) objApply);
        }
        C2140g.m740a(objApply.getClass(), "java.util.stream.IntStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return AbstractC6277y1.m901T(j, this.f957a);
    }
}
