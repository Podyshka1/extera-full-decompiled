package com.google.android.material.loadingindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.R$attr;
import com.google.android.material.C1349R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.progressindicator.AnimatorDurationScaleProvider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.Arrays;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
public final class LoadingIndicator extends View implements Drawable.Callback {
    static final int DEF_STYLE_RES = C1349R.style.Widget_Material3_LoadingIndicator;
    static final int MAX_HIDE_DELAY = 1000;
    private final Runnable delayedHide;
    private final Runnable delayedShow;
    private final LoadingIndicatorDrawable drawable;
    private long lastShowStartTime;
    private final int minHideDelay;
    private final int showDelay;
    private final LoadingIndicatorSpec specs;

    public LoadingIndicator(Context context) {
        this(context, null);
    }

    public LoadingIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.loadingIndicatorStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LoadingIndicator(Context context, AttributeSet attributeSet, int i) {
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.lastShowStartTime = -1L;
        this.delayedShow = new Runnable() { // from class: com.google.android.material.loadingindicator.LoadingIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingIndicator.this.internalShow();
            }
        };
        this.delayedHide = new Runnable() { // from class: com.google.android.material.loadingindicator.LoadingIndicator.2
            @Override // java.lang.Runnable
            public void run() {
                LoadingIndicator.this.internalHide();
                LoadingIndicator.this.lastShowStartTime = -1L;
            }
        };
        Context context2 = getContext();
        LoadingIndicatorDrawable loadingIndicatorDrawableCreate = LoadingIndicatorDrawable.create(context2, new LoadingIndicatorSpec(context2, attributeSet, i));
        this.drawable = loadingIndicatorDrawableCreate;
        loadingIndicatorDrawableCreate.setCallback(this);
        this.specs = loadingIndicatorDrawableCreate.getDrawingDelegate().specs;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1349R.styleable.LoadingIndicator, i, i2, new int[0]);
        this.showDelay = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.LoadingIndicator_showDelay, -1);
        this.minHideDelay = Math.min(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.LoadingIndicator_minHideDelay, -1), 1000);
        typedArrayObtainStyledAttributes.recycle();
        setAnimatorDurationScaleProvider(new AnimatorDurationScaleProvider());
    }

    public void show() {
        if (this.showDelay > 0) {
            removeCallbacks(this.delayedShow);
            postDelayed(this.delayedShow, this.showDelay);
        } else {
            this.delayedShow.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalShow() {
        if (this.minHideDelay > 0) {
            this.lastShowStartTime = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    public void hide() {
        if (getVisibility() != 0) {
            removeCallbacks(this.delayedShow);
            return;
        }
        removeCallbacks(this.delayedHide);
        long jUptimeMillis = SystemClock.uptimeMillis() - this.lastShowStartTime;
        int i = this.minHideDelay;
        if (jUptimeMillis >= i) {
            this.delayedHide.run();
        } else {
            postDelayed(this.delayedHide, ((long) i) - jUptimeMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalHide() {
        getDrawable().setVisible(false, false, true);
        if (getDrawable().isVisible()) {
            return;
        }
        setVisibility(4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        LoadingIndicatorDrawingDelegate drawingDelegate = this.drawable.getDrawingDelegate();
        int preferredWidth = drawingDelegate.getPreferredWidth() + getPaddingLeft() + getPaddingRight();
        int preferredHeight = drawingDelegate.getPreferredHeight() + getPaddingTop() + getPaddingBottom();
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(size, preferredWidth), TLObject.FLAG_30);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(preferredWidth, TLObject.FLAG_30);
        }
        if (mode2 == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(size2, preferredHeight), TLObject.FLAG_30);
        } else if (mode2 == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(preferredHeight, TLObject.FLAG_30);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iSave = canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
        }
        this.drawable.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.drawable.setBounds(0, 0, i, i2);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.drawable.setVisible(visibleToUser(), false, i == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.drawable.setVisible(visibleToUser(), false, i == 0);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (visibleToUser()) {
            internalShow();
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidate();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return ProgressBar.class.getName();
    }

    boolean visibleToUser() {
        return isAttachedToWindow() && getWindowVisibility() == 0 && isEffectivelyVisible();
    }

    boolean isEffectivelyVisible() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    public LoadingIndicatorDrawable getDrawable() {
        return this.drawable;
    }

    public void setIndicatorSize(int i) {
        LoadingIndicatorSpec loadingIndicatorSpec = this.specs;
        if (loadingIndicatorSpec.indicatorSize != i) {
            loadingIndicatorSpec.indicatorSize = i;
            requestLayout();
            invalidate();
        }
    }

    public int getIndicatorSize() {
        return this.specs.indicatorSize;
    }

    public void setContainerWidth(int i) {
        LoadingIndicatorSpec loadingIndicatorSpec = this.specs;
        if (loadingIndicatorSpec.containerWidth != i) {
            loadingIndicatorSpec.containerWidth = i;
            requestLayout();
            invalidate();
        }
    }

    public int getContainerWidth() {
        return this.specs.containerWidth;
    }

    public void setContainerHeight(int i) {
        LoadingIndicatorSpec loadingIndicatorSpec = this.specs;
        if (loadingIndicatorSpec.containerHeight != i) {
            loadingIndicatorSpec.containerHeight = i;
            requestLayout();
            invalidate();
        }
    }

    public int getContainerHeight() {
        return this.specs.containerHeight;
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{MaterialColors.getColor(getContext(), R$attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.specs.indicatorColors = iArr;
        this.drawable.getAnimatorDelegate().invalidateSpecValues();
        invalidate();
    }

    public int[] getIndicatorColor() {
        return this.specs.indicatorColors;
    }

    public void setContainerColor(int i) {
        LoadingIndicatorSpec loadingIndicatorSpec = this.specs;
        if (loadingIndicatorSpec.containerColor != i) {
            loadingIndicatorSpec.containerColor = i;
            invalidate();
        }
    }

    public int getContainerColor() {
        return this.specs.containerColor;
    }

    public void setAnimatorDurationScaleProvider(AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.drawable.animatorDurationScaleProvider = animatorDurationScaleProvider;
    }
}
