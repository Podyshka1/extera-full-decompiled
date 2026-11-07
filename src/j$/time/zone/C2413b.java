package j$.time.zone;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.zone.b */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2413b implements Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f874e = 0;
    private static final long serialVersionUID = -6946044323557704546L;

    /* JADX INFO: renamed from: a */
    public final long f875a;

    /* JADX INFO: renamed from: b */
    public final LocalDateTime f876b;

    /* JADX INFO: renamed from: c */
    public final ZoneOffset f877c;

    /* JADX INFO: renamed from: d */
    public final ZoneOffset f878d;

    public C2413b(long j, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f875a = j;
        this.f876b = LocalDateTime.m696K(j, 0, zoneOffset);
        this.f877c = zoneOffset;
        this.f878d = zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2412a((byte) 2, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f875a, ((C2413b) obj).f875a);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2413b) {
            C2413b c2413b = (C2413b) obj;
            if (this.f875a == c2413b.f875a && this.f877c.equals(c2413b.f877c) && this.f878d.equals(c2413b.f878d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f878d.f650b, 16) ^ (this.f876b.hashCode() ^ this.f877c.f650b);
    }

    /* JADX INFO: renamed from: s */
    public final boolean m902s() {
        return this.f878d.getTotalSeconds() > this.f877c.getTotalSeconds();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(m902s() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.f876b);
        sb.append(this.f877c);
        sb.append(" to ");
        sb.append(this.f878d);
        sb.append(']');
        return sb.toString();
    }

    public C2413b(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f875a = localDateTime.toEpochSecond(zoneOffset);
        this.f876b = localDateTime;
        this.f877c = zoneOffset;
        this.f878d = zoneOffset2;
    }
}
