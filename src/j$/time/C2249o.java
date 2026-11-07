package j$.time;

import j$.nio.file.C2148b;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.o */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2249o implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* JADX INFO: renamed from: a */
    public byte f815a;

    /* JADX INFO: renamed from: b */
    public Object f816b;

    public C2249o(byte b2, Object obj) {
        this.f815a = b2;
        this.f816b = obj;
    }

    /* JADX INFO: renamed from: a */
    public static Object m826a(byte b2, ObjectInput objectInput) throws StreamCorruptedException {
        switch (b2) {
            case 1:
                Duration duration = Duration.ZERO;
                return Duration.ofSeconds(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.f604c;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.f609d;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return LocalTime.e0(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.f614c;
                LocalDate localDate2 = LocalDate.f609d;
                return LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.e0(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.f614c;
                LocalDate localDate3 = LocalDate.f609d;
                LocalDateTime localDateTimeOf = LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.e0(objectInput));
                ZoneOffset zoneOffsetD0 = ZoneOffset.d0(objectInput);
                ZoneId zoneId = (ZoneId) m826a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(localDateTimeOf, "localDateTime");
                Objects.requireNonNull(zoneOffsetD0, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || zoneOffsetD0.equals(zoneId)) {
                    return new ZonedDateTime(localDateTimeOf, zoneOffsetD0, zoneId);
                }
                C2148b.m608a("ZoneId must match ZoneOffset");
                return null;
            case 7:
                int i = C2252r.f821d;
                return ZoneId.m702D(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.d0(objectInput);
            case 9:
                int i2 = OffsetTime.f632c;
                return OffsetTime.of(LocalTime.e0(objectInput), ZoneOffset.d0(objectInput));
            case 10:
                int i3 = OffsetDateTime.f629c;
                LocalDate localDate4 = LocalDate.f609d;
                return OffsetDateTime.of(LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.e0(objectInput)), ZoneOffset.d0(objectInput));
            case 11:
                int i4 = Year.f639b;
                return Year.of(objectInput.readInt());
            case 12:
                int i5 = YearMonth.f641c;
                return YearMonth.of(objectInput.readInt(), objectInput.readByte());
            case 13:
                int i6 = MonthDay.f626c;
                return MonthDay.of(objectInput.readByte(), objectInput.readByte());
            case 14:
                Period period = Period.f635d;
                return Period.of(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.f816b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte b2 = objectInput.readByte();
        this.f815a = b2;
        this.f816b = m826a(b2, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f815a;
        Object obj = this.f816b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.f602a);
                objectOutput.writeInt(duration.f603b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f607a);
                objectOutput.writeInt(instant.f608b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.f611a);
                objectOutput.writeByte(localDate.f612b);
                objectOutput.writeByte(localDate.f613c);
                return;
            case 4:
                ((LocalTime) obj).j0(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.f616a;
                objectOutput.writeInt(localDate2.f611a);
                objectOutput.writeByte(localDate2.f612b);
                objectOutput.writeByte(localDate2.f613c);
                localDateTime.f617b.j0(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.f651a;
                LocalDate localDate3 = localDateTime2.f616a;
                objectOutput.writeInt(localDate3.f611a);
                objectOutput.writeByte(localDate3.f612b);
                objectOutput.writeByte(localDate3.f613c);
                localDateTime2.f617b.j0(objectOutput);
                zonedDateTime.f652b.e0(objectOutput);
                zonedDateTime.f653c.mo706S(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((C2252r) obj).f822b);
                return;
            case 8:
                ((ZoneOffset) obj).e0(objectOutput);
                return;
            case 9:
                OffsetTime offsetTime = (OffsetTime) obj;
                offsetTime.f633a.j0(objectOutput);
                offsetTime.f634b.e0(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f630a;
                LocalDate localDate4 = localDateTime3.f616a;
                objectOutput.writeInt(localDate4.f611a);
                objectOutput.writeByte(localDate4.f612b);
                objectOutput.writeByte(localDate4.f613c);
                localDateTime3.f617b.j0(objectOutput);
                offsetDateTime.f631b.e0(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((Year) obj).f640a);
                return;
            case 12:
                YearMonth yearMonth = (YearMonth) obj;
                objectOutput.writeInt(yearMonth.f642a);
                objectOutput.writeByte(yearMonth.f643b);
                return;
            case 13:
                MonthDay monthDay = (MonthDay) obj;
                objectOutput.writeByte(monthDay.f627a);
                objectOutput.writeByte(monthDay.f628b);
                return;
            case 14:
                Period period = (Period) obj;
                objectOutput.writeInt(period.f636a);
                objectOutput.writeInt(period.f637b);
                objectOutput.writeInt(period.f638c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public C2249o() {
    }
}
