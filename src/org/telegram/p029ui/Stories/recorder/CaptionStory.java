package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BlobDrawable;
import org.telegram.p029ui.Components.BlurringShader;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Stories.recorder.CaptionContainerView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CaptionStory extends CaptionContainerView {
    public static final int[] periods = {21600, 43200, 86400, 172800};
    private float amplitude;
    private final AnimatedFloat animatedAmplitude;
    private final BlobDrawable bigWaveDrawable;
    private final Path boundsPath;
    private final AnimatedFloat cancel2T;
    private final RectF cancelBounds;
    private final AnimatedFloat cancelT;
    private Text cancelText;
    private boolean cancelling;
    private final Path circlePath;
    private RoundVideoRecorder currentRecorder;
    private final Runnable doneCancel;
    private Drawable flipButton;
    private float fromX;
    private float fromY;
    private boolean hasRoundVideo;
    private final AnimatedFloat lock2T;
    private final Paint lockBackgroundPaint;
    private final RectF lockBounds;
    private final AnimatedFloat lockCancelledT;
    private final Path lockHandle;
    private final Paint lockHandlePaint;
    private final Paint lockPaint;
    private float lockProgress;
    private final RectF lockRect;
    private final Paint lockShadowPaint;
    private final AnimatedFloat lockT;
    private boolean locked;
    private Utilities.Callback onPeriodUpdate;
    private Utilities.Callback onPremiumHintShow;
    public ImageView periodButton;
    public CaptionContainerView.PeriodDrawable periodDrawable;
    private int periodIndex;
    private ItemOptions periodPopup;
    private boolean periodVisible;
    private final RecordDot recordPaint;
    private boolean recordTouch;
    private boolean recording;
    public ImageView roundButton;
    public ButtonBounce roundButtonBounce;
    private final Drawable roundDrawable;
    private final Paint roundPaint;
    private float slideProgress;
    private Paint slideToCancelArrowPaint;
    private Path slideToCancelArrowPath;
    private Text slideToCancelText;
    private long startTime;
    private boolean stopping;
    private final AnimatedTextView.AnimatedTextDrawable timerTextDrawable;
    private final BlobDrawable tinyWaveDrawable;
    private final Paint whitePaint;

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    public int additionalRightMargin() {
        return 36;
    }

    public abstract boolean canRecord();

    public int getTimelineHeight() {
        return 0;
    }

    public abstract void putRecorder(RoundVideoRecorder roundVideoRecorder);

    public abstract void removeRound();

    public CaptionStory(Context context, final FrameLayout frameLayout, SizeNotifierFrameLayout sizeNotifierFrameLayout, FrameLayout frameLayout2, final Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager) {
        super(context, frameLayout, sizeNotifierFrameLayout, frameLayout2, resourcesProvider, blurManager);
        this.periodVisible = true;
        this.periodIndex = 0;
        this.recordPaint = new RecordDot(this);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.timerTextDrawable = animatedTextDrawable;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        animatedTextDrawable.setAnimationProperties(0.16f, 0L, 50L, cubicBezierInterpolator);
        animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(15.0f));
        animatedTextDrawable.setTypeface(AndroidUtilities.bold());
        animatedTextDrawable.setText("0:00.0");
        animatedTextDrawable.setTextColor(-1);
        Paint paint = new Paint(1);
        this.whitePaint = paint;
        Paint paint2 = new Paint(1);
        this.roundPaint = paint2;
        BlobDrawable blobDrawable = new BlobDrawable(11, LiteMode.FLAGS_CHAT);
        this.tinyWaveDrawable = blobDrawable;
        BlobDrawable blobDrawable2 = new BlobDrawable(12, LiteMode.FLAGS_CHAT);
        this.bigWaveDrawable = blobDrawable2;
        paint.setColor(-1);
        paint2.setColor(-15033089);
        blobDrawable.minRadius = AndroidUtilities.m1124dp(47.0f);
        blobDrawable.maxRadius = AndroidUtilities.m1124dp(55.0f);
        blobDrawable.generateBlob();
        blobDrawable2.minRadius = AndroidUtilities.m1124dp(47.0f);
        blobDrawable2.maxRadius = AndroidUtilities.m1124dp(55.0f);
        blobDrawable2.generateBlob();
        this.roundDrawable = getContext().getResources().getDrawable(C2888R.drawable.input_video_pressed).mutate();
        this.animatedAmplitude = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.invalidateDrawOver2();
            }
        }, 0L, 200L, cubicBezierInterpolator);
        this.circlePath = new Path();
        this.boundsPath = new Path();
        this.lockBackgroundPaint = new Paint(1);
        this.lockShadowPaint = new Paint(1);
        this.lockPaint = new Paint(1);
        Paint paint3 = new Paint(1);
        this.lockHandlePaint = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.invalidateDrawOver2();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.lockCancelledT = new AnimatedFloat(runnable, 350L, cubicBezierInterpolator2);
        this.lockBounds = new RectF();
        this.cancelBounds = new RectF();
        this.lockRect = new RectF();
        this.lockHandle = new Path();
        this.cancelT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator2);
        this.cancel2T = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.invalidateDrawOver2();
            }
        }, 0L, 420L, cubicBezierInterpolator2);
        this.lockT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator2);
        this.lock2T = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.invalidateDrawOver2();
            }
        }, 0L, 350L, cubicBezierInterpolator2);
        this.doneCancel = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6();
            }
        };
        ImageView imageView = new ImageView(context);
        this.roundButton = imageView;
        this.roundButtonBounce = new ButtonBounce(imageView);
        this.roundButton.setImageResource(C2888R.drawable.input_video_story);
        this.roundButton.setBackground(Theme.createSelectorDrawable(1090519039, 1, AndroidUtilities.m1124dp(18.0f)));
        ImageView imageView2 = this.roundButton;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView2.setScaleType(scaleType);
        addView(this.roundButton, LayoutHelper.createFrame(44, 44.0f, 85, 0.0f, 0.0f, 11.0f, 6.0f));
        this.roundButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        ImageView imageView3 = new ImageView(context);
        this.periodButton = imageView3;
        CaptionContainerView.PeriodDrawable periodDrawable = new CaptionContainerView.PeriodDrawable();
        this.periodDrawable = periodDrawable;
        imageView3.setImageDrawable(periodDrawable);
        this.periodButton.setBackground(Theme.createSelectorDrawable(1090519039, 1, AndroidUtilities.m1124dp(18.0f)));
        this.periodButton.setScaleType(scaleType);
        setPeriod(86400, false);
        addView(this.periodButton, LayoutHelper.createFrame(44, 44.0f, 85, 0.0f, 0.0f, 51.0f, 6.0f));
        this.periodButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(frameLayout, resourcesProvider, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        showRemoveRoundAlert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(FrameLayout frameLayout, Theme.ResourcesProvider resourcesProvider, View view) {
        String pluralString;
        ItemOptions itemOptions = this.periodPopup;
        if (itemOptions != null && itemOptions.isShown()) {
            return;
        }
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$1((Integer) obj);
            }
        };
        boolean zIsPremium = UserConfig.getInstance(this.currentAccount).isPremium();
        final Utilities.Callback callback2 = zIsPremium ? null : new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$2((Integer) obj);
            }
        };
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(frameLayout, resourcesProvider, this.periodButton);
        this.periodPopup = itemOptionsMakeOptions;
        itemOptionsMakeOptions.addText(LocaleController.getString("StoryPeriodHint"), 13, AndroidUtilities.m1124dp(200.0f));
        this.periodPopup.addGap();
        int i = 0;
        while (true) {
            int[] iArr = periods;
            if (i < iArr.length) {
                final int i2 = iArr[i];
                ItemOptions itemOptions2 = this.periodPopup;
                if (i2 == Integer.MAX_VALUE) {
                    pluralString = LocaleController.getString("StoryPeriodKeep");
                } else {
                    pluralString = LocaleController.formatPluralString("Hours", i2 / 3600, new Object[0]);
                }
                itemOptions2.add(0, pluralString, Theme.key_actionBarDefaultSubmenuItem, new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(Integer.valueOf(i2));
                    }
                }).putPremiumLock((zIsPremium || i2 == 86400 || i2 == Integer.MAX_VALUE) ? null : new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback2.run(Integer.valueOf(i2));
                    }
                });
                if (this.periodIndex == i) {
                    this.periodPopup.putCheck();
                }
                i++;
            } else {
                this.periodPopup.setDimAlpha(0).show();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Integer num) {
        setPeriod(num.intValue());
        Utilities.Callback callback = this.onPeriodUpdate;
        if (callback != null) {
            callback.run(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Integer num) {
        Utilities.Callback callback = this.onPremiumHintShow;
        if (callback != null) {
            callback.run(num);
        }
    }

    private void checkFlipButton() {
        if (this.flipButton != null) {
            return;
        }
        this.flipButton = ContextCompat.getDrawable(getContext(), C2888R.drawable.avd_flip);
    }

    public void setHasRoundVideo(boolean z) {
        this.roundButton.setImageResource(z ? C2888R.drawable.input_video_story_remove : C2888R.drawable.input_video_story);
        this.hasRoundVideo = z;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    public void drawOver(Canvas canvas, RectF rectF) {
        float f;
        float f2;
        float f3;
        Paint paint;
        float f4;
        Canvas canvas2;
        Canvas canvas3 = canvas;
        if (this.currentRecorder != null) {
            float f5 = this.cancelT.set(this.cancelling);
            float f6 = this.lockT.set(this.locked);
            if (this.startTime <= 0) {
                this.startTime = System.currentTimeMillis();
            }
            float fSin = (((float) Math.sin(((double) ((System.currentTimeMillis() - this.startTime) / 900.0f)) * 3.141592653589793d)) + 1.0f) / 2.0f;
            float fM1124dp = rectF.left + AndroidUtilities.m1124dp(21.0f);
            float fM1124dp2 = rectF.bottom - AndroidUtilities.m1124dp(20.0f);
            this.recordPaint.setBounds((int) (fM1124dp - AndroidUtilities.m1124dp(12.0f)), (int) (fM1124dp2 - AndroidUtilities.m1124dp(12.0f)), (int) (fM1124dp + AndroidUtilities.m1124dp(12.0f)), (int) (fM1124dp2 + AndroidUtilities.m1124dp(12.0f)));
            this.recordPaint.draw(canvas3);
            this.timerTextDrawable.setBounds((int) ((rectF.left + AndroidUtilities.m1124dp(33.3f)) - (AndroidUtilities.m1124dp(10.0f) * f5)), (int) ((rectF.bottom - AndroidUtilities.m1124dp(20.0f)) - AndroidUtilities.m1124dp(9.0f)), (int) (rectF.left + AndroidUtilities.m1124dp(133.3f)), (int) ((rectF.bottom - AndroidUtilities.m1124dp(20.0f)) + AndroidUtilities.m1124dp(9.0f)));
            this.timerTextDrawable.setText(this.currentRecorder.sinceRecordingText());
            this.timerTextDrawable.setAlpha((int) ((1.0f - f5) * 255.0f));
            this.timerTextDrawable.draw(canvas3);
            float f7 = 1.0f - f6;
            float f8 = (1.0f - this.slideProgress) * f7;
            Paint paint2 = this.captionBlur.getPaint(1.0f);
            if (paint2 != null) {
                f2 = 12.0f;
                paint = paint2;
                f = 2.0f;
                f3 = f8;
                canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, 255, 31);
                canvas3 = canvas;
            } else {
                f = 2.0f;
                f2 = 12.0f;
                f3 = f8;
                paint = paint2;
            }
            if (f3 > 0.0f) {
                if (this.slideToCancelText == null) {
                    this.slideToCancelText = new Text(LocaleController.getString(C2888R.string.SlideToCancel2), 15.0f);
                }
                if (this.slideToCancelArrowPath == null) {
                    Path path = new Path();
                    this.slideToCancelArrowPath = path;
                    path.moveTo(AndroidUtilities.m1124dp(3.83f), 0.0f);
                    this.slideToCancelArrowPath.lineTo(0.0f, AndroidUtilities.m1124dp(5.0f));
                    this.slideToCancelArrowPath.lineTo(AndroidUtilities.m1124dp(3.83f), AndroidUtilities.m1124dp(10.0f));
                    Paint paint3 = new Paint(1);
                    this.slideToCancelArrowPaint = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                    this.slideToCancelArrowPaint.setStrokeCap(Paint.Cap.ROUND);
                    this.slideToCancelArrowPaint.setStrokeJoin(Paint.Join.ROUND);
                }
                this.slideToCancelArrowPaint.setStrokeWidth(AndroidUtilities.m1124dp(1.33f));
                this.slideToCancelText.ellipsize((int) ((rectF.width() - AndroidUtilities.m1124dp(116.0f)) - this.timerTextDrawable.getCurrentWidth()));
                float fCenterX = ((rectF.centerX() - ((AndroidUtilities.m1124dp(11.33f) + this.slideToCancelText.getWidth()) / f)) - ((rectF.width() / 6.0f) * AndroidUtilities.lerp(this.slideProgress, 1.0f, f6))) - ((fSin * AndroidUtilities.m1124dp(6.0f)) * (1.0f - this.slideProgress));
                int iMultAlpha = Theme.multAlpha(paint != null ? -1 : -2130706433, f3);
                canvas3.save();
                canvas3.translate(fCenterX, rectF.centerY() - AndroidUtilities.m1124dp(5.0f));
                this.slideToCancelArrowPaint.setColor(iMultAlpha);
                canvas3.drawPath(this.slideToCancelArrowPath, this.slideToCancelArrowPaint);
                canvas3.restore();
                f4 = 15.0f;
                this.slideToCancelText.draw(canvas3, fCenterX + AndroidUtilities.m1124dp(11.33f), rectF.centerY(), iMultAlpha, 1.0f);
            } else {
                f4 = 15.0f;
            }
            if (f6 > 0.0f) {
                if (this.cancelText == null) {
                    this.cancelText = new Text(LocaleController.getString(C2888R.string.CancelRound), f4, AndroidUtilities.bold());
                }
                this.cancelText.ellipsize((int) ((rectF.width() - AndroidUtilities.m1124dp(116.0f)) - this.timerTextDrawable.getCurrentWidth()));
                float fCenterX2 = (rectF.centerX() - (this.cancelText.getWidth() / f)) + ((rectF.width() / 4.0f) * f7);
                canvas2 = canvas;
                this.cancelText.draw(canvas2, fCenterX2, rectF.centerY(), Theme.multAlpha(paint != null ? -1 : -2130706433, f6), 1.0f);
                this.cancelBounds.set(fCenterX2 - AndroidUtilities.m1124dp(f2), rectF.top, fCenterX2 + this.cancelText.getWidth() + AndroidUtilities.m1124dp(f2), rectF.bottom);
            } else {
                canvas2 = canvas;
            }
            if (paint != null) {
                canvas2.drawRect(rectF, paint);
                canvas2.restore();
            }
            invalidate();
        }
    }

    public void setAmplitude(double d) {
        this.amplitude = (float) (Math.min(1800.0d, d) / 1800.0d);
        invalidate();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    public void drawOver2(Canvas canvas, RectF rectF, float f) {
        if (f <= 0.0f) {
            return;
        }
        float f2 = this.cancel2T.set(this.cancelling);
        float f3 = this.lock2T.set(this.locked);
        float f4 = this.animatedAmplitude.set(this.amplitude);
        float f5 = 1.0f - f2;
        float fM1124dp = (AndroidUtilities.m1124dp(41.0f) + (AndroidUtilities.m1124dp(30.0f) * f4 * (1.0f - this.slideProgress))) * f5 * f;
        float fLerp = AndroidUtilities.lerp((rectF.right - AndroidUtilities.m1124dp(20.0f)) - (((getWidth() * 0.35f) * this.slideProgress) * (1.0f - f3)), rectF.left + AndroidUtilities.m1124dp(20.0f), f2);
        float fM1124dp2 = rectF.bottom - AndroidUtilities.m1124dp(20.0f);
        if (LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
            this.tinyWaveDrawable.minRadius = AndroidUtilities.m1124dp(47.0f);
            this.tinyWaveDrawable.maxRadius = AndroidUtilities.m1124dp(47.0f) + (AndroidUtilities.m1124dp(15.0f) * BlobDrawable.FORM_SMALL_MAX);
            this.bigWaveDrawable.minRadius = AndroidUtilities.m1124dp(50.0f);
            this.bigWaveDrawable.maxRadius = AndroidUtilities.m1124dp(50.0f) + (AndroidUtilities.m1124dp(12.0f) * BlobDrawable.FORM_BIG_MAX);
            this.bigWaveDrawable.update(f4, 1.01f);
            this.tinyWaveDrawable.update(f4, 1.02f);
            this.bigWaveDrawable.paint.setColor(Theme.multAlpha(this.roundPaint.getColor(), 0.15f * f));
            canvas.save();
            float f6 = fM1124dp / this.bigWaveDrawable.minRadius;
            canvas.scale(f6, f6, fLerp, fM1124dp2);
            BlobDrawable blobDrawable = this.bigWaveDrawable;
            blobDrawable.draw(fLerp, fM1124dp2, canvas, blobDrawable.paint);
            canvas.restore();
            this.tinyWaveDrawable.paint.setColor(Theme.multAlpha(this.roundPaint.getColor(), 0.3f * f));
            canvas.save();
            float f7 = fM1124dp / this.tinyWaveDrawable.minRadius;
            canvas.scale(f7, f7, fLerp, fM1124dp2);
            BlobDrawable blobDrawable2 = this.tinyWaveDrawable;
            blobDrawable2.draw(fLerp, fM1124dp2, canvas, blobDrawable2.paint);
            canvas.restore();
        }
        float fMin = Math.min(fM1124dp, AndroidUtilities.m1124dp(55.0f));
        float f8 = f * 255.0f;
        this.roundPaint.setAlpha((int) f8);
        canvas.drawCircle(fLerp, fM1124dp2, fMin, this.roundPaint);
        canvas.save();
        this.circlePath.rewind();
        Path path = this.circlePath;
        Path.Direction direction = Path.Direction.CW;
        path.addCircle(fLerp, fM1124dp2, fMin, direction);
        canvas.clipPath(this.circlePath);
        this.roundDrawable.setBounds((int) (fLerp - (((r6.getIntrinsicWidth() / 2.0f) * f5) * (this.stopping ? f : 1.0f))), (int) (fM1124dp2 - (((this.roundDrawable.getIntrinsicHeight() / 2.0f) * f5) * (this.stopping ? f : 1.0f))), (int) (((this.roundDrawable.getIntrinsicWidth() / 2.0f) * f5 * (this.stopping ? f : 1.0f)) + fLerp), (int) (((this.roundDrawable.getIntrinsicHeight() / 2.0f) * f5 * (this.stopping ? f : 1.0f)) + fM1124dp2));
        this.roundDrawable.setAlpha((int) (f5 * 255.0f * (this.stopping ? f : 1.0f)));
        this.roundDrawable.draw(canvas);
        if (f3 > 0.0f) {
            float fDpf2 = (AndroidUtilities.dpf2(19.33f) / 2.0f) * f3 * f;
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(fLerp - fDpf2, fM1124dp2 - fDpf2, fLerp + fDpf2, fM1124dp2 + fDpf2);
            canvas.drawRoundRect(rectF2, AndroidUtilities.m1124dp(5.33f), AndroidUtilities.m1124dp(5.33f), this.whitePaint);
        }
        canvas.restore();
        drawLock(canvas, rectF, f);
        if (this.cancelling && (this.roundButton.getVisibility() == 4 || this.periodButton.getVisibility() == 4 || this.collapsedT.get() > 0.0f)) {
            canvas.saveLayerAlpha(rectF, (int) ((1.0f - this.keyboardT) * 255.0f), 31);
            this.boundsPath.rewind();
            this.boundsPath.addRoundRect(rectF, AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(21.0f), direction);
            canvas.clipPath(this.boundsPath);
            if (this.roundButton.getVisibility() == 4 || this.collapsedT.get() > 0.0f) {
                canvas.save();
                canvas.translate(this.roundButton.getX() + (AndroidUtilities.m1124dp(180.0f) * f5), this.roundButton.getY());
                this.roundButton.draw(canvas);
                canvas.restore();
            }
            if (this.periodButton.getVisibility() == 4 || this.collapsedT.get() > 0.0f) {
                canvas.save();
                canvas.translate(this.periodButton.getX() + (AndroidUtilities.m1124dp(180.0f) * f5), this.periodButton.getY());
                this.periodButton.draw(canvas);
                canvas.restore();
            }
            canvas.restore();
        }
        checkFlipButton();
        this.flipButton.setAlpha((int) (f8 * f5));
        float timelineHeight = getTimelineHeight();
        this.flipButton.setBounds(((int) rectF.left) + AndroidUtilities.m1124dp(4.0f), (int) ((rectF.top - timelineHeight) - AndroidUtilities.m1124dp(48.0f)), (int) (rectF.left + AndroidUtilities.m1124dp(40.0f)), (int) ((rectF.top - timelineHeight) - AndroidUtilities.m1124dp(12.0f)));
        this.flipButton.draw(canvas);
    }

    private void drawLock(Canvas canvas, RectF rectF, float f) {
        float f2 = this.cancel2T.get();
        float f3 = this.lock2T.get();
        float fLerp = AndroidUtilities.lerp(this.lockCancelledT.set(this.slideProgress < 0.4f), 0.0f, f3) * (1.0f - f2) * f;
        float fM1124dp = rectF.right - AndroidUtilities.m1124dp(20.0f);
        float fLerp2 = (AndroidUtilities.lerp(AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(36.0f), f3) * fLerp) / 2.0f;
        float f4 = 1.0f - f3;
        float fLerp3 = AndroidUtilities.lerp(((rectF.bottom - AndroidUtilities.m1124dp(80.0f)) - fLerp2) - ((AndroidUtilities.m1124dp(120.0f) * this.lockProgress) * f4), rectF.bottom - AndroidUtilities.m1124dp(20.0f), 1.0f - fLerp);
        float fM1124dp2 = (AndroidUtilities.m1124dp(36.0f) * fLerp) / 2.0f;
        this.lockBounds.set(fM1124dp - fM1124dp2, fLerp3 - fLerp2, fM1124dp2 + fM1124dp, fLerp2 + fLerp3);
        float fLerp4 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(14.0f), f3);
        this.lockShadowPaint.setShadowLayer(AndroidUtilities.m1124dp(1.0f), 0.0f, AndroidUtilities.m1124dp(0.66f), Theme.multAlpha(536870912, fLerp));
        this.lockShadowPaint.setColor(0);
        canvas.drawRoundRect(this.lockBounds, fLerp4, fLerp4, this.lockShadowPaint);
        Paint paint = this.backgroundBlur.getPaint(fLerp);
        if (paint == null) {
            this.lockBackgroundPaint.setColor(TLObject.FLAG_30);
            this.lockBackgroundPaint.setAlpha((int) (64.0f * fLerp));
            canvas.drawRoundRect(this.lockBounds, fLerp4, fLerp4, this.lockBackgroundPaint);
        } else {
            canvas.drawRoundRect(this.lockBounds, fLerp4, fLerp4, paint);
            this.backgroundPaint.setAlpha((int) (51.0f * fLerp));
            canvas.drawRoundRect(this.lockBounds, fLerp4, fLerp4, this.backgroundPaint);
        }
        canvas.save();
        canvas.scale(fLerp, fLerp, fM1124dp, fLerp3);
        this.lockPaint.setColor(Theme.multAlpha(-1, fLerp));
        this.lockHandlePaint.setColor(Theme.multAlpha(-1, fLerp * f4));
        float fLerp5 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(15.33f), AndroidUtilities.m1124dp(13.0f), f3);
        float fLerp6 = AndroidUtilities.lerp(AndroidUtilities.m1124dp(12.66f), AndroidUtilities.m1124dp(13.0f), f3);
        float fM1124dp3 = fLerp3 + (AndroidUtilities.m1124dp(4.0f) * f4);
        canvas.rotate(this.lockProgress * 12.0f * f4, fM1124dp, fM1124dp3);
        float f5 = fLerp5 / 2.0f;
        float f6 = fLerp6 / 2.0f;
        float f7 = fM1124dp3 - f6;
        this.lockRect.set(fM1124dp - f5, f7, f5 + fM1124dp, fM1124dp3 + f6);
        canvas.drawRoundRect(this.lockRect, AndroidUtilities.m1124dp(3.66f), AndroidUtilities.m1124dp(3.66f), this.lockPaint);
        if (f3 < 1.0f) {
            canvas.save();
            canvas.rotate(this.lockProgress * 12.0f * f4, fM1124dp, f7);
            canvas.translate(0.0f, f6 * f3);
            canvas.scale(f4, f4, fM1124dp, f7);
            this.lockHandle.rewind();
            float fM1124dp4 = AndroidUtilities.m1124dp(4.33f);
            float fM1124dp5 = f7 - AndroidUtilities.m1124dp(3.66f);
            float f8 = fM1124dp + fM1124dp4;
            this.lockHandle.moveTo(f8, AndroidUtilities.m1124dp(3.66f) + fM1124dp5);
            this.lockHandle.lineTo(f8, fM1124dp5);
            RectF rectF2 = AndroidUtilities.rectTmp;
            float f9 = fM1124dp - fM1124dp4;
            rectF2.set(f9, fM1124dp5 - fM1124dp4, f8, fM1124dp4 + fM1124dp5);
            this.lockHandle.arcTo(rectF2, 0.0f, -180.0f, false);
            this.lockHandle.lineTo(f9, fM1124dp5 + (AndroidUtilities.m1124dp(3.66f) * AndroidUtilities.lerp(AndroidUtilities.lerp(0.4f, 0.0f, this.lockProgress), 1.0f, f3)));
            this.lockHandlePaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
            canvas.drawPath(this.lockHandle, this.lockHandlePaint);
            canvas.restore();
        }
        canvas.restore();
    }

    public void setPeriod(int i) {
        setPeriod(i, true);
    }

    public void setPeriodVisible(boolean z) {
        this.periodVisible = z;
        this.periodButton.setVisibility((!z || this.keyboardShown) ? 8 : 0);
    }

    public void setPeriod(int i, boolean z) {
        int i2 = 0;
        while (true) {
            int[] iArr = periods;
            if (i2 >= iArr.length) {
                i2 = 2;
                break;
            } else if (iArr[i2] == i) {
                break;
            } else {
                i2++;
            }
        }
        if (this.periodIndex == i2) {
            return;
        }
        this.periodIndex = i2;
        this.periodDrawable.setValue(i / 3600, false, z);
    }

    public void hidePeriodPopup() {
        ItemOptions itemOptions = this.periodPopup;
        if (itemOptions != null) {
            itemOptions.dismiss();
            this.periodPopup = null;
        }
    }

    public void setOnPeriodUpdate(Utilities.Callback<Integer> callback) {
        this.onPeriodUpdate = callback;
    }

    public void setOnPremiumHint(Utilities.Callback<Integer> callback) {
        this.onPremiumHintShow = callback;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected void beforeUpdateShownKeyboard(boolean z) {
        if (z) {
            return;
        }
        this.periodButton.setVisibility(this.periodVisible ? 0 : 8);
        this.roundButton.setVisibility(0);
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected void onUpdateShowKeyboard(float f) {
        float f2 = 1.0f - f;
        this.periodButton.setAlpha(f2);
        this.roundButton.setAlpha(f2);
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected void afterUpdateShownKeyboard(boolean z) {
        this.periodButton.setVisibility((z || !this.periodVisible) ? 8 : 0);
        this.roundButton.setVisibility(z ? 8 : 0);
        if (z) {
            this.periodButton.setVisibility(8);
        }
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int getCaptionPremiumLimit() {
        return MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitPremium;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int getCaptionDefaultLimit() {
        return MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitDefault;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        RoundVideoRecorder roundVideoRecorder;
        Drawable drawable;
        if (this.recording && (roundVideoRecorder = this.currentRecorder) != null && roundVideoRecorder.cameraView != null && (drawable = this.flipButton) != null) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(drawable.getBounds());
            rectF.inset(-AndroidUtilities.m1124dp(12.0f), -AndroidUtilities.m1124dp(12.0f));
            int i = 0;
            while (true) {
                if (i >= motionEvent.getPointerCount()) {
                    break;
                }
                if (AndroidUtilities.rectTmp.contains(motionEvent.getX(i), motionEvent.getY(i))) {
                    if (motionEvent.getAction() == 0 || motionEvent.getActionMasked() == 5) {
                        this.currentRecorder.cameraView.switchCamera();
                        Drawable drawable2 = this.flipButton;
                        if (drawable2 instanceof AnimatedVectorDrawable) {
                            ((AnimatedVectorDrawable) drawable2).start();
                        }
                    }
                    if (!this.recordTouch) {
                        return true;
                    }
                } else {
                    i++;
                }
            }
        }
        RectF rectF2 = AndroidUtilities.rectTmp;
        rectF2.set(this.roundButton.getX(), this.roundButton.getY(), this.roundButton.getX() + this.roundButton.getMeasuredWidth(), this.roundButton.getY() + this.roundButton.getMeasuredHeight());
        if (this.recordTouch || (!this.hasRoundVideo && !this.keyboardShown && rectF2.contains(motionEvent.getX(), motionEvent.getY()))) {
            return roundButtonTouchEvent(motionEvent);
        }
        if (this.recording && this.locked && this.cancelBounds.contains(motionEvent.getX(), motionEvent.getY())) {
            releaseRecord(false, true);
            this.recordTouch = false;
            return true;
        }
        if (this.recording && (this.lockBounds.contains(motionEvent.getX(), motionEvent.getY()) || getBounds().contains(motionEvent.getX(), motionEvent.getY()))) {
            releaseRecord(false, false);
            this.recordTouch = false;
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        setCollapsed(false, Integer.MIN_VALUE);
        this.roundButton.setVisibility(0);
        this.periodButton.setVisibility(0);
    }

    private boolean roundButtonTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (stopRecording()) {
                return true;
            }
            this.recordTouch = true;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (!canRecord()) {
                return true;
            }
            AndroidUtilities.cancelRunOnUIThread(this.doneCancel);
            this.fromX = motionEvent.getX();
            this.fromY = motionEvent.getY();
            this.amplitude = 0.0f;
            this.slideProgress = 0.0f;
            this.cancelT.set(0.0f, true);
            this.cancel2T.set(0.0f, true);
            this.cancelling = false;
            this.stopping = false;
            this.locked = false;
            this.recordPaint.reset();
            this.recording = true;
            this.startTime = System.currentTimeMillis();
            setCollapsed(true, Integer.MAX_VALUE);
            invalidateDrawOver2();
            RoundVideoRecorder roundVideoRecorder = new RoundVideoRecorder(getContext()) { // from class: org.telegram.ui.Stories.recorder.CaptionStory.1
                @Override // org.telegram.p029ui.Stories.recorder.RoundVideoRecorder
                protected void receivedAmplitude(double d) {
                    CaptionStory.this.setAmplitude(d);
                }

                @Override // org.telegram.p029ui.Stories.recorder.RoundVideoRecorder
                public void stop() {
                    super.stop();
                    if (CaptionStory.this.recording) {
                        CaptionStory.this.releaseRecord(true, false);
                    }
                }
            };
            this.currentRecorder = roundVideoRecorder;
            putRecorder(roundVideoRecorder);
            return true;
        }
        if (motionEvent.getAction() == 2) {
            if (!this.cancelling) {
                this.slideProgress = Utilities.clamp((this.fromX - motionEvent.getX()) / (getWidth() * 0.35f), 1.0f, 0.0f);
                float fClamp = Utilities.clamp((this.fromY - motionEvent.getY()) / (getWidth() * 0.3f), 1.0f, 0.0f);
                this.lockProgress = fClamp;
                boolean z = this.locked;
                if (!z && !this.cancelling && this.slideProgress >= 1.0f) {
                    this.cancelling = true;
                    this.recording = false;
                    this.roundButton.setVisibility(4);
                    this.periodButton.setVisibility(4);
                    this.recordPaint.playDeleteAnimation();
                    RoundVideoRecorder roundVideoRecorder2 = this.currentRecorder;
                    if (roundVideoRecorder2 != null) {
                        roundVideoRecorder2.cancel();
                    }
                    AndroidUtilities.runOnUIThread(this.doneCancel, 800L);
                } else if (!z && !this.cancelling && fClamp >= 1.0f && this.slideProgress < 0.4f) {
                    this.locked = true;
                    try {
                        performHapticFeedback(3, 1);
                    } catch (Exception unused) {
                    }
                }
                invalidate();
                invalidateDrawOver2();
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (!this.cancelling && !this.locked) {
                releaseRecord(false, false);
            }
            this.recordTouch = false;
        }
        return this.recordTouch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseRecord(boolean z, boolean z2) {
        AndroidUtilities.cancelRunOnUIThread(this.doneCancel);
        this.stopping = true;
        this.recording = false;
        setCollapsed(false, (int) ((getBounds().right - AndroidUtilities.m1124dp(20.0f)) - ((getWidth() * 0.35f) * this.slideProgress)));
        RoundVideoRecorder roundVideoRecorder = this.currentRecorder;
        if (roundVideoRecorder != null) {
            if (!z) {
                if (z2) {
                    roundVideoRecorder.cancel();
                } else {
                    roundVideoRecorder.stop();
                }
            }
            this.currentRecorder = null;
        }
        invalidateDrawOver2();
    }

    public boolean isRecording() {
        return this.recording;
    }

    public boolean stopRecording() {
        if (!this.recording) {
            return false;
        }
        this.recordTouch = false;
        releaseRecord(false, false);
        return true;
    }

    public void showRemoveRoundAlert() {
        TextView textView;
        if (this.hasRoundVideo && (textView = (TextView) new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.StoryRemoveRoundTitle)).setMessage(LocaleController.getString(C2888R.string.StoryRemoveRoundMessage)).setPositiveButton(LocaleController.getString(C2888R.string.Remove), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionStory$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showRemoveRoundAlert$7(alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).show().getButton(-1)) != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRemoveRoundAlert$7(AlertDialog alertDialog, int i) {
        removeRound();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.recordPaint.attach();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.recordPaint.detach();
    }

    private class RecordDot extends Drawable {
        private float alpha;
        boolean attachedToWindow;
        RLottieDrawable drawable;
        private boolean enterAnimation;
        private boolean isIncr;
        private long lastUpdateTime;
        private final View parent;
        boolean playing;
        private final Paint redDotPaint = new Paint(1);
        private float alpha2 = 1.0f;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void attach() {
            this.attachedToWindow = true;
            if (this.playing) {
                this.drawable.start();
            }
            this.drawable.setMasterParent(this.parent);
        }

        public void detach() {
            this.attachedToWindow = false;
            this.drawable.stop();
            this.drawable.setMasterParent(null);
        }

        public RecordDot(View view) {
            this.parent = view;
            int i = C2888R.raw.chat_audio_record_delete_3;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, _UrlKt.FRAGMENT_ENCODE_SET + i, AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), false, null);
            this.drawable = rLottieDrawable;
            rLottieDrawable.setInvalidateOnProgressSet(true);
            updateColors();
        }

        public void updateColors() {
            this.redDotPaint.setColor(-2406842);
            this.drawable.beginApplyLayerColors();
            this.drawable.setLayerColor("Cup Red.**", -2406842);
            this.drawable.setLayerColor("Box.**", -2406842);
            this.drawable.commitApplyLayerColors();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.playing) {
                this.drawable.setAlpha((int) (this.alpha * 255.0f * this.alpha2));
            }
            this.redDotPaint.setAlpha((int) (this.alpha * 255.0f * this.alpha2));
            long jCurrentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
            if (this.enterAnimation) {
                this.alpha = 1.0f;
            } else if (!this.isIncr && !this.playing) {
                float f = this.alpha - (jCurrentTimeMillis / 600.0f);
                this.alpha = f;
                if (f <= 0.0f) {
                    this.alpha = 0.0f;
                    this.isIncr = true;
                }
            } else {
                float f2 = this.alpha + (jCurrentTimeMillis / 600.0f);
                this.alpha = f2;
                if (f2 >= 1.0f) {
                    this.alpha = 1.0f;
                    this.isIncr = false;
                }
            }
            this.lastUpdateTime = System.currentTimeMillis();
            this.drawable.setBounds(getBounds());
            if (this.playing) {
                this.drawable.draw(canvas);
            }
            if (!this.playing || !this.drawable.hasBitmap()) {
                canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), AndroidUtilities.m1124dp(5.0f), this.redDotPaint);
            }
            CaptionStory.this.invalidate();
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha2 = i / 255.0f;
        }

        public void playDeleteAnimation() {
            this.playing = true;
            this.drawable.setProgress(0.0f);
            if (this.attachedToWindow) {
                this.drawable.start();
            }
        }

        public void reset() {
            this.playing = false;
            this.drawable.stop();
            this.drawable.setProgress(0.0f);
        }
    }
}
