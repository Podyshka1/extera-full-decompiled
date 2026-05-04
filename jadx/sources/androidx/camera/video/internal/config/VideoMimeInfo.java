package androidx.camera.video.internal.config;

import androidx.camera.core.impl.EncoderProfilesProxy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoMimeInfo {
    private final EncoderProfilesProxy.VideoProfileProxy compatibleVideoProfile;
    private final String mimeType;
    private final int profile;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoMimeInfo)) {
            return false;
        }
        VideoMimeInfo videoMimeInfo = (VideoMimeInfo) obj;
        return Intrinsics.areEqual(this.mimeType, videoMimeInfo.mimeType) && this.profile == videoMimeInfo.profile && Intrinsics.areEqual(this.compatibleVideoProfile, videoMimeInfo.compatibleVideoProfile);
    }

    public int hashCode() {
        int iHashCode = ((this.mimeType.hashCode() * 31) + this.profile) * 31;
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = this.compatibleVideoProfile;
        return iHashCode + (videoProfileProxy == null ? 0 : videoProfileProxy.hashCode());
    }

    public String toString() {
        return "VideoMimeInfo(mimeType=" + this.mimeType + ", profile=" + this.profile + ", compatibleVideoProfile=" + this.compatibleVideoProfile + ')';
    }

    public VideoMimeInfo(String mimeType, int i, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        this.mimeType = mimeType;
        this.profile = i;
        this.compatibleVideoProfile = videoProfileProxy;
    }

    public /* synthetic */ VideoMimeInfo(String str, int i, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? -1 : i, (i2 & 4) != 0 ? null : videoProfileProxy);
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public final EncoderProfilesProxy.VideoProfileProxy getCompatibleVideoProfile() {
        return this.compatibleVideoProfile;
    }
}
