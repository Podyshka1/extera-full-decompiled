package androidx.car.app.navigation.model;

import androidx.car.app.model.CarIcon;
import androidx.car.app.model.Distance;
import androidx.car.app.navigation.model.NavigationTemplate;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class RoutingInfo implements NavigationTemplate.NavigationInfo {
    private final Distance mCurrentDistance;
    private final Step mCurrentStep;
    private final boolean mIsLoading;
    private final CarIcon mJunctionImage;
    private final Step mNextStep;

    public static final class Builder {
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public Step getCurrentStep() {
        return this.mCurrentStep;
    }

    public Distance getCurrentDistance() {
        return this.mCurrentDistance;
    }

    public Step getNextStep() {
        return this.mNextStep;
    }

    public CarIcon getJunctionImage() {
        return this.mJunctionImage;
    }

    public String toString() {
        return "RoutingInfo";
    }

    public int hashCode() {
        return Objects.hash(this.mCurrentStep, this.mCurrentDistance, this.mNextStep, this.mJunctionImage, Boolean.valueOf(this.mIsLoading));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoutingInfo)) {
            return false;
        }
        RoutingInfo routingInfo = (RoutingInfo) obj;
        return this.mIsLoading == routingInfo.mIsLoading && Objects.equals(this.mCurrentStep, routingInfo.mCurrentStep) && Objects.equals(this.mCurrentDistance, routingInfo.mCurrentDistance) && Objects.equals(this.mNextStep, routingInfo.mNextStep) && Objects.equals(this.mJunctionImage, routingInfo.mJunctionImage);
    }

    public RoutingInfo(Builder builder) {
        throw null;
    }

    private RoutingInfo() {
        this.mCurrentStep = null;
        this.mCurrentDistance = null;
        this.mNextStep = null;
        this.mJunctionImage = null;
        this.mIsLoading = false;
    }
}
