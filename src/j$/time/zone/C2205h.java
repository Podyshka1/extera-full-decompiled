package j$.time.zone;

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

/* JADX INFO: renamed from: j$.time.zone.h */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2205h {

    /* JADX INFO: renamed from: b */
    public static final CopyOnWriteArrayList f747b;

    /* JADX INFO: renamed from: c */
    public static final ConcurrentMap f748c;

    /* JADX INFO: renamed from: d */
    public static volatile Set f749d;

    /* JADX INFO: renamed from: a */
    public final Set f750a;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f747b = copyOnWriteArrayList;
        f748c = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2204g(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    public C2205h() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : TimeZone.getAvailableIDs()) {
            linkedHashSet.add(str);
        }
        this.f750a = Collections.unmodifiableSet(linkedHashSet);
    }

    /* JADX INFO: renamed from: a */
    public static ZoneRules m750a(String str) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) f748c;
        C2205h c2205h = (C2205h) concurrentHashMap.get(str);
        if (c2205h == null) {
            if (concurrentHashMap.isEmpty()) {
                throw new C2203f("No time-zone data files registered");
            }
            throw new C2203f("Unknown time-zone ID: ".concat(str));
        }
        if (c2205h.f750a.contains(str)) {
            return new ZoneRules(TimeZone.getTimeZone(str));
        }
        throw new C2203f("Not a built-in time zone: ".concat(str));
    }

    /* JADX INFO: renamed from: b */
    public static void m751b(C2205h c2205h) {
        Objects.requireNonNull(c2205h, "provider");
        synchronized (C2205h.class) {
            try {
                for (String str : c2205h.f750a) {
                    Objects.requireNonNull(str, "zoneId");
                    if (((C2205h) ((ConcurrentHashMap) f748c).putIfAbsent(str, c2205h)) != null) {
                        throw new C2203f("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + c2205h);
                    }
                }
                f749d = Collections.unmodifiableSet(new HashSet(((ConcurrentHashMap) f748c).keySet()));
            } catch (Throwable th) {
                throw th;
            }
        }
        f747b.add(c2205h);
    }
}
