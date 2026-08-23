package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.IndexSeekMap;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.primitives.Ints;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SubtitleExtractor implements Extractor {
    private int bytesRead;
    private ExtractorOutput extractorOutput;
    private final Format format;
    private final SubtitleDecoder subtitleDecoder;
    private TrackOutput trackOutput;
    private final CueEncoder cueEncoder = new CueEncoder();
    private final ParsableByteArray subtitleData = new ParsableByteArray();
    private final List timestamps = new ArrayList();
    private final List samples = new ArrayList();
    private int state = 0;
    private long seekTimeUs = -9223372036854775807L;

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return true;
    }

    public SubtitleExtractor(SubtitleDecoder subtitleDecoder, Format format) {
        this.subtitleDecoder = subtitleDecoder;
        this.format = format.buildUpon().setSampleMimeType("text/x-exoplayer-cues").setCodecs(format.sampleMimeType).build();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        Assertions.checkState(this.state == 0);
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 3);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(new IndexSeekMap(new long[]{0}, new long[]{0}, -9223372036854775807L));
        this.trackOutput.format(this.format);
        this.state = 1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException, InterruptedIOException {
        int i = this.state;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        if (this.state == 1) {
            this.subtitleData.reset(extractorInput.getLength() != -1 ? Ints.checkedCast(extractorInput.getLength()) : 1024);
            this.bytesRead = 0;
            this.state = 2;
        }
        if (this.state == 2 && readFromInput(extractorInput)) {
            decode();
            writeToOutput();
            this.state = 4;
        }
        if (this.state == 3 && skipInput(extractorInput)) {
            writeToOutput();
            this.state = 4;
        }
        return this.state == 4 ? -1 : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        int i = this.state;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        this.seekTimeUs = j2;
        if (this.state == 2) {
            this.state = 1;
        }
        if (this.state == 4) {
            this.state = 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
        if (this.state == 5) {
            return;
        }
        this.subtitleDecoder.release();
        this.state = 5;
    }

    private boolean skipInput(ExtractorInput extractorInput) {
        return extractorInput.skip((extractorInput.getLength() > (-1L) ? 1 : (extractorInput.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.checkedCast(extractorInput.getLength()) : 1024) == -1;
    }

    private boolean readFromInput(ExtractorInput extractorInput) {
        int iCapacity = this.subtitleData.capacity();
        int i = this.bytesRead;
        if (iCapacity == i) {
            this.subtitleData.ensureCapacity(i + 1024);
        }
        int i2 = extractorInput.read(this.subtitleData.getData(), this.bytesRead, this.subtitleData.capacity() - this.bytesRead);
        if (i2 != -1) {
            this.bytesRead += i2;
        }
        long length = extractorInput.getLength();
        return (length != -1 && ((long) this.bytesRead) == length) || i2 == -1;
    }

    private void decode() throws ParserException, InterruptedIOException {
        try {
            SubtitleInputBuffer subtitleInputBuffer = (SubtitleInputBuffer) this.subtitleDecoder.dequeueInputBuffer();
            while (subtitleInputBuffer == null) {
                Thread.sleep(5L);
                subtitleInputBuffer = (SubtitleInputBuffer) this.subtitleDecoder.dequeueInputBuffer();
            }
            subtitleInputBuffer.ensureSpaceForWrite(this.bytesRead);
            subtitleInputBuffer.data.put(this.subtitleData.getData(), 0, this.bytesRead);
            subtitleInputBuffer.data.limit(this.bytesRead);
            this.subtitleDecoder.queueInputBuffer(subtitleInputBuffer);
            SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) this.subtitleDecoder.dequeueOutputBuffer();
            while (subtitleOutputBuffer == null) {
                Thread.sleep(5L);
                subtitleOutputBuffer = (SubtitleOutputBuffer) this.subtitleDecoder.dequeueOutputBuffer();
            }
            for (int i = 0; i < subtitleOutputBuffer.getEventTimeCount(); i++) {
                byte[] bArrEncode = this.cueEncoder.encode(subtitleOutputBuffer.getCues(subtitleOutputBuffer.getEventTime(i)));
                this.timestamps.add(Long.valueOf(subtitleOutputBuffer.getEventTime(i)));
                this.samples.add(new ParsableByteArray(bArrEncode));
            }
            subtitleOutputBuffer.release();
        } catch (SubtitleDecoderException e) {
            throw ParserException.createForMalformedContainer("SubtitleDecoder failed.", e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    private void writeToOutput() {
        Assertions.checkStateNotNull(this.trackOutput);
        Assertions.checkState(this.timestamps.size() == this.samples.size());
        long j = this.seekTimeUs;
        for (int iBinarySearchFloor = j == -9223372036854775807L ? 0 : Util.binarySearchFloor(this.timestamps, (Comparable) Long.valueOf(j), true, true); iBinarySearchFloor < this.samples.size(); iBinarySearchFloor++) {
            ParsableByteArray parsableByteArray = (ParsableByteArray) this.samples.get(iBinarySearchFloor);
            parsableByteArray.setPosition(0);
            int length = parsableByteArray.getData().length;
            this.trackOutput.sampleData(parsableByteArray, length);
            this.trackOutput.sampleMetadata(((Long) this.timestamps.get(iBinarySearchFloor)).longValue(), 1, length, 0, null);
        }
    }
}
