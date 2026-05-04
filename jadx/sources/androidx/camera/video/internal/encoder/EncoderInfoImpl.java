package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EncoderInfoImpl implements EncoderInfo {
    private final MediaCodecInfo.CodecCapabilities codecCapabilities;
    private final MediaCodecInfo mediaCodecInfo;

    public EncoderInfoImpl(MediaCodecInfo mediaCodecInfo, String mime) throws InvalidConfigException {
        Intrinsics.checkNotNullParameter(mediaCodecInfo, "mediaCodecInfo");
        Intrinsics.checkNotNullParameter(mime, "mime");
        this.mediaCodecInfo = mediaCodecInfo;
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(mime);
            Intrinsics.checkNotNullExpressionValue(capabilitiesForType, "getCapabilitiesForType(...)");
            this.codecCapabilities = capabilitiesForType;
        } catch (RuntimeException e) {
            throw new InvalidConfigException("Unable to get CodecCapabilities for mime: " + mime, e);
        }
    }

    protected final MediaCodecInfo.CodecCapabilities getCodecCapabilities() {
        return this.codecCapabilities;
    }
}
