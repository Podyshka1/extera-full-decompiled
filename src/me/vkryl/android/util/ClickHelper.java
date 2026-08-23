package me.vkryl.android.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import me.vkryl.android.ViewUtils;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public class ClickHelper {
    private int bottom;
    private final Delegate delegate;
    private int flags;
    private int left;
    private Runnable longPressCallback;
    private float longPressX;
    private float longPressY;
    private boolean regionSet;
    private int right;
    private float startX;
    private float startY;
    private int top;

    public interface Delegate {
        default boolean forceEnableVibration() {
            return false;
        }

        default boolean ignoreHapticFeedbackSettings(float f, float f2) {
            return false;
        }

        default boolean needCancelTouchBySlopMove() {
            return true;
        }

        boolean needClickAt(View view, float f, float f2);

        default boolean needLongPress(float f, float f2) {
            return false;
        }

        void onClickAt(View view, float f, float f2);

        default void onClickTouchDown(View view, float f, float f2) {
        }

        default void onClickTouchMove(View view, float f, float f2) {
        }

        default void onClickTouchUp(View view, float f, float f2) {
        }

        default void onLongPressCancelled(View view, float f, float f2) {
        }

        default void onLongPressFinish(View view, float f, float f2) {
        }

        default void onLongPressMove(View view, MotionEvent motionEvent, float f, float f2, float f3, float f4) {
        }

        default boolean onLongPressRequestedAt(View view, float f, float f2) {
            return false;
        }

        default long getLongPressDuration() {
            return ViewConfiguration.getLongPressTimeout();
        }
    }

    public ClickHelper(Delegate delegate) {
        this.delegate = delegate;
    }

    public void cancel(View view, float f, float f2) {
        resetTouch(view, f, f2);
    }

    private void resetTouch(View view, float f, float f2) {
        int i = this.flags;
        if ((i & 2) != 0) {
            this.flags = i & (-3);
            Runnable runnable = this.longPressCallback;
            if (runnable == null) {
                AsyncTimeout$$ExternalSyntheticBUOutline0.m832m();
                return;
            } else {
                view.removeCallbacks(runnable);
                this.longPressCallback = null;
            }
        }
        int i2 = this.flags;
        if ((i2 & 8) != 0) {
            this.flags = i2 & (-9);
            this.delegate.onLongPressCancelled(view, f, f2);
        }
        if ((this.flags & 4) != 0) {
            this.delegate.onLongPressFinish(view, f, f2);
            this.flags &= -5;
        }
        if ((this.flags & 1) != 0) {
            this.delegate.onClickTouchUp(view, f, f2);
            this.flags &= -2;
        }
    }

    private void scheduleLongPress(final View view) {
        if (view != null) {
            if (this.longPressCallback != null) {
                AsyncTimeout$$ExternalSyntheticBUOutline0.m832m();
                return;
            }
            this.flags |= 2;
            Runnable runnable = new Runnable() { // from class: me.vkryl.android.util.ClickHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleLongPress$0(view);
                }
            };
            this.longPressCallback = runnable;
            view.postDelayed(runnable, this.delegate.getLongPressDuration());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scheduleLongPress$0(View view) {
        if ((this.flags & 2) != 0) {
            boolean zOnLongPressRequestedAt = this.delegate.onLongPressRequestedAt(view, this.startX, this.startY);
            int i = this.flags;
            if (zOnLongPressRequestedAt) {
                this.flags = i & (-3);
                this.longPressCallback = null;
                onLongPress(view, this.startX, this.startY);
                return;
            }
            this.flags = i | 8;
        }
    }

    public final void onLongPress(View view, float f, float f2) {
        this.longPressX = f;
        this.longPressY = f2;
        if (this.delegate.ignoreHapticFeedbackSettings(f, f2)) {
            ViewUtils.hapticVibrate(view, true, this.delegate.forceEnableVibration());
        } else {
            view.performHapticFeedback(0);
        }
        this.flags = (this.flags | 4) & (-11);
        this.longPressCallback = null;
    }

    public boolean onTouchEvent(View view, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            resetTouch(view, x, y);
            if ((this.regionSet && (x < this.left || x > this.right || y < this.top || y > this.bottom)) || !this.delegate.needClickAt(view, x, y)) {
                return false;
            }
            this.flags |= 1;
            this.startX = x;
            this.startY = y;
            this.delegate.onClickTouchDown(view, x, y);
            if (this.delegate.needLongPress(x, y)) {
                scheduleLongPress(view);
            }
            return true;
        }
        if (action == 1) {
            int i = this.flags;
            if ((i & 1) != 0) {
                int i2 = i & 4;
                Delegate delegate = this.delegate;
                if (i2 != 0) {
                    delegate.onLongPressFinish(view, x, y);
                    this.flags &= -5;
                } else {
                    delegate.onClickAt(view, x, y);
                    if ((this.flags & 256) == 0) {
                        ViewUtils.onClick(view);
                    }
                }
                resetTouch(view, x, y);
                return true;
            }
        } else if (action != 2) {
            if (action == 3 && (this.flags & 1) != 0) {
                resetTouch(view, x, y);
                return true;
            }
        } else if ((this.flags & 1) != 0) {
            this.delegate.onClickTouchMove(view, x, y);
            int i3 = this.flags & 4;
            Delegate delegate2 = this.delegate;
            if (i3 != 0) {
                delegate2.onLongPressMove(view, motionEvent, x, y, this.longPressX, this.longPressY);
            } else if (delegate2.needCancelTouchBySlopMove() && Math.max(Math.abs(this.startX - x), Math.abs(this.startY - y)) > ViewConfiguration.get(view.getContext()).getScaledTouchSlop() * 1.89f) {
                resetTouch(view, x, y);
            }
            return true;
        }
        return (this.flags & 1) != 0;
    }
}
