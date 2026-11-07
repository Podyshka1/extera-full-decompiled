package androidx.camera.core.internal;

import androidx.camera.core.UseCase;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.streamsharing.StreamSharing;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0087\b\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eR\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001f\u001a\u0004\b \u0010!R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u001a\u0004\b\"\u0010!R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010#\u001a\u0004\b$\u0010%R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010#\u001a\u0004\b&\u0010%R\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010#\u001a\u0004\b'\u0010%R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010(\u001a\u0004\b)\u0010*R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b\f\u0010+\u001a\u0004\b,\u0010-R#\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u000f\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u00101\u001a\u0004\b2\u00103R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0012\u00101\u001a\u0004\b4\u00103¨\u00065"}, d2 = {"Landroidx/camera/core/internal/CalculatedUseCaseInfo;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "appUseCases", "cameraUseCases", _UrlKt.FRAGMENT_ENCODE_SET, "cameraUseCasesToAttach", "cameraUseCasesToKeep", "cameraUseCasesToDetach", "Landroidx/camera/core/streamsharing/StreamSharing;", "streamSharing", "placeholderForExtensions", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;", "useCaseConfigs", "Landroidx/camera/core/internal/StreamSpecQueryResult;", "primaryStreamSpecResult", "secondaryStreamSpecResult", "<init>", "(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Collection;", "getAppUseCases", "()Ljava/util/Collection;", "getCameraUseCases", "Ljava/util/List;", "getCameraUseCasesToAttach", "()Ljava/util/List;", "getCameraUseCasesToKeep", "getCameraUseCasesToDetach", "Landroidx/camera/core/streamsharing/StreamSharing;", "getStreamSharing", "()Landroidx/camera/core/streamsharing/StreamSharing;", "Landroidx/camera/core/UseCase;", "getPlaceholderForExtensions", "()Landroidx/camera/core/UseCase;", "Ljava/util/Map;", "getUseCaseConfigs", "()Ljava/util/Map;", "Landroidx/camera/core/internal/StreamSpecQueryResult;", "getPrimaryStreamSpecResult", "()Landroidx/camera/core/internal/StreamSpecQueryResult;", "getSecondaryStreamSpecResult", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CalculatedUseCaseInfo {
    private final Collection<UseCase> appUseCases;
    private final Collection<UseCase> cameraUseCases;
    private final List<UseCase> cameraUseCasesToAttach;
    private final List<UseCase> cameraUseCasesToDetach;
    private final List<UseCase> cameraUseCasesToKeep;
    private final UseCase placeholderForExtensions;
    private final StreamSpecQueryResult primaryStreamSpecResult;
    private final StreamSpecQueryResult secondaryStreamSpecResult;
    private final StreamSharing streamSharing;
    private final Map<UseCase, CameraUseCaseAdapter.ConfigPair> useCaseConfigs;

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CalculatedUseCaseInfo)) {
            return false;
        }
        CalculatedUseCaseInfo calculatedUseCaseInfo = (CalculatedUseCaseInfo) other;
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

    /* JADX WARN: Multi-variable type inference failed */
    public CalculatedUseCaseInfo(Collection<? extends UseCase> collection, Collection<? extends UseCase> collection2, List<? extends UseCase> list, List<? extends UseCase> list2, List<? extends UseCase> list3, StreamSharing streamSharing, UseCase useCase, Map<UseCase, ? extends CameraUseCaseAdapter.ConfigPair> map, StreamSpecQueryResult streamSpecQueryResult, StreamSpecQueryResult streamSpecQueryResult2) {
        this.appUseCases = collection;
        this.cameraUseCases = collection2;
        this.cameraUseCasesToAttach = list;
        this.cameraUseCasesToKeep = list2;
        this.cameraUseCasesToDetach = list3;
        this.streamSharing = streamSharing;
        this.placeholderForExtensions = useCase;
        this.useCaseConfigs = map;
        this.primaryStreamSpecResult = streamSpecQueryResult;
        this.secondaryStreamSpecResult = streamSpecQueryResult2;
    }

    public final Collection<UseCase> getAppUseCases() {
        return this.appUseCases;
    }

    public final Collection<UseCase> getCameraUseCases() {
        return this.cameraUseCases;
    }

    public final List<UseCase> getCameraUseCasesToAttach() {
        return this.cameraUseCasesToAttach;
    }

    public final List<UseCase> getCameraUseCasesToKeep() {
        return this.cameraUseCasesToKeep;
    }

    public final List<UseCase> getCameraUseCasesToDetach() {
        return this.cameraUseCasesToDetach;
    }

    public final StreamSharing getStreamSharing() {
        return this.streamSharing;
    }

    public final UseCase getPlaceholderForExtensions() {
        return this.placeholderForExtensions;
    }

    public final Map<UseCase, CameraUseCaseAdapter.ConfigPair> getUseCaseConfigs() {
        return this.useCaseConfigs;
    }

    public final StreamSpecQueryResult getPrimaryStreamSpecResult() {
        return this.primaryStreamSpecResult;
    }

    public final StreamSpecQueryResult getSecondaryStreamSpecResult() {
        return this.secondaryStreamSpecResult;
    }
}
