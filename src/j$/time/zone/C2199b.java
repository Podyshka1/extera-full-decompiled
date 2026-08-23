package j$.time.zone;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.zone.b */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2199b implements Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f730e = 0;
    private static final long serialVersionUID = -6946044323557704546L;

    /* JADX INFO: renamed from: a */
    public final long f731a;

    /* JADX INFO: renamed from: b */
    public final LocalDateTime f732b;

    /* JADX INFO: renamed from: c */
    public final ZoneOffset f733c;

    /* JADX INFO: renamed from: d */
    public final ZoneOffset f734d;

    public C2199b(long j, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f731a = j;
        this.f732b = LocalDateTime.m519P(j, 0, zoneOffset);
        this.f733c = zoneOffset;
        this.f734d = zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2198a((byte) 2, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f731a, ((C2199b) obj).f731a);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2199b) {
            C2199b c2199b = (C2199b) obj;
            if (this.f731a == c2199b.f731a && this.f733c.equals(c2199b.f733c) && this.f734d.equals(c2199b.f734d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f734d.f493b, 16) ^ (this.f732b.hashCode() ^ this.f733c.f493b);
    }

    /* JADX INFO: renamed from: t */
    public final boolean m747t() {
        return this.f734d.getTotalSeconds() > this.f733c.getTotalSeconds();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(m747t() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.f732b);
        sb.append(this.f733c);
        sb.append(" to ");
        sb.append(this.f734d);
        sb.append(']');
        return sb.toString();
    }

    public C2199b(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f731a = localDateTime.toEpochSecond(zoneOffset);
        this.f732b = localDateTime;
        this.f733c = zoneOffset;
        this.f734d = zoneOffset2;
    }
}
