package j$.time.zone;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.zone.b */
/* JADX INFO: loaded from: classes2.dex */
public final class C2070b implements Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f636e = 0;
    private static final long serialVersionUID = -6946044323557704546L;

    /* JADX INFO: renamed from: a */
    public final long f637a;

    /* JADX INFO: renamed from: b */
    public final LocalDateTime f638b;

    /* JADX INFO: renamed from: c */
    public final ZoneOffset f639c;

    /* JADX INFO: renamed from: d */
    public final ZoneOffset f640d;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f637a, ((C2070b) obj).f637a);
    }

    public C2070b(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        localDateTime.getClass();
        this.f637a = AbstractC1965a.m441x(localDateTime, zoneOffset);
        this.f638b = localDateTime;
        this.f639c = zoneOffset;
        this.f640d = zoneOffset2;
    }

    public C2070b(long j, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f637a = j;
        this.f638b = LocalDateTime.m495F(j, 0, zoneOffset);
        this.f639c = zoneOffset;
        this.f640d = zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2069a((byte) 2, this);
    }

    /* JADX INFO: renamed from: h */
    public final boolean m677h() {
        return this.f640d.getTotalSeconds() > this.f639c.getTotalSeconds();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2070b) {
            C2070b c2070b = (C2070b) obj;
            if (this.f637a == c2070b.f637a && this.f639c.equals(c2070b.f639c) && this.f640d.equals(c2070b.f640d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f638b.hashCode() ^ this.f639c.f430b) ^ Integer.rotateLeft(this.f640d.f430b, 16);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(m677h() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.f638b);
        sb.append(this.f639c);
        sb.append(" to ");
        sb.append(this.f640d);
        sb.append(']');
        return sb.toString();
    }
}
