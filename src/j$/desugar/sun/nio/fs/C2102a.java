package j$.desugar.sun.nio.fs;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2102a {

    /* JADX INFO: renamed from: a */
    public Set f437a;

    /* JADX INFO: renamed from: b */
    public Map f438b;

    /* JADX INFO: renamed from: c */
    public boolean f439c;

    /* JADX INFO: renamed from: a */
    public final void m500a(String str, Object obj) {
        ((HashMap) this.f438b).put(str, obj);
    }

    /* JADX INFO: renamed from: b */
    public final boolean m501b(String str) {
        return this.f439c || ((HashSet) this.f437a).contains(str);
    }
}
