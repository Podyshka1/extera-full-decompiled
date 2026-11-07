package j$.time;

import j$.nio.file.C2148b;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class OffsetTime implements Temporal, InterfaceC2266m, Comparable<OffsetTime>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f632c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* JADX INFO: renamed from: a */
    public final LocalTime f633a;

    /* JADX INFO: renamed from: b */
    public final ZoneOffset f634b;

    static {
        LocalTime localTime = LocalTime.f618e;
        ZoneOffset zoneOffset = ZoneOffset.f648g;
        localTime.getClass();
        of(localTime, zoneOffset);
        LocalTime localTime2 = LocalTime.f619f;
        ZoneOffset zoneOffset2 = ZoneOffset.f647f;
        localTime2.getClass();
        of(localTime2, zoneOffset2);
    }

    public OffsetTime(LocalTime localTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localTime, "time");
        this.f633a = localTime;
        Objects.requireNonNull(zoneOffset, "offset");
        this.f634b = zoneOffset;
    }

    public static OffsetTime of(LocalTime localTime, ZoneOffset zoneOffset) {
        return new OffsetTime(localTime, zoneOffset);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 9, this);
    }

    /* JADX INFO: renamed from: D */
    public final long m689D() {
        return this.f633a.f0() - (((long) this.f634b.getTotalSeconds()) * 1000000000);
    }

    /* JADX INFO: renamed from: I */
    public final OffsetTime m690I(LocalTime localTime, ZoneOffset zoneOffset) {
        return (this.f633a == localTime && this.f634b.equals(zoneOffset)) ? this : new OffsetTime(localTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: a */
    public final Temporal mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (OffsetTime) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = EnumC2254a.OFFSET_SECONDS;
        LocalTime localTime = this.f633a;
        if (interfaceC2269p != enumC2254a) {
            return m690I(localTime.mo652a(j, interfaceC2269p), this.f634b);
        }
        EnumC2254a enumC2254a2 = (EnumC2254a) interfaceC2269p;
        return m690I(localTime, ZoneOffset.ofTotalSeconds(enumC2254a2.f830b.m837a(j, enumC2254a2)));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }

    @Override // java.lang.Comparable
    public final int compareTo(OffsetTime offsetTime) {
        OffsetTime offsetTime2 = offsetTime;
        if (this.f634b.equals(offsetTime2.f634b)) {
            return this.f633a.compareTo(offsetTime2.f633a);
        }
        int iCompare = Long.compare(m689D(), offsetTime2.m689D());
        return iCompare == 0 ? this.f633a.compareTo(offsetTime2.f633a) : iCompare;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f850d || c2213e == AbstractC2270q.f851e) {
            return this.f634b;
        }
        if (((c2213e == AbstractC2270q.f847a) || (c2213e == AbstractC2270q.f848b)) || c2213e == AbstractC2270q.f852f) {
            return null;
        }
        return c2213e == AbstractC2270q.f853g ? this.f633a : c2213e == AbstractC2270q.f849c ? ChronoUnit.NANOS : c2213e.m766l(this);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(this.f633a.f0(), EnumC2254a.NANO_OF_DAY).mo652a(this.f634b.getTotalSeconds(), EnumC2254a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetTime) {
            OffsetTime offsetTime = (OffsetTime) obj;
            if (this.f633a.equals(offsetTime.f633a) && this.f634b.equals(offsetTime.f634b)) {
                return true;
            }
        }
        return false;
    }

    public ZoneOffset getOffset() {
        return this.f634b;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo716j(LocalDate localDate) {
        return (OffsetTime) localDate.mo641e(this);
    }

    public final int hashCode() {
        return this.f634b.f649b ^ this.f633a.hashCode();
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).b0() || interfaceC2269p == EnumC2254a.OFFSET_SECONDS : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.OFFSET_SECONDS ? this.f634b.getTotalSeconds() : this.f633a.mo532k(interfaceC2269p) : interfaceC2269p.mo831S(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.OFFSET_SECONDS ? ((EnumC2254a) interfaceC2269p).f830b : this.f633a.mo643l(interfaceC2269p) : interfaceC2269p.mo829D(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        OffsetTime offsetTime;
        if (temporal instanceof OffsetTime) {
            offsetTime = (OffsetTime) temporal;
        } else {
            try {
                offsetTime = new OffsetTime(LocalTime.m681I(temporal), ZoneOffset.m707Y(temporal));
            } catch (C2184b e) {
                C2148b.m614g("Unable to obtain OffsetTime from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, offsetTime);
        }
        long jM689D = offsetTime.m689D() - m689D();
        switch (AbstractC2248n.f814a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return jM689D;
            case 2:
                return jM689D / 1000;
            case 3:
                return jM689D / 1000000;
            case 4:
                return jM689D / 1000000000;
            case 5:
                return jM689D / 60000000000L;
            case 6:
                return jM689D / 3600000000000L;
            case 7:
                return jM689D / 43200000000000L;
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final OffsetTime mo653b(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? m690I(this.f633a.mo653b(j, temporalUnit), this.f634b) : (OffsetTime) temporalUnit.mo828s(this, j);
    }

    public LocalTime toLocalTime() {
        return this.f633a;
    }

    public final String toString() {
        return this.f633a.toString() + this.f634b.f650c;
    }
}
