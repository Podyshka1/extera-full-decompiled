package j$.util.stream;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class P2 extends D2 {

    /* JADX INFO: renamed from: c */
    public long[] f983c;

    /* JADX INFO: renamed from: d */
    public int f984d;

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f983c = new long[(int) j];
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f983c, 0, this.f984d);
        long j = this.f984d;
        InterfaceC6242p2 interfaceC6242p2 = this.f1173a;
        interfaceC6242p2.mo744m(j);
        if (!this.f882b) {
            while (i < this.f984d) {
                interfaceC6242p2.accept(this.f983c[i]);
                i++;
            }
        } else {
            while (i < this.f984d && !interfaceC6242p2.mo745p()) {
                interfaceC6242p2.accept(this.f983c[i]);
                i++;
            }
        }
        interfaceC6242p2.end();
        this.f983c = null;
    }

    @Override // j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        long[] jArr = this.f983c;
        int i = this.f984d;
        this.f984d = i + 1;
        jArr[i] = j;
    }
}
