package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.r2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6250r2 extends AbstractC6202f2 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ long f1226s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ long f1227t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6250r2(AbstractC6210h2 abstractC6210h2, int i, long j, long j2) {
        super(abstractC6210h2, i);
        this.f1226s = j;
        this.f1227t = j2;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        long jE0 = abstractC2179b.e0(spliterator);
        if (jE0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator spliteratorU0 = abstractC2179b.u0(spliterator);
            long j = this.f1226s;
            return new C6275x3(spliteratorU0, j, A2.m750c(j, this.f1227t));
        }
        if (EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m)) {
            return ((I0) new C6282z2(this, abstractC2179b, spliterator, new C6192d0(2), this.f1226s, this.f1227t).invoke()).spliterator();
        }
        Spliterator spliteratorU02 = abstractC2179b.u0(spliterator);
        long j2 = this.f1226s;
        long j3 = this.f1227t;
        if (j2 <= jE0) {
            long jMin = jE0 - j2;
            if (j3 >= 0) {
                jMin = Math.min(j3, jMin);
            }
            j3 = jMin;
            j2 = 0;
        }
        return new D3(spliteratorU02, j2, j3);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        long jMin;
        long j;
        long jE0 = abstractC6277y1.e0(spliterator);
        if (jE0 > 0 && spliterator.hasCharacteristics(16384)) {
            AbstractC2179b abstractC2179b = (AbstractC2179b) abstractC6277y1;
            while (abstractC2179b.f1065l > 0) {
                abstractC2179b = abstractC2179b.f1062i;
            }
            return AbstractC6277y1.m902U(abstractC6277y1, A2.m749b(abstractC2179b.z0(), spliterator, this.f1226s, this.f1227t), true, intFunction);
        }
        if (!EnumC6195d3.ORDERED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
            Spliterator spliteratorU0 = abstractC6277y1.u0(spliterator);
            long j2 = this.f1226s;
            long j3 = this.f1227t;
            if (j2 <= jE0) {
                long j4 = jE0 - j2;
                jMin = j3 >= 0 ? Math.min(j3, j4) : j4;
                j = 0;
            } else {
                jMin = j3;
                j = j2;
            }
            return AbstractC6277y1.m902U(this, new D3(spliteratorU0, j, jMin), true, intFunction);
        }
        return (I0) new C6282z2(this, abstractC6277y1, spliterator, intFunction, this.f1226s, this.f1227t).invoke();
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        return new C6246q2(this, interfaceC6242p2);
    }
}
