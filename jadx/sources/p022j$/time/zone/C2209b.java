package p022j$.time.zone;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.LocalDateTime;
import p022j$.time.ZoneOffset;

/* JADX INFO: renamed from: j$.time.zone.b */
/* JADX INFO: loaded from: classes2.dex */
public final class C2209b implements Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ int f871e = 0;
    private static final long serialVersionUID = -6946044323557704546L;

    /* JADX INFO: renamed from: a */
    public final long f872a;

    /* JADX INFO: renamed from: b */
    public final LocalDateTime f873b;

    /* JADX INFO: renamed from: c */
    public final ZoneOffset f874c;

    /* JADX INFO: renamed from: d */
    public final ZoneOffset f875d;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f872a, ((C2209b) obj).f872a);
    }

    public C2209b(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        localDateTime.getClass();
        this.f872a = AbstractC2104a.m561x(localDateTime, zoneOffset);
        this.f873b = localDateTime;
        this.f874c = zoneOffset;
        this.f875d = zoneOffset2;
    }

    public C2209b(long j, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f872a = j;
        this.f873b = LocalDateTime.m616F(j, 0, zoneOffset);
        this.f874c = zoneOffset;
        this.f875d = zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2208a((byte) 2, this);
    }

    /* JADX INFO: renamed from: h */
    public final boolean m802h() {
        return this.f875d.getTotalSeconds() > this.f874c.getTotalSeconds();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2209b) {
            C2209b c2209b = (C2209b) obj;
            if (this.f872a == c2209b.f872a && this.f874c.equals(c2209b.f874c) && this.f875d.equals(c2209b.f875d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f873b.hashCode() ^ this.f874c.f662b) ^ Integer.rotateLeft(this.f875d.f662b, 16);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(m802h() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.f873b);
        sb.append(this.f874c);
        sb.append(" to ");
        sb.append(this.f875d);
        sb.append(']');
        return sb.toString();
    }
}
