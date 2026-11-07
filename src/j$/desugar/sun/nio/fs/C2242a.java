package j$.desugar.sun.nio.fs;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2242a {

    /* JADX INFO: renamed from: a */
    public Set f438a;

    /* JADX INFO: renamed from: b */
    public Map f439b;

    /* JADX INFO: renamed from: c */
    public boolean f440c;

    /* JADX INFO: renamed from: a */
    public final void m524a(String str, Object obj) {
        ((HashMap) this.f439b).put(str, obj);
    }

    /* JADX INFO: renamed from: b */
    public final boolean m525b(String str) {
        return this.f440c || ((HashSet) this.f438a).contains(str);
    }
}
