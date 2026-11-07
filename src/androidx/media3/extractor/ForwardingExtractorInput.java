package androidx.media3.extractor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ForwardingExtractorInput implements ExtractorInput {
    private final ExtractorInput input;

    public ForwardingExtractorInput(ExtractorInput extractorInput) {
        this.input = extractorInput;
    }

    @Override // androidx.media3.extractor.ExtractorInput, androidx.media3.common.DataReader
    public int read(byte[] bArr, int i, int i2) {
        return this.input.read(bArr, i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) {
        return this.input.readFully(bArr, i, i2, z);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i, int i2) {
        this.input.readFully(bArr, i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int skip(int i) {
        return this.input.skip(i);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean skipFully(int i, boolean z) {
        return this.input.skipFully(i, z);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void skipFully(int i) {
        this.input.skipFully(i);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public int peek(byte[] bArr, int i, int i2) {
        return this.input.peek(bArr, i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i, int i2, boolean z) {
        return this.input.peekFully(bArr, i, i2, z);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i, int i2) {
        this.input.peekFully(bArr, i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public boolean advancePeekPosition(int i, boolean z) {
        return this.input.advancePeekPosition(i, z);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void advancePeekPosition(int i) {
        this.input.advancePeekPosition(i);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.input.resetPeekPosition();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.input.getPeekPosition();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPosition() {
        return this.input.getPosition();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getLength() {
        return this.input.getLength();
    }
}
