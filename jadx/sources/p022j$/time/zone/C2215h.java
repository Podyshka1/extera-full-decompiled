package p022j$.time.zone;

import java.security.AccessController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.zone.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2215h {

    /* JADX INFO: renamed from: b */
    public static final CopyOnWriteArrayList f888b;

    /* JADX INFO: renamed from: c */
    public static final ConcurrentHashMap f889c;

    /* JADX INFO: renamed from: a */
    public final Set f890a;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f888b = copyOnWriteArrayList;
        f889c = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2214g(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static ZoneRules m805a(String str) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentHashMap concurrentHashMap = f889c;
        C2215h c2215h = (C2215h) concurrentHashMap.get(str);
        if (c2215h == null) {
            if (concurrentHashMap.isEmpty()) {
                throw new C2213f("No time-zone data files registered");
            }
            throw new C2213f("Unknown time-zone ID: " + str);
        }
        if (c2215h.f890a.contains(str)) {
            return new ZoneRules(TimeZone.getTimeZone(str));
        }
        throw new C2213f("Not a built-in time zone: " + str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public static void m806b(C2215h c2215h) {
        Objects.requireNonNull(c2215h, "provider");
        synchronized (C2215h.class) {
            try {
                for (String str : c2215h.f890a) {
                    Objects.requireNonNull(str, "zoneId");
                    if (((C2215h) f889c.putIfAbsent(str, c2215h)) != null) {
                        throw new C2213f("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + c2215h);
                    }
                }
                Collections.unmodifiableSet(new HashSet(f889c.keySet()));
            } catch (Throwable th) {
                throw th;
            }
        }
        f888b.add(c2215h);
    }

    public C2215h() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : TimeZone.getAvailableIDs()) {
            linkedHashSet.add(str);
        }
        this.f890a = Collections.unmodifiableSet(linkedHashSet);
    }
}
