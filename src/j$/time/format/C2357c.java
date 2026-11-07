package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.c */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2357c implements InterfaceC2359e {

    /* JADX INFO: renamed from: a */
    public final char f741a;

    public C2357c(char c2) {
        this.f741a = c2;
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char cCharAt = charSequence.charAt(i);
        char c2 = this.f741a;
        return (cCharAt == c2 || (!c2372r.f783b && (Character.toUpperCase(cCharAt) == Character.toUpperCase(c2) || Character.toLowerCase(cCharAt) == Character.toLowerCase(c2)))) ? i + 1 : ~i;
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
        sb.append(this.f741a);
        return true;
    }

    public final String toString() {
        char c2 = this.f741a;
        if (c2 == '\'') {
            return "''";
        }
        return "'" + c2 + "'";
    }
}
