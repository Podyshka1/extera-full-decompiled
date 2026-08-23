package org.telegram.messenger;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.GradientClip;

/* JADX INFO: loaded from: classes5.dex */
public class BotFullscreenButtons extends View {
    private final AnimatedFloat animatedBack;
    private final AnimatedFloat animatedDownloading;
    private final AnimatedFloat animatedPreview;
    private boolean back;
    private final Text backText;
    private final Paint backgroundPaint;
    private final Path backgroundPath;
    private RenderNode blurNode;
    private final ButtonBounce closeBounce;
    private final RectF closeRect;
    private final RectF closeRectArea;
    private final Text closeText;
    private final ButtonBounce collapseBounce;
    private final RectF collapseClickRect;
    private final RectF collapseRect;
    private final Paint downloadPaint;
    private final Path downloadPath;
    private boolean downloading;
    private final Runnable hidePreview;
    private final Paint iconPaint;
    private final Paint iconStrokePaint;
    private final RectF insets;
    private final RectF leftMenu;
    private final ButtonBounce menuBounce;
    private final RectF menuClickRect;
    private final RectF menuRect;
    private final ButtonBounce nullBounce;
    public Runnable onCloseClickListener;
    public Runnable onCollapseClickListener;
    public Runnable onMenuClickListener;
    public Object parentRenderNode;
    int pressed;
    private boolean preview;
    private final GradientClip previewClip;
    private Text previewText;
    private final RectF rightMenu;
    private final long start;
    private Drawable verifiedBackground;
    private Drawable verifiedForeground;
    public WebView webView;

