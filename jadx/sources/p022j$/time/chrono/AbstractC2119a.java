package p022j$.time.chrono;

import java.util.Locale;
import p022j$.time.C2108b;
import p022j$.time.C2173h;
import p022j$.time.LocalDateTime;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.a */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2119a implements InterfaceC2129k {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f680a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public static final ConcurrentHashMap f681b = new ConcurrentHashMap();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return getId().compareTo(((InterfaceC2129k) obj).getId());
    }

    static {
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: renamed from: h */
    public static InterfaceC2129k m682h(InterfaceC2129k interfaceC2129k, String str) {
        String strMo676m;
        InterfaceC2129k interfaceC2129k2 = (InterfaceC2129k) f680a.putIfAbsent(str, interfaceC2129k);
        if (interfaceC2129k2 == null && (strMo676m = interfaceC2129k.mo676m()) != null) {
            f681b.putIfAbsent(strMo676m, interfaceC2129k);
        }
        return interfaceC2129k2;
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: t */
    public ChronoLocalDateTime mo683t(LocalDateTime localDateTime) {
        try {
            return mo678s(localDateTime).mo613y(C2173h.m739D(localDateTime));
        } catch (C2108b e) {
            throw new C2108b("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e);
        }
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC2119a) && getId().compareTo(((AbstractC2119a) obj).getId()) == 0;
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    public final int hashCode() {
        return getClass().hashCode() ^ getId().hashCode();
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    public final String toString() {
        return getId();
    }
}
