package j$.util.stream;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class H2 extends D2 {

    /* JADX INFO: renamed from: c */
    public X2 f914c;

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        X2 x2;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            x2 = new X2();
        } else {
            x2 = new X2((int) j);
        }
        this.f914c = x2;
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        long[] jArr = (long[]) this.f914c.mo783b();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC6242p2 interfaceC6242p2 = this.f1173a;
        interfaceC6242p2.mo744m(length);
        int i = 0;
        if (!this.f882b) {
            int length2 = jArr.length;
            while (i < length2) {
                interfaceC6242p2.accept(jArr[i]);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                long j = jArr[i];
                if (interfaceC6242p2.mo745p()) {
                    break;
                }
                interfaceC6242p2.accept(j);
                i++;
            }
        }
        interfaceC6242p2.end();
    }

    @Override // j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f914c.accept(j);
    }
}
