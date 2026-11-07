package j$.time.zone;

import j$.sun.security.action.C2322a;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: j$.time.zone.g */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2418g {

    /* JADX INFO: renamed from: b */
    public static final CopyOnWriteArrayList f890b;

    /* JADX INFO: renamed from: c */
    public static final ConcurrentMap f891c;

    /* JADX INFO: renamed from: d */
    public static volatile Set f892d;

    /* JADX INFO: renamed from: a */
    public final Set f893a;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f890b = copyOnWriteArrayList;
        f891c = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2322a(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    public C2418g() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : TimeZone.getAvailableIDs()) {
            linkedHashSet.add(str);
        }
        this.f893a = Collections.unmodifiableSet(linkedHashSet);
    }

    /* JADX INFO: renamed from: a */
    public static ZoneRules m905a(String str) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) f891c;
        C2418g c2418g = (C2418g) concurrentHashMap.get(str);
        if (c2418g == null) {
            if (concurrentHashMap.isEmpty()) {
                throw new C2417f("No time-zone data files registered");
            }
            throw new C2417f("Unknown time-zone ID: ".concat(str));
        }
        if (c2418g.f893a.contains(str)) {
            return new ZoneRules(TimeZone.getTimeZone(str));
        }
        throw new C2417f("Not a built-in time zone: ".concat(str));
    }

    /* JADX INFO: renamed from: b */
    public static void m906b(C2418g c2418g) {
        Objects.requireNonNull(c2418g, "provider");
        synchronized (C2418g.class) {
            try {
                for (String str : c2418g.f893a) {
                    Objects.requireNonNull(str, "zoneId");
                    if (((C2418g) ((ConcurrentHashMap) f891c).putIfAbsent(str, c2418g)) != null) {
                        throw new C2417f("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + c2418g);
                    }
                }
                f892d = Collections.unmodifiableSet(new HashSet(((ConcurrentHashMap) f891c).keySet()));
            } catch (Throwable th) {
                throw th;
            }
        }
        f890b.add(c2418g);
    }
}
