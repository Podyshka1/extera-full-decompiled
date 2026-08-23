package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.z2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6282z2 extends AbstractC2180c {

    /* JADX INFO: renamed from: j */
    public final AbstractC2179b f1288j;

    /* JADX INFO: renamed from: k */
    public final IntFunction f1289k;

    /* JADX INFO: renamed from: l */
    public final long f1290l;

    /* JADX INFO: renamed from: m */
    public final long f1291m;

    /* JADX INFO: renamed from: n */
    public long f1292n;

    /* JADX INFO: renamed from: o */
    public volatile boolean f1293o;

    @Override // j$.util.stream.AbstractC2180c
    /* JADX INFO: renamed from: f */
    public final void mo841f() {
        this.f1082i = true;
        if (this.f1293o) {
            mo840d(AbstractC6277y1.c0(this.f1288j.z0()));
        }
    }

    @Override // j$.util.stream.AbstractC2182e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        C6282z2 c6282z2;
        I0 i0C0;
        AbstractC2182e abstractC2182e = this.f1128d;
        if (abstractC2182e != null) {
            this.f1292n = ((C6282z2) abstractC2182e).f1292n + ((C6282z2) this.f1129e).f1292n;
            if (this.f1082i) {
                this.f1292n = 0L;
                i0C0 = AbstractC6277y1.c0(this.f1288j.z0());
            } else {
                i0C0 = this.f1292n == 0 ? AbstractC6277y1.c0(this.f1288j.z0()) : ((C6282z2) this.f1128d).f1292n == 0 ? (I0) ((C6282z2) this.f1129e).m843i() : AbstractC6277y1.m906Y(this.f1288j.z0(), (I0) ((C6282z2) this.f1128d).m843i(), (I0) ((C6282z2) this.f1129e).m843i());
            }
            I0 i0Mo788e = i0C0;
            if (m853b()) {
                i0Mo788e = i0Mo788e.mo788e(this.f1290l, this.f1291m >= 0 ? Math.min(i0Mo788e.count(), this.f1290l + this.f1291m) : this.f1292n, this.f1289k);
            }
            mo840d(i0Mo788e);
            this.f1293o = true;
        }
        if (this.f1291m >= 0 && !m853b()) {
            long j = this.f1290l + this.f1291m;
            long jM908j = this.f1293o ? this.f1292n : m908j(j);
            if (jM908j >= j) {
                m842g();
            } else {
                C6282z2 c6282z22 = (C6282z2) ((AbstractC2182e) getCompleter());
                Object obj = this;
                while (true) {
                    if (c6282z22 == null) {
                        if (jM908j >= j) {
                            break;
                        }
                    } else {
                        if (obj == c6282z22.f1129e && (c6282z2 = (C6282z2) c6282z22.f1128d) != null) {
                            long jM908j2 = c6282z2.m908j(j) + jM908j;
                            if (jM908j2 >= j) {
                                break;
                            } else {
                                jM908j = jM908j2;
                            }
                        }
                        obj = c6282z22;
                        c6282z22 = (C6282z2) ((AbstractC2182e) c6282z22.getCompleter());
                    }
                }
                m842g();
            }
        }
        super.onCompletion(countedCompleter);
    }

    public C6282z2(AbstractC2179b abstractC2179b, AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC6277y1, spliterator);
        this.f1288j = abstractC2179b;
        this.f1289k = intFunction;
        this.f1290l = j;
        this.f1291m = j2;
    }

    public C6282z2(C6282z2 c6282z2, Spliterator spliterator) {
        super(c6282z2, spliterator);
        this.f1288j = c6282z2.f1288j;
        this.f1289k = c6282z2.f1289k;
        this.f1290l = c6282z2.f1290l;
        this.f1291m = c6282z2.f1291m;
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public final AbstractC2182e mo802c(Spliterator spliterator) {
        return new C6282z2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2180c
    /* JADX INFO: renamed from: h */
    public final Object mo803h() {
        return AbstractC6277y1.c0(this.f1288j.z0());
    }

    @Override // j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: a */
    public final Object mo801a() {
        if (m853b()) {
            EnumC6195d3 enumC6195d3 = EnumC6195d3.SIZED;
            AbstractC2179b abstractC2179b = this.f1288j;
            int i = abstractC2179b.f1063j;
            int i2 = enumC6195d3.f1121e;
            A0 a0P0 = this.f1288j.p0((i & i2) == i2 ? abstractC2179b.e0(this.f1126b) : -1L, this.f1289k);
            InterfaceC6242p2 interfaceC6242p2D0 = this.f1288j.D0(((AbstractC2179b) this.f1125a).f1066m, a0P0);
            AbstractC6277y1 abstractC6277y1 = this.f1125a;
            abstractC6277y1.a0(this.f1126b, abstractC6277y1.t0(interfaceC6242p2D0));
            return a0P0.build();
        }
        A0 a0P02 = this.f1288j.p0(-1L, this.f1289k);
        if (this.f1290l == 0) {
            InterfaceC6242p2 interfaceC6242p2D02 = this.f1288j.D0(((AbstractC2179b) this.f1125a).f1066m, a0P02);
            AbstractC6277y1 abstractC6277y12 = this.f1125a;
            abstractC6277y12.a0(this.f1126b, abstractC6277y12.t0(interfaceC6242p2D02));
        } else {
            this.f1125a.s0(this.f1126b, a0P02);
        }
        I0 i0Build = a0P02.build();
        this.f1292n = i0Build.count();
        this.f1293o = true;
        this.f1126b = null;
        return i0Build;
    }

    /* JADX INFO: renamed from: j */
    public final long m908j(long j) {
        if (this.f1293o) {
            return this.f1292n;
        }
        C6282z2 c6282z2 = (C6282z2) this.f1128d;
        C6282z2 c6282z22 = (C6282z2) this.f1129e;
        if (c6282z2 == null || c6282z22 == null) {
            return this.f1292n;
        }
        long jM908j = c6282z2.m908j(j);
        return jM908j >= j ? jM908j : c6282z22.m908j(j) + jM908j;
    }
}
