package p022j$.util.stream;

import java.util.Arrays;

/* JADX INFO: renamed from: j$.util.stream.H2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2349H2 extends AbstractC2329D2 {

    /* JADX INFO: renamed from: c */
    public C2428X2 f1149c;

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        C2428X2 c2428x2;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            c2428x2 = new C2428X2();
        } else {
            c2428x2 = new C2428X2((int) j);
        }
        this.f1149c = c2428x2;
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        long[] jArr = (long[]) this.f1149c.mo920b();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC2529p2 interfaceC2529p2 = this.f1409a;
        interfaceC2529p2.mo873m(length);
        int i = 0;
        if (!this.f1117b) {
            int length2 = jArr.length;
            while (i < length2) {
                interfaceC2529p2.accept(jArr[i]);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                long j = jArr[i];
                if (interfaceC2529p2.mo874p()) {
                    break;
                }
                interfaceC2529p2.accept(j);
                i++;
            }
        }
        interfaceC2529p2.end();
    }

    @Override // p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1149c.accept(j);
    }
}
