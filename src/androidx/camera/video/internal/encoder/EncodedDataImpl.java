package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public class EncodedDataImpl implements EncodedData {
    private final int mBufferIndex;
    private final MediaCodec.BufferInfo mBufferInfo;
    private final ByteBuffer mByteBuffer;
    private final AtomicBoolean mClosed = new AtomicBoolean(false);
    private final CallbackToFutureAdapter.Completer mClosedCompleter;
    private final ListenableFuture mClosedFuture;
    private final MediaCodec mMediaCodec;

    EncodedDataImpl(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        this.mMediaCodec = (MediaCodec) Preconditions.checkNotNull(mediaCodec);
        this.mBufferIndex = i;
        this.mByteBuffer = mediaCodec.getOutputBuffer(i);
        this.mBufferInfo = (MediaCodec.BufferInfo) Preconditions.checkNotNull(bufferInfo);
        final AtomicReference atomicReference = new AtomicReference();
        this.mClosedFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.internal.encoder.EncodedDataImpl$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return EncodedDataImpl.m2025$r8$lambda$gWFewtZsIRF8vB36WzpA_DL50k(atomicReference, completer);
            }
        });
        this.mClosedCompleter = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference.get());
    }

    /* JADX INFO: renamed from: $r8$lambda$gWFewtZsIRF8vB36WzpA_DL-50k, reason: not valid java name */
    public static /* synthetic */ Object m2025$r8$lambda$gWFewtZsIRF8vB36WzpA_DL50k(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return "Data closed";
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public long getPresentationTimeUs() {
        return this.mBufferInfo.presentationTimeUs;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public long size() {
        return this.mBufferInfo.size;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData
    public boolean isKeyFrame() {
        return (this.mBufferInfo.flags & 1) != 0;
    }

    @Override // androidx.camera.video.internal.encoder.EncodedData, java.lang.AutoCloseable
    public void close() {
        if (this.mClosed.getAndSet(true)) {
            return;
        }
        try {
            this.mMediaCodec.releaseOutputBuffer(this.mBufferIndex, false);
            this.mClosedCompleter.set(null);
        } catch (IllegalStateException e) {
            this.mClosedCompleter.setException(e);
        }
    }

    public ListenableFuture getClosedFuture() {
        return Futures.nonCancellationPropagating(this.mClosedFuture);
    }
}
