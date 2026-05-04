package androidx.camera.core.impl.compat;

import android.media.CamcorderProfile;
import android.media.EncoderProfiles;
import android.os.Build;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EncoderProfilesProxyCompat {
    public static EncoderProfilesProxy from(EncoderProfiles encoderProfiles) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            return EncoderProfilesProxyCompatApi33Impl.from(encoderProfiles);
        }
        if (i >= 31) {
            return EncoderProfilesProxyCompatApi31Impl.from(encoderProfiles);
        }
        throw new RuntimeException("Unable to call from(EncoderProfiles) on API " + i + ". Version 31 or higher required.");
    }

    public static EncoderProfilesProxy from(CamcorderProfile camcorderProfile) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            Logger.m81w("EncoderProfilesProxyCompat", "Should use from(EncoderProfiles) on API " + i + "instead. CamcorderProfile is deprecated on API 31.");
        }
        return EncoderProfilesProxyCompatBaseImpl.from(camcorderProfile);
    }
}
