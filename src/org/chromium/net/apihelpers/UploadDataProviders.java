package org.chromium.net.apihelpers;

import java.nio.ByteBuffer;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UploadDataProviders {
    public static UploadDataProvider create(byte[] bArr, int i, int i2) {
        return new ByteBufferUploadProvider(ByteBuffer.wrap(bArr, i, i2).slice());
    }

    public static UploadDataProvider create(byte[] bArr) {
        return create(bArr, 0, bArr.length);
    }

    public static final class ByteBufferUploadProvider extends UploadDataProvider {
        private final ByteBuffer mUploadBuffer;

        private ByteBufferUploadProvider(ByteBuffer byteBuffer) {
            this.mUploadBuffer = byteBuffer;
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() {
            return this.mUploadBuffer.limit();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (!byteBuffer.hasRemaining()) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Cronet passed a buffer with no bytes remaining");
                return;
            }
            int iRemaining = byteBuffer.remaining();
            int iRemaining2 = this.mUploadBuffer.remaining();
            ByteBuffer byteBuffer2 = this.mUploadBuffer;
            if (iRemaining >= iRemaining2) {
                byteBuffer.put(byteBuffer2);
            } else {
                int iLimit = byteBuffer2.limit();
                ByteBuffer byteBuffer3 = this.mUploadBuffer;
                byteBuffer.put(this.mUploadBuffer);
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) {
            uploadDataSink.onRewindSucceeded();
        }
    }
}
