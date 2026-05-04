package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RecordingCanvas;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.math.MathUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.NotchInfoUtils;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes3.dex */
public class ProfileGooeyView extends FrameLayout {
    private final Paint blackPaint;
    private float blurIntensity;
    private boolean enabled;
    private final Impl impl;
    private float intensity;
    public NotchInfoUtils.NotchInfo notchInfo;
    private final Path path;
    private float pullProgress;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    interface Drawer {
        void draw(Canvas canvas);
    }

    public ProfileGooeyView(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.blackPaint = paint;
        this.path = new Path();
        paint.setColor(-16777216);
        if (Build.VERSION.SDK_INT >= 31 && SharedConfig.getDevicePerformanceClass() >= 1) {
            this.impl = new GPUImpl(SharedConfig.getDevicePerformanceClass() == 2 ? 1.0f : 1.5f);
        } else {
            this.impl = new CPUImpl();
        }
        setIntensity(15.0f);
        setBlurIntensity(0.0f);
        setWillNotDraw(false);
    }

    public float getAvatarEndScale() {
        float fMin;
        int iM1124dp;
        NotchInfoUtils.NotchInfo notchInfo = this.notchInfo;
        if (notchInfo == null) {
            return 0.8f;
        }
        if (notchInfo.isLikelyCircle) {
            fMin = notchInfo.bounds.width() - AndroidUtilities.m1124dp(2.0f);
            iM1124dp = AndroidUtilities.m1124dp(100.0f);
        } else {
            fMin = Math.min(notchInfo.bounds.width(), this.notchInfo.bounds.height());
            iM1124dp = AndroidUtilities.m1124dp(100.0f);
        }
        return Math.min(0.8f, fMin / iM1124dp);
    }

    public void setIntensity(float f) {
        this.intensity = f;
        this.impl.setIntensity(f);
        invalidate();
    }

    public void setPullProgress(float f) {
        this.pullProgress = f;
        invalidate();
    }

    public void setBlurIntensity(float f) {
        this.blurIntensity = f;
        this.impl.setBlurIntensity(f);
        invalidate();
    }

