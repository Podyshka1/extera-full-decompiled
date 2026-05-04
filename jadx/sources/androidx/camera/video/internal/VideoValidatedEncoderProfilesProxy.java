package androidx.camera.video.internal;

import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VideoValidatedEncoderProfilesProxy implements EncoderProfilesProxy {
    public abstract EncoderProfilesProxy.AudioProfileProxy getDefaultAudioProfile();

    public abstract EncoderProfilesProxy.VideoProfileProxy getDefaultVideoProfile();

    public static VideoValidatedEncoderProfilesProxy from(EncoderProfilesProxy encoderProfilesProxy) {
        return create(encoderProfilesProxy.getDefaultDurationSeconds(), encoderProfilesProxy.getRecommendedFileFormat(), encoderProfilesProxy.getAudioProfiles(), encoderProfilesProxy.getVideoProfiles());
    }

    public static VideoValidatedEncoderProfilesProxy create(int i, int i2, List list, List list2) {
        Preconditions.checkArgument(!list2.isEmpty(), "Should contain at least one VideoProfile.");
        return new AutoValue_VideoValidatedEncoderProfilesProxy(i, i2, DesugarCollections.unmodifiableList(new ArrayList(list)), DesugarCollections.unmodifiableList(new ArrayList(list2)), !list.isEmpty() ? (EncoderProfilesProxy.AudioProfileProxy) list.get(0) : null, (EncoderProfilesProxy.VideoProfileProxy) list2.get(0));
    }
}
