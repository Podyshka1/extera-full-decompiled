package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.e */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2285e implements Collector {

    /* JADX INFO: renamed from: a */
    public final C2281a f898a;

    /* JADX INFO: renamed from: b */
    public final C2282b f899b;

    /* JADX INFO: renamed from: c */
    public final C2283c f900c;

    /* JADX INFO: renamed from: d */
    public final C2284d f901d;

    /* JADX INFO: renamed from: e */
    public final Set f902e;

    public C2285e(C2281a c2281a, C2282b c2282b, C2283c c2283c, C2284d c2284d, Set set) {
        this.f898a = c2281a;
        this.f899b = c2282b;
        this.f900c = c2283c;
        this.f901d = c2284d;
        this.f902e = set;
    }

    @Override // java.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.f899b;
    }

    @Override // java.util.stream.Collector
    public final Set characteristics() {
        return this.f902e;
    }

    @Override // java.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.f900c;
    }

    @Override // java.util.stream.Collector
    public final Function finisher() {
        return this.f901d;
    }

    @Override // java.util.stream.Collector
    public final Supplier supplier() {
        return this.f898a;
    }
}
