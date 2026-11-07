package androidx.car.app.model;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CarColor {
    public static final int TYPE_BLUE = 6;
    public static final int TYPE_CUSTOM = 0;
    public static final int TYPE_DEFAULT = 1;
    public static final int TYPE_GREEN = 5;
    public static final int TYPE_PRIMARY = 2;
    public static final int TYPE_RED = 4;
    public static final int TYPE_SECONDARY = 3;
    public static final int TYPE_YELLOW = 7;
    private final int mColor;
    private final int mColorDark;
    private final int mType;
    public static final CarColor DEFAULT = create(1);
    public static final CarColor PRIMARY = create(2);
    public static final CarColor SECONDARY = create(3);
    public static final CarColor RED = create(4);
    public static final CarColor GREEN = create(5);
    public static final CarColor BLUE = create(6);
    public static final CarColor YELLOW = create(7);

    public static CarColor createCustom(int i, int i2) {
        return new CarColor(0, i, i2);
    }

    public int getType() {
        return this.mType;
    }

    public int getColor() {
        return this.mColor;
    }

    public int getColorDark() {
        return this.mColorDark;
    }

    public String toString() {
        return "[type: " + typeToString(this.mType) + ", color: " + this.mColor + ", dark: " + this.mColorDark + "]";
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mType), Integer.valueOf(this.mColor), Integer.valueOf(this.mColorDark));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarColor)) {
            return false;
        }
        CarColor carColor = (CarColor) obj;
        return this.mColor == carColor.mColor && this.mColorDark == carColor.mColorDark && this.mType == carColor.mType;
    }

    private static CarColor create(int i) {
        return new CarColor(i, 0, 0);
    }

    private static String typeToString(int i) {
        switch (i) {
            case 0:
                return "CUSTOM";
            case 1:
                return PluginsConstants.Strategy.DEFAULT;
            case 2:
                return "PRIMARY";
            case 3:
                return "SECONDARY";
            case 4:
                return "RED";
            case 5:
                return "GREEN";
            case 6:
                return "BLUE";
            case 7:
                return "YELLOW";
            default:
                return "<unknown>";
        }
    }

    private CarColor() {
        this.mType = 1;
        this.mColor = 0;
        this.mColorDark = 0;
    }

    private CarColor(int i, int i2, int i3) {
        this.mType = i;
        this.mColor = i2;
        this.mColorDark = i3;
    }
}
