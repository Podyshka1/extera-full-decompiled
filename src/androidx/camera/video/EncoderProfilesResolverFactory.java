package androidx.camera.video;

import android.util.LruCache;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class EncoderProfilesResolverFactory {
    public static final EncoderProfilesResolverFactory INSTANCE = new EncoderProfilesResolverFactory();
    private static final LruCache cache = new LruCache(16);

    private EncoderProfilesResolverFactory() {
    }

    public static final EncoderProfilesResolver getResolver(final CameraInfo cameraInfo, final int i, final int i2, final VideoEncoderInfo.Finder videoEncoderInfoFinder) {
        EncoderProfilesResolver resolver$lambda$1;
        Intrinsics.checkNotNullParameter(cameraInfo, "cameraInfo");
        Intrinsics.checkNotNullParameter(videoEncoderInfoFinder, "videoEncoderInfoFinder");
        Lazy lazy = LazyKt.lazy(new Function0() { // from class: androidx.camera.video.EncoderProfilesResolverFactory$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return EncoderProfilesResolverFactory.getResolver$lambda$0(cameraInfo, i, i2, videoEncoderInfoFinder);
            }
        });
        if (INSTANCE.shouldSkipCache(cameraInfo)) {
            return getResolver$lambda$1(lazy);
        }
        AdapterCameraInfo adapterCameraInfo = (AdapterCameraInfo) cameraInfo;
        String cameraId = adapterCameraInfo.getCameraId();
        Intrinsics.checkNotNullExpressionValue(cameraId, "getCameraId(...)");
        CameraConfig cameraConfig = adapterCameraInfo.getCameraConfig();
        Intrinsics.checkNotNullExpressionValue(cameraConfig, "getCameraConfig(...)");
        CacheKey cacheKey = new CacheKey(cameraId, cameraConfig, i, i2, videoEncoderInfoFinder);
        LruCache lruCache = cache;
        synchronized (lruCache) {
            resolver$lambda$1 = (EncoderProfilesResolver) lruCache.get(cacheKey);
            if (resolver$lambda$1 == null) {
                resolver$lambda$1 = getResolver$lambda$1(lazy);
                lruCache.put(cacheKey, resolver$lambda$1);
            }
        }
        return resolver$lambda$1;
    }

    private static final EncoderProfilesResolver getResolver$lambda$1(Lazy lazy) {
        return (EncoderProfilesResolver) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EncoderProfilesResolver getResolver$lambda$0(CameraInfo cameraInfo, int i, int i2, VideoEncoderInfo.Finder finder) {
        return INSTANCE.createResolver(cameraInfo, i, i2, finder);
    }

    private final EncoderProfilesResolver createResolver(CameraInfo cameraInfo, int i, int i2, VideoEncoderInfo.Finder finder) {
        Intrinsics.checkNotNull(cameraInfo, "null cannot be cast to non-null type androidx.camera.core.impl.CameraInfoInternal");
        CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfo;
        int i3 = i != 2 ? 1 : 2;
        EncoderProfilesProvider encoderProfilesProviderResolve = EncoderProfilesProviderResolver.INSTANCE.resolve(cameraInfoInternal, i2, i3, finder);
        Set supportedDynamicRanges = cameraInfoInternal.getSupportedDynamicRanges();
        Intrinsics.checkNotNullExpressionValue(supportedDynamicRanges, "getSupportedDynamicRanges(...)");
        return new EncoderProfilesResolver(encoderProfilesProviderResolve, i3, supportedDynamicRanges);
    }

    private final boolean shouldSkipCache(CameraInfo cameraInfo) {
        if (cameraInfo instanceof AdapterCameraInfo) {
            AdapterCameraInfo adapterCameraInfo = (AdapterCameraInfo) cameraInfo;
            if (!adapterCameraInfo.isExternalCamera() && adapterCameraInfo.getLensFacing() != -1) {
                return false;
            }
        }
        return true;
    }

    private static final class CacheKey {
        private final Object cameraConfig;
        private final String cameraId;
        private final int videoCapabilitiesSource;
        private final VideoEncoderInfo.Finder videoEncoderInfoFinder;
        private final int videoRecordingType;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CacheKey)) {
                return false;
            }
            CacheKey cacheKey = (CacheKey) obj;
            return Intrinsics.areEqual(this.cameraId, cacheKey.cameraId) && Intrinsics.areEqual(this.cameraConfig, cacheKey.cameraConfig) && this.videoRecordingType == cacheKey.videoRecordingType && this.videoCapabilitiesSource == cacheKey.videoCapabilitiesSource && Intrinsics.areEqual(this.videoEncoderInfoFinder, cacheKey.videoEncoderInfoFinder);
        }

        public int hashCode() {
            return (((((((this.cameraId.hashCode() * 31) + this.cameraConfig.hashCode()) * 31) + this.videoRecordingType) * 31) + this.videoCapabilitiesSource) * 31) + this.videoEncoderInfoFinder.hashCode();
        }

        public String toString() {
            return "CacheKey(cameraId=" + this.cameraId + ", cameraConfig=" + this.cameraConfig + ", videoRecordingType=" + this.videoRecordingType + ", videoCapabilitiesSource=" + this.videoCapabilitiesSource + ", videoEncoderInfoFinder=" + this.videoEncoderInfoFinder + ')';
        }

        public CacheKey(String cameraId, Object cameraConfig, int i, int i2, VideoEncoderInfo.Finder videoEncoderInfoFinder) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
            Intrinsics.checkNotNullParameter(cameraConfig, "cameraConfig");
            Intrinsics.checkNotNullParameter(videoEncoderInfoFinder, "videoEncoderInfoFinder");
            this.cameraId = cameraId;
            this.cameraConfig = cameraConfig;
            this.videoRecordingType = i;
            this.videoCapabilitiesSource = i2;
            this.videoEncoderInfoFinder = videoEncoderInfoFinder;
        }
    }
}
