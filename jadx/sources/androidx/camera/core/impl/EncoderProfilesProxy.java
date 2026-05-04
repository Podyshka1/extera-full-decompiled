package androidx.camera.core.impl;

import android.util.Size;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.MediaController;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public interface EncoderProfilesProxy {
    List getAudioProfiles();

    int getDefaultDurationSeconds();

    int getRecommendedFileFormat();

    List getVideoProfiles();

    public static abstract class VideoProfileProxy {
        public abstract int getBitDepth();

        public abstract int getBitrate();

        public abstract int getChromaSubsampling();

        public abstract int getCodec();

        public abstract int getFrameRate();

        public abstract int getHdrFormat();

        public abstract int getHeight();

        public abstract String getMediaType();

        public abstract int getProfile();

        public abstract int getWidth();

        public static VideoProfileProxy create(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            return new AutoValue_EncoderProfilesProxy_VideoProfileProxy(i, str, i2, i3, i4, i5, i6, i7, i8, i9);
        }

        public Size getResolution() {
            return new Size(getWidth(), getHeight());
        }
    }

    public static abstract class AudioProfileProxy {
        public abstract int getBitrate();

        public abstract int getChannels();

        public abstract int getCodec();

        public abstract String getMediaType();

        public abstract int getProfile();

        public abstract int getSampleRate();

        public static AudioProfileProxy create(int i, String str, int i2, int i3, int i4, int i5) {
            return new AutoValue_EncoderProfilesProxy_AudioProfileProxy(i, str, i2, i3, i4, i5);
        }
    }

    public static abstract class ImmutableEncoderProfilesProxy implements EncoderProfilesProxy {
        public static ImmutableEncoderProfilesProxy create(int i, int i2, List list, List list2) {
            return new AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy(i, i2, DesugarCollections.unmodifiableList(new ArrayList(list)), DesugarCollections.unmodifiableList(new ArrayList(list2)));
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.impl.EncoderProfilesProxy$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static String getVideoCodecMimeType(int i) {
            switch (i) {
                case 1:
                    return "video/3gpp";
                case 2:
                    return MediaController.VIDEO_MIME_TYPE;
                case 3:
                    return "video/mp4v-es";
                case 4:
                    return "video/x-vnd.on2.vp8";
                case 5:
                    return "video/hevc";
                case 6:
                    return "video/x-vnd.on2.vp9";
                case 7:
                    return "video/dolby-vision";
                case 8:
                    return "video/av01";
                default:
                    return "video/none";
            }
        }

        public static String getAudioCodecMimeType(int i) {
            switch (i) {
                case 1:
                    return "audio/3gpp";
                case 2:
                    return "audio/amr-wb";
                case 3:
                case 4:
                case 5:
                    return MediaController.AUDIO_MIME_TYPE;
                case 6:
                    return "audio/vorbis";
                case 7:
                    return "audio/opus";
                default:
                    return "audio/none";
            }
        }

        public static int getRequiredAudioProfile(int i) {
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? -1 : 39;
            }
            return 5;
        }
    }
}
