package j$.time;

import j$.nio.file.C2288b;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class OffsetTime implements Temporal, InterfaceC2405m, Comparable<OffsetTime>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f633c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* JADX INFO: renamed from: a */
    public final LocalTime f634a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f635b;

    static {
        LocalTime localTime = LocalTime.f619e;
        ZoneOffset zoneOffset = ZoneOffset.f649g;
        localTime.getClass();
        of(localTime, zoneOffset);
        LocalTime localTime2 = LocalTime.f620f;
        ZoneOffset zoneOffset2 = ZoneOffset.f648f;
        localTime2.getClass();
        of(localTime2, zoneOffset2);
    }

    public OffsetTime(LocalTime localTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localTime, "time");
        this.f634a = localTime;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f635b = zoneOffset;
    }

    public static OffsetTime of(LocalTime localTime, ZoneOffset zoneOffset) {
        return new OffsetTime(localTime, zoneOffset);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 9, this);
    }

    /* JADX INFO: renamed from: D */
    public final long m719D() {
        return this.f634a.d0() - (((long) this.f635b.getTotalSeconds()) * 1000000000);
    }

    /* JADX INFO: renamed from: I */
    public final OffsetTime m720I(LocalTime localTime, ZoneOffset zoneOffset) {
        return (this.f634a == localTime && this.f635b.equals(zoneOffset)) ? this : new OffsetTime(localTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (OffsetTime) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = EnumC2393a.OFFSET_SECONDS;
        LocalTime localTime = this.f634a;
        if (interfaceC2408p != enumC2393a) {
            return m720I(localTime.mo676a(j, interfaceC2408p), this.f635b);
        }
        EnumC2393a enumC2393a2 = (EnumC2393a) interfaceC2408p;
        return m720I(localTime, ZoneOffset.ofTotalSeconds(enumC2393a2.f832b.m885a(j, enumC2393a2)));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo678c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo677b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo677b(j2, temporalUnit);
    }

    @Override // java.lang.Comparable
    public final int compareTo(OffsetTime offsetTime) {
        OffsetTime offsetTime2 = offsetTime;
        if (this.f635b.equals(offsetTime2.f635b)) {
            return this.f634a.compareTo(offsetTime2.f634a);
        }
        int iCompare = Long.compare(m719D(), offsetTime2.m719D());
        return iCompare == 0 ? this.f634a.compareTo(offsetTime2.f634a) : iCompare;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f852d || c2352d == AbstractC2409q.f853e) {
            return this.f635b;
        }
        if (((c2352d == AbstractC2409q.f849a) || (c2352d == AbstractC2409q.f850b)) || c2352d == AbstractC2409q.f854f) {
            return null;
        }
        return c2352d == AbstractC2409q.f855g ? this.f634a : c2352d == AbstractC2409q.f851c ? ChronoUnit.NANOS : c2352d.m810l(this);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(this.f634a.d0(), EnumC2393a.NANO_OF_DAY).mo676a(this.f635b.getTotalSeconds(), EnumC2393a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetTime) {
            OffsetTime offsetTime = (OffsetTime) obj;
            if (this.f634a.equals(offsetTime.f634a) && this.f635b.equals(offsetTime.f635b)) {
                return true;
            }
        }
        return false;
    }

    public ZoneOffset getOffset() {
        return this.f635b;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (OffsetTime) localDate.mo665e(this);
    }

    public final int hashCode() {
        return this.f635b.f650b ^ this.f634a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).m878Z() || interfaceC2408p == EnumC2393a.OFFSET_SECONDS : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.OFFSET_SECONDS ? this.f635b.getTotalSeconds() : this.f634a.mo556k(interfaceC2408p) : interfaceC2408p.mo875R(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.OFFSET_SECONDS ? ((EnumC2393a) interfaceC2408p).f832b : this.f634a.mo667l(interfaceC2408p) : interfaceC2408p.mo873D(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        OffsetTime offsetTime;
        if (temporal instanceof OffsetTime) {
            offsetTime = (OffsetTime) temporal;
        } else {
            try {
                offsetTime = new OffsetTime(LocalTime.m708I(temporal), ZoneOffset.m737X(temporal));
            } catch (DateTimeException e) {
                C2288b.m638g("Unable to obtain OffsetTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, offsetTime);
        }
        long jM719D = offsetTime.m719D() - m719D();
        switch (AbstractC2387m.f816a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return jM719D;
            case 2:
                return jM719D / 1000;
            case 3:
                return jM719D / 1000000;
            case 4:
                return jM719D / 1000000000;
            case 5:
                return jM719D / 60000000000L;
            case 6:
                return jM719D / 3600000000000L;
            case 7:
                return jM719D / 43200000000000L;
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final OffsetTime mo677b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? m720I(this.f634a.mo677b(j, temporalUnit), this.f635b) : (OffsetTime) temporalUnit.mo872s(this, j);
    }

    public LocalTime toLocalTime() {
        return this.f634a;
    }

    public final String toString() {
        return this.f634a.toString() + this.f635b.f651c;
    }
}
