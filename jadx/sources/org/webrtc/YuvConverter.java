package org.webrtc;

import android.graphics.Matrix;
import android.opengl.GLES20;
import java.nio.ByteBuffer;
import org.telegram.messenger.FileLog;
import org.webrtc.GlGenericDrawer;
import org.webrtc.ThreadUtils;
import org.webrtc.VideoFrame;

/* JADX INFO: loaded from: classes7.dex */
public class YuvConverter {
    private static final String FRAGMENT_SHADER = "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n";
    private final GlGenericDrawer drawer;
    private final GlTextureFrameBuffer i420TextureFrameBuffer;
    private final ShaderCallbacks shaderCallbacks;
    private final ThreadUtils.ThreadChecker threadChecker;
    private final VideoFrameDrawer videoFrameDrawer;

    private static class ShaderCallbacks implements GlGenericDrawer.ShaderCallbacks {
        private float[] coeffs;
        private int coeffsLoc;
        private float stepSize;
        private int xUnitLoc;
        private static final float[] yCoeffs = {0.256788f, 0.504129f, 0.0979059f, 0.0627451f};
        private static final float[] uCoeffs = {-0.148223f, -0.290993f, 0.439216f, 0.501961f};
        private static final float[] vCoeffs = {0.439216f, -0.367788f, -0.0714274f, 0.501961f};

        private ShaderCallbacks() {
        }

        public void setPlaneY() {
            this.coeffs = yCoeffs;
            this.stepSize = 1.0f;
        }

        public void setPlaneU() {
            this.coeffs = uCoeffs;
            this.stepSize = 2.0f;
        }

        public void setPlaneV() {
            this.coeffs = vCoeffs;
            this.stepSize = 2.0f;
        }

        @Override // org.webrtc.GlGenericDrawer.ShaderCallbacks
        public void onNewShader(GlShader glShader) {
            this.xUnitLoc = glShader.getUniformLocation("xUnit");
            this.coeffsLoc = glShader.getUniformLocation("coeffs");
        }

        @Override // org.webrtc.GlGenericDrawer.ShaderCallbacks
        public void onPrepareShader(GlShader glShader, float[] fArr, int i, int i2, int i3, int i4) {
            GLES20.glUniform4fv(this.coeffsLoc, 1, this.coeffs, 0);
            int i5 = this.xUnitLoc;
            float f = this.stepSize;
            float f2 = i;
            GLES20.glUniform2f(i5, (fArr[0] * f) / f2, (f * fArr[1]) / f2);
        }
    }

    public YuvConverter() {
        this(new VideoFrameDrawer());
    }

    public YuvConverter(VideoFrameDrawer videoFrameDrawer) {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.threadChecker = threadChecker;
        this.i420TextureFrameBuffer = new GlTextureFrameBuffer(6408);
        ShaderCallbacks shaderCallbacks = new ShaderCallbacks();
        this.shaderCallbacks = shaderCallbacks;
        this.drawer = new GlGenericDrawer(FRAGMENT_SHADER, shaderCallbacks);
        this.videoFrameDrawer = videoFrameDrawer;
        threadChecker.detachThread();
    }

