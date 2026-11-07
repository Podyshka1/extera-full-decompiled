package androidx.media3.extractor.mp3;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.Id3Peeker;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.id3.MlltFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import androidx.media3.extractor.mp3.Seeker;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import java.io.EOFException;
import java.math.RoundingMode;
import okio.Buffer$$ExternalSyntheticBUOutline1;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class Mp3Extractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda0
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Mp3Extractor.$r8$lambda$VlN23tvbrkcLKliae6icwKqXLAE();
        }
    };
    private static final Id3Decoder.FramePredicate REQUIRED_ID3_FRAME_PREDICATE = new Id3Decoder.FramePredicate() { // from class: androidx.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda1
        @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            return Mp3Extractor.$r8$lambda$bVD6_snQ71sbMsHH4YoyozOnKO8(i, i2, i3, i4, i5);
        }
    };
    private long basisTimeUs;
    private TrackOutput currentTrackOutput;
    private boolean disableSeeking;
    private long endPositionOfLastSampleRead;
    private ExtractorOutput extractorOutput;
    private long firstSamplePosition;
    private final int flags;
    private final long forcedFirstSampleTimestampUs;
    private final GaplessInfoHolder gaplessInfoHolder;
    private Metadata id3Metadata;
    private final Id3Peeker id3Peeker;
    private boolean isSeekInProgress;
    private TrackOutput realTrackOutput;
    private int sampleBytesRemaining;
    private long samplesRead;
    private final ParsableByteArray scratch;
    private long seekTimeUs;
    private Seeker seeker;
    private final TrackOutput skippingTrackOutput;
    private final MpegAudioUtil.Header synchronizedHeader;
    private int synchronizedHeaderData;
    private Metadata xingMetadata;

    private static boolean headersMatch(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    public static /* synthetic */ Extractor[] $r8$lambda$VlN23tvbrkcLKliae6icwKqXLAE() {
        return new Extractor[]{new Mp3Extractor()};
    }

    public static /* synthetic */ boolean $r8$lambda$bVD6_snQ71sbMsHH4YoyozOnKO8(int i, int i2, int i3, int i4, int i5) {
        if (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) {
            return true;
        }
        if (i2 == 77 && i3 == 76 && i4 == 76) {
            return i5 == 84 || i == 2;
        }
        return false;
    }

    public Mp3Extractor() {
        this(0);
    }

    public Mp3Extractor(int i) {
        this(i, -9223372036854775807L);
    }

    public Mp3Extractor(int i, long j) {
        this.flags = (i & 2) != 0 ? i | 1 : i;
        this.forcedFirstSampleTimestampUs = j;
        this.scratch = new ParsableByteArray(10);
        this.synchronizedHeader = new MpegAudioUtil.Header();
        this.gaplessInfoHolder = new GaplessInfoHolder();
        this.basisTimeUs = -9223372036854775807L;
        this.id3Peeker = new Id3Peeker();
        DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();
        this.skippingTrackOutput = discardingTrackOutput;
        this.currentTrackOutput = discardingTrackOutput;
        this.endPositionOfLastSampleRead = -1L;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return synchronize(extractorInput, true);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        TrackOutput trackOutputTrack = extractorOutput.track(0, 1);
        this.realTrackOutput = trackOutputTrack;
        this.currentTrackOutput = trackOutputTrack;
        this.extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        this.synchronizedHeaderData = 0;
        this.basisTimeUs = -9223372036854775807L;
        this.samplesRead = 0L;
        this.sampleBytesRemaining = 0;
        this.endPositionOfLastSampleRead = -1L;
        this.seekTimeUs = j2;
        Seeker seeker = this.seeker;
        if (!(seeker instanceof IndexSeeker) || ((IndexSeeker) seeker).isTimeUsInIndex(j2)) {
            return;
        }
        this.isSeekInProgress = true;
        this.currentTrackOutput = this.skippingTrackOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws Throwable {
        assertInitialized();
        int internal = readInternal(extractorInput);
        if (internal == -1 && (this.seeker instanceof IndexSeeker)) {
            long jComputeTimeUs = computeTimeUs(this.samplesRead);
            if (this.seeker.getDurationUs() != jComputeTimeUs) {
                ((IndexSeeker) this.seeker).setDurationUs(jComputeTimeUs);
                this.extractorOutput.seekMap(this.seeker);
                this.realTrackOutput.durationUs(this.seeker.getDurationUs());
            }
        }
        return internal;
    }

    public void disableSeeking() {
        this.disableSeeking = true;
    }

    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    private int readInternal(ExtractorInput extractorInput) throws Throwable {
        if (this.synchronizedHeaderData == 0) {
            try {
                synchronize(extractorInput, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.seeker == null) {
            Seeker seekerComputeSeeker = computeSeeker(extractorInput);
            this.seeker = seekerComputeSeeker;
            this.extractorOutput.seekMap(seekerComputeSeeker);
            Metadata metadataCopyWithAppendedEntriesFrom = this.id3Metadata;
            if (metadataCopyWithAppendedEntriesFrom != null && (this.flags & 8) == 0) {
                Metadata metadata = this.xingMetadata;
                if (metadata != null) {
                    metadataCopyWithAppendedEntriesFrom = metadataCopyWithAppendedEntriesFrom.copyWithAppendedEntriesFrom(metadata);
                }
            } else {
                metadataCopyWithAppendedEntriesFrom = this.xingMetadata;
            }
            Format.Builder metadata2 = new Format.Builder().setContainerMimeType("audio/mpeg").setSampleMimeType(this.synchronizedHeader.mimeType).setMaxInputSize(4096).setChannelCount(this.synchronizedHeader.channels).setSampleRate(this.synchronizedHeader.sampleRate).setEncoderDelay(this.gaplessInfoHolder.encoderDelay).setEncoderPadding(this.gaplessInfoHolder.encoderPadding).setMetadata(metadataCopyWithAppendedEntriesFrom);
            if (this.seeker.getAverageBitrate() != -2147483647) {
                metadata2.setAverageBitrate(this.seeker.getAverageBitrate());
            }
            this.currentTrackOutput.format(metadata2.build());
            this.firstSamplePosition = extractorInput.getPosition();
        } else if (this.firstSamplePosition != 0) {
            long position = extractorInput.getPosition();
            long j = this.firstSamplePosition;
            if (position < j) {
                extractorInput.skipFully((int) (j - position));
            }
        }
        return readSample(extractorInput);
    }

    @RequiresNonNull({"realTrackOutput", "seeker"})
    private int readSample(ExtractorInput extractorInput) {
        if (this.sampleBytesRemaining == 0) {
            extractorInput.resetPeekPosition();
            if (peekEndOfStreamOrHeader(extractorInput)) {
                return -1;
            }
            this.scratch.setPosition(0);
            int i = this.scratch.readInt();
            if (!headersMatch(i, this.synchronizedHeaderData) || MpegAudioUtil.getFrameSize(i) == -1) {
                extractorInput.skipFully(1);
                this.synchronizedHeaderData = 0;
                return 0;
            }
            this.synchronizedHeader.setForHeaderData(i);
            if (this.basisTimeUs == -9223372036854775807L) {
                this.basisTimeUs = this.seeker.getTimeUs(extractorInput.getPosition());
                if (this.forcedFirstSampleTimestampUs != -9223372036854775807L) {
                    this.basisTimeUs += this.forcedFirstSampleTimestampUs - this.seeker.getTimeUs(0L);
                }
            }
            this.sampleBytesRemaining = this.synchronizedHeader.frameSize;
            long position = extractorInput.getPosition();
            MpegAudioUtil.Header header = this.synchronizedHeader;
            this.endPositionOfLastSampleRead = position + ((long) header.frameSize);
            Seeker seeker = this.seeker;
            if (seeker instanceof IndexSeeker) {
                IndexSeeker indexSeeker = (IndexSeeker) seeker;
                indexSeeker.maybeAddSeekPoint(computeTimeUs(this.samplesRead + ((long) header.samplesPerFrame)), this.endPositionOfLastSampleRead);
                if (this.isSeekInProgress && indexSeeker.isTimeUsInIndex(this.seekTimeUs)) {
                    this.isSeekInProgress = false;
                    this.currentTrackOutput = this.realTrackOutput;
                }
            }
        }
        int iSampleData = this.currentTrackOutput.sampleData((DataReader) extractorInput, this.sampleBytesRemaining, true);
        if (iSampleData == -1) {
            return -1;
        }
        int i2 = this.sampleBytesRemaining - iSampleData;
        this.sampleBytesRemaining = i2;
        if (i2 > 0) {
            return 0;
        }
        this.currentTrackOutput.sampleMetadata(computeTimeUs(this.samplesRead), 1, this.synchronizedHeader.frameSize, 0, null);
        this.samplesRead += (long) this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    private long computeTimeUs(long j) {
        return this.basisTimeUs + ((j * 1000000) / ((long) this.synchronizedHeader.sampleRate));
    }

    private boolean synchronize(ExtractorInput extractorInput, boolean z) throws Throwable {
        int peekPosition;
        int i;
        int frameSize;
        extractorInput.resetPeekPosition();
        if (extractorInput.getPosition() == 0) {
            Metadata metadataPeekId3Data = this.id3Peeker.peekId3Data(extractorInput, (this.flags & 8) == 0 ? null : REQUIRED_ID3_FRAME_PREDICATE, 131072);
            this.id3Metadata = metadataPeekId3Data;
            if (metadataPeekId3Data != null) {
                this.gaplessInfoHolder.setFromMetadata(metadataPeekId3Data);
            }
            peekPosition = (int) extractorInput.getPeekPosition();
            if (!z) {
                extractorInput.skipFully(peekPosition);
            }
            i = 0;
        } else {
            peekPosition = 0;
            i = 0;
        }
        int i2 = i;
        int i3 = i2;
        while (true) {
            if (!peekEndOfStreamOrHeader(extractorInput)) {
                this.scratch.setPosition(0);
                int i4 = this.scratch.readInt();
                if ((i == 0 || headersMatch(i4, i)) && (frameSize = MpegAudioUtil.getFrameSize(i4)) != -1) {
                    i2++;
                    if (i2 != 1) {
                        if (i2 == 4) {
                            break;
                        }
                    } else {
                        this.synchronizedHeader.setForHeaderData(i4);
                        i = i4;
                    }
                    extractorInput.advancePeekPosition(frameSize - 4);
                } else {
                    int i5 = i3 + 1;
                    if (i3 == 131072) {
                        if (z) {
                            return false;
                        }
                        maybeUpdateCbrDurationToLastSample();
                        Buffer$$ExternalSyntheticBUOutline1.m964m();
                        return false;
                    }
                    if (z) {
                        extractorInput.resetPeekPosition();
                        extractorInput.advancePeekPosition(peekPosition + i5);
                    } else {
                        extractorInput.skipFully(1);
                    }
                    i2 = 0;
                    i3 = i5;
                    i = 0;
                }
            } else if (i2 <= 0) {
                maybeUpdateCbrDurationToLastSample();
                Buffer$$ExternalSyntheticBUOutline1.m964m();
                return false;
            }
        }
        if (z) {
            extractorInput.skipFully(peekPosition + i3);
        } else {
            extractorInput.resetPeekPosition();
        }
        this.synchronizedHeaderData = i;
        return true;
    }

    private boolean peekEndOfStreamOrHeader(ExtractorInput extractorInput) {
        Seeker seeker = this.seeker;
        if (seeker != null) {
            long dataEndPosition = seeker.getDataEndPosition();
            if (dataEndPosition != -1 && extractorInput.getPeekPosition() > dataEndPosition - 4) {
                return true;
            }
        }
        try {
            return !extractorInput.peekFully(this.scratch.getData(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    @RequiresNonNull({"realTrackOutput"})
    private Seeker computeSeeker(ExtractorInput extractorInput) {
        long length;
        Seeker seekerMaybeReadSeekFrame = maybeReadSeekFrame(extractorInput);
        MlltSeeker mlltSeekerMaybeHandleSeekMetadata = maybeHandleSeekMetadata(this.id3Metadata, extractorInput.getPosition());
        if (this.disableSeeking) {
            return new Seeker.UnseekableSeeker();
        }
        if (mlltSeekerMaybeHandleSeekMetadata != null) {
            seekerMaybeReadSeekFrame = mlltSeekerMaybeHandleSeekMetadata;
        } else if (seekerMaybeReadSeekFrame == null) {
            seekerMaybeReadSeekFrame = null;
        }
        if (seekerMaybeReadSeekFrame == null) {
            seekerMaybeReadSeekFrame = getConstantBitrateSeeker(extractorInput, (this.flags & 2) != 0);
        }
        if ((this.flags & 4) != 0 && !seekerMaybeReadSeekFrame.isSeekable()) {
            seekerMaybeReadSeekFrame = new IndexSeeker(seekerMaybeReadSeekFrame.getDurationUs(), extractorInput.getPosition(), seekerMaybeReadSeekFrame.getDataEndPosition());
        }
        if (shouldFallbackToConstantBitrateSeeking(seekerMaybeReadSeekFrame) && seekerMaybeReadSeekFrame.getDurationUs() != -9223372036854775807L && (seekerMaybeReadSeekFrame.getDataEndPosition() != -1 || extractorInput.getLength() != -1)) {
            long dataStartPosition = seekerMaybeReadSeekFrame.getDataStartPosition() != -1 ? seekerMaybeReadSeekFrame.getDataStartPosition() : 0L;
            if (seekerMaybeReadSeekFrame.getDataEndPosition() != -1) {
                length = seekerMaybeReadSeekFrame.getDataEndPosition();
            } else {
                length = extractorInput.getLength();
            }
            long j = length;
            seekerMaybeReadSeekFrame = new ConstantBitrateSeeker(j, dataStartPosition, Ints.saturatedCast(Util.scaleLargeValue(j - dataStartPosition, 8000000L, seekerMaybeReadSeekFrame.getDurationUs(), RoundingMode.HALF_UP)), -1, false);
        } else if (shouldFallbackToConstantBitrateSeeking(seekerMaybeReadSeekFrame)) {
            seekerMaybeReadSeekFrame = getConstantBitrateSeeker(extractorInput, (this.flags & 2) != 0);
        }
        this.realTrackOutput.durationUs(seekerMaybeReadSeekFrame.getDurationUs());
        return seekerMaybeReadSeekFrame;
    }

    private boolean shouldFallbackToConstantBitrateSeeking(Seeker seeker) {
        return (seeker.isSeekable() || (seeker instanceof ConstantBitrateSeeker) || (this.flags & 1) == 0) ? false : true;
    }

    private Seeker maybeReadSeekFrame(ExtractorInput extractorInput) {
        int i;
        int i2;
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.synchronizedHeader.frameSize);
        extractorInput.peekFully(parsableByteArray.getData(), 0, this.synchronizedHeader.frameSize);
        MpegAudioUtil.Header header = this.synchronizedHeader;
        int i3 = 21;
        if ((header.version & 1) != 0) {
            if (header.channels != 1) {
                i3 = 36;
            }
        } else if (header.channels == 1) {
            i3 = 13;
        }
        int seekFrameHeader = getSeekFrameHeader(parsableByteArray, i3);
        if (seekFrameHeader != 1231971951) {
            if (seekFrameHeader == 1447187017) {
                VbriSeeker vbriSeekerCreate = VbriSeeker.create(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, parsableByteArray);
                extractorInput.skipFully(this.synchronizedHeader.frameSize);
                return vbriSeekerCreate;
            }
            if (seekFrameHeader != 1483304551) {
                extractorInput.resetPeekPosition();
                return null;
            }
        }
        XingFrame xingFrame = XingFrame.parse(this.synchronizedHeader, parsableByteArray);
        if (!this.gaplessInfoHolder.hasGaplessInfo() && (i = xingFrame.encoderDelay) != -1 && (i2 = xingFrame.encoderPadding) != -1) {
            GaplessInfoHolder gaplessInfoHolder = this.gaplessInfoHolder;
            gaplessInfoHolder.encoderDelay = i;
            gaplessInfoHolder.encoderPadding = i2;
        }
        this.xingMetadata = xingFrame.getMetadata();
        long position = extractorInput.getPosition();
        extractorInput.skipFully(this.synchronizedHeader.frameSize);
        if (seekFrameHeader == 1483304551) {
            return XingSeeker.create(xingFrame, position, extractorInput.getLength());
        }
        return getConstantBitrateSeeker(position, xingFrame, extractorInput.getLength());
    }

    private Seeker getConstantBitrateSeeker(ExtractorInput extractorInput, boolean z) {
        extractorInput.peekFully(this.scratch.getData(), 0, 4);
        this.scratch.setPosition(0);
        this.synchronizedHeader.setForHeaderData(this.scratch.readInt());
        return new ConstantBitrateSeeker(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, z);
    }

    private Seeker getConstantBitrateSeeker(long j, XingFrame xingFrame, long j2) {
        long j3;
        long j4;
        long jComputeDurationUs = xingFrame.computeDurationUs();
        if (jComputeDurationUs == -9223372036854775807L) {
            return null;
        }
        long j5 = xingFrame.dataSize;
        if (j5 != -1) {
            long j6 = j + j5;
            j3 = j5 - ((long) xingFrame.header.frameSize);
            j4 = j6;
        } else {
            if (j2 == -1) {
                return null;
            }
            j3 = (j2 - j) - ((long) xingFrame.header.frameSize);
            j4 = j2;
        }
        long j7 = j3;
        RoundingMode roundingMode = RoundingMode.HALF_UP;
        return new ConstantBitrateSeeker(j4, j + ((long) xingFrame.header.frameSize), Ints.checkedCast(Util.scaleLargeValue(j7, 8000000L, jComputeDurationUs, roundingMode)), Ints.checkedCast(LongMath.divide(j7, xingFrame.frameCount, roundingMode)), false);
    }

    private void maybeUpdateCbrDurationToLastSample() {
        Seeker seeker = this.seeker;
        if ((seeker instanceof ConstantBitrateSeeker) && seeker.isSeekable()) {
            long j = this.endPositionOfLastSampleRead;
            if (j == -1 || j == this.seeker.getDataEndPosition()) {
                return;
            }
            this.seeker = ((ConstantBitrateSeeker) this.seeker).copyWithNewDataEndPosition(this.endPositionOfLastSampleRead);
            ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).seekMap(this.seeker);
            ((TrackOutput) Preconditions.checkNotNull(this.realTrackOutput)).durationUs(this.seeker.getDurationUs());
        }
    }

    @EnsuresNonNull({"extractorOutput", "realTrackOutput"})
    private void assertInitialized() {
        Preconditions.checkNotNull(this.realTrackOutput);
        Util.castNonNull(this.extractorOutput);
    }

    private static int getSeekFrameHeader(ParsableByteArray parsableByteArray, int i) {
        if (parsableByteArray.limit() >= i + 4) {
            parsableByteArray.setPosition(i);
            int i2 = parsableByteArray.readInt();
            if (i2 == 1483304551 || i2 == 1231971951) {
                return i2;
            }
        }
        if (parsableByteArray.limit() < 40) {
            return 0;
        }
        parsableByteArray.setPosition(36);
        return parsableByteArray.readInt() == 1447187017 ? 1447187017 : 0;
    }

    private static MlltSeeker maybeHandleSeekMetadata(Metadata metadata, long j) {
        MlltFrame mlltFrame;
        if (metadata == null || (mlltFrame = (MlltFrame) metadata.getFirstEntryOfType(MlltFrame.class)) == null) {
            return null;
        }
        return MlltSeeker.create(j, mlltFrame, getId3TlenUs(metadata));
    }

    private static long getId3TlenUs(Metadata metadata) {
        TextInformationFrame textInformationFrame;
        if (metadata == null || (textInformationFrame = (TextInformationFrame) metadata.getFirstMatchingEntry(TextInformationFrame.class, new Predicate() { // from class: androidx.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((TextInformationFrame) obj).id.equals("TLEN");
            }
        })) == null) {
            return -9223372036854775807L;
        }
        return Util.msToUs(Long.parseLong(textInformationFrame.values.get(0)));
    }
}
