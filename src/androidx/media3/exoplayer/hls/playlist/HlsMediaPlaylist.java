package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.camera.core.impl.Quirks$$ExternalSyntheticBackport0;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.StreamKey;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class HlsMediaPlaylist extends HlsPlaylist {
    public final int discontinuitySequence;
    public final long durationUs;
    public final boolean hasDiscontinuitySequence;
    public final boolean hasEndTag;
    public final boolean hasPositiveStartOffset;
    public final boolean hasProgramDateTime;
    public final ImmutableList<Interstitial> interstitials;
    public final Segment lastSeenInitSegment;
    public final long mediaSequence;
    public final long partTargetDurationUs;
    public final int playlistType;
    public final boolean preciseStart;
    public final DrmInitData protectionSchemes;
    public final Map<Uri, RenditionReport> renditionReports;
    public final List<Segment> segments;
    public final ServerControl serverControl;
    public final long startOffsetUs;
    public final long startTimeUs;
    public final long targetDurationUs;
    public final List<Part> trailingParts;
    public final int version;

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public HlsPlaylist copy(List<StreamKey> list) {
        return this;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    /* JADX INFO: renamed from: copy, reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ HlsPlaylist copy2(List list) {
        return copy((List<StreamKey>) list);
    }

    public static final class ServerControl {
        public final boolean canBlockReload;
        public final boolean canSkipDateRanges;
        public final long holdBackUs;
        public final long partHoldBackUs;
        public final long skipUntilUs;

        public ServerControl(long j, boolean z, long j2, long j3, boolean z2) {
            this.skipUntilUs = j;
            this.canSkipDateRanges = z;
            this.holdBackUs = j2;
            this.partHoldBackUs = j3;
            this.canBlockReload = z2;
        }
    }

    public static final class Segment extends SegmentBase {
        public final List<Part> parts;
        public final String title;

        public Segment(String str, long j, long j2, String str2, String str3) {
            this(str, null, _UrlKt.FRAGMENT_ENCODE_SET, 0L, -1, -9223372036854775807L, null, str2, str3, j, j2, false, ImmutableList.of());
        }

        public Segment(String str, Segment segment, String str2, long j, int i, long j2, DrmInitData drmInitData, String str3, String str4, long j3, long j4, boolean z, List<Part> list) {
            super(str, segment, j, i, j2, drmInitData, str3, str4, j3, j4, z);
            this.title = str2;
            this.parts = ImmutableList.copyOf((Collection) list);
        }

        public Segment copyWith(long j, int i) {
            ArrayList arrayList = new ArrayList();
            long j2 = j;
            for (int i2 = 0; i2 < this.parts.size(); i2++) {
                Part part = this.parts.get(i2);
                arrayList.add(part.copyWith(j2, i));
                j2 += part.durationUs;
            }
            return new Segment(this.url, this.initializationSegment, this.title, this.durationUs, i, j, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, arrayList);
        }
    }

    public static final class Part extends SegmentBase {
        public final boolean isIndependent;
        public final boolean isPreload;

        public Part(String str, Segment segment, long j, int i, long j2, DrmInitData drmInitData, String str2, String str3, long j3, long j4, boolean z, boolean z2, boolean z3) {
            super(str, segment, j, i, j2, drmInitData, str2, str3, j3, j4, z);
            this.isIndependent = z2;
            this.isPreload = z3;
        }

        public Part copyWith(long j, int i) {
            return new Part(this.url, this.initializationSegment, this.durationUs, i, j, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, this.isIndependent, this.isPreload);
        }
    }

    public static class SegmentBase implements Comparable<Long> {
        public final long byteRangeLength;
        public final long byteRangeOffset;
        public final DrmInitData drmInitData;
        public final long durationUs;
        public final String encryptionIV;
        public final String fullSegmentEncryptionKeyUri;
        public final boolean hasGapTag;
        public final Segment initializationSegment;
        public final int relativeDiscontinuitySequence;
        public final long relativeStartTimeUs;
        public final String url;

        private SegmentBase(String str, Segment segment, long j, int i, long j2, DrmInitData drmInitData, String str2, String str3, long j3, long j4, boolean z) {
            this.url = str;
            this.initializationSegment = segment;
            this.durationUs = j;
            this.relativeDiscontinuitySequence = i;
            this.relativeStartTimeUs = j2;
            this.drmInitData = drmInitData;
            this.fullSegmentEncryptionKeyUri = str2;
            this.encryptionIV = str3;
            this.byteRangeOffset = j3;
            this.byteRangeLength = j4;
            this.hasGapTag = z;
        }

        @Override // java.lang.Comparable
        public int compareTo(Long l) {
            if (this.relativeStartTimeUs > l.longValue()) {
                return 1;
            }
            return this.relativeStartTimeUs < l.longValue() ? -1 : 0;
        }
    }

    public static final class RenditionReport {
        public final long lastMediaSequence;
        public final int lastPartIndex;
        public final Uri playlistUri;

        public RenditionReport(Uri uri, long j, int i) {
            this.playlistUri = uri;
            this.lastMediaSequence = j;
            this.lastPartIndex = i;
        }
    }

    public static final class Interstitial {
        public final Uri assetListUri;
        public final Uri assetUri;
        public final ImmutableList<ClientDefinedAttribute> clientDefinedAttributes;
        public final boolean contentMayVary;
        public final List<String> cue;
        public final long durationUs;
        public final long endDateUnixUs;
        public final boolean endOnNext;
        public final String id;
        public final long plannedDurationUs;
        public final long playoutLimitUs;
        public final ImmutableList<String> restrictions;
        public final long resumeOffsetUs;
        public final long skipControlDurationUs;
        public final String skipControlLabelId;
        public final long skipControlOffsetUs;
        public final ImmutableList<String> snapTypes;
        public final long startDateUnixUs;
        public final String timelineOccupies;
        public final String timelineStyle;

        public Interstitial(String str, Uri uri, Uri uri2, long j, long j2, long j3, long j4, List<String> list, boolean z, long j5, long j6, List<String> list2, List<String> list3, List<ClientDefinedAttribute> list4, boolean z2, String str2, String str3, long j7, long j8, String str4) {
            Preconditions.checkArgument((uri == null || uri2 == null) && !(uri == null && uri2 == null));
            this.id = str;
            this.assetUri = uri;
            this.assetListUri = uri2;
            this.startDateUnixUs = j;
            this.endDateUnixUs = j2;
            this.durationUs = j3;
            this.plannedDurationUs = j4;
            this.cue = list;
            this.endOnNext = z;
            this.resumeOffsetUs = j5;
            this.playoutLimitUs = j6;
            this.snapTypes = ImmutableList.copyOf((Collection) list2);
            this.restrictions = ImmutableList.copyOf((Collection) list3);
            this.clientDefinedAttributes = ImmutableList.sortedCopyOf(new Comparator() { // from class: androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((HlsMediaPlaylist.ClientDefinedAttribute) obj).name.compareTo(((HlsMediaPlaylist.ClientDefinedAttribute) obj2).name);
                }
            }, list4);
            this.contentMayVary = z2;
            this.timelineOccupies = str2;
            this.timelineStyle = str3;
            this.skipControlOffsetUs = j7;
            this.skipControlDurationUs = j8;
            this.skipControlLabelId = str4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interstitial)) {
                return false;
            }
            Interstitial interstitial = (Interstitial) obj;
            return this.startDateUnixUs == interstitial.startDateUnixUs && this.endDateUnixUs == interstitial.endDateUnixUs && this.durationUs == interstitial.durationUs && this.plannedDurationUs == interstitial.plannedDurationUs && this.endOnNext == interstitial.endOnNext && this.resumeOffsetUs == interstitial.resumeOffsetUs && this.playoutLimitUs == interstitial.playoutLimitUs && this.contentMayVary == interstitial.contentMayVary && this.skipControlOffsetUs == interstitial.skipControlOffsetUs && this.skipControlDurationUs == interstitial.skipControlDurationUs && Objects.equals(this.id, interstitial.id) && Objects.equals(this.assetUri, interstitial.assetUri) && Objects.equals(this.assetListUri, interstitial.assetListUri) && Objects.equals(this.cue, interstitial.cue) && Objects.equals(this.snapTypes, interstitial.snapTypes) && Objects.equals(this.restrictions, interstitial.restrictions) && Objects.equals(this.clientDefinedAttributes, interstitial.clientDefinedAttributes) && Objects.equals(this.timelineOccupies, interstitial.timelineOccupies) && Objects.equals(this.timelineStyle, interstitial.timelineStyle) && Objects.equals(this.skipControlLabelId, interstitial.skipControlLabelId);
        }

        public int hashCode() {
            return Objects.hash(this.id, this.assetUri, this.assetListUri, Long.valueOf(this.startDateUnixUs), Long.valueOf(this.endDateUnixUs), Long.valueOf(this.durationUs), Long.valueOf(this.plannedDurationUs), this.cue, Boolean.valueOf(this.endOnNext), Long.valueOf(this.resumeOffsetUs), Long.valueOf(this.playoutLimitUs), this.snapTypes, this.restrictions, this.clientDefinedAttributes, Boolean.valueOf(this.contentMayVary), this.timelineOccupies, this.timelineStyle, Long.valueOf(this.skipControlOffsetUs), Long.valueOf(this.skipControlDurationUs), this.skipControlLabelId);
        }

        public static final class Builder {
            private Uri assetListUri;
            private Uri assetUri;
            private Boolean contentMayVary;
            private boolean endOnNext;
            private final String id;
            private String skipControlLabelId;
            private String timelineOccupies;
            private String timelineStyle;
            private final Map<String, ClientDefinedAttribute> clientDefinedAttributes = new HashMap();
            private long startDateUnixUs = -9223372036854775807L;
            private long endDateUnixUs = -9223372036854775807L;
            private long durationUs = -9223372036854775807L;
            private long plannedDurationUs = -9223372036854775807L;
            private List<String> cue = new ArrayList();
            private long resumeOffsetUs = -9223372036854775807L;
            private long playoutLimitUs = -9223372036854775807L;
            private List<String> snapTypes = new ArrayList();
            private List<String> restrictions = new ArrayList();
            private long skipControlOffsetUs = -9223372036854775807L;
            private long skipControlDurationUs = -9223372036854775807L;

            public Builder(String str) {
                this.id = str;
            }

            public Builder setAssetUri(Uri uri) {
                if (uri == null) {
                    return this;
                }
                Uri uri2 = this.assetUri;
                if (uri2 != null) {
                    Preconditions.checkArgument(uri2.equals(uri), "Can't change assetUri from %s to %s", this.assetUri, uri);
                }
                this.assetUri = uri;
                return this;
            }

            public Builder setAssetListUri(Uri uri) {
                if (uri == null) {
                    return this;
                }
                Uri uri2 = this.assetListUri;
                if (uri2 != null) {
                    Preconditions.checkArgument(uri2.equals(uri), "Can't change assetListUri from %s to %s", this.assetListUri, uri);
                }
                this.assetListUri = uri;
                return this;
            }

            public Builder setStartDateUnixUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.startDateUnixUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change startDateUnixUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.startDateUnixUs = j2;
                return this;
            }

            public Builder setEndDateUnixUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.endDateUnixUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change endDateUnixUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.endDateUnixUs = j2;
                return this;
            }

            public Builder setDurationUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.durationUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change durationUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.durationUs = j2;
                return this;
            }

            public Builder setPlannedDurationUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.plannedDurationUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change plannedDurationUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.plannedDurationUs = j2;
                return this;
            }

            public Builder setCue(List<String> list) {
                if (list.isEmpty()) {
                    return this;
                }
                if (!this.cue.isEmpty()) {
                    Preconditions.checkArgument(this.cue.equals(list), "Can't change cue from " + Quirks$$ExternalSyntheticBackport0.m82m(", ", this.cue) + " to " + Quirks$$ExternalSyntheticBackport0.m82m(", ", list));
                }
                this.cue = list;
                return this;
            }

            public Builder setEndOnNext(boolean z) {
                if (!z) {
                    return this;
                }
                this.endOnNext = true;
                return this;
            }

            public Builder setResumeOffsetUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.resumeOffsetUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change resumeOffsetUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.resumeOffsetUs = j2;
                return this;
            }

            public Builder setPlayoutLimitUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.playoutLimitUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change playoutLimitUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.playoutLimitUs = j2;
                return this;
            }

            public Builder setSnapTypes(List<String> list) {
                if (list.isEmpty()) {
                    return this;
                }
                if (!this.snapTypes.isEmpty()) {
                    Preconditions.checkArgument(this.snapTypes.equals(list), "Can't change snapTypes from " + Quirks$$ExternalSyntheticBackport0.m82m(", ", this.snapTypes) + " to " + Quirks$$ExternalSyntheticBackport0.m82m(", ", list));
                }
                this.snapTypes = list;
                return this;
            }

            public Builder setRestrictions(List<String> list) {
                if (list.isEmpty()) {
                    return this;
                }
                if (!this.restrictions.isEmpty()) {
                    Preconditions.checkArgument(this.restrictions.equals(list), "Can't change restrictions from " + Quirks$$ExternalSyntheticBackport0.m82m(", ", this.restrictions) + " to " + Quirks$$ExternalSyntheticBackport0.m82m(", ", list));
                }
                this.restrictions = list;
                return this;
            }

            public Builder setClientDefinedAttributes(List<ClientDefinedAttribute> list) {
                if (!list.isEmpty()) {
                    for (int i = 0; i < list.size(); i++) {
                        ClientDefinedAttribute clientDefinedAttribute = list.get(i);
                        String str = clientDefinedAttribute.name;
                        ClientDefinedAttribute clientDefinedAttribute2 = this.clientDefinedAttributes.get(str);
                        if (clientDefinedAttribute2 != null) {
                            Preconditions.checkArgument(clientDefinedAttribute2.equals(clientDefinedAttribute), "Can't change %s from %s %s to %s %s", str, clientDefinedAttribute2.textValue, Double.valueOf(clientDefinedAttribute2.doubleValue), clientDefinedAttribute.textValue, Double.valueOf(clientDefinedAttribute.doubleValue));
                        }
                        this.clientDefinedAttributes.put(str, clientDefinedAttribute);
                    }
                }
                return this;
            }

            public Builder setContentMayVary(Boolean bool) {
                if (bool == null) {
                    return this;
                }
                Boolean bool2 = this.contentMayVary;
                if (bool2 != null) {
                    Preconditions.checkArgument(bool2.equals(bool), "Can't change contentMayVary from %s to %s", this.contentMayVary, bool);
                }
                this.contentMayVary = bool;
                return this;
            }

            public Builder setTimelineOccupies(String str) {
                if (str == null) {
                    return this;
                }
                String str2 = this.timelineOccupies;
                if (str2 != null) {
                    Preconditions.checkArgument(str2.equals(str), "Can't change timelineOccupies from %s to %s", this.timelineOccupies, str);
                }
                this.timelineOccupies = str;
                return this;
            }

            public Builder setTimelineStyle(String str) {
                if (str == null) {
                    return this;
                }
                String str2 = this.timelineStyle;
                if (str2 != null) {
                    Preconditions.checkArgument(str2.equals(str), "Can't change timelineStyle from %s to %s", this.timelineStyle, str);
                }
                this.timelineStyle = str;
                return this;
            }

            public Builder setSkipControlOffsetUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.skipControlOffsetUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change skipControlOffsetUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.skipControlOffsetUs = j2;
                return this;
            }

            public Builder setSkipControlDurationUs(long j) {
                long j2;
                if (j == -9223372036854775807L) {
                    return this;
                }
                long j3 = this.skipControlDurationUs;
                if (j3 != -9223372036854775807L) {
                    j2 = j;
                    Preconditions.checkArgument(j3 == j, "Can't change skipControlDurationUs from %s to %s", j3, j2);
                } else {
                    j2 = j;
                }
                this.skipControlDurationUs = j2;
                return this;
            }

            public Builder setSkipControlLabelId(String str) {
                if (str == null) {
                    return this;
                }
                String str2 = this.skipControlLabelId;
                if (str2 != null) {
                    Preconditions.checkArgument(str2.equals(str), "Can't change skipControlLabelId from %s to %s", this.skipControlLabelId, str);
                }
                this.skipControlLabelId = str;
                return this;
            }

            public Interstitial build() {
                Uri uri = this.assetListUri;
                if ((uri != null || this.assetUri == null) && (uri == null || this.assetUri != null)) {
                    return null;
                }
                long j = this.startDateUnixUs;
                if (j == -9223372036854775807L) {
                    return null;
                }
                String str = this.id;
                Uri uri2 = this.assetUri;
                long j2 = this.endDateUnixUs;
                long j3 = this.durationUs;
                long j4 = this.plannedDurationUs;
                List<String> list = this.cue;
                boolean z = this.endOnNext;
                long j5 = this.resumeOffsetUs;
                long j6 = this.playoutLimitUs;
                List<String> list2 = this.snapTypes;
                List<String> list3 = this.restrictions;
                ArrayList arrayList = new ArrayList(this.clientDefinedAttributes.values());
                Boolean bool = this.contentMayVary;
                boolean z2 = bool == null || bool.booleanValue();
                String str2 = this.timelineOccupies;
                if (str2 == null) {
                    str2 = "POINT";
                }
                String str3 = str2;
                String str4 = this.timelineStyle;
                if (str4 == null) {
                    str4 = "HIGHLIGHT";
                }
                return new Interstitial(str, uri2, uri, j, j2, j3, j4, list, z, j5, j6, list2, list3, arrayList, z2, str3, str4, this.skipControlOffsetUs, this.skipControlDurationUs, this.skipControlLabelId);
            }
        }
    }

    public static class ClientDefinedAttribute {
        private final double doubleValue;
        public final String name;
        private final String textValue;
        public final int type;

        public ClientDefinedAttribute(String str, double d) {
            this.name = str;
            this.type = 2;
            this.doubleValue = d;
            this.textValue = null;
        }

        public ClientDefinedAttribute(String str, String str2, int i) {
            boolean z = true;
            if (i == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
                z = false;
            }
            Preconditions.checkState(z);
            this.name = str;
            this.type = i;
            this.textValue = str2;
            this.doubleValue = 0.0d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClientDefinedAttribute)) {
                return false;
            }
            ClientDefinedAttribute clientDefinedAttribute = (ClientDefinedAttribute) obj;
            return this.type == clientDefinedAttribute.type && Double.compare(this.doubleValue, clientDefinedAttribute.doubleValue) == 0 && Objects.equals(this.name, clientDefinedAttribute.name) && Objects.equals(this.textValue, clientDefinedAttribute.textValue);
        }

        public int hashCode() {
            return Objects.hash(this.name, Integer.valueOf(this.type), Double.valueOf(this.doubleValue), this.textValue);
        }
    }

    public HlsMediaPlaylist(int i, String str, List<String> list, long j, boolean z, long j2, boolean z2, int i2, long j3, int i3, long j4, long j5, boolean z3, boolean z4, boolean z5, DrmInitData drmInitData, List<Segment> list2, List<Part> list3, ServerControl serverControl, Map<Uri, RenditionReport> map, List<Interstitial> list4, Segment segment) {
        super(str, list, z3);
        this.playlistType = i;
        this.startTimeUs = j2;
        this.preciseStart = z;
        this.hasDiscontinuitySequence = z2;
        this.discontinuitySequence = i2;
        this.mediaSequence = j3;
        this.version = i3;
        this.targetDurationUs = j4;
        this.partTargetDurationUs = j5;
        this.hasEndTag = z4;
        this.hasProgramDateTime = z5;
        this.protectionSchemes = drmInitData;
        this.segments = ImmutableList.copyOf((Collection) list2);
        this.trailingParts = ImmutableList.copyOf((Collection) list3);
        this.renditionReports = ImmutableMap.copyOf((Map) map);
        this.interstitials = ImmutableList.copyOf((Collection) list4);
        this.lastSeenInitSegment = segment;
        if (!list3.isEmpty()) {
            Part part = (Part) Iterables.getLast(list3);
            this.durationUs = part.relativeStartTimeUs + part.durationUs;
        } else if (!list2.isEmpty()) {
            Segment segment2 = (Segment) Iterables.getLast(list2);
            this.durationUs = segment2.relativeStartTimeUs + segment2.durationUs;
        } else {
            this.durationUs = 0L;
        }
        long jMax = -9223372036854775807L;
        if (j != -9223372036854775807L) {
            long j6 = this.durationUs;
            if (j >= 0) {
                jMax = Math.min(j6, j);
            } else {
                jMax = Math.max(0L, j6 + j);
            }
        }
        this.startOffsetUs = jMax;
        this.hasPositiveStartOffset = j >= 0;
        this.serverControl = serverControl;
    }

    public boolean isNewerThan(HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist != null) {
            long j = this.mediaSequence;
            long j2 = hlsMediaPlaylist.mediaSequence;
            if (j <= j2) {
                if (j < j2) {
                    return false;
                }
                int size = this.segments.size() - hlsMediaPlaylist.segments.size();
                if (size != 0) {
                    return size > 0;
                }
                int size2 = this.trailingParts.size();
                int size3 = hlsMediaPlaylist.trailingParts.size();
                if (size2 <= size3 && (size2 != size3 || !this.hasEndTag || hlsMediaPlaylist.hasEndTag)) {
                    return false;
                }
            }
        }
        return true;
    }

    public long getEndTimeUs() {
        return this.startTimeUs + this.durationUs;
    }

    public HlsMediaPlaylist copyWith(long j, int i) {
        return new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, j, true, i, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, this.hasEndTag, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports, this.interstitials, this.lastSeenInitSegment);
    }

    public HlsMediaPlaylist copyWithEndTag() {
        return this.hasEndTag ? this : new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, this.startTimeUs, this.hasDiscontinuitySequence, this.discontinuitySequence, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, true, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports, this.interstitials, this.lastSeenInitSegment);
    }
}
