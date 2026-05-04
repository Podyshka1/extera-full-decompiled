package p022j$.util.stream;

import java.util.function.IntFunction;
import java.util.function.LongFunction;
import p022j$.util.C2285g;
import p022j$.util.stream.IntStream;

/* JADX INFO: renamed from: j$.util.stream.M */
/* JADX INFO: loaded from: classes2.dex */
public final class C2371M implements IntFunction, LongFunction {

    /* JADX INFO: renamed from: a */
    public IntFunction f1192a;

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        Object objApply = this.f1192a.apply(i);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) objApply);
        }
        if (objApply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) objApply);
        }
        C2285g.m868a(objApply.getClass(), "java.util.stream.IntStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return AbstractC2573y1.m1055T(j, this.f1192a);
    }
}
