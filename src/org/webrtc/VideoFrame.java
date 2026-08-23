package org.webrtc;

import android.graphics.Matrix;
import java.nio.ByteBuffer;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class VideoFrame implements RefCounted {
    private final Buffer buffer;
    private final int rotation;
    private final long timestampNs;

    public interface Buffer extends RefCounted {
        @CalledByNative("Buffer")
        Buffer cropAndScale(int i, int i2, int i3, int i4, int i5, int i6);

        default int getBufferType() {
            return 0;
        }

        @CalledByNative("Buffer")
        int getHeight();

        @CalledByNative("Buffer")
        int getWidth();

        @Override // org.webrtc.RefCounted
        @CalledByNative("Buffer")
        void release();

        @Override // org.webrtc.RefCounted
        @CalledByNative("Buffer")
        void retain();

        @CalledByNative("Buffer")
        I420Buffer toI420();
    }

    public interface I420Buffer extends Buffer {
        @Override // org.webrtc.VideoFrame.Buffer
        default int getBufferType() {
            return 1;
        }

        @CalledByNative("I420Buffer")
        ByteBuffer getDataU();

        @CalledByNative("I420Buffer")
        ByteBuffer getDataV();

        @CalledByNative("I420Buffer")
        ByteBuffer getDataY();

        @CalledByNative("I420Buffer")
        int getStrideU();

        @CalledByNative("I420Buffer")
        int getStrideV();

        @CalledByNative("I420Buffer")
        int getStrideY();
    }

    public interface TextureBuffer extends Buffer {
        int getTextureId();

        Matrix getTransformMatrix();

        Type getType();

        public enum Type {
            OES(36197),
            RGB(3553);

            private final int glTarget;

            Type(int i) {
                this.glTarget = i;
            }

            public int getGlTarget() {
                return this.glTarget;
            }
        }

        default TextureBuffer applyTransformMatrix(Matrix matrix, int i, int i2) {
            throw new UnsupportedOperationException("Not implemented");
        }

        default int getUnscaledWidth() {
            return getWidth();
        }

        default int getUnscaledHeight() {
            return getHeight();
        }
    }

    @CalledByNative
    public VideoFrame(Buffer buffer, int i, long j) {
        if (buffer == null) {
            f$$ExternalSyntheticBUOutline1.m178m("buffer not allowed to be null");
            throw null;
        }
        if (i % 90 != 0) {
            f$$ExternalSyntheticBUOutline1.m178m("rotation must be a multiple of 90");
            throw null;
        }
        this.buffer = buffer;
        this.rotation = i;
        this.timestampNs = j;
    }

    @CalledByNative
    public Buffer getBuffer() {
        return this.buffer;
    }

    @CalledByNative
    public int getRotation() {
        return this.rotation;
    }

    @CalledByNative
    public long getTimestampNs() {
        return this.timestampNs;
    }

    public int getRotatedWidth() {
        int i = this.rotation % 180;
        Buffer buffer = this.buffer;
        if (i == 0) {
            return buffer.getWidth();
        }
        return buffer.getHeight();
    }

    public int getRotatedHeight() {
        int i = this.rotation % 180;
        Buffer buffer = this.buffer;
        if (i == 0) {
            return buffer.getHeight();
        }
        return buffer.getWidth();
    }

    @Override // org.webrtc.RefCounted
    public void retain() {
        this.buffer.retain();
    }

    @Override // org.webrtc.RefCounted
    @CalledByNative
    public void release() {
        this.buffer.release();
    }
}
