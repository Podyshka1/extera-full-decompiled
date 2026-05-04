package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.graphics.ColorUtils;
import com.google.zxing.common.detector.MathUtils;
import java.util.ArrayList;
import okhttp3.internal.p025ws.RealWebSocket;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.Point;
import org.telegram.p029ui.Stories.recorder.FlashViews;

/* JADX INFO: loaded from: classes7.dex */
public class RecordControl extends View implements FlashViews.Invertable {
    private final float HALF_PI;
    public float amplitude;
    public final AnimatedFloat animatedAmplitude;
    private final Paint buttonPaint;
    private final Paint buttonPaintWhite;
    private final Point check1;
    private final Point check2;
    private final Point check3;
    private final AnimatedFloat checkAnimated;
    private final Paint checkPaint;
    private final Path checkPath;
    private final Path circlePath;
    private final AnimatedFloat collage;
    private float collageProgress;
    private final AnimatedFloat collageProgressAnimated;

    /* JADX INFO: renamed from: cx */
    private float f2217cx;

    /* JADX INFO: renamed from: cy */
    private float f2218cy;
    private Delegate delegate;
    private boolean discardParentTouch;
    private boolean dual;
    private final AnimatedFloat dualT;
    private final ButtonBounce flipButton;
    private boolean flipButtonWasPressed;
    private final Drawable flipDrawableBlack;
    private float flipDrawableRotate;
    private final AnimatedFloat flipDrawableRotateT;
    private final Drawable flipDrawableWhite;
    private final ImageReceiver galleryImage;

    /* JADX INFO: renamed from: h1 */
    private final Point f2219h1;

    /* JADX INFO: renamed from: h2 */
    private final Point f2220h2;

    /* JADX INFO: renamed from: h3 */
    private final Point f2221h3;

    /* JADX INFO: renamed from: h4 */
    private final Point f2222h4;
    private final Paint hintLinePaintBlack;
    private final Paint hintLinePaintWhite;
    private long lastDuration;
    private float leftCx;
    private float[] loadingSegments;
    private final ButtonBounce lockButton;
    private final Drawable lockDrawable;
    private final AnimatedFloat lockedT;
    private boolean longpressRecording;
    private final Paint mainPaint;
    private final Path metaballsPath;
    private final CombinedDrawable noGalleryDrawable;
    private final Runnable onFlipLongPressRunnable;
    private final Runnable onRecordLongPressRunnable;
    private final Paint outlineFilledPaint;
    private final Paint outlinePaint;
    private float overrideStartModeIsVideoT;

    /* JADX INFO: renamed from: p1 */
    private final Point f2223p1;

    /* JADX INFO: renamed from: p2 */
    private final Point f2224p2;

    /* JADX INFO: renamed from: p3 */
    private final Point f2225p3;

    /* JADX INFO: renamed from: p4 */
    private final Point f2226p4;
    private final Drawable pauseDrawable;
    private final ButtonBounce recordButton;
    private final AnimatedFloat recordCx;
    private boolean recording;
    private boolean recordingLoading;
    private long recordingLoadingStart;
    private final AnimatedFloat recordingLoadingT;
    private final AnimatedFloat recordingLongT;
    private long recordingStart;
    private final AnimatedFloat recordingT;
    private RadialGradient redGradient;
    private final Matrix redMatrix;
    private final Paint redPaint;
    private float rightCx;
    private boolean showLock;
    private boolean startModeIsVideo;
    private final AnimatedFloat startModeIsVideoT;
    private boolean touch;
    private final AnimatedFloat touchIsButtonT;
    private final AnimatedFloat touchIsCenter2T;
    private final AnimatedFloat touchIsCenterT;
    private long touchStart;
    private final AnimatedFloat touchT;
    private float touchX;
    private float touchY;
    private final Drawable unlockDrawable;

    public interface Delegate {
        boolean canRecordAudio();

        long getMaxVideoDuration();

        long getMaxVisibleVideoDuration();

        void onCheckClick();

        void onFlipClick();

        void onFlipLongClick();

        void onGalleryClick();

        void onPhotoShoot();

        void onVideoDuration(long j);

        void onVideoRecordEnd(boolean z);

        void onVideoRecordLocked();

        void onVideoRecordStart(boolean z, Runnable runnable);

        void onZoom(float f);

        boolean showStoriesDrafts();

