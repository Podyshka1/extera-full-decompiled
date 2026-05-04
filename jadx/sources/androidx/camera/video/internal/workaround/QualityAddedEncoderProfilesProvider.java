package androidx.camera.video.internal.workaround;

import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.video.internal.compat.quirk.ExtraSupportedQualityQuirk;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class QualityAddedEncoderProfilesProvider implements EncoderProfilesProvider {
    private Map mExtraQualityToEncoderProfiles;
    private final EncoderProfilesProvider mProvider;

    public QualityAddedEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, Quirks quirks, CameraInfoInternal cameraInfoInternal, VideoEncoderInfo.Finder finder) {
        this.mProvider = encoderProfilesProvider;
        List all = quirks.getAll(ExtraSupportedQualityQuirk.class);
        if (all.isEmpty()) {
            return;
        }
        Preconditions.checkState(all.size() == 1);
        Map extraEncoderProfiles = ((ExtraSupportedQualityQuirk) all.get(0)).getExtraEncoderProfiles(cameraInfoInternal, encoderProfilesProvider, finder);
        if (extraEncoderProfiles != null) {
            this.mExtraQualityToEncoderProfiles = new HashMap(extraEncoderProfiles);
        }
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return getProfilesInternal(i) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        return getProfilesInternal(i);
    }

    private EncoderProfilesProxy getProfilesInternal(int i) {
        Map map = this.mExtraQualityToEncoderProfiles;
        if (map != null && map.containsKey(Integer.valueOf(i))) {
            return (EncoderProfilesProxy) this.mExtraQualityToEncoderProfiles.get(Integer.valueOf(i));
        }
        return this.mProvider.getAll(i);
    }
}
