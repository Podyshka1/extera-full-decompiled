package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.android.gms.cast.MediaTrack;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class HlsMediaPeriod implements MediaPeriod, HlsPlaylistTracker.PlaylistEventListener {
    private final Allocator allocator;
    private final boolean allowChunklessPreparation;
    private int audioVideoSampleStreamWrapperCount;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final HlsDataSourceFactory dataSourceFactory;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    private final HlsExtractorFactory extractorFactory;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private MediaPeriod.Callback mediaPeriodCallback;
    private final TransferListener mediaTransferListener;
    private final int metadataType;
    private int pendingPrepareCount;
    private final PlayerId playerId;
    private final HlsPlaylistTracker playlistTracker;
    private TrackGroupArray trackGroups;
    private final boolean useSessionKeys;
    private final HlsSampleStreamWrapper.Callback sampleStreamWrapperCallback = new SampleStreamWrapperCallback();
    private final IdentityHashMap<SampleStream, Integer> streamWrapperIndices = new IdentityHashMap<>();
    private final TimestampAdjusterProvider timestampAdjusterProvider = new TimestampAdjusterProvider();
    private HlsSampleStreamWrapper[] sampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private HlsSampleStreamWrapper[] enabledSampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private int[][] manifestUrlIndicesPerWrapper = new int[0][];

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    public HlsMediaPeriod(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, boolean z, int i, boolean z2, PlayerId playerId) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.mediaTransferListener = transferListener;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher2;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.allowChunklessPreparation = z;
        this.metadataType = i;
        this.useSessionKeys = z2;
        this.playerId = playerId;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new SequenceableLoader[0]);
    }

    public void release() {
        this.playlistTracker.removeListener(this);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.release();
        }
        this.mediaPeriodCallback = null;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.mediaPeriodCallback = callback;
        this.playlistTracker.addListener(this);
        buildAndPrepareSampleStreamWrappers(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws ParserException {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) Assertions.checkNotNull(this.trackGroups);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00d8  */
    @Override // com.google.android.exoplayer2.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            SampleStream sampleStream = sampleStreamArr[i];
            iArr[i] = sampleStream == null ? -1 : this.streamWrapperIndices.get(sampleStream).intValue();
            iArr2[i] = -1;
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                int i2 = 0;
                while (true) {
                    HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
                    if (i2 >= hlsSampleStreamWrapperArr.length) {
                        break;
                    }
                    if (hlsSampleStreamWrapperArr[i2].getTrackGroups().indexOf(trackGroup) != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        this.streamWrapperIndices.clear();
        int length = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr2 = new SampleStream[length];
        SampleStream[] sampleStreamArr3 = new SampleStream[exoTrackSelectionArr.length];
        ExoTrackSelection[] exoTrackSelectionArr2 = new ExoTrackSelection[exoTrackSelectionArr.length];
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = new HlsSampleStreamWrapper[this.sampleStreamWrappers.length];
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        while (i3 < this.sampleStreamWrappers.length) {
            for (int i5 = 0; i5 < exoTrackSelectionArr.length; i5++) {
                ExoTrackSelection exoTrackSelection2 = null;
                sampleStreamArr3[i5] = iArr[i5] == i3 ? sampleStreamArr[i5] : null;
                if (iArr2[i5] == i3) {
                    exoTrackSelection2 = exoTrackSelectionArr[i5];
                }
                exoTrackSelectionArr2[i5] = exoTrackSelection2;
            }
            HlsSampleStreamWrapper hlsSampleStreamWrapper = this.sampleStreamWrappers[i3];
            int[] iArr3 = iArr;
            int i6 = i3;
            int i7 = i4;
            boolean zSelectTracks = hlsSampleStreamWrapper.selectTracks(exoTrackSelectionArr2, zArr, sampleStreamArr3, zArr2, j, z);
            boolean z2 = false;
            for (int i8 = 0; i8 < exoTrackSelectionArr.length; i8++) {
                SampleStream sampleStream2 = sampleStreamArr3[i8];
                if (iArr2[i8] == i6) {
                    Assertions.checkNotNull(sampleStream2);
                    sampleStreamArr2[i8] = sampleStream2;
                    this.streamWrapperIndices.put(sampleStream2, Integer.valueOf(i6));
                    z2 = true;
                } else if (iArr3[i8] == i6) {
                    Assertions.checkState(sampleStream2 == null);
                }
            }
            if (z2) {
                hlsSampleStreamWrapperArr2[i7] = hlsSampleStreamWrapper;
                i4 = i7 + 1;
                if (i7 == 0) {
                    hlsSampleStreamWrapper.setIsTimestampMaster(true);
                    if (!zSelectTracks) {
                        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr3 = this.enabledSampleStreamWrappers;
                        if (hlsSampleStreamWrapperArr3.length == 0 || hlsSampleStreamWrapper != hlsSampleStreamWrapperArr3[0]) {
                            this.timestampAdjusterProvider.reset();
                            z = true;
                        }
                    }
                } else {
                    hlsSampleStreamWrapper.setIsTimestampMaster(i6 < this.audioVideoSampleStreamWrapperCount);
                }
            } else {
                i4 = i7;
            }
            i3 = i6 + 1;
            iArr = iArr3;
        }
        System.arraycopy(sampleStreamArr2, 0, sampleStreamArr, 0, length);
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr4 = (HlsSampleStreamWrapper[]) Util.nullSafeArrayCopy(hlsSampleStreamWrapperArr2, i4);
        this.enabledSampleStreamWrappers = hlsSampleStreamWrapperArr4;
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(hlsSampleStreamWrapperArr4);
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            hlsSampleStreamWrapper.discardBuffer(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.compositeSequenceableLoader.reevaluateBuffer(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.trackGroups == null) {
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
                hlsSampleStreamWrapper.continuePreparing();
            }
            return false;
        }
        return this.compositeSequenceableLoader.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.enabledSampleStreamWrappers;
        if (hlsSampleStreamWrapperArr.length > 0) {
            boolean zSeekToUs = hlsSampleStreamWrapperArr[0].seekToUs(j, false);
            int i = 1;
            while (true) {
                HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.enabledSampleStreamWrappers;
                if (i >= hlsSampleStreamWrapperArr2.length) {
                    break;
                }
                hlsSampleStreamWrapperArr2[i].seekToUs(j, zSeekToUs);
                i++;
            }
            if (zSeekToUs) {
                this.timestampAdjusterProvider.reset();
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            if (hlsSampleStreamWrapper.isVideoSampleStream()) {
                return hlsSampleStreamWrapper.getAdjustedSeekPositionUs(j, seekParameters);
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void onPlaylistChanged() {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.onPlaylistUpdated();
        }
        this.mediaPeriodCallback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public boolean onPlaylistError(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        boolean zOnPlaylistError = true;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            zOnPlaylistError &= hlsSampleStreamWrapper.onPlaylistError(uri, loadErrorInfo, z);
        }
        this.mediaPeriodCallback.onContinueLoadingRequested(this);
        return zOnPlaylistError;
    }

    private void buildAndPrepareSampleStreamWrappers(long j) {
        Map<String, DrmInitData> mapDeriveOverridingDrmInitData;
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr;
        HlsMultivariantPlaylist hlsMultivariantPlaylist = (HlsMultivariantPlaylist) Assertions.checkNotNull(this.playlistTracker.getMultivariantPlaylist());
        if (this.useSessionKeys) {
            mapDeriveOverridingDrmInitData = deriveOverridingDrmInitData(hlsMultivariantPlaylist.sessionKeyDrmInitData);
        } else {
            mapDeriveOverridingDrmInitData = Collections.EMPTY_MAP;
        }
        Map<String, DrmInitData> map = mapDeriveOverridingDrmInitData;
        boolean zIsEmpty = hlsMultivariantPlaylist.variants.isEmpty();
        List<HlsMultivariantPlaylist.Rendition> list = hlsMultivariantPlaylist.audios;
        List<HlsMultivariantPlaylist.Rendition> list2 = hlsMultivariantPlaylist.subtitles;
        this.pendingPrepareCount = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!zIsEmpty) {
            buildAndPrepareMainSampleStreamWrapper(hlsMultivariantPlaylist, j, arrayList, arrayList2, map);
        }
        buildAndPrepareAudioSampleStreamWrappers(j, list, arrayList, arrayList2, map);
        this.audioVideoSampleStreamWrapperCount = arrayList.size();
        for (int i = 0; i < list2.size(); i++) {
            HlsMultivariantPlaylist.Rendition rendition = list2.get(i);
            String str = "subtitle:" + i + ":" + rendition.name;
            Map<String, DrmInitData> map2 = map;
            HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper = buildSampleStreamWrapper(str, 3, new Uri[]{rendition.url}, new Format[]{rendition.format}, null, Collections.EMPTY_LIST, map2, j);
            map = map2;
            arrayList2.add(new int[]{i});
            arrayList.add(hlsSampleStreamWrapperBuildSampleStreamWrapper);
            hlsSampleStreamWrapperBuildSampleStreamWrapper.prepareWithMultivariantPlaylistInfo(new TrackGroup[]{new TrackGroup(str, rendition.format)}, 0, new int[0]);
        }
        this.sampleStreamWrappers = (HlsSampleStreamWrapper[]) arrayList.toArray(new HlsSampleStreamWrapper[0]);
        this.manifestUrlIndicesPerWrapper = (int[][]) arrayList2.toArray(new int[0][]);
        this.pendingPrepareCount = this.sampleStreamWrappers.length;
        int i2 = 0;
        while (true) {
            int i3 = this.audioVideoSampleStreamWrapperCount;
            hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
            if (i2 >= i3) {
                break;
            }
            hlsSampleStreamWrapperArr[i2].setIsTimestampMaster(true);
            i2++;
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : hlsSampleStreamWrapperArr) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        this.enabledSampleStreamWrappers = this.sampleStreamWrappers;
    }

    private void buildAndPrepareMainSampleStreamWrapper(HlsMultivariantPlaylist hlsMultivariantPlaylist, long j, List<HlsSampleStreamWrapper> list, List<int[]> list2, Map<String, DrmInitData> map) {
        boolean z;
        boolean z2;
        int size = hlsMultivariantPlaylist.variants.size();
        int[] iArr = new int[size];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < hlsMultivariantPlaylist.variants.size(); i3++) {
            Format format = hlsMultivariantPlaylist.variants.get(i3).format;
            if (format.height > 0 || Util.getCodecsOfType(format.codecs, 2) != null) {
                iArr[i3] = 2;
                i++;
            } else if (Util.getCodecsOfType(format.codecs, 1) != null) {
                iArr[i3] = 1;
                i2++;
            } else {
                iArr[i3] = -1;
            }
        }
        if (i > 0) {
            size = i;
            z = true;
            z2 = false;
        } else if (i2 < size) {
            size -= i2;
            z = false;
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        Uri[] uriArr = new Uri[size];
        Format[] formatArr = new Format[size];
        int[] iArr2 = new int[size];
        int i4 = 0;
        for (int i5 = 0; i5 < hlsMultivariantPlaylist.variants.size(); i5++) {
            if ((!z || iArr[i5] == 2) && (!z2 || iArr[i5] != 1)) {
                HlsMultivariantPlaylist.Variant variant = hlsMultivariantPlaylist.variants.get(i5);
                uriArr[i4] = variant.url;
                formatArr[i4] = variant.format;
                iArr2[i4] = i5;
                i4++;
            }
        }
        String str = formatArr[0].codecs;
        int codecCountOfType = Util.getCodecCountOfType(str, 2);
        int codecCountOfType2 = Util.getCodecCountOfType(str, 1);
        boolean z3 = (codecCountOfType2 == 1 || (codecCountOfType2 == 0 && hlsMultivariantPlaylist.audios.isEmpty())) && codecCountOfType <= 1 && codecCountOfType2 + codecCountOfType > 0;
        HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper = buildSampleStreamWrapper(MediaTrack.ROLE_MAIN, (z || codecCountOfType2 <= 0) ? 0 : 1, uriArr, formatArr, hlsMultivariantPlaylist.muxedAudioFormat, hlsMultivariantPlaylist.muxedCaptionFormats, map, j);
        list.add(hlsSampleStreamWrapperBuildSampleStreamWrapper);
        list2.add(iArr2);
        if (this.allowChunklessPreparation && z3) {
            ArrayList arrayList = new ArrayList();
            if (codecCountOfType > 0) {
                Format[] formatArr2 = new Format[size];
                for (int i6 = 0; i6 < size; i6++) {
                    formatArr2[i6] = deriveVideoFormat(formatArr[i6]);
                }
                arrayList.add(new TrackGroup(MediaTrack.ROLE_MAIN, formatArr2));
                if (codecCountOfType2 > 0 && (hlsMultivariantPlaylist.muxedAudioFormat != null || hlsMultivariantPlaylist.audios.isEmpty())) {
                    arrayList.add(new TrackGroup("main:audio", deriveAudioFormat(formatArr[0], hlsMultivariantPlaylist.muxedAudioFormat, false)));
                }
                List<Format> list3 = hlsMultivariantPlaylist.muxedCaptionFormats;
                if (list3 != null) {
                    for (int i7 = 0; i7 < list3.size(); i7++) {
                        arrayList.add(new TrackGroup("main:cc:" + i7, list3.get(i7)));
                    }
                }
            } else {
                Format[] formatArr3 = new Format[size];
                for (int i8 = 0; i8 < size; i8++) {
                    formatArr3[i8] = deriveAudioFormat(formatArr[i8], hlsMultivariantPlaylist.muxedAudioFormat, true);
                }
                arrayList.add(new TrackGroup(MediaTrack.ROLE_MAIN, formatArr3));
            }
            TrackGroup trackGroup = new TrackGroup("main:id3", new Format.Builder().setId("ID3").setSampleMimeType("application/id3").build());
            arrayList.add(trackGroup);
            hlsSampleStreamWrapperBuildSampleStreamWrapper.prepareWithMultivariantPlaylistInfo((TrackGroup[]) arrayList.toArray(new TrackGroup[0]), 0, arrayList.indexOf(trackGroup));
        }
    }

    private void buildAndPrepareAudioSampleStreamWrappers(long j, List<HlsMultivariantPlaylist.Rendition> list, List<HlsSampleStreamWrapper> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i).name;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z = true;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (Util.areEqual(str, list.get(i2).name)) {
                        HlsMultivariantPlaylist.Rendition rendition = list.get(i2);
                        arrayList3.add(Integer.valueOf(i2));
                        arrayList.add(rendition.url);
                        arrayList2.add(rendition.format);
                        z &= Util.getCodecCountOfType(rendition.format.codecs, 1) == 1;
                    }
                }
                String str2 = "audio:" + str;
                HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper = buildSampleStreamWrapper(str2, 1, (Uri[]) arrayList.toArray((Uri[]) Util.castNonNullTypeArray(new Uri[0])), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.EMPTY_LIST, map, j);
                list3.add(Ints.toArray(arrayList3));
                list2.add(hlsSampleStreamWrapperBuildSampleStreamWrapper);
                if (this.allowChunklessPreparation && z) {
                    hlsSampleStreamWrapperBuildSampleStreamWrapper.prepareWithMultivariantPlaylistInfo(new TrackGroup[]{new TrackGroup(str2, (Format[]) arrayList2.toArray(new Format[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private HlsSampleStreamWrapper buildSampleStreamWrapper(String str, int i, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j) {
        return new HlsSampleStreamWrapper(str, i, this.sampleStreamWrapperCallback, new HlsChunkSource(this.extractorFactory, this.playlistTracker, uriArr, formatArr, this.dataSourceFactory, this.mediaTransferListener, this.timestampAdjusterProvider, list, this.playerId), map, this.allocator, j, format, this.drmSessionManager, this.drmEventDispatcher, this.loadErrorHandlingPolicy, this.eventDispatcher, this.metadataType);
    }

    private static Map<String, DrmInitData> deriveOverridingDrmInitData(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap map = new HashMap();
        int i = 0;
        while (i < arrayList.size()) {
            DrmInitData drmInitDataMerge = list.get(i);
            String str = drmInitDataMerge.schemeType;
            i++;
            int i2 = i;
            while (i2 < arrayList.size()) {
                DrmInitData drmInitData = (DrmInitData) arrayList.get(i2);
                if (TextUtils.equals(drmInitData.schemeType, str)) {
                    drmInitDataMerge = drmInitDataMerge.merge(drmInitData);
                    arrayList.remove(i2);
                } else {
                    i2++;
                }
            }
            map.put(str, drmInitDataMerge);
        }
        return map;
    }

    private static Format deriveVideoFormat(Format format) {
        String codecsOfType = Util.getCodecsOfType(format.codecs, 2);
        return new Format.Builder().setId(format.id).setLabel(format.label).setContainerMimeType(format.containerMimeType).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType)).setCodecs(codecsOfType).setMetadata(format.metadata).setAverageBitrate(format.averageBitrate).setPeakBitrate(format.peakBitrate).setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate).setSelectionFlags(format.selectionFlags).setRoleFlags(format.roleFlags).build();
    }

    private static Format deriveAudioFormat(Format format, Format format2, boolean z) {
        String codecsOfType;
        Metadata metadata;
        int i;
        String str;
        int i2;
        int i3;
        String str2;
        if (format2 != null) {
            codecsOfType = format2.codecs;
            metadata = format2.metadata;
            i2 = format2.channelCount;
            i = format2.selectionFlags;
            i3 = format2.roleFlags;
            str = format2.language;
            str2 = format2.label;
        } else {
            codecsOfType = Util.getCodecsOfType(format.codecs, 1);
            metadata = format.metadata;
            if (z) {
                i2 = format.channelCount;
                i = format.selectionFlags;
                i3 = format.roleFlags;
                str = format.language;
                str2 = format.label;
            } else {
                i = 0;
                str = null;
                i2 = -1;
                i3 = 0;
                str2 = null;
            }
        }
        return new Format.Builder().setId(format.id).setLabel(str2).setContainerMimeType(format.containerMimeType).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType)).setCodecs(codecsOfType).setMetadata(metadata).setAverageBitrate(z ? format.averageBitrate : -1).setPeakBitrate(z ? format.peakBitrate : -1).setChannelCount(i2).setSelectionFlags(i).setRoleFlags(i3).setLanguage(str).build();
    }

    public class SampleStreamWrapperCallback implements HlsSampleStreamWrapper.Callback {
        private SampleStreamWrapperCallback() {
        }

        @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
        public void onPrepared() {
            HlsMediaPeriod hlsMediaPeriod = HlsMediaPeriod.this;
            int i = hlsMediaPeriod.pendingPrepareCount - 1;
            hlsMediaPeriod.pendingPrepareCount = i;
            if (i > 0) {
                return;
            }
            int i2 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper : HlsMediaPeriod.this.sampleStreamWrappers) {
                i2 += hlsSampleStreamWrapper.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            int i3 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper2 : HlsMediaPeriod.this.sampleStreamWrappers) {
                int i4 = hlsSampleStreamWrapper2.getTrackGroups().length;
                int i5 = 0;
                while (i5 < i4) {
                    trackGroupArr[i3] = hlsSampleStreamWrapper2.getTrackGroups().get(i5);
                    i5++;
                    i3++;
                }
            }
            HlsMediaPeriod.this.trackGroups = new TrackGroupArray(trackGroupArr);
            HlsMediaPeriod.this.mediaPeriodCallback.onPrepared(HlsMediaPeriod.this);
        }

        @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
        public void onPlaylistRefreshRequired(Uri uri) {
            HlsMediaPeriod.this.playlistTracker.refreshPlaylist(uri);
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
            HlsMediaPeriod.this.mediaPeriodCallback.onContinueLoadingRequested(HlsMediaPeriod.this);
        }
    }
}
