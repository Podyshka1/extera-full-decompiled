package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.c */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2135c implements InterfaceC2137e {

    /* JADX INFO: renamed from: a */
    public final char f581a;

    public C2135c(char c2) {
        this.f581a = c2;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        if (i == charSequence.length()) {
            return ~i;
        }
        char cCharAt = charSequence.charAt(i);
        char c2 = this.f581a;
        return (cCharAt == c2 || (!c2150r.f623b && (Character.toUpperCase(cCharAt) == Character.toUpperCase(c2) || Character.toLowerCase(cCharAt) == Character.toLowerCase(c2)))) ? i + 1 : ~i;
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        sb.append(this.f581a);
        return true;
    }

    public final String toString() {
        char c2 = this.f581a;
        if (c2 == '\'') {
            return "''";
        }
        return "'" + c2 + "'";
    }
}