    public VideoFrame.I420Buffer convert(VideoFrame.TextureBuffer textureBuffer) {
        int i;
        final ByteBuffer byteBuffer;
        int i2;
        int i3;
        this.threadChecker.checkIsOnValidThread();
        VideoFrame.TextureBuffer textureBuffer2 = (VideoFrame.TextureBuffer) this.videoFrameDrawer.prepareBufferForViewportSize(textureBuffer, textureBuffer.getWidth(), textureBuffer.getHeight());
        int width = textureBuffer2.getWidth();
        int height = textureBuffer2.getHeight();
        int i4 = ((width + 7) / 8) * 8;
        int i5 = (height + 1) / 2;
        int i6 = height + i5;
        ByteBuffer byteBufferNativeAllocateByteBuffer = JniCommon.nativeAllocateByteBuffer(i4 * i6);
        int i7 = i4 / 4;
        Matrix matrix = new Matrix();
        matrix.preTranslate(0.5f, 0.5f);
        matrix.preScale(1.0f, -1.0f);
        matrix.preTranslate(-0.5f, -0.5f);
        try {
            this.i420TextureFrameBuffer.setSize(i7, i6);
            GLES20.glBindFramebuffer(36160, this.i420TextureFrameBuffer.getFrameBufferId());
            GlUtil.checkNoGLES2Error("glBindFramebuffer");
            this.shaderCallbacks.setPlaneY();
            try {
                i = i4;
                i2 = 0;
                try {
                    VideoFrameDrawer.drawTexture(this.drawer, textureBuffer2, matrix, width, height, width, height, 0, 0, i7, height, false);
                    this.shaderCallbacks.setPlaneU();
                    try {
                        VideoFrameDrawer.drawTexture(this.drawer, textureBuffer2, matrix, width, height, width, height, 0, height, i7 / 2, i5, false);
                        this.shaderCallbacks.setPlaneV();
                        VideoFrameDrawer.drawTexture(this.drawer, textureBuffer2, matrix, width, height, width, height, i7 / 2, height, i7 / 2, i5, false);
                        i3 = i5;
                    } catch (Exception e) {
                        e = e;
                        i3 = i5;
                    }
                } catch (Exception e2) {
                    e = e2;
                    i3 = i5;
                }
            } catch (Exception e3) {
                e = e3;
                i = i4;
                i3 = i5;
                byteBuffer = byteBufferNativeAllocateByteBuffer;
                i2 = 0;
            }
        } catch (Exception e4) {
            e = e4;
            i = i4;
            byteBuffer = byteBufferNativeAllocateByteBuffer;
            i2 = 0;
            i3 = i5;
        }
        try {
            byteBuffer = byteBufferNativeAllocateByteBuffer;
        } catch (Exception e5) {
            e = e5;
            byteBuffer = byteBufferNativeAllocateByteBuffer;
            FileLog.m1136e(e);
            int i8 = i * height;
            int i9 = i / 2;
            int i10 = i8 + i9;
            byteBuffer.position(i2);
            byteBuffer.limit(i8);
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBuffer.position(i8);
            int i11 = (i * (i3 - 1)) + i9;
            byteBuffer.limit(i8 + i11);
            ByteBuffer byteBufferSlice2 = byteBuffer.slice();
            byteBuffer.position(i10);
            byteBuffer.limit(i10 + i11);
            ByteBuffer byteBufferSlice3 = byteBuffer.slice();
            textureBuffer2.release();
            return JavaI420Buffer.wrap(width, height, byteBufferSlice, i, byteBufferSlice2, i, byteBufferSlice3, i, new Runnable() { // from class: org.webrtc.YuvConverter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    JniCommon.nativeFreeByteBuffer(byteBuffer);
                }
            });
        }
        try {
            GLES20.glReadPixels(0, 0, this.i420TextureFrameBuffer.getWidth(), this.i420TextureFrameBuffer.getHeight(), 6408, 5121, byteBuffer);
            GlUtil.checkNoGLES2Error("YuvConverter.convert");
            GLES20.glBindFramebuffer(36160, 0);
        } catch (Exception e6) {
            e = e6;
            FileLog.m1136e(e);
        }
        int i82 = i * height;
        int i92 = i / 2;
        int i102 = i82 + i92;
        byteBuffer.position(i2);
        byteBuffer.limit(i82);
        ByteBuffer byteBufferSlice4 = byteBuffer.slice();
        byteBuffer.position(i82);
        int i112 = (i * (i3 - 1)) + i92;
        byteBuffer.limit(i82 + i112);
        ByteBuffer byteBufferSlice22 = byteBuffer.slice();
        byteBuffer.position(i102);
        byteBuffer.limit(i102 + i112);
        ByteBuffer byteBufferSlice32 = byteBuffer.slice();
        textureBuffer2.release();
        return JavaI420Buffer.wrap(width, height, byteBufferSlice4, i, byteBufferSlice22, i, byteBufferSlice32, i, new Runnable() { // from class: org.webrtc.YuvConverter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                JniCommon.nativeFreeByteBuffer(byteBuffer);
            }
        });
    }

    public void release() {
        this.threadChecker.checkIsOnValidThread();
        this.drawer.release();
        this.i420TextureFrameBuffer.release();
        this.videoFrameDrawer.release();
        this.threadChecker.detachThread();
    }
}