    public void setGooeyEnabled(boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        NotchInfoUtils.NotchInfo info = NotchInfoUtils.getInfo(getContext());
        this.notchInfo = info;
        if ((info != null && info.gravity != 17) || getWidth() > getHeight()) {
            this.notchInfo = null;
        }
        this.impl.onSizeChanged(i, i2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.enabled) {
            super.draw(canvas);
        } else {
            this.impl.draw(new Drawer() { // from class: org.telegram.ui.Components.ProfileGooeyView$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.ProfileGooeyView.Drawer
                public final void draw(Canvas canvas2) {
                    this.f$0.lambda$draw$0(canvas2);
                }
            }, canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$draw$0(Canvas canvas) {
        canvas.save();
        canvas.translate(0.0f, AndroidUtilities.m1124dp(32.0f));
        super.draw(canvas);
        canvas.restore();
    }

    private final class CPUImpl implements Impl {
        private Bitmap bitmap;
        private Canvas bitmapCanvas;
        private int bitmapOrigH;
        private int bitmapOrigW;
        private final Paint bitmapPaint;
        private final Paint bitmapPaint2;
        private int optimizedH;
        private int optimizedW;
        private final float scaleConst;

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public /* synthetic */ void setBlurIntensity(float f) {
            Impl.CC.$default$setBlurIntensity(this, f);
        }

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public /* synthetic */ void setIntensity(float f) {
            Impl.CC.$default$setIntensity(this, f);
        }

        private CPUImpl() {
            Paint paint = new Paint();
            this.bitmapPaint = paint;
            Paint paint2 = new Paint();
            this.bitmapPaint2 = paint2;
            this.scaleConst = 6.0f;
            paint.setFlags(7);
            paint.setFilterBitmap(true);
            paint2.setFlags(7);
            paint2.setFilterBitmap(true);
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            paint.setColorFilter(new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 60.0f, -7500.0f}));
        }

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public void onSizeChanged(int i, int i2) {
            Bitmap bitmap = this.bitmap;
            if (bitmap != null) {
                bitmap.recycle();
                this.bitmap = null;
            }
            this.optimizedW = Math.min(AndroidUtilities.m1124dp(120.0f), i);
            int iMin = Math.min(AndroidUtilities.m1124dp(220.0f), i2);
            this.optimizedH = iMin;
            this.bitmapOrigW = this.optimizedW;
            int iM1124dp = iMin + AndroidUtilities.m1124dp(32.0f);
            this.bitmapOrigH = iM1124dp;
            this.bitmap = Bitmap.createBitmap((int) (this.bitmapOrigW / 6.0f), (int) (iM1124dp / 6.0f), Bitmap.Config.ARGB_8888);
            this.bitmapCanvas = new Canvas(this.bitmap);
        }

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public void draw(Drawer drawer, Canvas canvas) {
            int i;
            Bitmap bitmap = this.bitmap;
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            int iClamp = (int) ((1.0f - ((MathUtils.clamp(ProfileGooeyView.this.blurIntensity, 0.2f, 0.3f) - 0.2f) / 0.10000001f)) * 255.0f);
            float width = (ProfileGooeyView.this.getWidth() - this.optimizedW) / 2.0f;
            canvas.save();
            canvas.translate(0.0f, -AndroidUtilities.m1124dp(32.0f));
            if (iClamp != 255) {
                this.bitmap.eraseColor(0);
                this.bitmapCanvas.save();
                this.bitmapCanvas.scale(this.bitmap.getWidth() / this.bitmapOrigW, this.bitmap.getHeight() / this.bitmapOrigH);
                float f = -width;
                this.bitmapCanvas.translate(f, 0.0f);
                drawer.draw(this.bitmapCanvas);
                this.bitmapCanvas.restore();
                this.bitmapCanvas.save();
                this.bitmapCanvas.scale(this.bitmap.getWidth() / this.bitmapOrigW, this.bitmap.getHeight() / this.bitmapOrigH);
                if (ProfileGooeyView.this.notchInfo != null) {
                    this.bitmapCanvas.save();
                    this.bitmapCanvas.translate(f, AndroidUtilities.m1124dp(32.0f));
                    ProfileGooeyView profileGooeyView = ProfileGooeyView.this;
                    NotchInfoUtils.NotchInfo notchInfo = profileGooeyView.notchInfo;
                    if (notchInfo.isLikelyCircle) {
                        float fMin = Math.min(notchInfo.bounds.width(), ProfileGooeyView.this.notchInfo.bounds.height()) / 2.0f;
                        Canvas canvas2 = this.bitmapCanvas;
                        float fCenterX = ProfileGooeyView.this.notchInfo.bounds.centerX();
                        RectF rectF = ProfileGooeyView.this.notchInfo.bounds;
                        canvas2.drawCircle(fCenterX, rectF.bottom - (rectF.width() / 2.0f), fMin, ProfileGooeyView.this.blackPaint);
                    } else if (notchInfo.isAccurate) {
                        this.bitmapCanvas.drawPath(notchInfo.path, profileGooeyView.blackPaint);
                    } else {
                        float fMax = Math.max(notchInfo.bounds.width(), ProfileGooeyView.this.notchInfo.bounds.height()) / 2.0f;
                        Canvas canvas3 = this.bitmapCanvas;
                        ProfileGooeyView profileGooeyView2 = ProfileGooeyView.this;
                        canvas3.drawRoundRect(profileGooeyView2.notchInfo.bounds, fMax, fMax, profileGooeyView2.blackPaint);
                    }
                    this.bitmapCanvas.restore();
                } else {
                    this.bitmapCanvas.drawRect(0.0f, 0.0f, this.optimizedW, AndroidUtilities.m1124dp(32.0f), ProfileGooeyView.this.blackPaint);
                }
                this.bitmapCanvas.restore();
                Utilities.stackBlurBitmap(this.bitmap, (int) ((ProfileGooeyView.this.intensity * 2.0f) / 6.0f));
                canvas.save();
                canvas.translate(width, 0.0f);
                canvas.saveLayer(0.0f, 0.0f, this.bitmapOrigW, this.bitmapOrigH, null);
                canvas.scale(this.bitmapOrigW / this.bitmap.getWidth(), this.bitmapOrigH / this.bitmap.getHeight());
                canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, this.bitmapPaint);
                canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, this.bitmapPaint2);
                canvas.restore();
                canvas.restore();
            }
            if (iClamp != 0) {
                if (iClamp != 255) {
                    i = iClamp;
                    canvas.saveLayerAlpha(width, 0.0f, width + this.optimizedW, this.optimizedH, i);
                } else {
                    i = iClamp;
                }
                drawer.draw(canvas);
                if (i != 255) {
                    canvas.restore();
                }
            }
            canvas.restore();
        }
    }

    private final class GPUImpl implements Impl {
        private final Paint blackNodePaint;
        private final RenderNode blurNode;
        private final RenderNode effectNode;
        private final RenderNode effectNotchNode;
        private final float factorMult;
        private final Paint filter;
        private final RenderNode node;
        private final RectF temp;
        private final RectF whole;
        private final RectF wholeOptimized;

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public /* synthetic */ void onSizeChanged(int i, int i2) {
            Impl.CC.$default$onSizeChanged(this, i, i2);
        }

        private GPUImpl(float f) {
            this.filter = new Paint(1);
            this.node = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("render");
            this.effectNotchNode = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("effectNotch");
            this.effectNode = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("effect");
            this.blurNode = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("blur");
            this.whole = new RectF();
            this.temp = new RectF();
            Paint paint = new Paint();
            this.blackNodePaint = paint;
            this.wholeOptimized = new RectF();
            this.factorMult = f;
            paint.setColor(-16777216);
            paint.setBlendMode(BlendMode.SRC_IN);
        }

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public void setIntensity(float f) {
            RenderNode renderNode = this.effectNode;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            renderNode.setRenderEffect(RenderEffect.createBlurEffect(f, f, tileMode));
            this.effectNotchNode.setRenderEffect(RenderEffect.createBlurEffect(f, f, tileMode));
            this.filter.setColorFilter(new ColorMatrixColorFilter(new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 51.0f, -6375.0f}));
        }

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public void setBlurIntensity(float f) {
            if (f == 0.0f) {
                this.blurNode.setRenderEffect(null);
            } else {
                this.blurNode.setRenderEffect(RenderEffect.createBlurEffect((ProfileGooeyView.this.intensity * f) / this.factorMult, (f * ProfileGooeyView.this.intensity) / this.factorMult, Shader.TileMode.DECAL));
            }
        }

        @Override // org.telegram.ui.Components.ProfileGooeyView.Impl
        public void draw(Drawer drawer, Canvas canvas) {
            float f;
            float f2;
            int i;
            Paint paint;
            float f3;
            if (canvas.isHardwareAccelerated()) {
                this.whole.set(0.0f, 0.0f, ProfileGooeyView.this.getWidth(), ProfileGooeyView.this.getHeight());
                if (ProfileGooeyView.this.getChildCount() > 0) {
                    View childAt = ProfileGooeyView.this.getChildAt(0);
                    float width = childAt.getWidth() * childAt.getScaleX();
                    float height = childAt.getHeight() * childAt.getScaleY();
                    float x = childAt.getX();
                    float y = childAt.getY();
                    this.wholeOptimized.set(x, y, width + x, height + y);
                    NotchInfoUtils.NotchInfo notchInfo = ProfileGooeyView.this.notchInfo;
                    if (notchInfo != null) {
                        this.wholeOptimized.union(notchInfo.bounds);
                    }
                    this.wholeOptimized.inset(-AndroidUtilities.m1124dp(20.0f), -AndroidUtilities.m1124dp(20.0f));
                    this.wholeOptimized.intersect(this.whole);
                    this.wholeOptimized.top = 0.0f;
                } else {
                    this.wholeOptimized.set(this.whole);
                }
                this.wholeOptimized.bottom += AndroidUtilities.m1124dp(32.0f);
                int iCeil = (int) Math.ceil(this.wholeOptimized.width());
                int iCeil2 = (int) Math.ceil(this.wholeOptimized.height());
                RectF rectF = this.wholeOptimized;
                float f4 = rectF.left;
                float f5 = rectF.top;
                this.node.setPosition(0, 0, iCeil, iCeil2);
                this.blurNode.setPosition(0, 0, iCeil, iCeil2);
                this.effectNode.setPosition(0, 0, iCeil, iCeil2);
                this.effectNotchNode.setPosition(0, 0, iCeil, iCeil2);
                float f6 = iCeil;
                float f7 = iCeil2;
                this.wholeOptimized.set(0.0f, 0.0f, f6, f7);
                RecordingCanvas recordingCanvasBeginRecording = this.node.beginRecording();
                float f8 = -f4;
                float f9 = -f5;
                recordingCanvasBeginRecording.translate(f8, f9);
                int iIlerp = (int) ((1.0f - AndroidUtilities.ilerp(ProfileGooeyView.this.pullProgress, 0.5f, 1.0f)) * 255.0f);
                int iClamp = MathUtils.clamp(iIlerp, 0, 255);
                drawer.draw(recordingCanvasBeginRecording);
                this.node.endRecording();
                float f10 = (this.factorMult / 4.0f) + 1.0f;
                float f11 = ProfileGooeyView.this.blurIntensity * 0.5f;
                float f12 = this.factorMult;
                float f13 = f10 + (f11 * f12) + ((f12 - 1.0f) * 2.0f);
                RecordingCanvas recordingCanvasBeginRecording2 = this.blurNode.beginRecording();
                float f14 = 1.0f / f13;
                recordingCanvasBeginRecording2.scale(f14, f14, 0.0f, 0.0f);
                recordingCanvasBeginRecording2.drawRenderNode(this.node);
                this.blurNode.endRecording();
                float f15 = this.factorMult + 2.0f;
                RecordingCanvas recordingCanvasBeginRecording3 = this.effectNode.beginRecording();
                float f16 = 1.0f / f15;
                recordingCanvasBeginRecording3.scale(f16, f16, 0.0f, 0.0f);
                if (iClamp < 255) {
                    recordingCanvasBeginRecording3.saveLayer(this.wholeOptimized, null);
                    recordingCanvasBeginRecording3.drawRenderNode(this.node);
                    recordingCanvasBeginRecording3.drawRect(this.wholeOptimized, this.blackNodePaint);
                    recordingCanvasBeginRecording3.restore();
                }
                float fLerp = AndroidUtilities.lerp(0.0f, AndroidUtilities.m1124dp(7.0f) * f15, 0.0f, 0.5f, ProfileGooeyView.this.pullProgress);
                if (ProfileGooeyView.this.getChildCount() > 0) {
                    View childAt2 = ProfileGooeyView.this.getChildAt(0);
                    float x2 = (childAt2.getX() + ((childAt2.getWidth() * childAt2.getScaleX()) / 2.0f)) - f4;
                    float y2 = ((childAt2.getY() + ((childAt2.getHeight() * childAt2.getScaleY()) / 2.0f)) + AndroidUtilities.m1124dp(32.0f)) - f5;
                    float width2 = (childAt2.getWidth() / 2.0f) * childAt2.getScaleX();
                    ProfileGooeyView.this.path.rewind();
                    f = f15;
                    f2 = f13;
                    ProfileGooeyView.this.path.moveTo(x2 - width2, y2 - (((float) Math.cos(0.7853981633974483d)) * width2));
                    ProfileGooeyView.this.path.lineTo(x2, (y2 - width2) - (0.25f * fLerp));
                    ProfileGooeyView.this.path.lineTo(x2 + width2, y2 - (((float) Math.cos(0.7853981633974483d)) * width2));
                    ProfileGooeyView.this.path.close();
                    recordingCanvasBeginRecording3.drawPath(ProfileGooeyView.this.path, ProfileGooeyView.this.blackPaint);
                } else {
                    f = f15;
                    f2 = f13;
                }
                if (iClamp > 0) {
                    if (iClamp != 255) {
                        recordingCanvasBeginRecording3.saveLayerAlpha(this.wholeOptimized, iClamp);
                    }
                    recordingCanvasBeginRecording3.drawRenderNode(this.node);
                    if (iClamp != 255) {
                        recordingCanvasBeginRecording3.restore();
                    }
                }
                this.effectNode.endRecording();
                RecordingCanvas recordingCanvasBeginRecording4 = this.effectNotchNode.beginRecording();
                recordingCanvasBeginRecording4.scale(f16, f16, 0.0f, 0.0f);
                if (ProfileGooeyView.this.notchInfo != null) {
                    recordingCanvasBeginRecording4.translate(f8, f9);
                    recordingCanvasBeginRecording4.translate(0.0f, AndroidUtilities.m1124dp(32.0f));
                    ProfileGooeyView profileGooeyView = ProfileGooeyView.this;
                    NotchInfoUtils.NotchInfo notchInfo2 = profileGooeyView.notchInfo;
                    if (notchInfo2.isLikelyCircle) {
                        float fMin = Math.min(notchInfo2.bounds.width(), ProfileGooeyView.this.notchInfo.bounds.height()) / 2.0f;
                        RectF rectF2 = ProfileGooeyView.this.notchInfo.bounds;
                        float fWidth = rectF2.bottom - (rectF2.width() / 2.0f);
                        recordingCanvasBeginRecording4.drawCircle(ProfileGooeyView.this.notchInfo.bounds.centerX(), fWidth, fMin, ProfileGooeyView.this.blackPaint);
                        ProfileGooeyView.this.path.rewind();
                        float f17 = fLerp / 2.0f;
                        ProfileGooeyView.this.path.moveTo(ProfileGooeyView.this.notchInfo.bounds.centerX() - f17, fWidth);
                        ProfileGooeyView.this.path.lineTo(ProfileGooeyView.this.notchInfo.bounds.centerX(), fMin + fWidth + fLerp);
                        ProfileGooeyView.this.path.lineTo(ProfileGooeyView.this.notchInfo.bounds.centerX() + f17, fWidth);
                        ProfileGooeyView.this.path.close();
                        recordingCanvasBeginRecording4.drawPath(ProfileGooeyView.this.path, ProfileGooeyView.this.blackPaint);
                    } else if (notchInfo2.isAccurate) {
                        recordingCanvasBeginRecording4.drawPath(notchInfo2.path, profileGooeyView.blackPaint);
                    } else {
                        float fMax = Math.max(notchInfo2.bounds.width(), ProfileGooeyView.this.notchInfo.bounds.height()) / 2.0f;
                        this.temp.set(ProfileGooeyView.this.notchInfo.bounds);
                        recordingCanvasBeginRecording4.drawRoundRect(this.temp, fMax, fMax, ProfileGooeyView.this.blackPaint);
                        ProfileGooeyView.this.path.rewind();
                        float f18 = fLerp / 2.0f;
                        ProfileGooeyView.this.path.moveTo(this.temp.centerX() - f18, this.temp.bottom);
                        ProfileGooeyView.this.path.lineTo(this.temp.centerX(), this.temp.bottom + fLerp);
                        ProfileGooeyView.this.path.lineTo(this.temp.centerX() + f18, this.temp.bottom);
                        ProfileGooeyView.this.path.close();
                        recordingCanvasBeginRecording4.drawPath(ProfileGooeyView.this.path, ProfileGooeyView.this.blackPaint);
                    }
                    i = 255;
                    paint = null;
                } else {
                    i = 255;
                    paint = null;
                    recordingCanvasBeginRecording4.drawRect(0.0f, 0.0f, f6, AndroidUtilities.m1124dp(32.0f), ProfileGooeyView.this.blackPaint);
                    ProfileGooeyView.this.path.rewind();
                    ProfileGooeyView.this.path.moveTo((f6 - fLerp) / 2.0f, AndroidUtilities.m1124dp(32.0f));
                    ProfileGooeyView.this.path.lineTo(f6 / 2.0f, AndroidUtilities.m1124dp(32.0f) + fLerp);
                    ProfileGooeyView.this.path.lineTo((f6 + fLerp) / 2.0f, AndroidUtilities.m1124dp(32.0f));
                    ProfileGooeyView.this.path.close();
                    recordingCanvasBeginRecording4.drawPath(ProfileGooeyView.this.path, ProfileGooeyView.this.blackPaint);
                }
                this.effectNotchNode.endRecording();
                canvas.save();
                canvas.translate(f4, f5 - AndroidUtilities.m1124dp(32.0f));
                NotchInfoUtils.NotchInfo notchInfo3 = ProfileGooeyView.this.notchInfo;
                if (notchInfo3 != null) {
                    canvas.clipRect(0.0f, notchInfo3.bounds.top, f6, f7);
                }
                canvas.saveLayer(this.wholeOptimized, this.filter);
                float f19 = f;
                canvas.scale(f19, f19);
                canvas.drawRenderNode(this.effectNotchNode);
                canvas.drawRenderNode(this.effectNode);
                canvas.restore();
                int iClamp2 = MathUtils.clamp((iIlerp * 3) / 4, 0, i);
                if (iClamp2 < i) {
                    canvas.saveLayer(this.wholeOptimized, paint);
                    if (ProfileGooeyView.this.blurIntensity != 0.0f) {
                        canvas.saveLayer(this.wholeOptimized, this.filter);
                        f3 = f2;
                        canvas.scale(f3, f3);
                        canvas.drawRenderNode(this.blurNode);
                        canvas.restore();
                    } else {
                        f3 = f2;
                        canvas.drawRenderNode(this.node);
                    }
                    canvas.drawRect(this.wholeOptimized, this.blackNodePaint);
                    canvas.restore();
                } else {
                    f3 = f2;
                }
                if (iClamp2 > 0) {
                    if (iClamp2 != i) {
                        canvas.saveLayerAlpha(this.wholeOptimized, iClamp2);
                    }
                    if (ProfileGooeyView.this.blurIntensity != 0.0f) {
                        canvas.saveLayer(this.wholeOptimized, this.filter);
                        canvas.scale(f3, f3);
                        canvas.drawRenderNode(this.blurNode);
                        canvas.restore();
                    } else {
                        canvas.drawRenderNode(this.node);
                    }
                    if (iClamp2 != i) {
                        canvas.restore();
                    }
                }
                canvas.restore();
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private interface Impl {
        void draw(Drawer drawer, Canvas canvas);

        void onSizeChanged(int i, int i2);

        void setBlurIntensity(float f);

        void setIntensity(float f);

        /* JADX INFO: renamed from: org.telegram.ui.Components.ProfileGooeyView$Impl$-CC, reason: invalid class name */
        /* JADX INFO: loaded from: classes3.dex */
        public abstract /* synthetic */ class CC {
            public static void $default$setIntensity(Impl impl, float f) {
            }

            public static void $default$setBlurIntensity(Impl impl, float f) {
            }

            public static void $default$onSizeChanged(Impl impl, int i, int i2) {
            }
        }
    }
}
