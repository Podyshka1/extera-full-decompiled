package org.telegram.p029ui.bots;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BotCommandsMenuContainer extends FrameLayout {
    private BlurredBackgroundDrawable backgroundDrawable;
    private float containerY;
    private ObjectAnimator currentAnimation;
    boolean dismissed;
    private boolean entering;
    public RecyclerListView listView;
    private NestedScrollingParentHelper nestedScrollingParentHelper;
    float scrollYOffset;
    Paint topBackground;

    protected void onDismiss() {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    public BotCommandsMenuContainer(Context context) {
        super(context);
        this.currentAnimation = null;
        this.topBackground = new Paint(1);
        this.dismissed = true;
        this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.bots.BotCommandsMenuContainer.1
            @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (BotCommandsMenuContainer.this.listView.getLayoutManager() == null || BotCommandsMenuContainer.this.listView.getAdapter() == null || BotCommandsMenuContainer.this.listView.getAdapter().getItemCount() == 0) {
                    super.dispatchDraw(canvas);
                    return;
                }
                float fM1124dp = BotCommandsMenuContainer.this.scrollYOffset - AndroidUtilities.m1124dp(8.0f);
                BotCommandsMenuContainer.this.containerY = fM1124dp - AndroidUtilities.m1124dp(16.0f);
                if (BotCommandsMenuContainer.this.backgroundDrawable != null) {
                    BotCommandsMenuContainer.this.backgroundDrawable.draw(canvas);
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set((getMeasuredWidth() / 2.0f) - AndroidUtilities.m1124dp(12.0f), fM1124dp - AndroidUtilities.m1124dp(4.0f), (getMeasuredWidth() / 2.0f) + AndroidUtilities.m1124dp(12.0f), fM1124dp);
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), BotCommandsMenuContainer.this.topBackground);
                super.dispatchDraw(canvas);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOverScrollMode(2);
        this.listView.setClipToPadding(false);
        this.listView.setClipToOutline(true);
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.bots.BotCommandsMenuContainer.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                View viewFindViewByPosition = BotCommandsMenuContainer.this.listView.getLayoutManager().findViewByPosition(0);
                float y = viewFindViewByPosition != null ? viewFindViewByPosition.getY() : 0.0f;
                float f = y >= 0.0f ? y : 0.0f;
                BotCommandsMenuContainer botCommandsMenuContainer = BotCommandsMenuContainer.this;
                botCommandsMenuContainer.scrollYOffset = f;
                botCommandsMenuContainer.checkBackgroundBounds();
            }
        });
        addView(this.listView);
        updateColors();
        setClipChildren(false);
    }

    public float clipBottom() {
        if (this.dismissed) {
            return 0.0f;
        }
        return Math.max(0.0f, getMeasuredHeight() - (this.containerY + this.listView.getTranslationY()));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return !this.dismissed && i == 2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        if (this.dismissed) {
            return;
        }
        cancelCurrentAnimation();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        this.nestedScrollingParentHelper.onStopNestedScroll(view);
        if (this.dismissed) {
            return;
        }
        checkDismiss();
    }

    private void checkDismiss() {
        if (this.dismissed) {
            return;
        }
        if (this.listView.getTranslationY() > AndroidUtilities.m1124dp(16.0f)) {
            dismiss();
        } else {
            playEnterAnim(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        if (this.dismissed) {
            return;
        }
        cancelCurrentAnimation();
        if (i4 != 0) {
            float translationY = this.listView.getTranslationY() - i4;
            if (translationY < 0.0f) {
                translationY = 0.0f;
            }
            this.listView.setTranslationY(translationY);
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (this.dismissed) {
            return;
        }
        cancelCurrentAnimation();
        float translationY = this.listView.getTranslationY();
        if (translationY <= 0.0f || i2 <= 0) {
            return;
        }
        float f = translationY - i2;
        iArr[1] = i2;
        this.listView.setTranslationY(f >= 0.0f ? f : 0.0f);
        invalidate();
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.nestedScrollingParentHelper.getNestedScrollAxes();
    }

    private void cancelCurrentAnimation() {
        ObjectAnimator objectAnimator = this.currentAnimation;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.currentAnimation.cancel();
            this.currentAnimation = null;
        }
    }

    public void show() {
        if (getVisibility() != 0) {
            setVisibility(0);
            this.listView.scrollToPosition(0);
            this.entering = true;
            this.dismissed = false;
            return;
        }
        if (this.dismissed) {
            this.dismissed = false;
            cancelCurrentAnimation();
            playEnterAnim(false);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.entering && !this.dismissed) {
            this.listView.setTranslationY((r2.getMeasuredHeight() - this.listView.getPaddingTop()) + AndroidUtilities.m1124dp(16.0f));
            playEnterAnim(true);
            this.entering = false;
        }
        checkBackgroundBounds();
    }

    public RecyclerListView getListView() {
        return this.listView;
    }

    private void playEnterAnim(boolean z) {
        if (this.dismissed) {
            return;
        }
        RecyclerListView recyclerListView = this.listView;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(recyclerListView, (Property<RecyclerListView, Float>) FrameLayout.TRANSLATION_Y, recyclerListView.getTranslationY(), 0.0f);
        this.currentAnimation = objectAnimatorOfFloat;
        if (z) {
            objectAnimatorOfFloat.setDuration(320L);
            this.currentAnimation.setInterpolator(new OvershootInterpolator(0.8f));
        } else {
            objectAnimatorOfFloat.setDuration(150L);
            this.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        }
        this.currentAnimation.start();
    }

    public void dismiss() {
        if (this.dismissed) {
            return;
        }
        this.dismissed = true;
        cancelCurrentAnimation();
        RecyclerListView recyclerListView = this.listView;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(recyclerListView, (Property<RecyclerListView, Float>) FrameLayout.TRANSLATION_Y, recyclerListView.getTranslationY(), (getMeasuredHeight() - this.scrollYOffset) + AndroidUtilities.m1124dp(40.0f));
        this.currentAnimation = objectAnimatorOfFloat;
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.bots.BotCommandsMenuContainer.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BotCommandsMenuContainer.this.setVisibility(8);
                BotCommandsMenuContainer.this.currentAnimation = null;
            }
        });
        this.currentAnimation.setDuration(150L);
        this.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.currentAnimation.start();
        onDismiss();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || motionEvent.getY() >= this.scrollYOffset - AndroidUtilities.m1124dp(24.0f)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    public void updateColors() {
        this.topBackground.setColor(Theme.getColor(Theme.key_sheet_scrollUp));
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.updateColors();
        }
        invalidate();
    }

    public void setBackgroundDrawable(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.backgroundDrawable = blurredBackgroundDrawable;
        blurredBackgroundDrawable.setRadius(AndroidUtilities.m1124dp(22.0f));
        this.backgroundDrawable.setPadding(AndroidUtilities.m1124dp(5.0f));
        this.listView.setOutlineProvider(blurredBackgroundDrawable.getViewOutlineProvider());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBackgroundBounds() {
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.setBounds(0, ((int) this.scrollYOffset) - AndroidUtilities.m1124dp(25.0f), getMeasuredWidth(), getMeasuredHeight() + AndroidUtilities.m1124dp(5.0f));
            this.listView.invalidateOutline();
            this.listView.invalidate();
        }
    }
}
