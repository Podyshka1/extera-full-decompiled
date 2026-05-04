package com.google.android.material.floatingtoolbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C1349R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* JADX INFO: loaded from: classes5.dex */
public class FloatingToolbarLayout extends FrameLayout {
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Material3_FloatingToolbar;
    private static final String TAG = "FloatingToolbarLayout";
    private int bottomMarginWindowInset;
    private int leftMarginWindowInset;
    private boolean marginBottomSystemWindowInsets;
    private boolean marginLeftSystemWindowInsets;
    private boolean marginRightSystemWindowInsets;
    private boolean marginTopSystemWindowInsets;
    private Rect originalMargins;
    private int rightMarginWindowInset;
    private int topMarginWindowInset;

    public FloatingToolbarLayout(Context context) {
        this(context, null);
    }

    public FloatingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.floatingToolbarStyle);
    }

    public FloatingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, DEF_STYLE_RES);
    }

    public FloatingToolbarLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C1349R.styleable.FloatingToolbar, i, i2, new int[0]);
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.FloatingToolbar_backgroundTint)) {
            int color = tintTypedArrayObtainTintedStyledAttributes.getColor(C1349R.styleable.FloatingToolbar_backgroundTint, 0);
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build());
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(color));
            setBackground(materialShapeDrawable);
        }
        this.marginLeftSystemWindowInsets = tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.FloatingToolbar_marginLeftSystemWindowInsets, true);
        this.marginTopSystemWindowInsets = tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.FloatingToolbar_marginTopSystemWindowInsets, false);
        this.marginRightSystemWindowInsets = tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.FloatingToolbar_marginRightSystemWindowInsets, true);
        this.marginBottomSystemWindowInsets = tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.FloatingToolbar_marginBottomSystemWindowInsets, true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.floatingtoolbar.FloatingToolbarLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                if (!FloatingToolbarLayout.this.marginLeftSystemWindowInsets && !FloatingToolbarLayout.this.marginRightSystemWindowInsets && !FloatingToolbarLayout.this.marginTopSystemWindowInsets && !FloatingToolbarLayout.this.marginBottomSystemWindowInsets) {
                    return windowInsetsCompat;
                }
                Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.ime());
                FloatingToolbarLayout.this.bottomMarginWindowInset = insets.bottom;
                FloatingToolbarLayout.this.topMarginWindowInset = insets.top;
                FloatingToolbarLayout.this.rightMarginWindowInset = insets.right;
                FloatingToolbarLayout.this.leftMarginWindowInset = insets.left;
                FloatingToolbarLayout.this.updateMargins();
                return windowInsetsCompat;
            }
        });
        tintTypedArrayObtainTintedStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMargins() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Rect rect = this.originalMargins;
        if (rect == null) {
            Log.w(TAG, "Unable to update margins because original view margins are not set");
            return;
        }
        int i = rect.left + (this.marginLeftSystemWindowInsets ? this.leftMarginWindowInset : 0);
        int i2 = rect.right + (this.marginRightSystemWindowInsets ? this.rightMarginWindowInset : 0);
        int i3 = rect.top + (this.marginTopSystemWindowInsets ? this.topMarginWindowInset : 0);
        int i4 = rect.bottom + (this.marginBottomSystemWindowInsets ? this.bottomMarginWindowInset : 0);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (marginLayoutParams.bottomMargin == i4 && marginLayoutParams.leftMargin == i && marginLayoutParams.rightMargin == i2 && marginLayoutParams.topMargin == i3) {
            return;
        }
        marginLayoutParams.bottomMargin = i4;
        marginLayoutParams.leftMargin = i;
        marginLayoutParams.rightMargin = i2;
        marginLayoutParams.topMargin = i3;
        requestLayout();
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.originalMargins = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            updateMargins();
            return;
        }
        this.originalMargins = null;
    }
}
