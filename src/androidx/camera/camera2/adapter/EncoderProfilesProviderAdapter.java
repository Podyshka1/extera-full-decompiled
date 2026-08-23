package androidx.camera.camera2.adapter;

import android.media.CamcorderProfile;
import android.media.EncoderProfiles;
import android.os.Build;
import androidx.camera.camera2.compat.quirk.CamcorderProfileResolutionQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.compat.EncoderProfilesProxyCompat;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class EncoderProfilesProviderAdapter implements EncoderProfilesProvider {
    public static final Companion Companion = new Companion(null);
    private final int cameraId;
    private final String cameraIdString;
    private final Quirks cameraQuirks;
    private final boolean hasValidCameraId;
    private final Map mEncoderProfilesCache;

    public EncoderProfilesProviderAdapter(String cameraIdString, Quirks cameraQuirks) {
        boolean z;
        int i;
        Intrinsics.checkNotNullParameter(cameraIdString, "cameraIdString");
        Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
        this.cameraIdString = cameraIdString;
        this.cameraQuirks = cameraQuirks;
        this.mEncoderProfilesCache = new LinkedHashMap();
        try {
            i = Integer.parseInt(cameraIdString);
            z = true;
        } catch (NumberFormatException unused) {
            Logger.m81w("EncoderProfilesProviderAdapter", "Camera id is not an integer:  " + this.cameraIdString + ", unable to create EncoderProfilesProviderAdapter.");
            z = false;
            i = -1;
        }
        this.hasValidCameraId = z;
        this.cameraId = i;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return this.hasValidCameraId && getAll(i) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        EncoderProfilesProxy encoderProfilesProxyFindLowestQualityProfiles = null;
        if (!this.hasValidCameraId || !CamcorderProfile.hasProfile(this.cameraId, i)) {
            return null;
        }
        if (this.mEncoderProfilesCache.containsKey(Integer.valueOf(i))) {
            return (EncoderProfilesProxy) this.mEncoderProfilesCache.get(Integer.valueOf(i));
        }
        EncoderProfilesProxy profilesInternal = getProfilesInternal(i);
        if (profilesInternal != null && !isEncoderProfilesResolutionValidInQuirk(profilesInternal)) {
            if (i == 0) {
                encoderProfilesProxyFindLowestQualityProfiles = findLowestQualityProfiles();
            } else if (i == 1) {
                encoderProfilesProxyFindLowestQualityProfiles = findHighestQualityProfiles();
            }
            profilesInternal = encoderProfilesProxyFindLowestQualityProfiles;
        }
        this.mEncoderProfilesCache.put(Integer.valueOf(i), profilesInternal);
        return profilesInternal;
    }

    private final EncoderProfilesProxy findHighestQualityProfiles() {
        for (Integer num : EncoderProfilesProvider.QUALITY_HIGH_TO_LOW) {
            Intrinsics.checkNotNull(num);
            EncoderProfilesProxy all = getAll(num.intValue());
            if (all != null) {
                return all;
            }
        }
        return null;
    }

    private final EncoderProfilesProxy findLowestQualityProfiles() {
        List QUALITY_HIGH_TO_LOW = EncoderProfilesProvider.QUALITY_HIGH_TO_LOW;
        Intrinsics.checkNotNullExpressionValue(QUALITY_HIGH_TO_LOW, "QUALITY_HIGH_TO_LOW");
        for (int lastIndex = CollectionsKt.getLastIndex(QUALITY_HIGH_TO_LOW); -1 < lastIndex; lastIndex--) {
            Object obj = EncoderProfilesProvider.QUALITY_HIGH_TO_LOW.get(lastIndex);
            Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
            EncoderProfilesProxy all = getAll(((Number) obj).intValue());
            if (all != null) {
                return all;
            }
        }
        return null;
    }

    private final EncoderProfilesProxy getProfilesInternal(int i) {
        if (Build.VERSION.SDK_INT >= 31) {
            EncoderProfiles all = Api31Impl.INSTANCE.getAll(this.cameraIdString, i);
            if (all == null) {
                return null;
            }
            if (DeviceQuirks.INSTANCE.get(InvalidVideoProfilesQuirk.class) != null) {
                Logger.m76d("EncoderProfilesProviderAdapter", "EncoderProfiles contains invalid video profiles, use CamcorderProfile to create EncoderProfilesProxy.");
            } else {
                try {
                    return EncoderProfilesProxyCompat.from(all);
                } catch (NullPointerException e) {
                    Logger.m82w("EncoderProfilesProviderAdapter", "Failed to create EncoderProfilesProxy, EncoderProfiles might contain invalid video profiles. Use CamcorderProfile instead.", e);
                }
            }
        }
        return createProfilesFromCamcorderProfile(i);
    }

    private final EncoderProfilesProxy createProfilesFromCamcorderProfile(int i) {
        CamcorderProfile camcorderProfile;
        try {
            camcorderProfile = CamcorderProfile.get(this.cameraId, i);
        } catch (RuntimeException e) {
            Logger.m82w("EncoderProfilesProviderAdapter", "Unable to get CamcorderProfile by quality: " + i, e);
            camcorderProfile = null;
        }
        if (camcorderProfile != null) {
            return EncoderProfilesProxyCompat.from(camcorderProfile);
        }
        return null;
    }

    private final boolean isEncoderProfilesResolutionValidInQuirk(EncoderProfilesProxy encoderProfilesProxy) {
        CamcorderProfileResolutionQuirk camcorderProfileResolutionQuirk = (CamcorderProfileResolutionQuirk) this.cameraQuirks.get(CamcorderProfileResolutionQuirk.class);
        if (camcorderProfileResolutionQuirk == null) {
            return true;
        }
        List videoProfiles = encoderProfilesProxy.getVideoProfiles();
        Intrinsics.checkNotNullExpressionValue(videoProfiles, "getVideoProfiles(...)");
        if (videoProfiles.isEmpty()) {
            return true;
        }
        return camcorderProfileResolutionQuirk.getSupportedResolutions().contains(((EncoderProfilesProxy.VideoProfileProxy) videoProfiles.get(0)).getResolution());
    }

    public static final class Api31Impl {
        public static final Api31Impl INSTANCE = new Api31Impl();

        private Api31Impl() {
        }

        public final EncoderProfiles getAll(String cameraId, int i) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
            return CamcorderProfile.getAll(cameraId, i);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
