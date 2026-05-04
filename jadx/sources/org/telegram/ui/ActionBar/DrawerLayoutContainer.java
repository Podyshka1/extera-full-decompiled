package org.telegram.ui.ActionBar;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.drawer.DrawerContainer;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class DrawerLayoutContainer extends FrameLayout {
    public boolean allowDrawContent;
    private final Paint backgroundPaint;
    private int behindKeyboardColor;
    private boolean drawCurrentPreviewFragmentAbove;
    private DrawerContainer drawerContainer;
    private boolean firstLayout;
    private boolean hasCutout;
    private int imeHeight;
    private boolean inLayout;
    private final Paint internalNavbarPaint;
    private boolean keyboardVisibility;
    private WindowInsetsCompat lastWindowInsetsCompat;
    private INavigationLayout parentActionBarLayout;
    private BitmapDrawable previewBlurDrawable;
    private float previewStartY;

    public DrawerLayoutContainer(Context context) {
        super(context);
        this.backgroundPaint = new Paint();
        this.allowDrawContent = true;
        this.firstLayout = true;
        this.internalNavbarPaint = new Paint(1);
        setDescendantFocusability(262144);
        setFocusableInTouchMode(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ActionBar.DrawerLayoutContainer$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.lambda$new$0(view, windowInsetsCompat);
            }
        });
        setSystemUiVisibility(1280);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$new$0(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            boolean zIsVisible = windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime());
            int i2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom;
            if (this.keyboardVisibility != zIsVisible || this.imeHeight != i2) {
                this.keyboardVisibility = zIsVisible;
                this.imeHeight = i2;
                requestLayout();
            }
        }
        DrawerLayoutContainer drawerLayoutContainer = (DrawerLayoutContainer) view;
        if (AndroidUtilities.statusBarHeight != windowInsetsCompat.getSystemWindowInsetTop()) {
            drawerLayoutContainer.requestLayout();
        }
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if ((systemWindowInsetTop != 0 || AndroidUtilities.isInMultiwindow || this.firstLayout) && AndroidUtilities.statusBarHeight != systemWindowInsetTop) {
            AndroidUtilities.statusBarHeight = systemWindowInsetTop;
        }
        boolean z = false;
        this.firstLayout = false;
        drawerLayoutContainer.setWillNotDraw(windowInsetsCompat.getSystemWindowInsetTop() <= 0 && getBackground() == null);
        if (i >= 28) {
            DisplayCutoutCompat displayCutout = windowInsetsCompat.getDisplayCutout();
            if (displayCutout != null && !displayCutout.getBoundingRects().isEmpty()) {
                z = true;
            }
            this.hasCutout = z;
        }
        invalidate();
        return onApplyWindowInsets(view, windowInsetsCompat);
    }

    public void setParentActionBarLayout(INavigationLayout iNavigationLayout) {
        this.parentActionBarLayout = iNavigationLayout;
    }

    public INavigationLayout getParentActionBarLayout() {
        return this.parentActionBarLayout;
    }

    public void setDrawerContainer(DrawerContainer drawerContainer) {
        DrawerContainer drawerContainer2 = this.drawerContainer;
        if (drawerContainer2 == drawerContainer) {
            return;
        }
        if (drawerContainer2 != null) {
            drawerContainer2.dispose();
            removeView(this.drawerContainer);
        }
        this.drawerContainer = drawerContainer;
        if (drawerContainer != null) {
            addView(drawerContainer, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public DrawerContainer getDrawerContainer() {
        return this.drawerContainer;
    }

    public void setAllowDrawContent(boolean z) {
        if (this.allowDrawContent != z) {
            this.allowDrawContent = z;
            invalidate();
        }
    }

    public boolean isDrawCurrentPreviewFragmentAbove() {
        return this.drawCurrentPreviewFragmentAbove;
    }

    public void setDrawCurrentPreviewFragmentAbove(boolean z) {
        if (this.drawCurrentPreviewFragmentAbove != z) {
            this.drawCurrentPreviewFragmentAbove = z;
            if (z) {
                createBlurDrawable();
            } else {
                this.previewStartY = 0.0f;
                this.previewBlurDrawable = null;
            }
            invalidate();
        }
    }

    private void createBlurDrawable() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i = (int) (measuredWidth / 6.0f);
        int i2 = (int) (measuredHeight / 6.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.scale(0.16666667f, 0.16666667f);
        super.dispatchDraw(canvas);
        Utilities.stackBlurBitmap(bitmapCreateBitmap, Math.max(7, Math.max(i, i2) / 180));
        BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
        this.previewBlurDrawable = bitmapDrawable;
        bitmapDrawable.setBounds(0, 0, measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        DrawerContainer drawerContainer = this.drawerContainer;
        return drawerContainer != null && drawerContainer.handleEdgeSwipeTouch(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        DrawerContainer drawerContainer = this.drawerContainer;
        if (drawerContainer != null && drawerContainer.getVisibility() == 0) {
            return false;
        }
        DrawerContainer drawerContainer2 = this.drawerContainer;
        if (drawerContainer2 != null && drawerContainer2.handleEdgeSwipeIntercept(motionEvent)) {
            return true;
        }
        INavigationLayout iNavigationLayout = this.parentActionBarLayout;
        return iNavigationLayout != null && iNavigationLayout.checkTransitionAnimation();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) throws Exception {
        this.inLayout = true;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                try {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin + getPaddingTop(), layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight() + getPaddingTop());
                } catch (Exception e) {
                    FileLog.m955e(e);
                    if (BuildVars.DEBUG_VERSION) {
                        throw e;
                    }
                }
            }
        }
        this.inLayout = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.inLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        int i3 = (size2 - AndroidUtilities.statusBarHeight) - AndroidUtilities.navigationBarHeight;
        if (i3 > 0 && i3 < 4096) {
            AndroidUtilities.displaySize.y = i3;
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((size - layoutParams.leftMargin) - layoutParams.rightMargin, TLObject.FLAG_30);
                int i5 = layoutParams.height;
                if (i5 > 0) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30);
                } else {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((size2 - layoutParams.topMargin) - layoutParams.bottomMargin, TLObject.FLAG_30);
                }
                if ((childAt instanceof ActionBarLayout) && ((ActionBarLayout) childAt).storyViewerAttached()) {
                    childAt.forceLayout();
                }
                childAt.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
            }
        }
    }

    public void setBehindKeyboardColor(int i) {
        this.behindKeyboardColor = i;
        invalidate();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (this.allowDrawContent) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        INavigationLayout iNavigationLayout;
        super.dispatchDraw(canvas);
        if (!this.drawCurrentPreviewFragmentAbove || (iNavigationLayout = this.parentActionBarLayout) == null) {
            return;
        }
        BitmapDrawable bitmapDrawable = this.previewBlurDrawable;
        if (bitmapDrawable != null) {
            bitmapDrawable.setAlpha((int) (iNavigationLayout.getCurrentPreviewFragmentAlpha() * 255.0f));
            this.previewBlurDrawable.draw(canvas);
        }
        this.parentActionBarLayout.drawCurrentPreviewFragment(canvas, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.drawCurrentPreviewFragmentAbove && this.parentActionBarLayout != null) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 2) {
                float f = this.previewStartY;
                if (f == 0.0f) {
                    this.previewStartY = motionEvent.getY();
                    MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
                    super.dispatchTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                } else {
                    this.parentActionBarLayout.movePreviewFragment(f - motionEvent.getY());
                }
            } else if (actionMasked == 1 || actionMasked == 6 || actionMasked == 3) {
                this.parentActionBarLayout.finishPreviewFragment();
            }
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Canvas canvas2;
        WindowInsetsCompat windowInsetsCompat = this.lastWindowInsetsCompat;
        if (windowInsetsCompat == null) {
            return;
        }
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime() | WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        if (insets.bottom > 0) {
            this.backgroundPaint.setColor(this.behindKeyboardColor);
            canvas.drawRect(0.0f, getMeasuredHeight() - insets.bottom, getMeasuredWidth(), getMeasuredHeight(), this.internalNavbarPaint);
            canvas2 = canvas;
        } else {
            canvas2 = canvas;
        }
        if (this.hasCutout) {
            this.backgroundPaint.setColor(-16777216);
            int i = insets.left;
            if (i != 0) {
                canvas2.drawRect(0.0f, 0.0f, i, getMeasuredHeight(), this.backgroundPaint);
            }
            int i2 = insets.right;
            if (i2 != 0) {
                canvas2.drawRect(i2, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.backgroundPaint);
            }
        }
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return this.drawCurrentPreviewFragmentAbove;
    }

    public Paint getInternalNavbarPaint() {
        return this.internalNavbarPaint;
    }

    public void setInternalNavigationBarColor(int i) {
        if (this.internalNavbarPaint.getColor() != i) {
            this.internalNavbarPaint.setColor(i);
            invalidate();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).invalidate();
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        WindowInsetsCompat windowInsetsCompat = this.lastWindowInsetsCompat;
        if (windowInsetsCompat != null) {
            dispatchApplyWindowInsetsInternal(view, windowInsetsCompat);
        }
    }

    private void dispatchApplyWindowInsetsInternal(View view, WindowInsetsCompat windowInsetsCompat) {
        if ((view instanceof ActionBarLayout) || view.getTag() == null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime() | WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
            if (marginLayoutParams.topMargin != 0 || marginLayoutParams.bottomMargin != 0 || marginLayoutParams.leftMargin != insets.left || marginLayoutParams.rightMargin != insets.right) {
                marginLayoutParams.leftMargin = insets.left;
                marginLayoutParams.topMargin = 0;
                marginLayoutParams.rightMargin = insets.right;
                marginLayoutParams.bottomMargin = 0;
                view.requestLayout();
            }
            ViewCompat.dispatchApplyWindowInsets(view, windowInsetsCompat.inset(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin));
        }
    }

    private WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.lastWindowInsetsCompat = windowInsetsCompat;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            dispatchApplyWindowInsetsInternal(getChildAt(i), windowInsetsCompat);
        }
        invalidate();
        return WindowInsetsCompat.CONSUMED;
    }
}
