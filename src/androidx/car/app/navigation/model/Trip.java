package androidx.car.app.navigation.model;

import androidx.car.app.model.CarText;
import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Trip {
    private final CarText mCurrentRoad;
    private final List<TravelEstimate> mDestinationTravelEstimates;
    private final List<Destination> mDestinations;
    private final boolean mIsLoading;
    private final List<TravelEstimate> mStepTravelEstimates;
    private final List<Step> mSteps;

    public static final class Builder {
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public List<Destination> getDestinations() {
        return CollectionUtils.emptyIfNull(this.mDestinations);
    }

    public List<Step> getSteps() {
        return CollectionUtils.emptyIfNull(this.mSteps);
    }

    public List<TravelEstimate> getDestinationTravelEstimates() {
        return CollectionUtils.emptyIfNull(this.mDestinationTravelEstimates);
    }

    public List<TravelEstimate> getStepTravelEstimates() {
        return CollectionUtils.emptyIfNull(this.mStepTravelEstimates);
    }

    public CarText getCurrentRoad() {
        return this.mCurrentRoad;
    }

    public String toString() {
        return "[ destinations : " + this.mDestinations.toString() + ", steps: " + this.mSteps.toString() + ", dest estimates: " + this.mDestinationTravelEstimates.toString() + ", step estimates: " + this.mStepTravelEstimates.toString() + ", road: " + CarText.toShortString(this.mCurrentRoad) + ", isLoading: " + this.mIsLoading + "]";
    }

    public int hashCode() {
        return Objects.hash(this.mDestinations, this.mSteps, this.mDestinationTravelEstimates, this.mStepTravelEstimates, this.mCurrentRoad);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Trip)) {
            return false;
        }
        Trip trip = (Trip) obj;
        return Objects.equals(this.mDestinations, trip.mDestinations) && Objects.equals(this.mSteps, trip.mSteps) && Objects.equals(this.mDestinationTravelEstimates, trip.mDestinationTravelEstimates) && Objects.equals(this.mStepTravelEstimates, trip.mStepTravelEstimates) && Objects.equals(this.mCurrentRoad, trip.mCurrentRoad) && Boolean.valueOf(this.mIsLoading).equals(Boolean.valueOf(trip.mIsLoading));
    }

    public Trip(Builder builder) {
        throw null;
    }

    private Trip() {
        List list = Collections.EMPTY_LIST;
        this.mDestinations = list;
        this.mSteps = list;
        this.mDestinationTravelEstimates = list;
        this.mStepTravelEstimates = list;
        this.mCurrentRoad = null;
        this.mIsLoading = false;
    }
}
