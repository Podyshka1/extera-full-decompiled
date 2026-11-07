package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.j */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2364j extends C2365k {
    @Override // j$.time.format.C2365k
    /* JADX INFO: renamed from: b */
    public final boolean mo828b(char c2, char c3) {
        return C2372r.m847b(c2, c3);
    }

    @Override // j$.time.format.C2365k
    /* JADX INFO: renamed from: d */
    public final C2365k mo829d(String str, String str2, C2365k c2365k) {
        return new C2364j(str, str2, c2365k);
    }

    @Override // j$.time.format.C2365k
    /* JADX INFO: renamed from: e */
    public final boolean mo830e(CharSequence charSequence, int i, int i2) {
        int length = this.f757a.length();
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
            if (!C2372r.m847b(this.f757a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
