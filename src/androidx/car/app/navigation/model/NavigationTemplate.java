package androidx.car.app.navigation.model;

import androidx.car.app.model.ActionStrip;
import androidx.car.app.model.CarColor;
import androidx.car.app.model.Template;
import androidx.car.app.model.Toggle;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationTemplate implements Template {
    private final ActionStrip mActionStrip;
    private final CarColor mBackgroundColor;
    private final TravelEstimate mDestinationTravelEstimate;
    private final ActionStrip mMapActionStrip;
    private final NavigationInfo mNavigationInfo;
    private final PanModeDelegate mPanModeDelegate;
    private final Toggle mPanModeToggle;

    public static final class Builder {
    }

    public interface NavigationInfo {
    }

    public ActionStrip getActionStrip() {
        ActionStrip actionStrip = this.mActionStrip;
        Objects.requireNonNull(actionStrip);
        return actionStrip;
    }

    public ActionStrip getMapActionStrip() {
        return this.mMapActionStrip;
    }

    @Deprecated
    public Toggle getPanModeToggle() {
        return this.mPanModeToggle;
    }

    public PanModeDelegate getPanModeDelegate() {
        return this.mPanModeDelegate;
    }

    public NavigationInfo getNavigationInfo() {
        return this.mNavigationInfo;
    }

    public CarColor getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public TravelEstimate getDestinationTravelEstimate() {
        return this.mDestinationTravelEstimate;
    }

    public String toString() {
        return "NavigationTemplate";
    }

    public int hashCode() {
        return Objects.hash(this.mNavigationInfo, this.mBackgroundColor, this.mDestinationTravelEstimate, this.mActionStrip, this.mMapActionStrip, this.mPanModeToggle, Boolean.valueOf(this.mPanModeDelegate == null));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NavigationTemplate)) {
            return false;
        }
        NavigationTemplate navigationTemplate = (NavigationTemplate) obj;
        if (Objects.equals(this.mNavigationInfo, navigationTemplate.mNavigationInfo) && Objects.equals(this.mBackgroundColor, navigationTemplate.mBackgroundColor) && Objects.equals(this.mDestinationTravelEstimate, navigationTemplate.mDestinationTravelEstimate) && Objects.equals(this.mActionStrip, navigationTemplate.mActionStrip) && Objects.equals(this.mMapActionStrip, navigationTemplate.mMapActionStrip) && Objects.equals(this.mPanModeToggle, navigationTemplate.mPanModeToggle)) {
            if (Boolean.valueOf(this.mPanModeDelegate == null).equals(Boolean.valueOf(navigationTemplate.mPanModeDelegate == null))) {
                return true;
            }
        }
        return false;
    }

    public NavigationTemplate(Builder builder) {
        throw null;
    }

    private NavigationTemplate() {
        this.mNavigationInfo = null;
        this.mBackgroundColor = null;
        this.mDestinationTravelEstimate = null;
        this.mActionStrip = null;
        this.mMapActionStrip = null;
        this.mPanModeToggle = null;
        this.mPanModeDelegate = null;
    }
}
