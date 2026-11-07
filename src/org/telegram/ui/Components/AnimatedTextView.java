package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.IntStream;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.Opcodes;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.AnimatedEmojiSpan;

/* JADX INFO: loaded from: classes3.dex */
public class AnimatedTextView extends View {
    public boolean adaptWidth;
    private Drawable backgroundDrawable;
    private final AnimatedTextDrawable drawable;
    private boolean first;
    private boolean hideBackgroundIfEmpty;
    private int lastMaxWidth;
    private int maxWidth;
    private boolean toSetMoveDown;
    private CharSequence toSetText;

    public static class AnimatedTextDrawable extends Drawable {
        private static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
        private boolean allowCancel;
        private int alpha;
        private long animateDelay;
        private long animateDuration;
        private TimeInterpolator animateInterpolator;
        private float animateWave;
        private ValueAnimator animator;
        private final Rect bounds;
        public boolean centerY;
        private ValueAnimator colorAnimator;
        private float currentBaseline;
        private float currentBelowBaseline;
        private float currentHeight;
        private Part[] currentParts;
        private CharSequence currentText;
        private float currentWidth;
        private boolean ellipsizeByGradient;
        private LinearGradient ellipsizeGradient;
        private Matrix ellipsizeGradientMatrix;
        private Paint ellipsizePaint;
        private int emojiCacheType;
        private int emojiColor;
        private ColorFilter emojiColorFilter;
        private boolean enforceByLetter;
        private int gravity;
        public boolean ignoreRTL;
        private boolean includeFontPadding;
        private boolean isRTL;
        private float moveAmplitude;
        private boolean moveDown;
        private float oldBaseline;
        private float oldBelowBaseline;
        private float oldHeight;
        private Part[] oldParts;
        private CharSequence oldText;
        private float oldWidth;
        private Runnable onAnimationFinishListener;
        private int overrideFullWidth;
        private boolean preserveIndex;
        private float rawT;
        private float rightPadding;
        private float scaleAmplitude;
        private int shadowColor;
        private float shadowDx;
        private float shadowDy;
        private float shadowRadius;
        private boolean shadowed;
        private boolean splitByWords;
        private boolean startEndDiff;
        private boolean startFromEnd;

        /* JADX INFO: renamed from: t */
        private float f1087t;
        private final TextPaint textPaint;
        private CharSequence toSetText;
        private boolean toSetTextMoveDown;
        public boolean updateAll;
        private Runnable widthUpdatedListener;

        public interface RegionCallback {
            void run(CharSequence charSequence, int i, int i2);
        }

        @Override // android.graphics.drawable.Drawable
        @Deprecated
        public int getOpacity() {
            return -2;
        }

        public void setSplitByWords(boolean z) {
            this.splitByWords = z;
        }

        public class Part {
            float baseline;
            float belowBaseline;
            AnimatedEmojiSpan.EmojiGroupedSpans emoji;
            StaticLayout layout;
            float left;
            float offset;
            int toOppositeIndex;
            float width;

            public Part(StaticLayout staticLayout, float f, int i) {
                this.layout = staticLayout;
                this.toOppositeIndex = i;
                layout(f);
                if (AnimatedTextDrawable.this.getCallback() instanceof View) {
                    this.emoji = AnimatedEmojiSpan.update(AnimatedTextDrawable.this.emojiCacheType, (View) AnimatedTextDrawable.this.getCallback(), this.emoji, staticLayout);
                }
            }

            public void detach() {
                if (AnimatedTextDrawable.this.getCallback() instanceof View) {
                    AnimatedEmojiSpan.release((View) AnimatedTextDrawable.this.getCallback(), this.emoji);
                }
            }

            public void layout(float f) {
                this.offset = f;
                StaticLayout staticLayout = this.layout;
                this.left = (staticLayout == null || staticLayout.getLineCount() <= 0) ? 0.0f : this.layout.getLineLeft(0);
                StaticLayout staticLayout2 = this.layout;
                this.width = (staticLayout2 == null || staticLayout2.getLineCount() <= 0) ? 0.0f : this.layout.getLineWidth(0);
                StaticLayout staticLayout3 = this.layout;
                this.baseline = (staticLayout3 == null || staticLayout3.getLineCount() <= 0) ? 0.0f : this.layout.getLineBaseline(0);
                this.belowBaseline = this.layout != null ? r3.getHeight() - this.baseline : 0.0f;
            }

            public void draw(Canvas canvas, float f) {
                int iMax = Math.max(0, Math.min(255, (int) (AnimatedTextDrawable.this.alpha * f)));
                if (iMax == 0) {
                    return;
                }
                AnimatedTextDrawable.this.textPaint.setAlpha(255);
                if (AnimatedTextDrawable.this.shadowed) {
                    AnimatedTextDrawable.this.textPaint.setShadowLayer(AnimatedTextDrawable.this.shadowRadius, AnimatedTextDrawable.this.shadowDx, AnimatedTextDrawable.this.shadowDy, AnimatedTextDrawable.this.shadowColor);
                }
                int iSaveLayerAlpha = iMax < 255 ? canvas.saveLayerAlpha(null, iMax, 31) : -1;
                this.layout.draw(canvas);
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.layout, this.emoji, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, AnimatedTextDrawable.this.emojiColorFilter);
                if (iSaveLayerAlpha != -1) {
                    canvas.restoreToCount(iSaveLayerAlpha);
                }
            }
        }

