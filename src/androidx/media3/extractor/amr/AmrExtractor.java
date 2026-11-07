package androidx.media3.extractor.amr;

import androidx.car.app.media.CarAudioRecord;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import java.io.EOFException;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class AmrExtractor implements Extractor {
    private int currentSampleBytesRemaining;
    private int currentSampleSize;
    private long currentSampleTimeUs;
    private TrackOutput currentTrackOutput;
    private ExtractorOutput extractorOutput;
    private long firstSamplePosition;
    private int firstSampleSize;
    private final int flags;
    private boolean hasOutputFormat;
    private boolean isSeekInProgress;
    private boolean isWideBand;
    private int numSamplesWithSameSize;
    private TrackOutput realTrackOutput;
    private final byte[] scratch;
    private SeekMap seekMap;
    private long seekTimeUs;
    private final TrackOutput skippingTrackOutput;
    private long timeOffsetUs;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.amr.AmrExtractor$$ExternalSyntheticLambda0
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return AmrExtractor.m1924$r8$lambda$SJh1mMR68eVuGS4irR_1BeE4();
        }
    };
    private static final int[] frameSizeBytesByTypeNb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] frameSizeBytesByTypeWb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final byte[] amrSignatureNb = Util.getUtf8Bytes("#!AMR\n");
    private static final byte[] amrSignatureWb = Util.getUtf8Bytes("#!AMR-WB\n");

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    /* JADX INFO: renamed from: $r8$lambda$SJh1mMR68eVuGS4--i-rR_1BeE4, reason: not valid java name */
    public static /* synthetic */ Extractor[] m1924$r8$lambda$SJh1mMR68eVuGS4irR_1BeE4() {
        return new Extractor[]{new AmrExtractor()};
    }

    public AmrExtractor() {
        this(0);
    }

    public AmrExtractor(int i) {
        this.flags = (i & 2) != 0 ? i | 1 : i;
        this.scratch = new byte[1];
        this.firstSampleSize = -1;
        DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();
        this.skippingTrackOutput = discardingTrackOutput;
        this.currentTrackOutput = discardingTrackOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return readAmrHeader(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        TrackOutput trackOutputTrack = extractorOutput.track(0, 1);
        this.realTrackOutput = trackOutputTrack;
        this.currentTrackOutput = trackOutputTrack;
        extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        assertInitialized();
        if (extractorInput.getPosition() == 0 && !readAmrHeader(extractorInput)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        maybeOutputFormat();
        int sample = readSample(extractorInput);
        maybeOutputSeekMap(extractorInput.getLength(), sample);
        if (sample == -1) {
            SeekMap seekMap = this.seekMap;
            if (seekMap instanceof IndexSeekMap) {
                long j = this.timeOffsetUs + this.currentSampleTimeUs;
                ((IndexSeekMap) seekMap).setDurationUs(j);
                this.extractorOutput.seekMap(this.seekMap);
                this.realTrackOutput.durationUs(j);
            }
        }
        return sample;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        this.currentSampleTimeUs = 0L;
        this.currentSampleSize = 0;
        this.currentSampleBytesRemaining = 0;
        this.seekTimeUs = j2;
        SeekMap seekMap = this.seekMap;
        if (seekMap instanceof IndexSeekMap) {
            long timeUs = ((IndexSeekMap) seekMap).getTimeUs(j);
            this.timeOffsetUs = timeUs;
            if (isSeekTimeUsWithinRange(timeUs, this.seekTimeUs)) {
                return;
            }
            this.isSeekInProgress = true;
            this.currentTrackOutput = this.skippingTrackOutput;
            return;
        }
        if (j != 0 && (seekMap instanceof ConstantBitrateSeekMap)) {
            this.timeOffsetUs = ((ConstantBitrateSeekMap) seekMap).getTimeUsAtPosition(j);
        } else {
            this.timeOffsetUs = 0L;
        }
    }

    private boolean readAmrHeader(ExtractorInput extractorInput) {
        byte[] bArr = amrSignatureNb;
        if (peekAmrSignature(extractorInput, bArr)) {
            this.isWideBand = false;
            extractorInput.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = amrSignatureWb;
        if (!peekAmrSignature(extractorInput, bArr2)) {
            return false;
        }
        this.isWideBand = true;
        extractorInput.skipFully(bArr2.length);
        return true;
    }

    private static boolean peekAmrSignature(ExtractorInput extractorInput, byte[] bArr) {
        extractorInput.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @RequiresNonNull({"realTrackOutput"})
    private void maybeOutputFormat() {
        if (this.hasOutputFormat) {
            return;
        }
        this.hasOutputFormat = true;
        boolean z = this.isWideBand;
        String str = z ? "audio/amr-wb" : "audio/amr";
        this.realTrackOutput.format(new Format.Builder().setContainerMimeType(str).setSampleMimeType(z ? "audio/amr-wb" : "audio/3gpp").setMaxInputSize(z ? frameSizeBytesByTypeWb[8] : frameSizeBytesByTypeNb[7]).setChannelCount(1).setSampleRate(z ? CarAudioRecord.AUDIO_CONTENT_SAMPLING_RATE : 8000).build());
    }

    @RequiresNonNull({"realTrackOutput"})
    private int readSample(ExtractorInput extractorInput) throws ParserException {
        if (this.currentSampleBytesRemaining == 0) {
            try {
                int iPeekNextSampleSize = peekNextSampleSize(extractorInput);
                this.currentSampleSize = iPeekNextSampleSize;
                this.currentSampleBytesRemaining = iPeekNextSampleSize;
                if (this.firstSampleSize == -1) {
                    this.firstSamplePosition = extractorInput.getPosition();
                    this.firstSampleSize = this.currentSampleSize;
                }
                if (this.firstSampleSize == this.currentSampleSize) {
                    this.numSamplesWithSameSize++;
                }
                SeekMap seekMap = this.seekMap;
                if (seekMap instanceof IndexSeekMap) {
                    IndexSeekMap indexSeekMap = (IndexSeekMap) seekMap;
                    long j = this.timeOffsetUs + this.currentSampleTimeUs + 20000;
                    long position = extractorInput.getPosition() + ((long) this.currentSampleSize);
                    if (!indexSeekMap.isTimeUsInIndex(j, 100000L)) {
                        indexSeekMap.addSeekPoint(j, position);
                    }
                    if (this.isSeekInProgress && isSeekTimeUsWithinRange(j, this.seekTimeUs)) {
                        this.isSeekInProgress = false;
                        this.currentTrackOutput = this.realTrackOutput;
                    }
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iSampleData = this.currentTrackOutput.sampleData((DataReader) extractorInput, this.currentSampleBytesRemaining, true);
        if (iSampleData == -1) {
            return -1;
        }
        int i = this.currentSampleBytesRemaining - iSampleData;
        this.currentSampleBytesRemaining = i;
        if (i > 0) {
            return 0;
        }
        this.currentTrackOutput.sampleMetadata(this.timeOffsetUs + this.currentSampleTimeUs, 1, this.currentSampleSize, 0, null);
        this.currentSampleTimeUs += 20000;
        return 0;
    }

    private int peekNextSampleSize(ExtractorInput extractorInput) throws ParserException {
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.scratch, 0, 1);
        byte b2 = this.scratch[0];
        if ((b2 & 131) > 0) {
            throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b2), null);
        }
        return getFrameSizeInBytes((b2 >> 3) & 15);
    }

    private int getFrameSizeInBytes(int i) throws ParserException {
        boolean zIsValidFrameType = isValidFrameType(i);
        boolean z = this.isWideBand;
        if (zIsValidFrameType) {
            return z ? frameSizeBytesByTypeWb[i] : frameSizeBytesByTypeNb[i];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(z ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    private boolean isValidFrameType(int i) {
        if (i < 0 || i > 15) {
            return false;
        }
        return isWideBandValidFrameType(i) || isNarrowBandValidFrameType(i);
    }

    private boolean isWideBandValidFrameType(int i) {
        if (this.isWideBand) {
            return i < 10 || i > 13;
        }
        return false;
    }

    private boolean isNarrowBandValidFrameType(int i) {
        if (this.isWideBand) {
            return false;
        }
        return i < 12 || i > 14;
    }

    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    private void maybeOutputSeekMap(long j, int i) {
        int i2;
        if (this.seekMap != null) {
            return;
        }
        int i3 = this.flags;
        if ((i3 & 4) != 0) {
            this.seekMap = new IndexSeekMap(new long[]{this.firstSamplePosition}, new long[]{0}, -9223372036854775807L);
        } else if ((i3 & 1) == 0 || ((i2 = this.firstSampleSize) != -1 && i2 != this.currentSampleSize)) {
            this.seekMap = new SeekMap.Unseekable(-9223372036854775807L);
        } else if (this.numSamplesWithSameSize >= 20 || i == -1) {
            SeekMap constantBitrateSeekMap = getConstantBitrateSeekMap(j, (i3 & 2) != 0);
            this.seekMap = constantBitrateSeekMap;
            this.realTrackOutput.durationUs(constantBitrateSeekMap.getDurationUs());
        }
        SeekMap seekMap = this.seekMap;
        if (seekMap != null) {
            this.extractorOutput.seekMap(seekMap);
        }
    }

    private SeekMap getConstantBitrateSeekMap(long j, boolean z) {
        return new ConstantBitrateSeekMap(j, this.firstSamplePosition, getBitrateFromFrameSize(this.firstSampleSize, 20000L), this.firstSampleSize, z);
    }

    @EnsuresNonNull({"extractorOutput", "realTrackOutput"})
    private void assertInitialized() {
        Assertions.checkStateNotNull(this.realTrackOutput);
        Util.castNonNull(this.extractorOutput);
    }

    private boolean isSeekTimeUsWithinRange(long j, long j2) {
        return Math.abs(j2 - j) < 20000;
    }

    private static int getBitrateFromFrameSize(int i, long j) {
        return (int) ((((long) i) * 8000000) / j);
    }
}
