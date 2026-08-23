package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultExtractorInput implements ExtractorInput {
    private final DataReader dataReader;
    private int peekBufferLength;
    private int peekBufferPosition;
    private long position;
    private final long streamLength;
    private byte[] peekBuffer = new byte[65536];
    private final byte[] scratchSpace = new byte[4096];

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.extractor");
    }

    public DefaultExtractorInput(DataReader dataReader, long j, long j2) {
        this.dataReader = dataReader;
        this.position = j;
        this.streamLength = j2;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput, com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        int fromPeekBuffer = readFromPeekBuffer(bArr, i, i2);
        if (fromPeekBuffer == 0) {
            fromPeekBuffer = readFromUpstream(bArr, i, i2, 0, true);
        }
        commitBytesRead(fromPeekBuffer);
        return fromPeekBuffer;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) throws EOFException, InterruptedIOException {
        int fromPeekBuffer = readFromPeekBuffer(bArr, i, i2);
        while (fromPeekBuffer < i2 && fromPeekBuffer != -1) {
            fromPeekBuffer = readFromUpstream(bArr, i, i2, fromPeekBuffer, z);
        }
        commitBytesRead(fromPeekBuffer);
        return fromPeekBuffer != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        readFully(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public int skip(int i) throws EOFException, InterruptedIOException {
        int iSkipFromPeekBuffer = skipFromPeekBuffer(i);
        if (iSkipFromPeekBuffer == 0) {
            byte[] bArr = this.scratchSpace;
            iSkipFromPeekBuffer = readFromUpstream(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        commitBytesRead(iSkipFromPeekBuffer);
        return iSkipFromPeekBuffer;
    }

    public boolean skipFully(int i, boolean z) throws EOFException, InterruptedIOException {
        int iSkipFromPeekBuffer = skipFromPeekBuffer(i);
        while (iSkipFromPeekBuffer < i && iSkipFromPeekBuffer != -1) {
            iSkipFromPeekBuffer = readFromUpstream(this.scratchSpace, -iSkipFromPeekBuffer, Math.min(i, this.scratchSpace.length + iSkipFromPeekBuffer), iSkipFromPeekBuffer, z);
        }
        commitBytesRead(iSkipFromPeekBuffer);
        return iSkipFromPeekBuffer != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void skipFully(int i) throws EOFException, InterruptedIOException {
        skipFully(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public int peek(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        DefaultExtractorInput defaultExtractorInput;
        int iMin;
        ensureSpaceForPeek(i2);
        int i3 = this.peekBufferLength;
        int i4 = this.peekBufferPosition;
        int i5 = i3 - i4;
        if (i5 == 0) {
            defaultExtractorInput = this;
            iMin = defaultExtractorInput.readFromUpstream(this.peekBuffer, i4, i2, 0, true);
            if (iMin == -1) {
                return -1;
            }
            defaultExtractorInput.peekBufferLength += iMin;
        } else {
            defaultExtractorInput = this;
            iMin = Math.min(i2, i5);
        }
        System.arraycopy(defaultExtractorInput.peekBuffer, defaultExtractorInput.peekBufferPosition, bArr, i, iMin);
        defaultExtractorInput.peekBufferPosition += iMin;
        return iMin;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i, int i2, boolean z) {
        if (!advancePeekPosition(i2, z)) {
            return false;
        }
        System.arraycopy(this.peekBuffer, this.peekBufferPosition - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i, int i2) {
        peekFully(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean advancePeekPosition(int i, boolean z) throws EOFException, InterruptedIOException {
        ensureSpaceForPeek(i);
        int fromUpstream = this.peekBufferLength - this.peekBufferPosition;
        while (fromUpstream < i) {
            int i2 = i;
            boolean z2 = z;
            fromUpstream = readFromUpstream(this.peekBuffer, this.peekBufferPosition, i2, fromUpstream, z2);
            if (fromUpstream == -1) {
                return false;
            }
            this.peekBufferLength = this.peekBufferPosition + fromUpstream;
            i = i2;
            z = z2;
        }
        this.peekBufferPosition += i;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void advancePeekPosition(int i) throws EOFException, InterruptedIOException {
        advancePeekPosition(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.peekBufferPosition = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.position + ((long) this.peekBufferPosition);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getPosition() {
        return this.position;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getLength() {
        return this.streamLength;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void setRetryPosition(long j, Throwable th) throws Throwable {
        Assertions.checkArgument(j >= 0);
        this.position = j;
        throw th;
    }

    private void ensureSpaceForPeek(int i) {
        int i2 = this.peekBufferPosition + i;
        byte[] bArr = this.peekBuffer;
        if (i2 > bArr.length) {
            this.peekBuffer = Arrays.copyOf(this.peekBuffer, Util.constrainValue(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    private int skipFromPeekBuffer(int i) {
        int iMin = Math.min(this.peekBufferLength, i);
        updatePeekBuffer(iMin);
        return iMin;
    }

    private int readFromPeekBuffer(byte[] bArr, int i, int i2) {
        int i3 = this.peekBufferLength;
        if (i3 == 0) {
            return 0;
        }
        int iMin = Math.min(i3, i2);
        System.arraycopy(this.peekBuffer, 0, bArr, i, iMin);
        updatePeekBuffer(iMin);
        return iMin;
    }

    private void updatePeekBuffer(int i) {
        int i2 = this.peekBufferLength - i;
        this.peekBufferLength = i2;
        this.peekBufferPosition = 0;
        byte[] bArr = this.peekBuffer;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.peekBuffer = bArr2;
    }

    private int readFromUpstream(byte[] bArr, int i, int i2, int i3, boolean z) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i4 = this.dataReader.read(bArr, i + i3, i2 - i3);
        if (i4 != -1) {
            return i3 + i4;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    private void commitBytesRead(int i) {
        if (i != -1) {
            this.position += (long) i;
        }
    }
}
