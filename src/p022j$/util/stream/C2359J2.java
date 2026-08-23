package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.IntFunction;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.J2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2359J2 extends AbstractC2441a0 {
    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        Objects.requireNonNull(interfaceC2529p2);
        return EnumC2462d3.SORTED.m1001k(i) ? interfaceC2529p2 : EnumC2462d3.SIZED.m1001k(i) ? new C2384O2(interfaceC2529p2) : new C2344G2(interfaceC2529p2);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC2462d3.SORTED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
            return abstractC2573y1.mo980d0(spliterator, false, intFunction);
        }
        int[] iArr = (int[]) ((InterfaceC2332E0) abstractC2573y1.mo980d0(spliterator, true, intFunction)).mo920b();
        Arrays.sort(iArr);
        return new C2460d1(iArr);
    }
}