        private void resetCurrentHeight() {
            this.currentBelowBaseline = 0.0f;
            this.currentBaseline = 0.0f;
            this.currentHeight = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resetOldHeight() {
            this.oldBelowBaseline = 0.0f;
            this.oldBaseline = 0.0f;
            this.oldHeight = 0.0f;
        }

        private void includeCurrentPartHeight(Part part) {
            this.currentBaseline = Math.max(this.currentBaseline, part.baseline);
            float fMax = Math.max(this.currentBelowBaseline, part.belowBaseline);
            this.currentBelowBaseline = fMax;
            this.currentHeight = this.currentBaseline + fMax;
        }

        private void includeOldPartHeight(Part part) {
            this.oldBaseline = Math.max(this.oldBaseline, part.baseline);
            float fMax = Math.max(this.oldBelowBaseline, part.belowBaseline);
            this.oldBelowBaseline = fMax;
            this.oldHeight = this.oldBaseline + fMax;
        }

        public void setEmojiCacheType(int i) {
            this.emojiCacheType = i;
        }

        public void setHacks(boolean z, boolean z2, boolean z3) {
            setHacks(z, z2, z3, false, false);
        }

        public void setHacks(boolean z, boolean z2, boolean z3, boolean z4) {
            setHacks(z, z2, z3, z4, false);
        }

        public void setHacks(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            this.splitByWords = z;
            this.preserveIndex = z2;
            this.startFromEnd = z3;
            this.enforceByLetter = z4;
            this.startEndDiff = z5;
        }

        public void setOverrideFullWidth(int i) {
            this.overrideFullWidth = i;
        }

        public AnimatedTextDrawable() {
            this(false, false, false);
        }

        public AnimatedTextDrawable(boolean z, boolean z2, boolean z3) {
            this(z, z2, z3, false, false);
        }

        public AnimatedTextDrawable(boolean z, boolean z2, boolean z3, boolean z4) {
            this(z, z2, z3, z4, false);
        }

        public AnimatedTextDrawable(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            this.textPaint = new TextPaint(1);
            this.gravity = 0;
            this.isRTL = false;
            this.emojiCacheType = 0;
            this.rawT = 0.0f;
            this.f1087t = 0.0f;
            this.moveDown = true;
            this.animateDelay = 0L;
            this.animateDuration = 320L;
            this.animateInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.animateWave = -1.0f;
            this.moveAmplitude = 0.3f;
            this.scaleAmplitude = 0.0f;
            this.alpha = 255;
            this.bounds = new Rect();
            this.includeFontPadding = true;
            this.centerY = true;
            this.shadowed = false;
            this.splitByWords = z;
            this.preserveIndex = z2;
            this.startFromEnd = z3;
            this.enforceByLetter = z4;
            this.startEndDiff = z5;
        }

        public void setAllowCancel(boolean z) {
            this.allowCancel = z;
        }

        public void setEllipsizeByGradient(boolean z) {
            this.ellipsizeByGradient = z;
            invalidateSelf();
        }

        public void setOnAnimationFinishListener(Runnable runnable) {
            this.onAnimationFinishListener = runnable;
        }

        private float interpolate(float f) {
            TimeInterpolator timeInterpolator = this.animateInterpolator;
            return timeInterpolator == null ? f : timeInterpolator.getInterpolation(f);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private float getPartAnimationProgress(Part part, float f) {
            float f2 = 0.0f;
            if (this.animateWave <= 0.0f) {
                return this.f1087t;
            }
            float fMax = Math.max(this.oldWidth, this.currentWidth);
            float textSize = this.animateWave * this.textPaint.getTextSize();
            if (fMax <= 0.0f || textSize <= 0.0f) {
                return this.f1087t;
            }
            boolean z = this.isRTL && !this.ignoreRTL;
            float f3 = fMax - f;
            int i = this.gravity;
            if ((i | (-4)) != -1) {
                if ((i | (-6)) != -1) {
                    if ((i | (-2)) == -1) {
                        f2 = f3 / 2.0f;
                    } else if (z) {
                        f2 = f3;
                    }
                }
            }
            float f4 = part.offset;
            if (z) {
                f2 = f3 - f2;
            }
            return interpolate(AndroidUtilities.cascade(this.rawT, f4 + f2, fMax, textSize));
        }

        private float snapScaleToIdentity(float f) {
            if (Math.abs(1.0f - f) < 0.001f) {
                return 1.0f;
            }
            return f;
        }

        /* JADX WARN: Code restructure failed: missing block: B:52:0x010a, code lost:
        
            if (r20.ignoreRTL == false) goto L44;
         */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01e8  */
        @Override // android.graphics.drawable.Drawable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas) {
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float fLerp;
            float f11;
            if (this.ellipsizeByGradient) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.bounds);
                rectF.right -= this.rightPadding;
                canvas.saveLayerAlpha(rectF, 255, 31);
            }
            canvas.save();
            Rect rect = this.bounds;
            canvas.translate(rect.left, rect.top);
            int iWidth = this.bounds.width();
            int iHeight = this.bounds.height();
            float f12 = 0.0f;
            float f13 = 2.0f;
            float f14 = 1.0f;
            if (this.currentParts == null || this.oldParts == null) {
                if (this.centerY) {
                    canvas.translate(0.0f, (iHeight - this.currentHeight) / 2.0f);
                }
                if (this.currentParts != null) {
                    for (int i = 0; i < this.currentParts.length; i++) {
                        canvas.save();
                        Part part = this.currentParts[i];
                        float f15 = part.offset;
                        boolean z = this.isRTL;
                        if (z && !this.ignoreRTL) {
                            f15 = this.currentWidth - (f15 + part.width);
                        }
                        float f16 = f15 - part.left;
                        int i2 = this.gravity;
                        if ((i2 | (-4)) != -1) {
                            if ((i2 | (-6)) == -1) {
                                f = iWidth;
                                f2 = this.currentWidth;
                            } else if ((i2 | (-2)) == -1) {
                                f3 = (iWidth - this.currentWidth) / 2.0f;
                                f16 += f3;
                            } else if (z && !this.ignoreRTL) {
                                f = iWidth;
                                f2 = this.currentWidth;
                            }
                            f3 = f - f2;
                            f16 += f3;
                        }
                        canvas.translate(f16, this.currentBaseline - part.baseline);
                        part.draw(canvas, 1.0f);
                        canvas.restore();
                    }
                }
            } else {
                float f17 = this.f1087t;
                if (f17 != 1.0f) {
                    float fLerp2 = AndroidUtilities.lerp(this.oldWidth, this.currentWidth, f17);
                    float fLerp3 = AndroidUtilities.lerp(this.oldHeight, this.currentHeight, this.f1087t);
                    float fLerp4 = AndroidUtilities.lerp(this.oldBaseline, this.currentBaseline, this.f1087t);
                    if (this.centerY) {
                        canvas.translate(0.0f, (iHeight - fLerp3) / 2.0f);
                    }
                    int i3 = 0;
                    while (true) {
                        Part[] partArr = this.currentParts;
                        if (i3 >= partArr.length) {
                            break;
                        }
                        Part part2 = partArr[i3];
                        int i4 = part2.toOppositeIndex;
                        float f18 = part2.offset;
                        float textSize = fLerp4 - part2.baseline;
                        if (!this.isRTL || this.ignoreRTL) {
                            f8 = f13;
                        } else {
                            f8 = f13;
                            f18 = this.currentWidth - (f18 + part2.width);
                        }
                        float partAnimationProgress = getPartAnimationProgress(part2, this.currentWidth);
                        if (i4 >= 0) {
                            Part part3 = this.oldParts[i4];
                            float f19 = part3.offset;
                            f9 = f12;
                            if (!this.isRTL || this.ignoreRTL) {
                                f10 = f14;
                            } else {
                                f10 = f14;
                                f19 = this.oldWidth - (f19 + part3.width);
                            }
                            fLerp = AndroidUtilities.lerp(f19 - part3.left, f18 - part2.left, this.f1087t);
                        } else {
                            f9 = f12;
                            f10 = f14;
                            fLerp = f18 - part2.left;
                            textSize -= ((this.textPaint.getTextSize() * this.moveAmplitude) * (f10 - partAnimationProgress)) * (this.moveDown ? f10 : -1.0f);
                        }
                        canvas.save();
                        float f20 = i4 >= 0 ? fLerp2 : this.currentWidth;
                        int i5 = this.gravity;
                        if ((i5 | (-4)) != -1) {
                            if ((i5 | (-6)) == -1) {
                                f11 = iWidth - f20;
                                fLerp += f11;
                            } else if ((i5 | (-2)) == -1) {
                                f11 = (iWidth - f20) / f8;
                                fLerp += f11;
                            } else if (this.isRTL) {
                            }
                        }
                        canvas.translate(fLerp, textSize);
                        if (i4 < 0) {
                            float f21 = this.scaleAmplitude;
                            if (f21 > f9) {
                                float fSnapScaleToIdentity = snapScaleToIdentity(AndroidUtilities.lerp(f10 - f21, f10, partAnimationProgress));
                                canvas.scale(fSnapScaleToIdentity, fSnapScaleToIdentity, part2.width / f8, part2.layout.getHeight() / f8);
                            }
                        }
                        if (i4 >= 0) {
                            partAnimationProgress = 1.0f;
                        }
                        part2.draw(canvas, partAnimationProgress);
                        canvas.restore();
                        i3++;
                        f13 = f8;
                        f12 = f9;
                        f14 = 1.0f;
                    }
                    float f22 = f12;
                    float f23 = f13;
                    int i6 = 0;
                    while (true) {
                        Part[] partArr2 = this.oldParts;
                        if (i6 >= partArr2.length) {
                            break;
                        }
                        Part part4 = partArr2[i6];
                        if (part4.toOppositeIndex < 0) {
                            float partAnimationProgress2 = getPartAnimationProgress(part4, this.oldWidth);
                            float f24 = part4.offset;
                            float textSize2 = (fLerp4 - part4.baseline) + (this.textPaint.getTextSize() * this.moveAmplitude * partAnimationProgress2 * (this.moveDown ? 1.0f : -1.0f));
                            canvas.save();
                            boolean z2 = this.isRTL;
                            if (z2 && !this.ignoreRTL) {
                                f24 = this.oldWidth - (f24 + part4.width);
                            }
                            float f25 = f24 - part4.left;
                            int i7 = this.gravity;
                            if ((i7 | (-4)) != -1) {
                                if ((i7 | (-6)) == -1) {
                                    f5 = iWidth;
                                    f6 = this.oldWidth;
                                } else if ((i7 | (-2)) == -1) {
                                    f7 = (iWidth - this.oldWidth) / f23;
                                    f25 += f7;
                                } else if (z2 && !this.ignoreRTL) {
                                    f5 = iWidth;
                                    f6 = this.oldWidth;
                                }
                                f7 = f5 - f6;
                                f25 += f7;
                            }
                            canvas.translate(f25, textSize2);
                            float f26 = this.scaleAmplitude;
                            if (f26 > f22) {
                                f4 = 1.0f;
                                float fSnapScaleToIdentity2 = snapScaleToIdentity(AndroidUtilities.lerp(1.0f, 1.0f - f26, partAnimationProgress2));
                                canvas.scale(fSnapScaleToIdentity2, fSnapScaleToIdentity2, part4.width / f23, part4.layout.getHeight() / f23);
                            } else {
                                f4 = 1.0f;
                            }
                            part4.draw(canvas, f4 - partAnimationProgress2);
                            canvas.restore();
                        }
                        i6++;
                    }
                }
            }
            canvas.restore();
            if (this.ellipsizeByGradient) {
                float fDp = AndroidUtilities.dp(16.0f);
                if (this.ellipsizeGradient == null) {
                    this.ellipsizeGradient = new LinearGradient(0.0f, 0.0f, fDp, 0.0f, new int[]{16711680, Opcodes.V_PREVIEW}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                    this.ellipsizeGradientMatrix = new Matrix();
                    Paint paint = new Paint(1);
                    this.ellipsizePaint = paint;
                    paint.setShader(this.ellipsizeGradient);
                    this.ellipsizePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                }
                this.ellipsizeGradientMatrix.reset();
                this.ellipsizeGradientMatrix.postTranslate((this.bounds.right - this.rightPadding) - fDp, 0.0f);
                this.ellipsizeGradient.setLocalMatrix(this.ellipsizeGradientMatrix);
                int i8 = this.bounds.right;
                float f27 = this.rightPadding;
                canvas.drawRect((i8 - f27) - fDp, r2.top, (i8 - f27) + AndroidUtilities.dp(1.0f), this.bounds.bottom, this.ellipsizePaint);
                canvas.restore();
            }
        }

