package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.time.C2108b;
import p022j$.time.LocalDate;
import p022j$.time.LocalDateTime;
import p022j$.time.temporal.InterfaceC2199n;

/* JADX INFO: renamed from: j$.time.chrono.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2136r extends AbstractC2119a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2136r f714c = new C2136r();
    private static final long serialVersionUID = -1440403870442975015L;

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2130l mo677p(int i) {
        if (i == 0) {
            return EnumC2137s.BCE;
        }
        if (i == 1) {
            return EnumC2137s.f715CE;
        }
        throw new C2108b("Invalid era: " + i);
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    public final String getId() {
        return "ISO";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: m */
    public final String mo676m() {
        return "iso8601";
    }

    @Override // p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: s */
    public final InterfaceC2120b mo678s(InterfaceC2199n interfaceC2199n) {
        return LocalDate.m593D(interfaceC2199n);
    }

    private C2136r() {
    }

    @Override // p022j$.time.chrono.AbstractC2119a, p022j$.time.chrono.InterfaceC2129k
    /* JADX INFO: renamed from: t */
    public final ChronoLocalDateTime mo683t(LocalDateTime localDateTime) {
        return LocalDateTime.m614A(localDateTime);
    }

    /* JADX INFO: renamed from: i */
    public static boolean m706i(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C2113D((byte) 1, this);
    }
}
