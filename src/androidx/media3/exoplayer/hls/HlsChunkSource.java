package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.DataChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
class HlsChunkSource {
    private final DataSource encryptionDataSource;
    private final HlsExtractorFactory extractorFactory;
    private IOException fatalError;
    private boolean independentSegments;
    private boolean isPrimaryTimestampSource;
    private Uri lastPlaylistErrorUrl;
    private final DataSource mediaDataSource;
    private final List<Format> muxedCaptionFormats;
    private Uri nextChunkStuckOnPlaylistUrl;
    private final PlayerId playerId;
    private final Format[] playlistFormats;
    private final HlsPlaylistTracker playlistTracker;
    private final Uri[] playlistUrls;
    private final long timestampAdjusterInitializationTimeoutMs;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private ExoTrackSelection trackSelection;
    private long lastChunkRequestRealtimeMs = -9223372036854775807L;
    private final FullSegmentEncryptionKeyCache keyCache = new FullSegmentEncryptionKeyCache(4);
    private byte[] scratchSpace = Util.EMPTY_BYTE_ARRAY;
    private long liveEdgeInPeriodTimeUs = -9223372036854775807L;

    public static final class HlsChunkHolder {
        public Chunk chunk;
        public boolean endOfStream;
        public Uri playlistUrl;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlistUrl = null;
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, long j, List<Format> list, PlayerId playerId, CmcdConfiguration cmcdConfiguration) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.playlistUrls = uriArr;
        this.playlistFormats = formatArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.timestampAdjusterInitializationTimeoutMs = j;
        this.muxedCaptionFormats = list;
        this.playerId = playerId;
        DataSource dataSourceCreateDataSource = hlsDataSourceFactory.createDataSource(1);
        this.mediaDataSource = dataSourceCreateDataSource;
        if (transferListener != null) {
            dataSourceCreateDataSource.addTransferListener(transferListener);
        }
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new TrackGroup(formatArr);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < uriArr.length; i++) {
            if ((formatArr[i].roleFlags & 16384) == 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, Ints.toArray(arrayList));
    }

    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.lastPlaylistErrorUrl;
        if (uri == null || !uri.equals(this.nextChunkStuckOnPlaylistUrl)) {
            return;
        }
        this.playlistTracker.maybeThrowPlaylistRefreshError(this.lastPlaylistErrorUrl);
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public boolean hasIndependentSegments() {
        return this.independentSegments;
    }

    public void setTrackSelection(ExoTrackSelection exoTrackSelection) {
        deactivatePlaylistForSelectedTrack();
        this.trackSelection = exoTrackSelection;
    }

    public ExoTrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public void reset() {
        deactivatePlaylistForSelectedTrack();
        this.fatalError = null;
    }

    public void setIsPrimaryTimestampSource(boolean z) {
        this.isPrimaryTimestampSource = z;
    }

    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        int selectedIndex = this.trackSelection.getSelectedIndex();
        Uri[] uriArr = this.playlistUrls;
        HlsMediaPlaylist playlistSnapshot = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.playlistTracker.getPlaylistSnapshot(uriArr[this.trackSelection.getSelectedIndexInTrackGroup()], true);
        if (playlistSnapshot == null || playlistSnapshot.segments.isEmpty()) {
            return j;
        }
        long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        long j2 = j - initialStartTimeUs;
        int iBinarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) playlistSnapshot.segments, Long.valueOf(j2), true, true);
        long j3 = playlistSnapshot.segments.get(iBinarySearchFloor).relativeStartTimeUs;
        return seekParameters.resolveSeekPositionUs(j2, j3, (!playlistSnapshot.hasIndependentSegments || iBinarySearchFloor == playlistSnapshot.segments.size() - 1) ? j3 : playlistSnapshot.segments.get(iBinarySearchFloor + 1).relativeStartTimeUs) + initialStartTimeUs;
    }

    public int getChunkPublicationState(HlsMediaChunk hlsMediaChunk) {
        List<HlsMediaPlaylist.Part> list;
        if (hlsMediaChunk.partIndex == -1) {
            return 1;
        }
        HlsMediaPlaylist hlsMediaPlaylist = (HlsMediaPlaylist) Assertions.checkNotNull(this.playlistTracker.getPlaylistSnapshot(this.playlistUrls[this.trackGroup.indexOf(hlsMediaChunk.trackFormat)], false));
        int i = (int) (hlsMediaChunk.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i < 0) {
            return 1;
        }
        if (i < hlsMediaPlaylist.segments.size()) {
            list = hlsMediaPlaylist.segments.get(i).parts;
        } else {
            list = hlsMediaPlaylist.trailingParts;
        }
        if (hlsMediaChunk.partIndex >= list.size()) {
            return 2;
        }
        HlsMediaPlaylist.Part part = list.get(hlsMediaChunk.partIndex);
        if (part.isPreload) {
            return 0;
        }
        return Objects.equals(Uri.parse(UriUtil.resolve(hlsMediaPlaylist.baseUri, part.url)), hlsMediaChunk.dataSpec.uri) ? 1 : 2;
    }

    public long getPublishedPartDurationUs(HlsMediaChunk hlsMediaChunk) {
        List<HlsMediaPlaylist.Part> list;
        Assertions.checkState(hlsMediaChunk.partIndex != -1);
        HlsMediaPlaylist hlsMediaPlaylist = (HlsMediaPlaylist) Assertions.checkNotNull(this.playlistTracker.getPlaylistSnapshot(this.playlistUrls[this.trackGroup.indexOf(hlsMediaChunk.trackFormat)], false));
        int i = (int) (hlsMediaChunk.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i < 0) {
            return 0L;
        }
        if (i < hlsMediaPlaylist.segments.size()) {
            list = hlsMediaPlaylist.segments.get(i).parts;
        } else {
            list = hlsMediaPlaylist.trailingParts;
        }
        return list.get(hlsMediaChunk.partIndex).durationUs;
    }

    public void getNextChunk(LoadingInfo loadingInfo, long j, long j2, List<HlsMediaChunk> list, boolean z, HlsChunkHolder hlsChunkHolder) {
        int i;
        boolean z2;
        Uri uri;
        long j3;
        boolean z3;
        SegmentBaseHolder segmentBaseHolder;
        HlsMediaChunk hlsMediaChunk = list.isEmpty() ? null : (HlsMediaChunk) Iterables.getLast(list);
        int iIndexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        long j4 = loadingInfo.playbackPositionUs;
        long jMax = j - j4;
        long jResolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j4);
        if (hlsMediaChunk != null && !this.independentSegments) {
            long durationUs = hlsMediaChunk.getDurationUs();
            jMax = Math.max(0L, jMax - durationUs);
            if (jResolveTimeToLiveEdgeUs != -9223372036854775807L) {
                jResolveTimeToLiveEdgeUs = Math.max(0L, jResolveTimeToLiveEdgeUs - durationUs);
            }
        }
        this.trackSelection.updateSelectedTrack(j4, jMax, jResolveTimeToLiveEdgeUs, list, createMediaChunkIterators(hlsMediaChunk, j));
        int selectedIndexInTrackGroup = this.trackSelection.getSelectedIndexInTrackGroup();
        boolean z4 = iIndexOf != selectedIndexInTrackGroup;
        Uri uri2 = this.playlistUrls[selectedIndexInTrackGroup];
        if (!this.playlistTracker.isSnapshotValid(uri2)) {
            hlsChunkHolder.playlistUrl = uri2;
            this.nextChunkStuckOnPlaylistUrl = uri2;
            return;
        }
        HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri2, true);
        Assertions.checkNotNull(playlistSnapshot);
        this.independentSegments = playlistSnapshot.hasIndependentSegments;
        updateLiveEdgeTimeUs(playlistSnapshot);
        long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        Pair<Long, Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, z4, playlistSnapshot, initialStartTimeUs, j);
        long jLongValue = ((Long) nextMediaSequenceAndPartIndex.first).longValue();
        int iIntValue = ((Integer) nextMediaSequenceAndPartIndex.second).intValue();
        boolean z5 = z4;
        int i2 = iIndexOf;
        HlsMediaPlaylist hlsMediaPlaylist = playlistSnapshot;
        HlsMediaChunk hlsMediaChunk2 = hlsMediaChunk;
        long j5 = jLongValue;
        if (shouldForceKeepCurrentTrackSelection(z5, hlsMediaPlaylist, j5, iIntValue, hlsMediaChunk2, initialStartTimeUs, j2)) {
            Uri uri3 = this.playlistUrls[i2];
            HlsMediaPlaylist playlistSnapshot2 = this.playlistTracker.getPlaylistSnapshot(uri3, true);
            Assertions.checkNotNull(playlistSnapshot2);
            long initialStartTimeUs2 = playlistSnapshot2.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
            i = i2;
            z2 = false;
            Pair<Long, Integer> nextMediaSequenceAndPartIndex2 = getNextMediaSequenceAndPartIndex(hlsMediaChunk2, false, playlistSnapshot2, initialStartTimeUs2, j);
            long jLongValue2 = ((Long) nextMediaSequenceAndPartIndex2.first).longValue();
            iIntValue = ((Integer) nextMediaSequenceAndPartIndex2.second).intValue();
            hlsMediaPlaylist = playlistSnapshot2;
            uri = uri3;
            j5 = jLongValue2;
            j3 = initialStartTimeUs2;
            selectedIndexInTrackGroup = i;
        } else {
            i = i2;
            z2 = false;
            uri = uri2;
            j3 = initialStartTimeUs;
        }
        if (selectedIndexInTrackGroup != i && i != -1) {
            this.playlistTracker.deactivatePlaylistForPlayback(this.playlistUrls[i]);
        }
        if (j5 < hlsMediaPlaylist.mediaSequence) {
            this.fatalError = new BehindLiveWindowException();
            return;
        }
        SegmentBaseHolder nextSegmentHolder = getNextSegmentHolder(hlsMediaPlaylist, j5, iIntValue);
        if (nextSegmentHolder != null) {
            z3 = true;
            segmentBaseHolder = nextSegmentHolder;
        } else if (!hlsMediaPlaylist.hasEndTag) {
            hlsChunkHolder.playlistUrl = uri;
            this.nextChunkStuckOnPlaylistUrl = uri;
            return;
        } else if (z || hlsMediaPlaylist.segments.isEmpty()) {
            hlsChunkHolder.endOfStream = true;
            return;
        } else {
            segmentBaseHolder = new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) Iterables.getLast(hlsMediaPlaylist.segments), (hlsMediaPlaylist.mediaSequence + ((long) hlsMediaPlaylist.segments.size())) - 1, -1);
            z3 = true;
        }
        this.nextChunkStuckOnPlaylistUrl = null;
        this.lastChunkRequestRealtimeMs = SystemClock.elapsedRealtime();
        Uri fullEncryptionKeyUri = getFullEncryptionKeyUri(hlsMediaPlaylist, segmentBaseHolder.segmentBase.initializationSegment);
        Chunk chunkMaybeCreateEncryptionChunkFor = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri, selectedIndexInTrackGroup, z3, null);
        hlsChunkHolder.chunk = chunkMaybeCreateEncryptionChunkFor;
        if (chunkMaybeCreateEncryptionChunkFor != null) {
            return;
        }
        Uri fullEncryptionKeyUri2 = getFullEncryptionKeyUri(hlsMediaPlaylist, segmentBaseHolder.segmentBase);
        Chunk chunkMaybeCreateEncryptionChunkFor2 = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri2, selectedIndexInTrackGroup, z2, null);
        hlsChunkHolder.chunk = chunkMaybeCreateEncryptionChunkFor2;
        if (chunkMaybeCreateEncryptionChunkFor2 != null) {
            return;
        }
        boolean zIsIndependent = isIndependent(segmentBaseHolder, hlsMediaPlaylist);
        boolean zShouldSpliceIn = HlsMediaChunk.shouldSpliceIn(hlsMediaChunk2, j, uri, zIsIndependent, segmentBaseHolder, j3);
        Uri uri4 = uri;
        if (zShouldSpliceIn && segmentBaseHolder.isPreload) {
            return;
        }
        hlsChunkHolder.chunk = HlsMediaChunk.createInstance(this.extractorFactory, this.mediaDataSource, this.playlistFormats[selectedIndexInTrackGroup], j3, hlsMediaPlaylist, segmentBaseHolder, uri4, this.muxedCaptionFormats, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.isPrimaryTimestampSource, this.timestampAdjusterProvider, this.timestampAdjusterInitializationTimeoutMs, hlsMediaChunk2, this.keyCache.get(fullEncryptionKeyUri2), this.keyCache.get(fullEncryptionKeyUri), zShouldSpliceIn, zIsIndependent, this.playerId, null);
    }

    private static boolean isIndependent(SegmentBaseHolder segmentBaseHolder, HlsMediaPlaylist hlsMediaPlaylist) {
        HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        if (segmentBase instanceof HlsMediaPlaylist.Part) {
            if (((HlsMediaPlaylist.Part) segmentBase).isIndependent) {
                return true;
            }
            return segmentBaseHolder.partIndex == 0 && hlsMediaPlaylist.hasIndependentSegments;
        }
        return hlsMediaPlaylist.hasIndependentSegments;
    }

    private static SegmentBaseHolder getNextSegmentHolder(HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 == hlsMediaPlaylist.segments.size()) {
            if (i == -1) {
                i = 0;
            }
            if (i < hlsMediaPlaylist.trailingParts.size()) {
                return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(i), j, i);
            }
            return null;
        }
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
        if (i == -1) {
            return new SegmentBaseHolder(segment, j, -1);
        }
        if (i < segment.parts.size()) {
            return new SegmentBaseHolder(segment.parts.get(i), j, i);
        }
        int i3 = i2 + 1;
        if (i3 < hlsMediaPlaylist.segments.size()) {
            return new SegmentBaseHolder(hlsMediaPlaylist.segments.get(i3), j + 1, -1);
        }
        if (hlsMediaPlaylist.trailingParts.isEmpty()) {
            return null;
        }
        return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(0), j + 1, 0);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            this.keyCache.put(encryptionKeyChunk.dataSpec.uri, (byte[]) Assertions.checkNotNull(encryptionKeyChunk.getResult()));
        }
    }

    public boolean maybeExcludeTrack(Chunk chunk, long j) {
        ExoTrackSelection exoTrackSelection = this.trackSelection;
        return exoTrackSelection.excludeTrack(exoTrackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), j);
    }

    public boolean onPlaylistError(Uri uri, long j) {
        int iIndexOf;
        int i = 0;
        while (true) {
            Uri[] uriArr = this.playlistUrls;
            if (i >= uriArr.length) {
                i = -1;
                break;
            }
            if (uriArr[i].equals(uri)) {
                break;
            }
            i++;
        }
        if (i == -1 || (iIndexOf = this.trackSelection.indexOf(i)) == -1) {
            return true;
        }
        this.lastPlaylistErrorUrl = uri;
        return j != -9223372036854775807L && this.trackSelection.excludeTrack(iIndexOf, j) && this.playlistTracker.excludeMediaPlaylist(uri, j);
    }

    public MediaChunkIterator[] createMediaChunkIterators(HlsMediaChunk hlsMediaChunk, long j) {
        int iIndexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        for (int i = 0; i < length; i++) {
            int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(i);
            Uri uri = this.playlistUrls[indexInTrackGroup];
            if (!this.playlistTracker.isSnapshotValid(uri)) {
                mediaChunkIteratorArr[i] = MediaChunkIterator.EMPTY;
            } else {
                HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri, false);
                Assertions.checkNotNull(playlistSnapshot);
                long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
                Pair<Long, Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, indexInTrackGroup != iIndexOf, playlistSnapshot, initialStartTimeUs, j);
                mediaChunkIteratorArr[i] = new HlsMediaPlaylistSegmentIterator(playlistSnapshot.baseUri, initialStartTimeUs, getSegmentBaseList(playlistSnapshot, ((Long) nextMediaSequenceAndPartIndex.first).longValue(), ((Integer) nextMediaSequenceAndPartIndex.second).intValue()));
            }
        }
        return mediaChunkIteratorArr;
    }

    public int getPreferredQueueSize(long j, List<? extends MediaChunk> list) {
        if (this.fatalError != null || this.trackSelection.length() < 2) {
            return list.size();
        }
        return this.trackSelection.evaluateQueueSize(j, list);
    }

    public boolean shouldCancelLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
    }

    public static List<HlsMediaPlaylist.SegmentBase> getSegmentBaseList(HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 < 0 || hlsMediaPlaylist.segments.size() < i2) {
            return ImmutableList.of();
        }
        ArrayList arrayList = new ArrayList();
        if (i2 < hlsMediaPlaylist.segments.size()) {
            if (i != -1) {
                HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
                if (i == 0) {
                    arrayList.add(segment);
                } else if (i < segment.parts.size()) {
                    List<HlsMediaPlaylist.Part> list = segment.parts;
                    arrayList.addAll(list.subList(i, list.size()));
                }
                i2++;
            }
            List<HlsMediaPlaylist.Segment> list2 = hlsMediaPlaylist.segments;
            arrayList.addAll(list2.subList(i2, list2.size()));
            i = 0;
        }
        if (hlsMediaPlaylist.partTargetDurationUs != -9223372036854775807L) {
            int i3 = i != -1 ? i : 0;
            if (i3 < hlsMediaPlaylist.trailingParts.size()) {
                List<HlsMediaPlaylist.Part> list3 = hlsMediaPlaylist.trailingParts;
                arrayList.addAll(list3.subList(i3, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public boolean obtainsChunksForPlaylist(Uri uri) {
        return Util.contains(this.playlistUrls, uri);
    }

    private Pair<Long, Integer> getNextMediaSequenceAndPartIndex(HlsMediaChunk hlsMediaChunk, boolean z, HlsMediaPlaylist hlsMediaPlaylist, long j, long j2) {
        List<HlsMediaPlaylist.Part> list;
        long nextChunkIndex;
        if (hlsMediaChunk == null || z) {
            long j3 = hlsMediaPlaylist.durationUs + j;
            if (hlsMediaChunk != null && !this.independentSegments) {
                j2 = hlsMediaChunk.startTimeUs;
            }
            if (!hlsMediaPlaylist.hasEndTag && j2 >= j3) {
                return new Pair<>(Long.valueOf(hlsMediaPlaylist.mediaSequence + ((long) hlsMediaPlaylist.segments.size())), -1);
            }
            long j4 = j2 - j;
            int i = 0;
            int iBinarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) hlsMediaPlaylist.segments, Long.valueOf(j4), true, !this.playlistTracker.isLive() || hlsMediaChunk == null);
            long j5 = ((long) iBinarySearchFloor) + hlsMediaPlaylist.mediaSequence;
            if (iBinarySearchFloor >= 0) {
                HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(iBinarySearchFloor);
                if (j4 < segment.relativeStartTimeUs + segment.durationUs) {
                    list = segment.parts;
                } else {
                    list = hlsMediaPlaylist.trailingParts;
                }
                while (true) {
                    if (i >= list.size()) {
                        break;
                    }
                    HlsMediaPlaylist.Part part = list.get(i);
                    if (j4 >= part.relativeStartTimeUs + part.durationUs) {
                        i++;
                    } else if (part.isIndependent) {
                        j5 += list == hlsMediaPlaylist.trailingParts ? 1L : 0L;
                        i = i;
                    }
                }
            }
            return new Pair<>(Long.valueOf(j5), Integer.valueOf(i));
        }
        if (hlsMediaChunk.isLoadCompleted()) {
            if (hlsMediaChunk.partIndex == -1) {
                nextChunkIndex = hlsMediaChunk.getNextChunkIndex();
            } else {
                nextChunkIndex = hlsMediaChunk.chunkIndex;
            }
            Long lValueOf = Long.valueOf(nextChunkIndex);
            int i2 = hlsMediaChunk.partIndex;
            return new Pair<>(lValueOf, Integer.valueOf(i2 != -1 ? i2 + 1 : -1));
        }
        return new Pair<>(Long.valueOf(hlsMediaChunk.chunkIndex), Integer.valueOf(hlsMediaChunk.partIndex));
    }

    private static boolean shouldForceKeepCurrentTrackSelection(boolean z, HlsMediaPlaylist hlsMediaPlaylist, long j, int i, HlsMediaChunk hlsMediaChunk, long j2, long j3) {
        if (!z || hlsMediaChunk == null) {
            return false;
        }
        if (j < hlsMediaPlaylist.mediaSequence) {
            return true;
        }
        SegmentBaseHolder nextSegmentHolder = getNextSegmentHolder(hlsMediaPlaylist, j, i);
        return nextSegmentHolder != null && j2 + nextSegmentHolder.segmentBase.relativeStartTimeUs < j3;
    }

    private long resolveTimeToLiveEdgeUs(long j) {
        long j2 = this.liveEdgeInPeriodTimeUs;
        if (j2 != -9223372036854775807L) {
            return j2 - j;
        }
        return -9223372036854775807L;
    }

    private void updateLiveEdgeTimeUs(HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeInPeriodTimeUs = hlsMediaPlaylist.hasEndTag ? -9223372036854775807L : hlsMediaPlaylist.getEndTimeUs() - this.playlistTracker.getInitialStartTimeUs();
    }

    private Chunk maybeCreateEncryptionChunkFor(Uri uri, int i, boolean z, CmcdData.Factory factory) {
        if (uri == null) {
            return null;
        }
        byte[] bArrRemove = this.keyCache.remove(uri);
        if (bArrRemove != null) {
            this.keyCache.put(uri, bArrRemove);
            return null;
        }
        return new EncryptionKeyChunk(this.encryptionDataSource, new DataSpec.Builder().setUri(uri).setFlags(1).build(), this.playlistFormats[i], this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.scratchSpace);
    }

    private static Uri getFullEncryptionKeyUri(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist.SegmentBase segmentBase) {
        String str;
        if (segmentBase == null || (str = segmentBase.fullSegmentEncryptionKeyUri) == null) {
            return null;
        }
        return UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, str);
    }

    private void deactivatePlaylistForSelectedTrack() {
        this.playlistTracker.deactivatePlaylistForPlayback(this.playlistUrls[this.trackSelection.getSelectedIndexInTrackGroup()]);
    }

    public static final class SegmentBaseHolder {
        public final boolean isPreload;
        public final long mediaSequence;
        public final int partIndex;
        public final HlsMediaPlaylist.SegmentBase segmentBase;

        public SegmentBaseHolder(HlsMediaPlaylist.SegmentBase segmentBase, long j, int i) {
            this.segmentBase = segmentBase;
            this.mediaSequence = j;
            this.partIndex = i;
            this.isPreload = (segmentBase instanceof HlsMediaPlaylist.Part) && ((HlsMediaPlaylist.Part) segmentBase).isPreload;
        }
    }

    public static final class InitializationTrackSelection extends BaseTrackSelection {
        private int selectedIndex;

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(iArr[0]));
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (isTrackExcluded(this.selectedIndex, jElapsedRealtime)) {
                for (int i = this.length - 1; i >= 0; i--) {
                    if (!isTrackExcluded(i, jElapsedRealtime)) {
                        this.selectedIndex = i;
                        return;
                    }
                }
                MethodWriter$$ExternalSyntheticBUOutline0.m959m();
            }
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }
    }

    public static final class EncryptionKeyChunk extends DataChunk {
        private byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i, obj, bArr);
        }

        @Override // androidx.media3.exoplayer.source.chunk.DataChunk
        public void consume(byte[] bArr, int i) {
            this.result = Arrays.copyOf(bArr, i);
        }

        public byte[] getResult() {
            return this.result;
        }
    }

    public static final class HlsMediaPlaylistSegmentIterator extends BaseMediaChunkIterator {
        private final String playlistBaseUri;
        private final List<HlsMediaPlaylist.SegmentBase> segmentBases;
        private final long startOfPlaylistInPeriodUs;

        public HlsMediaPlaylistSegmentIterator(String str, long j, List<HlsMediaPlaylist.SegmentBase> list) {
            super(0L, list.size() - 1);
            this.playlistBaseUri = str;
            this.startOfPlaylistInPeriodUs = j;
            this.segmentBases = list;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.startOfPlaylistInPeriodUs + this.segmentBases.get((int) getCurrentIndex()).relativeStartTimeUs;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) getCurrentIndex());
            return this.startOfPlaylistInPeriodUs + segmentBase.relativeStartTimeUs + segmentBase.durationUs;
        }
    }
}