        public void setRightPadding(float f) {
            this.rightPadding = f;
            invalidateSelf();
        }

        public float getRightPadding() {
            return this.rightPadding;
        }

        public void cancelAnimation() {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }

        public boolean isAnimating() {
            ValueAnimator valueAnimator = this.animator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        public void setText(CharSequence charSequence) {
            setText(charSequence, true);
        }

        public void setText(CharSequence charSequence, boolean z) {
            setText(charSequence, z, true);
        }

        public void setText(CharSequence charSequence, boolean z, boolean z2) {
            if (this.currentText == null || charSequence == null) {
                z = false;
            }
            if (charSequence == null) {
                charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            final int iWidth = this.overrideFullWidth;
            if (iWidth <= 0) {
                iWidth = this.bounds.width();
            }
            if (z) {
                if (TextUtils.equals(charSequence, this.currentText)) {
                    return;
                }
                if (this.allowCancel) {
                    ValueAnimator valueAnimator = this.animator;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                        this.animator = null;
                    }
                } else if (isAnimating()) {
                    this.toSetText = charSequence;
                    this.toSetTextMoveDown = z2;
                    return;
                }
                this.oldText = this.currentText;
                this.currentText = charSequence;
                final ArrayList arrayList = new ArrayList();
                final ArrayList arrayList2 = new ArrayList();
                this.currentWidth = 0.0f;
                this.oldWidth = 0.0f;
                resetCurrentHeight();
                resetOldHeight();
                this.isRTL = AndroidUtilities.isRTL(this.currentText);
                RegionCallback regionCallback = new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                    public final void run(CharSequence charSequence2, int i, int i2) {
                        this.f$0.lambda$setText$0(iWidth, arrayList2, arrayList, charSequence2, i, i2);
                    }
                };
                RegionCallback regionCallback2 = new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda1
                    @Override // org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                    public final void run(CharSequence charSequence2, int i, int i2) {
                        this.f$0.lambda$setText$1(iWidth, arrayList, charSequence2, i, i2);
                    }
                };
                RegionCallback regionCallback3 = new RegionCallback() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda2
                    @Override // org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.RegionCallback
                    public final void run(CharSequence charSequence2, int i, int i2) {
                        this.f$0.lambda$setText$2(iWidth, arrayList2, charSequence2, i, i2);
                    }
                };
                boolean z3 = this.splitByWords;
                CharSequence charSequence2 = this.oldText;
                CharSequence wordSequence = z3 ? new WordSequence(charSequence2) : charSequence2;
                boolean z4 = this.splitByWords;
                CharSequence charSequence3 = this.currentText;
                diff(wordSequence, z4 ? new WordSequence(charSequence3) : charSequence3, regionCallback, regionCallback2, regionCallback3);
                clearCurrentParts();
                Part[] partArr = this.currentParts;
                if (partArr == null || partArr.length != arrayList.size()) {
                    this.currentParts = new Part[arrayList.size()];
                }
                arrayList.toArray(this.currentParts);
                clearOldParts();
                Part[] partArr2 = this.oldParts;
                if (partArr2 == null || partArr2.length != arrayList2.size()) {
                    this.oldParts = new Part[arrayList2.size()];
                }
                arrayList2.toArray(this.oldParts);
                ValueAnimator valueAnimator2 = this.animator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                this.moveDown = z2;
                this.f1087t = 0.0f;
                this.rawT = 0.0f;
                this.animator = ValueAnimator.ofFloat(0.0f, 1.0f);
                Runnable runnable = this.widthUpdatedListener;
                if (runnable != null) {
                    runnable.run();
                }
                this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        this.f$0.lambda$setText$3(valueAnimator3);
                    }
                });
                this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        AnimatedTextDrawable.this.clearOldParts();
                        AnimatedTextDrawable.this.oldText = null;
                        AnimatedTextDrawable.this.oldWidth = 0.0f;
                        AnimatedTextDrawable.this.resetOldHeight();
                        AnimatedTextDrawable animatedTextDrawable = AnimatedTextDrawable.this;
                        animatedTextDrawable.f1087t = 0.0f;
                        animatedTextDrawable.rawT = 0.0f;
                        AnimatedTextDrawable.this.invalidateSelf();
                        if (AnimatedTextDrawable.this.widthUpdatedListener != null) {
                            AnimatedTextDrawable.this.widthUpdatedListener.run();
                        }
                        AnimatedTextDrawable.this.animator = null;
                        CharSequence charSequence4 = AnimatedTextDrawable.this.toSetText;
                        AnimatedTextDrawable animatedTextDrawable2 = AnimatedTextDrawable.this;
                        if (charSequence4 != null) {
                            animatedTextDrawable2.setText(animatedTextDrawable2.toSetText, true, AnimatedTextDrawable.this.toSetTextMoveDown);
                            AnimatedTextDrawable.this.toSetText = null;
                            AnimatedTextDrawable.this.toSetTextMoveDown = false;
                        } else if (animatedTextDrawable2.onAnimationFinishListener != null) {
                            AnimatedTextDrawable.this.onAnimationFinishListener.run();
                        }
                    }
                });
                this.animator.setStartDelay(this.animateDelay);
                this.animator.setDuration(this.animateDuration);
                this.animator.setInterpolator(LINEAR_INTERPOLATOR);
                this.animator.start();
                return;
            }
            ValueAnimator valueAnimator3 = this.animator;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
            }
            this.animator = null;
            this.toSetText = null;
            this.toSetTextMoveDown = false;
            this.f1087t = 0.0f;
            this.rawT = 0.0f;
            if (!charSequence.equals(this.currentText)) {
                clearCurrentParts();
                this.currentParts = new Part[]{new Part(makeLayout(charSequence, iWidth), 0.0f, -1)};
                this.currentText = charSequence;
                this.currentWidth = this.currentParts[0].width;
                resetCurrentHeight();
                includeCurrentPartHeight(this.currentParts[0]);
                this.isRTL = AndroidUtilities.isRTL(this.currentText);
            }
            clearOldParts();
            this.oldText = null;
            this.oldWidth = 0.0f;
            resetOldHeight();
            invalidateSelf();
            Runnable runnable2 = this.widthUpdatedListener;
            if (runnable2 != null) {
                runnable2.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$0(int i, ArrayList arrayList, ArrayList arrayList2, CharSequence charSequence, int i2, int i3) {
            StaticLayout staticLayoutMakeLayout = makeLayout(charSequence, i - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
            Part part = new Part(staticLayoutMakeLayout, this.currentWidth, arrayList.size());
            Part part2 = new Part(staticLayoutMakeLayout, this.oldWidth, arrayList2.size());
            arrayList2.add(part);
            arrayList.add(part2);
            float f = part.width;
            this.currentWidth += f;
            this.oldWidth += f;
            includeCurrentPartHeight(part);
            includeOldPartHeight(part2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$1(int i, ArrayList arrayList, CharSequence charSequence, int i2, int i3) {
            Part part = new Part(makeLayout(charSequence, i - ((int) Math.ceil(this.currentWidth))), this.currentWidth, -1);
            arrayList.add(part);
            this.currentWidth += part.width;
            includeCurrentPartHeight(part);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$2(int i, ArrayList arrayList, CharSequence charSequence, int i2, int i3) {
            Part part = new Part(makeLayout(charSequence, i - ((int) Math.ceil(this.oldWidth))), this.oldWidth, -1);
            arrayList.add(part);
            this.oldWidth += part.width;
            includeOldPartHeight(part);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$3(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.rawT = fFloatValue;
            this.f1087t = interpolate(fFloatValue);
            invalidateSelf();
            Runnable runnable = this.widthUpdatedListener;
            if (runnable != null) {
                runnable.run();
            }
        }

        public void relayoutText() {
            CharSequence charSequence = this.currentText;
            if (charSequence == null) {
                return;
            }
            this.currentText = null;
            setText(charSequence, false, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOldParts() {
            if (this.oldParts != null) {
                int i = 0;
                while (true) {
                    Part[] partArr = this.oldParts;
                    if (i >= partArr.length) {
                        break;
                    }
                    partArr[i].detach();
                    i++;
                }
            }
            this.oldParts = null;
        }

        private void clearCurrentParts() {
            if (this.currentParts != null) {
                int i = 0;
                while (true) {
                    Part[] partArr = this.currentParts;
                    if (i >= partArr.length) {
                        break;
                    }
                    partArr[i].detach();
                    i++;
                }
            }
            this.currentParts = null;
        }

        public CharSequence getText() {
            return this.currentText;
        }

        public float getWidth() {
            return Math.max(this.currentWidth, this.oldWidth);
        }

        public float getCurrentWidth() {
            if (this.currentParts != null && this.oldParts != null) {
                return AndroidUtilities.lerp(this.oldWidth, this.currentWidth, this.f1087t);
            }
            return this.currentWidth;
        }

        public float getAnimateToWidth() {
            return this.currentWidth;
        }

        public float getHeight() {
            return this.currentHeight;
        }

        private StaticLayout makeLayout(CharSequence charSequence, int i) {
            if (i <= 0) {
                Point point = AndroidUtilities.displaySize;
                i = Math.min(point.x, point.y);
            }
            return StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.textPaint, i).setMaxLines(1).setLineSpacing(0.0f, 1.0f).setAlignment(Layout.Alignment.ALIGN_NORMAL).setEllipsize(TextUtils.TruncateAt.END).setEllipsizedWidth(i).setIncludePad(this.includeFontPadding).build();
        }

        public static class WordSequence implements CharSequence {
            private final int length;
            private final CharSequence[] words;

            public WordSequence(CharSequence charSequence) {
                if (charSequence == null) {
                    this.words = new CharSequence[0];
                    this.length = 0;
                    return;
                }
                this.length = charSequence.length();
                int i = 0;
                for (int i2 = 0; i2 < this.length; i2++) {
                    if (charSequence.charAt(i2) == ' ') {
                        i++;
                    }
                }
                this.words = new CharSequence[i + 1];
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int i6 = this.length;
                    if (i3 > i6) {
                        return;
                    }
                    if (i3 == i6 || charSequence.charAt(i3) == ' ') {
                        int i7 = i4 + 1;
                        this.words[i4] = charSequence.subSequence(i5, (i3 < this.length ? 1 : 0) + i3);
                        i5 = i3 + 1;
                        i4 = i7;
                    }
                    i3++;
                }
            }

            public CharSequence wordAt(int i) {
                if (i < 0) {
                    return null;
                }
                CharSequence[] charSequenceArr = this.words;
                if (i >= charSequenceArr.length) {
                    return null;
                }
                return charSequenceArr[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.words.length;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                int i2 = 0;
                while (true) {
                    CharSequence[] charSequenceArr = this.words;
                    if (i2 >= charSequenceArr.length) {
                        return (char) 0;
                    }
                    int length = charSequenceArr[i2].length();
                    CharSequence[] charSequenceArr2 = this.words;
                    if (i < length) {
                        return charSequenceArr2[i2].charAt(i);
                    }
                    i -= charSequenceArr2[i2].length();
                    i2++;
                }
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return TextUtils.concat((CharSequence[]) Arrays.copyOfRange(this.words, i, i2));
            }

            @Override // java.lang.CharSequence
            public String toString() {
                StringBuilder sb = new StringBuilder();
                int i = 0;
                while (true) {
                    CharSequence[] charSequenceArr = this.words;
                    if (i < charSequenceArr.length) {
                        sb.append(charSequenceArr[i]);
                        i++;
                    } else {
                        return sb.toString();
                    }
                }
            }

            public CharSequence toCharSequence() {
                return TextUtils.concat(this.words);
            }

            @Override // java.lang.CharSequence
            public IntStream chars() {
                return toCharSequence().chars();
            }

            @Override // java.lang.CharSequence
            public IntStream codePoints() {
                return toCharSequence().codePoints();
            }
        }

        public static boolean partEquals(CharSequence charSequence, CharSequence charSequence2, int i, int i2) {
            if (!(charSequence instanceof WordSequence) || !(charSequence2 instanceof WordSequence)) {
                return (charSequence == null && charSequence2 == null) || !(charSequence == null || charSequence2 == null || charSequence.charAt(i) != charSequence2.charAt(i2));
            }
            CharSequence charSequenceWordAt = ((WordSequence) charSequence).wordAt(i);
            CharSequence charSequenceWordAt2 = ((WordSequence) charSequence2).wordAt(i2);
            return (charSequenceWordAt == null && charSequenceWordAt2 == null) || (charSequenceWordAt != null && charSequenceWordAt.equals(charSequenceWordAt2));
        }

        private void part(RegionCallback regionCallback, CharSequence charSequence, int i, int i2) {
            if (this.enforceByLetter && charSequence.length() > 1) {
                int i3 = 0;
                while (i3 < charSequence.length()) {
                    int i4 = i3 + 1;
                    CharSequence charSequenceSubSequence = charSequence.subSequence(i3, i4);
                    int i5 = i3 + i;
                    regionCallback.run(charSequenceSubSequence, i5, i5 + 1);
                    i3 = i4;
                }
                return;
            }
            regionCallback.run(charSequence, i, i2);
        }

        private void diff(CharSequence charSequence, CharSequence charSequence2, RegionCallback regionCallback, RegionCallback regionCallback2, RegionCallback regionCallback3) {
            boolean z = false;
            if (this.updateAll) {
                part(regionCallback3, charSequence, 0, charSequence.length());
                part(regionCallback2, charSequence2, 0, charSequence2.length());
                return;
            }
            if (this.startEndDiff) {
                int iMin = Math.min(charSequence2.length(), charSequence.length());
                int i = 0;
                while (i < iMin && partEquals(charSequence2, charSequence, i, i)) {
                    i++;
                }
                int length = charSequence2.length();
                int length2 = charSequence.length();
                while (length > i && length2 > i && partEquals(charSequence2, charSequence, length - 1, length2 - 1)) {
                    length--;
                    length2--;
                }
                if (i > 0) {
                    regionCallback.run(charSequence2.subSequence(0, i), 0, i);
                }
                if (length > i) {
                    part(regionCallback2, charSequence2.subSequence(i, length), i, length);
                }
                if (length2 > i) {
                    part(regionCallback3, charSequence.subSequence(i, length2), i, length2);
                }
                if (length < charSequence2.length()) {
                    regionCallback.run(charSequence2.subSequence(length, charSequence2.length()), length, charSequence2.length());
                    return;
                }
                return;
            }
            if (this.preserveIndex) {
                int iMin2 = Math.min(charSequence2.length(), charSequence.length());
                if (this.startFromEnd) {
                    ArrayList arrayList = new ArrayList();
                    int i2 = 0;
                    boolean z2 = true;
                    boolean z3 = true;
                    for (int i3 = 0; i3 <= iMin2; i3++) {
                        int length3 = (charSequence2.length() - i3) - 1;
                        int length4 = (charSequence.length() - i3) - 1;
                        boolean z4 = length3 >= 0 && length4 >= 0 && partEquals(charSequence2, charSequence, length3, length4);
                        if (z2 != z4 || i3 == iMin2) {
                            int i4 = i3 - i2;
                            if (i4 > 0) {
                                if (arrayList.size() != 0) {
                                    z2 = z3;
                                }
                                arrayList.add(Integer.valueOf(i4));
                                z3 = z2;
                            }
                            i2 = i3;
                            z2 = z4;
                        }
                    }
                    int length5 = charSequence2.length() - iMin2;
                    int length6 = charSequence.length() - iMin2;
                    if (length5 > 0) {
                        part(regionCallback2, charSequence2.subSequence(0, length5), 0, length5);
                    }
                    if (length6 > 0) {
                        part(regionCallback3, charSequence.subSequence(0, length6), 0, length6);
                    }
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        int iIntValue = ((Integer) arrayList.get(size)).intValue();
                        if ((size % 2 == 0) == z3) {
                            if (charSequence2.length() > charSequence.length()) {
                                int i5 = length5 + iIntValue;
                                regionCallback.run(charSequence2.subSequence(length5, i5), length5, i5);
                            } else {
                                int i6 = length6 + iIntValue;
                                regionCallback.run(charSequence.subSequence(length6, i6), length6, i6);
                            }
                        } else {
                            int i7 = length5 + iIntValue;
                            part(regionCallback2, charSequence2.subSequence(length5, i7), length5, i7);
                            int i8 = length6 + iIntValue;
                            part(regionCallback3, charSequence.subSequence(length6, i8), length6, i8);
                        }
                        length5 += iIntValue;
                        length6 += iIntValue;
                    }
                    return;
                }
                int i9 = 0;
                int i10 = 0;
                boolean z5 = true;
                while (i9 <= iMin2) {
                    boolean z6 = i9 < iMin2 && partEquals(charSequence2, charSequence, i9, i9);
                    if (z5 != z6 || i9 == iMin2) {
                        if (i9 - i10 > 0) {
                            if (z5) {
                                part(regionCallback, charSequence2.subSequence(i10, i9), i10, i9);
                            } else {
                                part(regionCallback2, charSequence2.subSequence(i10, i9), i10, i9);
                                part(regionCallback3, charSequence.subSequence(i10, i9), i10, i9);
                            }
                        }
                        i10 = i9;
                        z5 = z6;
                    }
                    i9++;
                }
                if (charSequence2.length() - iMin2 > 0) {
                    part(regionCallback2, charSequence2.subSequence(iMin2, charSequence2.length()), iMin2, charSequence2.length());
                }
                if (charSequence.length() - iMin2 > 0) {
                    part(regionCallback3, charSequence.subSequence(iMin2, charSequence.length()), iMin2, charSequence.length());
                    return;
                }
                return;
            }
            int iMin3 = Math.min(charSequence2.length(), charSequence.length());
            int length7 = 0;
            int length8 = 0;
            int i11 = 0;
            int i12 = 0;
            boolean z7 = true;
            while (length7 <= iMin3) {
                boolean z8 = (length7 >= iMin3 || !partEquals(charSequence2, charSequence, length7, length8)) ? z : true;
                if (z7 != z8 || length7 == iMin3) {
                    if (length7 == iMin3) {
                        length7 = charSequence2.length();
                        length8 = charSequence.length();
                    }
                    int i13 = length7 - i11;
                    int i14 = length8 - i12;
                    if (i13 > 0 || i14 > 0) {
                        if (i13 == i14 && z7) {
                            regionCallback.run(charSequence2.subSequence(i11, length7), i11, length7);
                        } else {
                            if (i13 > 0) {
                                part(regionCallback2, charSequence2.subSequence(i11, length7), i11, length7);
                            }
                            if (i14 > 0) {
                                part(regionCallback3, charSequence.subSequence(i12, length8), i12, length8);
                            }
                        }
                    }
                    i11 = length7;
                    i12 = length8;
                    z7 = z8;
                }
                if (z8) {
                    length8++;
                }
                length7++;
                z = false;
            }
        }

        public void setTextSize(float f) {
            float textSize = this.textPaint.getTextSize();
            this.textPaint.setTextSize(f);
            if (Math.abs(textSize - f) > 0.5f) {
                int iWidth = this.overrideFullWidth;
                if (iWidth <= 0) {
                    iWidth = this.bounds.width();
                }
                int i = 0;
                if (this.currentParts != null) {
                    this.currentWidth = 0.0f;
                    resetCurrentHeight();
                    int i2 = 0;
                    while (true) {
                        Part[] partArr = this.currentParts;
                        if (i2 >= partArr.length) {
                            break;
                        }
                        StaticLayout staticLayoutMakeLayout = makeLayout(partArr[i2].layout.getText(), iWidth - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
                        Part[] partArr2 = this.currentParts;
                        Part part = partArr2[i2];
                        partArr2[i2] = new Part(staticLayoutMakeLayout, part.offset, part.toOppositeIndex);
                        part.detach();
                        float f2 = this.currentWidth;
                        Part part2 = this.currentParts[i2];
                        this.currentWidth = f2 + part2.width;
                        includeCurrentPartHeight(part2);
                        i2++;
                    }
                }
                if (this.oldParts != null) {
                    this.oldWidth = 0.0f;
                    resetOldHeight();
                    while (true) {
                        Part[] partArr3 = this.oldParts;
                        if (i >= partArr3.length) {
                            break;
                        }
                        StaticLayout staticLayoutMakeLayout2 = makeLayout(partArr3[i].layout.getText(), iWidth - ((int) Math.ceil(Math.min(this.currentWidth, this.oldWidth))));
                        Part[] partArr4 = this.oldParts;
                        Part part3 = partArr4[i];
                        partArr4[i] = new Part(staticLayoutMakeLayout2, part3.offset, part3.toOppositeIndex);
                        part3.detach();
                        float f3 = this.oldWidth;
                        Part part4 = this.oldParts[i];
                        this.oldWidth = f3 + part4.width;
                        includeOldPartHeight(part4);
                        i++;
                    }
                }
                invalidateSelf();
            }
        }

        public float getTextSize() {
            return this.textPaint.getTextSize();
        }

        public void setTextColor(int i) {
            this.textPaint.setColor(i);
            this.alpha = Color.alpha(i);
        }

        public void setShadowLayer(float f, float f2, float f3, int i) {
            this.shadowed = true;
            TextPaint textPaint = this.textPaint;
            this.shadowRadius = f;
            this.shadowDx = f2;
            this.shadowDy = f3;
            this.shadowColor = i;
            textPaint.setShadowLayer(f, f2, f3, i);
        }

        public int getTextColor() {
            return this.textPaint.getColor();
        }

        public void setTextColor(final int i, boolean z) {
            ValueAnimator valueAnimator = this.colorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.colorAnimator = null;
            }
            if (!z) {
                setTextColor(i);
                return;
            }
            final int textColor = getTextColor();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.colorAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setTextColor$9(textColor, i, valueAnimator2);
                }
            });
            this.colorAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AnimatedTextView.AnimatedTextDrawable.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AnimatedTextDrawable.this.setTextColor(i);
                }
            });
            this.colorAnimator.setDuration(240L);
            this.colorAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.colorAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setTextColor$9(int i, int i2, ValueAnimator valueAnimator) {
            setTextColor(ColorUtils.blendARGB(i, i2, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            invalidateSelf();
        }

        public void setEmojiColorFilter(ColorFilter colorFilter) {
            this.emojiColorFilter = colorFilter;
        }

        public void setEmojiColor(int i) {
            if (this.emojiColor != i) {
                this.emojiColor = i;
                this.emojiColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
            }
        }

        public void setTypeface(Typeface typeface) {
            this.textPaint.setTypeface(typeface);
        }

        public void setGravity(int i) {
            this.gravity = i;
        }

        public int getGravity() {
            return this.gravity;
        }

        public void setAnimationProperties(float f, long j, long j2, TimeInterpolator timeInterpolator) {
            setAnimationProperties(f, j, j2, 0.0f, timeInterpolator);
        }

        public void setAnimationProperties(float f, long j, long j2, float f2, TimeInterpolator timeInterpolator) {
            this.moveAmplitude = f;
            this.animateDelay = j;
            this.animateDuration = j2;
            this.animateWave = f2;
            this.animateInterpolator = timeInterpolator;
        }

        public void setScaleProperty(float f) {
            this.scaleAmplitude = f;
        }

        public TextPaint getPaint() {
            return this.textPaint;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.textPaint.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(Rect rect) {
            super.setBounds(rect);
            this.bounds.set(rect);
        }

        public void setBounds(RectF rectF) {
            setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i, int i2, int i3, int i4) {
            super.setBounds(i, i2, i3, i4);
            this.bounds.set(i, i2, i3, i4);
        }

        public void setBounds(float f, float f2, float f3, float f4) {
            int i = (int) f;
            int i2 = (int) f2;
            int i3 = (int) f3;
            int i4 = (int) f4;
            super.setBounds(i, i2, i3, i4);
            this.bounds.set(i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public Rect getDirtyBounds() {
            return this.bounds;
        }

        public float isNotEmpty() {
            CharSequence charSequence = this.oldText;
            float f = 0.0f;
            float f2 = (charSequence == null || charSequence.length() <= 0) ? 0.0f : 1.0f;
            CharSequence charSequence2 = this.currentText;
            if (charSequence2 != null && charSequence2.length() > 0) {
                f = 1.0f;
            }
            return AndroidUtilities.lerp(f2, f, this.oldText != null ? this.f1087t : 1.0f);
        }

        public void setOnWidthUpdatedListener(Runnable runnable) {
            this.widthUpdatedListener = runnable;
        }

        public void setIncludeFontPadding(boolean z) {
            this.includeFontPadding = z;
        }
    }

    public AnimatedTextView(Context context) {
        this(context, false, false, false);
    }

    public AnimatedTextView(Context context, boolean z, boolean z2, boolean z3) {
        this(context, z, z2, z3, false, false);
    }

    public AnimatedTextView(Context context, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        super(context);
        this.adaptWidth = true;
        this.first = true;
        AnimatedTextDrawable animatedTextDrawable = new AnimatedTextDrawable(z, z2, z3, z4, z5);
        this.drawable = animatedTextDrawable;
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setOnAnimationFinishListener(new Runnable() { // from class: org.telegram.ui.Components.AnimatedTextView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        setTypeface(AndroidUtilities.regular());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        CharSequence charSequence = this.toSetText;
        if (charSequence != null) {
            setText(charSequence, this.toSetMoveDown, true);
            this.toSetText = null;
            this.toSetMoveDown = false;
        }
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.maxWidth;
        if (i3 > 0) {
            size = Math.min(size, i3);
        }
        if (this.lastMaxWidth != size && getLayoutParams().width != 0) {
            this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), size - getPaddingRight(), size2 - getPaddingBottom());
            this.drawable.relayoutText();
        }
        this.lastMaxWidth = size;
        if (this.adaptWidth && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            size = getPaddingRight() + getPaddingLeft() + ((int) Math.ceil(this.drawable.getAnimateToWidth()));
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        if (this.backgroundDrawable != null && (!this.hideBackgroundIfEmpty || this.drawable.isNotEmpty() > 0.0f)) {
            int paddingLeft = (int) (getPaddingLeft() + this.drawable.getCurrentWidth() + getPaddingRight());
            int i = this.drawable.gravity & 7;
            if (i == 5) {
                width = getWidth() - paddingLeft;
            } else {
                width = i == 1 ? (getWidth() - paddingLeft) / 2 : 0;
            }
            this.backgroundDrawable.setBounds(width, 0, paddingLeft + width, getHeight());
            this.backgroundDrawable.draw(canvas);
        }
        this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        this.drawable.draw(canvas);
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence, true, true);
    }

    public void setText(CharSequence charSequence, boolean z) {
        setText(charSequence, z, true);
    }

    public void cancelAnimation() {
        this.drawable.cancelAnimation();
    }

    public boolean isAnimating() {
        return this.drawable.isAnimating();
    }

    public void setIgnoreRTL(boolean z) {
        this.drawable.ignoreRTL = z;
    }

    public void setText(CharSequence charSequence, boolean z, boolean z2) {
        boolean z3 = !this.first && z;
        this.first = false;
        if (z3 && !TextUtils.equals(charSequence, this.drawable.getText())) {
            boolean z4 = this.drawable.allowCancel;
            AnimatedTextDrawable animatedTextDrawable = this.drawable;
            if (z4) {
                if (animatedTextDrawable.animator != null) {
                    this.drawable.animator.cancel();
                    this.drawable.animator = null;
                }
            } else if (animatedTextDrawable.isAnimating()) {
                this.toSetText = charSequence;
                this.toSetMoveDown = z2;
                return;
            }
        }
        int animateToWidth = (int) this.drawable.getAnimateToWidth();
        this.drawable.setBounds(getPaddingLeft(), getPaddingTop(), this.lastMaxWidth - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
        this.drawable.setText(charSequence, z3, z2);
        if (animateToWidth == ((int) this.drawable.getAnimateToWidth()) && z3) {
            return;
        }
        requestLayout();
    }

    public void setSizeableBackground(Drawable drawable) {
        this.backgroundDrawable = drawable;
        invalidate();
    }

    public void setHideBackgroundIfEmpty(boolean z) {
        this.hideBackgroundIfEmpty = z;
    }

    public Drawable getSizeableBackground() {
        return this.backgroundDrawable;
    }

    public int width() {
        return getPaddingLeft() + ((int) Math.ceil(this.drawable.getCurrentWidth())) + getPaddingRight();
    }

    public CharSequence getText() {
        return this.drawable.getText();
    }

    public int getTextHeight() {
        return getPaint().getFontMetricsInt().descent - getPaint().getFontMetricsInt().ascent;
    }

    public void setTextSize(float f) {
        this.drawable.setTextSize(f);
    }

    public void setTextColor(int i) {
        this.drawable.setTextColor(i);
        invalidate();
    }

    public void setTextColor(int i, boolean z) {
        this.drawable.setTextColor(i, z);
        invalidate();
    }

    public void setEmojiCacheType(int i) {
        this.drawable.setEmojiCacheType(i);
    }

    public void setEmojiColor(int i) {
        this.drawable.setEmojiColor(i);
        invalidate();
    }

    public void setEmojiColorFilter(ColorFilter colorFilter) {
        this.drawable.setEmojiColorFilter(colorFilter);
        invalidate();
    }

    public int getTextColor() {
        return this.drawable.getTextColor();
    }

    public void setTypeface(Typeface typeface) {
        this.drawable.setTypeface(typeface);
    }

    public void setGravity(int i) {
        this.drawable.setGravity(i);
    }

    public void setAnimationProperties(float f, long j, long j2, TimeInterpolator timeInterpolator) {
        this.drawable.setAnimationProperties(f, j, j2, timeInterpolator);
    }

    public void setAnimationProperties(float f, long j, long j2, float f2, TimeInterpolator timeInterpolator) {
        this.drawable.setAnimationProperties(f, j, j2, f2, timeInterpolator);
    }

    public void setScaleProperty(float f) {
        this.drawable.setScaleProperty(f);
    }

    public AnimatedTextDrawable getDrawable() {
        return this.drawable;
    }

    public TextPaint getPaint() {
        return this.drawable.getPaint();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
        invalidate();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.TextView");
        accessibilityNodeInfo.setText(getText());
    }

    public void setEllipsizeByGradient(boolean z) {
        this.drawable.setEllipsizeByGradient(z);
    }

    public void setRightPadding(float f) {
        this.drawable.setRightPadding(f);
    }

    public float getRightPadding() {
        return this.drawable.getRightPadding();
    }

    public void setOnWidthUpdatedListener(Runnable runnable) {
        this.drawable.setOnWidthUpdatedListener(runnable);
    }

    public void setIncludeFontPadding(boolean z) {
        this.drawable.setIncludeFontPadding(z);
    }

    public void setAllowCancel(boolean z) {
        this.drawable.setAllowCancel(z);
    }
}
