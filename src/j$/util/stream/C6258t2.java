package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6258t2 extends AbstractC6180a0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ long f1244s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ long f1245t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6258t2(AbstractC6188c0 abstractC6188c0, int i, long j, long j2) {
        super(abstractC6188c0, i);
        this.f1244s = j;
        this.f1245t = j2;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        long jE0 = abstractC2179b.e0(spliterator);
        if (jE0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator.OfInt ofInt = (Spliterator.OfInt) abstractC2179b.u0(spliterator);
            long j = this.f1244s;
            return new C6263u3(ofInt, j, A2.m750c(j, this.f1245t));
        }
        if (EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m)) {
            return ((I0) new C6282z2(this, abstractC2179b, spliterator, new C6192d0(11), this.f1244s, this.f1245t).invoke()).spliterator();
        }
        Spliterator.OfInt ofInt2 = (Spliterator.OfInt) abstractC2179b.u0(spliterator);
        long j2 = this.f1244s;
        long j3 = this.f1245t;
        if (j2 <= jE0) {
            long jMin = jE0 - j2;
            if (j3 >= 0) {
                jMin = Math.min(j3, jMin);
            }
            j3 = jMin;
            j2 = 0;
        }
        return new A3(ofInt2, j2, j3);
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
            return AbstractC6277y1.m904W(abstractC6277y1, A2.m749b(abstractC2179b.z0(), spliterator, this.f1244s, this.f1245t), true);
        }
        if (!EnumC6195d3.ORDERED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
            Spliterator.OfInt ofInt = (Spliterator.OfInt) abstractC6277y1.u0(spliterator);
            long j2 = this.f1244s;
            long j3 = this.f1245t;
            if (j2 <= jE0) {
                long j4 = jE0 - j2;
                jMin = j3 >= 0 ? Math.min(j3, j4) : j4;
                j = 0;
            } else {
                jMin = j3;
                j = j2;
            }
            return AbstractC6277y1.m904W(this, new A3(ofInt, j, jMin), true);
        }
        return (I0) new C6282z2(this, abstractC6277y1, spliterator, intFunction, this.f1244s, this.f1245t).invoke();
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        return new C6254s2(this, interfaceC6242p2);
    }
}
