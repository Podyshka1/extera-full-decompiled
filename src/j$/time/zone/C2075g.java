package j$.time.zone;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: j$.time.zone.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C2075g implements PrivilegedAction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ List f652a;

    public C2075g(List list) {
        this.f652a = list;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property != null) {
            try {
                C2076h c2076h = (C2076h) C2076h.class.cast(Class.forName(property, true, C2076h.class.getClassLoader()).newInstance());
                C2076h.m681b(c2076h);
                ((ArrayList) this.f652a).add(c2076h);
                return null;
            } catch (Exception e) {
                throw new Error(e);
            }
        }
        C2076h.m681b(new C2076h());
        return null;
    }
}
