package j$.time.zone;

import j$.sun.security.action.C2182a;
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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2279g {

    /* JADX INFO: renamed from: b */
    public static final CopyOnWriteArrayList f888b;

    /* JADX INFO: renamed from: c */
    public static final ConcurrentMap f889c;

    /* JADX INFO: renamed from: d */
    public static volatile Set f890d;

    /* JADX INFO: renamed from: a */
    public final Set f891a;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f888b = copyOnWriteArrayList;
        f889c = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2182a(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    public C2279g() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : TimeZone.getAvailableIDs()) {
            linkedHashSet.add(str);
        }
        this.f891a = Collections.unmodifiableSet(linkedHashSet);
    }

    /* JADX INFO: renamed from: a */
    public static ZoneRules m857a(String str) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) f889c;
        C2279g c2279g = (C2279g) concurrentHashMap.get(str);
        if (c2279g == null) {
            if (concurrentHashMap.isEmpty()) {
                throw new C2278f("No time-zone data files registered");
            }
            throw new C2278f("Unknown time-zone ID: ".concat(str));
        }
        if (c2279g.f891a.contains(str)) {
            return new ZoneRules(TimeZone.getTimeZone(str));
        }
        throw new C2278f("Not a built-in time zone: ".concat(str));
    }

    /* JADX INFO: renamed from: b */
    public static void m858b(C2279g c2279g) {
        Objects.requireNonNull(c2279g, "provider");
        synchronized (C2279g.class) {
            try {
                for (String str : c2279g.f891a) {
                    Objects.requireNonNull(str, "zoneId");
                    if (((C2279g) ((ConcurrentHashMap) f889c).putIfAbsent(str, c2279g)) != null) {
                        throw new C2278f("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + c2279g);
                    }
                }
                f890d = Collections.unmodifiableSet(new HashSet(((ConcurrentHashMap) f889c).keySet()));
            } catch (Throwable th) {
                throw th;
            }
        }
        f888b.add(c2279g);
    }
}
