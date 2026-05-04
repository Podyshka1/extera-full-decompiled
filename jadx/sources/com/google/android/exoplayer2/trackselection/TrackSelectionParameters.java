package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class TrackSelectionParameters implements Bundleable {
    public static final Bundleable.Creator CREATOR;
    public static final TrackSelectionParameters DEFAULT;
    public static final TrackSelectionParameters DEFAULT_WITHOUT_CONTEXT;
    private static final String FIELD_DISABLED_TRACK_TYPE;
    private static final String FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE;
    private static final String FIELD_FORCE_LOWEST_BITRATE;
    private static final String FIELD_IGNORED_TEXT_SELECTION_FLAGS;
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
    private static final String FIELD_PREFERRED_VIDEO_MIMETYPES;
    private static final String FIELD_PREFERRED_VIDEO_ROLE_FLAGS;
    private static final String FIELD_SELECTION_OVERRIDES;
    private static final String FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE;
    private static final String FIELD_VIEWPORT_HEIGHT;
    private static final String FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE;
    private static final String FIELD_VIEWPORT_WIDTH;
    public final ImmutableSet disabledTrackTypes;
    public final boolean forceHighestSupportedBitrate;
    public final boolean forceLowestBitrate;
    public final int ignoredTextSelectionFlags;
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
    public final ImmutableMap overrides;
    public final ImmutableList preferredAudioLanguages;
    public final ImmutableList preferredAudioMimeTypes;
    public final int preferredAudioRoleFlags;
    public final ImmutableList preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final ImmutableList preferredVideoMimeTypes;
    public final int preferredVideoRoleFlags;
    public final boolean selectUndeterminedTextLanguage;
    public final int viewportHeight;
    public final boolean viewportOrientationMayChange;
    public final int viewportWidth;

    public static class Builder {
        private HashSet disabledTrackTypes;
        private boolean forceHighestSupportedBitrate;
        private boolean forceLowestBitrate;
        private int ignoredTextSelectionFlags;
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
        private HashMap overrides;
        private ImmutableList preferredAudioLanguages;
        private ImmutableList preferredAudioMimeTypes;
        private int preferredAudioRoleFlags;
        private ImmutableList preferredTextLanguages;
        private int preferredTextRoleFlags;
        private ImmutableList preferredVideoMimeTypes;
        private int preferredVideoRoleFlags;
        private boolean selectUndeterminedTextLanguage;
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
            this.viewportOrientationMayChange = true;
            this.preferredVideoMimeTypes = ImmutableList.m482of();
            this.preferredVideoRoleFlags = 0;
            this.preferredAudioLanguages = ImmutableList.m482of();
            this.preferredAudioRoleFlags = 0;
            this.maxAudioChannelCount = Integer.MAX_VALUE;
            this.maxAudioBitrate = Integer.MAX_VALUE;
            this.preferredAudioMimeTypes = ImmutableList.m482of();
            this.preferredTextLanguages = ImmutableList.m482of();
            this.preferredTextRoleFlags = 0;
            this.ignoredTextSelectionFlags = 0;
            this.selectUndeterminedTextLanguage = false;
            this.forceLowestBitrate = false;
            this.forceHighestSupportedBitrate = false;
            this.overrides = new HashMap();
            this.disabledTrackTypes = new HashSet();
        }

        public Builder(Context context) {
            this();
            setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(context);
            setViewportSizeToPhysicalDisplaySize(context, true);
        }

        protected Builder(TrackSelectionParameters trackSelectionParameters) {
            init(trackSelectionParameters);
        }

        protected Builder(Bundle bundle) {
            ImmutableList immutableListFromBundleList;
            String str = TrackSelectionParameters.FIELD_MAX_VIDEO_WIDTH;
            TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
            this.maxVideoWidth = bundle.getInt(str, trackSelectionParameters.maxVideoWidth);
            this.maxVideoHeight = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_HEIGHT, trackSelectionParameters.maxVideoHeight);
            this.maxVideoFrameRate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_FRAMERATE, trackSelectionParameters.maxVideoFrameRate);
            this.maxVideoBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_VIDEO_BITRATE, trackSelectionParameters.maxVideoBitrate);
            this.minVideoWidth = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_WIDTH, trackSelectionParameters.minVideoWidth);
            this.minVideoHeight = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_HEIGHT, trackSelectionParameters.minVideoHeight);
            this.minVideoFrameRate = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_FRAMERATE, trackSelectionParameters.minVideoFrameRate);
            this.minVideoBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MIN_VIDEO_BITRATE, trackSelectionParameters.minVideoBitrate);
            this.viewportWidth = bundle.getInt(TrackSelectionParameters.FIELD_VIEWPORT_WIDTH, trackSelectionParameters.viewportWidth);
            this.viewportHeight = bundle.getInt(TrackSelectionParameters.FIELD_VIEWPORT_HEIGHT, trackSelectionParameters.viewportHeight);
            this.viewportOrientationMayChange = bundle.getBoolean(TrackSelectionParameters.FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE, trackSelectionParameters.viewportOrientationMayChange);
            this.preferredVideoMimeTypes = ImmutableList.copyOf((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_VIDEO_MIMETYPES), new String[0]));
            this.preferredVideoRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_VIDEO_ROLE_FLAGS, trackSelectionParameters.preferredVideoRoleFlags);
            this.preferredAudioLanguages = normalizeLanguageCodes((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_LANGUAGES), new String[0]));
            this.preferredAudioRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_ROLE_FLAGS, trackSelectionParameters.preferredAudioRoleFlags);
            this.maxAudioChannelCount = bundle.getInt(TrackSelectionParameters.FIELD_MAX_AUDIO_CHANNEL_COUNT, trackSelectionParameters.maxAudioChannelCount);
            this.maxAudioBitrate = bundle.getInt(TrackSelectionParameters.FIELD_MAX_AUDIO_BITRATE, trackSelectionParameters.maxAudioBitrate);
            this.preferredAudioMimeTypes = ImmutableList.copyOf((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_AUDIO_MIME_TYPES), new String[0]));
            this.preferredTextLanguages = normalizeLanguageCodes((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.FIELD_PREFERRED_TEXT_LANGUAGES), new String[0]));
            this.preferredTextRoleFlags = bundle.getInt(TrackSelectionParameters.FIELD_PREFERRED_TEXT_ROLE_FLAGS, trackSelectionParameters.preferredTextRoleFlags);
            this.ignoredTextSelectionFlags = bundle.getInt(TrackSelectionParameters.FIELD_IGNORED_TEXT_SELECTION_FLAGS, trackSelectionParameters.ignoredTextSelectionFlags);
            this.selectUndeterminedTextLanguage = bundle.getBoolean(TrackSelectionParameters.FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE, trackSelectionParameters.selectUndeterminedTextLanguage);
            this.forceLowestBitrate = bundle.getBoolean(TrackSelectionParameters.FIELD_FORCE_LOWEST_BITRATE, trackSelectionParameters.forceLowestBitrate);
            this.forceHighestSupportedBitrate = bundle.getBoolean(TrackSelectionParameters.FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE, trackSelectionParameters.forceHighestSupportedBitrate);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(TrackSelectionParameters.FIELD_SELECTION_OVERRIDES);
            if (parcelableArrayList == null) {
                immutableListFromBundleList = ImmutableList.m482of();
            } else {
                immutableListFromBundleList = BundleableUtil.fromBundleList(TrackSelectionOverride.CREATOR, parcelableArrayList);
            }
            this.overrides = new HashMap();
            for (int i = 0; i < immutableListFromBundleList.size(); i++) {
                TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) immutableListFromBundleList.get(i);
                this.overrides.put(trackSelectionOverride.mediaTrackGroup, trackSelectionOverride);
            }
            int[] iArr = (int[]) MoreObjects.firstNonNull(bundle.getIntArray(TrackSelectionParameters.FIELD_DISABLED_TRACK_TYPE), new int[0]);
            this.disabledTrackTypes = new HashSet();
            for (int i2 : iArr) {
                this.disabledTrackTypes.add(Integer.valueOf(i2));
            }
        }

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
            this.viewportOrientationMayChange = trackSelectionParameters.viewportOrientationMayChange;
            this.preferredVideoMimeTypes = trackSelectionParameters.preferredVideoMimeTypes;
            this.preferredVideoRoleFlags = trackSelectionParameters.preferredVideoRoleFlags;
            this.preferredAudioLanguages = trackSelectionParameters.preferredAudioLanguages;
            this.preferredAudioRoleFlags = trackSelectionParameters.preferredAudioRoleFlags;
            this.maxAudioChannelCount = trackSelectionParameters.maxAudioChannelCount;
            this.maxAudioBitrate = trackSelectionParameters.maxAudioBitrate;
            this.preferredAudioMimeTypes = trackSelectionParameters.preferredAudioMimeTypes;
            this.preferredTextLanguages = trackSelectionParameters.preferredTextLanguages;
            this.preferredTextRoleFlags = trackSelectionParameters.preferredTextRoleFlags;
            this.ignoredTextSelectionFlags = trackSelectionParameters.ignoredTextSelectionFlags;
            this.selectUndeterminedTextLanguage = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.forceLowestBitrate = trackSelectionParameters.forceLowestBitrate;
            this.forceHighestSupportedBitrate = trackSelectionParameters.forceHighestSupportedBitrate;
            this.disabledTrackTypes = new HashSet(trackSelectionParameters.disabledTrackTypes);
            this.overrides = new HashMap(trackSelectionParameters.overrides);
        }

        protected Builder set(TrackSelectionParameters trackSelectionParameters) {
            init(trackSelectionParameters);
            return this;
        }

        public Builder setViewportSizeToPhysicalDisplaySize(Context context, boolean z) {
            Point currentDisplayModeSize = Util.getCurrentDisplayModeSize(context);
            return setViewportSize(currentDisplayModeSize.x, currentDisplayModeSize.y, z);
        }

        public Builder setViewportSize(int i, int i2, boolean z) {
            this.viewportWidth = i;
            this.viewportHeight = i2;
            this.viewportOrientationMayChange = z;
            return this;
        }

        public Builder setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Context context) {
            if (Util.SDK_INT >= 19) {
                m323x58dbf263(context);
            }
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

        public Builder setTrackTypeDisabled(int i, boolean z) {
            if (z) {
                this.disabledTrackTypes.add(Integer.valueOf(i));
                return this;
            }
            this.disabledTrackTypes.remove(Integer.valueOf(i));
            return this;
        }

        public TrackSelectionParameters build() {
            return new TrackSelectionParameters(this);
        }

        /* JADX INFO: renamed from: setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19 */
        private void m323x58dbf263(Context context) {
            CaptioningManager captioningManager;
            if ((Util.SDK_INT >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.preferredTextRoleFlags = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.preferredTextLanguages = ImmutableList.m483of((Object) Util.getLocaleLanguageTag(locale));
                }
            }
        }

        private static ImmutableList normalizeLanguageCodes(String[] strArr) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (String str : (String[]) Assertions.checkNotNull(strArr)) {
                builder.add((Object) Util.normalizeLanguageCode((String) Assertions.checkNotNull(str)));
            }
            return builder.build();
        }
    }

    static {
        TrackSelectionParameters trackSelectionParametersBuild = new Builder().build();
        DEFAULT_WITHOUT_CONTEXT = trackSelectionParametersBuild;
        DEFAULT = trackSelectionParametersBuild;
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
        CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.trackselection.TrackSelectionParameters$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                return TrackSelectionParameters.fromBundle(bundle);
            }
        };
    }

    protected TrackSelectionParameters(Builder builder) {
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
        this.viewportOrientationMayChange = builder.viewportOrientationMayChange;
        this.preferredVideoMimeTypes = builder.preferredVideoMimeTypes;
        this.preferredVideoRoleFlags = builder.preferredVideoRoleFlags;
        this.preferredAudioLanguages = builder.preferredAudioLanguages;
        this.preferredAudioRoleFlags = builder.preferredAudioRoleFlags;
        this.maxAudioChannelCount = builder.maxAudioChannelCount;
        this.maxAudioBitrate = builder.maxAudioBitrate;
        this.preferredAudioMimeTypes = builder.preferredAudioMimeTypes;
        this.preferredTextLanguages = builder.preferredTextLanguages;
        this.preferredTextRoleFlags = builder.preferredTextRoleFlags;
        this.ignoredTextSelectionFlags = builder.ignoredTextSelectionFlags;
        this.selectUndeterminedTextLanguage = builder.selectUndeterminedTextLanguage;
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
            if (this.maxVideoWidth == trackSelectionParameters.maxVideoWidth && this.maxVideoHeight == trackSelectionParameters.maxVideoHeight && this.maxVideoFrameRate == trackSelectionParameters.maxVideoFrameRate && this.maxVideoBitrate == trackSelectionParameters.maxVideoBitrate && this.minVideoWidth == trackSelectionParameters.minVideoWidth && this.minVideoHeight == trackSelectionParameters.minVideoHeight && this.minVideoFrameRate == trackSelectionParameters.minVideoFrameRate && this.minVideoBitrate == trackSelectionParameters.minVideoBitrate && this.viewportOrientationMayChange == trackSelectionParameters.viewportOrientationMayChange && this.viewportWidth == trackSelectionParameters.viewportWidth && this.viewportHeight == trackSelectionParameters.viewportHeight && this.preferredVideoMimeTypes.equals(trackSelectionParameters.preferredVideoMimeTypes) && this.preferredVideoRoleFlags == trackSelectionParameters.preferredVideoRoleFlags && this.preferredAudioLanguages.equals(trackSelectionParameters.preferredAudioLanguages) && this.preferredAudioRoleFlags == trackSelectionParameters.preferredAudioRoleFlags && this.maxAudioChannelCount == trackSelectionParameters.maxAudioChannelCount && this.maxAudioBitrate == trackSelectionParameters.maxAudioBitrate && this.preferredAudioMimeTypes.equals(trackSelectionParameters.preferredAudioMimeTypes) && this.preferredTextLanguages.equals(trackSelectionParameters.preferredTextLanguages) && this.preferredTextRoleFlags == trackSelectionParameters.preferredTextRoleFlags && this.ignoredTextSelectionFlags == trackSelectionParameters.ignoredTextSelectionFlags && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.forceLowestBitrate == trackSelectionParameters.forceLowestBitrate && this.forceHighestSupportedBitrate == trackSelectionParameters.forceHighestSupportedBitrate && this.overrides.equals(trackSelectionParameters.overrides) && this.disabledTrackTypes.equals(trackSelectionParameters.disabledTrackTypes)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.maxVideoWidth + 31) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.preferredVideoMimeTypes.hashCode()) * 31) + this.preferredVideoRoleFlags) * 31) + this.preferredAudioLanguages.hashCode()) * 31) + this.preferredAudioRoleFlags) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + this.preferredAudioMimeTypes.hashCode()) * 31) + this.preferredTextLanguages.hashCode()) * 31) + this.preferredTextRoleFlags) * 31) + this.ignoredTextSelectionFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + this.overrides.hashCode()) * 31) + this.disabledTrackTypes.hashCode();
    }

    @Override // com.google.android.exoplayer2.Bundleable
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
        bundle.putBoolean(FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE, this.viewportOrientationMayChange);
        bundle.putStringArray(FIELD_PREFERRED_VIDEO_MIMETYPES, (String[]) this.preferredVideoMimeTypes.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_VIDEO_ROLE_FLAGS, this.preferredVideoRoleFlags);
        bundle.putStringArray(FIELD_PREFERRED_AUDIO_LANGUAGES, (String[]) this.preferredAudioLanguages.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_AUDIO_ROLE_FLAGS, this.preferredAudioRoleFlags);
        bundle.putInt(FIELD_MAX_AUDIO_CHANNEL_COUNT, this.maxAudioChannelCount);
        bundle.putInt(FIELD_MAX_AUDIO_BITRATE, this.maxAudioBitrate);
        bundle.putStringArray(FIELD_PREFERRED_AUDIO_MIME_TYPES, (String[]) this.preferredAudioMimeTypes.toArray(new String[0]));
        bundle.putStringArray(FIELD_PREFERRED_TEXT_LANGUAGES, (String[]) this.preferredTextLanguages.toArray(new String[0]));
        bundle.putInt(FIELD_PREFERRED_TEXT_ROLE_FLAGS, this.preferredTextRoleFlags);
        bundle.putInt(FIELD_IGNORED_TEXT_SELECTION_FLAGS, this.ignoredTextSelectionFlags);
        bundle.putBoolean(FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE, this.selectUndeterminedTextLanguage);
        bundle.putBoolean(FIELD_FORCE_LOWEST_BITRATE, this.forceLowestBitrate);
        bundle.putBoolean(FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE, this.forceHighestSupportedBitrate);
        bundle.putParcelableArrayList(FIELD_SELECTION_OVERRIDES, BundleableUtil.toBundleArrayList(this.overrides.values()));
        bundle.putIntArray(FIELD_DISABLED_TRACK_TYPE, Ints.toArray(this.disabledTrackTypes));
        return bundle;
    }

    public static TrackSelectionParameters fromBundle(Bundle bundle) {
        return new Builder(bundle).build();
    }
}
