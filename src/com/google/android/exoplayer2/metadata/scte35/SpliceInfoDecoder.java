package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.SimpleMetadataDecoder;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class SpliceInfoDecoder extends SimpleMetadataDecoder {
    private final ParsableByteArray sectionData = new ParsableByteArray();
    private final ParsableBitArray sectionHeader = new ParsableBitArray();
    private TimestampAdjuster timestampAdjuster;

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    public Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
        if (timestampAdjuster == null || metadataInputBuffer.subsampleOffsetUs != timestampAdjuster.getTimestampOffsetUs()) {
            TimestampAdjuster timestampAdjuster2 = new TimestampAdjuster(metadataInputBuffer.timeUs);
            this.timestampAdjuster = timestampAdjuster2;
            timestampAdjuster2.adjustSampleTimestamp(metadataInputBuffer.timeUs - metadataInputBuffer.subsampleOffsetUs);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.sectionData.reset(bArrArray, iLimit);
        this.sectionHeader.reset(bArrArray, iLimit);
        this.sectionHeader.skipBits(39);
        long bits = (((long) this.sectionHeader.readBits(1)) << 32) | ((long) this.sectionHeader.readBits(32));
        this.sectionHeader.skipBits(20);
        int bits2 = this.sectionHeader.readBits(12);
        int bits3 = this.sectionHeader.readBits(8);
        this.sectionData.skipBytes(14);
        if (bits3 == 0) {
            spliceNullCommand = new SpliceNullCommand();
        } else if (bits3 == 255) {
            spliceNullCommand = PrivateCommand.parseFromSection(this.sectionData, bits2, bits);
        } else if (bits3 == 4) {
            spliceNullCommand = SpliceScheduleCommand.parseFromSection(this.sectionData);
        } else if (bits3 == 5) {
            spliceNullCommand = SpliceInsertCommand.parseFromSection(this.sectionData, bits, this.timestampAdjuster);
        } else {
            spliceNullCommand = bits3 != 6 ? null : TimeSignalCommand.parseFromSection(this.sectionData, bits, this.timestampAdjuster);
        }
        return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
    }
}
