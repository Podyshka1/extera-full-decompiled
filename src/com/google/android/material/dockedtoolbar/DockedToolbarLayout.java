package com.google.android.material.dockedtoolbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.TintTypedArray;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C1349R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes5.dex */
public class DockedToolbarLayout extends FrameLayout {
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Material3_DockedToolbar;
    private static final String TAG = "DockedToolbarLayout";
    private Boolean paddingBottomSystemWindowInsets;
    private Boolean paddingTopSystemWindowInsets;

    public DockedToolbarLayout(Context context) {
        this(context, null);
    }

    public DockedToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.dockedToolbarStyle);
    }

    public DockedToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, DEF_STYLE_RES);
    }

    public DockedToolbarLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C1349R.styleable.DockedToolbar, i, i2, new int[0]);
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.DockedToolbar_backgroundTint)) {
            int color = tintTypedArrayObtainTintedStyledAttributes.getColor(C1349R.styleable.DockedToolbar_backgroundTint, 0);
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build());
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(color));
            setBackground(materialShapeDrawable);
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.DockedToolbar_paddingTopSystemWindowInsets)) {
            this.paddingTopSystemWindowInsets = Boolean.valueOf(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.DockedToolbar_paddingTopSystemWindowInsets, true));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.DockedToolbar_paddingBottomSystemWindowInsets)) {
            this.paddingBottomSystemWindowInsets = Boolean.valueOf(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.DockedToolbar_paddingBottomSystemWindowInsets, true));
        }
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.dockedtoolbar.DockedToolbarLayout.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                if (DockedToolbarLayout.this.paddingTopSystemWindowInsets != null && DockedToolbarLayout.this.paddingBottomSystemWindowInsets != null && !DockedToolbarLayout.this.paddingTopSystemWindowInsets.booleanValue() && !DockedToolbarLayout.this.paddingBottomSystemWindowInsets.booleanValue()) {
                    return windowInsetsCompat;
                }
                Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.ime());
                int i3 = insets.bottom;
                int i4 = insets.top;
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                int i5 = (DockedToolbarLayout.this.hasGravity(layoutParams, 48) && DockedToolbarLayout.this.paddingTopSystemWindowInsets == null && DockedToolbarLayout.this.getFitsSystemWindows()) ? i4 : 0;
                int i6 = (DockedToolbarLayout.this.hasGravity(layoutParams, 80) && DockedToolbarLayout.this.paddingBottomSystemWindowInsets == null && DockedToolbarLayout.this.getFitsSystemWindows()) ? i3 : 0;
                if (DockedToolbarLayout.this.paddingBottomSystemWindowInsets != null) {
                    if (!DockedToolbarLayout.this.paddingBottomSystemWindowInsets.booleanValue()) {
                        i3 = 0;
                    }
                    i6 = i3;
                }
                if (DockedToolbarLayout.this.paddingTopSystemWindowInsets != null) {
                    if (!DockedToolbarLayout.this.paddingTopSystemWindowInsets.booleanValue()) {
                        i4 = 0;
                    }
                    i5 = i4;
                }
                relativePadding.top += i5;
                relativePadding.bottom += i6;
                relativePadding.applyToView(view);
                return windowInsetsCompat;
            }
        });
        setImportantForAccessibility(1);
        tintTypedArrayObtainTintedStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasGravity(ViewGroup.LayoutParams layoutParams, int i) {
        return layoutParams instanceof CoordinatorLayout.LayoutParams ? (((CoordinatorLayout.LayoutParams) layoutParams).gravity & i) == i : (layoutParams instanceof FrameLayout.LayoutParams) && (((FrameLayout.LayoutParams) layoutParams).gravity & i) == i;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            int childCount = getChildCount();
            int iMax = Math.max(getMeasuredHeight(), getSuggestedMinimumHeight() + getPaddingTop() + getPaddingBottom());
            for (int i3 = 0; i3 < childCount; i3++) {
                measureChild(getChildAt(i3), i, View.MeasureSpec.makeMeasureSpec(iMax, TLObject.FLAG_30));
            }
            setMeasuredDimension(getMeasuredWidth(), iMax);
        }
    }
}
