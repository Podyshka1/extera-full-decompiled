package org.telegram.p029ui.Components;

import android.R;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.StateSet;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.speech.VoiceRecognitionController;
import com.exteragram.messenger.speech.utils.MediaLoader;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TranscribeButton {
    private static final int[] pressedState = {R.attr.state_enabled, R.attr.state_pressed};
    private static HashMap transcribeOperationsByDialogPosition;
    private static HashMap transcribeOperationsById;
    private static ArrayList videoTranscriptionsOpen;

    /* JADX INFO: renamed from: a */
    private float f2102a;
    private final AnimatedFloat animatedDrawLock;

    /* JADX INFO: renamed from: b */
    private float f2103b;
    private float backgroundBack;
    private int backgroundColor;
    private Paint backgroundPaint;
    private Path boundsPath;
    private Paint clipLockPaint;
    private int color;
    private int diameter;
    private boolean drawLock;
    private int iconColor;
    private RLottieDrawable inIconDrawable;
    private int inIconDrawableAlpha;
    private boolean isOpen;
    private boolean loading;
    private final AnimatedFloat loadingFloat;
    private Path lockHandlePath;
    private float lockHandlePathDensity;
    private Paint lockPaint;
    private Paint lockStrokePaint;
    private RLottieDrawable outIconDrawable;
    private int outIconDrawableAlpha;
    private ChatMessageCell parent;
    private boolean premium;
    private Rect pressBounds;
    private Path progressClipPath;
    private int radius;
    private int rippleColor;
    private SeekBarWaveform seekBar;
    private float[] segments;
    private Drawable selectorDrawable;
    private boolean shouldBeOpen;
    private Paint strokePaint;
    private boolean clickedToOpen = false;
    private boolean pressed = false;
    private long pressId = 0;
    private final FastOutSlowInInterpolator interpolator = new FastOutSlowInInterpolator();
    private long start = SystemClock.elapsedRealtime();
    private Rect bounds = new Rect(0, 0, AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(30.0f));

    public abstract void drawGradientBackground(Canvas canvas, Rect rect, float f);

    protected abstract void onOpen();

    public TranscribeButton(ChatMessageCell chatMessageCell, SeekBarWaveform seekBarWaveform) {
        boolean z = false;
        this.parent = chatMessageCell;
        this.seekBar = seekBarWaveform;
        Rect rect = new Rect(this.bounds);
        this.pressBounds = rect;
        rect.inset(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C2888R.raw.transcribe_out, "transcribe_out", AndroidUtilities.m1124dp(26.0f), AndroidUtilities.m1124dp(26.0f));
        this.outIconDrawable = rLottieDrawable;
        rLottieDrawable.setCurrentFrame(0);
        this.outIconDrawable.setCallback(chatMessageCell);
        this.outIconDrawable.setOnFinishCallback(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        }, 19);
        this.outIconDrawable.setAllowDecodeSingleFrame(true);
        RLottieDrawable rLottieDrawable2 = new RLottieDrawable(C2888R.raw.transcribe_in, "transcribe_in", AndroidUtilities.m1124dp(26.0f), AndroidUtilities.m1124dp(26.0f));
        this.inIconDrawable = rLottieDrawable2;
        rLottieDrawable2.setCurrentFrame(0);
        this.inIconDrawable.setCallback(chatMessageCell);
        this.inIconDrawable.setMasterParent(chatMessageCell);
        this.inIconDrawable.setOnFinishCallback(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        }, 19);
        this.inIconDrawable.setAllowDecodeSingleFrame(true);
        this.isOpen = false;
        this.shouldBeOpen = false;
        if (chatMessageCell.getMessageObject() != null && UserConfig.getInstance(chatMessageCell.getMessageObject().currentAccount).isPremium()) {
            z = true;
        }
        this.premium = z;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.loadingFloat = new AnimatedFloat(chatMessageCell, 250L, cubicBezierInterpolator);
        this.animatedDrawLock = new AnimatedFloat(chatMessageCell, 250L, cubicBezierInterpolator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.outIconDrawable.stop();
        this.inIconDrawable.stop();
        this.shouldBeOpen = true;
        this.isOpen = true;
        this.inIconDrawable.setCurrentFrame(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.inIconDrawable.stop();
        this.outIconDrawable.stop();
        this.shouldBeOpen = false;
        this.isOpen = false;
        this.outIconDrawable.setCurrentFrame(0);
    }

    public void setLock(boolean z, boolean z2) {
        ChatMessageCell chatMessageCell;
        if (this.drawLock != z && (chatMessageCell = this.parent) != null) {
            chatMessageCell.invalidate();
        }
        this.drawLock = z;
        if (z2) {
            return;
        }
        this.animatedDrawLock.set(z, true);
    }

    public void setLoading(boolean z, boolean z2) {
        this.loading = z;
        this.seekBar.setLoading(z);
        if (!z2) {
            this.loadingFloat.set(this.loading, true);
        } else if (this.loadingFloat.get() <= 0.0f) {
            this.start = SystemClock.elapsedRealtime();
        }
        ChatMessageCell chatMessageCell = this.parent;
        if (chatMessageCell != null) {
            chatMessageCell.invalidate();
        }
    }

    public void setOpen(boolean z, boolean z2) {
        if (!this.shouldBeOpen && z && this.clickedToOpen) {
            this.clickedToOpen = false;
            onOpen();
        }
        boolean z3 = this.shouldBeOpen;
        this.shouldBeOpen = z;
        if (!z2) {
            this.isOpen = z;
            this.inIconDrawable.stop();
            this.outIconDrawable.stop();
            this.inIconDrawable.setCurrentFrame(0);
            this.outIconDrawable.setCurrentFrame(0);
        } else if (z && !z3) {
            this.isOpen = false;
            this.inIconDrawable.setCurrentFrame(0);
            this.outIconDrawable.setCurrentFrame(0);
            this.outIconDrawable.start();
        } else if (!z && z3) {
            this.isOpen = true;
            this.outIconDrawable.setCurrentFrame(0);
            this.inIconDrawable.setCurrentFrame(0);
            this.inIconDrawable.start();
        }
        ChatMessageCell chatMessageCell = this.parent;
        if (chatMessageCell != null) {
            chatMessageCell.invalidate();
        }
    }

    public boolean onTouch(int i, float f, float f2) {
        if (i == 1 || i == 3) {
            if (this.pressed && i == 1) {
                onTap();
                return true;
            }
            this.pressed = false;
            return false;
        }
        if (!this.pressBounds.contains((int) f, (int) f2)) {
            return false;
        }
        if (i == 0) {
            this.pressed = true;
        }
        if (this.pressed) {
            Drawable drawable = this.selectorDrawable;
            if (drawable instanceof RippleDrawable) {
                drawable.setHotspot(f, f2);
                this.selectorDrawable.setState(pressedState);
                this.parent.invalidate();
            }
        }
        return true;
    }

    public void onTap() {
        boolean z;
        ChatMessageCell chatMessageCell = this.parent;
        if (chatMessageCell == null) {
            return;
        }
        this.clickedToOpen = false;
        boolean z2 = this.shouldBeOpen;
        boolean z3 = !z2;
        if (!z2) {
            z = !this.loading;
            if ((this.premium || canTranscribeTrial(chatMessageCell.getMessageObject()) || VoiceRecognitionController.isCustomRecognitionEnabled()) && this.parent.getMessageObject().isSent()) {
                setLoading(true, true);
            }
        } else {
            setOpen(false, true);
            setLoading(false, true);
            z = true;
        }
        Drawable drawable = this.selectorDrawable;
        if (drawable instanceof RippleDrawable) {
            drawable.setState(StateSet.NOTHING);
            this.parent.invalidate();
        }
        this.pressed = false;
        if (z) {
            if (!z2) {
                this.clickedToOpen = true;
            }
            transcribePressed(this.parent.getMessageObject(), z3, this.parent.getDelegate());
        }
    }

    public void setColor(int i, int i2, boolean z, float f) {
        boolean z2 = this.color != i;
        this.color = i;
        this.iconColor = i;
        int alphaComponent = ColorUtils.setAlphaComponent(i, (int) (Color.alpha(i) * 0.156f));
        this.backgroundColor = alphaComponent;
        this.backgroundBack = f;
        this.rippleColor = Theme.blendOver(alphaComponent, ColorUtils.setAlphaComponent(i, (int) (Color.alpha(i) * (Theme.isCurrentThemeDark() ? 0.3f : 0.2f))));
        if (this.backgroundPaint == null) {
            this.backgroundPaint = new Paint();
        }
        this.backgroundPaint.setColor(this.backgroundColor);
        this.backgroundPaint.setAlpha((int) (r1.getAlpha() * (1.0f - f)));
        if (z2 || this.selectorDrawable == null) {
            Drawable drawableCreateSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), 0, this.rippleColor);
            this.selectorDrawable = drawableCreateSimpleSelectorRoundRectDrawable;
            drawableCreateSimpleSelectorRoundRectDrawable.setCallback(this.parent);
        }
        if (z2) {
            this.inIconDrawable.beginApplyLayerColors();
            this.inIconDrawable.setLayerColor("Artboard Outlines.**", this.iconColor);
            this.inIconDrawable.commitApplyLayerColors();
            this.inIconDrawable.setAllowDecodeSingleFrame(true);
            this.inIconDrawable.updateCurrentFrame(0L, false);
            RLottieDrawable rLottieDrawable = this.inIconDrawable;
            int iAlpha = Color.alpha(i);
            this.inIconDrawableAlpha = iAlpha;
            rLottieDrawable.setAlpha(iAlpha);
            this.outIconDrawable.beginApplyLayerColors();
            this.outIconDrawable.setLayerColor("Artboard Outlines.**", this.iconColor);
            this.outIconDrawable.commitApplyLayerColors();
            this.outIconDrawable.setAllowDecodeSingleFrame(true);
            this.outIconDrawable.updateCurrentFrame(0L, false);
            RLottieDrawable rLottieDrawable2 = this.outIconDrawable;
            int iAlpha2 = Color.alpha(i);
            this.outIconDrawableAlpha = iAlpha2;
            rLottieDrawable2.setAlpha(iAlpha2);
        }
        if (this.strokePaint == null) {
            Paint paint = new Paint(1);
            this.strokePaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.strokePaint.setStrokeCap(Paint.Cap.ROUND);
        }
        this.strokePaint.setColor(i);
    }

    public void setBounds(int i, int i2, int i3, int i4, int i5) {
        if (i3 != this.bounds.width() || i4 != this.bounds.height()) {
            float f = i3 / 2.0f;
            float f2 = i5;
            float f3 = i4 / 2.0f;
            this.f2102a = (float) ((Math.atan((f - f2) / f3) * 180.0d) / 3.141592653589793d);
            this.f2103b = (float) ((Math.atan(f / (f3 - f2)) * 180.0d) / 3.141592653589793d);
        }
        this.bounds.set(i, i2, i + i3, i2 + i4);
        int iMin = Math.min(Math.min(i3, i4) / 2, i5);
        this.radius = iMin;
        this.diameter = iMin * 2;
    }

    public int width() {
        return this.bounds.width();
    }

    public int height() {
        return this.bounds.height();
    }

    public void draw(Canvas canvas, float f) {
        this.pressBounds.set(this.bounds.left - AndroidUtilities.m1124dp(8.0f), this.bounds.top - AndroidUtilities.m1124dp(8.0f), this.bounds.right + AndroidUtilities.m1124dp(8.0f), this.bounds.bottom + AndroidUtilities.m1124dp(8.0f));
        Path path = this.boundsPath;
        if (path == null) {
            this.boundsPath = new Path();
        } else {
            path.rewind();
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(this.bounds);
        Path path2 = this.boundsPath;
        int i = this.radius;
        path2.addRoundRect(rectF, i, i, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.boundsPath);
        float f2 = this.backgroundBack;
        if (f2 * f > 0.0f) {
            drawGradientBackground(canvas, this.bounds, f2 * f);
        }
        Paint paint = this.backgroundPaint;
        if (paint != null) {
            int alpha = paint.getAlpha();
            this.backgroundPaint.setAlpha((int) (alpha * f));
            canvas.drawRect(this.bounds, this.backgroundPaint);
            this.backgroundPaint.setAlpha(alpha);
        }
        Drawable drawable = this.selectorDrawable;
        if (drawable != null) {
            drawable.setBounds(this.bounds);
            this.selectorDrawable.draw(canvas);
        }
        canvas.restore();
        float f3 = this.loadingFloat.set(this.loading ? 1.0f : 0.0f);
        if (f3 > 0.0f) {
            float[] segments = getSegments((long) ((SystemClock.elapsedRealtime() - this.start) * 0.75f));
            Path path3 = this.progressClipPath;
            if (path3 == null) {
                this.progressClipPath = new Path();
            } else {
                path3.rewind();
            }
            float fMax = Math.max(40.0f * f3, segments[1] - segments[0]);
            float f4 = segments[0] + ((1.0f - f3) * fMax * (this.loading ? 0.0f : 1.0f));
            float f5 = (fMax * f3) + f4;
            float f6 = f4 % 360.0f;
            float f7 = f5 % 360.0f;
            if (f6 < 0.0f) {
                f6 += 360.0f;
            }
            float f8 = f6;
            if (f7 < 0.0f) {
                f7 += 360.0f;
            }
            float f9 = f7;
            Path path4 = this.progressClipPath;
            int iCenterX = this.bounds.centerX();
            Rect rect = this.bounds;
            int i2 = rect.top;
            addLine(path4, iCenterX, i2, rect.right - this.radius, i2, f8, f9, 0.0f, this.f2102a);
            Path path5 = this.progressClipPath;
            Rect rect2 = this.bounds;
            addCorner(path5, rect2.right, rect2.top, this.diameter, 1, f8, f9, this.f2102a, this.f2103b);
            Path path6 = this.progressClipPath;
            Rect rect3 = this.bounds;
            int i3 = rect3.right;
            int i4 = rect3.top;
            int i5 = this.radius;
            int i6 = i4 + i5;
            int i7 = rect3.bottom - i5;
            float f10 = this.f2103b;
            addLine(path6, i3, i6, i3, i7, f8, f9, f10, 180.0f - f10);
            Path path7 = this.progressClipPath;
            Rect rect4 = this.bounds;
            addCorner(path7, rect4.right, rect4.bottom, this.diameter, 2, f8, f9, 180.0f - this.f2103b, 180.0f - this.f2102a);
            Path path8 = this.progressClipPath;
            Rect rect5 = this.bounds;
            int i8 = rect5.right;
            int i9 = this.radius;
            int i10 = i8 - i9;
            int i11 = rect5.bottom;
            int i12 = i9 + rect5.left;
            float f11 = this.f2102a;
            addLine(path8, i10, i11, i12, i11, f8, f9, 180.0f - f11, f11 + 180.0f);
            Path path9 = this.progressClipPath;
            Rect rect6 = this.bounds;
            addCorner(path9, rect6.left, rect6.bottom, this.diameter, 3, f8, f9, this.f2102a + 180.0f, this.f2103b + 180.0f);
            Path path10 = this.progressClipPath;
            Rect rect7 = this.bounds;
            int i13 = rect7.left;
            int i14 = rect7.bottom;
            int i15 = this.radius;
            int i16 = i14 - i15;
            int i17 = i15 + rect7.top;
            float f12 = this.f2103b;
            addLine(path10, i13, i16, i13, i17, f8, f9, f12 + 180.0f, 360.0f - f12);
            Path path11 = this.progressClipPath;
            Rect rect8 = this.bounds;
            addCorner(path11, rect8.left, rect8.top, this.diameter, 4, f8, f9, 360.0f - this.f2103b, 360.0f - this.f2102a);
            Path path12 = this.progressClipPath;
            Rect rect9 = this.bounds;
            addLine(path12, rect9.left + this.radius, rect9.top, rect9.centerX(), this.bounds.top, f8, f9, 360.0f - this.f2102a, 360.0f);
            this.strokePaint.setStrokeWidth(AndroidUtilities.m1124dp(1.5f));
            int alpha2 = this.strokePaint.getAlpha();
            this.strokePaint.setAlpha((int) (alpha2 * f));
            canvas.drawPath(this.progressClipPath, this.strokePaint);
            this.strokePaint.setAlpha(alpha2);
            this.parent.invalidate();
        }
        canvas.save();
        canvas.translate(this.bounds.centerX() + AndroidUtilities.m1124dp(-13.0f), this.bounds.centerY() + AndroidUtilities.m1124dp(-13.0f));
        canvas.saveLayerAlpha(0.0f, 0.0f, AndroidUtilities.m1124dp(26.0f), AndroidUtilities.m1124dp(26.0f), 255, 31);
        if (this.isOpen) {
            this.inIconDrawable.setAlpha((int) (this.inIconDrawableAlpha * f));
            this.inIconDrawable.draw(canvas);
        } else {
            this.outIconDrawable.setAlpha((int) (this.outIconDrawableAlpha * f));
            this.outIconDrawable.draw(canvas);
        }
        drawLock(canvas);
        canvas.restore();
        canvas.restore();
    }

    private void drawLock(Canvas canvas) {
        float f = this.animatedDrawLock.set((!this.drawLock || this.isOpen || this.loading) ? false : true);
        if (f <= 0.0f) {
            return;
        }
        canvas.save();
        canvas.translate(AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(12.0f));
        if (this.clipLockPaint == null) {
            Paint paint = new Paint(1);
            this.clipLockPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(0.0f, -AndroidUtilities.m1124dp(0.4f), AndroidUtilities.m1124dp(6.666f), AndroidUtilities.m1124dp(8.733f));
        canvas.scale(f, f, rectF.centerX(), rectF.centerY());
        canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), this.clipLockPaint);
        if (this.lockPaint == null) {
            this.lockPaint = new Paint(1);
        }
        this.lockPaint.setColor(this.iconColor);
        int i = (int) (f * 255.0f);
        this.lockPaint.setAlpha(i);
        rectF.set(0.0f, AndroidUtilities.m1124dp(3.33f), AndroidUtilities.m1124dp(6.666f), AndroidUtilities.m1124dp(8.33f));
        canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(1.33f), AndroidUtilities.m1124dp(1.33f), this.lockPaint);
        if (this.lockHandlePath == null || Math.abs(this.lockHandlePathDensity - AndroidUtilities.density) > 0.1f) {
            this.lockHandlePathDensity = AndroidUtilities.density;
            Path path = new Path();
            this.lockHandlePath = path;
            path.moveTo(AndroidUtilities.m1124dp(1.66f), AndroidUtilities.m1124dp(3.33f));
            this.lockHandlePath.lineTo(AndroidUtilities.m1124dp(1.66f), AndroidUtilities.m1124dp(2.0f));
            rectF.set(AndroidUtilities.m1124dp(1.66f), AndroidUtilities.m1124dp(0.33f), AndroidUtilities.m1124dp(4.99f), AndroidUtilities.m1124dp(3.6599998f));
            this.lockHandlePath.arcTo(rectF, -180.0f, 180.0f, false);
            this.lockHandlePath.lineTo(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(3.33f));
        }
        if (this.lockStrokePaint == null) {
            Paint paint2 = new Paint(1);
            this.lockStrokePaint = paint2;
            paint2.setStyle(Paint.Style.STROKE);
        }
        this.lockStrokePaint.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
        this.lockStrokePaint.setColor(this.iconColor);
        this.lockStrokePaint.setAlpha(i);
        canvas.drawPath(this.lockHandlePath, this.lockStrokePaint);
        canvas.restore();
    }

    private float[] getSegments(long j) {
        if (this.segments == null) {
            this.segments = new float[2];
        }
        long j2 = j % 5400;
        float[] fArr = this.segments;
        float f = (1520 * j2) / 5400.0f;
        fArr[0] = f - 20.0f;
        fArr[1] = f;
        for (int i = 0; i < 4; i++) {
            float[] fArr2 = this.segments;
            int i2 = i * 1350;
            fArr2[1] = fArr2[1] + (this.interpolator.getInterpolation((j2 - ((long) i2)) / 667.0f) * 250.0f);
            float[] fArr3 = this.segments;
            fArr3[0] = fArr3[0] + (this.interpolator.getInterpolation((j2 - ((long) (i2 + 667))) / 667.0f) * 250.0f);
        }
        return this.segments;
    }

    private void addLine(Path path, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
        if (i == i3 && i2 == i4) {
            return;
        }
        if (f > f2) {
            float f5 = f4 - f3;
            addLine(path, i, i2, i3, i4, (f - f3) / f5, 1.0f);
            addLine(path, i, i2, i3, i4, 0.0f, (f2 - f3) / f5);
        } else {
            float f6 = f4 - f3;
            addLine(path, i, i2, i3, i4, Math.max(0.0f, f - f3) / f6, (Math.min(f2, f4) - f3) / f6);
        }
    }

    private void addLine(Path path, int i, int i2, int i3, int i4, float f, float f2) {
        if (i == i3 && i2 == i4) {
            return;
        }
        float fClamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (MathUtils.clamp(f2, 0.0f, 1.0f) - fClamp <= 0.0f) {
            return;
        }
        path.moveTo(AndroidUtilities.lerp(i, i3, fClamp), AndroidUtilities.lerp(i2, i4, fClamp));
        path.lineTo(AndroidUtilities.lerp(i, i3, r9), AndroidUtilities.lerp(i2, i4, r9));
    }

    private void addCorner(Path path, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
        if (f > f2) {
            float f5 = f4 - f3;
            addCorner(path, i, i2, i3, i4, (f - f3) / f5, 1.0f);
            addCorner(path, i, i2, i3, i4, 0.0f, (f2 - f3) / f5);
        } else {
            float f6 = f4 - f3;
            addCorner(path, i, i2, i3, i4, Math.max(0.0f, f - f3) / f6, (Math.min(f2, f4) - f3) / f6);
        }
    }

    private void addCorner(Path path, int i, int i2, int i3, int i4, float f, float f2) {
        float fClamp = MathUtils.clamp(f, 0.0f, 1.0f);
        float fClamp2 = MathUtils.clamp(f2, 0.0f, 1.0f) - fClamp;
        if (fClamp2 <= 0.0f) {
            return;
        }
        if (i4 == 1) {
            AndroidUtilities.rectTmp.set(i - i3, i2, i, i2 + i3);
        } else if (i4 == 2) {
            AndroidUtilities.rectTmp.set(i - i3, i2 - i3, i, i2);
        } else if (i4 == 3) {
            AndroidUtilities.rectTmp.set(i, i2 - i3, i + i3, i2);
        } else if (i4 == 4) {
            AndroidUtilities.rectTmp.set(i, i2, i + i3, i2 + i3);
        }
        path.addArc(AndroidUtilities.rectTmp, ((i4 * 90) - 180) + (fClamp * 90.0f), fClamp2 * 90.0f);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class LoadingPointsSpan extends ImageSpan {
        private static LoadingPointsDrawable drawable;

        public LoadingPointsSpan() {
            LoadingPointsDrawable loadingPointsDrawable = drawable;
            if (loadingPointsDrawable == null) {
                loadingPointsDrawable = new LoadingPointsDrawable(Theme.chat_msgTextPaint);
                drawable = loadingPointsDrawable;
            }
            super(loadingPointsDrawable, 0);
            float textSize = Theme.chat_msgTextPaint.getTextSize() * 0.89f;
            int i = (int) (0.02f * textSize);
            getDrawable().setBounds(0, i, (int) textSize, ((int) (textSize * 1.25f)) + i);
        }

        @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            float textSize = textPaint.getTextSize() * 0.89f;
            int i = (int) (0.02f * textSize);
            getDrawable().setBounds(0, i, (int) textSize, ((int) (textSize * 1.25f)) + i);
            super.updateDrawState(textPaint);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private static class LoadingPointsDrawable extends Drawable {
        private int lastColor;
        private RLottieDrawable lottie;
        private Paint paint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public LoadingPointsDrawable(TextPaint textPaint) {
            this.paint = textPaint;
            float textSize = textPaint.getTextSize() * 0.89f;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2888R.raw.dots_loading, "dots_loading", (int) textSize, (int) (textSize * 1.25f)) { // from class: org.telegram.ui.Components.TranscribeButton.LoadingPointsDrawable.1
                @Override // org.telegram.p029ui.Components.RLottieDrawable
                protected boolean hasParentView() {
                    return true;
                }
            };
            this.lottie = rLottieDrawable;
            rLottieDrawable.setAutoRepeat(1);
            this.lottie.setCurrentFrame((int) ((SystemClock.elapsedRealtime() / 16.0f) % 60.0f));
            this.lottie.setAllowDecodeSingleFrame(true);
            this.lottie.start();
        }

        public void setColor(int i) {
            this.lottie.beginApplyLayerColors();
            this.lottie.setLayerColor("Comp 1.**", i);
            this.lottie.commitApplyLayerColors();
            this.lottie.setAllowDecodeSingleFrame(true);
            this.lottie.updateCurrentFrame(0L, false);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int color = this.paint.getColor();
            if (color != this.lastColor) {
                setColor(color);
                this.lastColor = color;
            }
            this.lottie.draw(canvas);
        }
    }

    private static int reqInfoHash(MessageObject messageObject) {
        if (messageObject == null) {
            return 0;
        }
        return Objects.hash(Integer.valueOf(messageObject.currentAccount), Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()));
    }

    public static void openVideoTranscription(MessageObject messageObject) {
        if (messageObject == null || isVideoTranscriptionOpen(messageObject)) {
            return;
        }
        if (videoTranscriptionsOpen == null) {
            videoTranscriptionsOpen = new ArrayList(1);
        }
        videoTranscriptionsOpen.add(Integer.valueOf(reqInfoHash(messageObject)));
    }

    public static boolean isVideoTranscriptionOpen(MessageObject messageObject) {
        if (videoTranscriptionsOpen != null) {
            return !messageObject.isRoundVideo() || videoTranscriptionsOpen.contains(Integer.valueOf(reqInfoHash(messageObject)));
        }
        return false;
    }

    public static void resetVideoTranscriptionsOpen() {
        ArrayList arrayList = videoTranscriptionsOpen;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public static boolean isTranscribing(MessageObject messageObject) {
        TLRPC.Message message;
        HashMap map = transcribeOperationsByDialogPosition;
        if (map != null && (map.containsValue(messageObject) || transcribeOperationsByDialogPosition.containsKey(Integer.valueOf(reqInfoHash(messageObject))))) {
            return true;
        }
        HashMap map2 = transcribeOperationsById;
        if (map2 == null || messageObject == null || (message = messageObject.messageOwner) == null || !map2.containsKey(Long.valueOf(message.voiceTranscriptionId))) {
            return messageObject != null && VoiceRecognitionController.getInstance().isRecognizing(Long.valueOf(messageObject.getDialogId()), messageObject.getId());
        }
        return true;
    }

    private static void transcribePressed(final MessageObject messageObject, boolean z, final ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate) {
        if (messageObject == null || messageObject.messageOwner == null || !messageObject.isSent()) {
            return;
        }
        final int i = messageObject.currentAccount;
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        TLRPC.InputPeer inputPeer = MessagesController.getInstance(i).getInputPeer(messageObject.messageOwner.peer_id);
        final long peerDialogId = DialogObject.getPeerDialogId(inputPeer);
        TLRPC.Message message = messageObject.messageOwner;
        final int i2 = message.f1686id;
        if (z) {
            if (message.voiceTranscription != null && message.voiceTranscriptionFinal) {
                openVideoTranscription(messageObject);
                messageObject.messageOwner.voiceTranscriptionOpen = true;
                MessagesStorage.getInstance(i).updateMessageVoiceTranscriptionOpen(peerDialogId, i2, messageObject.messageOwner);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranscribeButton.$r8$lambda$E2DTTm67GyFFCCRusbCoYcmM2M4(i, messageObject);
                    }
                });
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("sending Transcription request, msg_id=" + i2 + " dialog_id=" + peerDialogId);
            }
            TLRPC.TL_messages_transcribeAudio tL_messages_transcribeAudio = new TLRPC.TL_messages_transcribeAudio();
            tL_messages_transcribeAudio.peer = inputPeer;
            tL_messages_transcribeAudio.msg_id = i2;
            if (transcribeOperationsByDialogPosition == null) {
                transcribeOperationsByDialogPosition = new HashMap();
            }
            transcribeOperationsByDialogPosition.put(Integer.valueOf(reqInfoHash(messageObject)), messageObject);
            int i3 = UserConfig.getInstance(i).isPremium() ? 0 : 1024;
            final RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    TranscribeButton.$r8$lambda$WVaNQpZB4bOQY85fS5DzEIvQlF0(i, chatMessageCellDelegate, messageObject, jElapsedRealtime, peerDialogId, i2, tLObject, tL_error);
                }
            };
            if (VoiceRecognitionController.isCustomRecognitionEnabled() && !UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                MediaLoader.loadFiles(AccountInstance.getInstance(i), new ArrayList() { // from class: org.telegram.ui.Components.TranscribeButton.1
                    {
                        add(this.val$messageObject);
                    }
                }, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i4) {
                        TranscribeButton.m12947$r8$lambda$kNGsRkppBULGalCwHXfcm26L9g(messageObject, requestDelegate, i4);
                    }
                });
                return;
            } else {
                ConnectionsManager.getInstance(i).sendRequest(tL_messages_transcribeAudio, requestDelegate, i3);
                return;
            }
        }
        HashMap map = transcribeOperationsByDialogPosition;
        if (map != null) {
            map.remove(Integer.valueOf(reqInfoHash(messageObject)));
        }
        messageObject.messageOwner.voiceTranscriptionOpen = false;
        MessagesStorage.getInstance(i).updateMessageVoiceTranscriptionOpen(peerDialogId, i2, messageObject.messageOwner);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voiceTranscriptionUpdate, messageObject, null, null, Boolean.FALSE, null);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$E2DTTm67GyFFCCRusbCoYcmM2M4(int i, MessageObject messageObject) {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
        int i2 = NotificationCenter.voiceTranscriptionUpdate;
        Boolean bool = Boolean.TRUE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i2, messageObject, null, null, bool, bool);
    }

    public static /* synthetic */ void $r8$lambda$WVaNQpZB4bOQY85fS5DzEIvQlF0(final int i, final ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, final MessageObject messageObject, long j, long j2, int i2, TLObject tLObject, TLRPC.TL_error tL_error) {
        boolean z;
        final long j3;
        String str;
        final TLRPC.TL_messages_transcribedAudio tL_messages_transcribedAudio = (TLRPC.TL_messages_transcribedAudio) tLObject;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (tL_messages_transcribedAudio != null) {
            String str3 = tL_messages_transcribedAudio.text;
            long j4 = tL_messages_transcribedAudio.transcription_id;
            boolean z2 = tL_messages_transcribedAudio.pending;
            boolean z3 = !z2;
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3;
            } else if (z2) {
                str2 = null;
            }
            if ((tL_messages_transcribedAudio.flags & 2) != 0) {
                MessagesController.getInstance(i).updateTranscribeAudioTrialCurrentNumber(tL_messages_transcribedAudio.trial_remains_num);
                MessagesController.getInstance(i).updateTranscribeAudioTrialCooldownUntil(tL_messages_transcribedAudio.trial_remains_until_date);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranscribeButton.m12946$r8$lambda$a2o22si0EBawgKyJsqzCtlJsVw(chatMessageCellDelegate, tL_messages_transcribedAudio);
                    }
                });
            }
            if (transcribeOperationsById == null) {
                transcribeOperationsById = new HashMap();
            }
            transcribeOperationsById.put(Long.valueOf(j4), messageObject);
            messageObject.messageOwner.voiceTranscriptionId = j4;
            j3 = j4;
            z = z3;
        } else {
            if (tL_error != null && (str = tL_error.text) != null) {
                if (str.startsWith("FLOOD_WAIT_")) {
                    MessagesController.getInstance(i).updateTranscribeAudioTrialCurrentNumber(0);
                    MessagesController.getInstance(i).updateTranscribeAudioTrialCooldownUntil(ConnectionsManager.getInstance(i).getCurrentTime() + Utilities.parseInt((CharSequence) tL_error.text).intValue());
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            TranscribeButton.m12948$r8$lambda$oaPhGEe95pO5I2f8R2G6iDBAyg(messageObject, chatMessageCellDelegate, i);
                        }
                    });
                    return;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranscribeButton.$r8$lambda$MeX4zTChvjtBQPRlHQ_ds02X024(messageObject, i);
                    }
                });
                return;
            }
            z = true;
            j3 = 0;
        }
        final String str4 = str2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        openVideoTranscription(messageObject);
        TLRPC.Message message = messageObject.messageOwner;
        message.voiceTranscriptionOpen = true;
        message.voiceTranscriptionFinal = z;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("Transcription request sent, received final=" + z + " id=" + j3 + " text=" + str4);
        }
        MessagesStorage.getInstance(i).updateMessageVoiceTranscription(j2, i2, str4, messageObject.messageOwner);
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    TranscribeButton.finishTranscription(messageObject, j3, str4);
                }
            }, Math.max(0L, 350 - jElapsedRealtime));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$a2o22si0EBawg-KyJsqzCtlJsVw, reason: not valid java name */
    public static /* synthetic */ void m12946$r8$lambda$a2o22si0EBawgKyJsqzCtlJsVw(ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, TLRPC.TL_messages_transcribedAudio tL_messages_transcribedAudio) {
        if (chatMessageCellDelegate != null) {
            chatMessageCellDelegate.needShowPremiumBulletin(tL_messages_transcribedAudio.trial_remains_num > 0 ? 1 : 2);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$oaPhGEe95pO5I2f8R2G6iDB-Ayg, reason: not valid java name */
    public static /* synthetic */ void m12948$r8$lambda$oaPhGEe95pO5I2f8R2G6iDBAyg(MessageObject messageObject, ChatMessageCell.ChatMessageCellDelegate chatMessageCellDelegate, int i) {
        HashMap map = transcribeOperationsByDialogPosition;
        if (map != null) {
            map.remove(Integer.valueOf(reqInfoHash(messageObject)));
        }
        if (chatMessageCellDelegate != null) {
            chatMessageCellDelegate.needShowPremiumBulletin(3);
        }
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voiceTranscriptionUpdate, messageObject);
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateTranscriptionLock, new Object[0]);
    }

    public static /* synthetic */ void $r8$lambda$MeX4zTChvjtBQPRlHQ_ds02X024(MessageObject messageObject, int i) {
        HashMap map = transcribeOperationsByDialogPosition;
        if (map != null) {
            map.remove(Integer.valueOf(reqInfoHash(messageObject)));
        }
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voiceTranscriptionUpdate, messageObject);
    }

    /* JADX INFO: renamed from: $r8$lambda$kNGsRkppBULGalCwHXf-cm26L9g, reason: not valid java name */
    public static /* synthetic */ void m12947$r8$lambda$kNGsRkppBULGalCwHXfcm26L9g(MessageObject messageObject, RequestDelegate requestDelegate, int i) {
        if (i > 0) {
            transcribeLocally(messageObject, requestDelegate);
        }
    }

    private static void transcribeLocally(MessageObject messageObject, final RequestDelegate requestDelegate) {
        String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
        if (TextUtils.isEmpty(pathToMessage)) {
            return;
        }
        long peerDialogId = DialogObject.getPeerDialogId(MessagesController.getInstance(messageObject.currentAccount).getInputPeer(messageObject.messageOwner.peer_id));
        int i = messageObject.messageOwner.f1686id;
        VoiceRecognitionController voiceRecognitionController = VoiceRecognitionController.getInstance();
        String strKey = voiceRecognitionController.key(Long.valueOf(peerDialogId), i);
        final Long lValueOf = Long.valueOf(strKey.hashCode());
        voiceRecognitionController.startRecognition(strKey, ExteraConfig.recognitionLanguage, pathToMessage, "vosk", new VoiceRecognitionController.RecognitionCallback() { // from class: org.telegram.ui.Components.TranscribeButton.2
            @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
            public void onLanguageNotDownloaded(String str) {
            }

            @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
            public void onLanguageNotSupported(String str) {
            }

            @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
            public void onChunk(String str) {
                TLRPC.TL_messages_transcribedAudio tL_messages_transcribedAudio = new TLRPC.TL_messages_transcribedAudio();
                tL_messages_transcribedAudio.text = str;
                tL_messages_transcribedAudio.pending = true;
                tL_messages_transcribedAudio.transcription_id = lValueOf.longValue();
                requestDelegate.run(tL_messages_transcribedAudio, null);
            }

            @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
            public void onCompleted(String str) {
                TLRPC.TL_messages_transcribedAudio tL_messages_transcribedAudio = new TLRPC.TL_messages_transcribedAudio();
                tL_messages_transcribedAudio.text = str;
                tL_messages_transcribedAudio.pending = false;
                tL_messages_transcribedAudio.transcription_id = lValueOf.longValue();
                requestDelegate.run(tL_messages_transcribedAudio, null);
            }

            @Override // com.exteragram.messenger.speech.VoiceRecognitionController.RecognitionCallback
            public void onError(Exception exc) {
                TLRPC.TL_error tL_error = new TLRPC.TL_error();
                tL_error.text = "RECOGNIZE_FAILED";
                requestDelegate.run(null, tL_error);
            }
        });
    }

    public static boolean finishTranscription(final MessageObject messageObject, final long j, final String str) {
        try {
            HashMap map = transcribeOperationsById;
            MessageObject messageObject2 = (map == null || !map.containsKey(Long.valueOf(j))) ? null : (MessageObject) transcribeOperationsById.remove(Long.valueOf(j));
            if (messageObject == null) {
                messageObject = messageObject2;
            }
            if (messageObject != null && messageObject.messageOwner != null) {
                HashMap map2 = transcribeOperationsByDialogPosition;
                if (map2 != null) {
                    map2.remove(Integer.valueOf(reqInfoHash(messageObject)));
                }
                messageObject.messageOwner.voiceTranscriptionFinal = true;
                MessagesStorage.getInstance(messageObject.currentAccount).updateMessageVoiceTranscription(messageObject.getDialogId(), messageObject.getId(), str, messageObject.messageOwner);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranscribeButton.m12945$r8$lambda$1VsD2GsCgYYhqv4wc1i0EhIq0(messageObject, j, str);
                    }
                });
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX INFO: renamed from: $r8$lambda$1VsD2GsCgYYhqv4wc1i0Eh-Iq-0, reason: not valid java name */
    public static /* synthetic */ void m12945$r8$lambda$1VsD2GsCgYYhqv4wc1i0EhIq0(MessageObject messageObject, long j, String str) {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(messageObject.currentAccount);
        int i = NotificationCenter.voiceTranscriptionUpdate;
        Long lValueOf = Long.valueOf(j);
        Boolean bool = Boolean.TRUE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i, messageObject, lValueOf, str, bool, bool);
    }

    public static void showOffTranscribe(MessageObject messageObject) {
        showOffTranscribe(messageObject, true);
    }

    public static void showOffTranscribe(final MessageObject messageObject, boolean z) {
        TLRPC.Message message;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return;
        }
        message.voiceTranscriptionForce = true;
        MessagesStorage.getInstance(messageObject.currentAccount).updateMessageVoiceTranscriptionOpen(messageObject.getDialogId(), messageObject.getId(), messageObject.messageOwner);
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranscribeButton$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MessageObject messageObject2 = messageObject;
                    NotificationCenter.getInstance(messageObject2.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voiceTranscriptionUpdate, messageObject2);
                }
            });
        }
    }

    public static boolean canTranscribeTrial(MessageObject messageObject) {
        if (messageObject != null && messageObject.messageOwner != null) {
            ConnectionsManager connectionsManager = ConnectionsManager.getInstance(messageObject.currentAccount);
            MessagesController messagesController = MessagesController.getInstance(messageObject.currentAccount);
            if (isFreeTranscribeInChat(messageObject)) {
                return true;
            }
            if (messagesController.transcribeAudioTrialWeeklyNumber > 0 && messageObject.getDuration() <= messagesController.transcribeAudioTrialDurationMax) {
                return messagesController.transcribeAudioTrialCooldownUntil == 0 || connectionsManager.getCurrentTime() > messagesController.transcribeAudioTrialCooldownUntil || messagesController.transcribeAudioTrialCurrentNumber > 0;
            }
        }
        return false;
    }

    public static boolean isFreeTranscribeInChat(MessageObject messageObject) {
        if (messageObject != null && messageObject.messageOwner != null) {
            MessagesController messagesController = MessagesController.getInstance(messageObject.currentAccount);
            TLRPC.Chat chat = messagesController.getChat(Long.valueOf(messageObject.getChatId()));
            if (ChatObject.isMegagroup(chat) && chat.level >= messagesController.groupTranscribeLevelMin) {
                return true;
            }
        }
        return false;
    }

    public static int getTranscribeTrialCount(int i) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i);
        MessagesController messagesController = MessagesController.getInstance(i);
        if (messagesController.transcribeAudioTrialWeeklyNumber <= 0) {
            return 0;
        }
        if (messagesController.transcribeAudioTrialCooldownUntil == 0 || connectionsManager.getCurrentTime() > messagesController.transcribeAudioTrialCooldownUntil) {
            return messagesController.transcribeAudioTrialWeeklyNumber;
        }
        return messagesController.transcribeAudioTrialCurrentNumber;
    }

    public static boolean showTranscribeLock(MessageObject messageObject) {
        if (messageObject == null || messageObject.messageOwner == null || isFreeTranscribeInChat(messageObject) || !TextUtils.isEmpty(messageObject.messageOwner.voiceTranscription)) {
            return false;
        }
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(messageObject.currentAccount);
        MessagesController messagesController = MessagesController.getInstance(messageObject.currentAccount);
        return !UserConfig.getInstance(messageObject.currentAccount).isPremium() && messagesController.transcribeAudioTrialCooldownUntil != 0 && connectionsManager.getCurrentTime() <= messagesController.transcribeAudioTrialCooldownUntil && messagesController.transcribeAudioTrialCurrentNumber <= 0;
    }
}
