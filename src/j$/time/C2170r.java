package j$.time;

import j$.time.temporal.EnumC2173a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.r */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2170r implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* JADX INFO: renamed from: a */
    public byte f671a;

    /* JADX INFO: renamed from: b */
    public Object f672b;

    public C2170r(byte b2, Object obj) {
        this.f671a = b2;
        this.f672b = obj;
    }

    /* JADX INFO: renamed from: a */
    public static Object m709a(byte b2, ObjectInput objectInput) throws IOException {
        switch (b2) {
            case 1:
                Duration duration = Duration.f463c;
                return Duration.ofSeconds(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.f466c;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.f469d;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return C2162j.c0(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.f474c;
                LocalDate localDate2 = LocalDate.f469d;
                return LocalDateTime.m518I(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2162j.c0(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.f474c;
                LocalDate localDate3 = LocalDate.f469d;
                LocalDateTime localDateTimeM518I = LocalDateTime.m518I(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2162j.c0(objectInput));
                ZoneOffset zoneOffsetB0 = ZoneOffset.b0(objectInput);
                ZoneId zoneId = (ZoneId) m709a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || zoneOffsetB0.equals(zoneId)) {
                    return new ZonedDateTime(localDateTimeM518I, zoneId, zoneOffsetB0);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                int i = C2195w.f711d;
                return ZoneId.m541B(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.b0(objectInput);
            case 9:
                int i2 = C2169q.f668c;
                return new C2169q(C2162j.c0(objectInput), ZoneOffset.b0(objectInput));
            case 10:
                int i3 = OffsetDateTime.f478c;
                LocalDate localDate4 = LocalDate.f469d;
                return new OffsetDateTime(LocalDateTime.m518I(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), C2162j.c0(objectInput)), ZoneOffset.b0(objectInput));
            case 11:
                int i4 = C2172t.f675b;
                return C2172t.m710t(objectInput.readInt());
            case 12:
                int i5 = YearMonth.f485c;
                return YearMonth.of(objectInput.readInt(), objectInput.readByte());
            case 13:
                int i6 = C2166n.f663c;
                byte b3 = objectInput.readByte();
                byte b4 = objectInput.readByte();
                EnumC2164l enumC2164lM702I = EnumC2164l.m702I(b3);
                Objects.requireNonNull(enumC2164lM702I, "month");
                EnumC2173a.DAY_OF_MONTH.m719X(b4);
                if (b4 <= enumC2164lM702I.m704G()) {
                    return new C2166n(enumC2164lM702I.getValue(), b4);
                }
                throw new C2103c("Illegal value for DayOfMonth field, value " + ((int) b4) + " is not valid for month " + enumC2164lM702I.name());
            case 14:
                Period period = Period.f481d;
                return Period.m534a(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.f672b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte b2 = objectInput.readByte();
        this.f671a = b2;
        this.f672b = m709a(b2, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f671a;
        Object obj = this.f672b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                Duration duration = (Duration) obj;
                objectOutput.writeLong(duration.f464a);
                objectOutput.writeInt(duration.f465b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f467a);
                objectOutput.writeInt(instant.f468b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.f471a);
                objectOutput.writeByte(localDate.f472b);
                objectOutput.writeByte(localDate.f473c);
                return;
            case 4:
                ((C2162j) obj).h0(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.f476a;
                objectOutput.writeInt(localDate2.f471a);
                objectOutput.writeByte(localDate2.f472b);
                objectOutput.writeByte(localDate2.f473c);
                localDateTime.f477b.h0(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.f495a;
                LocalDate localDate3 = localDateTime2.f476a;
                objectOutput.writeInt(localDate3.f471a);
                objectOutput.writeByte(localDate3.f472b);
                objectOutput.writeByte(localDate3.f473c);
                localDateTime2.f477b.h0(objectOutput);
                zonedDateTime.f496b.c0(objectOutput);
                zonedDateTime.f497c.mo545P(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((C2195w) obj).f712b);
                return;
            case 8:
                ((ZoneOffset) obj).c0(objectOutput);
                return;
            case 9:
                C2169q c2169q = (C2169q) obj;
                c2169q.f669a.h0(objectOutput);
                c2169q.f670b.c0(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f479a;
                LocalDate localDate4 = localDateTime3.f476a;
                objectOutput.writeInt(localDate4.f471a);
                objectOutput.writeByte(localDate4.f472b);
                objectOutput.writeByte(localDate4.f473c);
                localDateTime3.f477b.h0(objectOutput);
                offsetDateTime.f480b.c0(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((C2172t) obj).f676a);
                return;
            case 12:
                YearMonth yearMonth = (YearMonth) obj;
                objectOutput.writeInt(yearMonth.f486a);
                objectOutput.writeByte(yearMonth.f487b);
                return;
            case 13:
                C2166n c2166n = (C2166n) obj;
                objectOutput.writeByte(c2166n.f664a);
                objectOutput.writeByte(c2166n.f665b);
                return;
            case 14:
                Period period = (Period) obj;
                objectOutput.writeInt(period.f482a);
                objectOutput.writeInt(period.f483b);
                objectOutput.writeInt(period.f484c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public C2170r() {
    }
}
