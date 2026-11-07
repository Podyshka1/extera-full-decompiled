package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Util;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes3.dex */
public class TrackSelectionParameters {
    public static final TrackSelectionParameters DEFAULT;

    @Deprecated
    public static final TrackSelectionParameters DEFAULT_WITHOUT_CONTEXT;
    private static final String FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE;
    private static final String FIELD_AUDIO_OFFLOAD_PREFERENCES;
    private static final String FIELD_DISABLED_TRACK_TYPE;
    private static final String FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE;
    private static final String FIELD_FORCE_LOWEST_BITRATE;
    private static final String FIELD_IGNORED_TEXT_SELECTION_FLAGS;
    private static final String FIELD_IS_GAPLESS_SUPPORT_REQUIRED;
    private static final String FIELD_IS_PREFER_IMAGE_OVER_VIDEO_ENABLED;
    private static final String FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED;
    private static final String FIELD_IS_VIEWPORT_SIZE_LIMITED_BY_PHYSICAL_DISPLAY_SIZE;
    private static final String FIELD_MAX_AUDIO_BITRATE;
    private static final String FIELD_MAX_AUDIO_CHANNEL_COUNT;
    private static final String FIELD_MAX_VIDEO_BITRATE;
    private static final String FIELD_MAX_VIDEO_FRAMERATE;
    private static final String FIELD_MAX_VIDEO_HEIGHT;
    private static final String FIELD_MAX_VIDEO_WIDTH;
    private static final String FIELD_MIN_VIDEO_BITRATE;
    private static final String FIELD_MIN_VIDEO_FRAMERATE;
    private static final String FIELD_MIN_VIDEO_HEIGHT;
    private static final String FIELD_MIN_VIDEO_WIDTH;
    private static final String FIELD_PREFERRED_AUDIO_LANGUAGES;
    private static final String FIELD_PREFERRED_AUDIO_MIME_TYPES;
    private static final String FIELD_PREFERRED_AUDIO_ROLE_FLAGS;
    private static final String FIELD_PREFERRED_TEXT_LANGUAGES;
    private static final String FIELD_PREFERRED_TEXT_ROLE_FLAGS;
    private static final String FIELD_PREFERRED_VIDEO_LANGUAGES;
    private static final String FIELD_PREFERRED_VIDEO_MIMETYPES;
    private static final String FIELD_PREFERRED_VIDEO_ROLE_FLAGS;
    private static final String FIELD_SELECTION_OVERRIDES;
    private static final String FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE;

    /* JADX INFO: renamed from: FIELD_USE_PREFERRED_TEXT_LANGUAGES_AND_ROLE_FLAGS_FROM_CAPTIONING_MANAGER */
    private static final String f21x8acfe161;
    private static final String FIELD_VIEWPORT_HEIGHT;
    private static final String FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE;
    private static final String FIELD_VIEWPORT_WIDTH;
    public final AudioOffloadPreferences audioOffloadPreferences;
    public final ImmutableSet<Integer> disabledTrackTypes;
    public final boolean forceHighestSupportedBitrate;
    public final boolean forceLowestBitrate;
    public final int ignoredTextSelectionFlags;
    public final boolean isPrioritizeImageOverVideoEnabled;
    public final boolean isViewportSizeLimitedByPhysicalDisplaySize;
    public final int maxAudioBitrate;
    public final int maxAudioChannelCount;
    public final int maxVideoBitrate;
    public final int maxVideoFrameRate;
    public final int maxVideoHeight;
    public final int maxVideoWidth;
    public final int minVideoBitrate;
    public final int minVideoFrameRate;
    public final int minVideoHeight;
    public final int minVideoWidth;
    public final ImmutableMap<TrackGroup, TrackSelectionOverride> overrides;
    public final ImmutableList<String> preferredAudioLanguages;
    public final ImmutableList<String> preferredAudioMimeTypes;
    public final int preferredAudioRoleFlags;
    public final ImmutableList<String> preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final ImmutableList<String> preferredVideoLanguages;
    public final ImmutableList<String> preferredVideoMimeTypes;
    public final int preferredVideoRoleFlags;
    public final boolean selectUndeterminedTextLanguage;
    public final boolean usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager;
    public final int viewportHeight;
    public final boolean viewportOrientationMayChange;
    public final int viewportWidth;

