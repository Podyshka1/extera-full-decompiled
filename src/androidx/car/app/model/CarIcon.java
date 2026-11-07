package androidx.car.app.model;

import androidx.car.app.model.constraints.CarIconConstraints;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.gms.cast.MediaError;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CarIcon {
    public static final int TYPE_ALERT = 4;
    public static final int TYPE_APP_ICON = 5;
    public static final int TYPE_BACK = 3;
    public static final int TYPE_COMPOSE_MESSAGE = 8;
    public static final int TYPE_CUSTOM = 1;
    public static final int TYPE_ERROR = 6;
    public static final int TYPE_PAN = 7;
    private static final int TYPE_RESOURCE = 2;
    private static final int TYPE_URI = 4;
    private final IconCompat mIcon;
    private final CarColor mTint;
    private final int mType;
    public static final CarIcon APP_ICON = forStandardType(5);
    public static final CarIcon BACK = forStandardType(3);
    public static final CarIcon ALERT = forStandardType(4);
    public static final CarIcon ERROR = forStandardType(6);
    public static final CarIcon PAN = forStandardType(7);
    public static final CarIcon COMPOSE_MESSAGE = forStandardType(8);

    public IconCompat getIcon() {
        return this.mIcon;
    }

    public CarColor getTint() {
        return this.mTint;
    }

    public int getType() {
        return this.mType;
    }

    public String toString() {
        return "[type: " + typeToString(this.mType) + ", tint: " + this.mTint + "]";
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mType), this.mTint, iconCompatHash());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarIcon)) {
            return false;
        }
        CarIcon carIcon = (CarIcon) obj;
        return this.mType == carIcon.mType && Objects.equals(this.mTint, carIcon.mTint) && iconCompatEquals(carIcon.mIcon);
    }

    private Object iconCompatHash() {
        IconCompat iconCompat = this.mIcon;
        if (iconCompat == null) {
            return null;
        }
        int type = iconCompat.getType();
        if (type != 2) {
            if (type == 4) {
                return this.mIcon.getUri();
            }
            return Integer.valueOf(type);
        }
        return this.mIcon.getResPackage() + this.mIcon.getResId();
    }

    private boolean iconCompatEquals(IconCompat iconCompat) {
        int type;
        IconCompat iconCompat2 = this.mIcon;
        if (iconCompat2 == null) {
            return iconCompat == null;
        }
        if (iconCompat == null || (type = iconCompat2.getType()) != iconCompat.getType()) {
            return false;
        }
        if (type == 2) {
            return Objects.equals(this.mIcon.getResPackage(), iconCompat.getResPackage()) && this.mIcon.getResId() == iconCompat.getResId();
        }
        if (type == 4) {
            return Objects.equals(this.mIcon.getUri(), iconCompat.getUri());
        }
        return true;
    }

    private static CarIcon forStandardType(int i) {
        return forStandardType(i, CarColor.DEFAULT);
    }

    private static CarIcon forStandardType(int i, CarColor carColor) {
        return new CarIcon(null, carColor, i);
    }

    private static String typeToString(int i) {
        switch (i) {
            case 1:
                return "CUSTOM";
            case 2:
            default:
                return "<unknown>";
            case 3:
                return "BACK";
            case 4:
                return "ALERT";
            case 5:
                return "APP";
            case 6:
                return MediaError.ERROR_TYPE_ERROR;
            case 7:
                return "PAN";
            case 8:
                return "COMPOSE_MESSAGE";
        }
    }

    public CarIcon(IconCompat iconCompat, CarColor carColor, int i) {
        this.mType = i;
        this.mIcon = iconCompat;
        this.mTint = carColor;
    }

    private CarIcon() {
        this.mType = 1;
        this.mIcon = null;
        this.mTint = null;
    }

    public static final class Builder {
        private final IconCompat mIcon;
        private CarColor mTint;
        private final int mType;

        public CarIcon build() {
            return new CarIcon(this.mIcon, this.mTint, this.mType);
        }

        public Builder(IconCompat iconCompat) {
            CarIconConstraints carIconConstraints = CarIconConstraints.UNCONSTRAINED;
            Objects.requireNonNull(iconCompat);
            carIconConstraints.checkSupportedIcon(iconCompat);
            this.mType = 1;
            this.mIcon = iconCompat;
            this.mTint = null;
        }
    }
}
