package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.m */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2145m implements InterfaceC2137e {

    /* JADX INFO: renamed from: a */
    public final String f603a;

    public C2145m(String str) {
        this.f603a = str;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        if (i > charSequence.length() || i < 0) {
            throw new IndexOutOfBoundsException();
        }
        String str = this.f603a;
        return !c2150r.m671g(charSequence, i, str, 0, str.length()) ? ~i : str.length() + i;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        sb.append(this.f603a);
        return true;
    }

    public final String toString() {
        return "'" + this.f603a.replace("'", "''") + "'";
    }
}
