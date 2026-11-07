package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import kotlin.jvm.internal.LongCompanionObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Storage.CacheModel;

/* JADX INFO: loaded from: classes7.dex */
public abstract class StorageDiagramView extends View implements NotificationCenter.NotificationCenterDelegate {
    private float[] animateToPercentage;
    private AvatarDrawable avatarDrawable;
    private ImageReceiver avatarImageReceiver;
    ValueAnimator backAnimator;
    CacheModel cacheModel;
    private ClearViewData[] data;
    private Long dialogId;
    CharSequence dialogText;
    StaticLayout dialogTextLayout;
    TextPaint dialogTextPaint;
    private float[] drawingPercentage;
    int enabledCount;
    float pressedProgress;
    private RectF rectF;
    private float singleProgress;
    private float[] startFromPercentage;
    AnimatedTextView.AnimatedTextDrawable text1;
    AnimatedTextView.AnimatedTextDrawable text2;
    ValueAnimator valueAnimator;

    public abstract void onAvatarClick();

    public StorageDiagramView(Context context) {
        super(context);
        this.rectF = new RectF();
        this.singleProgress = 0.0f;
        this.text1 = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.text2 = new AnimatedTextView.AnimatedTextDrawable(false, true, false);
        this.text1.setCallback(this);
        this.text2.setCallback(this);
    }

    public void setCacheModel(CacheModel cacheModel) {
        this.cacheModel = cacheModel;
    }

