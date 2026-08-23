package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioEncoderInfoImpl extends EncoderInfoImpl implements EncoderInfo {
    private final MediaCodecInfo.AudioCapabilities audioCapabilities;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEncoderInfoImpl(MediaCodecInfo codecInfo, String mime) {
        super(codecInfo, mime);
        Intrinsics.checkNotNullParameter(codecInfo, "codecInfo");
        Intrinsics.checkNotNullParameter(mime, "mime");
        MediaCodecInfo.AudioCapabilities audioCapabilities = getCodecCapabilities().getAudioCapabilities();
        Intrinsics.checkNotNull(audioCapabilities);
        this.audioCapabilities = audioCapabilities;
    }
}
