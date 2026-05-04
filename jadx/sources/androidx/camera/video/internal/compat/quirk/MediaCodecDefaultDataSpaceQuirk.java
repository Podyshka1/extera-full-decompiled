package androidx.camera.video.internal.compat.quirk;

import androidx.camera.core.impl.Quirk;
import androidx.camera.video.internal.encoder.VideoEncoderDataSpace;

/* JADX INFO: loaded from: classes4.dex */
public class MediaCodecDefaultDataSpaceQuirk implements Quirk {
    static boolean load() {
        return true;
    }

    public VideoEncoderDataSpace getSuggestedDataSpace() {
        return VideoEncoderDataSpace.ENCODER_DATA_SPACE_SRGB;
    }
}
