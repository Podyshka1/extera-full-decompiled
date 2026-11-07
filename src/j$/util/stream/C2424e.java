package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.e */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2424e implements Collector {

    /* JADX INFO: renamed from: a */
    public final C2420a f900a;

    /* JADX INFO: renamed from: b */
    public final C2421b f901b;

    /* JADX INFO: renamed from: c */
    public final C2422c f902c;

    /* JADX INFO: renamed from: d */
    public final C2423d f903d;

    /* JADX INFO: renamed from: e */
    public final Set f904e;

    public C2424e(C2420a c2420a, C2421b c2421b, C2422c c2422c, C2423d c2423d, Set set) {
        this.f900a = c2420a;
        this.f901b = c2421b;
        this.f902c = c2422c;
        this.f903d = c2423d;
        this.f904e = set;
    }

    @Override // java.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.f901b;
    }

    @Override // java.util.stream.Collector
    public final Set characteristics() {
        return this.f904e;
    }

    @Override // java.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.f902c;
    }

    @Override // java.util.stream.Collector
    public final Function finisher() {
        return this.f903d;
    }

    @Override // java.util.stream.Collector
    public final Supplier supplier() {
        return this.f900a;
    }
}
