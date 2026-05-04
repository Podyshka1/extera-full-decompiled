package p022j$.time.format;

/* JADX INFO: renamed from: j$.time.format.d */
/* JADX INFO: loaded from: classes2.dex */
public final class C2151d implements InterfaceC2153f {

    /* JADX INFO: renamed from: a */
    public final char f746a;

    public C2151d(char c) {
        this.f746a = c;
    }

    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        sb.append(this.f746a);
        return true;
    }

    public final String toString() {
        char c = this.f746a;
        if (c == '\'') {
            return "''";
        }
        return "'" + c + "'";
    }
}
