package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1339R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NavigationBarView extends FrameLayout {
    public static final int ACTIVE_INDICATOR_WIDTH_MATCH_PARENT = -1;
    public static final int ACTIVE_INDICATOR_WIDTH_WRAP_CONTENT = -2;
    public static final int ITEM_GRAVITY_CENTER = 17;
    public static final int ITEM_GRAVITY_START_CENTER = 8388627;
    public static final int ITEM_GRAVITY_TOP_CENTER = 49;
    public static final int ITEM_ICON_GRAVITY_START = 1;
    public static final int ITEM_ICON_GRAVITY_TOP = 0;
    public static final int LABEL_VISIBILITY_AUTO = -1;
    public static final int LABEL_VISIBILITY_LABELED = 1;
    public static final int LABEL_VISIBILITY_SELECTED = 0;
    public static final int LABEL_VISIBILITY_UNLABELED = 2;
    private static final int MENU_PRESENTER_ID = 1;
    private final NavigationBarMenu menu;
    private MenuInflater menuInflater;
    private final NavigationBarMenuView menuView;
    private final NavigationBarPresenter presenter;
    private OnItemReselectedListener reselectedListener;
    private OnItemSelectedListener selectedListener;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ItemGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ItemIconGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LabelVisibility {
    }

    public interface OnItemReselectedListener {
        void onNavigationItemReselected(MenuItem menuItem);
    }

    public interface OnItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public abstract NavigationBarMenuView createNavigationBarMenuView(Context context);

    public abstract int getMaxItemCount();

    public boolean isSubMenuSupported() {
        return false;
    }

    public boolean shouldAddMenuView() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0258  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NavigationBarView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.presenter = navigationBarPresenter;
        Context context2 = getContext();
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C1339R.styleable.NavigationBarView, i, i2, C1339R.styleable.NavigationBarView_itemTextAppearanceInactive, C1339R.styleable.NavigationBarView_itemTextAppearanceActive);
        NavigationBarMenu navigationBarMenu = new NavigationBarMenu(context2, getClass(), getMaxItemCount(), isSubMenuSupported());
        this.menu = navigationBarMenu;
        NavigationBarMenuView navigationBarMenuViewCreateNavigationBarMenuView = createNavigationBarMenuView(context2);
        this.menuView = navigationBarMenuViewCreateNavigationBarMenuView;
        navigationBarMenuViewCreateNavigationBarMenuView.setMinimumHeight(getSuggestedMinimumHeight());
        navigationBarMenuViewCreateNavigationBarMenuView.setCollapsedMaxItemCount(getCollapsedMaxItemCount());
        navigationBarPresenter.setMenuView(navigationBarMenuViewCreateNavigationBarMenuView);
        navigationBarPresenter.setId(1);
        navigationBarMenuViewCreateNavigationBarMenuView.setPresenter(navigationBarPresenter);
        navigationBarMenu.addMenuPresenter(navigationBarPresenter);
        navigationBarPresenter.initForMenu(getContext(), navigationBarMenu);
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_itemIconTint)) {
            navigationBarMenuViewCreateNavigationBarMenuView.setIconTintList(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(C1339R.styleable.NavigationBarView_itemIconTint));
        } else {
            navigationBarMenuViewCreateNavigationBarMenuView.setIconTintList(navigationBarMenuViewCreateNavigationBarMenuView.createDefaultColorStateList(R.attr.textColorSecondary));
        }
        setItemIconSize(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(C1339R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1339R.styleable.NavigationBarView_itemTextAppearanceInactive, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1339R.styleable.NavigationBarView_itemTextAppearanceActive, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_horizontalItemTextAppearanceInactive)) {
            setHorizontalItemTextAppearanceInactive(tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1339R.styleable.NavigationBarView_horizontalItemTextAppearanceInactive, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_horizontalItemTextAppearanceActive)) {
            setHorizontalItemTextAppearanceActive(tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1339R.styleable.NavigationBarView_horizontalItemTextAppearanceActive, 0));
        }
        setItemTextAppearanceActiveBoldEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1339R.styleable.NavigationBarView_itemTextAppearanceActiveBoldEnabled, true));
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_itemTextColor)) {
            setItemTextColor(tintTypedArrayObtainTintedStyledAttributes.getColorStateList(C1339R.styleable.NavigationBarView_itemTextColor));
        }
        Drawable background = getBackground();
        ColorStateList colorStateListOrNull = DrawableUtils.getColorStateListOrNull(background);
        if (background == null || colorStateListOrNull != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build());
            if (colorStateListOrNull != null) {
                materialShapeDrawable.setFillColor(colorStateListOrNull);
            }
            materialShapeDrawable.initializeElevationOverlay(context2);
            setBackground(materialShapeDrawable);
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_itemPaddingTop)) {
            setItemPaddingTop(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarView_itemPaddingTop, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_itemPaddingBottom)) {
            setItemPaddingBottom(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarView_itemPaddingBottom, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_activeIndicatorLabelPadding)) {
            setActiveIndicatorLabelPadding(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarView_activeIndicatorLabelPadding, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_iconLabelHorizontalSpacing)) {
            setIconLabelHorizontalSpacing(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarView_iconLabelHorizontalSpacing, 0));
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_elevation)) {
            setElevation(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarView_elevation, 0));
        }
        getBackground().mutate().setTintList(MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, C1339R.styleable.NavigationBarView_backgroundTint));
        int dimensionPixelSize = -1;
        setLabelVisibilityMode(tintTypedArrayObtainTintedStyledAttributes.getInteger(C1339R.styleable.NavigationBarView_labelVisibilityMode, -1));
        setItemIconGravity(tintTypedArrayObtainTintedStyledAttributes.getInteger(C1339R.styleable.NavigationBarView_itemIconGravity, 0));
        setItemGravity(tintTypedArrayObtainTintedStyledAttributes.getInteger(C1339R.styleable.NavigationBarView_itemGravity, 49));
        int resourceId = tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1339R.styleable.NavigationBarView_itemBackground, 0);
        if (resourceId != 0) {
            navigationBarMenuViewCreateNavigationBarMenuView.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, C1339R.styleable.NavigationBarView_itemRippleColor));
        }
        setMeasureBottomPaddingFromLabelBaseline(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1339R.styleable.NavigationBarView_measureBottomPaddingFromLabelBaseline, true));
        setLabelFontScalingEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1339R.styleable.NavigationBarView_labelFontScalingEnabled, false));
        setLabelMaxLines(tintTypedArrayObtainTintedStyledAttributes.getInteger(C1339R.styleable.NavigationBarView_labelMaxLines, 1));
        int resourceId2 = tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1339R.styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, C1339R.styleable.NavigationBarActiveIndicator);
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarActiveIndicator_android_width, 0);
            setItemActiveIndicatorWidth(dimensionPixelSize2);
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarActiveIndicator_android_height, 0));
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_marginHorizontal, 0);
            setItemActiveIndicatorMarginHorizontal(dimensionPixelOffset);
            String string = typedArrayObtainStyledAttributes.getString(C1339R.styleable.NavigationBarActiveIndicator_expandedWidth);
            if (string != null) {
                if (!String.valueOf(-1).equals(string)) {
                    if (!String.valueOf(-2).equals(string)) {
                        dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarActiveIndicator_expandedWidth, -2);
                    }
                }
                setItemActiveIndicatorExpandedWidth(dimensionPixelSize);
                setItemActiveIndicatorExpandedHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarActiveIndicator_expandedHeight, dimensionPixelSize2));
                setItemActiveIndicatorExpandedMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedMarginHorizontal, dimensionPixelOffset));
                int dimensionPixelSize3 = getResources().getDimensionPixelSize(C1339R.dimen.m3_navigation_item_leading_trailing_space);
                int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedActiveIndicatorPaddingStart, dimensionPixelSize3);
                int dimensionPixelOffset3 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedActiveIndicatorPaddingEnd, dimensionPixelSize3);
                setItemActiveIndicatorExpandedPadding(getLayoutDirection() != 1 ? dimensionPixelOffset3 : dimensionPixelOffset2, typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedActiveIndicatorPaddingTop, 0), getLayoutDirection() != 1 ? dimensionPixelOffset3 : dimensionPixelOffset2, typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.f281x19991881, 0));
                setItemActiveIndicatorColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, C1339R.styleable.NavigationBarActiveIndicator_android_color));
                setItemActiveIndicatorShapeAppearance(ShapeAppearanceModel.builder(context2, typedArrayObtainStyledAttributes.getResourceId(C1339R.styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).build());
                typedArrayObtainStyledAttributes.recycle();
            } else {
                dimensionPixelSize = -2;
                setItemActiveIndicatorExpandedWidth(dimensionPixelSize);
                setItemActiveIndicatorExpandedHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1339R.styleable.NavigationBarActiveIndicator_expandedHeight, dimensionPixelSize2));
                setItemActiveIndicatorExpandedMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedMarginHorizontal, dimensionPixelOffset));
                int dimensionPixelSize32 = getResources().getDimensionPixelSize(C1339R.dimen.m3_navigation_item_leading_trailing_space);
                int dimensionPixelOffset22 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedActiveIndicatorPaddingStart, dimensionPixelSize32);
                int dimensionPixelOffset32 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedActiveIndicatorPaddingEnd, dimensionPixelSize32);
                setItemActiveIndicatorExpandedPadding(getLayoutDirection() != 1 ? dimensionPixelOffset32 : dimensionPixelOffset22, typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.NavigationBarActiveIndicator_expandedActiveIndicatorPaddingTop, 0), getLayoutDirection() != 1 ? dimensionPixelOffset32 : dimensionPixelOffset22, typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1339R.styleable.f281x19991881, 0));
                setItemActiveIndicatorColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, C1339R.styleable.NavigationBarActiveIndicator_android_color));
                setItemActiveIndicatorShapeAppearance(ShapeAppearanceModel.builder(context2, typedArrayObtainStyledAttributes.getResourceId(C1339R.styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).build());
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1339R.styleable.NavigationBarView_menu)) {
            inflateMenu(tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1339R.styleable.NavigationBarView_menu, 0));
        }
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        if (!shouldAddMenuView()) {
            addView(navigationBarMenuViewCreateNavigationBarMenuView);
        }
        navigationBarMenu.setCallback(new MenuBuilder.Callback() { // from class: com.google.android.material.navigation.NavigationBarView.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                if (NavigationBarView.this.reselectedListener == null || menuItem.getItemId() != NavigationBarView.this.getSelectedItemId()) {
                    return (NavigationBarView.this.selectedListener == null || NavigationBarView.this.selectedListener.onNavigationItemSelected(menuItem)) ? false : true;
                }
                NavigationBarView.this.reselectedListener.onNavigationItemReselected(menuItem);
                return true;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.selectedListener = onItemSelectedListener;
    }

    public void setOnItemReselectedListener(OnItemReselectedListener onItemReselectedListener) {
        this.reselectedListener = onItemReselectedListener;
    }

    public Menu getMenu() {
        return this.menu;
    }

    public MenuView getMenuView() {
        return this.menuView;
    }

    public ViewGroup getMenuViewGroup() {
        return this.menuView;
    }

    public void inflateMenu(int i) {
        this.presenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.menu);
        this.presenter.setUpdateSuspended(false);
        this.presenter.updateMenuView(true);
    }

    public ColorStateList getItemIconTintList() {
        return this.menuView.getIconTintList();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.menuView.setIconTintList(colorStateList);
    }

    public void setItemIconSize(int i) {
        this.menuView.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public int getItemIconSize() {
        return this.menuView.getItemIconSize();
    }

    public ColorStateList getItemTextColor() {
        return this.menuView.getItemTextColor();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.menuView.setItemTextColor(colorStateList);
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.menuView.getItemBackgroundRes();
    }

    public void setItemBackgroundResource(int i) {
        this.menuView.setItemBackgroundRes(i);
    }

    public Drawable getItemBackground() {
        return this.menuView.getItemBackground();
    }

    public void setItemBackground(Drawable drawable) {
        this.menuView.setItemBackground(drawable);
    }

    public ColorStateList getItemRippleColor() {
        return this.menuView.getItemRippleColor();
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.menuView.setItemRippleColor(colorStateList);
    }

    public int getItemPaddingTop() {
        return this.menuView.getItemPaddingTop();
    }

    public void setItemPaddingTop(int i) {
        this.menuView.setItemPaddingTop(i);
    }

    public int getItemPaddingBottom() {
        return this.menuView.getItemPaddingBottom();
    }

    public void setItemPaddingBottom(int i) {
        this.menuView.setItemPaddingBottom(i);
    }

    private void setMeasureBottomPaddingFromLabelBaseline(boolean z) {
        this.menuView.setMeasurePaddingFromLabelBaseline(z);
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.menuView.setLabelFontScalingEnabled(z);
    }

    public boolean getScaleLabelTextWithFont() {
        return this.menuView.getScaleLabelTextWithFont();
    }

    public void setLabelMaxLines(int i) {
        this.menuView.setLabelMaxLines(i);
    }

    public int getLabelMaxLines(int i) {
        return this.menuView.getLabelMaxLines();
    }

    public void setActiveIndicatorLabelPadding(int i) {
        this.menuView.setActiveIndicatorLabelPadding(i);
    }

    public int getActiveIndicatorLabelPadding() {
        return this.menuView.getActiveIndicatorLabelPadding();
    }

    public void setIconLabelHorizontalSpacing(int i) {
        this.menuView.setIconLabelHorizontalSpacing(i);
    }

    public int getIconLabelHorizontalSpacing() {
        return this.menuView.getIconLabelHorizontalSpacing();
    }

    public boolean isItemActiveIndicatorEnabled() {
        return this.menuView.getItemActiveIndicatorEnabled();
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.menuView.setItemActiveIndicatorEnabled(z);
    }

    public int getItemActiveIndicatorWidth() {
        return this.menuView.getItemActiveIndicatorWidth();
    }

    public void setItemActiveIndicatorWidth(int i) {
        this.menuView.setItemActiveIndicatorWidth(i);
    }

    public int getItemActiveIndicatorHeight() {
        return this.menuView.getItemActiveIndicatorHeight();
    }

    public void setItemActiveIndicatorHeight(int i) {
        this.menuView.setItemActiveIndicatorHeight(i);
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.menuView.getItemActiveIndicatorMarginHorizontal();
    }

    public void setItemActiveIndicatorMarginHorizontal(int i) {
        this.menuView.setItemActiveIndicatorMarginHorizontal(i);
    }

    public void setItemGravity(int i) {
        if (this.menuView.getItemGravity() != i) {
            this.menuView.setItemGravity(i);
            this.presenter.updateMenuView(false);
        }
    }

    public int getItemGravity() {
        return this.menuView.getItemGravity();
    }

    public int getItemActiveIndicatorExpandedWidth() {
        return this.menuView.getItemActiveIndicatorExpandedWidth();
    }

    public void setItemActiveIndicatorExpandedWidth(int i) {
        this.menuView.setItemActiveIndicatorExpandedWidth(i);
    }

    public int getItemActiveIndicatorExpandedHeight() {
        return this.menuView.getItemActiveIndicatorExpandedHeight();
    }

    public void setItemActiveIndicatorExpandedHeight(int i) {
        this.menuView.setItemActiveIndicatorExpandedHeight(i);
    }

    public int getItemActiveIndicatorExpandedMarginHorizontal() {
        return this.menuView.getItemActiveIndicatorExpandedMarginHorizontal();
    }

    public void setItemActiveIndicatorExpandedMarginHorizontal(int i) {
        this.menuView.setItemActiveIndicatorExpandedMarginHorizontal(i);
    }

    public void setItemActiveIndicatorExpandedPadding(int i, int i2, int i3, int i4) {
        this.menuView.setItemActiveIndicatorExpandedPadding(i, i2, i3, i4);
    }

    public ShapeAppearanceModel getItemActiveIndicatorShapeAppearance() {
        return this.menuView.getItemActiveIndicatorShapeAppearance();
    }

    public void setItemActiveIndicatorShapeAppearance(ShapeAppearanceModel shapeAppearanceModel) {
        this.menuView.setItemActiveIndicatorShapeAppearance(shapeAppearanceModel);
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.menuView.getItemActiveIndicatorColor();
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.menuView.setItemActiveIndicatorColor(colorStateList);
    }

    public int getSelectedItemId() {
        return this.menuView.getSelectedItemId();
    }

    public void setSelectedItemId(int i) {
        MenuItem menuItemFindItem = this.menu.findItem(i);
        if (menuItemFindItem != null) {
            boolean zPerformItemAction = this.menu.performItemAction(menuItemFindItem, this.presenter, 0);
            if (menuItemFindItem.isCheckable()) {
                if (!zPerformItemAction || menuItemFindItem.isChecked()) {
                    this.menuView.setCheckedItem(menuItemFindItem);
                }
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        if (this.menuView.getLabelVisibilityMode() != i) {
            this.menuView.setLabelVisibilityMode(i);
            this.presenter.updateMenuView(false);
        }
    }

    public int getLabelVisibilityMode() {
        return this.menuView.getLabelVisibilityMode();
    }

    public void setItemIconGravity(int i) {
        if (this.menuView.getItemIconGravity() != i) {
            this.menuView.setItemIconGravity(i);
            this.presenter.updateMenuView(false);
        }
    }

    public int getItemIconGravity() {
        return this.menuView.getItemIconGravity();
    }

    public void setItemTextAppearanceInactive(int i) {
        this.menuView.setItemTextAppearanceInactive(i);
    }

    public int getItemTextAppearanceInactive() {
        return this.menuView.getItemTextAppearanceInactive();
    }

    public void setItemTextAppearanceActive(int i) {
        this.menuView.setItemTextAppearanceActive(i);
    }

    public int getItemTextAppearanceActive() {
        return this.menuView.getItemTextAppearanceActive();
    }

    public void setHorizontalItemTextAppearanceInactive(int i) {
        this.menuView.setHorizontalItemTextAppearanceInactive(i);
    }

    public int getHorizontalItemTextAppearanceInactive() {
        return this.menuView.getHorizontalItemTextAppearanceInactive();
    }

    public void setHorizontalItemTextAppearanceActive(int i) {
        this.menuView.setHorizontalItemTextAppearanceActive(i);
    }

    public int getHorizontalItemTextAppearanceActive() {
        return this.menuView.getHorizontalItemTextAppearanceActive();
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.menuView.setItemTextAppearanceActiveBoldEnabled(z);
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        this.menuView.setItemOnTouchListener(i, onTouchListener);
    }

    public BadgeDrawable getBadge(int i) {
        return this.menuView.getBadge(i);
    }

    public BadgeDrawable getOrCreateBadge(int i) {
        return this.menuView.getOrCreateBadge(i);
    }

    public void removeBadge(int i) {
        this.menuView.removeBadge(i);
    }

    public int getCollapsedMaxItemCount() {
        return getMaxItemCount();
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new SupportMenuInflater(getContext());
        }
        return this.menuInflater;
    }

    public NavigationBarPresenter getPresenter() {
        return this.presenter;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuPresenterState = bundle;
        this.menu.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.restorePresenterStates(savedState.menuPresenterState);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.navigation.NavigationBarView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Bundle menuPresenterState;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuPresenterState);
        }

        private void readFromParcel(Parcel parcel, ClassLoader classLoader) {
            this.menuPresenterState = parcel.readBundle(classLoader);
        }
    }
}
