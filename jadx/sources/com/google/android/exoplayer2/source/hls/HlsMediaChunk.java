package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.hls.HlsChunkSource;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
final class HlsMediaChunk extends MediaChunk {
    private static final AtomicInteger uidSource = new AtomicInteger();
    public final int discontinuitySequenceNumber;
    private final DrmInitData drmInitData;
    private HlsMediaChunkExtractor extractor;
    private final HlsExtractorFactory extractorFactory;
    private boolean extractorInvalidated;
    private final boolean hasGapTag;
    private final Id3Decoder id3Decoder;
    private boolean initDataLoadRequired;
    private final DataSource initDataSource;
    private final DataSpec initDataSpec;
    private final boolean initSegmentEncrypted;
    private final boolean isMasterTimestampSource;
    private boolean isPublished;
    private volatile boolean loadCanceled;
    private boolean loadCompleted;
    private final boolean mediaSegmentEncrypted;
    private final List muxedCaptionFormats;
    private int nextLoadPosition;
    private HlsSampleStreamWrapper output;
    public final int partIndex;
    private final PlayerId playerId;
    public final Uri playlistUrl;
    private final HlsMediaChunkExtractor previousExtractor;
    private ImmutableList sampleQueueFirstSampleIndices;
    private final ParsableByteArray scratchId3Data;
    public final boolean shouldSpliceIn;
    private final TimestampAdjuster timestampAdjuster;
    public final int uid;

