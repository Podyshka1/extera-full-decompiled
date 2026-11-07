package androidx.car.app.navigation.model;

import androidx.car.app.model.ActionStrip;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class MapController {
    private final ActionStrip mMapActionStrip;
    private final PanModeDelegate mPanModeDelegate;

    public static final class Builder {
    }

    public MapController(Builder builder) {
        throw null;
    }

    private MapController() {
        this.mPanModeDelegate = null;
        this.mMapActionStrip = null;
    }

    public ActionStrip getMapActionStrip() {
        return this.mMapActionStrip;
    }

    public PanModeDelegate getPanModeDelegate() {
        return this.mPanModeDelegate;
    }

    public int hashCode() {
        return Objects.hash(this.mPanModeDelegate, this.mMapActionStrip);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapController)) {
            return false;
        }
        MapController mapController = (MapController) obj;
        return Boolean.valueOf(this.mPanModeDelegate == null).equals(Boolean.valueOf(mapController.mPanModeDelegate == null)) && Objects.equals(this.mMapActionStrip, mapController.mMapActionStrip);
    }
}
