package j$.time.zone;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.zone.b */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2274b implements Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f872e = 0;
    private static final long serialVersionUID = -6946044323557704546L;

    /* JADX INFO: renamed from: a */
    public final long f873a;

    /* JADX INFO: renamed from: b */
    public final LocalDateTime f874b;

    /* JADX INFO: renamed from: c */
    public final ZoneOffset f875c;

    /* JADX INFO: renamed from: d */
    public final ZoneOffset f876d;

    public C2274b(long j, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f873a = j;
        this.f874b = LocalDateTime.m671K(j, 0, zoneOffset);
        this.f875c = zoneOffset;
        this.f876d = zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2273a((byte) 2, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f873a, ((C2274b) obj).f873a);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2274b) {
            C2274b c2274b = (C2274b) obj;
            if (this.f873a == c2274b.f873a && this.f875c.equals(c2274b.f875c) && this.f876d.equals(c2274b.f876d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f876d.f649b, 16) ^ (this.f874b.hashCode() ^ this.f875c.f649b);
    }

    /* JADX INFO: renamed from: s */
    public final boolean m854s() {
        return this.f876d.getTotalSeconds() > this.f875c.getTotalSeconds();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(m854s() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.f874b);
        sb.append(this.f875c);
        sb.append(" to ");
        sb.append(this.f876d);
        sb.append(']');
        return sb.toString();
    }

    public C2274b(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f873a = localDateTime.toEpochSecond(zoneOffset);
        this.f874b = localDateTime;
        this.f875c = zoneOffset;
        this.f876d = zoneOffset2;
    }
}