    public static HlsMediaChunk createInstance(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, Format format, long j, HlsMediaPlaylist hlsMediaPlaylist, HlsChunkSource.SegmentBaseHolder segmentBaseHolder, Uri uri, List list, int i, Object obj, boolean z, TimestampAdjusterProvider timestampAdjusterProvider, HlsMediaChunk hlsMediaChunk, byte[] bArr, byte[] bArr2, boolean z2, PlayerId playerId) {
        boolean z3;
        DataSource dataSourceBuildDataSource;
        DataSpec dataSpec;
        boolean z4;
        Uri uri2;
        Id3Decoder id3Decoder;
        ParsableByteArray parsableByteArray;
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        DataSpec dataSpecBuild = new DataSpec.Builder().setUri(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segmentBase.url)).setPosition(segmentBase.byteRangeOffset).setLength(segmentBase.byteRangeLength).setFlags(segmentBaseHolder.isPreload ? 8 : 0).build();
        boolean z5 = bArr != null;
        DataSource dataSourceBuildDataSource2 = buildDataSource(dataSource, bArr, z5 ? getEncryptionIvArray((String) Assertions.checkNotNull(segmentBase.encryptionIV)) : null);
        HlsMediaPlaylist.Segment segment = segmentBase.initializationSegment;
        if (segment != null) {
            boolean z6 = bArr2 != null;
            byte[] encryptionIvArray = z6 ? getEncryptionIvArray((String) Assertions.checkNotNull(segment.encryptionIV)) : null;
            z3 = true;
            DataSpec dataSpec2 = new DataSpec(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.url), segment.byteRangeOffset, segment.byteRangeLength);
            dataSourceBuildDataSource = buildDataSource(dataSource, bArr2, encryptionIvArray);
            z4 = z6;
            dataSpec = dataSpec2;
        } else {
            z3 = true;
            dataSourceBuildDataSource = null;
            dataSpec = null;
            z4 = false;
        }
        long j2 = j + segmentBase.relativeStartTimeUs;
        long j3 = j2 + segmentBase.durationUs;
        int i2 = hlsMediaPlaylist.discontinuitySequence + segmentBase.relativeDiscontinuitySequence;
        if (hlsMediaChunk != null) {
            DataSpec dataSpec3 = hlsMediaChunk.initDataSpec;
            boolean z7 = (dataSpec == dataSpec3 || (dataSpec != null && dataSpec3 != null && dataSpec.uri.equals(dataSpec3.uri) && dataSpec.position == hlsMediaChunk.initDataSpec.position)) ? z3 : false;
            uri2 = uri;
            boolean z8 = (uri2.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted) ? z3 : false;
            id3Decoder = hlsMediaChunk.id3Decoder;
            parsableByteArray = hlsMediaChunk.scratchId3Data;
            hlsMediaChunkExtractor = (z7 && z8 && !hlsMediaChunk.extractorInvalidated && hlsMediaChunk.discontinuitySequenceNumber == i2) ? hlsMediaChunk.extractor : null;
        } else {
            uri2 = uri;
            id3Decoder = new Id3Decoder();
            parsableByteArray = new ParsableByteArray(10);
            hlsMediaChunkExtractor = null;
        }
        return new HlsMediaChunk(hlsExtractorFactory, dataSourceBuildDataSource2, dataSpecBuild, format, z5, dataSourceBuildDataSource, dataSpec, z4, uri2, list, i, obj, j2, j3, segmentBaseHolder.mediaSequence, segmentBaseHolder.partIndex, !segmentBaseHolder.isPreload, i2, segmentBase.hasGapTag, z, timestampAdjusterProvider.getAdjuster(i2), segmentBase.drmInitData, hlsMediaChunkExtractor, id3Decoder, parsableByteArray, z2, playerId);
    }

    public static boolean shouldSpliceIn(HlsMediaChunk hlsMediaChunk, Uri uri, HlsMediaPlaylist hlsMediaPlaylist, HlsChunkSource.SegmentBaseHolder segmentBaseHolder, long j) {
        if (hlsMediaChunk == null) {
            return false;
        }
        if (uri.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted) {
            return false;
        }
        return !isIndependent(segmentBaseHolder, hlsMediaPlaylist) || j + segmentBaseHolder.segmentBase.relativeStartTimeUs < hlsMediaChunk.endTimeUs;
    }

    private HlsMediaChunk(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, DataSpec dataSpec, Format format, boolean z, DataSource dataSource2, DataSpec dataSpec2, boolean z2, Uri uri, List list, int i, Object obj, long j, long j2, long j3, int i2, boolean z3, int i3, boolean z4, boolean z5, TimestampAdjuster timestampAdjuster, DrmInitData drmInitData, HlsMediaChunkExtractor hlsMediaChunkExtractor, Id3Decoder id3Decoder, ParsableByteArray parsableByteArray, boolean z6, PlayerId playerId) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j3);
        this.mediaSegmentEncrypted = z;
        this.partIndex = i2;
        this.isPublished = z3;
        this.discontinuitySequenceNumber = i3;
        this.initDataSpec = dataSpec2;
        this.initDataSource = dataSource2;
        this.initDataLoadRequired = dataSpec2 != null;
        this.initSegmentEncrypted = z2;
        this.playlistUrl = uri;
        this.isMasterTimestampSource = z5;
        this.timestampAdjuster = timestampAdjuster;
        this.hasGapTag = z4;
        this.extractorFactory = hlsExtractorFactory;
        this.muxedCaptionFormats = list;
        this.drmInitData = drmInitData;
        this.previousExtractor = hlsMediaChunkExtractor;
        this.id3Decoder = id3Decoder;
        this.scratchId3Data = parsableByteArray;
        this.shouldSpliceIn = z6;
        this.playerId = playerId;
        this.sampleQueueFirstSampleIndices = ImmutableList.m482of();
        this.uid = uidSource.getAndIncrement();
    }

    public void init(HlsSampleStreamWrapper hlsSampleStreamWrapper, ImmutableList immutableList) {
        this.output = hlsSampleStreamWrapper;
        this.sampleQueueFirstSampleIndices = immutableList;
    }

    public int getFirstSampleIndex(int i) {
        Assertions.checkState(!this.shouldSpliceIn);
        if (i >= this.sampleQueueFirstSampleIndices.size()) {
            return 0;
        }
        return ((Integer) this.sampleQueueFirstSampleIndices.get(i)).intValue();
    }

    public void invalidateExtractor() {
        this.extractorInvalidated = true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() {
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        Assertions.checkNotNull(this.output);
        if (this.extractor == null && (hlsMediaChunkExtractor = this.previousExtractor) != null && hlsMediaChunkExtractor.isReusable()) {
            this.extractor = this.previousExtractor;
            this.initDataLoadRequired = false;
        }
        maybeLoadInitData();
        if (this.loadCanceled) {
            return;
        }
        if (!this.hasGapTag) {
            loadMedia();
        }
        this.loadCompleted = !this.loadCanceled;
    }

    public boolean isPublished() {
        return this.isPublished;
    }

    public void publish() {
        this.isPublished = true;
    }

    private void maybeLoadInitData() {
        if (this.initDataLoadRequired) {
            Assertions.checkNotNull(this.initDataSource);
            Assertions.checkNotNull(this.initDataSpec);
            feedDataToExtractor(this.initDataSource, this.initDataSpec, this.initSegmentEncrypted, true);
            this.nextLoadPosition = 0;
            this.initDataLoadRequired = false;
        }
    }

    private void loadMedia() {
        feedDataToExtractor(this.dataSource, this.dataSpec, this.mediaSegmentEncrypted, true);
    }

    private void feedDataToExtractor(DataSource dataSource, DataSpec dataSpec, boolean z, boolean z2) {
        DataSpec dataSpecSubrange;
        long position;
        if (z) {
            z = this.nextLoadPosition != 0;
            dataSpecSubrange = dataSpec;
        } else {
            dataSpecSubrange = dataSpec.subrange(this.nextLoadPosition);
        }
        try {
            try {
                DefaultExtractorInput defaultExtractorInputPrepareExtraction = prepareExtraction(dataSource, dataSpecSubrange, z2);
                if (z) {
                    defaultExtractorInputPrepareExtraction.skipFully(this.nextLoadPosition);
                }
                while (!this.loadCanceled && this.extractor.read(defaultExtractorInputPrepareExtraction)) {
                    try {
                        try {
                        } catch (EOFException e) {
                            if ((this.trackFormat.roleFlags & 16384) != 0) {
                                this.extractor.onTruncatedSegmentParsed();
                                position = defaultExtractorInputPrepareExtraction.getPosition();
                            } else {
                                throw e;
                            }
                        }
                    } catch (Throwable th) {
                        this.nextLoadPosition = (int) (defaultExtractorInputPrepareExtraction.getPosition() - dataSpec.position);
                        throw th;
                    }
                }
                position = defaultExtractorInputPrepareExtraction.getPosition();
                this.nextLoadPosition = (int) (position - dataSpec.position);
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        } finally {
            DataSourceUtil.closeQuietly(dataSource);
        }
    }

    private DefaultExtractorInput prepareExtraction(DataSource dataSource, DataSpec dataSpec, boolean z) throws Throwable {
        HlsMediaChunkExtractor hlsMediaChunkExtractorCreateExtractor;
        long jAdjustTsTimestamp;
        long jOpen = dataSource.open(dataSpec);
        if (z) {
            try {
                this.timestampAdjuster.sharedInitializeOrWait(this.isMasterTimestampSource, this.startTimeUs);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        }
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, dataSpec.position, jOpen);
        if (this.extractor == null) {
            long jPeekId3PrivTimestamp = peekId3PrivTimestamp(defaultExtractorInput);
            defaultExtractorInput.resetPeekPosition();
            HlsMediaChunkExtractor hlsMediaChunkExtractor = this.previousExtractor;
            if (hlsMediaChunkExtractor != null) {
                hlsMediaChunkExtractorCreateExtractor = hlsMediaChunkExtractor.recreate();
            } else {
                hlsMediaChunkExtractorCreateExtractor = this.extractorFactory.createExtractor(dataSpec.uri, this.trackFormat, this.muxedCaptionFormats, this.timestampAdjuster, dataSource.getResponseHeaders(), defaultExtractorInput, this.playerId);
                defaultExtractorInput = defaultExtractorInput;
            }
            this.extractor = hlsMediaChunkExtractorCreateExtractor;
            if (hlsMediaChunkExtractorCreateExtractor.isPackedAudioExtractor()) {
                HlsSampleStreamWrapper hlsSampleStreamWrapper = this.output;
                if (jPeekId3PrivTimestamp != -9223372036854775807L) {
                    jAdjustTsTimestamp = this.timestampAdjuster.adjustTsTimestamp(jPeekId3PrivTimestamp);
                } else {
                    jAdjustTsTimestamp = this.startTimeUs;
                }
                hlsSampleStreamWrapper.setSampleOffsetUs(jAdjustTsTimestamp);
            } else {
                this.output.setSampleOffsetUs(0L);
            }
            this.output.onNewExtractor();
            this.extractor.init(this.output);
        }
        this.output.setDrmInitData(this.drmInitData);
        return defaultExtractorInput;
    }

    private long peekId3PrivTimestamp(ExtractorInput extractorInput) throws Throwable {
        extractorInput.resetPeekPosition();
        try {
            this.scratchId3Data.reset(10);
            extractorInput.peekFully(this.scratchId3Data.getData(), 0, 10);
        } catch (EOFException unused) {
        }
        if (this.scratchId3Data.readUnsignedInt24() != 4801587) {
            return -9223372036854775807L;
        }
        this.scratchId3Data.skipBytes(3);
        int synchSafeInt = this.scratchId3Data.readSynchSafeInt();
        int i = synchSafeInt + 10;
        if (i > this.scratchId3Data.capacity()) {
            byte[] data = this.scratchId3Data.getData();
            this.scratchId3Data.reset(i);
            System.arraycopy(data, 0, this.scratchId3Data.getData(), 0, 10);
        }
        extractorInput.peekFully(this.scratchId3Data.getData(), 10, synchSafeInt);
        Metadata metadataDecode = this.id3Decoder.decode(this.scratchId3Data.getData(), synchSafeInt);
        if (metadataDecode == null) {
            return -9223372036854775807L;
        }
        int length = metadataDecode.length();
        for (int i2 = 0; i2 < length; i2++) {
            Metadata.Entry entry = metadataDecode.get(i2);
            if (entry instanceof PrivFrame) {
                PrivFrame privFrame = (PrivFrame) entry;
                if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.owner)) {
                    System.arraycopy(privFrame.privateData, 0, this.scratchId3Data.getData(), 0, 8);
                    this.scratchId3Data.setPosition(0);
                    this.scratchId3Data.setLimit(8);
                    return this.scratchId3Data.readLong() & 8589934591L;
                }
            }
        }
        return -9223372036854775807L;
    }

    private static byte[] getEncryptionIvArray(String str) {
        if (Ascii.toLowerCase(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    private static DataSource buildDataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return dataSource;
        }
        Assertions.checkNotNull(bArr2);
        return new Aes128DataSource(dataSource, bArr, bArr2);
    }

    private static boolean isIndependent(HlsChunkSource.SegmentBaseHolder segmentBaseHolder, HlsMediaPlaylist hlsMediaPlaylist) {
        HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        if (segmentBase instanceof HlsMediaPlaylist.Part) {
            if (((HlsMediaPlaylist.Part) segmentBase).isIndependent) {
                return true;
            }
            return segmentBaseHolder.partIndex == 0 && hlsMediaPlaylist.hasIndependentSegments;
        }
        return hlsMediaPlaylist.hasIndependentSegments;
    }
}
