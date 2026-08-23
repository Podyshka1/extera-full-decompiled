package p022j$.time.format;

/* JADX INFO: renamed from: j$.time.format.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2159l implements InterfaceC2153f {

    /* JADX INFO: renamed from: a */
    public final String f762a;

    public C2159l(String str) {
        this.f762a = str;
    }

    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        sb.append(this.f762a);
        return true;
    }

    public final String toString() {
        return "'" + this.f762a.replace("'", "''") + "'";
    }
}