    public static class Builder {
        private AudioOffloadPreferences audioOffloadPreferences;
        private HashSet<Integer> disabledTrackTypes;
        private boolean forceHighestSupportedBitrate;
        private boolean forceLowestBitrate;
        private int ignoredTextSelectionFlags;
        private boolean isPrioritizeImageOverVideoEnabled;
        private boolean isViewportSizeLimitedByPhysicalDisplaySize;
        private int maxAudioBitrate;
        private int maxAudioChannelCount;
        private int maxVideoBitrate;
        private int maxVideoFrameRate;
        private int maxVideoHeight;
        private int maxVideoWidth;
        private int minVideoBitrate;
        private int minVideoFrameRate;
        private int minVideoHeight;
        private int minVideoWidth;
        private HashMap<TrackGroup, TrackSelectionOverride> overrides;
        private ImmutableList<String> preferredAudioLanguages;
        private ImmutableList<String> preferredAudioMimeTypes;
        private int preferredAudioRoleFlags;
        private ImmutableList<String> preferredTextLanguages;
        private int preferredTextRoleFlags;
        private ImmutableList<String> preferredVideoLanguages;
        private ImmutableList<String> preferredVideoMimeTypes;
        private int preferredVideoRoleFlags;
        private boolean selectUndeterminedTextLanguage;
        private boolean usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager;
        private int viewportHeight;
        private boolean viewportOrientationMayChange;
        private int viewportWidth;

        public Builder() {
            this.maxVideoWidth = Integer.MAX_VALUE;
            this.maxVideoHeight = Integer.MAX_VALUE;
            this.maxVideoFrameRate = Integer.MAX_VALUE;
            this.maxVideoBitrate = Integer.MAX_VALUE;
            this.viewportWidth = Integer.MAX_VALUE;
            this.viewportHeight = Integer.MAX_VALUE;
            this.isViewportSizeLimitedByPhysicalDisplaySize = true;
            this.viewportOrientationMayChange = true;
            this.preferredVideoMimeTypes = ImmutableList.of();
            this.preferredVideoLanguages = ImmutableList.of();
            this.preferredVideoRoleFlags = 0;
            this.preferredAudioLanguages = ImmutableList.of();
            this.preferredAudioRoleFlags = 0;
            this.maxAudioChannelCount = Integer.MAX_VALUE;
            this.maxAudioBitrate = Integer.MAX_VALUE;
            this.preferredAudioMimeTypes = ImmutableList.of();
            this.audioOffloadPreferences = AudioOffloadPreferences.DEFAULT;
            this.preferredTextLanguages = ImmutableList.of();
            this.preferredTextRoleFlags = 0;
            this.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager = true;
            this.ignoredTextSelectionFlags = 0;
            this.selectUndeterminedTextLanguage = false;
            this.isPrioritizeImageOverVideoEnabled = false;
            this.forceLowestBitrate = false;
            this.forceHighestSupportedBitrate = false;
            this.overrides = new HashMap<>();
            this.disabledTrackTypes = new HashSet<>();
        }

