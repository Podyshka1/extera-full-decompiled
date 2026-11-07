package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import kotlin.UByte;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class MpegAudioReader implements ElementaryStreamReader {
    private final String containerMimeType;
    private String formatId;
    private int frameBytesRead;
    private long frameDurationUs;
    private int frameSize;
    private boolean hasOutputFormat;
    private final MpegAudioUtil.Header header;
    private final ParsableByteArray headerScratch;
    private final String language;
    private boolean lastByteWasFF;
    private TrackOutput output;
    private final int roleFlags;
    private int state;
    private long timeUs;

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished(boolean z) {
    }

    public MpegAudioReader(String str) {
        this(null, 0, str);
    }

    public MpegAudioReader(String str, int i, String str2) {
        this.state = 0;
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        this.headerScratch = parsableByteArray;
        parsableByteArray.getData()[0] = -1;
        this.header = new MpegAudioUtil.Header();
        this.timeUs = -9223372036854775807L;
        this.language = str;
        this.roleFlags = i;
        this.containerMimeType = str2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.frameBytesRead = 0;
        this.lastByteWasFF = false;
        this.timeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        this.timeUs = j;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.output);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i == 0) {
                findHeader(parsableByteArray);
            } else if (i == 1) {
                readHeaderRemainder(parsableByteArray);
            } else if (i == 2) {
                readFrameRemainder(parsableByteArray);
            } else {
                MethodWriter$$ExternalSyntheticBUOutline0.m959m();
                return;
            }
        }
    }

    private void findHeader(ParsableByteArray parsableByteArray) {
        byte[] data = parsableByteArray.getData();
        int iLimit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < iLimit; position++) {
            byte b2 = data[position];
            boolean z = (b2 & UByte.MAX_VALUE) == 255;
            boolean z2 = this.lastByteWasFF && (b2 & 224) == 224;
            this.lastByteWasFF = z;
            if (z2) {
                parsableByteArray.setPosition(position + 1);
                this.lastByteWasFF = false;
                this.headerScratch.getData()[1] = data[position];
                this.frameBytesRead = 2;
                this.state = 1;
                return;
            }
        }
        parsableByteArray.setPosition(iLimit);
    }

    @RequiresNonNull({"output"})
    private void readHeaderRemainder(ParsableByteArray parsableByteArray) {
        int iMin = Math.min(parsableByteArray.bytesLeft(), 4 - this.frameBytesRead);
        parsableByteArray.readBytes(this.headerScratch.getData(), this.frameBytesRead, iMin);
        int i = this.frameBytesRead + iMin;
        this.frameBytesRead = i;
        if (i < 4) {
            return;
        }
        this.headerScratch.setPosition(0);
        if (!this.header.setForHeaderData(this.headerScratch.readInt())) {
            this.frameBytesRead = 0;
            this.state = 1;
            return;
        }
        MpegAudioUtil.Header header = this.header;
        this.frameSize = header.frameSize;
        if (!this.hasOutputFormat) {
            this.frameDurationUs = (((long) header.samplesPerFrame) * 1000000) / ((long) header.sampleRate);
            this.output.format(new Format.Builder().setId(this.formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType(this.header.mimeType).setMaxInputSize(4096).setChannelCount(this.header.channels).setSampleRate(this.header.sampleRate).setLanguage(this.language).setRoleFlags(this.roleFlags).build());
            this.hasOutputFormat = true;
        }
        this.headerScratch.setPosition(0);
        this.output.sampleData(this.headerScratch, 4);
        this.state = 2;
    }

    @RequiresNonNull({"output"})
    private void readFrameRemainder(ParsableByteArray parsableByteArray) {
        int iMin = Math.min(parsableByteArray.bytesLeft(), this.frameSize - this.frameBytesRead);
        this.output.sampleData(parsableByteArray, iMin);
        int i = this.frameBytesRead + iMin;
        this.frameBytesRead = i;
        if (i < this.frameSize) {
            return;
        }
        Assertions.checkState(this.timeUs != -9223372036854775807L);
        this.output.sampleMetadata(this.timeUs, 1, this.frameSize, 0, null);
        this.timeUs += this.frameDurationUs;
        this.frameBytesRead = 0;
        this.state = 0;
    }
}
