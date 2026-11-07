package j$.sun.security.action;

import j$.time.zone.C2279g;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: j$.sun.security.action.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2182a implements PrivilegedAction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f597a = 0;

    /* JADX INFO: renamed from: b */
    public Object f598b;

    public C2182a(List list) {
        this.f598b = list;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        switch (this.f597a) {
            case 0:
                String property = System.getProperty((String) this.f598b);
                if (property == null) {
                    return null;
                }
                return property;
            default:
                String property2 = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
                if (property2 != null) {
                    try {
                        C2279g c2279g = (C2279g) C2279g.class.cast(Class.forName(property2, true, C2279g.class.getClassLoader()).newInstance());
                        C2279g.m858b(c2279g);
                        ((ArrayList) ((List) this.f598b)).add(c2279g);
                    } catch (Exception e) {
                        throw new Error(e);
                    }
                    break;
                } else {
                    C2279g.m858b(new C2279g());
                }
                return null;
        }
    }

    public /* synthetic */ C2182a() {
    }
}
