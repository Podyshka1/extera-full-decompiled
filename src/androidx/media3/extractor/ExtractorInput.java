package androidx.media3.extractor;

import androidx.media3.common.DataReader;

/* JADX INFO: loaded from: classes4.dex */
public interface ExtractorInput extends DataReader {
    void advancePeekPosition(int i);

    boolean advancePeekPosition(int i, boolean z);

    long getLength();

    long getPeekPosition();

    long getPosition();

    int peek(byte[] bArr, int i, int i2);

    void peekFully(byte[] bArr, int i, int i2);

    boolean peekFully(byte[] bArr, int i, int i2, boolean z);

    @Override // androidx.media3.common.DataReader
    int read(byte[] bArr, int i, int i2);

    void readFully(byte[] bArr, int i, int i2);

    boolean readFully(byte[] bArr, int i, int i2, boolean z);

    void resetPeekPosition();

    int skip(int i);

    void skipFully(int i);

    boolean skipFully(int i, boolean z);
}
