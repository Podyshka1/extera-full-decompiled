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
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u000bH\u0003J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u000bH\u0003J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;", "Landroidx/camera/core/impl/EncoderProfilesProvider;", "cameraIdString", _UrlKt.FRAGMENT_ENCODE_SET, "cameraQuirks", "Landroidx/camera/core/impl/Quirks;", "<init>", "(Ljava/lang/String;Landroidx/camera/core/impl/Quirks;)V", "hasValidCameraId", _UrlKt.FRAGMENT_ENCODE_SET, "cameraId", _UrlKt.FRAGMENT_ENCODE_SET, "mEncoderProfilesCache", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/EncoderProfilesProxy;", "hasProfile", "quality", "getAll", "findHighestQualityProfiles", "findLowestQualityProfiles", "getProfilesInternal", "createProfilesFromCamcorderProfile", "isEncoderProfilesResolutionValidInQuirk", "profiles", "Api31Impl", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class EncoderProfilesProviderAdapter implements EncoderProfilesProvider {
    private final int cameraId;
    private final String cameraIdString;
    private final Quirks cameraQuirks;
    private final boolean hasValidCameraId;
    private final Map<Integer, EncoderProfilesProxy> mEncoderProfilesCache = new LinkedHashMap();

    public EncoderProfilesProviderAdapter(String str, Quirks quirks) {
        boolean z;
        int i;
        this.cameraIdString = str;
        this.cameraQuirks = quirks;
        try {
            i = Integer.parseInt(str);
            z = true;
        } catch (NumberFormatException unused) {
            Logger.m79w("EncoderProfilesProviderAdapter", "Camera id is not an integer:  " + this.cameraIdString + ", unable to create EncoderProfilesProviderAdapter.");
            z = false;
            i = -1;
        }
        this.hasValidCameraId = z;
        this.cameraId = i;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int quality) {
        return this.hasValidCameraId && getAll(quality) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int quality) {
        EncoderProfilesProxy encoderProfilesProxyFindLowestQualityProfiles = null;
        if (!this.hasValidCameraId || !CamcorderProfile.hasProfile(this.cameraId, quality)) {
            return null;
        }
        if (this.mEncoderProfilesCache.containsKey(Integer.valueOf(quality))) {
            return this.mEncoderProfilesCache.get(Integer.valueOf(quality));
        }
        EncoderProfilesProxy profilesInternal = getProfilesInternal(quality);
        if (profilesInternal != null && !isEncoderProfilesResolutionValidInQuirk(profilesInternal)) {
            if (quality == 0) {
                encoderProfilesProxyFindLowestQualityProfiles = findLowestQualityProfiles();
            } else if (quality == 1) {
                encoderProfilesProxyFindLowestQualityProfiles = findHighestQualityProfiles();
            }
            profilesInternal = encoderProfilesProxyFindLowestQualityProfiles;
        }
        this.mEncoderProfilesCache.put(Integer.valueOf(quality), profilesInternal);
        return profilesInternal;
    }

    private final EncoderProfilesProxy findHighestQualityProfiles() {
        Iterator<Integer> it = EncoderProfilesProvider.QUALITY_HIGH_TO_LOW.iterator();
        while (it.hasNext()) {
            EncoderProfilesProxy all = getAll(it.next().intValue());
            if (all != null) {
                return all;
            }
        }
        return null;
    }

    private final EncoderProfilesProxy findLowestQualityProfiles() {
        for (int lastIndex = CollectionsKt.getLastIndex(EncoderProfilesProvider.QUALITY_HIGH_TO_LOW); -1 < lastIndex; lastIndex--) {
            EncoderProfilesProxy all = getAll(EncoderProfilesProvider.QUALITY_HIGH_TO_LOW.get(lastIndex).intValue());
            if (all != null) {
                return all;
            }
        }
        return null;
    }

    private final EncoderProfilesProxy getProfilesInternal(int quality) {
        if (Build.VERSION.SDK_INT >= 31) {
            EncoderProfiles all = Api31Impl.INSTANCE.getAll(this.cameraIdString, quality);
            if (all == null) {
                return null;
            }
            if (DeviceQuirks.INSTANCE.get(InvalidVideoProfilesQuirk.class) != null) {
                Logger.m74d("EncoderProfilesProviderAdapter", "EncoderProfiles contains invalid video profiles, use CamcorderProfile to create EncoderProfilesProxy.");
            } else {
                try {
                    return EncoderProfilesProxyCompat.from(all);
                } catch (NullPointerException e) {
                    Logger.m80w("EncoderProfilesProviderAdapter", "Failed to create EncoderProfilesProxy, EncoderProfiles might contain invalid video profiles. Use CamcorderProfile instead.", e);
                }
            }
        }
        return this.createProfilesFromCamcorderProfile(quality);
    }

    private final EncoderProfilesProxy createProfilesFromCamcorderProfile(int quality) {
        CamcorderProfile camcorderProfile;
        try {
            camcorderProfile = CamcorderProfile.get(this.cameraId, quality);
        } catch (RuntimeException e) {
            Logger.m80w("EncoderProfilesProviderAdapter", "Unable to get CamcorderProfile by quality: " + quality, e);
            camcorderProfile = null;
        }
        if (camcorderProfile != null) {
            return EncoderProfilesProxyCompat.from(camcorderProfile);
        }
        return null;
    }

    private final boolean isEncoderProfilesResolutionValidInQuirk(EncoderProfilesProxy profiles) {
        CamcorderProfileResolutionQuirk camcorderProfileResolutionQuirk = (CamcorderProfileResolutionQuirk) this.cameraQuirks.get(CamcorderProfileResolutionQuirk.class);
        if (camcorderProfileResolutionQuirk == null) {
            return true;
        }
        List<EncoderProfilesProxy.VideoProfileProxy> videoProfiles = profiles.getVideoProfiles();
        if (videoProfiles.isEmpty()) {
            return true;
        }
        return camcorderProfileResolutionQuirk.getSupportedResolutions().contains(videoProfiles.get(0).getResolution());
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getAll", "Landroid/media/EncoderProfiles;", "cameraId", _UrlKt.FRAGMENT_ENCODE_SET, "quality", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api31Impl {
        public static final Api31Impl INSTANCE = new Api31Impl();

        private Api31Impl() {
        }

        public final EncoderProfiles getAll(String cameraId, int quality) {
            return CamcorderProfile.getAll(cameraId, quality);
        }
    }
}