    public StorageDiagramView(Context context, long j) {
        this(context);
        this.dialogId = Long.valueOf(j);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        this.avatarDrawable = avatarDrawable;
        avatarDrawable.setScaleSize(1.5f);
        ImageReceiver imageReceiver = new ImageReceiver();
        this.avatarImageReceiver = imageReceiver;
        imageReceiver.setParentView(this);
        if (j == LongCompanionObject.MAX_VALUE) {
            this.dialogText = LocaleController.getString(C2665R.string.CacheOtherChats);
            this.avatarDrawable.setAvatarType(14);
            this.avatarImageReceiver.setForUserOrChat(null, this.avatarDrawable);
        } else {
            String dialogPhotoTitle = DialogObject.setDialogPhotoTitle(this.avatarImageReceiver, this.avatarDrawable, MessagesController.getInstance(UserConfig.selectedAccount).getUserOrChat(j));
            this.dialogText = dialogPhotoTitle;
            this.dialogText = Emoji.replaceEmoji(dialogPhotoTitle, null, false);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size;
        if (this.dialogId != null) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(166.0f), TLObject.FLAG_30));
            size = (View.MeasureSpec.getSize(i) - AndroidUtilities.dp(110.0f)) / 2;
            this.rectF.set(AndroidUtilities.dp(3.0f) + size, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(107.0f) + size, AndroidUtilities.dp(107.0f));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(110.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(110.0f), TLObject.FLAG_30));
            this.rectF.set(AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(107.0f), AndroidUtilities.dp(107.0f));
            size = 0;
        }
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.text1;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        animatedTextDrawable.setAnimationProperties(0.18f, 0L, 300L, cubicBezierInterpolator);
        this.text1.setTextSize(AndroidUtilities.dp(24.0f));
        this.text1.setTypeface(AndroidUtilities.bold());
        this.text2.setAnimationProperties(0.18f, 0L, 300L, cubicBezierInterpolator);
        Long l = this.dialogId;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.text2;
        if (l != null) {
            animatedTextDrawable2.setTextSize(AndroidUtilities.dp(16.0f));
            this.text1.setGravity(5);
            this.text2.setGravity(3);
        } else {
            animatedTextDrawable2.setTextSize(AndroidUtilities.dp(13.0f));
            int textSize = (int) this.text1.getTextSize();
            int textSize2 = (int) this.text2.getTextSize();
            int iDp = ((AndroidUtilities.dp(110.0f) - textSize) - textSize2) / 2;
            int i3 = textSize + iDp;
            this.text1.setBounds(0, iDp, getMeasuredWidth(), i3);
            this.text2.setBounds(0, AndroidUtilities.dp(2.0f) + i3, getMeasuredWidth(), i3 + textSize2 + AndroidUtilities.dp(2.0f));
            this.text1.setGravity(17);
            this.text2.setGravity(17);
        }
        if (this.dialogText != null) {
            if (this.dialogTextPaint == null) {
                this.dialogTextPaint = new TextPaint(1);
            }
            this.dialogTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
            int size2 = View.MeasureSpec.getSize(i) - AndroidUtilities.dp(60.0f);
            this.dialogTextLayout = StaticLayoutEx.createStaticLayout2(this.dialogText, this.dialogTextPaint, size2, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, size2, 1);
        }
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.setImageCoords(size + AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(90.0f), AndroidUtilities.dp(90.0f));
            this.avatarImageReceiver.setRoundRadius(AndroidUtilities.dp(45.0f));
        }
        updateDescription();
    }

    public void setData(CacheModel cacheModel, ClearViewData[] clearViewDataArr) {
        this.data = clearViewDataArr;
        this.cacheModel = cacheModel;
        invalidate();
        this.drawingPercentage = new float[clearViewDataArr.length];
        this.animateToPercentage = new float[clearViewDataArr.length];
        this.startFromPercentage = new float[clearViewDataArr.length];
        update(false);
        if (this.enabledCount > 1) {
            this.singleProgress = 0.0f;
        } else {
            this.singleProgress = 1.0f;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0154  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        if (this.data == null) {
            return;
        }
        if (this.avatarImageReceiver != null) {
            canvas.save();
            if (isPressed()) {
                float f = this.pressedProgress;
                if (f != 1.0f) {
                    float fMin = f + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 100.0f);
                    this.pressedProgress = fMin;
                    this.pressedProgress = Utilities.clamp(fMin, 1.0f, 0.0f);
                    invalidate();
                }
            }
            float f2 = ((1.0f - this.pressedProgress) * 0.15f) + 0.85f;
            canvas.scale(f2, f2, this.avatarImageReceiver.getCenterX(), this.avatarImageReceiver.getCenterY());
        }
        int i3 = this.enabledCount;
        float f3 = this.singleProgress;
        if (i3 > 1) {
            if (f3 > 0.0f) {
                float f4 = (float) (((double) f3) - 0.04d);
                this.singleProgress = f4;
                if (f4 < 0.0f) {
                    this.singleProgress = 0.0f;
                }
            }
        } else if (f3 < 1.0f) {
            float f5 = (float) (((double) f3) + 0.04d);
            this.singleProgress = f5;
            if (f5 > 1.0f) {
                this.singleProgress = 1.0f;
            }
        }
        float f6 = 0.0f;
        int i4 = 0;
        while (true) {
            ClearViewData[] clearViewDataArr = this.data;
            i = 255;
            if (i4 >= clearViewDataArr.length) {
                break;
            }
            ClearViewData clearViewData = clearViewDataArr[i4];
            if (clearViewData != null) {
                float f7 = this.drawingPercentage[i4];
                if (f7 != 0.0f) {
                    if (clearViewData.firstDraw) {
                        float f8 = ((-360.0f) * f7) + ((1.0f - this.singleProgress) * 10.0f);
                        float f9 = f8 > 0.0f ? 0.0f : f8;
                        clearViewData.paint.setColor(Theme.getColor(clearViewData.colorKey));
                        this.data[i4].paint.setAlpha(255);
                        double dWidth = this.rectF.width() / 2.0f;
                        if (Math.abs((float) (((3.141592653589793d * dWidth) / 180.0d) * ((double) f9))) <= 1.0f) {
                            double d = (-90.0f) - (360.0f * f6);
                            canvas.drawPoint(this.rectF.centerX() + ((float) (Math.cos(Math.toRadians(d)) * dWidth)), this.rectF.centerY() + ((float) (dWidth * Math.sin(Math.toRadians(d)))), this.data[i4].paint);
                        } else {
                            this.data[i4].paint.setStyle(Paint.Style.STROKE);
                            canvas.drawArc(this.rectF, (-90.0f) - (360.0f * f6), f9, false, this.data[i4].paint);
                        }
                    }
                    f6 += f7;
                }
            }
            i4++;
        }
        float f10 = 0.0f;
        int i5 = 0;
        while (true) {
            ClearViewData[] clearViewDataArr2 = this.data;
            if (i5 >= clearViewDataArr2.length) {
                break;
            }
            ClearViewData clearViewData2 = clearViewDataArr2[i5];
            if (clearViewData2 != null) {
                float f11 = this.drawingPercentage[i5];
                if (f11 == 0.0f) {
                    i2 = i;
                } else {
                    if (clearViewData2.firstDraw) {
                        i2 = i;
                    } else {
                        float f12 = (f11 * (-360.0f)) + ((1.0f - this.singleProgress) * 10.0f);
                        if (f12 > 0.0f) {
                            f12 = 0.0f;
                        }
                        clearViewData2.paint.setColor(Theme.getColor(clearViewData2.colorKey));
                        this.data[i5].paint.setAlpha(i);
                        double dWidth2 = this.rectF.width() / 2.0f;
                        if (Math.abs((float) (((double) f12) * ((dWidth2 * 3.141592653589793d) / 180.0d))) <= 1.0f) {
                            double d2 = (-90.0f) - (f10 * 360.0f);
                            canvas.drawPoint(this.rectF.centerX() + ((float) (dWidth2 * Math.cos(Math.toRadians(d2)))), this.rectF.centerY() + ((float) (Math.sin(Math.toRadians(d2)) * dWidth2)), this.data[i5].paint);
                            i2 = 255;
                        } else {
                            this.data[i5].paint.setStyle(Paint.Style.STROKE);
                            i2 = 255;
                            canvas.drawArc(this.rectF, (-90.0f) - (f10 * 360.0f), f12, false, this.data[i5].paint);
                        }
                    }
                    f10 += f11;
                }
            }
            i5++;
            i = i2;
        }
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.draw(canvas);
            canvas.restore();
        }
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.text1;
        if (animatedTextDrawable != null) {
            int i6 = Theme.key_dialogTextBlack;
            animatedTextDrawable.setTextColor(Theme.getColor(i6));
            this.text2.setTextColor(Theme.getColor(i6));
            if (this.dialogId != null) {
                float currentWidth = this.text1.getCurrentWidth() + AndroidUtilities.dp(4.0f) + this.text2.getCurrentWidth();
                float width = (getWidth() - currentWidth) / 2.0f;
                this.text1.setBounds(0, AndroidUtilities.dp(115.0f), (int) (this.text1.getCurrentWidth() + width), AndroidUtilities.dp(145.0f));
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.text2;
                animatedTextDrawable2.setBounds((int) ((width + currentWidth) - animatedTextDrawable2.getCurrentWidth()), AndroidUtilities.dp(118.0f), getWidth(), AndroidUtilities.dp(148.0f));
            }
            this.text1.draw(canvas);
            this.text2.draw(canvas);
        }
        if (this.dialogTextLayout != null) {
            canvas.save();
            canvas.translate(AndroidUtilities.dp(30.0f), AndroidUtilities.dp(148.0f) - ((this.dialogTextLayout.getHeight() - AndroidUtilities.dp(13.0f)) / 2.0f));
            this.dialogTextPaint.setColor(Theme.getColor(Theme.key_dialogTextBlack));
            this.dialogTextLayout.draw(canvas);
            canvas.restore();
        }
    }

    public static class ClearViewData {
        public boolean clear;
        public int colorKey;
        boolean firstDraw;
        Paint paint;
        private final StorageDiagramView parentView;
        public long size;

        public ClearViewData(StorageDiagramView storageDiagramView) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.clear = true;
            this.firstDraw = false;
            this.parentView = storageDiagramView;
            paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(AndroidUtilities.dp(5.0f));
            this.paint.setStrokeCap(Paint.Cap.ROUND);
            this.paint.setStrokeJoin(Paint.Join.ROUND);
        }

        public void setClear(boolean z) {
            if (this.clear != z) {
                this.clear = z;
                this.firstDraw = true;
            }
        }
    }

    public void update(boolean z) {
        boolean z2;
        final ClearViewData[] clearViewDataArr = this.data;
        if (clearViewDataArr == null) {
            return;
        }
        long j = 0;
        for (int i = 0; i < clearViewDataArr.length; i++) {
            long selectedFilesSize = this.cacheModel.getSelectedFilesSize(i);
            ClearViewData clearViewData = clearViewDataArr[i];
            if (clearViewData != null && (clearViewData.clear || selectedFilesSize > 0)) {
                if (selectedFilesSize <= 0) {
                    selectedFilesSize = clearViewData.size;
                }
                j += selectedFilesSize;
            }
        }
        this.enabledCount = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i2 = 0; i2 < clearViewDataArr.length; i2++) {
            long selectedFilesSize2 = this.cacheModel.getSelectedFilesSize(i2);
            ClearViewData clearViewData2 = clearViewDataArr[i2];
            if (clearViewData2 != null && (clearViewData2.clear || selectedFilesSize2 > 0)) {
                this.enabledCount++;
            }
            if (clearViewData2 == null || (!(z2 = clearViewData2.clear) && selectedFilesSize2 <= 0)) {
                this.animateToPercentage[i2] = 0.0f;
            } else {
                if (selectedFilesSize2 <= 0) {
                    selectedFilesSize2 = clearViewData2.size;
                }
                float f3 = selectedFilesSize2 / j;
                if (f3 < 0.02777f) {
                    f3 = 0.02777f;
                }
                f += f3;
                if (f3 > f2 && (z2 || selectedFilesSize2 > 0)) {
                    f2 = f3;
                }
                this.animateToPercentage[i2] = f3;
            }
        }
        if (f > 1.0f) {
            float f4 = 1.0f / f;
            for (int i3 = 0; i3 < clearViewDataArr.length; i3++) {
                if (clearViewDataArr[i3] != null) {
                    float[] fArr = this.animateToPercentage;
                    fArr[i3] = fArr[i3] * f4;
                }
            }
        }
        if (!z) {
            System.arraycopy(this.animateToPercentage, 0, this.drawingPercentage, 0, clearViewDataArr.length);
            return;
        }
        System.arraycopy(this.drawingPercentage, 0, this.startFromPercentage, 0, clearViewDataArr.length);
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.valueAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageDiagramView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$update$0(clearViewDataArr, valueAnimator2);
            }
        });
        this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StorageDiagramView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i4 = 0;
                while (true) {
                    ClearViewData[] clearViewDataArr2 = clearViewDataArr;
                    if (i4 >= clearViewDataArr2.length) {
                        return;
                    }
                    ClearViewData clearViewData3 = clearViewDataArr2[i4];
                    if (clearViewData3 != null) {
                        clearViewData3.firstDraw = false;
                    }
                    i4++;
                }
            }
        });
        this.valueAnimator.setDuration(450L);
        this.valueAnimator.setInterpolator(new FastOutSlowInInterpolator());
        this.valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$0(ClearViewData[] clearViewDataArr, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < clearViewDataArr.length; i++) {
            this.drawingPercentage[i] = (this.startFromPercentage[i] * (1.0f - fFloatValue)) + (this.animateToPercentage[i] * fFloatValue);
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Long l;
        boolean z = this.avatarImageReceiver != null && (l = this.dialogId) != null && l.longValue() != LongCompanionObject.MAX_VALUE && motionEvent.getX() > this.avatarImageReceiver.getImageX() && motionEvent.getX() <= this.avatarImageReceiver.getImageX2() && motionEvent.getY() > this.avatarImageReceiver.getImageY() && motionEvent.getY() <= this.avatarImageReceiver.getImageY2();
        if (motionEvent.getAction() == 0) {
            if (z) {
                setPressed(true);
                return true;
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (z && motionEvent.getAction() != 3) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.StorageDiagramView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.onAvatarClick();
                    }
                }, 80L);
            }
            setPressed(false);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        ValueAnimator valueAnimator;
        if (isPressed() != z) {
            super.setPressed(z);
            invalidate();
            if (z && (valueAnimator = this.backAnimator) != null) {
                valueAnimator.removeAllListeners();
                this.backAnimator.cancel();
            }
            if (z) {
                return;
            }
            float f = this.pressedProgress;
            if (f != 0.0f) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 0.0f);
                this.backAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageDiagramView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setPressed$1(valueAnimator2);
                    }
                });
                this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StorageDiagramView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        StorageDiagramView.this.backAnimator = null;
                    }
                });
                this.backAnimator.setInterpolator(new OvershootInterpolator(2.0f));
                this.backAnimator.setDuration(350L);
                this.backAnimator.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setPressed$1(ValueAnimator valueAnimator) {
        this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public long updateDescription() {
        long jCalculateSize = calculateSize();
        String[] strArrSplit = AndroidUtilities.formatFileSize(jCalculateSize).split(" ");
        if (strArrSplit.length > 1) {
            this.text1.setText(jCalculateSize == 0 ? " " : strArrSplit[0], true, false);
            this.text2.setText(jCalculateSize != 0 ? strArrSplit[1] : " ", true, false);
        }
        return jCalculateSize;
    }

    public long calculateSize() {
        if (this.data == null) {
            return 0L;
        }
        long j = 0;
        for (int i = 0; i < this.data.length; i++) {
            long selectedFilesSize = this.cacheModel.getSelectedFilesSize(i);
            ClearViewData clearViewData = this.data[i];
            if (clearViewData != null && (clearViewData.clear || selectedFilesSize > 0)) {
                if (selectedFilesSize <= 0) {
                    selectedFilesSize = clearViewData.size;
                }
                j += selectedFilesSize;
            }
        }
        return j;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.onAttachedToWindow();
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ImageReceiver imageReceiver = this.avatarImageReceiver;
        if (imageReceiver != null) {
            imageReceiver.onDetachedFromWindow();
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        }
    }
}
