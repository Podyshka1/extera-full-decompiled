package androidx.camera.core.internal;

import androidx.camera.core.UseCase;
import androidx.camera.core.streamsharing.StreamSharing;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CalculatedUseCaseInfo {
    private final Collection appUseCases;
    private final Collection cameraUseCases;
    private final List cameraUseCasesToAttach;
    private final List cameraUseCasesToDetach;
    private final List cameraUseCasesToKeep;
    private final UseCase placeholderForExtensions;
    private final StreamSpecQueryResult primaryStreamSpecResult;
    private final StreamSpecQueryResult secondaryStreamSpecResult;
    private final StreamSharing streamSharing;
    private final Map useCaseConfigs;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalculatedUseCaseInfo)) {
            return false;
        }
        CalculatedUseCaseInfo calculatedUseCaseInfo = (CalculatedUseCaseInfo) obj;
        return Intrinsics.areEqual(this.appUseCases, calculatedUseCaseInfo.appUseCases) && Intrinsics.areEqual(this.cameraUseCases, calculatedUseCaseInfo.cameraUseCases) && Intrinsics.areEqual(this.cameraUseCasesToAttach, calculatedUseCaseInfo.cameraUseCasesToAttach) && Intrinsics.areEqual(this.cameraUseCasesToKeep, calculatedUseCaseInfo.cameraUseCasesToKeep) && Intrinsics.areEqual(this.cameraUseCasesToDetach, calculatedUseCaseInfo.cameraUseCasesToDetach) && Intrinsics.areEqual(this.streamSharing, calculatedUseCaseInfo.streamSharing) && Intrinsics.areEqual(this.placeholderForExtensions, calculatedUseCaseInfo.placeholderForExtensions) && Intrinsics.areEqual(this.useCaseConfigs, calculatedUseCaseInfo.useCaseConfigs) && Intrinsics.areEqual(this.primaryStreamSpecResult, calculatedUseCaseInfo.primaryStreamSpecResult) && Intrinsics.areEqual(this.secondaryStreamSpecResult, calculatedUseCaseInfo.secondaryStreamSpecResult);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.appUseCases.hashCode() * 31) + this.cameraUseCases.hashCode()) * 31) + this.cameraUseCasesToAttach.hashCode()) * 31) + this.cameraUseCasesToKeep.hashCode()) * 31) + this.cameraUseCasesToDetach.hashCode()) * 31;
        StreamSharing streamSharing = this.streamSharing;
        int iHashCode2 = (iHashCode + (streamSharing == null ? 0 : streamSharing.hashCode())) * 31;
        UseCase useCase = this.placeholderForExtensions;
        int iHashCode3 = (((((iHashCode2 + (useCase == null ? 0 : useCase.hashCode())) * 31) + this.useCaseConfigs.hashCode()) * 31) + this.primaryStreamSpecResult.hashCode()) * 31;
        StreamSpecQueryResult streamSpecQueryResult = this.secondaryStreamSpecResult;
        return iHashCode3 + (streamSpecQueryResult != null ? streamSpecQueryResult.hashCode() : 0);
    }

    public String toString() {
        return "CalculatedUseCaseInfo(appUseCases=" + this.appUseCases + ", cameraUseCases=" + this.cameraUseCases + ", cameraUseCasesToAttach=" + this.cameraUseCasesToAttach + ", cameraUseCasesToKeep=" + this.cameraUseCasesToKeep + ", cameraUseCasesToDetach=" + this.cameraUseCasesToDetach + ", streamSharing=" + this.streamSharing + ", placeholderForExtensions=" + this.placeholderForExtensions + ", useCaseConfigs=" + this.useCaseConfigs + ", primaryStreamSpecResult=" + this.primaryStreamSpecResult + ", secondaryStreamSpecResult=" + this.secondaryStreamSpecResult + ')';
    }

    public CalculatedUseCaseInfo(Collection appUseCases, Collection cameraUseCases, List cameraUseCasesToAttach, List cameraUseCasesToKeep, List cameraUseCasesToDetach, StreamSharing streamSharing, UseCase useCase, Map useCaseConfigs, StreamSpecQueryResult primaryStreamSpecResult, StreamSpecQueryResult streamSpecQueryResult) {
        Intrinsics.checkNotNullParameter(appUseCases, "appUseCases");
        Intrinsics.checkNotNullParameter(cameraUseCases, "cameraUseCases");
        Intrinsics.checkNotNullParameter(cameraUseCasesToAttach, "cameraUseCasesToAttach");
        Intrinsics.checkNotNullParameter(cameraUseCasesToKeep, "cameraUseCasesToKeep");
        Intrinsics.checkNotNullParameter(cameraUseCasesToDetach, "cameraUseCasesToDetach");
        Intrinsics.checkNotNullParameter(useCaseConfigs, "useCaseConfigs");
        Intrinsics.checkNotNullParameter(primaryStreamSpecResult, "primaryStreamSpecResult");
        this.appUseCases = appUseCases;
        this.cameraUseCases = cameraUseCases;
        this.cameraUseCasesToAttach = cameraUseCasesToAttach;
        this.cameraUseCasesToKeep = cameraUseCasesToKeep;
        this.cameraUseCasesToDetach = cameraUseCasesToDetach;
        this.streamSharing = streamSharing;
        this.placeholderForExtensions = useCase;
        this.useCaseConfigs = useCaseConfigs;
        this.primaryStreamSpecResult = primaryStreamSpecResult;
        this.secondaryStreamSpecResult = streamSpecQueryResult;
    }

    public final Collection getAppUseCases() {
        return this.appUseCases;
    }

    public final Collection getCameraUseCases() {
        return this.cameraUseCases;
    }

    public final List getCameraUseCasesToAttach() {
        return this.cameraUseCasesToAttach;
    }

    public final List getCameraUseCasesToKeep() {
        return this.cameraUseCasesToKeep;
    }

    public final List getCameraUseCasesToDetach() {
        return this.cameraUseCasesToDetach;
    }

    public final StreamSharing getStreamSharing() {
        return this.streamSharing;
    }

    public final UseCase getPlaceholderForExtensions() {
        return this.placeholderForExtensions;
    }

    public final Map getUseCaseConfigs() {
        return this.useCaseConfigs;
    }

    public final StreamSpecQueryResult getPrimaryStreamSpecResult() {
        return this.primaryStreamSpecResult;
    }

    public final StreamSpecQueryResult getSecondaryStreamSpecResult() {
        return this.secondaryStreamSpecResult;
    }
}
