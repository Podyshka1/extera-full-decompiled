package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class b4 extends AbstractC2182e {

    /* JADX INFO: renamed from: h */
    public final AbstractC2179b f1076h;

    /* JADX INFO: renamed from: i */
    public final IntFunction f1077i;

    /* JADX INFO: renamed from: j */
    public final boolean f1078j;

    /* JADX INFO: renamed from: k */
    public long f1079k;

    /* JADX INFO: renamed from: l */
    public long f1080l;

    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2182e abstractC2182e = this.f1128d;
        if (abstractC2182e != null) {
            if (this.f1078j) {
                b4 b4Var = (b4) abstractC2182e;
                long j = b4Var.f1080l;
                this.f1080l = j;
                if (j == b4Var.f1079k) {
                    this.f1080l = j + ((b4) this.f1129e).f1080l;
                }
            }
            b4 b4Var2 = (b4) abstractC2182e;
            long j2 = b4Var2.f1079k;
            b4 b4Var3 = (b4) this.f1129e;
            this.f1079k = j2 + b4Var3.f1079k;
            I0 i0M906Y = b4Var2.f1079k == 0 ? (I0) b4Var3.f1130f : b4Var3.f1079k == 0 ? (I0) b4Var2.f1130f : AbstractC6277y1.m906Y(this.f1076h.z0(), (I0) ((b4) this.f1128d).f1130f, (I0) ((b4) this.f1129e).f1130f);
            if (m853b() && this.f1078j) {
                i0M906Y = i0M906Y.mo788e(this.f1080l, i0M906Y.count(), this.f1077i);
            }
            this.f1130f = i0M906Y;
        }
        super.onCompletion(countedCompleter);
    }

    public b4(AbstractC2179b abstractC2179b, AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC6277y1, spliterator);
        this.f1076h = abstractC2179b;
        this.f1077i = intFunction;
        this.f1078j = EnumC6195d3.ORDERED.m850k(((AbstractC2179b) abstractC6277y1).f1066m);
    }

    public b4(b4 b4Var, Spliterator spliterator) {
        super(b4Var, spliterator);
        this.f1076h = b4Var.f1076h;
        this.f1077i = b4Var.f1077i;
        this.f1078j = b4Var.f1078j;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public final AbstractC2182e mo802c(Spliterator spliterator) {
        return new b4(this, spliterator);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object mo801a() {
        long jE0;
        boolean zM853b = m853b();
        if (zM853b || !this.f1078j) {
            jE0 = -1;
        } else {
            EnumC6195d3 enumC6195d3 = EnumC6195d3.SIZED;
            AbstractC2179b abstractC2179b = this.f1076h;
            int i = abstractC2179b.f1063j;
            int i2 = enumC6195d3.f1121e;
            if ((i & i2) == i2) {
                jE0 = abstractC2179b.e0(this.f1126b);
            }
        }
        A0 a0P0 = this.f1125a.p0(jE0, this.f1077i);
        a4 a4VarMo792h = ((Z3) this.f1076h).mo792h(a0P0, this.f1078j && !zM853b);
        this.f1125a.s0(this.f1126b, a4VarMo792h);
        I0 i0Build = a0P0.build();
        this.f1079k = i0Build.count();
        this.f1080l = a4VarMo792h.mo817s();
        return i0Build;
    }
}
