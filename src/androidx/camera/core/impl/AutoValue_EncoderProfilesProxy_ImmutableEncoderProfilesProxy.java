package androidx.camera.core.impl;

import androidx.camera.core.impl.EncoderProfilesProxy;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy extends EncoderProfilesProxy.ImmutableEncoderProfilesProxy {
    private final List<EncoderProfilesProxy.AudioProfileProxy> audioProfiles;
    private final int defaultDurationSeconds;
    private final int recommendedFileFormat;
    private final List<EncoderProfilesProxy.VideoProfileProxy> videoProfiles;

    public AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy(int i, int i2, List<EncoderProfilesProxy.AudioProfileProxy> list, List<EncoderProfilesProxy.VideoProfileProxy> list2) {
        this.defaultDurationSeconds = i;
        this.recommendedFileFormat = i2;
        if (list == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null audioProfiles");
            throw null;
        }
        this.audioProfiles = list;
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null videoProfiles");
            throw null;
        }
        this.videoProfiles = list2;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public int getDefaultDurationSeconds() {
        return this.defaultDurationSeconds;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public int getRecommendedFileFormat() {
        return this.recommendedFileFormat;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public List<EncoderProfilesProxy.AudioProfileProxy> getAudioProfiles() {
        return this.audioProfiles;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public List<EncoderProfilesProxy.VideoProfileProxy> getVideoProfiles() {
        return this.videoProfiles;
    }

    public String toString() {
        return "ImmutableEncoderProfilesProxy{defaultDurationSeconds=" + this.defaultDurationSeconds + ", recommendedFileFormat=" + this.recommendedFileFormat + ", audioProfiles=" + this.audioProfiles + ", videoProfiles=" + this.videoProfiles + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof EncoderProfilesProxy.ImmutableEncoderProfilesProxy) {
            EncoderProfilesProxy.ImmutableEncoderProfilesProxy immutableEncoderProfilesProxy = (EncoderProfilesProxy.ImmutableEncoderProfilesProxy) obj;
            if (this.defaultDurationSeconds == immutableEncoderProfilesProxy.getDefaultDurationSeconds() && this.recommendedFileFormat == immutableEncoderProfilesProxy.getRecommendedFileFormat() && this.audioProfiles.equals(immutableEncoderProfilesProxy.getAudioProfiles()) && this.videoProfiles.equals(immutableEncoderProfilesProxy.getVideoProfiles())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.videoProfiles.hashCode() ^ ((((((this.defaultDurationSeconds ^ 1000003) * 1000003) ^ this.recommendedFileFormat) * 1000003) ^ this.audioProfiles.hashCode()) * 1000003);
    }
}
