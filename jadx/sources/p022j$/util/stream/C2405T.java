package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p022j$.util.Spliterator;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.util.stream.T */
/* JADX INFO: loaded from: classes2.dex */
public final class C2405T extends CountedCompleter {

    /* JADX INFO: renamed from: a */
    public final AbstractC2573y1 f1251a;

    /* JADX INFO: renamed from: b */
    public Spliterator f1252b;

    /* JADX INFO: renamed from: c */
    public final long f1253c;

    /* JADX INFO: renamed from: d */
    public final ConcurrentHashMap f1254d;

    /* JADX INFO: renamed from: e */
    public final AbstractC2400S f1255e;

    /* JADX INFO: renamed from: f */
    public final C2405T f1256f;

    /* JADX INFO: renamed from: g */
    public InterfaceC2352I0 f1257g;

    public C2405T(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, AbstractC2400S abstractC2400S) {
        super(null);
        this.f1251a = abstractC2573y1;
        this.f1252b = spliterator;
        this.f1253c = AbstractC2464e.m1003e(spliterator.estimateSize());
        this.f1254d = new ConcurrentHashMap(Math.max(16, AbstractC2464e.f1360g << 1));
        this.f1255e = abstractC2400S;
        this.f1256f = null;
    }

    public C2405T(C2405T c2405t, Spliterator spliterator, C2405T c2405t2) {
        super(c2405t);
        this.f1251a = c2405t.f1251a;
        this.f1252b = spliterator;
        this.f1253c = c2405t.f1253c;
        this.f1254d = c2405t.f1254d;
        this.f1255e = c2405t.f1255e;
        this.f1256f = c2405t2;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f1252b;
        long j = this.f1253c;
        boolean z = false;
        C2405T c2405t = this;
        while (spliterator.estimateSize() > j && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            C2405T c2405t2 = new C2405T(c2405t, spliteratorTrySplit, c2405t.f1256f);
            C2405T c2405t3 = new C2405T(c2405t, spliterator, c2405t2);
            c2405t.addToPendingCount(1);
            c2405t3.addToPendingCount(1);
            c2405t.f1254d.put(c2405t2, c2405t3);
            if (c2405t.f1256f != null) {
                c2405t2.addToPendingCount(1);
                if (c2405t.f1254d.replace(c2405t.f1256f, c2405t, c2405t2)) {
                    c2405t.addToPendingCount(-1);
                } else {
                    c2405t2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = spliteratorTrySplit;
                c2405t = c2405t2;
                c2405t2 = c2405t3;
            } else {
                c2405t = c2405t3;
            }
            z = !z;
            c2405t2.fork();
        }
        if (c2405t.getPendingCount() > 0) {
            C2526p c2526p = new C2526p(10);
            AbstractC2573y1 abstractC2573y1 = c2405t.f1251a;
            InterfaceC2312A0 interfaceC2312A0Mo896p0 = abstractC2573y1.mo896p0(abstractC2573y1.mo981e0(spliterator), c2526p);
            c2405t.f1251a.mo982s0(spliterator, interfaceC2312A0Mo896p0);
            c2405t.f1257g = interfaceC2312A0Mo896p0.build();
            c2405t.f1252b = null;
        }
        c2405t.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        InterfaceC2352I0 interfaceC2352I0 = this.f1257g;
        if (interfaceC2352I0 != null) {
            interfaceC2352I0.forEach(this.f1255e);
            this.f1257g = null;
        } else {
            Spliterator spliterator = this.f1252b;
            if (spliterator != null) {
                this.f1251a.mo982s0(spliterator, this.f1255e);
                this.f1252b = null;
            }
        }
        C2405T c2405t = (C2405T) this.f1254d.remove(this);
        if (c2405t != null) {
            c2405t.tryComplete();
        }
    }
}
