package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.temporal.EnumC2047a;
import j$.util.Objects;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* JADX INFO: renamed from: j$.time.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2041o implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* JADX INFO: renamed from: a */
    public byte f577a;

    /* JADX INFO: renamed from: b */
    public Object f578b;

    public C2041o() {
    }

    public C2041o(byte b, Object obj) {
        this.f577a = b;
        this.f578b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.f577a;
        Object obj = this.f578b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.f401a);
                objectOutput.writeInt(duration.f402b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f404a);
                objectOutput.writeInt(instant.f405b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.f408a);
                objectOutput.writeByte(localDate.f409b);
                objectOutput.writeByte(localDate.f410c);
                return;
            case 4:
                ((C2034h) obj).m629Q(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.f413a;
                objectOutput.writeInt(localDate2.f408a);
                objectOutput.writeByte(localDate2.f409b);
                objectOutput.writeByte(localDate2.f410c);
                localDateTime.f414b.m629Q(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.f432a;
                LocalDate localDate3 = localDateTime2.f413a;
                objectOutput.writeInt(localDate3.f408a);
                objectOutput.writeByte(localDate3.f409b);
                objectOutput.writeByte(localDate3.f410c);
                localDateTime2.f414b.m629Q(objectOutput);
                zonedDateTime.f433b.m527K(objectOutput);
                zonedDateTime.f434c.mo521E(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((C2046t) obj).f588b);
                return;
            case 8:
                ((ZoneOffset) obj).m527K(objectOutput);
                return;
            case 9:
                C2040n c2040n = (C2040n) obj;
                c2040n.f575a.m629Q(objectOutput);
                c2040n.f576b.m527K(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f416a;
                LocalDate localDate4 = localDateTime3.f413a;
                objectOutput.writeInt(localDate4.f408a);
                objectOutput.writeByte(localDate4.f409b);
                objectOutput.writeByte(localDate4.f410c);
                localDateTime3.f414b.m629Q(objectOutput);
                offsetDateTime.f417b.m527K(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((C2043q) obj).f582a);
                return;
            case 12:
                YearMonth yearMonth = (YearMonth) obj;
                objectOutput.writeInt(yearMonth.f423a);
                objectOutput.writeByte(yearMonth.f424b);
                return;
            case 13:
                C2038l c2038l = (C2038l) obj;
                objectOutput.writeByte(c2038l.f571a);
                objectOutput.writeByte(c2038l.f572b);
                return;
            case 14:
                Period period = (Period) obj;
                objectOutput.writeInt(period.f419a);
                objectOutput.writeInt(period.f420b);
                objectOutput.writeInt(period.f421c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte b = objectInput.readByte();
        this.f577a = b;
        this.f578b = m637a(b, objectInput);
    }

    /* JADX INFO: renamed from: a */
    public static Object m637a(byte b, ObjectInput objectInput) throws IOException {
        switch (b) {
            case 1:
                Duration duration = Duration.f400c;
                long j = objectInput.readLong();
                long j2 = objectInput.readInt();
                return Duration.m461h(AbstractC1965a.m410P(j, AbstractC1965a.m414T(j2, 1000000000L)), (int) AbstractC1965a.m413S(j2, 1000000000L));
            case 2:
                Instant instant = Instant.f403c;
                return Instant.m464D(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.f406d;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return C2034h.m618L(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.f411c;
                LocalDate localDate2 = LocalDate.f406d;
                return LocalDateTime.m494E(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2034h.m618L(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.f411c;
                LocalDate localDate3 = LocalDate.f406d;
                LocalDateTime localDateTimeM494E = LocalDateTime.m494E(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2034h.m618L(objectInput));
                ZoneOffset zoneOffsetM526J = ZoneOffset.m526J(objectInput);
                ZoneId zoneId = (ZoneId) m637a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(localDateTimeM494E, "localDateTime");
                Objects.requireNonNull(zoneOffsetM526J, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || zoneOffsetM526J.equals(zoneId)) {
                    return new ZonedDateTime(localDateTimeM494E, zoneId, zoneOffsetM526J);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                int i = C2046t.f587d;
                return ZoneId.m520v(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.m526J(objectInput);
            case 9:
                int i2 = C2040n.f574c;
                return new C2040n(C2034h.m618L(objectInput), ZoneOffset.m526J(objectInput));
            case 10:
                int i3 = OffsetDateTime.f415c;
                LocalDate localDate4 = LocalDate.f406d;
                return new OffsetDateTime(LocalDateTime.m494E(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2034h.m618L(objectInput)), ZoneOffset.m526J(objectInput));
            case 11:
                int i4 = C2043q.f581b;
                return C2043q.m638v(objectInput.readInt());
            case 12:
                int i5 = YearMonth.f422c;
                return YearMonth.of(objectInput.readInt(), objectInput.readByte());
            case 13:
                int i6 = C2038l.f570c;
                byte b2 = objectInput.readByte();
                byte b3 = objectInput.readByte();
                EnumC2036j enumC2036jM631E = EnumC2036j.m631E(b2);
                Objects.requireNonNull(enumC2036jM631E, "month");
                EnumC2047a.DAY_OF_MONTH.m649r(b3);
                if (b3 <= enumC2036jM631E.m633D()) {
                    return new C2038l(enumC2036jM631E.getValue(), b3);
                }
                throw new C1969b("Illegal value for DayOfMonth field, value " + ((int) b3) + " is not valid for month " + enumC2036jM631E.name());
            case 14:
                Period period = Period.f418d;
                int i7 = objectInput.readInt();
                int i8 = objectInput.readInt();
                int i9 = objectInput.readInt();
                return ((i7 | i8) | i9) == 0 ? Period.f418d : new Period(i7, i8, i9);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.f578b;
    }
}
