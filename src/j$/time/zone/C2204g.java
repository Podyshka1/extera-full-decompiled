package j$.time.zone;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: j$.time.zone.g */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2204g implements PrivilegedAction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ List f746a;

    public C2204g(List list) {
        this.f746a = list;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property == null) {
            C2205h.m751b(new C2205h());
            return null;
        }
        try {
            C2205h c2205h = (C2205h) C2205h.class.cast(Class.forName(property, true, C2205h.class.getClassLoader()).newInstance());
            C2205h.m751b(c2205h);
            ((ArrayList) this.f746a).add(c2205h);
            return null;
        } catch (Exception e) {
            throw new Error(e);
        }
    }
}
