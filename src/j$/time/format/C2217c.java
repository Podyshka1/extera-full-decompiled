package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.c */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2217c implements InterfaceC2219e {

    /* JADX INFO: renamed from: a */
    public final char f737a;

    public C2217c(char c2) {
        this.f737a = c2;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char cCharAt = charSequence.charAt(i);
        char c2 = this.f737a;
        return (cCharAt == c2 || (!c2232r.f779b && (Character.toUpperCase(cCharAt) == Character.toUpperCase(c2) || Character.toLowerCase(cCharAt) == Character.toLowerCase(c2)))) ? i + 1 : ~i;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        sb.append(this.f737a);
        return true;
    }

    public final String toString() {
        char c2 = this.f737a;
        if (c2 == '\'') {
            return "''";
        }
        return "'" + c2 + "'";
    }
}
