package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.DesugarArrays;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.L0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2367L0 implements InterfaceC2352I0 {

    /* JADX INFO: renamed from: a */
    public final Object[] f1183a;

    /* JADX INFO: renamed from: b */
    public int f1184b;

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1054S(this, j, j2, intFunction);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo928h() {
        return 0;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final InterfaceC2352I0 mo919a(int i) {
        throw new IndexOutOfBoundsException();
    }

    public C2367L0(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1183a = (Object[]) intFunction.apply((int) j);
        this.f1184b = 0;
    }

    public C2367L0(Object[] objArr) {
        this.f1183a = objArr;
        this.f1184b = objArr.length;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return DesugarArrays.m811a(this.f1183a, 0, this.f1184b);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final void mo926f(Object[] objArr, int i) {
        System.arraycopy(this.f1183a, 0, objArr, i, this.f1184b);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo927g(IntFunction intFunction) {
        Object[] objArr = this.f1183a;
        if (objArr.length == this.f1184b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final long count() {
        return this.f1184b;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final void forEach(Consumer consumer) {
        for (int i = 0; i < this.f1184b; i++) {
            consumer.m940v(this.f1183a[i]);
        }
    }

    public String toString() {
        Object[] objArr = this.f1183a;
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(objArr.length - this.f1184b), Arrays.toString(objArr));
    }
}
