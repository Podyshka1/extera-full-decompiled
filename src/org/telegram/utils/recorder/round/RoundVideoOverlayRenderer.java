package org.telegram.utils.recorder.round;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.opengl.GLES20;
import android.util.Size;
import android.util.SparseArray;
import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.ui.Components.RLottieNative;

/* JADX INFO: loaded from: classes8.dex */
final class RoundVideoOverlayRenderer {
    private final CameraProgram cameraProgram;
    private FloatBuffer cameraTextureBuffer;
    private final boolean compositionEnabled;
    private final Program copyProgram;
    private final boolean explicitTextureLod;
    private final int[] frameBuffers;
    private final GaussianBlurProgram gaussianBlurProgram;
    private boolean historyValid;
    private Size inputSize;
    private long lastHistoryFrameNs;
    private int logoFrame;
    private final MixProgram mixProgram;
    private final int outputSize;
    private FloatBuffer rotatedCameraTextureBuffer;
    private int sourceCropSize;
    private final GaussianBlurProgram switchGaussianBlurProgram;
    private final int switchNewBlurSize;
    private boolean switchNewFrameCaptured;
    private final TemporalProgram temporalProgram;
    private final FloatBuffer textureBuffer;
    private final int[] textures;
    private final TransitionProgram transitionProgram;
    private final FloatBuffer vertexBuffer;
    private final Program watermarkProgram;
    private static final SparseArray<WatermarkAtlas> cachedWatermarks = new SparseArray<>();
    private static final String GAUSSIAN_BLUR_FRAGMENT_SHADER = createGaussianBlurFragmentShader(4, 1.75f);
    private static final String SWITCH_GAUSSIAN_BLUR_FRAGMENT_SHADER = createGaussianBlurFragmentShader(9, 4.0f);
    private int historyReadTexture = 0;
    private int historyWriteTexture = 1;
    private int switchOldBackgroundTexture = 0;
    private int switchNewBackgroundTexture = 1;
    private float newSwitchBlurRadius = -1.0f;

    private float getSwitchNewMaximumBlurRadiusPx() {
        return 9.0f;
    }

    private static void unbindProgram(Program program) {
    }