        public Builder(TrackSelectionParameters trackSelectionParameters) {
            init(trackSelectionParameters);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(Bundle bundle) {
            ImmutableList immutableListFromBundleList;
            String str = TrackSelectionParameters.FIELD_MAX_VIDEO_WIDTH;
            TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.DEFAULT;
            this.maxVideoWidth = bundle.getInt(str, trackSelectionParameters.maxVideoWidth);
            this.maxVideoHeight = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_HEIGHT, trackSelectionParameters.maxVideoHeight);
            this.maxVideoFrameRate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_FRAMERATE, trackSelectionParameters.maxVideoFrameRate);
            this.maxVideoBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_BITRATE, trackSelectionParameters.maxVideoBitrate);
            this.minVideoWidth = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_WIDTH, trackSelectionParameters.minVideoWidth);
            this.minVideoHeight = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_HEIGHT, trackSelectionParameters.minVideoHeight);
            this.minVideoFrameRate = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_FRAMERATE, trackSelectionParameters.minVideoFrameRate);
            this.minVideoBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_BITRATE, trackSelectionParameters.minVideoBitrate);
            this.viewportWidth = bundle.getInt(TrackSelectionParameters.FIELD_VIEWPORT_WIDTH, trackSelectionParameters.viewportWidth);
            int i = bundle.getInt(TrackSelectionParameters.FIELD_VIEWPORT_HEIGHT, trackSelectionParameters.viewportHeight);
            this.viewportHeight = i;
            this.isViewportSizeLimitedByPhysicalDisplaySize = this.viewportWidth == Integer.MAX_VALUE && i == Integer.MAX_VALUE && bundle.getBoolean(TrackSelectionParameters.FIELD_IS_VIEWPORT_SIZE_LIMITED_BY_PHYSICAL_DISPLAY_SIZE, trackSelectionParameters.isViewportSizeLimitedByPhysicalDisplaySize);
            this.viewportOrientationMayChange = bundle.getBoolean(TrackSelectionParameters.FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE, trackSelectionParameters.viewportOrientationMayChange);
            this.preferredVideoMimeTypes = ImmutableList.copyOf((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_VIDEO_MIMETYPES), new String[0]));
            this.preferredVideoLanguages = ImmutableList.copyOf((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_VIDEO_LANGUAGES), new String[0]));
            this.preferredVideoRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_VIDEO_ROLE_FLAGS, trackSelectionParameters.preferredVideoRoleFlags);
            this.preferredAudioLanguages = normalizeLanguageCodes((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_LANGUAGES), new String[0]));
            this.preferredAudioRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_ROLE_FLAGS, trackSelectionParameters.preferredAudioRoleFlags);
            this.maxAudioChannelCount = bundle.getInt(TrackSelectionParameters.FIELD_MAX_AUDIO_CHANNEL_COUNT, trackSelectionParameters.maxAudioChannelCount);
            this.maxAudioBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_AUDIO_BITRATE, trackSelectionParameters.maxAudioBitrate);
            this.preferredAudioMimeTypes = ImmutableList.copyOf((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_MIME_TYPES), new String[0]));
            this.audioOffloadPreferences = getAudioOffloadPreferencesFromBundle(bundle);
            this.preferredTextLanguages = normalizeLanguageCodes((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_TEXT_LANGUAGES), new String[0]));
            this.preferredTextRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_TEXT_ROLE_FLAGS, trackSelectionParameters.preferredTextRoleFlags);
            this.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager = this.preferredTextLanguages.isEmpty() && this.preferredTextRoleFlags == 0 && bundle.getBoolean(TrackSelectionParameters.f21x8acfe161, trackSelectionParameters.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager);
            this.ignoredTextSelectionFlags = bundle.getInt(TrackSelectionParameters.FIELD_IGNORED_TEXT_SELECTION_FLAGS, trackSelectionParameters.ignoredTextSelectionFlags);
            this.selectUndeterminedTextLanguage = bundle.getBoolean(TrackSelectionParameters.FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE, trackSelectionParameters.selectUndeterminedTextLanguage);
            this.isPrioritizeImageOverVideoEnabled = bundle.getBoolean(TrackSelectionParameters.FIELD_IS_PREFER_IMAGE_OVER_VIDEO_ENABLED, trackSelectionParameters.isPrioritizeImageOverVideoEnabled);
            this.forceLowestBitrate = bundle.getBoolean(TrackSelectionParameters.FIELD_FORCE_LOWEST_BITRATE, trackSelectionParameters.forceLowestBitrate);
            this.forceHighestSupportedBitrate = bundle.getBoolean(TrackSelectionParameters.FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE, trackSelectionParameters.forceHighestSupportedBitrate);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(TrackSelectionParameters.FIELD_SELECTION_OVERRIDES);
            if (parcelableArrayList == null) {
                immutableListFromBundleList = ImmutableList.of();
            } else {
                immutableListFromBundleList = BundleCollectionUtil.fromBundleList(new Function() { // from class: androidx.media3.common.TrackSelectionParameters$Builder$$ExternalSyntheticLambda0
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj) {
                        return TrackSelectionOverride.fromBundle((Bundle) obj);
                    }
                }, parcelableArrayList);
            }
            this.overrides = new HashMap<>();
            for (int i2 = 0; i2 < immutableListFromBundleList.size(); i2++) {
                TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) immutableListFromBundleList.get(i2);
                this.overrides.put(trackSelectionOverride.mediaTrackGroup, trackSelectionOverride);
            }
            int[] iArr = (int[]) MoreObjects.firstNonNull(bundle.getIntArray(TrackSelectionParameters.FIELD_DISABLED_TRACK_TYPE), new int[0]);
            this.disabledTrackTypes = new HashSet<>();
            for (int i3 : iArr) {
                this.disabledTrackTypes.add(Integer.valueOf(i3));
            }
        }

        private static AudioOffloadPreferences getAudioOffloadPreferencesFromBundle(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(TrackSelectionParameters.FIELD_AUDIO_OFFLOAD_PREFERENCES);
            if (bundle2 != null) {
                return AudioOffloadPreferences.fromBundle(bundle2);
            }
            AudioOffloadPreferences.Builder builder = new AudioOffloadPreferences.Builder();
            String str = TrackSelectionParameters.FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE;
            AudioOffloadPreferences audioOffloadPreferences = AudioOffloadPreferences.DEFAULT;
            return builder.setAudioOffloadMode(bundle.getInt(str, audioOffloadPreferences.audioOffloadMode)).setIsGaplessSupportRequired(bundle.getBoolean(TrackSelectionParameters.FIELD_IS_GAPLESS_SUPPORT_REQUIRED, audioOffloadPreferences.isGaplessSupportRequired)).setIsSpeedChangeSupportRequired(bundle.getBoolean(TrackSelectionParameters.FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED, audioOffloadPreferences.isSpeedChangeSupportRequired)).build();
        }

        @EnsuresNonNull({"preferredVideoMimeTypes", "preferredVideoLanguages", "preferredAudioLanguages", "preferredAudioMimeTypes", "audioOffloadPreferences", "preferredTextLanguages", "overrides", "disabledTrackTypes"})
        private void init(TrackSelectionParameters trackSelectionParameters) {
            this.maxVideoWidth = trackSelectionParameters.maxVideoWidth;
            this.maxVideoHeight = trackSelectionParameters.maxVideoHeight;
            this.maxVideoFrameRate = trackSelectionParameters.maxVideoFrameRate;
            this.maxVideoBitrate = trackSelectionParameters.maxVideoBitrate;
            this.minVideoWidth = trackSelectionParameters.minVideoWidth;
            this.minVideoHeight = trackSelectionParameters.minVideoHeight;
            this.minVideoFrameRate = trackSelectionParameters.minVideoFrameRate;
            this.minVideoBitrate = trackSelectionParameters.minVideoBitrate;
            this.viewportWidth = trackSelectionParameters.viewportWidth;
            this.viewportHeight = trackSelectionParameters.viewportHeight;
            this.isViewportSizeLimitedByPhysicalDisplaySize = trackSelectionParameters.isViewportSizeLimitedByPhysicalDisplaySize;
            this.viewportOrientationMayChange = trackSelectionParameters.viewportOrientationMayChange;
            this.preferredVideoMimeTypes = trackSelectionParameters.preferredVideoMimeTypes;
            this.preferredVideoLanguages = trackSelectionParameters.preferredVideoLanguages;
            this.preferredVideoRoleFlags = trackSelectionParameters.preferredVideoRoleFlags;
            this.preferredAudioLanguages = trackSelectionParameters.preferredAudioLanguages;
            this.preferredAudioRoleFlags = trackSelectionParameters.preferredAudioRoleFlags;
            this.maxAudioChannelCount = trackSelectionParameters.maxAudioChannelCount;
            this.maxAudioBitrate = trackSelectionParameters.maxAudioBitrate;
            this.preferredAudioMimeTypes = trackSelectionParameters.preferredAudioMimeTypes;
            this.audioOffloadPreferences = trackSelectionParameters.audioOffloadPreferences;
            this.preferredTextLanguages = trackSelectionParameters.preferredTextLanguages;
            this.preferredTextRoleFlags = trackSelectionParameters.preferredTextRoleFlags;
            this.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager = trackSelectionParameters.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager;
            this.ignoredTextSelectionFlags = trackSelectionParameters.ignoredTextSelectionFlags;
            this.selectUndeterminedTextLanguage = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.isPrioritizeImageOverVideoEnabled = trackSelectionParameters.isPrioritizeImageOverVideoEnabled;
            this.forceLowestBitrate = trackSelectionParameters.forceLowestBitrate;
            this.forceHighestSupportedBitrate = trackSelectionParameters.forceHighestSupportedBitrate;
            this.disabledTrackTypes = new HashSet<>(trackSelectionParameters.disabledTrackTypes);
            this.overrides = new HashMap<>(trackSelectionParameters.overrides);
        }

        public Builder set(TrackSelectionParameters trackSelectionParameters) {
            init(trackSelectionParameters);
            return this;
        }

        public Builder addOverride(TrackSelectionOverride trackSelectionOverride) {
            this.overrides.put(trackSelectionOverride.mediaTrackGroup, trackSelectionOverride);
            return this;
        }

        public Builder clearOverrides() {
            this.overrides.clear();
            return this;
        }

        public Builder setDisabledTrackTypes(Set<Integer> set) {
            this.disabledTrackTypes.clear();
            this.disabledTrackTypes.addAll(set);
            return this;
        }

        public Builder setTrackTypeDisabled(int i, boolean z) {
            HashSet<Integer> hashSet = this.disabledTrackTypes;
            if (z) {
                hashSet.add(Integer.valueOf(i));
                return this;
            }
            hashSet.remove(Integer.valueOf(i));
            return this;
        }

        public TrackSelectionParameters build() {
            return new TrackSelectionParameters(this);
        }

        private static ImmutableList<String> normalizeLanguageCodes(String[] strArr) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (String str : (String[]) Assertions.checkNotNull(strArr)) {
                builder.add(Util.normalizeLanguageCode((String) Assertions.checkNotNull(str)));
            }
            return builder.build();
        }
    }

    public static final class AudioOffloadPreferences {
        public static final AudioOffloadPreferences DEFAULT = new Builder().build();
        private static final String FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE = Util.intToStringMaxRadix(1);
        private static final String FIELD_IS_GAPLESS_SUPPORT_REQUIRED = Util.intToStringMaxRadix(2);
        private static final String FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED = Util.intToStringMaxRadix(3);
        public final int audioOffloadMode;
        public final boolean isGaplessSupportRequired;
        public final boolean isSpeedChangeSupportRequired;

        public static final class Builder {
            private int audioOffloadMode = 0;
            private boolean isGaplessSupportRequired = false;
            private boolean isSpeedChangeSupportRequired = false;

            public Builder setAudioOffloadMode(int i) {
                this.audioOffloadMode = i;
                return this;
            }

            public Builder setIsGaplessSupportRequired(boolean z) {
                this.isGaplessSupportRequired = z;
                return this;
            }

            public Builder setIsSpeedChangeSupportRequired(boolean z) {
                this.isSpeedChangeSupportRequired = z;
                return this;
            }

            public AudioOffloadPreferences build() {
                return new AudioOffloadPreferences(this);
            }
        }

        private AudioOffloadPreferences(Builder builder) {
            this.audioOffloadMode = builder.audioOffloadMode;
            this.isGaplessSupportRequired = builder.isGaplessSupportRequired;
            this.isSpeedChangeSupportRequired = builder.isSpeedChangeSupportRequired;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && AudioOffloadPreferences.class == obj.getClass()) {
                AudioOffloadPreferences audioOffloadPreferences = (AudioOffloadPreferences) obj;
                if (this.audioOffloadMode == audioOffloadPreferences.audioOffloadMode && this.isGaplessSupportRequired == audioOffloadPreferences.isGaplessSupportRequired && this.isSpeedChangeSupportRequired == audioOffloadPreferences.isSpeedChangeSupportRequired) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((this.audioOffloadMode + 31) * 31) + (this.isGaplessSupportRequired ? 1 : 0)) * 31) + (this.isSpeedChangeSupportRequired ? 1 : 0);
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE, this.audioOffloadMode);
            bundle.putBoolean(FIELD_IS_GAPLESS_SUPPORT_REQUIRED, this.isGaplessSupportRequired);
            bundle.putBoolean(FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED, this.isSpeedChangeSupportRequired);
            return bundle;
        }

        public static AudioOffloadPreferences fromBundle(Bundle bundle) {
            Builder builder = new Builder();
            String str = FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE;
            AudioOffloadPreferences audioOffloadPreferences = DEFAULT;
            return builder.setAudioOffloadMode(bundle.getInt(str, audioOffloadPreferences.audioOffloadMode)).setIsGaplessSupportRequired(bundle.getBoolean(FIELD_IS_GAPLESS_SUPPORT_REQUIRED, audioOffloadPreferences.isGaplessSupportRequired)).setIsSpeedChangeSupportRequired(bundle.getBoolean(FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED, audioOffloadPreferences.isSpeedChangeSupportRequired)).build();
        }
    }

    static {
        TrackSelectionParameters trackSelectionParametersBuild = new Builder().build();
        DEFAULT = trackSelectionParametersBuild;
        DEFAULT_WITHOUT_CONTEXT = trackSelectionParametersBuild;
        FIELD_PREFERRED_AUDIO_LANGUAGES = Util.intToStringMaxRadix(1);
        FIELD_PREFERRED_AUDIO_ROLE_FLAGS = Util.intToStringMaxRadix(2);
        FIELD_PREFERRED_TEXT_LANGUAGES = Util.intToStringMaxRadix(3);
        FIELD_PREFERRED_TEXT_ROLE_FLAGS = Util.intToStringMaxRadix(4);
        FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE = Util.intToStringMaxRadix(5);
        FIELD_MAX_VIDEO_WIDTH = Util.intToStringMaxRadix(6);
        FIELD_MAX_VIDEO_HEIGHT = Util.intToStringMaxRadix(7);
        FIELD_MAX_VIDEO_FRAMERATE = Util.intToStringMaxRadix(8);
        FIELD_MAX_VIDEO_BITRATE = Util.intToStringMaxRadix(9);
        FIELD_MIN_VIDEO_WIDTH = Util.intToStringMaxRadix(10);
        FIELD_MIN_VIDEO_HEIGHT = Util.intToStringMaxRadix(11);
        FIELD_MIN_VIDEO_FRAMERATE = Util.intToStringMaxRadix(12);
        FIELD_MIN_VIDEO_BITRATE = Util.intToStringMaxRadix(13);
        FIELD_VIEWPORT_WIDTH = Util.intToStringMaxRadix(14);
        FIELD_VIEWPORT_HEIGHT = Util.intToStringMaxRadix(15);
        FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE = Util.intToStringMaxRadix(16);
        FIELD_PREFERRED_VIDEO_MIMETYPES = Util.intToStringMaxRadix(17);
        FIELD_MAX_AUDIO_CHANNEL_COUNT = Util.intToStringMaxRadix(18);
        FIELD_MAX_AUDIO_BITRATE = Util.intToStringMaxRadix(19);
        FIELD_PREFERRED_AUDIO_MIME_TYPES = Util.intToStringMaxRadix(20);
        FIELD_FORCE_LOWEST_BITRATE = Util.intToStringMaxRadix(21);
        FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE = Util.intToStringMaxRadix(22);
        FIELD_SELECTION_OVERRIDES = Util.intToStringMaxRadix(23);
        FIELD_DISABLED_TRACK_TYPE = Util.intToStringMaxRadix(24);
        FIELD_PREFERRED_VIDEO_ROLE_FLAGS = Util.intToStringMaxRadix(25);
        FIELD_IGNORED_TEXT_SELECTION_FLAGS = Util.intToStringMaxRadix(26);
        FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE = Util.intToStringMaxRadix(27);
        FIELD_IS_GAPLESS_SUPPORT_REQUIRED = Util.intToStringMaxRadix(28);
        FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED = Util.intToStringMaxRadix(29);
        FIELD_AUDIO_OFFLOAD_PREFERENCES = Util.intToStringMaxRadix(30);
        FIELD_IS_PREFER_IMAGE_OVER_VIDEO_ENABLED = Util.intToStringMaxRadix(31);
        FIELD_PREFERRED_VIDEO_LANGUAGES = Util.intToStringMaxRadix(32);
        FIELD_IS_VIEWPORT_SIZE_LIMITED_BY_PHYSICAL_DISPLAY_SIZE = Util.intToStringMaxRadix(33);
        f21x8acfe161 = Util.intToStringMaxRadix(34);
    }

    public TrackSelectionParameters(Builder builder) {
        this.maxVideoWidth = builder.maxVideoWidth;
        this.maxVideoHeight = builder.maxVideoHeight;
        this.maxVideoFrameRate = builder.maxVideoFrameRate;
        this.maxVideoBitrate = builder.maxVideoBitrate;
        this.minVideoWidth = builder.minVideoWidth;
        this.minVideoHeight = builder.minVideoHeight;
        this.minVideoFrameRate = builder.minVideoFrameRate;
        this.minVideoBitrate = builder.minVideoBitrate;
        this.viewportWidth = builder.viewportWidth;
        this.viewportHeight = builder.viewportHeight;
        this.isViewportSizeLimitedByPhysicalDisplaySize = builder.isViewportSizeLimitedByPhysicalDisplaySize;
        this.viewportOrientationMayChange = builder.viewportOrientationMayChange;
        this.preferredVideoMimeTypes = builder.preferredVideoMimeTypes;
        this.preferredVideoLanguages = builder.preferredVideoLanguages;
        this.preferredVideoRoleFlags = builder.preferredVideoRoleFlags;
        this.preferredAudioLanguages = builder.preferredAudioLanguages;
        this.preferredAudioRoleFlags = builder.preferredAudioRoleFlags;
        this.maxAudioChannelCount = builder.maxAudioChannelCount;
        this.maxAudioBitrate = builder.maxAudioBitrate;
        this.preferredAudioMimeTypes = builder.preferredAudioMimeTypes;
        this.audioOffloadPreferences = builder.audioOffloadPreferences;
        this.preferredTextLanguages = builder.preferredTextLanguages;
        this.preferredTextRoleFlags = builder.preferredTextRoleFlags;
        this.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager = builder.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager;
        this.ignoredTextSelectionFlags = builder.ignoredTextSelectionFlags;
        this.selectUndeterminedTextLanguage = builder.selectUndeterminedTextLanguage;
        this.isPrioritizeImageOverVideoEnabled = builder.isPrioritizeImageOverVideoEnabled;
        this.forceLowestBitrate = builder.forceLowestBitrate;
        this.forceHighestSupportedBitrate = builder.forceHighestSupportedBitrate;
        this.overrides = ImmutableMap.copyOf((Map) builder.overrides);
        this.disabledTrackTypes = ImmutableSet.copyOf((Collection) builder.disabledTrackTypes);
    }

    public Builder buildUpon() {
        return new Builder(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
            if (this.maxVideoWidth == trackSelectionParameters.maxVideoWidth && this.maxVideoHeight == trackSelectionParameters.maxVideoHeight && this.maxVideoFrameRate == trackSelectionParameters.maxVideoFrameRate && this.maxVideoBitrate == trackSelectionParameters.maxVideoBitrate && this.minVideoWidth == trackSelectionParameters.minVideoWidth && this.minVideoHeight == trackSelectionParameters.minVideoHeight && this.minVideoFrameRate == trackSelectionParameters.minVideoFrameRate && this.minVideoBitrate == trackSelectionParameters.minVideoBitrate && this.viewportOrientationMayChange == trackSelectionParameters.viewportOrientationMayChange && this.viewportWidth == trackSelectionParameters.viewportWidth && this.viewportHeight == trackSelectionParameters.viewportHeight && this.isViewportSizeLimitedByPhysicalDisplaySize == trackSelectionParameters.isViewportSizeLimitedByPhysicalDisplaySize && this.preferredVideoMimeTypes.equals(trackSelectionParameters.preferredVideoMimeTypes) && this.preferredVideoLanguages.equals(trackSelectionParameters.preferredVideoLanguages) && this.preferredVideoRoleFlags == trackSelectionParameters.preferredVideoRoleFlags && this.preferredAudioLanguages.equals(trackSelectionParameters.preferredAudioLanguages) && this.preferredAudioRoleFlags == trackSelectionParameters.preferredAudioRoleFlags && this.maxAudioChannelCount == trackSelectionParameters.maxAudioChannelCount && this.maxAudioBitrate == trackSelectionParameters.maxAudioBitrate && this.preferredAudioMimeTypes.equals(trackSelectionParameters.preferredAudioMimeTypes) && this.audioOffloadPreferences.equals(trackSelectionParameters.audioOffloadPreferences) && this.preferredTextLanguages.equals(trackSelectionParameters.preferredTextLanguages) && this.preferredTextRoleFlags == trackSelectionParameters.preferredTextRoleFlags && this.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager == trackSelectionParameters.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager && this.ignoredTextSelectionFlags == trackSelectionParameters.ignoredTextSelectionFlags && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.isPrioritizeImageOverVideoEnabled == trackSelectionParameters.isPrioritizeImageOverVideoEnabled && this.forceLowestBitrate == trackSelectionParameters.forceLowestBitrate && this.forceHighestSupportedBitrate == trackSelectionParameters.forceHighestSupportedBitrate && this.overrides.equals(trackSelectionParameters.overrides) && this.disabledTrackTypes.equals(trackSelectionParameters.disabledTrackTypes)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.maxVideoWidth + 31) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + (this.isViewportSizeLimitedByPhysicalDisplaySize ? 1 : 0)) * 31) + this.preferredVideoMimeTypes.hashCode()) * 31) + this.preferredVideoLanguages.hashCode()) * 31) + this.preferredVideoRoleFlags) * 31) + this.preferredAudioLanguages.hashCode()) * 31) + this.preferredAudioRoleFlags) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + this.preferredAudioMimeTypes.hashCode()) * 31) + this.audioOffloadPreferences.hashCode()) * 31) + this.preferredTextLanguages.hashCode()) * 31) + this.preferredTextRoleFlags) * 31) + (this.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager ? 1 : 0)) * 31) + this.ignoredTextSelectionFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + (this.isPrioritizeImageOverVideoEnabled ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + this.overrides.hashCode()) * 31) + this.disabledTrackTypes.hashCode();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_MAX_VIDEO_WIDTH, this.maxVideoWidth);
        bundle.putInt(FIELD_MAX_VIDEO_HEIGHT, this.maxVideoHeight);
        bundle.putInt(FIELD_MAX_VIDEO_FRAMERATE, this.maxVideoFrameRate);
        bundle.putInt(FIELD_MAX_VIDEO_BITRATE, this.maxVideoBitrate);
        bundle.putInt(FIELD_MIN_VIDEO_WIDTH, this.minVideoWidth);
        bundle.putInt(FIELD_MIN_VIDEO_HEIGHT, this.minVideoHeight);
        bundle.putInt(FIELD_MIN_VIDEO_FRAMERATE, this.minVideoFrameRate);
        bundle.putInt(FIELD_MIN_VIDEO_BITRATE, this.minVideoBitrate);
        bundle.putInt(FIELD_VIEWPORT_WIDTH, this.viewportWidth);
        bundle.putInt(FIELD_VIEWPORT_HEIGHT, this.viewportHeight);
        bundle.putBoolean(FIELD_IS_VIEWPORT_SIZE_LIMITED_BY_PHYSICAL_DISPLAY_SIZE, this.isViewportSizeLimitedByPhysicalDisplaySize);
        bundle.putBoolean(FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE, this.viewportOrientationMayChange);
        bundle.putStringArray(FIELD_PREFERRED_VIDEO_MIMETYPES, (String[]) this.preferredVideoMimeTypes.toArray(new String[0]));
        bundle.putStringArray(FIELD_PREFERRED_VIDEO_LANGUAGES, (String[]) this.preferredVideoLanguages.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_VIDEO_ROLE_FLAGS, this.preferredVideoRoleFlags);
        bundle.putStringArray(FIELD_PREFERRED_AUDIO_LANGUAGES, (String[]) this.preferredAudioLanguages.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_AUDIO_ROLE_FLAGS, this.preferredAudioRoleFlags);
        bundle.putInt(FIELD_MAX_AUDIO_CHANNEL_COUNT, this.maxAudioChannelCount);
        bundle.putInt(FIELD_MAX_AUDIO_BITRATE, this.maxAudioBitrate);
        bundle.putStringArray(FIELD_PREFERRED_AUDIO_MIME_TYPES, (String[]) this.preferredAudioMimeTypes.toArray(new String[0]));
        bundle.putStringArray(FIELD_PREFERRED_TEXT_LANGUAGES, (String[]) this.preferredTextLanguages.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_TEXT_ROLE_FLAGS, this.preferredTextRoleFlags);
        bundle.putBoolean(f21x8acfe161, this.usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager);
        bundle.putInt(FIELD_IGNORED_TEXT_SELECTION_FLAGS, this.ignoredTextSelectionFlags);
        bundle.putBoolean(FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE, this.selectUndeterminedTextLanguage);
        bundle.putInt(FIELD_AUDIO_OFFLOAD_MODE_PREFERENCE, this.audioOffloadPreferences.audioOffloadMode);
        bundle.putBoolean(FIELD_IS_GAPLESS_SUPPORT_REQUIRED, this.audioOffloadPreferences.isGaplessSupportRequired);
        bundle.putBoolean(FIELD_IS_SPEED_CHANGE_SUPPORT_REQUIRED, this.audioOffloadPreferences.isSpeedChangeSupportRequired);
        bundle.putBundle(FIELD_AUDIO_OFFLOAD_PREFERENCES, this.audioOffloadPreferences.toBundle());
        bundle.putBoolean(FIELD_IS_PREFER_IMAGE_OVER_VIDEO_ENABLED, this.isPrioritizeImageOverVideoEnabled);
        bundle.putBoolean(FIELD_FORCE_LOWEST_BITRATE, this.forceLowestBitrate);
        bundle.putBoolean(FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE, this.forceHighestSupportedBitrate);
        bundle.putParcelableArrayList(FIELD_SELECTION_OVERRIDES, BundleCollectionUtil.toBundleArrayList(this.overrides.values(), new Function() { // from class: androidx.media3.common.TrackSelectionParameters$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return ((TrackSelectionOverride) obj).toBundle();
            }
        }));
        bundle.putIntArray(FIELD_DISABLED_TRACK_TYPE, Ints.toArray(this.disabledTrackTypes));
        return bundle;
    }

    public static TrackSelectionParameters fromBundle(Bundle bundle) {
        return new Builder(bundle).build();
    }
}
