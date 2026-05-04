package com.google.android.material.navigation;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools$Pool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.TextScale;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.HashSet;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    private static final int DEFAULT_COLLAPSED_MAX_COUNT = 7;
    private static final int NO_PADDING = -1;
    private static final int NO_SELECTED_ITEM = -1;
    private final SparseArray<BadgeDrawable> badgeDrawables;
    private NavigationBarMenuItemView[] buttons;
    private MenuItem checkedItem;
    private int collapsedMaxItemCount;
    private boolean dividersEnabled;
    private boolean expanded;
    private int horizontalItemTextAppearanceActive;
    private int horizontalItemTextAppearanceInactive;
    private int iconLabelHorizontalSpacing;
    private ColorStateList itemActiveIndicatorColor;
    private boolean itemActiveIndicatorEnabled;
    private int itemActiveIndicatorExpandedHeight;
    private int itemActiveIndicatorExpandedMarginHorizontal;
    private final Rect itemActiveIndicatorExpandedPadding;
    private int itemActiveIndicatorExpandedWidth;
    private int itemActiveIndicatorHeight;
    private int itemActiveIndicatorLabelPadding;
    private int itemActiveIndicatorMarginHorizontal;
    private boolean itemActiveIndicatorResizeable;
    private ShapeAppearanceModel itemActiveIndicatorShapeAppearance;
    private int itemActiveIndicatorWidth;
    private Drawable itemBackground;
    private int itemBackgroundRes;
    private int itemGravity;
    private int itemIconGravity;
    private int itemIconSize;
    private ColorStateList itemIconTint;
    private int itemPaddingBottom;
    private int itemPaddingTop;
    private Pools$Pool itemPool;
    private int itemPoolSize;
    private ColorStateList itemRippleColor;
    private int itemTextAppearanceActive;
    private boolean itemTextAppearanceActiveBoldEnabled;
    private int itemTextAppearanceInactive;
    private final ColorStateList itemTextColorDefault;
    private ColorStateList itemTextColorFromUser;
    private int labelMaxLines;
    private int labelVisibilityMode;
    private boolean measurePaddingFromLabelBaseline;
    private NavigationBarMenuBuilder menu;
    private final View.OnClickListener onClickListener;
    private final SparseArray<View.OnTouchListener> onTouchListeners;
    private NavigationBarPresenter presenter;
    private boolean scaleLabelWithFont;
    private int selectedItemId;
    private int selectedItemPosition;
    private final TransitionSet set;
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DISABLED_STATE_SET = {-16842910};

    private boolean isValidId(int i) {
        return i != -1;
    }

    protected abstract NavigationBarItemView createNavigationBarItemView(Context context);

    public int getWindowAnimations() {
        return 0;
    }

    protected boolean isShifting(int i, int i2) {
        return i == -1 ? i2 > 3 : i == 0;
    }

    public NavigationBarMenuView(Context context) {
        super(context);
        this.onTouchListeners = new SparseArray<>();
        this.selectedItemId = -1;
        this.selectedItemPosition = -1;
        this.badgeDrawables = new SparseArray<>();
        this.itemPaddingTop = -1;
        this.itemPaddingBottom = -1;
        this.itemActiveIndicatorLabelPadding = -1;
        this.iconLabelHorizontalSpacing = -1;
        this.itemGravity = 49;
        this.itemActiveIndicatorResizeable = false;
        this.labelMaxLines = 1;
        this.itemPoolSize = 0;
        this.checkedItem = null;
        this.collapsedMaxItemCount = 7;
        this.dividersEnabled = false;
        this.itemActiveIndicatorExpandedPadding = new Rect();
        this.itemTextColorDefault = createDefaultColorStateList(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.set = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.set = autoTransition;
            autoTransition.setOrdering(0);
            autoTransition.excludeTarget(TextView.class, true);
            autoTransition.setDuration(MotionUtils.resolveThemeDuration(getContext(), C1349R.attr.motionDurationMedium4, getResources().getInteger(C1349R.integer.material_motion_duration_long_1)));
            autoTransition.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), C1349R.attr.motionEasingStandard, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            autoTransition.addTransition(new TextScale());
        }
        this.onClickListener = new View.OnClickListener() { // from class: com.google.android.material.navigation.NavigationBarMenuView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
                boolean zPerformItemAction = NavigationBarMenuView.this.menu.performItemAction(itemData, NavigationBarMenuView.this.presenter, 0);
                if (itemData == null || !itemData.isCheckable()) {
                    return;
                }
                if (!zPerformItemAction || itemData.isChecked()) {
                    NavigationBarMenuView.this.setCheckedItem(itemData);
                }
            }
        };
        setImportantForAccessibility(1);
    }

    public void setCheckedItem(MenuItem menuItem) {
        if (this.checkedItem == menuItem || !menuItem.isCheckable()) {
            return;
        }
        MenuItem menuItem2 = this.checkedItem;
        if (menuItem2 != null && menuItem2.isChecked()) {
            this.checkedItem.setChecked(false);
        }
        menuItem.setChecked(true);
        this.checkedItem = menuItem;
    }

    public void setExpanded(boolean z) {
        this.expanded = z;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                navigationBarMenuItemView.setExpanded(z);
            }
        }
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.menu = new NavigationBarMenuBuilder(menuBuilder);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getCurrentVisibleContentItemCount(), false, 1));
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.itemIconTint = colorStateList;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setIconTintList(colorStateList);
                }
            }
        }
    }

    public ColorStateList getIconTintList() {
        return this.itemIconTint;
    }

    public void setItemIconSize(int i) {
        this.itemIconSize = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setIconSize(i);
                }
            }
        }
    }

    public int getItemIconSize() {
        return this.itemIconSize;
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.itemTextColorFromUser = colorStateList;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setTextColor(colorStateList);
                }
            }
        }
    }

    public ColorStateList getItemTextColor() {
        return this.itemTextColorFromUser;
    }

    public void setItemTextAppearanceInactive(int i) {
        this.itemTextAppearanceInactive = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setTextAppearanceInactive(i);
                }
            }
        }
    }

    public int getItemTextAppearanceInactive() {
        return this.itemTextAppearanceInactive;
    }

    public void setItemTextAppearanceActive(int i) {
        this.itemTextAppearanceActive = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setTextAppearanceActive(i);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.itemTextAppearanceActiveBoldEnabled = z;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setTextAppearanceActiveBoldEnabled(z);
                }
            }
        }
    }

    public int getItemTextAppearanceActive() {
        return this.itemTextAppearanceActive;
    }

    public void setHorizontalItemTextAppearanceInactive(int i) {
        this.horizontalItemTextAppearanceInactive = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setHorizontalTextAppearanceInactive(i);
                }
            }
        }
    }

    public int getHorizontalItemTextAppearanceInactive() {
        return this.horizontalItemTextAppearanceInactive;
    }

    public void setHorizontalItemTextAppearanceActive(int i) {
        this.horizontalItemTextAppearanceActive = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setHorizontalTextAppearanceActive(i);
                }
            }
        }
    }

    public int getHorizontalItemTextAppearanceActive() {
        return this.horizontalItemTextAppearanceActive;
    }

    public void setItemBackgroundRes(int i) {
        this.itemBackgroundRes = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setItemBackground(i);
                }
            }
        }
    }

    public int getItemPaddingTop() {
        return this.itemPaddingTop;
    }

    public void setItemPaddingTop(int i) {
        this.itemPaddingTop = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setItemPaddingTop(i);
                }
            }
        }
    }

    public int getItemPaddingBottom() {
        return this.itemPaddingBottom;
    }

    public void setItemPaddingBottom(int i) {
        this.itemPaddingBottom = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setItemPaddingBottom(this.itemPaddingBottom);
                }
            }
        }
    }

    public void setMeasurePaddingFromLabelBaseline(boolean z) {
        this.measurePaddingFromLabelBaseline = z;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setMeasureBottomPaddingFromLabelBaseline(z);
                }
            }
        }
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.scaleLabelWithFont = z;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setLabelFontScalingEnabled(z);
                }
            }
        }
    }

    public boolean getScaleLabelTextWithFont() {
        return this.scaleLabelWithFont;
    }

    public void setLabelMaxLines(int i) {
        this.labelMaxLines = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setLabelMaxLines(i);
                }
            }
        }
    }

    public int getLabelMaxLines() {
        return this.labelMaxLines;
    }

    public int getActiveIndicatorLabelPadding() {
        return this.itemActiveIndicatorLabelPadding;
    }

    public void setActiveIndicatorLabelPadding(int i) {
        this.itemActiveIndicatorLabelPadding = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorLabelPadding(i);
                }
            }
        }
    }

    public int getIconLabelHorizontalSpacing() {
        return this.iconLabelHorizontalSpacing;
    }

    public void setIconLabelHorizontalSpacing(int i) {
        this.iconLabelHorizontalSpacing = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setIconLabelHorizontalSpacing(i);
                }
            }
        }
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.itemActiveIndicatorEnabled;
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.itemActiveIndicatorEnabled = z;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorEnabled(z);
                }
            }
        }
    }

    public int getItemActiveIndicatorWidth() {
        return this.itemActiveIndicatorWidth;
    }

    public void setItemActiveIndicatorWidth(int i) {
        this.itemActiveIndicatorWidth = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorWidth(i);
                }
            }
        }
    }

    public int getItemActiveIndicatorHeight() {
        return this.itemActiveIndicatorHeight;
    }

    public void setItemActiveIndicatorHeight(int i) {
        this.itemActiveIndicatorHeight = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorHeight(i);
                }
            }
        }
    }

    public void setItemGravity(int i) {
        this.itemGravity = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setItemGravity(i);
                }
            }
        }
    }

    public int getItemGravity() {
        return this.itemGravity;
    }

    public int getItemActiveIndicatorExpandedWidth() {
        return this.itemActiveIndicatorExpandedWidth;
    }

    public void setItemActiveIndicatorExpandedWidth(int i) {
        this.itemActiveIndicatorExpandedWidth = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorExpandedWidth(i);
                }
            }
        }
    }

    public int getItemActiveIndicatorExpandedHeight() {
        return this.itemActiveIndicatorExpandedHeight;
    }

    public void setItemActiveIndicatorExpandedHeight(int i) {
        this.itemActiveIndicatorExpandedHeight = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorExpandedHeight(i);
                }
            }
        }
    }

    public int getItemActiveIndicatorMarginHorizontal() {
        return this.itemActiveIndicatorMarginHorizontal;
    }

    public void setItemActiveIndicatorMarginHorizontal(int i) {
        this.itemActiveIndicatorMarginHorizontal = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorMarginHorizontal(i);
                }
            }
        }
    }

    public int getItemActiveIndicatorExpandedMarginHorizontal() {
        return this.itemActiveIndicatorExpandedMarginHorizontal;
    }

    public void setItemActiveIndicatorExpandedMarginHorizontal(int i) {
        this.itemActiveIndicatorExpandedMarginHorizontal = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorExpandedMarginHorizontal(i);
                }
            }
        }
    }

    public void setItemActiveIndicatorExpandedPadding(int i, int i2, int i3, int i4) {
        Rect rect = this.itemActiveIndicatorExpandedPadding;
        rect.left = i;
        rect.top = i2;
        rect.right = i3;
        rect.bottom = i4;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorExpandedPadding(this.itemActiveIndicatorExpandedPadding);
                }
            }
        }
    }

    public ShapeAppearanceModel getItemActiveIndicatorShapeAppearance() {
        return this.itemActiveIndicatorShapeAppearance;
    }

    public void setItemActiveIndicatorShapeAppearance(ShapeAppearanceModel shapeAppearanceModel) {
        this.itemActiveIndicatorShapeAppearance = shapeAppearanceModel;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorDrawable(createItemActiveIndicatorDrawable());
                }
            }
        }
    }

    protected boolean isItemActiveIndicatorResizeable() {
        return this.itemActiveIndicatorResizeable;
    }

    protected void setItemActiveIndicatorResizeable(boolean z) {
        this.itemActiveIndicatorResizeable = z;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorResizeable(z);
                }
            }
        }
    }

    public ColorStateList getItemActiveIndicatorColor() {
        return this.itemActiveIndicatorColor;
    }

    public void setItemActiveIndicatorColor(ColorStateList colorStateList) {
        this.itemActiveIndicatorColor = colorStateList;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setActiveIndicatorDrawable(createItemActiveIndicatorDrawable());
                }
            }
        }
    }

    private Drawable createItemActiveIndicatorDrawable() {
        if (this.itemActiveIndicatorShapeAppearance == null || this.itemActiveIndicatorColor == null) {
            return null;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.itemActiveIndicatorShapeAppearance);
        materialShapeDrawable.setFillColor(this.itemActiveIndicatorColor);
        return materialShapeDrawable;
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.itemBackgroundRes;
    }

    public void setItemBackground(Drawable drawable) {
        this.itemBackground = drawable;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setItemBackground(drawable);
                }
            }
        }
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.itemRippleColor = colorStateList;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setItemRippleColor(colorStateList);
                }
            }
        }
    }

    public ColorStateList getItemRippleColor() {
        return this.itemRippleColor;
    }

    public Drawable getItemBackground() {
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null && navigationBarMenuItemViewArr.length > 0) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    return ((NavigationBarItemView) navigationBarMenuItemView).getBackground();
                }
            }
        }
        return this.itemBackground;
    }

    public void setLabelVisibilityMode(int i) {
        this.labelVisibilityMode = i;
    }

    public int getLabelVisibilityMode() {
        return this.labelVisibilityMode;
    }

    public void setItemIconGravity(int i) {
        this.itemIconGravity = i;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setItemIconGravity(i);
                }
            }
        }
    }

    public int getItemIconGravity() {
        return this.itemIconGravity;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.onTouchListeners.remove(i);
        } else {
            this.onTouchListeners.put(i, onTouchListener);
        }
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if ((navigationBarMenuItemView instanceof NavigationBarItemView) && navigationBarMenuItemView.getItemData() != null && navigationBarMenuItemView.getItemData().getItemId() == i) {
                    ((NavigationBarItemView) navigationBarMenuItemView).setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = DISABLED_STATE_SET;
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    public void setPresenter(NavigationBarPresenter navigationBarPresenter) {
        this.presenter = navigationBarPresenter;
    }

    private void releaseItemPool() {
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr == null || this.itemPool == null) {
            return;
        }
        for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
            if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                NavigationBarItemView navigationBarItemView = (NavigationBarItemView) navigationBarMenuItemView;
                this.itemPool.release(navigationBarItemView);
                navigationBarItemView.clear();
            }
        }
    }

    private NavigationBarItemView createMenuItem(int i, MenuItemImpl menuItemImpl, boolean z, boolean z2) {
        this.presenter.setUpdateSuspended(true);
        menuItemImpl.setCheckable(true);
        this.presenter.setUpdateSuspended(false);
        NavigationBarItemView newItem = getNewItem();
        newItem.setShifting(z);
        newItem.setLabelMaxLines(this.labelMaxLines);
        newItem.setIconTintList(this.itemIconTint);
        newItem.setIconSize(this.itemIconSize);
        newItem.setTextColor(this.itemTextColorDefault);
        newItem.setTextAppearanceInactive(this.itemTextAppearanceInactive);
        newItem.setTextAppearanceActive(this.itemTextAppearanceActive);
        newItem.setHorizontalTextAppearanceInactive(this.horizontalItemTextAppearanceInactive);
        newItem.setHorizontalTextAppearanceActive(this.horizontalItemTextAppearanceActive);
        newItem.setTextAppearanceActiveBoldEnabled(this.itemTextAppearanceActiveBoldEnabled);
        newItem.setTextColor(this.itemTextColorFromUser);
        int i2 = this.itemPaddingTop;
        if (i2 != -1) {
            newItem.setItemPaddingTop(i2);
        }
        int i3 = this.itemPaddingBottom;
        if (i3 != -1) {
            newItem.setItemPaddingBottom(i3);
        }
        newItem.setMeasureBottomPaddingFromLabelBaseline(this.measurePaddingFromLabelBaseline);
        newItem.setLabelFontScalingEnabled(this.scaleLabelWithFont);
        int i4 = this.itemActiveIndicatorLabelPadding;
        if (i4 != -1) {
            newItem.setActiveIndicatorLabelPadding(i4);
        }
        int i5 = this.iconLabelHorizontalSpacing;
        if (i5 != -1) {
            newItem.setIconLabelHorizontalSpacing(i5);
        }
        newItem.setActiveIndicatorWidth(this.itemActiveIndicatorWidth);
        newItem.setActiveIndicatorHeight(this.itemActiveIndicatorHeight);
        newItem.setActiveIndicatorExpandedWidth(this.itemActiveIndicatorExpandedWidth);
        newItem.setActiveIndicatorExpandedHeight(this.itemActiveIndicatorExpandedHeight);
        newItem.setActiveIndicatorMarginHorizontal(this.itemActiveIndicatorMarginHorizontal);
        newItem.setItemGravity(this.itemGravity);
        newItem.setActiveIndicatorExpandedPadding(this.itemActiveIndicatorExpandedPadding);
        newItem.setActiveIndicatorExpandedMarginHorizontal(this.itemActiveIndicatorExpandedMarginHorizontal);
        newItem.setActiveIndicatorDrawable(createItemActiveIndicatorDrawable());
        newItem.setActiveIndicatorResizeable(this.itemActiveIndicatorResizeable);
        newItem.setActiveIndicatorEnabled(this.itemActiveIndicatorEnabled);
        Drawable drawable = this.itemBackground;
        if (drawable != null) {
            newItem.setItemBackground(drawable);
        } else {
            newItem.setItemBackground(this.itemBackgroundRes);
        }
        newItem.setItemRippleColor(this.itemRippleColor);
        newItem.setLabelVisibilityMode(this.labelVisibilityMode);
        newItem.setItemIconGravity(this.itemIconGravity);
        newItem.setOnlyShowWhenExpanded(z2);
        newItem.setExpanded(this.expanded);
        newItem.initialize(menuItemImpl, 0);
        newItem.setItemPosition(i);
        int itemId = menuItemImpl.getItemId();
        newItem.setOnTouchListener(this.onTouchListeners.get(itemId));
        newItem.setOnClickListener(this.onClickListener);
        int i6 = this.selectedItemId;
        if (i6 != 0 && itemId == i6) {
            this.selectedItemPosition = i;
        }
        setBadgeIfNeeded(newItem);
        return newItem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"ClickableViewAccessibility"})
    public void buildMenuView() {
        View viewCreateMenuItem;
        removeAllViews();
        releaseItemPool();
        this.presenter.setUpdateSuspended(true);
        this.menu.refreshItems();
        this.presenter.setUpdateSuspended(false);
        int contentItemCount = this.menu.getContentItemCount();
        if (contentItemCount == 0) {
            this.selectedItemId = 0;
            this.selectedItemPosition = 0;
            this.buttons = null;
            this.itemPool = null;
            return;
        }
        if (this.itemPool == null || this.itemPoolSize != contentItemCount) {
            this.itemPoolSize = contentItemCount;
            this.itemPool = new Pools$SynchronizedPool(contentItemCount);
        }
        removeUnusedBadges();
        int size = this.menu.size();
        this.buttons = new NavigationBarMenuItemView[size];
        boolean zIsShifting = isShifting(this.labelVisibilityMode, getCurrentVisibleContentItemCount());
        int size2 = 0;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem itemAt = this.menu.getItemAt(i2);
            boolean z = itemAt instanceof DividerMenuItem;
            if (z) {
                NavigationBarDividerView navigationBarDividerView = new NavigationBarDividerView(getContext());
                navigationBarDividerView.setOnlyShowWhenExpanded(true);
                navigationBarDividerView.setDividersEnabled(this.dividersEnabled);
                viewCreateMenuItem = navigationBarDividerView;
            } else if (itemAt.hasSubMenu()) {
                if (size2 > 0) {
                    throw new IllegalArgumentException("Only one layer of submenu is supported; a submenu inside a submenu is not supported by the Navigation Bar.");
                }
                NavigationBarSubheaderView navigationBarSubheaderView = new NavigationBarSubheaderView(getContext());
                int i3 = this.horizontalItemTextAppearanceActive;
                if (i3 == 0) {
                    i3 = this.itemTextAppearanceActive;
                }
                navigationBarSubheaderView.setTextAppearance(i3);
                navigationBarSubheaderView.setTextColor(this.itemTextColorFromUser);
                navigationBarSubheaderView.setOnlyShowWhenExpanded(true);
                navigationBarSubheaderView.initialize((MenuItemImpl) itemAt, 0);
                size2 = itemAt.getSubMenu().size();
                viewCreateMenuItem = navigationBarSubheaderView;
            } else if (size2 > 0) {
                size2--;
                viewCreateMenuItem = createMenuItem(i2, (MenuItemImpl) itemAt, zIsShifting, true);
            } else {
                MenuItemImpl menuItemImpl = (MenuItemImpl) itemAt;
                boolean z2 = i >= this.collapsedMaxItemCount;
                i++;
                viewCreateMenuItem = createMenuItem(i2, menuItemImpl, zIsShifting, z2);
            }
            if (!z && itemAt.isCheckable() && this.selectedItemPosition == -1) {
                this.selectedItemPosition = i2;
            }
            this.buttons[i2] = viewCreateMenuItem;
            addView(viewCreateMenuItem);
        }
        int iMin = Math.min(size - 1, this.selectedItemPosition);
        this.selectedItemPosition = iMin;
        setCheckedItem(this.buttons[iMin].getItemData());
    }

    private boolean isMenuStructureSame() {
        NavigationBarMenuBuilder navigationBarMenuBuilder;
        if (this.buttons == null || (navigationBarMenuBuilder = this.menu) == null || navigationBarMenuBuilder.size() != this.buttons.length) {
            return false;
        }
        int i = 0;
        while (true) {
            if (i >= this.buttons.length) {
                return true;
            }
            if ((this.menu.getItemAt(i) instanceof DividerMenuItem) && !(this.buttons[i] instanceof NavigationBarDividerView)) {
                return false;
            }
            boolean z = this.menu.getItemAt(i).hasSubMenu() && !(this.buttons[i] instanceof NavigationBarSubheaderView);
            boolean z2 = (this.menu.getItemAt(i).hasSubMenu() || (this.buttons[i] instanceof NavigationBarItemView)) ? false : true;
            if (!(this.menu.getItemAt(i) instanceof DividerMenuItem) && (z || z2)) {
                break;
            }
            i++;
        }
        return false;
    }

    public void updateMenuView() {
        TransitionSet transitionSet;
        if (this.menu == null || this.buttons == null) {
            return;
        }
        this.presenter.setUpdateSuspended(true);
        this.menu.refreshItems();
        this.presenter.setUpdateSuspended(false);
        if (!isMenuStructureSame()) {
            buildMenuView();
            return;
        }
        int i = this.selectedItemId;
        int size = this.menu.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem itemAt = this.menu.getItemAt(i2);
            if (itemAt.isChecked()) {
                setCheckedItem(itemAt);
                this.selectedItemId = itemAt.getItemId();
                this.selectedItemPosition = i2;
            }
        }
        if (i != this.selectedItemId && (transitionSet = this.set) != null) {
            TransitionManager.beginDelayedTransition(this, transitionSet);
        }
        boolean zIsShifting = isShifting(this.labelVisibilityMode, getCurrentVisibleContentItemCount());
        for (int i3 = 0; i3 < size; i3++) {
            this.presenter.setUpdateSuspended(true);
            this.buttons[i3].setExpanded(this.expanded);
            NavigationBarMenuItemView navigationBarMenuItemView = this.buttons[i3];
            if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                NavigationBarItemView navigationBarItemView = (NavigationBarItemView) navigationBarMenuItemView;
                navigationBarItemView.setLabelVisibilityMode(this.labelVisibilityMode);
                navigationBarItemView.setItemIconGravity(this.itemIconGravity);
                navigationBarItemView.setItemGravity(this.itemGravity);
                navigationBarItemView.setShifting(zIsShifting);
            }
            if (this.menu.getItemAt(i3) instanceof MenuItemImpl) {
                this.buttons[i3].initialize((MenuItemImpl) this.menu.getItemAt(i3), 0);
            }
            this.presenter.setUpdateSuspended(false);
        }
    }

    private NavigationBarItemView getNewItem() {
        Pools$Pool pools$Pool = this.itemPool;
        NavigationBarItemView navigationBarItemView = pools$Pool != null ? (NavigationBarItemView) pools$Pool.acquire() : null;
        return navigationBarItemView == null ? createNavigationBarItemView(getContext()) : navigationBarItemView;
    }

    public void setSubmenuDividersEnabled(boolean z) {
        if (this.dividersEnabled == z) {
            return;
        }
        this.dividersEnabled = z;
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarDividerView) {
                    ((NavigationBarDividerView) navigationBarMenuItemView).setDividersEnabled(z);
                }
            }
        }
    }

    public void setCollapsedMaxItemCount(int i) {
        this.collapsedMaxItemCount = i;
    }

    private int getCollapsedVisibleItemCount() {
        return Math.min(this.collapsedMaxItemCount, this.menu.getVisibleMainContentItemCount());
    }

    public int getCurrentVisibleContentItemCount() {
        return this.expanded ? this.menu.getVisibleContentItemCount() : getCollapsedVisibleItemCount();
    }

    public int getSelectedItemId() {
        return this.selectedItemId;
    }

    void tryRestoreSelectedItemId(int i) {
        int size = this.menu.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem itemAt = this.menu.getItemAt(i2);
            if (i == itemAt.getItemId()) {
                this.selectedItemId = i;
                this.selectedItemPosition = i2;
                setCheckedItem(itemAt);
                return;
            }
        }
    }

    SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.badgeDrawables;
    }

    void restoreBadgeDrawables(SparseArray<BadgeDrawable> sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            int iKeyAt = sparseArray.keyAt(i);
            if (this.badgeDrawables.indexOfKey(iKeyAt) < 0) {
                this.badgeDrawables.append(iKeyAt, sparseArray.get(iKeyAt));
            }
        }
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    NavigationBarItemView navigationBarItemView = (NavigationBarItemView) navigationBarMenuItemView;
                    BadgeDrawable badgeDrawable = this.badgeDrawables.get(navigationBarItemView.getId());
                    if (badgeDrawable != null) {
                        navigationBarItemView.setBadge(badgeDrawable);
                    }
                }
            }
        }
    }

    public BadgeDrawable getBadge(int i) {
        return this.badgeDrawables.get(i);
    }

    BadgeDrawable getOrCreateBadge(int i) {
        validateMenuItemId(i);
        BadgeDrawable badgeDrawableCreate = this.badgeDrawables.get(i);
        if (badgeDrawableCreate == null) {
            badgeDrawableCreate = BadgeDrawable.create(getContext());
            this.badgeDrawables.put(i, badgeDrawableCreate);
        }
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.setBadge(badgeDrawableCreate);
        }
        return badgeDrawableCreate;
    }

    void removeBadge(int i) {
        validateMenuItemId(i);
        NavigationBarItemView navigationBarItemViewFindItemView = findItemView(i);
        if (navigationBarItemViewFindItemView != null) {
            navigationBarItemViewFindItemView.removeBadge();
        }
        this.badgeDrawables.put(i, null);
    }

    private void setBadgeIfNeeded(NavigationBarItemView navigationBarItemView) {
        BadgeDrawable badgeDrawable;
        int id = navigationBarItemView.getId();
        if (isValidId(id) && (badgeDrawable = this.badgeDrawables.get(id)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    private void removeUnusedBadges() {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.menu.size(); i++) {
            hashSet.add(Integer.valueOf(this.menu.getItemAt(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.badgeDrawables.size(); i2++) {
            int iKeyAt = this.badgeDrawables.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.badgeDrawables.delete(iKeyAt);
            }
        }
    }

    public NavigationBarItemView findItemView(int i) {
        validateMenuItemId(i);
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr == null) {
            return null;
        }
        for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
            if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                NavigationBarItemView navigationBarItemView = (NavigationBarItemView) navigationBarMenuItemView;
                if (navigationBarItemView.getId() == i) {
                    return navigationBarItemView;
                }
            }
        }
        return null;
    }

    protected int getSelectedItemPosition() {
        return this.selectedItemPosition;
    }

    protected NavigationBarMenuBuilder getMenu() {
        return this.menu;
    }

    private void validateMenuItemId(int i) {
        if (isValidId(i)) {
            return;
        }
        throw new IllegalArgumentException(i + " is not a valid view id");
    }

    public void updateActiveIndicator(int i) {
        NavigationBarMenuItemView[] navigationBarMenuItemViewArr = this.buttons;
        if (navigationBarMenuItemViewArr != null) {
            for (NavigationBarMenuItemView navigationBarMenuItemView : navigationBarMenuItemViewArr) {
                if (navigationBarMenuItemView instanceof NavigationBarItemView) {
                    ((NavigationBarItemView) navigationBarMenuItemView).updateActiveIndicatorLayoutParams(i);
                }
            }
        }
    }
}
