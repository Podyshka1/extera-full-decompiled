package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class c4 extends AbstractC2180c {

    /* JADX INFO: renamed from: j */
    public final AbstractC2179b f1084j;

    /* JADX INFO: renamed from: k */
    public final IntFunction f1085k;

    /* JADX INFO: renamed from: l */
    public final boolean f1086l;

    /* JADX INFO: renamed from: m */
    public long f1087m;

    /* JADX INFO: renamed from: n */
    public boolean f1088n;

    /* JADX INFO: renamed from: o */
    public volatile boolean f1089o;

    @Override // j$.util.stream.AbstractC2180c
    /* JADX INFO: renamed from: f */
    public final void mo841f() {
        this.f1082i = true;
        if (this.f1086l && this.f1089o) {
            mo840d(AbstractC6277y1.c0(this.f1084j.z0()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object objM906Y;
        AbstractC2182e abstractC2182e = this.f1128d;
        if (abstractC2182e != null) {
            this.f1088n = ((c4) abstractC2182e).f1088n | ((c4) this.f1129e).f1088n;
            if (this.f1086l && this.f1082i) {
                this.f1087m = 0L;
                objM906Y = AbstractC6277y1.c0(this.f1084j.z0());
            } else if (this.f1086l) {
                c4 c4Var = (c4) this.f1128d;
                if (c4Var.f1088n) {
                    this.f1087m = c4Var.f1087m;
                    objM906Y = (I0) c4Var.m843i();
                } else {
                    c4 c4Var2 = (c4) this.f1128d;
                    long j = c4Var2.f1087m;
                    c4 c4Var3 = (c4) this.f1129e;
                    this.f1087m = j + c4Var3.f1087m;
                    if (c4Var2.f1087m == 0) {
                        objM906Y = (I0) c4Var3.m843i();
                    } else if (c4Var3.f1087m == 0) {
                        objM906Y = (I0) c4Var2.m843i();
                    } else {
                        objM906Y = AbstractC6277y1.m906Y(this.f1084j.z0(), (I0) ((c4) this.f1128d).m843i(), (I0) ((c4) this.f1129e).m843i());
                    }
                }
            }
            mo840d(objM906Y);
        }
        this.f1089o = true;
        super.onCompletion(countedCompleter);
    }

    public c4(AbstractC2179b abstractC2179b, AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC6277y1, spliterator);
        this.f1084j = abstractC2179b;
        this.f1085k = intFunction;
        this.f1086l = EnumC6195d3.ORDERED.m850k(((AbstractC2179b) abstractC6277y1).f1066m);
    }

    public c4(c4 c4Var, Spliterator spliterator) {
        super(c4Var, spliterator);
        this.f1084j = c4Var.f1084j;
        this.f1085k = c4Var.f1085k;
        this.f1086l = c4Var.f1086l;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public final AbstractC2182e mo802c(Spliterator spliterator) {
        return new c4(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2180c
    /* JADX INFO: renamed from: h */
    public final Object mo803h() {
        return AbstractC6277y1.c0(this.f1084j.z0());
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: a */
    public final Object mo801a() {
        A0 a0P0 = this.f1125a.p0(-1L, this.f1085k);
        InterfaceC6242p2 interfaceC6242p2D0 = this.f1084j.D0(((AbstractC2179b) this.f1125a).f1066m, a0P0);
        AbstractC6277y1 abstractC6277y1 = this.f1125a;
        boolean zA0 = abstractC6277y1.a0(this.f1126b, abstractC6277y1.t0(interfaceC6242p2D0));
        this.f1088n = zA0;
        if (zA0) {
            m842g();
        }
        I0 i0Build = a0P0.build();
        this.f1087m = i0Build.count();
        return i0Build;
    }
}
