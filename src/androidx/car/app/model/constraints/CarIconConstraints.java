package androidx.car.app.model.constraints;

import androidx.car.app.model.CarIcon;
import androidx.core.graphics.drawable.IconCompat;
import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class CarIconConstraints {
    private final int[] mAllowedTypes;
    public static final CarIconConstraints UNCONSTRAINED = create(new int[]{1, 2, 4});
    public static final CarIconConstraints DEFAULT = create(new int[]{1, 2});

    private static CarIconConstraints create(int[] iArr) {
        return new CarIconConstraints(iArr);
    }

    public void validateOrThrow(CarIcon carIcon) {
        if (carIcon == null || carIcon.getType() != 1) {
            return;
        }
        IconCompat icon = carIcon.getIcon();
        if (icon == null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Custom icon does not have a backing IconCompat");
        } else {
            checkSupportedIcon(icon);
        }
    }

    public IconCompat checkSupportedIcon(IconCompat iconCompat) {
        int type = iconCompat.getType();
        for (int i : this.mAllowedTypes) {
            if (type == i) {
                if (type != 4 || "content".equalsIgnoreCase(iconCompat.getUri().getScheme())) {
                    return iconCompat;
                }
                Native$$ExternalSyntheticBUOutline5.m470m("Unsupported URI scheme for: ", iconCompat);
                return null;
            }
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Custom icon type is not allowed: ", type);
        return null;
    }

    private CarIconConstraints(int[] iArr) {
        this.mAllowedTypes = iArr;
    }
}