    public RoundVideoOverlayRenderer(int i, Size size, int i2, boolean z) {
        int[] iArr = new int[8];
        this.frameBuffers = iArr;
        int[] iArr2 = new int[10];
        this.textures = iArr2;
        this.outputSize = i;
        int iMax = Math.max(1, i / 2);
        this.switchNewBlurSize = iMax;
        this.inputSize = size;
        this.sourceCropSize = i2;
        this.compositionEnabled = z;
        boolean zSupportsExplicitTextureLod = supportsExplicitTextureLod();
        this.explicitTextureLod = zSupportsExplicitTextureLod;
        this.cameraProgram = new CameraProgram("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        this.copyProgram = new Program("attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n", "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
        this.temporalProgram = z ? new TemporalProgram() : null;
        this.mixProgram = z ? new MixProgram() : null;
        this.transitionProgram = new TransitionProgram(z, zSupportsExplicitTextureLod);
        this.gaussianBlurProgram = new GaussianBlurProgram();
        this.switchGaussianBlurProgram = new GaussianBlurProgram(SWITCH_GAUSSIAN_BLUR_FRAGMENT_SHADER);
        this.watermarkProgram = z ? new Program("attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n", "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = vec4(1.0, 1.0, 1.0, texture2D(sTexture, vTextureCoord).a);\n}\n") : null;
        float[] fArr = new float[656];
        setTextureCoordinates(fArr, 0, 0.0f, 1.0f, 1.0f, 0.0f);
        float[] fArr2 = new float[48];
        setVertexCoordinates(fArr2, 0, -1.0f, 1.0f, 1.0f, -1.0f);
        this.cameraTextureBuffer = createCameraTextureBuffer(size, i2, false);
        this.rotatedCameraTextureBuffer = createCameraTextureBuffer(size, i2, true);
        GLES20.glGenTextures(iArr2.length, iArr2, 0);
        if (z) {
            createColorTexture(0, 48, 48, 9729);
            createColorTexture(1, 48, 48, 9729);
            createMaskTexture();
            createWatermarkAtlas(fArr2, fArr);
            createColorTexture(8, 48, 48, 9729);
        }
        createColorTexture(4, i, i, 9729);
        createColorTexture(5, 512, 512, 9729);
        createColorTexture(6, i, i, 9729);
        createColorTexture(7, iMax, iMax, 9729);
        createColorTexture(9, iMax, iMax, 9729);
        GLES20.glBindTexture(3553, 0);
        GLES20.glGenFramebuffers(iArr.length, iArr, 0);
        if (z) {
            attachFrameBuffer(0, 0);
            attachFrameBuffer(1, 1);
            attachFrameBuffer(6, 8);
        }
        attachFrameBuffer(2, 4);
        attachFrameBuffer(3, 5);
        attachFrameBuffer(4, 6);
        attachFrameBuffer(5, 7);
        attachFrameBuffer(7, 9);
        GLES20.glBindFramebuffer(36160, 0);
        this.vertexBuffer = createBuffer(fArr2);
        this.textureBuffer = createBuffer(fArr);
        GLES20.glEnableVertexAttribArray(0);
        GLES20.glEnableVertexAttribArray(1);
    }

    public void render(int i, float[] fArr, long j, int i2, int i3) {
        GLES20.glDisable(3042);
        if (this.compositionEnabled) {
            renderTemporalBackground(i, fArr, this.historyWriteTexture, getHistoryWeight(j));
            renderBackgroundBlur(this.historyWriteTexture);
            int i4 = this.historyReadTexture;
            int i5 = this.historyWriteTexture;
            this.historyReadTexture = i5;
            this.historyWriteTexture = i4;
            this.historyValid = true;
            this.lastHistoryFrameNs = j;
            renderMix(i, fArr, i5, i2, i3);
        } else {
            renderRawCameraToOutput(i, fArr, i2, i3);
        }
        renderWatermarks();
    }

    public void renderPreview(int i, float[] fArr, int i2, int i3) {
        GLES20.glDisable(3042);
        renderRawCameraToOutput(i, fArr, i2, i3);
    }

    public void updateInputConfiguration(Size size, int i) {
        this.inputSize = size;
        this.sourceCropSize = i;
        this.cameraTextureBuffer = createCameraTextureBuffer(size, i, false);
        this.rotatedCameraTextureBuffer = createCameraTextureBuffer(size, i, true);
        this.historyValid = false;
        this.lastHistoryFrameNs = 0L;
    }

    public void captureSwitchFrame(int i, float[] fArr, boolean z) {
        GLES20.glDisable(3042);
        if (!z) {
            setTextureMinFilter(5, 9729);
        }
        int i2 = z ? 4 : 2;
        int i3 = this.outputSize;
        renderRawCamera(i, fArr, i2, i3, i3);
        if (z) {
            int i4 = this.historyWriteTexture;
            this.switchNewBackgroundTexture = i4;
            if (this.compositionEnabled) {
                renderTemporalBackground(i, fArr, i4, 0.0f);
                renderBackgroundBlur(this.switchNewBackgroundTexture);
            }
            this.newSwitchBlurRadius = -1.0f;
            this.switchNewFrameCaptured = true;
            return;
        }
        renderTextureCopy(4, 3, 512, 512);
        generateOldSwitchMipmaps();
        this.switchOldBackgroundTexture = this.historyReadTexture;
        this.switchNewBackgroundTexture = this.historyWriteTexture;
        this.switchNewFrameCaptured = false;
        this.newSwitchBlurRadius = -1.0f;
    }

    public float getSwitchTargetBlurRadiusPx() {
        return ((this.outputSize * 4.0f) / 48.0f) * 1.15f;
    }

    public void renderSwitch(float f, float f2, float f3, int i, int i2) {
        if (this.switchNewFrameCaptured) {
            renderNewSwitchBlur(Math.min(f, getSwitchNewMaximumBlurRadiusPx()));
        }
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glViewport(0, 0, i, i2);
        GLES20.glDisable(3042);
        bindProgram(this.transitionProgram, 0);
        bindTexture(0, 4, this.transitionProgram.textureHandle);
        bindTexture(1, 5, this.transitionProgram.oldMipTextureHandle);
        bindTexture(2, 6, this.transitionProgram.newTextureHandle);
        bindTexture(3, 7, this.transitionProgram.newBlurTextureHandle);
        if (this.compositionEnabled) {
            bindTexture(4, this.switchOldBackgroundTexture, this.transitionProgram.oldBackgroundHandle);
            bindTexture(5, this.switchNewBackgroundTexture, this.transitionProgram.newBackgroundHandle);
            bindTexture(6, 2, this.transitionProgram.maskTextureHandle);
        }
        float fMax = (Math.max(0.0f, f) * 0.625f) / this.outputSize;
        GLES20.glUniform2f(this.transitionProgram.oldBlurStepHandle, fMax, fMax);
        GLES20.glUniform1f(this.transitionProgram.oldMipBiasHandle, getSwitchOldMipParameter(f));
        GLES20.glUniform1f(this.transitionProgram.oldBlurMixHandle, clamp01(f / 2.0f));
        GLES20.glUniform1f(this.transitionProgram.newBlurHandle, f2);
        GLES20.glUniform1f(this.transitionProgram.mixHandle, f3);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.transitionProgram);
        renderWatermarks();
    }

    public void finishCameraSwitch(long j) {
        if (this.switchNewFrameCaptured) {
            if (this.compositionEnabled) {
                this.historyReadTexture = this.switchNewBackgroundTexture;
                this.historyWriteTexture = this.switchOldBackgroundTexture;
                this.historyValid = true;
                this.lastHistoryFrameNs = j;
            }
            this.switchNewFrameCaptured = false;
        }
    }

    public void release() {
        this.cameraProgram.release();
        this.copyProgram.release();
        TemporalProgram temporalProgram = this.temporalProgram;
        if (temporalProgram != null) {
            temporalProgram.release();
        }
        MixProgram mixProgram = this.mixProgram;
        if (mixProgram != null) {
            mixProgram.release();
        }
        this.transitionProgram.release();
        this.gaussianBlurProgram.release();
        this.switchGaussianBlurProgram.release();
        Program program = this.watermarkProgram;
        if (program != null) {
            program.release();
        }
        int[] iArr = this.textures;
        GLES20.glDeleteTextures(iArr.length, iArr, 0);
        int[] iArr2 = this.frameBuffers;
        GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
    }

