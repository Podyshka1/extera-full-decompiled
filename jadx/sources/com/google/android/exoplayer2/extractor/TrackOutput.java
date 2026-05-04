package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public interface TrackOutput {
    void format(Format format);

    int sampleData(DataReader dataReader, int i, boolean z);

    int sampleData(DataReader dataReader, int i, boolean z, int i2);

    void sampleData(ParsableByteArray parsableByteArray, int i);

    void sampleData(ParsableByteArray parsableByteArray, int i, int i2);

    void sampleMetadata(long j, int i, int i2, int i3, CryptoData cryptoData);

    public static final class CryptoData {
        public final int clearBlocks;
        public final int cryptoMode;
        public final int encryptedBlocks;
        public final byte[] encryptionKey;

        public CryptoData(int i, byte[] bArr, int i2, int i3) {
            this.cryptoMode = i;
            this.encryptionKey = bArr;
            this.encryptedBlocks = i2;
            this.clearBlocks = i3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && CryptoData.class == obj.getClass()) {
                CryptoData cryptoData = (CryptoData) obj;
                if (this.cryptoMode == cryptoData.cryptoMode && this.encryptedBlocks == cryptoData.encryptedBlocks && this.clearBlocks == cryptoData.clearBlocks && Arrays.equals(this.encryptionKey, cryptoData.encryptionKey)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (((((this.cryptoMode * 31) + Arrays.hashCode(this.encryptionKey)) * 31) + this.encryptedBlocks) * 31) + this.clearBlocks;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.extractor.TrackOutput$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
