package com.google.android.material.overflow;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.PopupMenu;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.TooltipCompat;
import com.google.android.material.C1349R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonGroup;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class OverflowLinearLayout extends LinearLayout {
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Material3_OverflowLinearLayout;
    private final MaterialButton overflowButton;
    private boolean overflowButtonAdded;
    private final Set<View> overflowViews;

    public OverflowLinearLayout(Context context) {
        this(context, null);
    }

    public OverflowLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.overflowLinearLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public OverflowLinearLayout(Context context, AttributeSet attributeSet, int i) {
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.overflowButtonAdded = false;
        this.overflowViews = new LinkedHashSet();
        Context context2 = getContext();
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C1349R.styleable.OverflowLinearLayout, i, i2, new int[0]);
        Drawable drawable = tintTypedArrayObtainTintedStyledAttributes.getDrawable(C1349R.styleable.OverflowLinearLayout_overflowButtonIcon);
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        MaterialButton materialButton = (MaterialButton) LayoutInflater.from(context2).inflate(C1349R.layout.m3_overflow_linear_layout_overflow_button, (ViewGroup) this, false);
        this.overflowButton = materialButton;
        TooltipCompat.setTooltipText(materialButton, getResources().getString(C1349R.string.m3_overflow_linear_layout_button_tooltip_text));
        setOverflowButtonIcon(drawable);
        if (materialButton.getContentDescription() == null) {
            materialButton.setContentDescription(context2.getString(C1349R.string.m3_overflow_linear_layout_button_content_description));
        }
        final PopupMenu popupMenu = new PopupMenu(getContext(), materialButton, 17, 0, MaterialAttributes.resolveOrThrow(this, C1349R.attr.overflowLinearLayoutPopupMenuStyle));
        final int dimensionPixelOffset = context2.getResources().getDimensionPixelOffset(C1349R.dimen.m3_overflow_item_icon_horizontal_padding);
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.overflow.OverflowLinearLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.handleOverflowButtonClick(popupMenu, dimensionPixelOffset);
            }
        });
    }

    public boolean isOverflowed() {
        return !this.overflowViews.isEmpty();
    }

    public Set<View> getOverflowedViews() {
        return this.overflowViews;
    }

    public void setOverflowButtonIcon(Drawable drawable) {
        this.overflowButton.setIcon(drawable);
    }

    public void setOverflowButtonIconResource(int i) {
        this.overflowButton.setIconResource(i);
    }

    public Drawable getOverflowButtonIcon() {
        return this.overflowButton.getIcon();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size;
        boolean z = getOrientation() == 0;
        int childCount = this.overflowButtonAdded ? getChildCount() - 1 : getChildCount();
        if (z) {
            size = View.MeasureSpec.getSize(i);
        } else {
            size = View.MeasureSpec.getSize(i2);
        }
        int overflowButtonSize = getOverflowButtonSize(z, this.overflowButton, i, i2);
        this.overflowButton.setVisibility(8);
        this.overflowViews.clear();
        int i3 = 0;
        int childSize = 0;
        while (true) {
            if (i3 < childCount) {
                View childAt = getChildAt(i3);
                childAt.setVisibility(0);
                childSize += getChildSize(z, childAt, i, i2);
                if (childSize + overflowButtonSize > size) {
                    this.overflowViews.add(childAt);
                }
                if (childSize > size) {
                    for (int i4 = i3 + 1; i4 < childCount; i4++) {
                        this.overflowViews.add(getChildAt(i4));
                    }
                    Iterator<View> it = this.overflowViews.iterator();
                    while (it.hasNext()) {
                        it.next().setVisibility(8);
                    }
                    if (!this.overflowButtonAdded) {
                        addView(this.overflowButton);
                        this.overflowButtonAdded = true;
                    }
                    this.overflowButton.setVisibility(0);
                } else {
                    i3++;
                }
            } else {
                this.overflowButton.setVisibility(8);
                this.overflowViews.clear();
                break;
            }
        }
        super.onMeasure(i, i2);
    }

    private int getChildSize(boolean z, View view, int i, int i2) {
        int measuredHeight;
        int i3;
        int minimumHeight;
        int i4;
        measureChild(view, i, i2);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (z) {
            measuredHeight = view.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
            i3 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
        } else {
            measuredHeight = view.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin;
            i3 = ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
        }
        int i5 = measuredHeight + i3;
        if (i5 != 0) {
            return i5;
        }
        if (z) {
            minimumHeight = view.getMinimumWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
            i4 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
        } else {
            minimumHeight = view.getMinimumHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin;
            i4 = ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
        }
        return minimumHeight + i4;
    }

    private int getOverflowButtonSize(boolean z, View view, int i, int i2) {
        int measuredHeight;
        int i3;
        measureChild(view, i, i2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (z) {
            measuredHeight = view.getMeasuredWidth() + layoutParams.leftMargin;
            i3 = layoutParams.rightMargin;
        } else {
            measuredHeight = view.getMeasuredHeight() + layoutParams.topMargin;
            i3 = layoutParams.bottomMargin;
        }
        return measuredHeight + i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOverflowButtonClick(PopupMenu popupMenu, int i) {
        int i2;
        popupMenu.getMenu().clear();
        popupMenu.setForceShowIcon(true);
        for (final View view : this.overflowViews) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            final MenuItem menuItemAdd = popupMenu.getMenu().add(MaterialButtonGroup.OverflowUtils.getMenuItemText(view, layoutParams.overflowText));
            Drawable drawable = layoutParams.overflowIcon;
            if (drawable != null) {
                i2 = i;
                menuItemAdd.setIcon(new InsetDrawable(drawable, i2, 0, i, 0));
            } else {
                i2 = i;
            }
            if (view instanceof MaterialButton) {
                MaterialButton materialButton = (MaterialButton) view;
                menuItemAdd.setCheckable(materialButton.isCheckable());
                menuItemAdd.setChecked(materialButton.isChecked());
            }
            menuItemAdd.setEnabled(view.isEnabled());
            menuItemAdd.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.android.material.overflow.OverflowLinearLayout$$ExternalSyntheticLambda0
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    return OverflowLinearLayout.$r8$lambda$1s1OaeEBNkKDR2VYkF28_VV0Jtk(view, menuItemAdd, menuItem);
                }
            });
            i = i2;
        }
        popupMenu.show();
    }

    public static /* synthetic */ boolean $r8$lambda$1s1OaeEBNkKDR2VYkF28_VV0Jtk(View view, MenuItem menuItem, MenuItem menuItem2) {
        view.performClick();
        if (menuItem.isCheckable()) {
            menuItem.setChecked(!menuItem.isChecked());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        if (getOrientation() == 0) {
            return new LayoutParams(-2, -2);
        }
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams(layoutParams);
        }
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public Drawable overflowIcon;
        public CharSequence overflowText;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.overflowIcon = null;
            this.overflowText = null;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1349R.styleable.OverflowLinearLayout_Layout);
            this.overflowIcon = typedArrayObtainStyledAttributes.getDrawable(C1349R.styleable.OverflowLinearLayout_Layout_layout_overflowIcon);
            this.overflowText = typedArrayObtainStyledAttributes.getText(C1349R.styleable.OverflowLinearLayout_Layout_layout_overflowText);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.overflowIcon = null;
            this.overflowText = null;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
            this.overflowIcon = null;
            this.overflowText = null;
        }

        public LayoutParams(int i, int i2, float f, Drawable drawable, CharSequence charSequence) {
            super(i, i2, f);
            this.overflowIcon = drawable;
            this.overflowText = charSequence;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.overflowIcon = null;
            this.overflowText = null;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.overflowIcon = null;
            this.overflowText = null;
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.overflowIcon = null;
            this.overflowText = null;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.overflowIcon = null;
            this.overflowText = null;
            this.overflowText = layoutParams.overflowText;
            this.overflowIcon = layoutParams.overflowIcon;
        }
    }
}
