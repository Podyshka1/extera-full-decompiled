package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.m */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2227m implements InterfaceC2219e {

    /* JADX INFO: renamed from: a */
    public final String f759a;

    public C2227m(String str) {
        this.f759a = str;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        if (i > charSequence.length() || i < 0) {
            throw new IndexOutOfBoundsException();
        }
        String str = this.f759a;
        return !c2232r.m809g(charSequence, i, str, 0, str.length()) ? ~i : str.length() + i;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        sb.append(this.f759a);
        return true;
    }

    public final String toString() {
        return "'" + this.f759a.replace("'", "''") + "'";
    }
}
