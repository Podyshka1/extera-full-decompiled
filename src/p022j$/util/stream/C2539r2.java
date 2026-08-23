package p022j$.util.stream;

import java.util.function.IntFunction;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.r2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2539r2 extends AbstractC2473f2 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ long f1462s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ long f1463t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2539r2(AbstractC2485h2 abstractC2485h2, int i, long j, long j2) {
        super(abstractC2485h2, i);
        this.f1462s = j;
        this.f1463t = j2;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: B0 */
    public final Spliterator mo930B0(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        long jMo981e0 = abstractC2446b.mo981e0(spliterator);
        if (jMo981e0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator spliteratorMo984u0 = abstractC2446b.mo984u0(spliterator);
            long j = this.f1462s;
            return new C2570x3(spliteratorMo984u0, j, AbstractC2314A2.m879c(j, this.f1463t));
        }
        if (EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m)) {
            return ((InterfaceC2352I0) new C2579z2(this, abstractC2446b, spliterator, new C2459d0(2), this.f1462s, this.f1463t).invoke()).spliterator();
        }
        Spliterator spliteratorMo984u02 = abstractC2446b.mo984u0(spliterator);
        long j2 = this.f1462s;
        long j3 = this.f1463t;
        if (j2 <= jMo981e0) {
            long jMin = jMo981e0 - j2;
            if (j3 >= 0) {
                jMin = Math.min(j3, jMin);
            }
            j3 = jMin;
            j2 = 0;
        }
        return new C2330D3(spliteratorMo984u02, j2, j3);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        long jMin;
        long j;
        long jMo981e0 = abstractC2573y1.mo981e0(spliterator);
        if (jMo981e0 > 0 && spliterator.hasCharacteristics(16384)) {
            AbstractC2446b abstractC2446b = (AbstractC2446b) abstractC2573y1;
            while (abstractC2446b.f1300l > 0) {
                abstractC2446b = abstractC2446b.f1297i;
            }
            return AbstractC2573y1.m1056U(abstractC2573y1, AbstractC2314A2.m878b(abstractC2446b.mo903z0(), spliterator, this.f1462s, this.f1463t), true, intFunction);
        }
        if (!EnumC2462d3.ORDERED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
            Spliterator spliteratorMo984u0 = abstractC2573y1.mo984u0(spliterator);
            long j2 = this.f1462s;
            long j3 = this.f1463t;
            if (j2 <= jMo981e0) {
                long j4 = jMo981e0 - j2;
                jMin = j3 >= 0 ? Math.min(j3, j4) : j4;
                j = 0;
            } else {
                jMin = j3;
                j = j2;
            }
            return AbstractC2573y1.m1056U(this, new C2330D3(spliteratorMo984u0, j, jMin), true, intFunction);
        }
        return (InterfaceC2352I0) new C2579z2(this, abstractC2573y1, spliterator, intFunction, this.f1462s, this.f1463t).invoke();
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        return new C2534q2(this, interfaceC2529p2);
    }
}
