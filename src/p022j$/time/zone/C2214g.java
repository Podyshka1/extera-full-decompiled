package p022j$.time.zone;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: j$.time.zone.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C2214g implements PrivilegedAction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ List f887a;

    public C2214g(List list) {
        this.f887a = list;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property != null) {
            try {
                C2215h c2215h = (C2215h) C2215h.class.cast(Class.forName(property, true, C2215h.class.getClassLoader()).newInstance());
                C2215h.m806b(c2215h);
                ((ArrayList) this.f887a).add(c2215h);
                return null;
            } catch (Exception e) {
                throw new Error(e);
            }
        }
        C2215h.m806b(new C2215h());
        return null;
    }
}
