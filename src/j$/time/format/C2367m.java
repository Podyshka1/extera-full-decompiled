package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.m */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2367m implements InterfaceC2359e {

    /* JADX INFO: renamed from: a */
    public final String f763a;

    public C2367m(String str) {
        this.f763a = str;
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
        if (i > charSequence.length() || i < 0) {
            throw new IndexOutOfBoundsException();
        }
        String str = this.f763a;
        return !c2372r.m853g(charSequence, i, str, 0, str.length()) ? ~i : str.length() + i;
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
        sb.append(this.f763a);
        return true;
    }

    public final String toString() {
        return "'" + this.f763a.replace("'", "''") + "'";
    }
}
