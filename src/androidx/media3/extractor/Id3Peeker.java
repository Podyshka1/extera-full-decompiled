package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import java.io.EOFException;

/* JADX INFO: loaded from: classes4.dex */
public final class Id3Peeker {
    private final ParsableByteArray scratch = new ParsableByteArray(10);

    public Metadata peekId3Data(ExtractorInput extractorInput, Id3Decoder.FramePredicate framePredicate, int i) throws Throwable {
        Metadata metadataDecode = null;
        int i2 = 0;
        while (peekId3HeaderIntoScratch(extractorInput, i)) {
            int position = this.scratch.getPosition();
            this.scratch.skipBytes(6);
            int synchSafeInt = this.scratch.readSynchSafeInt();
            int i3 = synchSafeInt + 10;
            if (metadataDecode == null) {
                byte[] bArr = new byte[i3];
                System.arraycopy(this.scratch.getData(), position, bArr, 0, 10);
                extractorInput.peekFully(bArr, 10, synchSafeInt);
                metadataDecode = new Id3Decoder(framePredicate).decode(bArr, i3);
            } else {
                extractorInput.advancePeekPosition(synchSafeInt);
            }
            i2 += i3;
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i2);
        return metadataDecode;
    }

    private boolean peekId3HeaderIntoScratch(ExtractorInput extractorInput, int i) {
        int i2 = 0;
        do {
            int i3 = i2 % 10;
            int i4 = i3 + 10;
            if (i3 == 0 && i2 != 0) {
                System.arraycopy(this.scratch.getData(), 10, this.scratch.getData(), 0, 9);
            }
            int i5 = i2 != 0 ? 1 : 10;
            try {
                extractorInput.peekFully(this.scratch.getData(), i4 - i5, i5);
                this.scratch.setPosition(i3);
                this.scratch.setLimit(i4);
                if (this.scratch.peekUnsignedInt24() == 4801587) {
                    return true;
                }
                if (MpegAudioUtil.getFrameSize(this.scratch.peekInt()) != -1) {
                    return false;
                }
                if (i2 == 0) {
                    this.scratch.ensureCapacity(20);
                }
                i2++;
            } catch (EOFException unused) {
            }
        } while (i2 <= i);
        return false;
    }
}