        /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.RecordControl$Delegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static boolean $default$showStoriesDrafts(Delegate delegate) {
                return true;
            }
        }
    }

    public void startAsVideo(boolean z) {
        this.overrideStartModeIsVideoT = -1.0f;
        this.startModeIsVideo = z;
        invalidate();
    }

    public void startAsVideoT(float f) {
        this.overrideStartModeIsVideoT = f;
        invalidate();
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public RecordControl(Context context) {
        super(context);
        ImageReceiver imageReceiver = new ImageReceiver();
        this.galleryImage = imageReceiver;
        this.mainPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.outlinePaint = paint;
        Paint paint2 = new Paint(1);
        this.outlineFilledPaint = paint2;
        Paint paint3 = new Paint(1);
        this.buttonPaint = paint3;
        Paint paint4 = new Paint(1);
        this.buttonPaintWhite = paint4;
        Paint paint5 = new Paint(1);
        this.redPaint = paint5;
        Paint paint6 = new Paint(1);
        this.hintLinePaintWhite = paint6;
        Paint paint7 = new Paint(1);
        this.hintLinePaintBlack = paint7;
        Paint paint8 = new Paint(1);
        this.checkPaint = paint8;
        Matrix matrix = new Matrix();
        this.redMatrix = matrix;
        this.recordButton = new ButtonBounce(this);
        this.flipButton = new ButtonBounce(this);
        this.lockButton = new ButtonBounce(this);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.flipDrawableRotateT = new AnimatedFloat(this, 0L, 310L, cubicBezierInterpolator);
        this.dualT = new AnimatedFloat(this, 0L, 330L, cubicBezierInterpolator);
        this.checkPath = new Path();
        this.check1 = new Point(-AndroidUtilities.dpf2(9.666667f), AndroidUtilities.dpf2(2.3333333f));
        this.check2 = new Point(-AndroidUtilities.dpf2(2.8333333f), AndroidUtilities.dpf2(8.666667f));
        this.check3 = new Point(AndroidUtilities.dpf2(9.666667f), AndroidUtilities.dpf2(-3.6666667f));
        this.animatedAmplitude = new AnimatedFloat(this, 0L, 200L, CubicBezierInterpolator.DEFAULT);
        this.startModeIsVideoT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.overrideStartModeIsVideoT = -1.0f;
        this.startModeIsVideo = true;
        this.recordingT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.recordingLongT = new AnimatedFloat(this, 0L, 850L, cubicBezierInterpolator);
        this.loadingSegments = new float[2];
        this.recordingLoadingT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.touchT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.touchIsCenterT = new AnimatedFloat(this, 0L, 650L, cubicBezierInterpolator);
        this.touchIsCenter2T = new AnimatedFloat(this, 0L, 160L, CubicBezierInterpolator.EASE_IN);
        this.recordCx = new AnimatedFloat(this, 0L, 750L, cubicBezierInterpolator);
        this.touchIsButtonT = new AnimatedFloat(this, 0L, 650L, cubicBezierInterpolator);
        this.lockedT = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.collage = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.collageProgressAnimated = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.checkAnimated = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.onRecordLongPressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
        this.onFlipLongPressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        };
        this.metaballsPath = new Path();
        this.circlePath = new Path();
        this.HALF_PI = 1.5707964f;
        this.f2223p1 = new Point();
        this.f2224p2 = new Point();
        this.f2225p3 = new Point();
        this.f2226p4 = new Point();
        this.f2219h1 = new Point();
        this.f2220h2 = new Point();
        this.f2221h3 = new Point();
        this.f2222h4 = new Point();
        setWillNotDraw(false);
        RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, AndroidUtilities.m1124dp(48.0f), new int[]{-577231, -577231, -1}, new float[]{0.0f, 0.64f, 1.0f}, Shader.TileMode.CLAMP);
        this.redGradient = radialGradient;
        radialGradient.setLocalMatrix(matrix);
        paint5.setShader(this.redGradient);
        paint.setColor(-1);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        paint2.setColor(-577231);
        paint2.setStrokeCap(cap);
        paint2.setStyle(style);
        paint3.setColor(1677721600);
        paint4.setColor(-1);
        paint6.setColor(1493172223);
        paint7.setColor(402653184);
        paint6.setStyle(style);
        paint6.setStrokeCap(cap);
        paint7.setStyle(style);
        paint7.setStrokeCap(cap);
        paint8.setStyle(style);
        paint8.setStrokeJoin(Paint.Join.ROUND);
        paint8.setStrokeCap(cap);
        if (Build.VERSION.SDK_INT >= 29) {
            paint8.setBlendMode(BlendMode.CLEAR);
        } else {
            paint8.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }
        imageReceiver.setParentView(this);
        imageReceiver.setCrossfadeWithOldImage(true);
        imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(6.0f));
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.msg_media_gallery).mutate();
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(1308622847, mode));
        CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(6.0f), -13750737), drawableMutate);
        this.noGalleryDrawable = combinedDrawable;
        combinedDrawable.setFullsize(false);
        combinedDrawable.setIconSize(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(24.0f));
        Drawable drawableMutate2 = context.getResources().getDrawable(C2888R.drawable.msg_photo_switch2).mutate();
        this.flipDrawableWhite = drawableMutate2;
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(-1, mode));
        Drawable drawableMutate3 = context.getResources().getDrawable(C2888R.drawable.msg_photo_switch2).mutate();
        this.flipDrawableBlack = drawableMutate3;
        drawableMutate3.setColorFilter(new PorterDuffColorFilter(-16777216, mode));
        Drawable drawableMutate4 = context.getResources().getDrawable(C2888R.drawable.msg_filled_unlockedrecord).mutate();
        this.unlockDrawable = drawableMutate4;
        drawableMutate4.setColorFilter(new PorterDuffColorFilter(-1, mode));
        Drawable drawableMutate5 = context.getResources().getDrawable(C2888R.drawable.msg_filled_lockedrecord).mutate();
        this.lockDrawable = drawableMutate5;
        drawableMutate5.setColorFilter(new PorterDuffColorFilter(-16777216, mode));
        Drawable drawableMutate6 = context.getResources().getDrawable(C2888R.drawable.msg_round_pause_m).mutate();
        this.pauseDrawable = drawableMutate6;
        drawableMutate6.setColorFilter(new PorterDuffColorFilter(-1, mode));
        updateGalleryImage();
    }

    public void updateGalleryImage() {
        String str;
        ArrayList<MediaController.PhotoEntry> arrayList;
        Delegate delegate = this.delegate;
        if (delegate != null && delegate.showStoriesDrafts()) {
            ArrayList arrayList2 = MessagesController.getInstance(this.galleryImage.getCurrentAccount()).getStoriesController().getDraftsController().drafts;
            this.galleryImage.setOrientation(0, 0, true);
            if (arrayList2 != null && !arrayList2.isEmpty() && ((StoryEntry) arrayList2.get(0)).draftThumbFile != null) {
                this.galleryImage.setImage(ImageLocation.getForPath(((StoryEntry) arrayList2.get(0)).draftThumbFile.getAbsolutePath()), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
                return;
            }
        }
        MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbumEntry;
        MediaController.PhotoEntry photoEntry = (albumEntry == null || (arrayList = albumEntry.photos) == null || arrayList.isEmpty()) ? null : albumEntry.photos.get(0);
        if (photoEntry != null && (str = photoEntry.thumbPath) != null) {
            this.galleryImage.setImage(ImageLocation.getForPath(str), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
            return;
        }
        if (photoEntry != null && photoEntry.path != null) {
            if (photoEntry.isVideo) {
                this.galleryImage.setImage(ImageLocation.getForPath("vthumb://" + photoEntry.imageId + ":" + photoEntry.path), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
                return;
            }
            this.galleryImage.setOrientation(photoEntry.orientation, photoEntry.invert, true);
            this.galleryImage.setImage(ImageLocation.getForPath("thumb://" + photoEntry.imageId + ":" + photoEntry.path), "80_80", null, null, this.noGalleryDrawable, 0L, null, null, 0);
            return;
        }
        this.galleryImage.setImageBitmap(this.noGalleryDrawable);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.galleryImage.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.galleryImage.onDetachedFromWindow();
        super.onDetachedFromWindow();
    }

    @Override // org.telegram.ui.Stories.recorder.FlashViews.Invertable
    public void setInvert(float f) {
        this.outlinePaint.setColor(ColorUtils.blendARGB(-1, -16777216, f));
        this.buttonPaint.setColor(ColorUtils.blendARGB(1677721600, 369098752, f));
        this.hintLinePaintWhite.setColor(ColorUtils.blendARGB(1493172223, 285212671, f));
        this.hintLinePaintBlack.setColor(ColorUtils.blendARGB(402653184, 805306368, f));
        Drawable drawable = this.flipDrawableWhite;
        int iBlendARGB = ColorUtils.blendARGB(-1, -16777216, f);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawable.setColorFilter(new PorterDuffColorFilter(iBlendARGB, mode));
        this.unlockDrawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-1, -16777216, f), mode));
    }

    public void setAmplitude(float f, boolean z) {
        this.amplitude = f;
        if (z) {
            return;
        }
        this.animatedAmplitude.set(f, true);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int iM1124dp = AndroidUtilities.m1124dp(100.0f);
        float f = size;
        this.f2217cx = f / 2.0f;
        this.f2218cy = iM1124dp / 2.0f;
        float fMin = Math.min(AndroidUtilities.m1124dp(135.0f), f * 0.35f);
        float f2 = this.f2217cx;
        this.leftCx = f2 - fMin;
        float f3 = f2 + fMin;
        this.rightCx = f3;
        setDrawableBounds(this.flipDrawableWhite, f3, this.f2218cy, AndroidUtilities.m1124dp(14.0f));
        setDrawableBounds(this.flipDrawableBlack, this.rightCx, this.f2218cy, AndroidUtilities.m1124dp(14.0f));
        setDrawableBounds(this.unlockDrawable, this.leftCx, this.f2218cy);
        setDrawableBounds(this.lockDrawable, this.leftCx, this.f2218cy);
        setDrawableBounds(this.pauseDrawable, this.leftCx, this.f2218cy);
        this.galleryImage.setImageCoords(this.leftCx - AndroidUtilities.m1124dp(20.0f), this.f2218cy - AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(40.0f), AndroidUtilities.m1124dp(40.0f));
        this.redMatrix.reset();
        this.redMatrix.postTranslate(this.f2217cx, this.f2218cy);
        this.redGradient.setLocalMatrix(this.redMatrix);
        setMeasuredDimension(size, iM1124dp);
    }

    private static void setDrawableBounds(Drawable drawable, float f, float f2) {
        setDrawableBounds(drawable, f, f2, Math.max(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()) / 2.0f);
    }

    private static void setDrawableBounds(Drawable drawable, float f, float f2, float f3) {
        drawable.setBounds((int) (f - f3), (int) (f2 - f3), (int) (f + f3), (int) (f2 + f3));
    }

    public void setCollageProgress(float f, boolean z) {
        if (Math.abs(f - this.collageProgress) < 0.01f) {
            return;
        }
        this.collageProgress = f;
        if (!z) {
            this.collage.set(f > 0.0f && !this.recording, true);
            this.collageProgressAnimated.set(f, true);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        if (this.recording || hasCheck()) {
            return;
        }
        if (!this.delegate.canRecordAudio()) {
            this.touch = false;
            this.recordButton.setPressed(false);
            this.flipButton.setPressed(false);
            this.lockButton.setPressed(false);
            return;
        }
        this.longpressRecording = true;
        this.showLock = true;
        this.delegate.onVideoRecordStart(true, new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.recordingStart = System.currentTimeMillis();
        this.recording = true;
        Delegate delegate = this.delegate;
        this.lastDuration = 0L;
        delegate.onVideoDuration(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (this.recording || hasCheck()) {
            return;
        }
        this.delegate.onFlipLongClick();
        rotateFlip(360.0f);
        this.touch = false;
        this.recordButton.setPressed(false);
        this.flipButton.setPressed(false);
        this.lockButton.setPressed(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x083d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        Canvas canvas2;
        int i;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        RectF rectF;
        float f16;
        RectF rectF2;
        Canvas canvas3;
        float f17;
        float f18;
        double dAcos;
        double dAcos2;
        float f19 = this.recordingT.set(this.recording ? 1.0f : 0.0f);
        float f20 = this.recordingLongT.set(this.recording ? 1.0f : 0.0f);
        float f21 = this.overrideStartModeIsVideoT;
        if (f21 < 0.0f) {
            f21 = this.startModeIsVideoT.set(this.startModeIsVideo ? 1.0f : 0.0f);
        }
        float fMax = Math.max(f19, f21);
        float f22 = this.touchT.set(this.touch ? 1.0f : 0.0f);
        float f23 = f22 * this.touchIsCenterT.set((Math.abs(this.touchX - this.f2217cx) >= ((float) AndroidUtilities.m1124dp(64.0f)) || !(this.recording || this.recordButton.isPressed())) ? 0.0f : 1.0f);
        float f24 = f22 * this.touchIsCenter2T.set(Math.abs(this.touchX - this.f2217cx) < ((float) AndroidUtilities.m1124dp(64.0f)) ? 1.0f : 0.0f);
        float fClamp = Utilities.clamp((this.touchX - this.f2217cx) / AndroidUtilities.m1124dp(16.0f), 1.0f, -1.0f);
        float fClamp2 = Utilities.clamp((this.touchX - this.f2217cx) / AndroidUtilities.m1124dp(64.0f), 1.0f, -1.0f);
        float f25 = this.touchIsButtonT.set(Math.min(Math.abs(this.touchX - this.rightCx), Math.abs(this.touchX - this.leftCx)) < ((float) AndroidUtilities.m1124dp(16.0f)) ? 1.0f : 0.0f) * f22;
        float f26 = 1.0f - f19;
        float f27 = this.collage.set(this.collageProgress > 0.0f) * f26;
        float f28 = this.collageProgressAnimated.set(this.collageProgress);
        float f29 = this.checkAnimated.set(hasCheck());
        float f30 = this.longpressRecording ? f19 * fMax * f22 : 0.0f;
        if (f30 > 0.0f) {
            float fM1124dp = this.f2217cx - AndroidUtilities.m1124dp(50.0f);
            f3 = 1.0f;
            float fM1124dp2 = this.f2217cx + AndroidUtilities.m1124dp(50.0f);
            f4 = 0.0f;
            this.hintLinePaintWhite.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
            this.hintLinePaintBlack.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
            f5 = f20;
            f7 = f27;
            f = f29;
            f6 = f25;
            f2 = fClamp;
            float f31 = f30;
            canvas.drawLine(fM1124dp2, this.f2218cy, AndroidUtilities.lerp(fM1124dp2, this.rightCx - AndroidUtilities.m1124dp(30.0f), f30), this.f2218cy, this.hintLinePaintBlack);
            canvas.drawLine(fM1124dp2, this.f2218cy, AndroidUtilities.lerp(fM1124dp2, this.rightCx - AndroidUtilities.m1124dp(30.0f), f31), this.f2218cy, this.hintLinePaintWhite);
            canvas.drawLine(fM1124dp, this.f2218cy, AndroidUtilities.lerp(fM1124dp, this.leftCx + AndroidUtilities.m1124dp(30.0f), f31), this.f2218cy, this.hintLinePaintBlack);
            canvas2 = canvas;
            canvas2.drawLine(fM1124dp, this.f2218cy, AndroidUtilities.lerp(fM1124dp, this.leftCx + AndroidUtilities.m1124dp(30.0f), f31), this.f2218cy, this.hintLinePaintWhite);
        } else {
            f = f29;
            f2 = fClamp;
            f3 = 1.0f;
            f4 = 0.0f;
            f5 = f20;
            f6 = f25;
            f7 = f27;
            canvas2 = canvas;
        }
        float f32 = this.f2217cx;
        float fLerp = AndroidUtilities.lerp(f32, this.recordCx.set((AndroidUtilities.m1124dp(4.0f) * f2) + f32), f23);
        float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.lerp(AndroidUtilities.m1124dp(29.0f), AndroidUtilities.m1124dp(12.0f), f19), AndroidUtilities.m1124dp(32.0f) - (AndroidUtilities.m1124dp(4.0f) * Math.abs(fClamp2)), f23);
        float fLerp3 = AndroidUtilities.lerp(AndroidUtilities.lerp(AndroidUtilities.m1124dp(32.0f), AndroidUtilities.m1124dp(7.0f), f19), AndroidUtilities.m1124dp(32.0f), f23);
        float fLerp4 = AndroidUtilities.lerp(this.recordButton.getScale(this.startModeIsVideo ? f4 : 0.2f), (this.animatedAmplitude.set(this.amplitude) * 0.2f) + f3, f19);
        RectF rectF3 = AndroidUtilities.rectTmp;
        float f33 = fLerp - fLerp2;
        float f34 = this.f2218cy;
        float f35 = fLerp + fLerp2;
        rectF3.set(f33, f34 - fLerp2, f35, f34 + fLerp2);
        float f36 = f3 - f;
        this.mainPaint.setColor(ColorUtils.blendARGB(-1, -577231, fMax * f36));
        int i2 = (f > f4 ? 1 : (f == f4 ? 0 : -1));
        if (i2 > 0) {
            canvas2.save();
            canvas2.scale(fLerp4, fLerp4, this.f2217cx, this.f2218cy);
            this.mainPaint.setAlpha((int) (f36 * 255.0f));
            canvas2.drawRoundRect(rectF3, fLerp3, fLerp3, this.mainPaint);
            canvas2.restore();
            i = i2;
            f9 = f22;
            f10 = f;
            f11 = f33;
            f12 = fLerp4;
            f13 = fMax;
            f14 = f24;
            rectF = rectF3;
            f15 = fLerp3;
            f8 = f35;
            canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
        } else {
            i = i2;
            f8 = f35;
            f9 = f22;
            f10 = f;
            f11 = f33;
            f12 = fLerp4;
            f13 = fMax;
            f14 = f24;
            f15 = fLerp3;
            rectF = rectF3;
            canvas2.save();
        }
        canvas2.scale(f12, f12, this.f2217cx, this.f2218cy);
        this.mainPaint.setAlpha(255);
        canvas2.drawRoundRect(rectF, f15, f15, this.mainPaint);
        if (i > 0) {
            this.checkPaint.setStrokeWidth(AndroidUtilities.m1124dp(4.0f));
            this.checkPath.rewind();
            Path path = this.checkPath;
            Point point = this.check1;
            path.moveTo(point.f2016x, point.f2017y);
            float f37 = f10 / 0.3f;
            f16 = 0.3f;
            float f38 = f4;
            float f39 = f3;
            this.checkPath.lineTo(AndroidUtilities.lerp(this.check1.f2016x, this.check2.f2016x, Utilities.clamp(f37, f39, f38)), AndroidUtilities.lerp(this.check1.f2017y, this.check2.f2017y, Utilities.clamp(f37, f39, f38)));
            if (f10 > 0.3f) {
                float f40 = (f10 - 0.3f) / 0.7f;
                this.checkPath.lineTo(AndroidUtilities.lerp(this.check2.f2016x, this.check3.f2016x, Utilities.clamp(f40, 1.0f, 0.0f)), AndroidUtilities.lerp(this.check2.f2017y, this.check3.f2017y, Utilities.clamp(f40, 1.0f, 0.0f)));
            }
            canvas2.translate(this.f2217cx, this.f2218cy);
            canvas2.drawPath(this.checkPath, this.checkPaint);
        } else {
            f16 = 0.3f;
        }
        canvas2.restore();
        canvas2.save();
        float fMax2 = Math.max(f12, 1.0f);
        canvas2.scale(fMax2, fMax2, this.f2217cx, this.f2218cy);
        float fMax3 = Math.max(AndroidUtilities.dpf2(33.5f), fLerp2 + AndroidUtilities.lerp(AndroidUtilities.dpf2(4.5f), AndroidUtilities.m1124dp(9.0f), f23) + (AndroidUtilities.m1124dp(5.0f) * f7 * (1.0f - f23)));
        float fLerp5 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(4.0f), f7);
        float fLerp6 = AndroidUtilities.lerp(fMax3, (fLerp2 - fLerp5) - AndroidUtilities.m1124dp(4.0f), f10);
        float f41 = this.f2217cx;
        float f42 = this.f2218cy;
        rectF.set(f41 - fLerp6, f42 - fLerp6, f41 + fLerp6, f42 + fLerp6);
        this.outlinePaint.setStrokeWidth(fLerp5);
        this.outlinePaint.setAlpha((int) (AndroidUtilities.lerp(1.0f, f16, f7) * 255.0f * f36));
        canvas2.drawCircle(this.f2217cx, this.f2218cy, fLerp6, this.outlinePaint);
        if ((f7 > 0.0f) && (f28 > 0.0f)) {
            this.outlinePaint.setAlpha(255);
            rectF2 = rectF;
            canvas2.drawArc(rectF2, -90.0f, f28 * 360.0f, false, this.outlinePaint);
        } else {
            rectF2 = rectF;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.recordingStart;
        float f43 = this.recording ? 0.0f : 1.0f - f5;
        Delegate delegate = this.delegate;
        long j = RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS;
        long maxVideoDuration = delegate != null ? delegate.getMaxVideoDuration() : 60000L;
        Delegate delegate2 = this.delegate;
        long maxVisibleVideoDuration = delegate2 != null ? delegate2.getMaxVisibleVideoDuration() : 60000L;
        float f44 = jCurrentTimeMillis;
        if (maxVisibleVideoDuration >= 0) {
            j = maxVisibleVideoDuration;
        }
        float fMin = Math.min((f44 / j) * 360.0f, 360.0f);
        float f45 = this.recordingLoadingT.set(this.recordingLoading);
        this.outlineFilledPaint.setStrokeWidth(fLerp5);
        this.outlineFilledPaint.setAlpha((int) (Math.max(f45 * 0.7f, 1.0f - f43) * 255.0f));
        if (f45 <= 0.0f) {
            canvas.drawArc(rectF2, -90.0f, fMin, false, this.outlineFilledPaint);
            canvas3 = canvas;
        } else {
            RectF rectF4 = rectF2;
            CircularProgressDrawable.getSegments((SystemClock.elapsedRealtime() - this.recordingLoadingStart) % 5400, this.loadingSegments);
            invalidate();
            float[] fArr = this.loadingSegments;
            float f46 = fArr[0];
            float f47 = fArr[1];
            float fLerp7 = (f46 + f47) / 2.0f;
            float fAbs = Math.abs(f47 - f46) / 2.0f;
            if (this.recordingLoading) {
                float f48 = fMin / 2.0f;
                fLerp7 = AndroidUtilities.lerp((-90.0f) + f48, fLerp7, f45);
                fAbs = AndroidUtilities.lerp(f48, fAbs, f45);
            }
            rectF2 = rectF4;
            canvas.drawArc(rectF2, fLerp7 - fAbs, fAbs * 2.0f, false, this.outlineFilledPaint);
            canvas3 = canvas;
        }
        RectF rectF5 = rectF2;
        if (this.recording) {
            invalidate();
            long j2 = jCurrentTimeMillis / 1000;
            if (j2 != this.lastDuration / 1000) {
                this.delegate.onVideoDuration(j2);
            }
            if (maxVideoDuration > 0 && jCurrentTimeMillis >= maxVideoDuration) {
                post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onDraw$3();
                    }
                });
            }
            this.lastDuration = jCurrentTimeMillis;
        }
        canvas3.restore();
        if (this.showLock) {
            float scale = this.lockButton.getScale(0.2f) * f19;
            if (scale > 0.0f) {
                canvas3.save();
                canvas3.scale(scale, scale, this.leftCx, this.f2218cy);
                canvas3.drawCircle(this.leftCx, this.f2218cy, AndroidUtilities.m1124dp(22.0f), this.buttonPaint);
                canvas3.rotate(-getRotation(), this.leftCx, this.f2218cy);
                this.unlockDrawable.draw(canvas3);
                canvas3.restore();
            }
        }
        float scale2 = this.lockButton.getScale(0.2f) * f26 * f36;
        if (scale2 > 0.0f) {
            canvas3.save();
            canvas3.scale(scale2, scale2, this.leftCx, this.f2218cy);
            canvas3.rotate(-getRotation(), this.leftCx, this.f2218cy);
            this.galleryImage.draw(canvas3);
            canvas3.restore();
        }
        float f49 = this.dualT.set(this.dual ? 1.0f : 0.0f);
        if (f49 > 0.0f) {
            canvas3.save();
            float scale3 = this.flipButton.getScale(0.2f) * f49 * f36;
            canvas3.scale(scale3, scale3, this.rightCx, this.f2218cy);
            canvas3.rotate(this.flipDrawableRotateT.set(this.flipDrawableRotate) - getRotation(), this.rightCx, this.f2218cy);
            canvas3.drawCircle(this.rightCx, this.f2218cy, AndroidUtilities.m1124dp(22.0f), this.buttonPaintWhite);
            this.flipDrawableBlack.draw(canvas3);
            canvas3.restore();
        }
        if (f49 < 1.0f) {
            canvas3.save();
            float scale4 = this.flipButton.getScale(0.2f) * (1.0f - f49) * f36;
            canvas3.scale(scale4, scale4, this.rightCx, this.f2218cy);
            canvas3.rotate(this.flipDrawableRotateT.set(this.flipDrawableRotate) - getRotation(), this.rightCx, this.f2218cy);
            canvas3.drawCircle(this.rightCx, this.f2218cy, AndroidUtilities.m1124dp(22.0f), this.buttonPaint);
            this.flipDrawableWhite.draw(canvas3);
            canvas3.restore();
        }
        float fLerp8 = (!this.longpressRecording || hasCheck()) ? 0.0f : AndroidUtilities.lerp(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.lerp(AndroidUtilities.m1124dp(8.0f) + (AndroidUtilities.m1124dp(8.0f) * Math.abs(fClamp2)), AndroidUtilities.m1124dp(22.0f), f6), Math.max(f6, f23)) * f9 * f13 * f19;
        float f50 = this.lockedT.set((this.longpressRecording || !this.recording) ? 0.0f : 1.0f);
        if (fLerp8 > 0.0f) {
            this.redPaint.setAlpha(255);
            canvas3.drawCircle(this.touchX, this.f2218cy, fLerp8, this.redPaint);
            float f51 = this.touchX;
            float fClamp3 = Utilities.clamp(1.0f - ((Math.abs(fClamp2) * f9) / 1.3f), 1.0f, 0.0f);
            float fAbs2 = Math.abs(fLerp - f51);
            if (fAbs2 >= fLerp2 + (fLerp8 * 2.0f) || fClamp3 >= 0.6f) {
                f17 = 22.0f;
                f18 = f50;
            } else {
                float f52 = fLerp2 + fLerp8;
                if (fAbs2 < f52) {
                    float f53 = fLerp2 * fLerp2;
                    float f54 = fAbs2 * fAbs2;
                    float f55 = fLerp8 * fLerp8;
                    f17 = 22.0f;
                    f18 = f50;
                    dAcos = Math.acos(((f53 + f54) - f55) / ((fLerp2 * 2.0f) * fAbs2));
                    dAcos2 = Math.acos(((f55 + f54) - f53) / (r1 * fAbs2));
                } else {
                    f17 = 22.0f;
                    f18 = f50;
                    dAcos = 0.0d;
                    dAcos2 = 0.0d;
                }
                double d = f51 > fLerp ? 0.0d : 3.141592653589793d;
                double dAcos3 = (float) Math.acos((fLerp2 - fLerp8) / fAbs2);
                double d2 = dAcos2;
                double d3 = fClamp3;
                double d4 = (dAcos3 - dAcos) * d3;
                double d5 = d + dAcos + d4;
                double d6 = (d - dAcos) - d4;
                double d7 = ((3.141592653589793d - d2) - dAcos3) * d3;
                double d8 = ((d + 3.141592653589793d) - d2) - d7;
                double d9 = (d - 3.141592653589793d) + d2 + d7;
                getVector(fLerp, this.f2218cy, d5, fLerp2, this.f2223p1);
                getVector(fLerp, this.f2218cy, d6, fLerp2, this.f2224p2);
                float f56 = fLerp8;
                getVector(f51, this.f2218cy, d8, f56, this.f2225p3);
                getVector(f51, this.f2218cy, d9, f56, this.f2226p4);
                float fMin2 = Math.min(fClamp3 * 2.4f, dist(this.f2223p1, this.f2225p3) / f52) * Math.min(1.0f, (fAbs2 * 2.0f) / f52);
                float f57 = fLerp2 * fMin2;
                float f58 = fLerp8 * fMin2;
                Point point2 = this.f2223p1;
                getVector(point2.f2016x, point2.f2017y, d5 - 1.5707963705062866d, f57, this.f2219h1);
                Point point3 = this.f2224p2;
                getVector(point3.f2016x, point3.f2017y, d6 + 1.5707963705062866d, f57, this.f2220h2);
                Point point4 = this.f2225p3;
                getVector(point4.f2016x, point4.f2017y, d8 + 1.5707963705062866d, f58, this.f2221h3);
                Point point5 = this.f2226p4;
                getVector(point5.f2016x, point5.f2017y, d9 - 1.5707963705062866d, f58, this.f2222h4);
                float f59 = f9 * f13 * f19 * f14;
                if (f59 > 0.0f) {
                    this.metaballsPath.rewind();
                    Path path2 = this.metaballsPath;
                    Point point6 = this.f2223p1;
                    path2.moveTo(point6.f2016x, point6.f2017y);
                    Path path3 = this.metaballsPath;
                    Point point7 = this.f2219h1;
                    float f60 = point7.f2016x;
                    float f61 = point7.f2017y;
                    Point point8 = this.f2221h3;
                    float f62 = point8.f2016x;
                    float f63 = point8.f2017y;
                    Point point9 = this.f2225p3;
                    path3.cubicTo(f60, f61, f62, f63, point9.f2016x, point9.f2017y);
                    Path path4 = this.metaballsPath;
                    Point point10 = this.f2226p4;
                    path4.lineTo(point10.f2016x, point10.f2017y);
                    Path path5 = this.metaballsPath;
                    Point point11 = this.f2222h4;
                    float f64 = point11.f2016x;
                    float f65 = point11.f2017y;
                    Point point12 = this.f2220h2;
                    float f66 = point12.f2016x;
                    float f67 = point12.f2017y;
                    Point point13 = this.f2224p2;
                    path5.cubicTo(f64, f65, f66, f67, point13.f2016x, point13.f2017y);
                    Path path6 = this.metaballsPath;
                    Point point14 = this.f2223p1;
                    path6.lineTo(point14.f2016x, point14.f2017y);
                    this.redPaint.setAlpha((int) (f59 * 255.0f));
                    canvas3.drawPath(this.metaballsPath, this.redPaint);
                    float f68 = this.f2218cy;
                    rectF5.set(f11, f68 - fLerp2, f8, f68 + fLerp2);
                    canvas3.drawRoundRect(rectF5, f15, f15, this.redPaint);
                }
            }
        }
        if (fLerp8 > 0.0f || f18 > 0.0f) {
            float scale5 = this.lockButton.getScale(0.2f) * f19 * f36;
            canvas3.save();
            this.circlePath.rewind();
            if (fLerp8 > 0.0f) {
                this.circlePath.addCircle(this.touchX, this.f2218cy, fLerp8, Path.Direction.CW);
            }
            if (f18 > 0.0f && this.showLock) {
                this.circlePath.addCircle(this.leftCx, this.f2218cy, f18 * AndroidUtilities.m1124dp(f17) * scale5, Path.Direction.CW);
            }
            canvas3.clipPath(this.circlePath);
            if (this.showLock) {
                canvas3.save();
                canvas3.scale(scale5, scale5, this.leftCx, this.f2218cy);
                canvas3.drawCircle(this.leftCx, this.f2218cy, AndroidUtilities.m1124dp(f17), this.buttonPaintWhite);
                canvas3.rotate(-getRotation(), this.leftCx, this.f2218cy);
                this.lockDrawable.draw(canvas3);
                canvas3.restore();
            }
            float scale6 = this.flipButton.getScale(0.2f) * f36;
            canvas3.save();
            canvas3.scale(scale6, scale6, this.rightCx, this.f2218cy);
            canvas3.rotate(this.flipDrawableRotateT.set(this.flipDrawableRotate) - getRotation(), this.rightCx, this.f2218cy);
            canvas3.drawCircle(this.rightCx, this.f2218cy, AndroidUtilities.m1124dp(f17), this.buttonPaintWhite);
            this.flipDrawableBlack.draw(canvas3);
            canvas3.restore();
            canvas3.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$3() {
        this.recording = false;
        this.longpressRecording = false;
        this.recordingLoadingStart = SystemClock.elapsedRealtime();
        this.recordingLoading = true;
        this.touch = false;
        this.recordButton.setPressed(false);
        this.flipButton.setPressed(false);
        this.lockButton.setPressed(false);
        this.delegate.onVideoRecordEnd(true);
    }

    public boolean hasCheck() {
        return this.collageProgress >= 1.0f;
    }

    private void getVector(float f, float f2, double d, float f3, Point point) {
        double d2 = f3;
        point.f2016x = (float) (((double) f) + (Math.cos(d) * d2));
        point.f2017y = (float) (((double) f2) + (Math.sin(d) * d2));
    }

    private float dist(Point point, Point point2) {
        return MathUtils.distance(point.f2016x, point.f2017y, point2.f2016x, point2.f2017y);
    }

    public void rotateFlip(float f) {
        this.flipDrawableRotateT.setDuration(f > 180.0f ? 620L : 310L);
        this.flipDrawableRotate += f;
        invalidate();
    }

    private boolean isPressed(float f, float f2, float f3, float f4, float f5, boolean z) {
        return this.recording ? (!z || f4 - f2 <= ((float) AndroidUtilities.m1124dp(100.0f))) && Math.abs(f3 - f) <= f5 : MathUtils.distance(f, f2, f3, f4) <= f5;
    }

    public boolean isTouch() {
        return this.discardParentTouch;
    }

    public void setDual(boolean z) {
        if (z != this.dual) {
            this.dual = z;
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float fClamp = Utilities.clamp(motionEvent.getX() + 0.0f, this.rightCx, this.leftCx);
        float y = motionEvent.getY() + 0.0f;
        boolean zIsPressed = isPressed(fClamp, y, this.rightCx, this.f2218cy, AndroidUtilities.m1124dp(7.0f), true);
        boolean z = true;
        if (this.recordingLoading) {
            this.recordButton.setPressed(false);
            this.flipButton.setPressed(false);
            this.lockButton.setPressed(false);
        } else if (action == 0 || this.touch) {
            this.recordButton.setPressed(isPressed(fClamp, y, this.f2217cx, this.f2218cy, AndroidUtilities.m1124dp(60.0f), false));
            this.flipButton.setPressed(isPressed(fClamp, y, this.rightCx, this.f2218cy, (float) AndroidUtilities.m1124dp(30.0f), true) && !hasCheck());
            this.lockButton.setPressed(isPressed(fClamp, y, this.leftCx, this.f2218cy, (float) AndroidUtilities.m1124dp(30.0f), false) && !hasCheck());
        }
        if (action == 0) {
            this.touch = true;
            this.discardParentTouch = this.recordButton.isPressed() || this.flipButton.isPressed();
            this.touchStart = System.currentTimeMillis();
            this.touchX = fClamp;
            this.touchY = y;
            if (Math.abs(fClamp - this.f2217cx) < AndroidUtilities.m1124dp(50.0f)) {
                AndroidUtilities.runOnUIThread(this.onRecordLongPressRunnable, ViewConfiguration.getLongPressTimeout());
            }
            if (this.flipButton.isPressed()) {
                AndroidUtilities.runOnUIThread(this.onFlipLongPressRunnable, ViewConfiguration.getLongPressTimeout());
            }
        } else if (action == 2) {
            if (!this.touch) {
                return false;
            }
            this.touchX = Utilities.clamp(fClamp, this.rightCx, this.leftCx);
            this.touchY = y;
            invalidate();
            if (this.recording && !this.flipButtonWasPressed && zIsPressed) {
                rotateFlip(180.0f);
                this.delegate.onFlipClick();
            }
            if (this.recording && this.longpressRecording) {
                this.delegate.onZoom(Utilities.clamp(((this.f2218cy - AndroidUtilities.m1124dp(48.0f)) - y) / (AndroidUtilities.displaySize.y / 2.0f), 1.0f, 0.0f));
            }
        } else if (action != 1 && action != 3) {
            z = false;
        } else {
            if (!this.touch) {
                return false;
            }
            this.touch = false;
            this.discardParentTouch = false;
            AndroidUtilities.cancelRunOnUIThread(this.onRecordLongPressRunnable);
            AndroidUtilities.cancelRunOnUIThread(this.onFlipLongPressRunnable);
            if (!this.recording && this.lockButton.isPressed()) {
                this.delegate.onGalleryClick();
            } else if (this.recording && this.longpressRecording) {
                if (this.lockButton.isPressed()) {
                    this.longpressRecording = false;
                    this.lockedT.set(1.0f, true);
                    this.delegate.onVideoRecordLocked();
                } else {
                    this.recording = false;
                    this.recordingLoadingStart = SystemClock.elapsedRealtime();
                    this.recordingLoading = true;
                    this.delegate.onVideoRecordEnd(false);
                }
            } else if (this.recordButton.isPressed()) {
                if (hasCheck()) {
                    this.delegate.onCheckClick();
                } else if (!this.startModeIsVideo && !this.recording && !this.longpressRecording) {
                    this.delegate.onPhotoShoot();
                } else if (!this.recording) {
                    if (this.delegate.canRecordAudio()) {
                        this.lastDuration = 0L;
                        this.recordingStart = System.currentTimeMillis();
                        this.showLock = false;
                        this.delegate.onVideoRecordStart(false, new Runnable() { // from class: org.telegram.ui.Stories.recorder.RecordControl$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTouchEvent$4();
                            }
                        });
                    }
                } else {
                    this.recording = false;
                    this.recordingLoadingStart = SystemClock.elapsedRealtime();
                    this.recordingLoading = true;
                    this.delegate.onVideoRecordEnd(false);
                }
            }
            this.longpressRecording = false;
            if (this.flipButton.isPressed()) {
                rotateFlip(180.0f);
                this.delegate.onFlipClick();
            }
            this.recordButton.setPressed(false);
            this.flipButton.setPressed(false);
            this.lockButton.setPressed(false);
            invalidate();
        }
        this.flipButtonWasPressed = zIsPressed;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$4() {
        this.recordingStart = System.currentTimeMillis();
        this.lastDuration = 0L;
        this.recording = true;
        this.delegate.onVideoDuration(0L);
    }

    public void stopRecording() {
        if (this.recording) {
            this.recording = false;
            this.recordingLoadingStart = SystemClock.elapsedRealtime();
            this.recordingLoading = true;
            this.delegate.onVideoRecordEnd(false);
            this.recordButton.setPressed(false);
            this.flipButton.setPressed(false);
            this.lockButton.setPressed(false);
            invalidate();
        }
    }

    public void stopRecordingLoading(boolean z) {
        this.recordingLoading = false;
        if (!z) {
            this.recordingLoadingT.set(false, true);
        }
        invalidate();
    }
}