    public BotFullscreenButtons(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.iconPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.iconStrokePaint = paint;
        this.backgroundPath = new Path();
        Paint paint2 = new Paint(1);
        this.downloadPaint = paint2;
        Path path = new Path();
        this.downloadPath = path;
        this.insets = new RectF();
        this.leftMenu = new RectF();
        this.nullBounce = new ButtonBounce(null);
        this.closeRect = new RectF();
        this.closeRectArea = new RectF();
        this.closeBounce = new ButtonBounce(this);
        this.rightMenu = new RectF();
        this.collapseRect = new RectF();
        this.collapseClickRect = new RectF();
        this.collapseBounce = new ButtonBounce(this);
        this.menuRect = new RectF();
        this.menuClickRect = new RectF();
        this.menuBounce = new ButtonBounce(this);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.animatedBack = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.preview = true;
        this.animatedPreview = new AnimatedFloat(this, 0L, 420L, cubicBezierInterpolator);
        this.downloading = false;
        this.animatedDownloading = new AnimatedFloat(this, 0L, 420L, cubicBezierInterpolator);
        this.previewClip = new GradientClip();
        this.hidePreview = new Runnable() { // from class: org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.start = System.currentTimeMillis();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        this.backText = new Text(LocaleController.getString(C2888R.string.BotFullscreenBack), 13.0f, AndroidUtilities.bold());
        this.closeText = new Text(LocaleController.getString(C2888R.string.BotFullscreenClose), 13.0f, AndroidUtilities.bold());
        paint2.setPathEffect(new CornerPathEffect(AndroidUtilities.m1124dp(1.0f)));
        path.rewind();
        path.moveTo(-AndroidUtilities.dpf2(1.33f), AndroidUtilities.dpf2(0.16f));
        path.lineTo(-AndroidUtilities.dpf2(1.33f), -AndroidUtilities.dpf2(3.5f));
        path.lineTo(AndroidUtilities.dpf2(1.33f), -AndroidUtilities.dpf2(3.5f));
        path.lineTo(AndroidUtilities.dpf2(1.33f), AndroidUtilities.dpf2(0.16f));
        path.lineTo(AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(0.16f));
        path.lineTo(0.0f, AndroidUtilities.dpf2(3.5f));
        path.lineTo(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(0.16f));
        path.close();
    }

    public void setInsets(RectF rectF) {
        this.insets.set(rectF);
    }

    public void setInsets(Rect rect) {
        this.insets.set(rect);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float currentWidth;
        float f2;
        float f3;
        float f4;
        float f5;
        WebView webView;
        super.onDraw(canvas);
        this.iconPaint.setColor(-1);
        this.iconStrokePaint.setColor(-1);
        this.iconStrokePaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        this.backgroundPath.rewind();
        this.rightMenu.set((getWidth() - this.insets.right) - AndroidUtilities.m1124dp(79.66f), this.insets.top + AndroidUtilities.m1124dp(8.0f), (getWidth() - this.insets.right) - AndroidUtilities.m1124dp(8.0f), this.insets.top + AndroidUtilities.m1124dp(38.0f));
        RectF rectF = this.collapseRect;
        RectF rectF2 = this.rightMenu;
        rectF.set(rectF2.left, rectF2.top, rectF2.centerX(), this.rightMenu.bottom);
        RectF rectF3 = this.collapseClickRect;
        float fM1124dp = this.collapseRect.left - AndroidUtilities.m1124dp(8.0f);
        float fM1124dp2 = this.collapseRect.top - AndroidUtilities.m1124dp(8.0f);
        RectF rectF4 = this.collapseRect;
        rectF3.set(fM1124dp, fM1124dp2, rectF4.right, rectF4.bottom + AndroidUtilities.m1124dp(8.0f));
        RectF rectF5 = this.menuRect;
        float fCenterX = this.rightMenu.centerX();
        RectF rectF6 = this.rightMenu;
        rectF5.set(fCenterX, rectF6.top, rectF6.right, rectF6.bottom);
        RectF rectF7 = this.menuClickRect;
        RectF rectF8 = this.menuRect;
        rectF7.set(rectF8.left, rectF8.top - AndroidUtilities.m1124dp(8.0f), this.menuRect.right + AndroidUtilities.m1124dp(8.0f), this.menuRect.bottom + AndroidUtilities.m1124dp(8.0f));
        Path path = this.backgroundPath;
        RectF rectF9 = this.rightMenu;
        float fM1124dp3 = AndroidUtilities.m1124dp(15.0f);
        float fM1124dp4 = AndroidUtilities.m1124dp(15.0f);
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(rectF9, fM1124dp3, fM1124dp4, direction);
        float f6 = this.animatedBack.set(this.back);
        float f7 = this.animatedPreview.set(this.preview);
        float fM1124dp5 = (this.rightMenu.left - AndroidUtilities.m1124dp(18.0f)) - (this.insets.left + AndroidUtilities.m1124dp(38.0f));
        Text text = this.previewText;
        if (text == null) {
            f = 18.0f;
            currentWidth = 0.0f;
        } else {
            f = 18.0f;
            currentWidth = text.getCurrentWidth() + AndroidUtilities.m1124dp(this.verifiedBackground != null ? 30.0f : 12.0f);
        }
        float fMin = Math.min(fM1124dp5, currentWidth);
        this.leftMenu.set(this.insets.left + AndroidUtilities.m1124dp(8.0f), this.insets.top + AndroidUtilities.m1124dp(8.0f), this.insets.left + AndroidUtilities.m1124dp(38.0f) + AndroidUtilities.lerp(AndroidUtilities.lerp(this.closeText.getCurrentWidth(), this.backText.getCurrentWidth(), f6) + AndroidUtilities.m1124dp(12.0f), fMin, f7), this.insets.top + AndroidUtilities.m1124dp(38.0f));
        RectF rectF10 = this.closeRect;
        RectF rectF11 = this.leftMenu;
        float f8 = rectF11.left;
        rectF10.set(f8, rectF11.top, AndroidUtilities.m1124dp(30.0f) + f8, this.leftMenu.bottom);
        this.closeRectArea.set(this.closeRect);
        this.closeRectArea.right = AndroidUtilities.lerp(this.leftMenu.right, this.closeRect.left + AndroidUtilities.m1124dp(30.0f), f7);
        this.closeRectArea.inset(-AndroidUtilities.m1124dp(8.0f), -AndroidUtilities.m1124dp(8.0f));
        this.backgroundPath.addRoundRect(this.leftMenu, AndroidUtilities.m1124dp(15.0f), AndroidUtilities.m1124dp(15.0f), direction);
        if (this.parentRenderNode != null && Build.VERSION.SDK_INT >= 31 && canvas.isHardwareAccelerated() && ((webView = this.webView) == null || webView.getLayerType() == 2)) {
            if (this.blurNode == null) {
                RenderNode renderNodeM1129m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("bot_fullscreen_blur");
                this.blurNode = renderNodeM1129m;
                float fM1124dp6 = AndroidUtilities.m1124dp(f);
                float fM1124dp7 = AndroidUtilities.m1124dp(f);
                f3 = 16.0f;
                renderNodeM1129m.setRenderEffect(RenderEffect.createBlurEffect(fM1124dp6, fM1124dp7, Shader.TileMode.CLAMP));
            } else {
                f3 = 16.0f;
            }
            RenderNode renderNodeM1130m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline1.m1130m(this.parentRenderNode);
            f2 = 12.0f;
            this.blurNode.setPosition(0, 0, Math.max(1, renderNodeM1130m.getWidth() - AndroidUtilities.m1124dp(f3)), Math.max(1, (int) Math.min(this.insets.top + AndroidUtilities.m1124dp(46.0f), renderNodeM1130m.getHeight())));
            RecordingCanvas recordingCanvasBeginRecording = this.blurNode.beginRecording();
            recordingCanvasBeginRecording.translate(-AndroidUtilities.m1124dp(8.0f), 0.0f);
            recordingCanvasBeginRecording.drawRenderNode(renderNodeM1130m);
            this.blurNode.endRecording();
            canvas.save();
            canvas.clipPath(this.backgroundPath);
            canvas.save();
            canvas.translate(AndroidUtilities.m1124dp(8.0f), 0.0f);
            canvas.drawRenderNode(this.blurNode);
            canvas.restore();
            this.backgroundPaint.setColor(Theme.multAlpha(-16777216, 0.22f));
            canvas.drawPaint(this.backgroundPaint);
            canvas.restore();
        } else {
            f2 = 12.0f;
            f3 = 16.0f;
            this.backgroundPaint.setColor(Theme.multAlpha(-16777216, 0.35f));
            canvas.drawPath(this.backgroundPath, this.backgroundPaint);
        }
        canvas.save();
        canvas.translate(this.closeRect.centerX(), this.closeRect.centerY());
        float scale = this.closeBounce.getScale(0.1f);
        canvas.scale(scale, scale);
        canvas.translate((-AndroidUtilities.m1124dp(6.5f)) * f6, 0.0f);
        float fLerp = AndroidUtilities.lerp(AndroidUtilities.m1124dp(4.66f), AndroidUtilities.m1124dp(5.5f), f6);
        float f9 = -fLerp;
        canvas.drawLine(AndroidUtilities.lerp(f9, 0.0f, f6), AndroidUtilities.lerp(f9, 0.0f, f6), fLerp, fLerp, this.iconStrokePaint);
        canvas.drawLine(AndroidUtilities.lerp(f9, 0.0f, f6), AndroidUtilities.lerp(fLerp, 0.0f, f6), fLerp, f9, this.iconStrokePaint);
        if (f6 > 0.0f) {
            canvas.drawLine(0.0f, 0.0f, AndroidUtilities.m1124dp(11.6f) * f6, 0.0f, this.iconStrokePaint);
        }
        canvas.restore();
        float fM1124dp8 = (this.leftMenu.left + AndroidUtilities.m1124dp(30.0f)) - AndroidUtilities.m1124dp(10.0f);
        RectF rectF12 = this.leftMenu;
        float f10 = rectF12.top;
        float f11 = rectF12.right;
        float f12 = rectF12.bottom;
        Canvas canvas2 = canvas;
        canvas2.saveLayerAlpha(fM1124dp8, f10, f11, f12, 255, 31);
        if (f7 <= 0.0f || this.previewText == null) {
            f4 = f7;
            f5 = 1.0f;
        } else {
            canvas2.save();
            canvas2.translate((this.leftMenu.left + AndroidUtilities.m1124dp(30.0f)) - ((1.0f - f7) * fMin), this.leftMenu.centerY());
            f5 = 1.0f;
            this.previewText.ellipsize(((this.leftMenu.right - AndroidUtilities.m1124dp(this.verifiedBackground != null ? 30.0f : f2)) - (this.leftMenu.left + AndroidUtilities.m1124dp(30.0f))) + 2.0f).draw(canvas2, 0.0f, 0.0f, -1, f7);
            canvas2 = canvas2;
            f4 = f7;
            canvas2.translate(this.previewText.getWidth() + AndroidUtilities.m1124dp(5.0f), 0.0f);
            int iM1124dp = AndroidUtilities.m1124dp(f3);
            Drawable drawable = this.verifiedBackground;
            if (drawable != null) {
                drawable.setBounds(0, (-iM1124dp) / 2, iM1124dp, iM1124dp / 2);
                this.verifiedBackground.setAlpha((int) (75.0f * f4));
                this.verifiedBackground.draw(canvas2);
            }
            Drawable drawable2 = this.verifiedForeground;
            if (drawable2 != null) {
                drawable2.setBounds(0, (-iM1124dp) / 2, iM1124dp, iM1124dp / 2);
                this.verifiedForeground.setAlpha((int) (255.0f * f4));
                this.verifiedForeground.draw(canvas2);
            }
            RectF rectF13 = AndroidUtilities.rectTmp;
            float fM1124dp9 = (this.leftMenu.left + AndroidUtilities.m1124dp(30.0f)) - AndroidUtilities.m1124dp(10.0f);
            RectF rectF14 = this.leftMenu;
            rectF13.set(fM1124dp9, rectF14.top, rectF14.left + AndroidUtilities.m1124dp(30.0f), this.leftMenu.bottom);
            this.previewClip.draw(canvas2, rectF13, 2, 1.0f);
            canvas2.restore();
        }
        if (f4 < f5) {
            canvas2.save();
            float scale2 = this.closeBounce.getScale(0.1f);
            canvas2.scale(scale2, scale2, this.closeRect.centerX(), this.closeRect.centerY());
            float f13 = f5 - f6;
            if (f13 > 0.0f) {
                this.closeText.draw(canvas, (AndroidUtilities.m1124dp(32.0f) * f4) + ((this.closeRect.left + AndroidUtilities.m1124dp(30.0f)) - (AndroidUtilities.m1124dp(f2) * f6)), this.closeRect.centerY(), -1, f13 * (f5 - f4));
            }
            if (f6 > 0.0f) {
                this.backText.draw(canvas, (AndroidUtilities.m1124dp(32.0f) * f4) + this.closeRect.left + AndroidUtilities.m1124dp(30.0f) + (AndroidUtilities.m1124dp(f2) * f13), this.closeRect.centerY(), -1, f6 * (f5 - f4));
                canvas2 = canvas;
            } else {
                canvas2 = canvas;
            }
            canvas2.restore();
        }
        canvas2.restore();
        canvas2.save();
        canvas2.translate(this.collapseRect.centerX() + AndroidUtilities.m1124dp(2.0f), this.collapseRect.centerY());
        float scale3 = this.collapseBounce.getScale(0.1f);
        canvas2.scale(scale3, scale3);
        float fM1124dp10 = AndroidUtilities.m1124dp(6.0f);
        float fM1124dp11 = AndroidUtilities.m1124dp(3.0f);
        float f14 = -fM1124dp11;
        canvas2.drawLine(-fM1124dp10, f14, 0.0f, fM1124dp11, this.iconStrokePaint);
        canvas.drawLine(0.0f, fM1124dp11, fM1124dp10, f14, this.iconStrokePaint);
        canvas.restore();
        canvas.save();
        canvas.translate(this.menuRect.centerX() + AndroidUtilities.m1124dp(f5), this.menuRect.centerY());
        float scale4 = this.menuBounce.getScale(0.1f);
        canvas.scale(scale4, scale4);
        canvas.drawCircle(0.0f, -AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(1.66f), this.iconPaint);
        canvas.drawCircle(0.0f, 0.0f, AndroidUtilities.m1124dp(1.66f), this.iconPaint);
        canvas.drawCircle(0.0f, AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(1.66f), this.iconPaint);
        float f15 = this.animatedDownloading.set(this.downloading);
        if (f15 > 0.0f) {
            canvas.translate(-AndroidUtilities.dpf2(8.166f), AndroidUtilities.dpf2(3.5f));
            float f16 = (f15 * 0.5f) + 0.5f;
            canvas.scale(f16, f16);
            this.downloadPaint.setColor(Theme.multAlpha(-1, 0.4f));
            canvas.drawPath(this.downloadPath, this.downloadPaint);
            float fCurrentTimeMillis = ((System.currentTimeMillis() - this.start) % 450) / 450.0f;
            float f17 = 0.5f + fCurrentTimeMillis;
            canvas.save();
            canvas.clipRect(-AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), fCurrentTimeMillis), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), f17));
            this.downloadPaint.setColor(Theme.multAlpha(-1, f5));
            canvas.drawPath(this.downloadPath, this.downloadPaint);
            canvas.restore();
            if (f17 > f5) {
                canvas.save();
                canvas.clipRect(-AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), 0.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), f17 - f5));
                this.downloadPaint.setColor(Theme.multAlpha(-1, f5));
                canvas.drawPath(this.downloadPath, this.downloadPaint);
                canvas.restore();
            }
            invalidate();
        }
        canvas.restore();
    }

    public void setDownloading(boolean z) {
        if (this.downloading == z) {
            return;
        }
        this.downloading = z;
        invalidate();
    }

    public void setName(String str, boolean z) {
        this.previewText = new Text(str, 13.0f, AndroidUtilities.bold());
        if (!z) {
            this.verifiedBackground = null;
            this.verifiedForeground = null;
        } else {
            this.verifiedBackground = getContext().getResources().getDrawable(C2888R.drawable.verified_area).mutate();
            this.verifiedForeground = getContext().getResources().getDrawable(C2888R.drawable.verified_check).mutate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        setPreview(false, true);
    }

    public void setPreview(boolean z, boolean z2) {
        AndroidUtilities.cancelRunOnUIThread(this.hidePreview);
        this.preview = z;
        if (!z2) {
            this.animatedPreview.set(z, true);
        }
        invalidate();
        if (z) {
            AndroidUtilities.runOnUIThread(this.hidePreview, 2500L);
        }
    }

    public void setOnCloseClickListener(Runnable runnable) {
        this.onCloseClickListener = runnable;
    }

    public void setOnCollapseClickListener(Runnable runnable) {
        this.onCollapseClickListener = runnable;
    }

    public void setOnMenuClickListener(Runnable runnable) {
        this.onMenuClickListener = runnable;
    }

    public void setParentRenderNode(Object obj) {
        this.parentRenderNode = obj;
    }

    public void setWebView(WebView webView) {
        this.webView = webView;
    }

    private int getButton(MotionEvent motionEvent) {
        if (this.closeRectArea.contains(motionEvent.getX(), motionEvent.getY())) {
            return 1;
        }
        if (this.collapseClickRect.contains(motionEvent.getX(), motionEvent.getY())) {
            return 2;
        }
        return this.menuClickRect.contains(motionEvent.getX(), motionEvent.getY()) ? 3 : 0;
    }

    private ButtonBounce getBounce(int i) {
        if (i == 1) {
            return this.closeBounce;
        }
        if (i == 2) {
            return this.collapseBounce;
        }
        if (i == 3) {
            return this.menuBounce;
        }
        return this.nullBounce;
    }

    public void setBack(boolean z) {
        setBack(z, true);
    }

    public void setBack(boolean z, boolean z2) {
        this.back = z;
        if (!z2) {
            this.animatedBack.set(z);
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Runnable runnable;
        Runnable runnable2;
        Runnable runnable3;
        if (motionEvent.getAction() == 0) {
            getBounce(this.pressed).setPressed(false);
            int button = getButton(motionEvent);
            this.pressed = button;
            getBounce(button).setPressed(true);
        } else if (motionEvent.getAction() == 2) {
            if (getButton(motionEvent) != this.pressed) {
                this.pressed = 0;
                getBounce(0).setPressed(false);
            }
        } else if (motionEvent.getAction() == 1) {
            int i = this.pressed;
            if (i == 1 && (runnable3 = this.onCloseClickListener) != null) {
                runnable3.run();
            } else if (i == 2 && (runnable2 = this.onCollapseClickListener) != null) {
                runnable2.run();
            } else if (i == 3 && (runnable = this.onMenuClickListener) != null) {
                runnable.run();
            }
            getBounce(this.pressed).setPressed(false);
            this.pressed = 0;
        } else if (motionEvent.getAction() == 3) {
            getBounce(this.pressed).setPressed(false);
            this.pressed = 0;
        }
        return this.pressed != 0;
    }

    public static class OptionsIcon extends Drawable {
        private final AnimatedFloat animatedDownloading;
        private final Paint downloadPaint;
        private final Path downloadPath;
        private boolean downloading;
        private final Drawable drawable;
        private final long start;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        public OptionsIcon(Context context) {
            Paint paint = new Paint(1);
            this.downloadPaint = paint;
            Path path = new Path();
            this.downloadPath = path;
            this.downloading = false;
            this.animatedDownloading = new AnimatedFloat(new Runnable() { // from class: org.telegram.messenger.BotFullscreenButtons$OptionsIcon$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidateSelf();
                }
            }, 0L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.start = System.currentTimeMillis();
            this.drawable = context.getResources().getDrawable(C2888R.drawable.ic_ab_other).mutate();
            paint.setPathEffect(new CornerPathEffect(AndroidUtilities.m1124dp(1.0f)));
            path.rewind();
            path.moveTo(-AndroidUtilities.dpf2(1.33f), AndroidUtilities.dpf2(0.16f));
            path.lineTo(-AndroidUtilities.dpf2(1.33f), -AndroidUtilities.dpf2(3.5f));
            path.lineTo(AndroidUtilities.dpf2(1.33f), -AndroidUtilities.dpf2(3.5f));
            path.lineTo(AndroidUtilities.dpf2(1.33f), AndroidUtilities.dpf2(0.16f));
            path.lineTo(AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(0.16f));
            path.lineTo(0.0f, AndroidUtilities.dpf2(3.5f));
            path.lineTo(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(0.16f));
            path.close();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.drawable.setBounds(getBounds());
            this.drawable.draw(canvas);
            float f = this.animatedDownloading.set(this.downloading);
            if (f > 0.0f) {
                canvas.save();
                canvas.translate(getBounds().centerX(), getBounds().centerY());
                canvas.translate(-AndroidUtilities.dpf2(8.166f), AndroidUtilities.dpf2(5.0f));
                float f2 = (f * 0.5f) + 0.5f;
                canvas.scale(f2, f2);
                this.downloadPaint.setColor(Theme.multAlpha(-1, 0.4f));
                canvas.drawPath(this.downloadPath, this.downloadPaint);
                float fCurrentTimeMillis = ((System.currentTimeMillis() - this.start) % 450) / 450.0f;
                float f3 = 0.5f + fCurrentTimeMillis;
                canvas.save();
                canvas.clipRect(-AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), fCurrentTimeMillis), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), f3));
                this.downloadPaint.setColor(Theme.multAlpha(-1, 1.0f));
                canvas.drawPath(this.downloadPath, this.downloadPaint);
                canvas.restore();
                if (f3 > 1.0f) {
                    canvas.save();
                    canvas.clipRect(-AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), 0.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.lerp(-AndroidUtilities.dpf2(3.5f), AndroidUtilities.dpf2(3.5f), f3 - 1.0f));
                    this.downloadPaint.setColor(Theme.multAlpha(-1, 1.0f));
                    canvas.drawPath(this.downloadPath, this.downloadPaint);
                    canvas.restore();
                }
                canvas.restore();
                invalidateSelf();
            }
        }

        public void setDownloading(boolean z) {
            if (this.downloading == z) {
                return;
            }
            this.downloading = z;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.drawable.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.downloadPaint.setColorFilter(colorFilter);
            this.drawable.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.drawable.getIntrinsicWidth();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.drawable.getIntrinsicHeight();
        }
    }
}
