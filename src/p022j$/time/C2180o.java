package p022j$.time;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.temporal.EnumC2186a;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2180o implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* JADX INFO: renamed from: a */
    public byte f812a;

    /* JADX INFO: renamed from: b */
    public Object f813b;

    public C2180o() {
    }

    public C2180o(byte b, Object obj) {
        this.f812a = b;
        this.f813b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.f812a;
        Object obj = this.f813b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.f633a);
                objectOutput.writeInt(duration.f634b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f636a);
                objectOutput.writeInt(instant.f637b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.f640a);
                objectOutput.writeByte(localDate.f641b);
                objectOutput.writeByte(localDate.f642c);
                return;
            case 4:
                ((C2173h) obj).m752Q(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.f645a;
                objectOutput.writeInt(localDate2.f640a);
                objectOutput.writeByte(localDate2.f641b);
                objectOutput.writeByte(localDate2.f642c);
                localDateTime.f646b.m752Q(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.f664a;
                LocalDate localDate3 = localDateTime2.f645a;
                objectOutput.writeInt(localDate3.f640a);
                objectOutput.writeByte(localDate3.f641b);
                objectOutput.writeByte(localDate3.f642c);
                localDateTime2.f646b.m752Q(objectOutput);
                zonedDateTime.f665b.m650K(objectOutput);
                zonedDateTime.f666c.mo644E(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((C2185t) obj).f823b);
                return;
            case 8:
                ((ZoneOffset) obj).m650K(objectOutput);
                return;
            case 9:
                C2179n c2179n = (C2179n) obj;
                c2179n.f810a.m752Q(objectOutput);
                c2179n.f811b.m650K(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f648a;
                LocalDate localDate4 = localDateTime3.f645a;
                objectOutput.writeInt(localDate4.f640a);
                objectOutput.writeByte(localDate4.f641b);
                objectOutput.writeByte(localDate4.f642c);
                localDateTime3.f646b.m752Q(objectOutput);
                offsetDateTime.f649b.m650K(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((C2182q) obj).f817a);
                return;
            case 12:
                YearMonth yearMonth = (YearMonth) obj;
                objectOutput.writeInt(yearMonth.f655a);
                objectOutput.writeByte(yearMonth.f656b);
                return;
            case 13:
                C2177l c2177l = (C2177l) obj;
                objectOutput.writeByte(c2177l.f806a);
                objectOutput.writeByte(c2177l.f807b);
                return;
            case 14:
                Period period = (Period) obj;
                objectOutput.writeInt(period.f651a);
                objectOutput.writeInt(period.f652b);
                objectOutput.writeInt(period.f653c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte b = objectInput.readByte();
        this.f812a = b;
        this.f813b = m760a(b, objectInput);
    }

    /* JADX INFO: renamed from: a */
    public static Object m760a(byte b, ObjectInput objectInput) throws IOException {
        switch (b) {
            case 1:
                Duration duration = Duration.f632c;
                long j = objectInput.readLong();
                long j2 = objectInput.readInt();
                return Duration.m581h(AbstractC2104a.m530P(j, AbstractC2104a.m534T(j2, 1000000000L)), (int) AbstractC2104a.m533S(j2, 1000000000L));
            case 2:
                Instant instant = Instant.f635c;
                return Instant.m584D(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.f638d;
                return LocalDate.m596of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return C2173h.m741L(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.f643c;
                LocalDate localDate2 = LocalDate.f638d;
                return LocalDateTime.m615E(LocalDate.m596of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2173h.m741L(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.f643c;
                LocalDate localDate3 = LocalDate.f638d;
                LocalDateTime localDateTimeM615E = LocalDateTime.m615E(LocalDate.m596of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2173h.m741L(objectInput));
                ZoneOffset zoneOffsetM649J = ZoneOffset.m649J(objectInput);
                ZoneId zoneId = (ZoneId) m760a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(localDateTimeM615E, "localDateTime");
                Objects.requireNonNull(zoneOffsetM649J, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || zoneOffsetM649J.equals(zoneId)) {
                    return new ZonedDateTime(localDateTimeM615E, zoneId, zoneOffsetM649J);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                int i = C2185t.f822d;
                return ZoneId.m643v(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.m649J(objectInput);
            case 9:
                int i2 = C2179n.f809c;
                return new C2179n(C2173h.m741L(objectInput), ZoneOffset.m649J(objectInput));
            case 10:
                int i3 = OffsetDateTime.f647c;
                LocalDate localDate4 = LocalDate.f638d;
                return new OffsetDateTime(LocalDateTime.m615E(LocalDate.m596of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2173h.m741L(objectInput)), ZoneOffset.m649J(objectInput));
            case 11:
                int i4 = C2182q.f816b;
                return C2182q.m761v(objectInput.readInt());
            case 12:
                int i5 = YearMonth.f654c;
                return YearMonth.m633of(objectInput.readInt(), objectInput.readByte());
            case 13:
                int i6 = C2177l.f805c;
                byte b2 = objectInput.readByte();
                byte b3 = objectInput.readByte();
                EnumC2175j enumC2175jM754E = EnumC2175j.m754E(b2);
                Objects.requireNonNull(enumC2175jM754E, "month");
                EnumC2186a.DAY_OF_MONTH.m774r(b3);
                if (b3 <= enumC2175jM754E.m756D()) {
                    return new C2177l(enumC2175jM754E.getValue(), b3);
                }
                throw new C2108b("Illegal value for DayOfMonth field, value " + ((int) b3) + " is not valid for month " + enumC2175jM754E.name());
            case 14:
                Period period = Period.f650d;
                int i7 = objectInput.readInt();
                int i8 = objectInput.readInt();
                int i9 = objectInput.readInt();
                return ((i7 | i8) | i9) == 0 ? Period.f650d : new Period(i7, i8, i9);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.f813b;
    }
}
