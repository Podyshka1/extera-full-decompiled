package j$.time;

import j$.nio.file.C2288b;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.n */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2388n implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* JADX INFO: renamed from: a */
    public byte f817a;

    /* JADX INFO: renamed from: b */
    public Object f818b;

    public C2388n(byte b2, Object obj) {
        this.f817a = b2;
        this.f818b = obj;
    }

    /* JADX INFO: renamed from: a */
    public static Object m870a(byte b2, ObjectInput objectInput) throws StreamCorruptedException {
        switch (b2) {
            case 1:
                Duration duration = Duration.ZERO;
                return Duration.ofSeconds(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.f605c;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.f610d;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return LocalTime.c0(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.f615c;
                LocalDate localDate2 = LocalDate.f610d;
                return LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.c0(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.f615c;
                LocalDate localDate3 = LocalDate.f610d;
                LocalDateTime localDateTimeOf = LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.c0(objectInput));
                ZoneOffset zoneOffsetB0 = ZoneOffset.b0(objectInput);
                ZoneId zoneId = (ZoneId) m870a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(localDateTimeOf, "localDateTime");
                Objects.requireNonNull(zoneOffsetB0, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || zoneOffsetB0.equals(zoneId)) {
                    return new ZonedDateTime(localDateTimeOf, zoneOffsetB0, zoneId);
                }
                C2288b.m632a("ZoneId must match ZoneOffset");
                return null;
            case 7:
                int i = C2391q.f823d;
                return ZoneId.m732D(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.b0(objectInput);
            case 9:
                int i2 = OffsetTime.f633c;
                return OffsetTime.of(LocalTime.c0(objectInput), ZoneOffset.b0(objectInput));
            case 10:
                int i3 = OffsetDateTime.f630c;
                LocalDate localDate4 = LocalDate.f610d;
                return OffsetDateTime.of(LocalDateTime.of(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), LocalTime.c0(objectInput)), ZoneOffset.b0(objectInput));
            case 11:
                int i4 = Year.f640b;
                return Year.of(objectInput.readInt());
            case 12:
                int i5 = YearMonth.f642c;
                return YearMonth.of(objectInput.readInt(), objectInput.readByte());
            case 13:
                int i6 = MonthDay.f627c;
                return MonthDay.of(objectInput.readByte(), objectInput.readByte());
            case 14:
                Period period = Period.f636d;
                return Period.of(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.f818b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte b2 = objectInput.readByte();
        this.f817a = b2;
        this.f818b = m870a(b2, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f817a;
        Object obj = this.f818b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.f603a);
                objectOutput.writeInt(duration.f604b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f608a);
                objectOutput.writeInt(instant.f609b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.f612a);
                objectOutput.writeByte(localDate.f613b);
                objectOutput.writeByte(localDate.f614c);
                return;
            case 4:
                ((LocalTime) obj).h0(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.f617a;
                objectOutput.writeInt(localDate2.f612a);
                objectOutput.writeByte(localDate2.f613b);
                objectOutput.writeByte(localDate2.f614c);
                localDateTime.f618b.h0(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.f652a;
                LocalDate localDate3 = localDateTime2.f617a;
                objectOutput.writeInt(localDate3.f612a);
                objectOutput.writeByte(localDate3.f613b);
                objectOutput.writeByte(localDate3.f614c);
                localDateTime2.f618b.h0(objectOutput);
                zonedDateTime.f653b.c0(objectOutput);
                zonedDateTime.f654c.mo736R(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((C2391q) obj).f824b);
                return;
            case 8:
                ((ZoneOffset) obj).c0(objectOutput);
                return;
            case 9:
                OffsetTime offsetTime = (OffsetTime) obj;
                offsetTime.f634a.h0(objectOutput);
                offsetTime.f635b.c0(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f631a;
                LocalDate localDate4 = localDateTime3.f617a;
                objectOutput.writeInt(localDate4.f612a);
                objectOutput.writeByte(localDate4.f613b);
                objectOutput.writeByte(localDate4.f614c);
                localDateTime3.f618b.h0(objectOutput);
                offsetDateTime.f632b.c0(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((Year) obj).f641a);
                return;
            case 12:
                YearMonth yearMonth = (YearMonth) obj;
                objectOutput.writeInt(yearMonth.f643a);
                objectOutput.writeByte(yearMonth.f644b);
                return;
            case 13:
                MonthDay monthDay = (MonthDay) obj;
                objectOutput.writeByte(monthDay.f628a);
                objectOutput.writeByte(monthDay.f629b);
                return;
            case 14:
                Period period = (Period) obj;
                objectOutput.writeInt(period.f637a);
                objectOutput.writeInt(period.f638b);
                objectOutput.writeInt(period.f639c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public C2388n() {
    }
}
