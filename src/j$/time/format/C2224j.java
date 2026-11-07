package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.j */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2224j extends C2225k {
    @Override // j$.time.format.C2225k
    /* JADX INFO: renamed from: b */
    public final boolean mo784b(char c2, char c3) {
        return C2232r.m803b(c2, c3);
    }

    @Override // j$.time.format.C2225k
    /* JADX INFO: renamed from: d */
    public final C2225k mo785d(String str, String str2, C2225k c2225k) {
        return new C2224j(str, str2, c2225k);
    }

    @Override // j$.time.format.C2225k
    /* JADX INFO: renamed from: e */
    public final boolean mo786e(CharSequence charSequence, int i, int i2) {
        int length = this.f753a.length();
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
            if (!C2232r.m803b(this.f753a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
