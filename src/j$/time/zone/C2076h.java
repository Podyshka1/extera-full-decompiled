package j$.time.zone;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: j$.time.zone.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2076h {

    /* JADX INFO: renamed from: b */
    public static final CopyOnWriteArrayList f653b;

    /* JADX INFO: renamed from: c */
    public static final ConcurrentHashMap f654c;

    /* JADX INFO: renamed from: a */
    public final Set f655a;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f653b = copyOnWriteArrayList;
        f654c = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2075g(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static ZoneRules m680a(String str) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentHashMap concurrentHashMap = f654c;
        C2076h c2076h = (C2076h) concurrentHashMap.get(str);
        if (c2076h == null) {
            if (concurrentHashMap.isEmpty()) {
                throw new C2074f("No time-zone data files registered");
            }
            throw new C2074f("Unknown time-zone ID: " + str);
        }
        if (c2076h.f655a.contains(str)) {
            return new ZoneRules(TimeZone.getTimeZone(str));
        }
        throw new C2074f("Not a built-in time zone: " + str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public static void m681b(C2076h c2076h) {
        Objects.requireNonNull(c2076h, "provider");
        synchronized (C2076h.class) {
            try {
                for (String str : c2076h.f655a) {
                    Objects.requireNonNull(str, "zoneId");
                    if (((C2076h) f654c.putIfAbsent(str, c2076h)) != null) {
                        throw new C2074f("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + c2076h);
                    }
                }
                Collections.unmodifiableSet(new HashSet(f654c.keySet()));
            } catch (Throwable th) {
                throw th;
            }
        }
        f653b.add(c2076h);
    }

    public C2076h() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : TimeZone.getAvailableIDs()) {
            linkedHashSet.add(str);
        }
        this.f655a = Collections.unmodifiableSet(linkedHashSet);
    }
}
