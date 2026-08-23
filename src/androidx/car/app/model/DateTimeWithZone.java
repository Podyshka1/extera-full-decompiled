package androidx.car.app.model;

import android.annotation.SuppressLint;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import j$.time.format.TextStyle;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class DateTimeWithZone {
    private static final long MAX_ZONE_OFFSET_SECONDS = 64800;
    private final long mTimeSinceEpochMillis;
    private final int mZoneOffsetSeconds;
    private final String mZoneShortName;

    public long getTimeSinceEpochMillis() {
        return this.mTimeSinceEpochMillis;
    }

    @SuppressLint({"MethodNameUnits"})
    public int getZoneOffsetSeconds() {
        return this.mZoneOffsetSeconds;
    }

    public String getZoneShortName() {
        return this.mZoneShortName;
    }

    public String toString() {
        return "[time since epoch (ms): " + this.mTimeSinceEpochMillis + "( " + new Date(this.mTimeSinceEpochMillis) + ")  zone offset (s): " + this.mZoneOffsetSeconds + ", zone: " + this.mZoneShortName + "]";
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.mTimeSinceEpochMillis), Integer.valueOf(this.mZoneOffsetSeconds), this.mZoneShortName);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DateTimeWithZone)) {
            return false;
        }
        DateTimeWithZone dateTimeWithZone = (DateTimeWithZone) obj;
        return this.mTimeSinceEpochMillis == dateTimeWithZone.mTimeSinceEpochMillis && this.mZoneOffsetSeconds == dateTimeWithZone.mZoneOffsetSeconds && Objects.equals(this.mZoneShortName, dateTimeWithZone.mZoneShortName);
    }

    public static DateTimeWithZone create(long j, int i, String str) {
        if (j < 0) {
            f$$ExternalSyntheticBUOutline1.m178m("Time since epoch must be greater than or equal to zero");
            return null;
        }
        if (Math.abs(i) > MAX_ZONE_OFFSET_SECONDS) {
            f$$ExternalSyntheticBUOutline1.m178m("Zone offset not in valid range: -18:00 to +18:00");
            return null;
        }
        Objects.requireNonNull(str);
        if (str.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m178m("The time zone short name can not be null or empty");
            return null;
        }
        return new DateTimeWithZone(j, i, str);
    }

    public static DateTimeWithZone create(long j, TimeZone timeZone) {
        if (j < 0) {
            f$$ExternalSyntheticBUOutline1.m178m("timeSinceEpochMillis must be greater than or equal to zero");
            return null;
        }
        Objects.requireNonNull(timeZone);
        return create(j, (int) (((long) timeZone.getOffset(j)) / 1000), timeZone.getDisplayName(false, 0));
    }

    public static DateTimeWithZone create(ZonedDateTime zonedDateTime) {
        return Api26Impl.create(zonedDateTime);
    }

    private DateTimeWithZone() {
        this.mTimeSinceEpochMillis = 0L;
        this.mZoneOffsetSeconds = 0;
        this.mZoneShortName = null;
    }

    private DateTimeWithZone(long j, int i, String str) {
        this.mTimeSinceEpochMillis = j;
        this.mZoneOffsetSeconds = i;
        this.mZoneShortName = str;
    }

    public static final class Api26Impl {
        public static DateTimeWithZone create(ZonedDateTime zonedDateTime) {
            Objects.requireNonNull(zonedDateTime);
            LocalDateTime localDateTimeMo564y = zonedDateTime.mo564y();
            ZoneId zone = zonedDateTime.getZone();
            ZoneOffset offset = zone.getRules().getOffset(localDateTimeMo564y);
            return DateTimeWithZone.create(TimeUnit.SECONDS.toMillis(localDateTimeMo564y.toEpochSecond(offset)), offset.getTotalSeconds(), zone.getDisplayName(TextStyle.SHORT, Locale.getDefault()));
        }
    }
}
