package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.j */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2142j extends C2143k {
    @Override // j$.time.format.C2143k
    /* JADX INFO: renamed from: b */
    public final boolean mo646b(char c2, char c3) {
        return C2150r.m665b(c2, c3);
    }

    @Override // j$.time.format.C2143k
    /* JADX INFO: renamed from: d */
    public final C2143k mo647d(String str, String str2, C2143k c2143k) {
        return new C2142j(str, str2, c2143k);
    }

    @Override // j$.time.format.C2143k
    /* JADX INFO: renamed from: e */
    public final boolean mo648e(CharSequence charSequence, int i, int i2) {
        int length = this.f597a.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!C2150r.m665b(this.f597a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
