package com.exteragram.messenger.components.supporter;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.TextureView;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.function.Supplier;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SupporterBadgeLanding {
    private static Pending pending;

    public static final class Pending {
        final Bitmap bitmap;
        final float contentSize;
        final WeakReference<View> cover;
        final float screenX;
        final float screenY;
        final long time = SystemClock.elapsedRealtime();
        final long userId;

        public Pending(long j, Bitmap bitmap, float f, float f2, float f3, View view) {
            this.userId = j;
            this.bitmap = bitmap;
            this.screenX = f;
            this.screenY = f2;
            this.contentSize = f3;
            this.cover = new WeakReference<>(view);
        }
    }

    public static boolean prepare(long j, View view, float f) {
        if (view.getWidth() <= 0 || view.getHeight() <= 0) {
            return false;
        }
        Bitmap bitmap = view instanceof TextureView ? ((TextureView) view).getBitmap() : null;
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmap));
        }
        Bitmap bitmap2 = bitmap;
        view.getLocationOnScreen(new int[2]);
        clear();
        pending = new Pending(j, bitmap2, r0[0] + (view.getWidth() / 2.0f), r0[1] + (view.getHeight() / 2.0f), view.getHeight() * f, view.getRootView());
        return true;
    }

    private static void clear() {
        Pending pending2 = pending;
        if (pending2 != null) {
            pending2.bitmap.recycle();
            pending = null;
        }
    }

    public static void start(BaseFragment baseFragment, long j, Supplier<SupporterEnterFrom> supplier, final SupporterBadgeHint supporterBadgeHint) {
        final Pending pending2 = pending;
        if (pending2 == null || pending2.userId != j) {
            return;
        }
        pending = null;
        Activity parentActivity = baseFragment.getParentActivity();
        if (parentActivity == null || SystemClock.elapsedRealtime() - pending2.time > 2000) {
            pending2.bitmap.recycle();
            return;
        }
        final View decorView = parentActivity.getWindow().getDecorView();
        final View view = pending2.cover.get();
        final Flight flight = new Flight(pending2, supplier);
        final View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeLanding.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                view2.removeOnAttachStateChangeListener(this);
                flight.moveTo(decorView);
            }
        };
        if (view != null && view != decorView && view.isAttachedToWindow()) {
            flight.moveTo(view);
            view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        } else {
            flight.moveTo(decorView);
        }
        supporterBadgeHint.hold();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeLanding$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SupporterBadgeLanding.$r8$lambda$EumhYbMw_e3aKPXwZykTsgxaKWc(flight, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.components.supporter.SupporterBadgeLanding.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                View view2 = view;
                if (view2 != null) {
                    view2.removeOnAttachStateChangeListener(onAttachStateChangeListener);
                }
                flight.moveTo(null);
                flight.land();
                pending2.bitmap.recycle();
                try {
                    decorView.performHapticFeedback(3);
                } catch (Exception unused) {
                }
                supporterBadgeHint.release();
            }
        });
        valueAnimatorOfFloat.setDuration(800L);
        valueAnimatorOfFloat.setInterpolator(null);
        valueAnimatorOfFloat.start();
    }

    public static /* synthetic */ void $r8$lambda$EumhYbMw_e3aKPXwZykTsgxaKWc(Flight flight, ValueAnimator valueAnimator) {
        flight.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        flight.invalidateSelf();
    }

    public static final class Flight extends Drawable {
        private final Pending from;
        private View host;
        private SupporterEnterFrom lastTarget;
        float progress;
        private final Supplier<SupporterEnterFrom> target;
        private final Paint bitmapPaint = new Paint(2);
        private final int[] location = new int[2];
        private final RectF rect = new RectF();
        private final Rect savedBounds = new Rect();

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public Flight(Pending pending, Supplier<SupporterEnterFrom> supplier) {
            this.from = pending;
            this.target = supplier;
        }

        public void moveTo(View view) {
            View view2 = this.host;
            if (view2 == view) {
                return;
            }
            if (view2 != null) {
                view2.getOverlay().remove(this);
            }
            this.host = view;
            if (view != null) {
                setBounds(0, 0, view.getWidth(), this.host.getHeight());
                this.host.getOverlay().add(this);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            float fDp;
            float fDp2;
            float f;
            if (this.host == null) {
                return;
            }
            SupporterEnterFrom supporterEnterFrom = this.target.get();
            if (supporterEnterFrom != null) {
                this.lastTarget = supporterEnterFrom;
            }
            this.host.getLocationOnScreen(this.location);
            Pending pending = this.from;
            float f2 = pending.screenX;
            int[] iArr = this.location;
            int i = iArr[0];
            float f3 = f2 - i;
            float f4 = pending.screenY;
            int i2 = iArr[1];
            float f5 = f4 - i2;
            SupporterEnterFrom supporterEnterFrom2 = this.lastTarget;
            Drawable drawable = supporterEnterFrom2 != null ? supporterEnterFrom2.drawable : null;
            if (drawable != null) {
                f = supporterEnterFrom2.screenX - i;
                fDp = supporterEnterFrom2.screenY - i2;
                fDp2 = supporterEnterFrom2.scale * drawable.getIntrinsicWidth();
            } else {
                fDp = AndroidUtilities.dp(120.0f);
                fDp2 = AndroidUtilities.dp(24.0f);
                f = f3;
            }
            float interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.progress);
            float fLerp = AndroidUtilities.lerp(f3, f, CubicBezierInterpolator.EASE_BOTH.getInterpolation(this.progress));
            float fLerp2 = AndroidUtilities.lerp(f5, fDp, interpolation);
            float fLerp3 = AndroidUtilities.lerp(this.from.contentSize, fDp2, interpolation);
            float fClamp = Utilities.clamp((this.progress - 0.35f) / 0.45f, 1.0f, 0.0f);
            if (fClamp < 1.0f) {
                float f6 = fLerp3 / this.from.contentSize;
                float width = (r11.bitmap.getWidth() * f6) / 2.0f;
                float height = (this.from.bitmap.getHeight() * f6) / 2.0f;
                this.rect.set(fLerp - width, fLerp2 - height, width + fLerp, height + fLerp2);
                this.bitmapPaint.setAlpha((int) ((1.0f - fClamp) * 255.0f));
                canvas.drawBitmap(this.from.bitmap, (Rect) null, this.rect, this.bitmapPaint);
            }
            if (drawable != null) {
                if (fClamp > 0.0f) {
                    int intrinsicWidth = drawable.getIntrinsicWidth();
                    int intrinsicHeight = drawable.getIntrinsicHeight();
                    canvas.save();
                    float f7 = fLerp3 / intrinsicWidth;
                    canvas.scale(f7, f7, fLerp, fLerp2);
                    drawable.copyBounds(this.savedBounds);
                    int i3 = (int) fLerp;
                    int i4 = intrinsicWidth / 2;
                    int i5 = (int) fLerp2;
                    int i6 = intrinsicHeight / 2;
                    drawable.setBounds(i3 - i4, i5 - i6, i3 + i4, i5 + i6);
                    drawable.setAlpha((int) (fClamp * 255.0f));
                    drawable.draw(canvas);
                    drawable.setBounds(this.savedBounds);
                    canvas.restore();
                }
                drawable.setAlpha(0);
            }
        }

        public void land() {
            SupporterEnterFrom supporterEnterFrom = this.lastTarget;
            if (supporterEnterFrom != null) {
                supporterEnterFrom.drawable.setAlpha(255);
                this.lastTarget.invalidate();
            }
        }
    }
}
