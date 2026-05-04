package j$.time.chrono;

import j$.time.C1969b;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.temporal.InterfaceC2060n;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C1997r extends AbstractC1980a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C1997r f480c = new C1997r();
    private static final long serialVersionUID = -1440403870442975015L;

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: p */
    public final InterfaceC1991l mo554p(int i) {
        if (i == 0) {
            return EnumC1998s.BCE;
        }
        if (i == 1) {
            return EnumC1998s.CE;
        }
        throw new C1969b("Invalid era: " + i);
    }

    @Override // j$.time.chrono.InterfaceC1990k
    public final String getId() {
        return "ISO";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: m */
    public final String mo553m() {
        return "iso8601";
    }

    @Override // j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: s */
    public final InterfaceC1981b mo555s(InterfaceC2060n interfaceC2060n) {
        return LocalDate.m473D(interfaceC2060n);
    }

    private C1997r() {
    }

    @Override // j$.time.chrono.AbstractC1980a, j$.time.chrono.InterfaceC1990k
    /* JADX INFO: renamed from: t */
    public final ChronoLocalDateTime mo560t(LocalDateTime localDateTime) {
        return LocalDateTime.m493A(localDateTime);
    }

    /* JADX INFO: renamed from: i */
    public static boolean m583i(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public Object writeReplace() {
        return new C1974D((byte) 1, this);
    }
}
