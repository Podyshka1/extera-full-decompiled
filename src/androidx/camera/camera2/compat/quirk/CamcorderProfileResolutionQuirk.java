package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.util.Log;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class CamcorderProfileResolutionQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;
    private final Lazy supportedResolution$delegate;

    public CamcorderProfileResolutionQuirk(StreamConfigurationMapCompat streamConfigurationMapCompat) {
        Intrinsics.checkNotNullParameter(streamConfigurationMapCompat, "streamConfigurationMapCompat");
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        this.supportedResolution$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.quirk.CamcorderProfileResolutionQuirk$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CamcorderProfileResolutionQuirk.supportedResolution_delegate$lambda$0(this.f$0);
            }
        });
    }

    private final List getSupportedResolution() {
        return (List) this.supportedResolution$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List supportedResolution_delegate$lambda$0(CamcorderProfileResolutionQuirk camcorderProfileResolutionQuirk) {
        List listEmptyList;
        Size[] outputSizes = camcorderProfileResolutionQuirk.streamConfigurationMapCompat.getOutputSizes(34);
        if (outputSizes == null || (listEmptyList = ArraysKt.asList(outputSizes)) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "supportedResolutions = " + listEmptyList);
        }
        return listEmptyList;
    }

    public final List getSupportedResolutions() {
        return CollectionsKt.toList(getSupportedResolution());
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            return CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata);
        }
    }
}
