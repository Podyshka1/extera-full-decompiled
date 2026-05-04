package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.d */
/* JADX INFO: loaded from: classes2.dex */
public final class C2012d implements InterfaceC2014f {

    /* JADX INFO: renamed from: a */
    public final char f511a;

    public C2012d(char c) {
        this.f511a = c;
    }

    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        sb.append(this.f511a);
        return true;
    }

    public final String toString() {
        char c = this.f511a;
        if (c == '\'') {
            return "''";
        }
        return "'" + c + "'";
    }
}
