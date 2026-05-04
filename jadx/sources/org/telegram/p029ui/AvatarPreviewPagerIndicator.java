package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.TextPaint;
import android.view.View;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.ProfileGalleryView;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AvatarPreviewPagerIndicator extends View implements ProfileGalleryView.Callback {
    private float alpha;
    private float[] alphas;
    private final ValueAnimator animator;
    private final float[] animatorValues;
    private final Paint backgroundPaint;
    private final Paint barPaint;
    private final GradientDrawable bottomOverlayGradient;
    private final Rect bottomOverlayRect;
    private float currentAnimationValue;
    private int currentLoadingAnimationDirection;
    private float currentLoadingAnimationProgress;
    private float currentProgress;
    private final RectF indicatorRect;
    private boolean isOverlaysVisible;
    int lastCurrentItem;
    private long lastTime;
    private int overlayCountVisible;
    Path path;
    private final float[] pressedOverlayAlpha;
    private final GradientDrawable[] pressedOverlayGradient;
    private final boolean[] pressedOverlayVisible;
    private int previousSelectedPotision;
    private float previousSelectedProgress;
    protected ProfileGalleryView profileGalleryView;
    private float progressToCounter;
    private final RectF rect;
    RectF rectF;
    private final Paint selectedBarPaint;
    private int selectedPosition;
    private final int statusBarHeight;
    TextPaint textPaint;
    String title;
    private final GradientDrawable topOverlayGradient;
    private final Rect topOverlayRect;

    @Override // org.telegram.ui.Components.ProfileGalleryView.Callback
    public void onPhotosLoaded() {
    }

    public AvatarPreviewPagerIndicator(Context context) {
        super(context);
        this.indicatorRect = new RectF();
        this.statusBarHeight = 0;
        this.overlayCountVisible = 1;
        this.topOverlayRect = new Rect();
        this.bottomOverlayRect = new Rect();
        this.rect = new RectF();
        this.animatorValues = new float[]{0.0f, 1.0f};
        this.path = new Path();
        this.rectF = new RectF();
        this.pressedOverlayGradient = new GradientDrawable[2];
        this.pressedOverlayVisible = new boolean[2];
        this.pressedOverlayAlpha = new float[2];
        this.alpha = 0.0f;
        this.alphas = null;
        this.previousSelectedPotision = -1;
        this.currentLoadingAnimationDirection = 1;
        this.lastCurrentItem = -1;
        Paint paint = new Paint(1);
        this.barPaint = paint;
        paint.setColor(1442840575);
        Paint paint2 = new Paint(1);
        this.selectedBarPaint = paint2;
        paint2.setColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{1107296256, 0});
        this.topOverlayGradient = gradientDrawable;
        gradientDrawable.setShape(0);
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{1107296256, 0});
        this.bottomOverlayGradient = gradientDrawable2;
        gradientDrawable2.setShape(0);
        int i = 0;
        while (i < 2) {
            this.pressedOverlayGradient[i] = new GradientDrawable(i == 0 ? GradientDrawable.Orientation.LEFT_RIGHT : GradientDrawable.Orientation.RIGHT_LEFT, new int[]{838860800, 0});
            this.pressedOverlayGradient[i].setShape(0);
            i++;
        }
        Paint paint3 = new Paint(1);
        this.backgroundPaint = paint3;
        paint3.setColor(-16777216);
        paint3.setAlpha(66);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.AvatarPreviewPagerIndicator$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$0(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.AvatarPreviewPagerIndicator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AvatarPreviewPagerIndicator.this.isOverlaysVisible) {
                    return;
                }
                AvatarPreviewPagerIndicator.this.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                AvatarPreviewPagerIndicator.this.setVisibility(0);
            }
        });
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setColor(-1);
        this.textPaint.setTypeface(Typeface.SANS_SERIF);
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setTextSize(AndroidUtilities.dpf2(15.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        float[] fArr = this.animatorValues;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        this.currentAnimationValue = animatedFraction;
        setAlphaValue(AndroidUtilities.lerp(fArr, animatedFraction), true);
    }

    public void saveCurrentPageProgress() {
        this.previousSelectedProgress = this.currentProgress;
        this.previousSelectedPotision = this.selectedPosition;
        this.currentLoadingAnimationProgress = 0.0f;
        this.currentLoadingAnimationDirection = 1;
    }

    public void setAlphaValue(float f, boolean z) {
        int i = (int) (255.0f * f);
        this.topOverlayGradient.setAlpha(i);
        this.bottomOverlayGradient.setAlpha(i);
        this.backgroundPaint.setAlpha((int) (66.0f * f));
        this.barPaint.setAlpha((int) (85.0f * f));
        this.selectedBarPaint.setAlpha(i);
        this.alpha = f;
        if (!z) {
            this.currentAnimationValue = f;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.path.reset();
        this.rectF.set(0.0f, 0.0f, getMeasuredHeight(), getMeasuredWidth());
        this.path.addRoundRect(this.rectF, new float[]{AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(13.0f), 0.0f, 0.0f, 0.0f, 0.0f}, Path.Direction.CCW);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
        this.topOverlayRect.set(0, 0, i, (int) (currentActionBarHeight * 0.5f));
        this.bottomOverlayRect.set(0, (int) (i2 - (AndroidUtilities.m1124dp(72.0f) * 0.5f)), i, i2);
        this.topOverlayGradient.setBounds(0, this.topOverlayRect.bottom, i, currentActionBarHeight + AndroidUtilities.m1124dp(16.0f));
        this.bottomOverlayGradient.setBounds(0, (i2 - AndroidUtilities.m1124dp(72.0f)) - AndroidUtilities.m1124dp(24.0f), i, this.bottomOverlayRect.top);
        int i5 = i / 5;
        this.pressedOverlayGradient[0].setBounds(0, 0, i5, i2);
        this.pressedOverlayGradient[1].setBounds(i - i5, 0, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0259  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int i;
        boolean z;
        int i2;
        float currentItemProgress;
        int i3 = 0;
        while (true) {
            f = 0.0f;
            if (i3 >= 2) {
                break;
            }
            float f4 = this.pressedOverlayAlpha[i3];
            if (f4 > 0.0f) {
                this.pressedOverlayGradient[i3].setAlpha((int) (f4 * 255.0f));
                this.pressedOverlayGradient[i3].draw(canvas);
            }
            i3++;
        }
        this.topOverlayGradient.draw(canvas);
        canvas.drawRect(this.topOverlayRect, this.backgroundPaint);
        int realCount = this.profileGalleryView.getRealCount();
        this.selectedPosition = this.profileGalleryView.getRealPosition();
        float[] fArr = this.alphas;
        if (fArr == null || fArr.length != realCount) {
            float[] fArr2 = new float[realCount];
            this.alphas = fArr2;
            Arrays.fill(fArr2, 0.0f);
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.lastTime;
        if (j < 0 || j > 20) {
            j = 17;
        }
        this.lastTime = jElapsedRealtime;
        float f5 = 8.0f;
        if (realCount <= 1 || realCount > 20) {
            f2 = 8.0f;
            f3 = 180.0f;
            i = 20;
            z = false;
        } else {
            int i4 = this.overlayCountVisible;
            if (i4 == 0) {
                this.alpha = 0.0f;
                this.overlayCountVisible = 3;
            } else if (i4 == 1) {
                this.alpha = 0.0f;
                this.overlayCountVisible = 2;
            }
            if (this.overlayCountVisible == 2) {
                this.barPaint.setAlpha((int) (this.alpha * 85.0f));
                this.selectedBarPaint.setAlpha((int) (this.alpha * 255.0f));
            }
            int measuredWidth = ((getMeasuredWidth() - AndroidUtilities.m1124dp(10.0f)) - AndroidUtilities.m1124dp((realCount - 1) * 2)) / realCount;
            int iM1124dp = AndroidUtilities.m1124dp(8.0f);
            int i5 = 0;
            z = false;
            while (i5 < realCount) {
                int iM1124dp2 = AndroidUtilities.m1124dp((i5 * 2) + 5) + (measuredWidth * i5);
                float f6 = f5;
                if (i5 == this.previousSelectedPotision && Math.abs(this.previousSelectedProgress - 1.0f) > 1.0E-4f) {
                    currentItemProgress = this.previousSelectedProgress;
                    canvas.save();
                    float f7 = iM1124dp2;
                    float f8 = iM1124dp;
                    float f9 = iM1124dp2 + measuredWidth;
                    canvas.clipRect((measuredWidth * currentItemProgress) + f7, f8, f9, iM1124dp + AndroidUtilities.m1124dp(2.0f));
                    this.rect.set(f7, f8, f9, AndroidUtilities.m1124dp(2.0f) + iM1124dp);
                    this.barPaint.setAlpha((int) (this.alpha * 85.0f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), this.barPaint);
                    canvas.restore();
                } else {
                    float f10 = f;
                    i2 = 85;
                    if (i5 == this.selectedPosition) {
                        if (this.profileGalleryView.isCurrentItemVideo()) {
                            currentItemProgress = this.profileGalleryView.getCurrentItemProgress();
                            this.currentProgress = currentItemProgress;
                            if ((currentItemProgress <= f10 && this.profileGalleryView.isLoadingCurrentVideo()) || this.currentLoadingAnimationProgress > f10) {
                                float f11 = this.currentLoadingAnimationProgress;
                                int i6 = this.currentLoadingAnimationDirection;
                                float f12 = f11 + ((((long) i6) * j) / 500.0f);
                                this.currentLoadingAnimationProgress = f12;
                                if (f12 > 1.0f) {
                                    this.currentLoadingAnimationProgress = 1.0f;
                                    this.currentLoadingAnimationDirection = i6 * (-1);
                                } else if (f12 <= f10) {
                                    this.currentLoadingAnimationProgress = f10;
                                    this.currentLoadingAnimationDirection = i6 * (-1);
                                }
                            }
                            this.rect.set(iM1124dp2, iM1124dp, iM1124dp2 + measuredWidth, AndroidUtilities.m1124dp(2.0f) + iM1124dp);
                            this.barPaint.setAlpha((int) (((this.currentLoadingAnimationProgress * 48.0f) + 85.0f) * this.alpha));
                            canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), this.barPaint);
                        } else {
                            this.currentProgress = 1.0f;
                        }
                    }
                    currentItemProgress = 1.0f;
                    float f13 = iM1124dp2;
                    this.rect.set(f13, iM1124dp, (measuredWidth * currentItemProgress) + f13, AndroidUtilities.m1124dp(2.0f) + iM1124dp);
                    if (i5 == this.selectedPosition) {
                        if (this.overlayCountVisible == 3) {
                            this.barPaint.setAlpha((int) (AndroidUtilities.lerp(i2, 255, CubicBezierInterpolator.EASE_BOTH.getInterpolation(this.alphas[i5])) * this.alpha));
                        }
                    } else {
                        this.alphas[i5] = 0.75f;
                    }
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), i5 != this.selectedPosition ? this.selectedBarPaint : this.barPaint);
                    i5++;
                    f5 = f6;
                    f = 0.0f;
                }
                i2 = 80;
                z = true;
                float f132 = iM1124dp2;
                this.rect.set(f132, iM1124dp, (measuredWidth * currentItemProgress) + f132, AndroidUtilities.m1124dp(2.0f) + iM1124dp);
                if (i5 == this.selectedPosition) {
                }
                canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), i5 != this.selectedPosition ? this.selectedBarPaint : this.barPaint);
                i5++;
                f5 = f6;
                f = 0.0f;
            }
            f2 = f5;
            f3 = 180.0f;
            int i7 = this.overlayCountVisible;
            if (i7 == 2) {
                float f14 = this.alpha;
                if (f14 < 1.0f) {
                    float f15 = f14 + (j / 180.0f);
                    this.alpha = f15;
                    if (f15 > 1.0f) {
                        this.alpha = 1.0f;
                    }
                    i = 20;
                    z = true;
                } else {
                    this.overlayCountVisible = 3;
                }
            } else if (i7 == 3) {
                int i8 = 0;
                while (true) {
                    float[] fArr3 = this.alphas;
                    if (i8 >= fArr3.length) {
                        break;
                    }
                    if (i8 != this.selectedPosition) {
                        float f16 = fArr3[i8];
                        if (f16 > 0.0f) {
                            float f17 = f16 - (j / 500.0f);
                            fArr3[i8] = f17;
                            if (f17 <= 0.0f) {
                                fArr3[i8] = 0.0f;
                                if (i8 == this.previousSelectedPotision) {
                                    this.previousSelectedPotision = -1;
                                }
                            }
                            z = true;
                        } else if (i8 == this.previousSelectedPotision) {
                            this.previousSelectedPotision = -1;
                        }
                    }
                    i8++;
                }
            }
            i = 20;
        }
        if (realCount > i || this.progressToCounter != 0.0f) {
            float fMeasureText = this.textPaint.measureText(getCurrentTitle());
            this.indicatorRect.right = getMeasuredWidth() - AndroidUtilities.m1124dp(f2);
            RectF rectF = this.indicatorRect;
            rectF.left = rectF.right - (fMeasureText + AndroidUtilities.dpf2(16.0f));
            this.indicatorRect.top = AndroidUtilities.m1124dp(f2);
            RectF rectF2 = this.indicatorRect;
            rectF2.bottom = rectF2.top + AndroidUtilities.m1124dp(26.0f);
            float fDpf2 = AndroidUtilities.dpf2(12.0f);
            canvas.save();
            boolean z2 = realCount > 20;
            if (z2) {
                float f18 = this.progressToCounter;
                if (f18 != 1.0f) {
                    this.progressToCounter = f18 + (j / 150.0f);
                } else if (!z2) {
                    float f19 = this.progressToCounter;
                    if (f19 != 0.0f) {
                        this.progressToCounter = f19 - (j / 150.0f);
                    }
                }
                float f20 = this.progressToCounter;
                if (f20 >= 1.0f) {
                    this.progressToCounter = 1.0f;
                } else if (f20 <= 0.0f) {
                    this.progressToCounter = 0.0f;
                } else {
                    invalidate();
                }
                float f21 = this.progressToCounter;
                canvas.scale(f21, f21, this.indicatorRect.centerX(), this.indicatorRect.centerY());
                canvas.drawRoundRect(this.indicatorRect, fDpf2, fDpf2, this.backgroundPaint);
                canvas.drawText(getCurrentTitle(), this.indicatorRect.centerX(), this.indicatorRect.top + AndroidUtilities.dpf2(18.5f), this.textPaint);
                canvas.restore();
            }
        }
        for (int i9 = 0; i9 < 2; i9++) {
            if (this.pressedOverlayVisible[i9]) {
                float[] fArr4 = this.pressedOverlayAlpha;
                float f22 = fArr4[i9];
                if (f22 < 1.0f) {
                    float f23 = f22 + (j / f3);
                    fArr4[i9] = f23;
                    if (f23 > 1.0f) {
                        fArr4[i9] = 1.0f;
                    }
                    z = true;
                }
            } else {
                float[] fArr5 = this.pressedOverlayAlpha;
                float f24 = fArr5[i9];
                if (f24 > 0.0f) {
                    float f25 = f24 - (j / f3);
                    fArr5[i9] = f25;
                    if (f25 < 0.0f) {
                        fArr5[i9] = 0.0f;
                    }
                    z = true;
                }
            }
        }
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    private String getCurrentTitle() {
        if (this.lastCurrentItem != this.profileGalleryView.getCurrentItem()) {
            this.title = this.profileGalleryView.getAdapter().getPageTitle(this.profileGalleryView.getCurrentItem()).toString();
            this.lastCurrentItem = this.profileGalleryView.getCurrentItem();
        }
        return this.title;
    }

    @Override // org.telegram.ui.Components.ProfileGalleryView.Callback
    public void onDown(boolean z) {
        this.pressedOverlayVisible[!z ? 1 : 0] = true;
        postInvalidateOnAnimation();
    }

    @Override // org.telegram.ui.Components.ProfileGalleryView.Callback
    public void onRelease() {
        Arrays.fill(this.pressedOverlayVisible, false);
        postInvalidateOnAnimation();
    }

    @Override // org.telegram.ui.Components.ProfileGalleryView.Callback
    public void onVideoSet() {
        invalidate();
    }

    public void setProfileGalleryView(ProfileGalleryView profileGalleryView) {
        this.profileGalleryView = profileGalleryView;
    }

    public ProfileGalleryView getProfileGalleryView() {
        return this.profileGalleryView;
    }
}
