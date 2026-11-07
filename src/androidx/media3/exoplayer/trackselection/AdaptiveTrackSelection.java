package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.Multimap;
import com.google.common.collect.MultimapBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    private final ImmutableList<AdaptationCheckpoint> adaptationCheckpoints;
    private final float bandwidthFraction;
    private final BandwidthMeter bandwidthMeter;
    private final float bufferedFractionToLiveEdgeForQualityIncrease;
    private final Clock clock;
    private MediaChunk lastBufferEvaluationMediaChunk;
    private long lastBufferEvaluationMs;
    private long latestBitrateEstimate;
    private final long maxDurationForQualityDecreaseUs;
    private final int maxHeightToDiscard;
    private final int maxWidthToDiscard;
    private final long minDurationForQualityIncreaseUs;
    private final long minDurationToRetainAfterDiscardUs;
    private float playbackSpeed;
    private int reason;
    private int selectedIndex;

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public Object getSelectionData() {
        return null;
    }

    public static class Factory implements ExoTrackSelection.Factory {
        private final float bandwidthFraction;
        private final float bufferedFractionToLiveEdgeForQualityIncrease;
        private final Clock clock;
        private final int maxDurationForQualityDecreaseMs;
        private final int maxHeightToDiscard;
        private final int maxWidthToDiscard;
        private final int minDurationForQualityIncreaseMs;
        private final int minDurationToRetainAfterDiscardMs;

        public Factory() {
            this(10000, 25000, 25000, 0.7f);
        }

        public Factory(int i, int i2, int i3, float f) {
            this(i, i2, i3, 1279, 719, f, 0.75f, Clock.DEFAULT);
        }

        public Factory(int i, int i2, int i3, int i4, int i5, float f, float f2, Clock clock) {
            this.minDurationForQualityIncreaseMs = i;
            this.maxDurationForQualityDecreaseMs = i2;
            this.minDurationToRetainAfterDiscardMs = i3;
            this.maxWidthToDiscard = i4;
            this.maxHeightToDiscard = i5;
            this.bandwidthFraction = f;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f2;
            this.clock = clock;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            Factory factory;
            BandwidthMeter bandwidthMeter2;
            ExoTrackSelection exoTrackSelectionCreateAdaptiveTrackSelection;
            ImmutableList adaptationCheckpoints = AdaptiveTrackSelection.getAdaptationCheckpoints(definitionArr);
            ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
            int i = 0;
            while (i < definitionArr.length) {
                ExoTrackSelection.Definition definition = definitionArr[i];
                if (definition != null) {
                    int[] iArr = definition.tracks;
                    if (iArr.length == 0) {
                        factory = this;
                        bandwidthMeter2 = bandwidthMeter;
                    } else {
                        int length = iArr.length;
                        TrackGroup trackGroup = definition.group;
                        if (length == 1) {
                            factory = this;
                            exoTrackSelectionCreateAdaptiveTrackSelection = new FixedTrackSelection(trackGroup, iArr[0], definition.type);
                            bandwidthMeter2 = bandwidthMeter;
                        } else {
                            factory = this;
                            bandwidthMeter2 = bandwidthMeter;
                            exoTrackSelectionCreateAdaptiveTrackSelection = factory.createAdaptiveTrackSelection(trackGroup, iArr, definition.type, bandwidthMeter2, (ImmutableList) adaptationCheckpoints.get(i));
                        }
                        exoTrackSelectionArr[i] = exoTrackSelectionCreateAdaptiveTrackSelection;
                    }
                }
                i++;
                this = factory;
                bandwidthMeter = bandwidthMeter2;
            }
            return exoTrackSelectionArr;
        }

        public AdaptiveTrackSelection createAdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i, BandwidthMeter bandwidthMeter, ImmutableList<AdaptationCheckpoint> immutableList) {
            return new AdaptiveTrackSelection(trackGroup, iArr, i, bandwidthMeter, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.maxWidthToDiscard, this.maxHeightToDiscard, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, immutableList, this.clock);
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i, BandwidthMeter bandwidthMeter, long j, long j2, long j3, int i2, int i3, float f, float f2, List<AdaptationCheckpoint> list, Clock clock) {
        long j4;
        super(trackGroup, iArr, i);
        if (j3 < j) {
            Log.m163w("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j4 = j;
        } else {
            j4 = j3;
        }
        this.bandwidthMeter = bandwidthMeter;
        this.minDurationForQualityIncreaseUs = j * 1000;
        this.maxDurationForQualityDecreaseUs = j2 * 1000;
        this.minDurationToRetainAfterDiscardUs = j4 * 1000;
        this.maxWidthToDiscard = i2;
        this.maxHeightToDiscard = i3;
        this.bandwidthFraction = f;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f2;
        this.adaptationCheckpoints = ImmutableList.copyOf((Collection) list);
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 0;
        this.lastBufferEvaluationMs = -9223372036854775807L;
        this.latestBitrateEstimate = -2147483647L;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void enable() {
        this.lastBufferEvaluationMs = -9223372036854775807L;
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void disable() {
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
        this.playbackSpeed = f;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long nextChunkDurationUs = getNextChunkDurationUs(mediaChunkIteratorArr, list);
        int i = this.reason;
        if (i == 0) {
            this.reason = 1;
            this.selectedIndex = determineIdealSelectedIndex(0, jElapsedRealtime, nextChunkDurationUs);
            return;
        }
        int i2 = this.selectedIndex;
        int iIndexOf = list.isEmpty() ? -1 : indexOf(((MediaChunk) Iterables.getLast(list)).trackFormat);
        if (iIndexOf != -1) {
            i = ((MediaChunk) Iterables.getLast(list)).trackSelectionReason;
            i2 = iIndexOf;
        }
        int iDetermineIdealSelectedIndex = determineIdealSelectedIndex(1, jElapsedRealtime, nextChunkDurationUs);
        if (iDetermineIdealSelectedIndex != i2 && !isTrackExcluded(i2, jElapsedRealtime)) {
            Format format = getFormat(i2);
            Format format2 = getFormat(iDetermineIdealSelectedIndex);
            long jMinDurationForQualityIncreaseUs = minDurationForQualityIncreaseUs(j3, nextChunkDurationUs);
            int i3 = format2.bitrate;
            int i4 = format.bitrate;
            if ((i3 > i4 && j2 < jMinDurationForQualityIncreaseUs) || (i3 < i4 && j2 >= this.maxDurationForQualityDecreaseUs)) {
                iDetermineIdealSelectedIndex = i2;
            }
        }
        if (iDetermineIdealSelectedIndex != i2) {
            i = 3;
        }
        this.reason = i;
        this.selectedIndex = iDetermineIdealSelectedIndex;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
        int i;
        int i2;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        if (!shouldEvaluateQueueSize(jElapsedRealtime, list)) {
            return list.size();
        }
        this.lastBufferEvaluationMs = jElapsedRealtime;
        this.lastBufferEvaluationMediaChunk = list.isEmpty() ? null : (MediaChunk) Iterables.getLast(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(list.get(size - 1).startTimeUs - j, this.playbackSpeed);
        long minDurationToRetainAfterDiscardUs = getMinDurationToRetainAfterDiscardUs();
        if (playoutDurationForMediaDuration >= minDurationToRetainAfterDiscardUs) {
            Format format = getFormat(determineIdealSelectedIndex(-1, jElapsedRealtime, getLastChunkDurationUs(list)));
            for (int i3 = 0; i3 < size; i3++) {
                MediaChunk mediaChunk = list.get(i3);
                Format format2 = mediaChunk.trackFormat;
                if (Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j, this.playbackSpeed) >= minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i = format2.height) != -1 && i <= this.maxHeightToDiscard && (i2 = format2.width) != -1 && i2 <= this.maxWidthToDiscard && i < format.height) {
                    return i3;
                }
            }
        }
        return size;
    }

    public boolean canSelectFormat(Format format, int i, long j) {
        return format.cached || ((long) i) <= j;
    }

    public boolean shouldEvaluateQueueSize(long j, List<? extends MediaChunk> list) {
        long j2 = this.lastBufferEvaluationMs;
        if (j2 == -9223372036854775807L || j - j2 >= 1000) {
            return true;
        }
        return (list.isEmpty() || ((MediaChunk) Iterables.getLast(list)).equals(this.lastBufferEvaluationMediaChunk)) ? false : true;
    }

    public long getMinDurationToRetainAfterDiscardUs() {
        return this.minDurationToRetainAfterDiscardUs;
    }

    private int determineIdealSelectedIndex(int i, long j, long j2) {
        long allocatedBandwidth = getAllocatedBandwidth(j2);
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        int iIntValue = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            if (j == Long.MIN_VALUE || !isTrackExcluded(i2, j)) {
                Format format = getFormat(i2);
                int iMax = Math.max(format.width, format.height);
                if (!map.containsKey(Integer.valueOf(iMax))) {
                    map.put(Integer.valueOf(iMax), Integer.valueOf(i2));
                    arrayList.add(Integer.valueOf(i2));
                } else {
                    Integer num = (Integer) map.get(Integer.valueOf(iMax));
                    Format format2 = getFormat(num.intValue());
                    boolean z = format2.cached;
                    if ((!z || format.cached) && ((!z && format.cached) || format.bitrate < format2.bitrate)) {
                        map.put(Integer.valueOf(iMax), Integer.valueOf(i2));
                        arrayList.remove(num);
                        arrayList.add(Integer.valueOf(i2));
                    }
                }
            }
        }
        if (i == 0) {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                int iIntValue2 = ((Integer) obj).intValue();
                if (getFormat(iIntValue2).cached) {
                    return iIntValue2;
                }
            }
        }
        int size2 = arrayList.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList.get(i4);
            i4++;
            iIntValue = ((Integer) obj2).intValue();
            Format format3 = getFormat(iIntValue);
            if (canSelectFormat(format3, format3.bitrate, allocatedBandwidth)) {
                break;
            }
        }
        return iIntValue;
    }

    private long minDurationForQualityIncreaseUs(long j, long j2) {
        if (j == -9223372036854775807L) {
            return this.minDurationForQualityIncreaseUs;
        }
        if (j2 != -9223372036854775807L) {
            j -= j2;
        }
        return Math.min((long) (j * this.bufferedFractionToLiveEdgeForQualityIncrease), this.minDurationForQualityIncreaseUs);
    }

    private long getNextChunkDurationUs(MediaChunkIterator[] mediaChunkIteratorArr, List<? extends MediaChunk> list) {
        int i = this.selectedIndex;
        if (i < mediaChunkIteratorArr.length && mediaChunkIteratorArr[i].next()) {
            MediaChunkIterator mediaChunkIterator = mediaChunkIteratorArr[this.selectedIndex];
            return mediaChunkIterator.getChunkEndTimeUs() - mediaChunkIterator.getChunkStartTimeUs();
        }
        for (MediaChunkIterator mediaChunkIterator2 : mediaChunkIteratorArr) {
            if (mediaChunkIterator2.next()) {
                return mediaChunkIterator2.getChunkEndTimeUs() - mediaChunkIterator2.getChunkStartTimeUs();
            }
        }
        return getLastChunkDurationUs(list);
    }

    private long getLastChunkDurationUs(List<? extends MediaChunk> list) {
        if (list.isEmpty()) {
            return -9223372036854775807L;
        }
        MediaChunk mediaChunk = (MediaChunk) Iterables.getLast(list);
        long j = mediaChunk.startTimeUs;
        if (j != -9223372036854775807L) {
            long j2 = mediaChunk.endTimeUs;
            if (j2 != -9223372036854775807L) {
                return j2 - j;
            }
        }
        return -9223372036854775807L;
    }

    private long getAllocatedBandwidth(long j) {
        long totalAllocatableBandwidth = getTotalAllocatableBandwidth(j);
        if (this.adaptationCheckpoints.isEmpty()) {
            return totalAllocatableBandwidth;
        }
        int i = 1;
        while (i < this.adaptationCheckpoints.size() - 1 && this.adaptationCheckpoints.get(i).totalBandwidth < totalAllocatableBandwidth) {
            i++;
        }
        AdaptationCheckpoint adaptationCheckpoint = this.adaptationCheckpoints.get(i - 1);
        AdaptationCheckpoint adaptationCheckpoint2 = this.adaptationCheckpoints.get(i);
        long j2 = adaptationCheckpoint.totalBandwidth;
        float f = (totalAllocatableBandwidth - j2) / (adaptationCheckpoint2.totalBandwidth - j2);
        return adaptationCheckpoint.allocatedBandwidth + ((long) (f * (adaptationCheckpoint2.allocatedBandwidth - r0)));
    }

    private long getTotalAllocatableBandwidth(long j) {
        long bitrateEstimate = this.bandwidthMeter.getBitrateEstimate();
        this.latestBitrateEstimate = bitrateEstimate;
        long j2 = (long) (bitrateEstimate * this.bandwidthFraction);
        long timeToFirstByteEstimateUs = this.bandwidthMeter.getTimeToFirstByteEstimateUs();
        if (timeToFirstByteEstimateUs == -9223372036854775807L || j == -9223372036854775807L) {
            return (long) (j2 / this.playbackSpeed);
        }
        float f = j;
        return (long) ((j2 * Math.max((f / this.playbackSpeed) - timeToFirstByteEstimateUs, 0.0f)) / f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<ImmutableList<AdaptationCheckpoint>> getAdaptationCheckpoints(ExoTrackSelection.Definition[] definitionArr) {
        ArrayList arrayList = new ArrayList();
        for (ExoTrackSelection.Definition definition : definitionArr) {
            if (definition != null && definition.tracks.length > 1) {
                ImmutableList.Builder builder = ImmutableList.builder();
                builder.add(new AdaptationCheckpoint(0L, 0L));
                arrayList.add(builder);
            } else {
                arrayList.add(null);
            }
        }
        long[][] sortedTrackBitrates = getSortedTrackBitrates(definitionArr);
        int[] iArr = new int[sortedTrackBitrates.length];
        long[] jArr = new long[sortedTrackBitrates.length];
        for (int i = 0; i < sortedTrackBitrates.length; i++) {
            long[] jArr2 = sortedTrackBitrates[i];
            jArr[i] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        addCheckpoint(arrayList, jArr);
        ImmutableList<Integer> switchOrder = getSwitchOrder(sortedTrackBitrates);
        for (int i2 = 0; i2 < switchOrder.size(); i2++) {
            int iIntValue = switchOrder.get(i2).intValue();
            int i3 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i3;
            jArr[iIntValue] = sortedTrackBitrates[iIntValue][i3];
            addCheckpoint(arrayList, jArr);
        }
        for (int i4 = 0; i4 < definitionArr.length; i4++) {
            if (arrayList.get(i4) != null) {
                jArr[i4] = jArr[i4] * 2;
            }
        }
        addCheckpoint(arrayList, jArr);
        ImmutableList.Builder builder2 = ImmutableList.builder();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            ImmutableList.Builder builder3 = (ImmutableList.Builder) arrayList.get(i5);
            builder2.add(builder3 == null ? ImmutableList.of() : builder3.build());
        }
        return builder2.build();
    }

    private static long[][] getSortedTrackBitrates(ExoTrackSelection.Definition[] definitionArr) {
        long[][] jArr = new long[definitionArr.length][];
        for (int i = 0; i < definitionArr.length; i++) {
            ExoTrackSelection.Definition definition = definitionArr[i];
            if (definition == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[definition.tracks.length];
                int i2 = 0;
                while (true) {
                    int[] iArr = definition.tracks;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    long j = definition.group.getFormat(iArr[i2]).bitrate;
                    long[] jArr2 = jArr[i];
                    if (j == -1) {
                        j = 0;
                    }
                    jArr2[i2] = j;
                    i2++;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    private static ImmutableList<Integer> getSwitchOrder(long[][] jArr) {
        Multimap multimapBuild = MultimapBuilder.treeKeys().arrayListValues().build();
        for (int i = 0; i < jArr.length; i++) {
            long[] jArr2 = jArr[i];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    long[] jArr3 = jArr[i];
                    double dLog = 0.0d;
                    if (i2 >= jArr3.length) {
                        break;
                    }
                    long j = jArr3[i2];
                    if (j != -1) {
                        dLog = Math.log(j);
                    }
                    dArr[i2] = dLog;
                    i2++;
                }
                int i3 = length - 1;
                double d = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d2 = dArr[i4];
                    i4++;
                    multimapBuild.put(Double.valueOf(d == 0.0d ? 1.0d : (((d2 + dArr[i4]) * 0.5d) - dArr[0]) / d), Integer.valueOf(i));
                }
            }
        }
        return ImmutableList.copyOf(multimapBuild.values());
    }

    private static void addCheckpoint(List<ImmutableList.Builder<AdaptationCheckpoint>> list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            ImmutableList.Builder<AdaptationCheckpoint> builder = list.get(i);
            if (builder != null) {
                builder.add(new AdaptationCheckpoint(j, jArr[i]));
            }
        }
    }

    public static final class AdaptationCheckpoint {
        public final long allocatedBandwidth;
        public final long totalBandwidth;

        public AdaptationCheckpoint(long j, long j2) {
            this.totalBandwidth = j;
            this.allocatedBandwidth = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdaptationCheckpoint)) {
                return false;
            }
            AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) obj;
            return this.totalBandwidth == adaptationCheckpoint.totalBandwidth && this.allocatedBandwidth == adaptationCheckpoint.allocatedBandwidth;
        }

        public int hashCode() {
            return (((int) this.totalBandwidth) * 31) + ((int) this.allocatedBandwidth);
        }
    }
}
