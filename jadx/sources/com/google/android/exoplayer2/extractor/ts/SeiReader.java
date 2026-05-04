package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.CeaUtil;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class SeiReader {
    private final List closedCaptionFormats;
    private final TrackOutput[] outputs;

    public SeiReader(List list) {
        this.closedCaptionFormats = list;
        this.outputs = new TrackOutput[list.size()];
    }

    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i = 0; i < this.outputs.length; i++) {
            trackIdGenerator.generateNewId();
            TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 3);
            Format format = (Format) this.closedCaptionFormats.get(i);
            String str = format.sampleMimeType;
            Assertions.checkArgument("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            String formatId = format.id;
            if (formatId == null) {
                formatId = trackIdGenerator.getFormatId();
            }
            trackOutputTrack.format(new Format.Builder().setId(formatId).setSampleMimeType(str).setSelectionFlags(format.selectionFlags).setLanguage(format.language).setAccessibilityChannel(format.accessibilityChannel).setInitializationData(format.initializationData).build());
            this.outputs[i] = trackOutputTrack;
        }
    }

    public void consume(long j, ParsableByteArray parsableByteArray) {
        CeaUtil.consume(j, parsableByteArray, this.outputs);
    }
}