    private void renderTemporalBackground(int i, float[] fArr, int i2, float f) {
        GLES20.glBindFramebuffer(36160, this.frameBuffers[i2]);
        GLES20.glViewport(0, 0, 48, 48);
        bindCameraProgram(this.temporalProgram, fArr);
        bindExternalTexture(0, i, this.temporalProgram.textureHandle);
        bindTexture(1, this.historyReadTexture, this.temporalProgram.historyTextureHandle);
        boolean zSwapsTextureAxes = swapsTextureAxes(fArr);
        int cropSize = getCropSize();
        Size size = this.inputSize;
        float height = zSwapsTextureAxes ? size.getHeight() : size.getWidth();
        Size size2 = this.inputSize;
        float f2 = cropSize;
        float f3 = ((f2 / height) / 48.0f) * 0.45f;
        float width = ((f2 / (zSwapsTextureAxes ? size2.getWidth() : size2.getHeight())) / 48.0f) * 0.45f;
        GLES20.glUniform2f(this.temporalProgram.sampleStepXHandle, fArr[0] * f3, fArr[1] * f3);
        GLES20.glUniform2f(this.temporalProgram.sampleStepYHandle, fArr[4] * width, fArr[5] * width);
        GLES20.glUniform1f(this.temporalProgram.historyWeightHandle, f);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.temporalProgram);
    }

    private void renderMix(int i, float[] fArr, int i2, int i3, int i4) {
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glViewport(0, 0, i3, i4);
        bindCameraProgram(this.mixProgram, fArr);
        bindExternalTexture(0, i, this.mixProgram.textureHandle);
        bindTexture(1, i2, this.mixProgram.blurredTextureHandle);
        bindTexture(2, 2, this.mixProgram.maskTextureHandle);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.mixProgram);
    }

    private void renderWatermarks() {
        if (!this.compositionEnabled || this.watermarkProgram == null) {
            return;
        }
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        int i = this.logoFrame;
        this.logoFrame = i + 1;
        bindProgram(this.watermarkProgram, ((i % 27) * 24) + 8, 12);
        bindTexture(0, 3, this.watermarkProgram.textureHandle);
        GLES20.glDrawArrays(4, 0, 12);
        unbindProgram(this.watermarkProgram);
        GLES20.glDisable(3042);
    }

    private void renderRawCamera(int i, float[] fArr, int i2, int i3, int i4) {
        GLES20.glBindFramebuffer(36160, this.frameBuffers[i2]);
        GLES20.glViewport(0, 0, i3, i4);
        bindCameraProgram(this.cameraProgram, fArr);
        bindExternalTexture(0, i, this.cameraProgram.textureHandle);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.cameraProgram);
    }

    private void renderRawCameraToOutput(int i, float[] fArr, int i2, int i3) {
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glViewport(0, 0, i2, i3);
        bindCameraProgram(this.cameraProgram, fArr);
        bindExternalTexture(0, i, this.cameraProgram.textureHandle);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.cameraProgram);
    }

    private void renderTextureCopy(int i, int i2, int i3, int i4) {
        GLES20.glBindFramebuffer(36160, this.frameBuffers[i2]);
        GLES20.glViewport(0, 0, i3, i4);
        bindProgram(this.copyProgram, 0);
        bindTexture(0, i, this.copyProgram.textureHandle);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.copyProgram);
    }

    private void renderNewSwitchBlur(float f) {
        if (Math.abs(this.newSwitchBlurRadius - f) < 0.2f) {
            return;
        }
        float f2 = f / (this.outputSize * 9);
        int i = this.switchNewBlurSize;
        renderSwitchGaussianBlurPass(6, 7, i, i, f2, 0.0f);
        int i2 = this.switchNewBlurSize;
        renderSwitchGaussianBlurPass(9, 5, i2, i2, 0.0f, f2);
        this.newSwitchBlurRadius = f;
    }

    private void renderBackgroundBlur(int i) {
        renderGaussianBlurPass(i, 6, 48, 48, 0.020833334f, 0.0f);
        renderGaussianBlurPass(8, i, 48, 48, 0.0f, 0.020833334f);
    }

    private void renderGaussianBlurPass(int i, int i2, int i3, int i4, float f, float f2) {
        GLES20.glBindFramebuffer(36160, this.frameBuffers[i2]);
        GLES20.glViewport(0, 0, i3, i4);
        bindProgram(this.gaussianBlurProgram, 0);
        bindTexture(0, i, this.gaussianBlurProgram.textureHandle);
        GLES20.glUniform2f(this.gaussianBlurProgram.offsetHandle, f, f2);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.gaussianBlurProgram);
    }

    private void renderSwitchGaussianBlurPass(int i, int i2, int i3, int i4, float f, float f2) {
        GLES20.glBindFramebuffer(36160, this.frameBuffers[i2]);
        GLES20.glViewport(0, 0, i3, i4);
        bindProgram(this.switchGaussianBlurProgram, 0);
        bindTexture(0, i, this.switchGaussianBlurProgram.textureHandle);
        GLES20.glUniform2f(this.switchGaussianBlurProgram.offsetHandle, f, f2);
        GLES20.glDrawArrays(5, 0, 4);
        unbindProgram(this.switchGaussianBlurProgram);
    }

    private float getHistoryWeight(long j) {
        if (this.historyValid) {
            long j2 = this.lastHistoryFrameNs;
            if (j2 != 0) {
                long j3 = j - j2;
                if (j3 > 0 && j3 <= 100000000) {
                    return (float) Math.exp((-j3) / 2.8E8d);
                }
            }
        }
        return 0.0f;
    }

    private void generateOldSwitchMipmaps() {
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glBindTexture(3553, this.textures[5]);
        GLES20.glGenerateMipmap(3553);
        GLES20.glTexParameteri(3553, 10241, 9987);
    }

    private void setTextureMinFilter(int i, int i2) {
        GLES20.glBindTexture(3553, this.textures[i]);
        GLES20.glTexParameteri(3553, 10241, i2);
    }

    private float getSwitchOldMipParameter(float f) {
        float fMin = Math.min(8.0f, (float) (Math.log(((Math.max(1.0f, f) * 0.625f) * 512.0f) / this.outputSize) / Math.log(2.0d))) + 1.25f;
        return this.explicitTextureLod ? Math.max(0.0f, fMin) : Math.max(0.0f, fMin - ((float) (Math.log(512.0d / ((double) this.outputSize)) / Math.log(2.0d))));
    }

    private static boolean supportsExplicitTextureLod() {
        String strGlGetString = GLES20.glGetString(7939);
        return strGlGetString != null && strGlGetString.contains("GL_EXT_shader_texture_lod");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String createTransitionFragmentShader(boolean z, boolean z2) {
        String str;
        if (z) {
            str = "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform sampler2D omTexture;\nuniform sampler2D nTexture;\nuniform sampler2D nbTexture;\nuniform sampler2D oldBackground;\nuniform sampler2D newBackground;\nuniform sampler2D maskTexture;\nuniform vec2 oldBlurStep;\nuniform float oldMipBias;\nuniform float oldBlurMix;\nuniform float newBlur;\nuniform float mixValue;\nvec4 sampleOldFrame() {\n    vec2 x = vec2(oldBlurStep.x, 0.0);\n    vec2 diagonalUp = vec2(oldBlurStep.x * 0.5, oldBlurStep.y * 0.8660254);\n    vec2 diagonalDown = vec2(oldBlurStep.x * 0.5, -oldBlurStep.y * 0.8660254);\n    vec4 color = sampleOldMip(omTexture, vTextureCoord, oldMipBias) * 0.25;\n    color += (sampleOldMip(omTexture, vTextureCoord + x, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord - x, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord + diagonalUp, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord - diagonalUp, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord + diagonalDown, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord - diagonalDown, oldMipBias)) * 0.125;\n    return mix(texture2D(sTexture, vTextureCoord), color, oldBlurMix);\n}\nvoid main() {\n    vec4 oldFrame = sampleOldFrame();\n    vec4 newFrame = mix(texture2D(nTexture, vTextureCoord),\n            texture2D(nbTexture, vTextureCoord), newBlur);\n    vec3 camera = mix(oldFrame.rgb, newFrame.rgb, mixValue);\n    vec3 background = mix(texture2D(oldBackground, vTextureCoord).rgb,\n            texture2D(newBackground, vTextureCoord).rgb, mixValue) * 0.25;\n    float mask = texture2D(maskTexture, vTextureCoord).a;\n    gl_FragColor = vec4(mix(background, camera, mask), 1.0);\n}\n";
        } else {
            str = "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform sampler2D omTexture;\nuniform sampler2D nTexture;\nuniform sampler2D nbTexture;\nuniform vec2 oldBlurStep;\nuniform float oldMipBias;\nuniform float oldBlurMix;\nuniform float newBlur;\nuniform float mixValue;\nvec4 sampleOldFrame() {\n    vec2 x = vec2(oldBlurStep.x, 0.0);\n    vec2 diagonalUp = vec2(oldBlurStep.x * 0.5, oldBlurStep.y * 0.8660254);\n    vec2 diagonalDown = vec2(oldBlurStep.x * 0.5, -oldBlurStep.y * 0.8660254);\n    vec4 color = sampleOldMip(omTexture, vTextureCoord, oldMipBias) * 0.25;\n    color += (sampleOldMip(omTexture, vTextureCoord + x, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord - x, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord + diagonalUp, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord - diagonalUp, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord + diagonalDown, oldMipBias)\n            + sampleOldMip(omTexture, vTextureCoord - diagonalDown, oldMipBias)) * 0.125;\n    return mix(texture2D(sTexture, vTextureCoord), color, oldBlurMix);\n}\nvoid main() {\n    vec4 oldFrame = sampleOldFrame();\n    vec4 newFrame = mix(texture2D(nTexture, vTextureCoord),\n            texture2D(nbTexture, vTextureCoord), newBlur);\n    gl_FragColor = mix(oldFrame, newFrame, mixValue);\n}\n";
        }
        if (!z2) {
            return str.replace("sampleOldMip", "texture2D");
        }
        return "#extension GL_EXT_shader_texture_lod : require\n" + str.replace("sampleOldMip", "texture2DLodEXT");
    }

    private static float clamp01(float f) {
        return Math.max(0.0f, Math.min(1.0f, f));
    }

    private void bindProgram(Program program, int i) {
        bindProgram(program, i, 0);
    }

    private void bindCameraProgram(CameraProgram cameraProgram, float[] fArr) {
        FloatBuffer floatBuffer;
        GLES20.glUseProgram(cameraProgram.program);
        this.vertexBuffer.position(0);
        GLES20.glVertexAttribPointer(cameraProgram.positionHandle, 3, 5126, false, 12, (Buffer) this.vertexBuffer);
        if (swapsTextureAxes(fArr)) {
            floatBuffer = this.rotatedCameraTextureBuffer;
        } else {
            floatBuffer = this.cameraTextureBuffer;
        }
        FloatBuffer floatBuffer2 = floatBuffer;
        floatBuffer2.position(0);
        GLES20.glVertexAttribPointer(cameraProgram.textureCoordinateHandle, 2, 5126, false, 8, (Buffer) floatBuffer2);
        GLES20.glUniformMatrix4fv(cameraProgram.textureMatrixHandle, 1, false, fArr, 0);
    }

    private void bindProgram(Program program, int i, int i2) {
        GLES20.glUseProgram(program.program);
        this.vertexBuffer.position(i2);
        GLES20.glVertexAttribPointer(program.positionHandle, 3, 5126, false, 12, (Buffer) this.vertexBuffer);
        this.textureBuffer.position(i);
        GLES20.glVertexAttribPointer(program.textureCoordinateHandle, 2, 5126, false, 8, (Buffer) this.textureBuffer);
    }

    private void bindTexture(int i, int i2, int i3) {
        GLES20.glActiveTexture(i + 33984);
        GLES20.glBindTexture(3553, this.textures[i2]);
    }

    private static void bindExternalTexture(int i, int i2, int i3) {
        GLES20.glActiveTexture(i + 33984);
        GLES20.glBindTexture(36197, i2);
    }

    private void attach(int i) {
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.textures[i], 0);
    }

    private void attachFrameBuffer(int i, int i2) {
        GLES20.glBindFramebuffer(36160, this.frameBuffers[i]);
        attach(i2);
        int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
        if (iGlCheckFramebufferStatus != 36053) {
            CstInsn$$ExternalSyntheticBUOutline0.m225m("Incomplete framebuffer: 0x", Integer.toHexString(iGlCheckFramebufferStatus));
        } else {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(16384);
        }
    }

    private void createColorTexture(int i, int i2, int i3, int i4) {
        configureTexture(i, i4);
        GLES20.glTexImage2D(3553, 0, 6408, i2, i3, 0, 6408, 5121, null);
    }

    private void createMaskTexture() {
        configureTexture(2, 9729);
        int i = this.outputSize;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i * i);
        float f = this.outputSize * 0.5f;
        float f2 = 2.0f + f;
        for (int i2 = 0; i2 < this.outputSize; i2++) {
            float f3 = (i2 + 0.5f) - f;
            for (int i3 = 0; i3 < this.outputSize; i3++) {
                float f4 = (i3 + 0.5f) - f;
                byteBufferAllocateDirect.put((byte) Math.round(Math.max(0.0f, Math.min(1.0f, (f2 + 0.5f) - ((float) Math.sqrt((f4 * f4) + (f3 * f3))))) * 255.0f));
            }
        }
        byteBufferAllocateDirect.position(0);
        GLES20.glPixelStorei(3317, 1);
        int i4 = this.outputSize;
        GLES20.glTexImage2D(3553, 0, 6406, i4, i4, 0, 6406, 5121, byteBufferAllocateDirect);
        GLES20.glPixelStorei(3317, 4);
    }

    private void createWatermarkAtlas(float[] fArr, float[] fArr2) {
        configureTexture(3, 9729);
        WatermarkAtlas watermarkAtlas = getWatermarkAtlas(this.outputSize);
        for (int i = 0; i < 27; i++) {
            int i2 = i % 8;
            int i3 = i / 8;
            int i4 = i * 24;
            setTriangleTextureCoordinates(fArr2, i4 + 8, 0.0f, watermarkAtlas.logoAtlasHeight / watermarkAtlas.height, watermarkAtlas.textSize / watermarkAtlas.width, 1.0f);
            int i5 = i4 + 20;
            int i6 = watermarkAtlas.frameSize;
            int i7 = watermarkAtlas.width;
            int i8 = watermarkAtlas.height;
            setTriangleTextureCoordinates(fArr2, i5, (i6 * i2) / i7, (i6 * i3) / i8, ((i2 + 1) * i6) / i7, (i6 * (i3 + 1)) / i8);
        }
        float f = (watermarkAtlas.textSize / this.outputSize) * 2.0f;
        setTriangleVertexCoordinates(fArr, 12, 1.0f - f, -1.0f, 1.0f, f - 1.0f);
        float f2 = ((watermarkAtlas.frameSize / this.outputSize) * 2.0f) - 1.0f;
        setTriangleVertexCoordinates(fArr, 30, -1.0f, -1.0f, f2, f2);
        ByteBuffer byteBufferDuplicate = watermarkAtlas.pixels.duplicate();
        byteBufferDuplicate.position(0);
        GLES20.glPixelStorei(3317, 1);
        GLES20.glTexImage2D(3553, 0, 6406, watermarkAtlas.width, watermarkAtlas.height, 0, 6406, 5121, byteBufferDuplicate);
        GLES20.glPixelStorei(3317, 4);
    }

    private static synchronized WatermarkAtlas getWatermarkAtlas(int i) {
        try {
            WatermarkAtlas watermarkAtlas = cachedWatermarks.get(i);
            if (watermarkAtlas != null) {
                return watermarkAtlas;
            }
            float f = i;
            int iRound = Math.round((372.0f * f) / 1536.0f);
            int iRound2 = Math.round(0.2f * f);
            int iRound3 = iRound2 - (Math.round((f * 28.0f) / 1536.0f) * 2);
            int i2 = iRound3 * 4;
            int iMax = Math.max(iRound3 * 8, iRound);
            int i3 = i2 + iRound;
            RLottieNative rLottieNativeCreateFromRawJson = RLottieNative.createFromRawJson(AndroidUtilities.readRes(C2807R.raw.plane_logo_plain));
            if (rLottieNativeCreateFromRawJson == null) {
                throw new IllegalStateException("Unable to load watermark animation");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound2, iRound2, Bitmap.Config.ARGB_8888);
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax, i3, Bitmap.Config.ALPHA_8);
            Canvas canvas = new Canvas(bitmapCreateBitmap2);
            for (int i4 = 0; i4 < 27; i4++) {
                rLottieNativeCreateFromRawJson.getFrame(i4 * 2, bitmapCreateBitmap, true);
                canvas.drawBitmap(bitmapCreateBitmap, ((i4 % 8) * iRound3) - r2, ((i4 / 8) * iRound3) - r2, (Paint) null);
            }
            Bitmap bitmapFromRaw = AndroidUtilities.getBitmapFromRaw(C2807R.raw.round_blur_overlay_text);
            if (bitmapFromRaw != null) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapFromRaw, iRound, iRound, true);
                Bitmap bitmapExtractAlpha = bitmapCreateScaledBitmap.extractAlpha();
                canvas.drawBitmap(bitmapExtractAlpha, 0.0f, i2, (Paint) null);
                bitmapExtractAlpha.recycle();
                bitmapCreateScaledBitmap.recycle();
                bitmapFromRaw.recycle();
            }
            if (bitmapCreateBitmap2.getRowBytes() != iMax) {
                bitmapCreateBitmap2.recycle();
                bitmapCreateBitmap.recycle();
                rLottieNativeCreateFromRawJson.recycle();
                throw new IllegalStateException("Unexpected watermark atlas stride");
            }
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iMax * i3);
            bitmapCreateBitmap2.copyPixelsToBuffer(byteBufferAllocateDirect);
            byteBufferAllocateDirect.position(0);
            WatermarkAtlas watermarkAtlas2 = new WatermarkAtlas(iMax, i3, iRound, iRound3, i2, byteBufferAllocateDirect);
            bitmapCreateBitmap2.recycle();
            bitmapCreateBitmap.recycle();
            rLottieNativeCreateFromRawJson.recycle();
            cachedWatermarks.put(i, watermarkAtlas2);
            return watermarkAtlas2;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void configureTexture(int i, int i2) {
        GLES20.glBindTexture(3553, this.textures[i]);
        GLES20.glTexParameteri(3553, 10241, i2);
        GLES20.glTexParameteri(3553, 10240, i2);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
    }

    private static FloatBuffer createBuffer(float[] fArr) {
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr).position(0);
        return floatBufferAsFloatBuffer;
    }

    private static FloatBuffer createCameraTextureBuffer(Size size, int i, boolean z) {
        int iMin = Math.min(i, Math.min(size.getWidth(), size.getHeight()));
        int height = z ? size.getHeight() : size.getWidth();
        int width = z ? size.getWidth() : size.getHeight();
        float f = iMin;
        float f2 = f / (height * 2.0f);
        float f3 = f / (width * 2.0f);
        float f4 = 0.5f - f2;
        float f5 = 0.5f - f3;
        float f6 = f2 + 0.5f;
        float f7 = f3 + 0.5f;
        return createBuffer(new float[]{f4, f5, f6, f5, f4, f7, f6, f7});
    }

    private int getCropSize() {
        return Math.min(this.sourceCropSize, Math.min(this.inputSize.getWidth(), this.inputSize.getHeight()));
    }

    private static boolean swapsTextureAxes(float[] fArr) {
        return Math.abs(fArr[1]) > Math.abs(fArr[0]);
    }

    private static void setVertexCoordinates(float[] fArr, int i, float f, float f2, float f3, float f4) {
        fArr[i] = f;
        fArr[i + 1] = f4;
        fArr[i + 2] = 0.0f;
        fArr[i + 3] = f3;
        fArr[i + 4] = f4;
        fArr[i + 5] = 0.0f;
        fArr[i + 6] = f;
        fArr[i + 7] = f2;
        fArr[i + 8] = 0.0f;
        fArr[i + 9] = f3;
        fArr[i + 10] = f2;
        fArr[i + 11] = 0.0f;
    }

    private static void setTextureCoordinates(float[] fArr, int i, float f, float f2, float f3, float f4) {
        fArr[i] = f;
        fArr[i + 1] = f4;
        fArr[i + 2] = f3;
        fArr[i + 3] = f4;
        fArr[i + 4] = f;
        fArr[i + 5] = f2;
        fArr[i + 6] = f3;
        fArr[i + 7] = f2;
    }

    private static void setTriangleVertexCoordinates(float[] fArr, int i, float f, float f2, float f3, float f4) {
        setVertex(fArr, i, f, f2);
        setVertex(fArr, i + 3, f3, f2);
        setVertex(fArr, i + 6, f, f4);
        setVertex(fArr, i + 9, f, f4);
        setVertex(fArr, i + 12, f3, f2);
        setVertex(fArr, i + 15, f3, f4);
    }

    private static void setVertex(float[] fArr, int i, float f, float f2) {
        fArr[i] = f;
        fArr[i + 1] = f2;
        fArr[i + 2] = 0.0f;
    }

    private static void setTriangleTextureCoordinates(float[] fArr, int i, float f, float f2, float f3, float f4) {
        setTextureCoordinate(fArr, i, f, f4);
        setTextureCoordinate(fArr, i + 2, f3, f4);
        setTextureCoordinate(fArr, i + 4, f, f2);
        setTextureCoordinate(fArr, i + 6, f, f2);
        setTextureCoordinate(fArr, i + 8, f3, f4);
        setTextureCoordinate(fArr, i + 10, f3, f2);
    }

    private static void setTextureCoordinate(float[] fArr, int i, float f, float f2) {
        fArr[i] = f;
        fArr[i + 1] = f2;
    }

    private static String createGaussianBlurFragmentShader(int i, float f) {
        double d;
        int i2 = -i;
        double dExp = 0.0d;
        while (true) {
            d = 2.0d;
            if (i2 > i) {
                break;
            }
            double d2 = f;
            dExp += Math.exp(((double) (-(i2 * i2))) / ((2.0d * d2) * d2));
            i2++;
        }
        StringBuilder sb = new StringBuilder(4096);
        sb.append("precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform vec2 texOffset;\nvoid main() {\n    vec3 color = texture2D(sTexture, vTextureCoord).rgb * ");
        sb.append(Float.toString((float) (1.0d / dExp)));
        sb.append(";\n");
        int i3 = 1;
        while (i3 <= i) {
            double d3 = f;
            double d4 = d3 * d * d3;
            float fExp = (float) (Math.exp(((double) (-(i3 * i3))) / d4) / dExp);
            int i4 = i3 + 1;
            float fExp2 = i4 <= i ? (float) (Math.exp(((double) (-(i4 * i4))) / d4) / dExp) : 0.0f;
            float f2 = fExp + fExp2;
            float f3 = fExp2 == 0.0f ? i3 : ((i3 * fExp) + (i4 * fExp2)) / f2;
            sb.append("    color += (texture2D(sTexture, vTextureCoord + texOffset * ");
            sb.append(Float.toString(f3));
            sb.append(").rgb + texture2D(sTexture, vTextureCoord - texOffset * ");
            sb.append(Float.toString(f3));
            sb.append(").rgb) * ");
            sb.append(Float.toString(f2));
            sb.append(";\n");
            i3 += 2;
            d = 2.0d;
        }
        sb.append("    gl_FragColor = vec4(color, 1.0);\n}\n");
        return sb.toString();
    }

    public static class GaussianBlurProgram extends Program {
        final int offsetHandle;

        public GaussianBlurProgram() {
            super("attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n", RoundVideoOverlayRenderer.GAUSSIAN_BLUR_FRAGMENT_SHADER);
            this.offsetHandle = GLES20.glGetUniformLocation(this.program, "texOffset");
        }

        public GaussianBlurProgram(String str) {
            super("attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n", str);
            this.offsetHandle = GLES20.glGetUniformLocation(this.program, "texOffset");
        }
    }

    public static final class WatermarkAtlas {
        final int frameSize;
        final int height;
        final int logoAtlasHeight;
        final ByteBuffer pixels;
        final int textSize;
        final int width;

        public WatermarkAtlas(int i, int i2, int i3, int i4, int i5, ByteBuffer byteBuffer) {
            this.width = i;
            this.height = i2;
            this.textSize = i3;
            this.frameSize = i4;
            this.logoAtlasHeight = i5;
            this.pixels = byteBuffer;
        }
    }

    public static class CameraProgram extends Program {
        final int textureMatrixHandle;

        public CameraProgram(String str) {
            super("uniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec2 vScreenTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTextureMatrix * vec4(aTextureCoord.xy, 0.0, 1.0)).xy;\n    vScreenTextureCoord = aPosition.xy * 0.5 + 0.5;\n}\n", str);
            this.textureMatrixHandle = GLES20.glGetUniformLocation(this.program, "uTextureMatrix");
        }
    }

    public static class TemporalProgram extends CameraProgram {
        final int historyTextureHandle;
        final int historyWeightHandle;
        final int sampleStepXHandle;
        final int sampleStepYHandle;

        public TemporalProgram() {
            super("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec2 vScreenTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D hTexture;\nuniform vec2 sampleStepX;\nuniform vec2 sampleStepY;\nuniform float historyWeight;\nvoid main() {\n    vec3 current = texture2D(sTexture, vTextureCoord).rgb * 0.25;\n    current += (texture2D(sTexture, vTextureCoord + sampleStepX).rgb\n            + texture2D(sTexture, vTextureCoord - sampleStepX).rgb\n            + texture2D(sTexture, vTextureCoord + sampleStepY).rgb\n            + texture2D(sTexture, vTextureCoord - sampleStepY).rgb) * 0.125;\n    current += (texture2D(sTexture, vTextureCoord + sampleStepX + sampleStepY).rgb\n            + texture2D(sTexture, vTextureCoord + sampleStepX - sampleStepY).rgb\n            + texture2D(sTexture, vTextureCoord - sampleStepX + sampleStepY).rgb\n            + texture2D(sTexture, vTextureCoord - sampleStepX - sampleStepY).rgb) * 0.0625;\n    vec3 history = texture2D(hTexture, vScreenTextureCoord).rgb;\n    float difference = dot(abs(current - history), vec3(0.333333));\n    float motion = smoothstep(0.035, 0.18, difference);\n    float weight = mix(historyWeight, historyWeight * 0.65, motion);\n    gl_FragColor = vec4(mix(current, history, weight), 1.0);\n}\n");
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.program, "hTexture");
            this.historyTextureHandle = iGlGetUniformLocation;
            this.sampleStepXHandle = GLES20.glGetUniformLocation(this.program, "sampleStepX");
            this.sampleStepYHandle = GLES20.glGetUniformLocation(this.program, "sampleStepY");
            this.historyWeightHandle = GLES20.glGetUniformLocation(this.program, "historyWeight");
            GLES20.glUseProgram(this.program);
            GLES20.glUniform1i(iGlGetUniformLocation, 1);
        }
    }

    public static class MixProgram extends CameraProgram {
        final int blurredTextureHandle;
        final int maskTextureHandle;

        public MixProgram() {
            super("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec2 vScreenTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform sampler2D bTexture;\nuniform sampler2D mTexture;\nvoid main() {\n    vec3 sharp = texture2D(sTexture, vTextureCoord).rgb;\n    vec3 blurred = texture2D(bTexture, vScreenTextureCoord).rgb * 0.25;\n    float mask = texture2D(mTexture, vScreenTextureCoord).a;\n    gl_FragColor = vec4(mix(blurred, sharp, mask), 1.0);\n}\n");
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.program, "bTexture");
            this.blurredTextureHandle = iGlGetUniformLocation;
            int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.program, "mTexture");
            this.maskTextureHandle = iGlGetUniformLocation2;
            GLES20.glUseProgram(this.program);
            GLES20.glUniform1i(iGlGetUniformLocation, 1);
            GLES20.glUniform1i(iGlGetUniformLocation2, 2);
        }
    }

    public static class TransitionProgram extends Program {
        final int maskTextureHandle;
        final int mixHandle;
        final int newBackgroundHandle;
        final int newBlurHandle;
        final int newBlurTextureHandle;
        final int newTextureHandle;
        final int oldBackgroundHandle;
        final int oldBlurMixHandle;
        final int oldBlurStepHandle;
        final int oldMipBiasHandle;
        final int oldMipTextureHandle;

        public TransitionProgram(boolean z, boolean z2) {
            super("attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n", RoundVideoOverlayRenderer.createTransitionFragmentShader(z, z2));
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.program, "omTexture");
            this.oldMipTextureHandle = iGlGetUniformLocation;
            int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.program, "nTexture");
            this.newTextureHandle = iGlGetUniformLocation2;
            int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(this.program, "nbTexture");
            this.newBlurTextureHandle = iGlGetUniformLocation3;
            int iGlGetUniformLocation4 = GLES20.glGetUniformLocation(this.program, "oldBackground");
            this.oldBackgroundHandle = iGlGetUniformLocation4;
            int iGlGetUniformLocation5 = GLES20.glGetUniformLocation(this.program, "newBackground");
            this.newBackgroundHandle = iGlGetUniformLocation5;
            int iGlGetUniformLocation6 = GLES20.glGetUniformLocation(this.program, "maskTexture");
            this.maskTextureHandle = iGlGetUniformLocation6;
            this.oldBlurStepHandle = GLES20.glGetUniformLocation(this.program, "oldBlurStep");
            this.oldMipBiasHandle = GLES20.glGetUniformLocation(this.program, "oldMipBias");
            this.oldBlurMixHandle = GLES20.glGetUniformLocation(this.program, "oldBlurMix");
            this.newBlurHandle = GLES20.glGetUniformLocation(this.program, "newBlur");
            this.mixHandle = GLES20.glGetUniformLocation(this.program, "mixValue");
            GLES20.glUseProgram(this.program);
            GLES20.glUniform1i(iGlGetUniformLocation, 1);
            GLES20.glUniform1i(iGlGetUniformLocation2, 2);
            GLES20.glUniform1i(iGlGetUniformLocation3, 3);
            if (z) {
                GLES20.glUniform1i(iGlGetUniformLocation4, 4);
                GLES20.glUniform1i(iGlGetUniformLocation5, 5);
                GLES20.glUniform1i(iGlGetUniformLocation6, 6);
            }
        }
    }

    public static class Program {
        final int fragmentShader;
        final int positionHandle;
        final int program;
        final int textureCoordinateHandle;
        final int textureHandle;
        final int vertexShader;

        public Program(String str, String str2) {
            int iCreateShader = RoundVideoOverlayRenderer.createShader(35633, str);
            this.vertexShader = iCreateShader;
            int iCreateShader2 = RoundVideoOverlayRenderer.createShader(35632, str2);
            this.fragmentShader = iCreateShader2;
            int iCreateProgram = RoundVideoOverlayRenderer.createProgram(iCreateShader, iCreateShader2);
            this.program = iCreateProgram;
            this.positionHandle = 0;
            this.textureCoordinateHandle = 1;
            int iGlGetUniformLocation = GLES20.glGetUniformLocation(iCreateProgram, "sTexture");
            this.textureHandle = iGlGetUniformLocation;
            GLES20.glUseProgram(iCreateProgram);
            GLES20.glUniform1i(iGlGetUniformLocation, 0);
        }

        public void release() {
            GLES20.glDeleteProgram(this.program);
            GLES20.glDeleteShader(this.vertexShader);
            GLES20.glDeleteShader(this.fragmentShader);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int createShader(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        String strGlGetShaderInfoLog = GLES20.glGetShaderInfoLog(iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        DexMaker$$ExternalSyntheticBUOutline0.m223m("Unable to compile shader: ", strGlGetShaderInfoLog);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int createProgram(int i, int i2) {
        int iGlCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(iGlCreateProgram, i);
        GLES20.glAttachShader(iGlCreateProgram, i2);
        GLES20.glBindAttribLocation(iGlCreateProgram, 0, "aPosition");
        GLES20.glBindAttribLocation(iGlCreateProgram, 1, "aTextureCoord");
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateProgram;
        }
        String strGlGetProgramInfoLog = GLES20.glGetProgramInfoLog(iGlCreateProgram);
        GLES20.glDeleteProgram(iGlCreateProgram);
        DexMaker$$ExternalSyntheticBUOutline0.m223m("Unable to link program: ", strGlGetProgramInfoLog);
        return 0;
    }
}
