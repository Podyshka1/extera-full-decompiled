package androidx.camera.core.impl.compat;

import android.media.CamcorderProfile;
import androidx.camera.core.impl.EncoderProfilesProxy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class EncoderProfilesProxyCompatBaseImpl {
    public static EncoderProfilesProxy from(CamcorderProfile camcorderProfile) {
        return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(camcorderProfile.duration, camcorderProfile.fileFormat, toAudioProfiles(camcorderProfile), toVideoProfiles(camcorderProfile));
    }

    private static List toVideoProfiles(CamcorderProfile camcorderProfile) {
        ArrayList arrayList = new ArrayList();
        int i = camcorderProfile.videoCodec;
        arrayList.add(EncoderProfilesProxy.VideoProfileProxy.create(i, EncoderProfilesProxy.CC.getVideoCodecMimeType(i), camcorderProfile.videoBitRate, camcorderProfile.videoFrameRate, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight, -1, 8, 0, 0));
        return arrayList;
    }

    private static List toAudioProfiles(CamcorderProfile camcorderProfile) {
        ArrayList arrayList = new ArrayList();
        int i = camcorderProfile.audioCodec;
        arrayList.add(EncoderProfilesProxy.AudioProfileProxy.create(i, EncoderProfilesProxy.CC.getAudioCodecMimeType(i), camcorderProfile.audioBitRate, camcorderProfile.audioSampleRate, camcorderProfile.audioChannels, EncoderProfilesProxy.CC.getRequiredAudioProfile(camcorderProfile.audioCodec)));
        return arrayList;
    }
}
