package androidx.media3.exoplayer.trackselection;

import android.os.SystemClock;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseTrackSelection implements ExoTrackSelection {
    private final long[] excludeUntilTimes;
    private final Format[] formats;
    protected final TrackGroup group;
    private int hashCode;
    protected final int length;
    private boolean playWhenReady;
    protected final int[] tracks;
    private final int type;

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void disable() {
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void enable() {
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
    }

    public BaseTrackSelection(TrackGroup trackGroup, int... iArr) {
        this(trackGroup, iArr, 0);
    }

    public BaseTrackSelection(TrackGroup trackGroup, int[] iArr, int i) {
        Format[] formatArr;
        Assertions.checkState(iArr.length > 0);
        this.type = i;
        this.group = (TrackGroup) Assertions.checkNotNull(trackGroup);
        int length = iArr.length;
        this.length = length;
        this.formats = new Format[length];
        int i2 = 0;
        while (true) {
            int length2 = iArr.length;
            formatArr = this.formats;
            if (i2 >= length2) {
                break;
            }
            formatArr[i2] = trackGroup.getFormat(iArr[i2]);
            i2++;
        }
        Arrays.sort(formatArr, new Comparator() { // from class: androidx.media3.exoplayer.trackselection.BaseTrackSelection$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BaseTrackSelection.$r8$lambda$_Nx2IO7J9FRVwHR6yPRlPDHVDT4((Format) obj, (Format) obj2);
            }
        });
        this.tracks = new int[this.length];
        int i3 = 0;
        while (true) {
            int i4 = this.length;
            if (i3 < i4) {
                this.tracks[i3] = trackGroup.indexOf(this.formats[i3]);
                i3++;
            } else {
                this.excludeUntilTimes = new long[i4];
                this.playWhenReady = false;
                return;
            }
        }
    }

    public static /* synthetic */ int $r8$lambda$_Nx2IO7J9FRVwHR6yPRlPDHVDT4(Format format, Format format2) {
        return format2.bitrate - format.bitrate;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final TrackGroup getTrackGroup() {
        return this.group;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int length() {
        return this.tracks.length;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final Format getFormat(int i) {
        return this.formats[i];
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int getIndexInTrackGroup(int i) {
        return this.tracks[i];
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int indexOf(Format format) {
        for (int i = 0; i < this.length; i++) {
            if (this.formats[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelection
    public final int indexOf(int i) {
        for (int i2 = 0; i2 < this.length; i2++) {
            if (this.tracks[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final Format getSelectedFormat() {
        return this.formats[getSelectedIndex()];
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int getSelectedIndexInTrackGroup() {
        return this.tracks[getSelectedIndex()];
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
        return list.size();
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public boolean excludeTrack(int i, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zIsTrackExcluded = isTrackExcluded(i, jElapsedRealtime);
        int i2 = 0;
        while (i2 < this.length && !zIsTrackExcluded) {
            zIsTrackExcluded = (i2 == i || isTrackExcluded(i2, jElapsedRealtime)) ? false : true;
            i2++;
        }
        if (!zIsTrackExcluded) {
            return false;
        }
        long[] jArr = this.excludeUntilTimes;
        jArr[i] = Math.max(jArr[i], Util.addWithOverflowDefault(jElapsedRealtime, j, LongCompanionObject.MAX_VALUE));
        return true;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public boolean isTrackExcluded(int i, long j) {
        return this.excludeUntilTimes[i] > j;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlayWhenReadyChanged(boolean z) {
        this.playWhenReady = z;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (System.identityHashCode(this.group) * 31) + Arrays.hashCode(this.tracks);
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
            if (this.group.equals(baseTrackSelection.group) && Arrays.equals(this.tracks, baseTrackSelection.tracks)) {
                return true;
            }
        }
        return false;
    }
}
