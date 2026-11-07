package j$.sun.security.action;

import j$.time.zone.C2418g;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: j$.sun.security.action.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2322a implements PrivilegedAction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f598a = 0;

    /* JADX INFO: renamed from: b */
    public Object f599b;

    public C2322a(List list) {
        this.f599b = list;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        switch (this.f598a) {
            case 0:
                String property = System.getProperty((String) this.f599b);
                if (property == null) {
                    return null;
                }
                return property;
            default:
                String property2 = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
                if (property2 != null) {
                    try {
                        C2418g c2418g = (C2418g) C2418g.class.cast(Class.forName(property2, true, C2418g.class.getClassLoader()).newInstance());
                        C2418g.m906b(c2418g);
                        ((ArrayList) ((List) this.f599b)).add(c2418g);
                    } catch (Exception e) {
                        throw new Error(e);
                    }
                    break;
                } else {
                    C2418g.m906b(new C2418g());
                }
                return null;
        }
    }

    public /* synthetic */ C2322a() {
    }
}
