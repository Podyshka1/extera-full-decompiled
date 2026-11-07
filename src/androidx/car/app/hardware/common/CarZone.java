package androidx.car.app.hardware.common;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CarZone {
    public static final int CAR_ZONE_COLUMN_ALL = 16;
    public static final int CAR_ZONE_COLUMN_CENTER = 48;
    public static final int CAR_ZONE_COLUMN_DRIVER = 80;
    public static final int CAR_ZONE_COLUMN_LEFT = 32;
    public static final int CAR_ZONE_COLUMN_PASSENGER = 96;
    public static final int CAR_ZONE_COLUMN_RIGHT = 64;
    public static final CarZone CAR_ZONE_GLOBAL = new Builder().build();
    public static final int CAR_ZONE_ROW_ALL = 0;
    public static final int CAR_ZONE_ROW_EXCLUDE_FIRST = 4;
    public static final int CAR_ZONE_ROW_FIRST = 1;
    public static final int CAR_ZONE_ROW_SECOND = 2;
    public static final int CAR_ZONE_ROW_THIRD = 3;
    private final int mColumn;
    private final int mRow;

    public int getRow() {
        return this.mRow;
    }

    public int getColumn() {
        return this.mColumn;
    }

    public CarZone(Builder builder) {
        this.mRow = builder.mRow;
        this.mColumn = builder.mColumn;
    }

    public String toString() {
        String str;
        int i = this.mRow;
        String str2 = "UNKNOWN";
        if (i == 0) {
            str = "CAR_ZONE_ROW_ALL";
        } else if (i == 1) {
            str = "CAR_ZONE_ROW_FIRST";
        } else if (i == 2) {
            str = "CAR_ZONE_ROW_SECOND";
        } else if (i == 3) {
            str = "CAR_ZONE_ROW_THIRD";
        } else {
            str = i != 4 ? "UNKNOWN" : "CAR_ZONE_ROW_EXCLUDE_FIRST";
        }
        int i2 = this.mColumn;
        if (i2 == 16) {
            str2 = "CAR_ZONE_COLUMN_ALL";
        } else if (i2 == 32) {
            str2 = "CAR_ZONE_COLUMN_LEFT";
        } else if (i2 == 48) {
            str2 = "CAR_ZONE_COLUMN_CENTER";
        } else if (i2 == 64) {
            str2 = "CAR_ZONE_COLUMN_RIGHT";
        } else if (i2 == 80) {
            str2 = "CAR_ZONE_COLUMN_DRIVER";
        } else if (i2 == 96) {
            str2 = "CAR_ZONE_COLUMN_PASSENGER";
        }
        return "[CarZone row value: " + str + ", column value: " + str2 + "]";
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mRow), Integer.valueOf(this.mColumn));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarZone)) {
            return false;
        }
        CarZone carZone = (CarZone) obj;
        return Integer.valueOf(this.mColumn).equals(Integer.valueOf(carZone.getColumn())) && Integer.valueOf(this.mRow).equals(Integer.valueOf(carZone.getRow()));
    }

    private CarZone() {
        this.mRow = 0;
        this.mColumn = 0;
    }

    public static final class Builder {
        int mRow = 0;
        int mColumn = 16;

        public CarZone build() {
            return new CarZone(this);
        }
    }
}
