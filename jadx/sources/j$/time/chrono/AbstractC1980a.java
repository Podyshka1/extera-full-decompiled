package j$.time.chrono;

import j$.time.C1969b;
import j$.time.C2034h;
import j$.time.LocalDateTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;

/* JADX INFO: renamed from: j$.time.chrono.a */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1980a implements InterfaceC1990k {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f447a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public static final ConcurrentHashMap f448b = new ConcurrentHashMap();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return getId().compareTo(((InterfaceC1990k) obj).getId());
    }

    static {
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: renamed from: h */
    public static InterfaceC1990k m559h(InterfaceC1990k interfaceC1990k, String str) {
        String strMo553m;
        InterfaceC1990k interfaceC1990k2 = (InterfaceC1990k) f447a.putIfAbsent(str, interfaceC1990k);
        if (interfaceC1990k2 == null && (strMo553m = interfaceC1990k.mo553m()) != null) {
            f448b.putIfAbsent(strMo553m, interfaceC1990k);
        }
        return interfaceC1990k2;
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: t */
    public ChronoLocalDateTime mo560t(LocalDateTime localDateTime) {
        try {
            return mo555s(localDateTime).mo492y(C2034h.m616D(localDateTime));
        } catch (C1969b e) {
            throw new C1969b("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e);
        }
    }

    @Override // j$.time.chrono.InterfaceC1990k
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC1980a) && getId().compareTo(((AbstractC1980a) obj).getId()) == 0;
    }

    @Override // j$.time.chrono.InterfaceC1990k
    public final int hashCode() {
        return getClass().hashCode() ^ getId().hashCode();
    }

    @Override // j$.time.chrono.InterfaceC1990k
    public final String toString() {
        return getId();
    }
}
