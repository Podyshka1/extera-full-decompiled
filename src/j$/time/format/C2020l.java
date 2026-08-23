package j$.time.format;

/* JADX INFO: renamed from: j$.time.format.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2020l implements InterfaceC2014f {

    /* JADX INFO: renamed from: a */
    public final String f527a;

    public C2020l(String str) {
        this.f527a = str;
    }

    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        sb.append(this.f527a);
        return true;
    }

    public final String toString() {
        return "'" + this.f527a.replace("'", "''") + "'";
    }
}
