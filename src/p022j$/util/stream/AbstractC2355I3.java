package p022j$.util.stream;

import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.I3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2355I3 {
    /* JADX INFO: renamed from: b */
    public static C2467e2 m934b(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C2467e2(spliterator, EnumC2462d3.m999j(spliterator), z);
    }

    /* JADX INFO: renamed from: a */
    public static C2435Z m933a(Spliterator.OfInt ofInt) {
        return new C2435Z(ofInt, EnumC2462d3.m999j(ofInt), false);
    }
}
