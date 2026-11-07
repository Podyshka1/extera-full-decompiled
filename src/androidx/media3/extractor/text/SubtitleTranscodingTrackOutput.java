package androidx.media3.extractor.text;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import java.io.EOFException;
import kotlin.jvm.internal.LongCompanionObject;
import okio.Buffer$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class SubtitleTranscodingTrackOutput implements TrackOutput {
    private Format currentFormat;
    private SubtitleParser currentSubtitleParser;
    private final TrackOutput delegate;
    private boolean shouldSuppressParsingErrors;
    private final SubtitleParser.Factory subtitleParserFactory;
    private final CueEncoder cueEncoder = new CueEncoder();
    private int sampleDataStart = 0;
    private int sampleDataEnd = 0;
    private byte[] sampleData = Util.EMPTY_BYTE_ARRAY;
    private final ParsableByteArray parsableScratch = new ParsableByteArray();

    public SubtitleTranscodingTrackOutput(TrackOutput trackOutput, SubtitleParser.Factory factory) {
        this.delegate = trackOutput;
        this.subtitleParserFactory = factory;
    }

    public void shouldSuppressParsingErrors(boolean z) {
        this.shouldSuppressParsingErrors = z;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void format(Format format) {
        Preconditions.checkNotNull(format.sampleMimeType);
        Preconditions.checkArgument(MimeTypes.getTrackType(format.sampleMimeType) == 3);
        if (!format.equals(this.currentFormat)) {
            this.currentFormat = format;
            this.currentSubtitleParser = this.subtitleParserFactory.supportsFormat(format) ? this.subtitleParserFactory.create(format) : null;
        }
        SubtitleParser subtitleParser = this.currentSubtitleParser;
        TrackOutput trackOutput = this.delegate;
        if (subtitleParser == null) {
            trackOutput.format(format);
        } else {
            trackOutput.format(format.buildUpon().setSampleMimeType("application/x-media3-cues").setCodecs(format.sampleMimeType).setSubsampleOffsetUs(LongCompanionObject.MAX_VALUE).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(format)).build());
        }
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws EOFException {
        if (this.currentSubtitleParser == null) {
            return this.delegate.sampleData(dataReader, i, z, i2);
        }
        ensureSampleDataCapacity(i);
        int i3 = dataReader.read(this.sampleData, this.sampleDataEnd, i);
        if (i3 != -1) {
            this.sampleDataEnd += i3;
            return i3;
        }
        if (z) {
            return -1;
        }
        Buffer$$ExternalSyntheticBUOutline1.m964m();
        return 0;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
        if (this.currentSubtitleParser == null) {
            this.delegate.sampleData(parsableByteArray, i, i2);
            return;
        }
        ensureSampleDataCapacity(i);
        parsableByteArray.readBytes(this.sampleData, this.sampleDataEnd, i);
        this.sampleDataEnd += i;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleMetadata(final long j, final int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
        int i4;
        if (this.currentSubtitleParser == null) {
            this.delegate.sampleMetadata(j, i, i2, i3, cryptoData);
            return;
        }
        Preconditions.checkArgument(cryptoData == null, "DRM on subtitles is not supported");
        int i5 = (this.sampleDataEnd - i3) - i2;
        try {
            i4 = i5;
            try {
                this.currentSubtitleParser.parse(this.sampleData, i4, i2, SubtitleParser.OutputOptions.allCues(), new Consumer() { // from class: androidx.media3.extractor.text.SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.outputSample((CuesWithTiming) obj, j, i);
                    }
                });
            } catch (RuntimeException e) {
                e = e;
                RuntimeException runtimeException = e;
                if (this.shouldSuppressParsingErrors) {
                    Log.m165w("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", runtimeException);
                } else {
                    throw runtimeException;
                }
            }
        } catch (RuntimeException e2) {
            e = e2;
            i4 = i5;
        }
        int i6 = i4 + i2;
        this.sampleDataStart = i6;
        if (i6 == this.sampleDataEnd) {
            this.sampleDataStart = 0;
            this.sampleDataEnd = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void outputSample(CuesWithTiming cuesWithTiming, long j, int i) {
        long j2;
        Preconditions.checkNotNull(this.currentFormat);
        byte[] bArrEncode = this.cueEncoder.encode(cuesWithTiming.cues, cuesWithTiming.durationUs);
        this.parsableScratch.reset(bArrEncode);
        this.delegate.sampleData(this.parsableScratch, bArrEncode.length);
        long j3 = cuesWithTiming.startTimeUs;
        Format format = this.currentFormat;
        if (j3 == -9223372036854775807L) {
            Preconditions.checkState(format.subsampleOffsetUs == LongCompanionObject.MAX_VALUE);
            j2 = j;
        } else {
            long j4 = format.subsampleOffsetUs;
            j2 = j4 == LongCompanionObject.MAX_VALUE ? j3 + j : j3 + j4;
        }
        this.delegate.sampleMetadata(j2, i | 1, bArrEncode.length, 0, null);
    }

    private void ensureSampleDataCapacity(int i) {
        int length = this.sampleData.length;
        int i2 = this.sampleDataEnd;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.sampleDataStart;
        int iMax = Math.max(i3 * 2, i + i3);
        byte[] bArr = this.sampleData;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.sampleDataStart, bArr2, 0, i3);
        this.sampleDataStart = 0;
        this.sampleDataEnd = i3;
        this.sampleData = bArr2;
    }
}
