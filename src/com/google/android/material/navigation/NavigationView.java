package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.activity.BackEventCompat;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.C1349R;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.WindowUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeableDelegate;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import org.telegram.tgnet.TLObject;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements MaterialBackHandler {
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    private final DrawerLayout.DrawerListener backDrawerListener;
    private final MaterialBackOrchestrator backOrchestrator;
    private boolean bottomInsetScrimEnabled;
    private int drawerLayoutCornerSize;
    private final boolean drawerLayoutCornerSizeBackAnimationEnabled;
    private final int drawerLayoutCornerSizeBackAnimationMax;
    private boolean endInsetScrimEnabled;
    OnNavigationItemSelectedListener listener;
    private final int maxWidth;
    private final NavigationMenu menu;
    private MenuInflater menuInflater;
    private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private final NavigationMenuPresenter presenter;
    private final ShapeableDelegate shapeableDelegate;
    private final MaterialSideContainerBackHelper sideContainerBackHelper;
    private boolean startInsetScrimEnabled;
    private final int[] tmpLocation;
    private boolean topInsetScrimEnabled;
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Design_NavigationView;

    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        ColorStateList colorStateListCreateDefaultColorStateList;
        int i2;
        int i3;
        int i4 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i4), attributeSet, i);
        NavigationMenuPresenter navigationMenuPresenter = new NavigationMenuPresenter();
        this.presenter = navigationMenuPresenter;
        this.tmpLocation = new int[2];
        this.topInsetScrimEnabled = true;
        this.bottomInsetScrimEnabled = true;
        this.startInsetScrimEnabled = true;
        this.endInsetScrimEnabled = true;
        this.drawerLayoutCornerSize = 0;
        this.shapeableDelegate = ShapeableDelegate.create(this);
        this.sideContainerBackHelper = new MaterialSideContainerBackHelper(this);
        this.backOrchestrator = new MaterialBackOrchestrator(this);
        this.backDrawerListener = new DrawerLayout.SimpleDrawerListener() { // from class: com.google.android.material.navigation.NavigationView.1
            public void onDrawerOpened(View view) {
                NavigationView navigationView = NavigationView.this;
                if (view == navigationView) {
                    final MaterialBackOrchestrator materialBackOrchestrator = navigationView.backOrchestrator;
                    Objects.requireNonNull(materialBackOrchestrator);
                    view.post(new Runnable() { // from class: com.google.android.material.navigation.NavigationView$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            materialBackOrchestrator.startListeningForBackCallbacksWithPriorityOverlay();
                        }
                    });
                }
            }

            public void onDrawerClosed(View view) {
                NavigationView navigationView = NavigationView.this;
                if (view == navigationView) {
                    navigationView.backOrchestrator.stopListeningForBackCallbacks();
                    NavigationView.this.maybeClearCornerSizeAnimationForDrawerLayout();
                }
            }
        };
        Context context2 = getContext();
        NavigationMenu navigationMenu = new NavigationMenu(context2);
        this.menu = navigationMenu;
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C1349R.styleable.NavigationView, i, i4, new int[0]);
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_android_background)) {
            setBackground(tintTypedArrayObtainTintedStyledAttributes.getDrawable(C1349R.styleable.NavigationView_android_background));
        }
        int dimensionPixelSize = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.drawerLayoutCornerSize = dimensionPixelSize;
        this.drawerLayoutCornerSizeBackAnimationEnabled = dimensionPixelSize == 0;
        this.drawerLayoutCornerSizeBackAnimationMax = getResources().getDimensionPixelSize(C1349R.dimen.m3_navigation_drawer_layout_corner_size);
        Drawable background = getBackground();
        ColorStateList colorStateListOrNull = DrawableUtils.getColorStateListOrNull(background);
        if (background == null || colorStateListOrNull != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context2, attributeSet, i, i4).build());
            if (colorStateListOrNull != null) {
                materialShapeDrawable.setFillColor(colorStateListOrNull);
            }
            materialShapeDrawable.initializeElevationOverlay(context2);
            setBackground(materialShapeDrawable);
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_elevation)) {
            setElevation(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_elevation, 0));
        }
        setFitsSystemWindows(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.maxWidth = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_android_maxWidth, 0);
        ColorStateList colorStateList = tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_subheaderColor) ? tintTypedArrayObtainTintedStyledAttributes.getColorStateList(C1349R.styleable.NavigationView_subheaderColor) : null;
        int resourceId = tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_subheaderTextAppearance) ? tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1349R.styleable.NavigationView_subheaderTextAppearance, 0) : 0;
        if (resourceId == 0 && colorStateList == null) {
            colorStateList = createDefaultColorStateList(R.attr.textColorSecondary);
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_itemIconTint)) {
            colorStateListCreateDefaultColorStateList = tintTypedArrayObtainTintedStyledAttributes.getColorStateList(C1349R.styleable.NavigationView_itemIconTint);
        } else {
            colorStateListCreateDefaultColorStateList = createDefaultColorStateList(R.attr.textColorSecondary);
        }
        int resourceId2 = tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_itemTextAppearance) ? tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1349R.styleable.NavigationView_itemTextAppearance, 0) : 0;
        boolean z = tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationView_itemTextAppearanceActiveBoldEnabled, true);
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_itemIconSize)) {
            setItemIconSize(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_itemIconSize, 0));
        }
        ColorStateList colorStateList2 = tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_itemTextColor) ? tintTypedArrayObtainTintedStyledAttributes.getColorStateList(C1349R.styleable.NavigationView_itemTextColor) : null;
        if (resourceId2 == 0 && colorStateList2 == null) {
            colorStateList2 = createDefaultColorStateList(R.attr.textColorPrimary);
        }
        Drawable drawable = tintTypedArrayObtainTintedStyledAttributes.getDrawable(C1349R.styleable.NavigationView_itemBackground);
        if (drawable == null && hasShapeAppearance(tintTypedArrayObtainTintedStyledAttributes)) {
            drawable = createDefaultItemBackground(tintTypedArrayObtainTintedStyledAttributes);
            ColorStateList colorStateList3 = MaterialResources.getColorStateList(context2, tintTypedArrayObtainTintedStyledAttributes, C1349R.styleable.NavigationView_itemRippleColor);
            if (colorStateList3 != null) {
                navigationMenuPresenter.setItemForeground(new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(colorStateList3), null, createDefaultItemDrawable(tintTypedArrayObtainTintedStyledAttributes, null)));
            }
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_itemHorizontalPadding)) {
            i2 = 0;
            setItemHorizontalPadding(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_itemHorizontalPadding, 0));
        } else {
            i2 = 0;
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_itemVerticalPadding)) {
            setItemVerticalPadding(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_itemVerticalPadding, i2));
        }
        setDividerInsetStart(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_dividerInsetStart, i2));
        setDividerInsetEnd(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_dividerInsetEnd, i2));
        setSubheaderInsetStart(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_subheaderInsetStart, i2));
        setSubheaderInsetEnd(tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_subheaderInsetEnd, i2));
        setTopInsetScrimEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationView_topInsetScrimEnabled, this.topInsetScrimEnabled));
        setBottomInsetScrimEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationView_bottomInsetScrimEnabled, this.bottomInsetScrimEnabled));
        setStartInsetScrimEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationView_startInsetScrimEnabled, this.startInsetScrimEnabled));
        setEndInsetScrimEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.NavigationView_endInsetScrimEnabled, this.endInsetScrimEnabled));
        int dimensionPixelSize2 = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(C1349R.styleable.NavigationView_itemIconPadding, 0);
        setItemMaxLines(tintTypedArrayObtainTintedStyledAttributes.getInt(C1349R.styleable.NavigationView_itemMaxLines, 1));
        navigationMenu.setCallback(new MenuBuilder.Callback() { // from class: com.google.android.material.navigation.NavigationView.2
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.listener;
                return onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem);
            }
        });
        navigationMenuPresenter.setId(1);
        navigationMenuPresenter.initForMenu(context2, navigationMenu);
        if (resourceId != 0) {
            navigationMenuPresenter.setSubheaderTextAppearance(resourceId);
        }
        navigationMenuPresenter.setSubheaderColor(colorStateList);
        navigationMenuPresenter.setItemIconTintList(colorStateListCreateDefaultColorStateList);
        navigationMenuPresenter.setOverScrollMode(getOverScrollMode());
        if (resourceId2 != 0) {
            navigationMenuPresenter.setItemTextAppearance(resourceId2);
        }
        navigationMenuPresenter.setItemTextAppearanceActiveBoldEnabled(z);
        navigationMenuPresenter.setItemTextColor(colorStateList2);
        navigationMenuPresenter.setItemBackground(drawable);
        navigationMenuPresenter.setItemIconPadding(dimensionPixelSize2);
        navigationMenu.addMenuPresenter(navigationMenuPresenter);
        addView((View) navigationMenuPresenter.getMenuView(this));
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_menu)) {
            i3 = 0;
            inflateMenu(tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1349R.styleable.NavigationView_menu, 0));
        } else {
            i3 = 0;
        }
        if (tintTypedArrayObtainTintedStyledAttributes.hasValue(C1349R.styleable.NavigationView_headerLayout)) {
            inflateHeaderView(tintTypedArrayObtainTintedStyledAttributes.getResourceId(C1349R.styleable.NavigationView_headerLayout, i3));
        }
        tintTypedArrayObtainTintedStyledAttributes.recycle();
        setupInsetScrimsListener();
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.setOverScrollMode(i);
        }
    }

    public void setForceCompatClippingEnabled(boolean z) {
        this.shapeableDelegate.setForceCompatClippingEnabled(this, z);
    }

    private void maybeUpdateCornerSizeForDrawerLayout(int i, int i2) {
        getParent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeClearCornerSizeAnimationForDrawerLayout() {
        if (!this.drawerLayoutCornerSizeBackAnimationEnabled || this.drawerLayoutCornerSize == 0) {
            return;
        }
        this.drawerLayoutCornerSize = 0;
        maybeUpdateCornerSizeForDrawerLayout(getWidth(), getHeight());
    }

    private boolean hasShapeAppearance(TintTypedArray tintTypedArray) {
        return tintTypedArray.hasValue(C1349R.styleable.NavigationView_itemShapeAppearance) || tintTypedArray.hasValue(C1349R.styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        getParent();
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        getParent();
        this.backOrchestrator.stopListeningForBackCallbacks();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        maybeUpdateCornerSizeForDrawerLayout(i, i2);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    private Drawable createDefaultItemBackground(TintTypedArray tintTypedArray) {
        return createDefaultItemDrawable(tintTypedArray, MaterialResources.getColorStateList(getContext(), tintTypedArray, C1349R.styleable.NavigationView_itemShapeFillColor));
    }

    private Drawable createDefaultItemDrawable(TintTypedArray tintTypedArray, ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(getContext(), tintTypedArray.getResourceId(C1349R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.getResourceId(C1349R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).build());
        materialShapeDrawable.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.getDimensionPixelSize(C1349R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.getDimensionPixelSize(C1349R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.getDimensionPixelSize(C1349R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.getDimensionPixelSize(C1349R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.menu.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.restorePresenterStates(savedState.menuState);
    }

    public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.listener = onNavigationItemSelectedListener;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.maxWidth), TLObject.FLAG_30);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.maxWidth, TLObject.FLAG_30);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.shapeableDelegate.maybeClip(canvas, new CanvasCompat.CanvasOperation() { // from class: com.google.android.material.navigation.NavigationView$$ExternalSyntheticLambda0
            @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
            public final void run(Canvas canvas2) {
                super/*android.widget.FrameLayout*/.dispatchDraw(canvas2);
            }
        });
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    protected void onInsetsChanged(WindowInsetsCompat windowInsetsCompat) {
        this.presenter.dispatchApplyWindowInsets(windowInsetsCompat);
    }

    public void inflateMenu(int i) {
        this.presenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.menu);
        this.presenter.setUpdateSuspended(false);
        this.presenter.updateMenuView(false);
    }

    public Menu getMenu() {
        return this.menu;
    }

    public View inflateHeaderView(int i) {
        return this.presenter.inflateHeaderView(i);
    }

    public void addHeaderView(View view) {
        this.presenter.addHeaderView(view);
    }

    public void removeHeaderView(View view) {
        this.presenter.removeHeaderView(view);
    }

    public int getHeaderCount() {
        return this.presenter.getHeaderCount();
    }

    public View getHeaderView(int i) {
        return this.presenter.getHeaderView(i);
    }

    public ColorStateList getItemIconTintList() {
        return this.presenter.getItemTintList();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.presenter.setItemIconTintList(colorStateList);
    }

    public ColorStateList getItemTextColor() {
        return this.presenter.getItemTextColor();
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.presenter.setItemTextColor(colorStateList);
    }

    public Drawable getItemBackground() {
        return this.presenter.getItemBackground();
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(getContext().getDrawable(i));
    }

    public void setItemBackground(Drawable drawable) {
        this.presenter.setItemBackground(drawable);
    }

    public int getItemHorizontalPadding() {
        return this.presenter.getItemHorizontalPadding();
    }

    public void setItemHorizontalPadding(int i) {
        this.presenter.setItemHorizontalPadding(i);
    }

    public void setItemHorizontalPaddingResource(int i) {
        this.presenter.setItemHorizontalPadding(getResources().getDimensionPixelSize(i));
    }

    public int getItemVerticalPadding() {
        return this.presenter.getItemVerticalPadding();
    }

    public void setItemVerticalPadding(int i) {
        this.presenter.setItemVerticalPadding(i);
    }

    public void setItemVerticalPaddingResource(int i) {
        this.presenter.setItemVerticalPadding(getResources().getDimensionPixelSize(i));
    }

    public int getItemIconPadding() {
        return this.presenter.getItemIconPadding();
    }

    public void setItemIconPadding(int i) {
        this.presenter.setItemIconPadding(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.presenter.setItemIconPadding(getResources().getDimensionPixelSize(i));
    }

    public void setCheckedItem(int i) {
        MenuItem menuItemFindItem = this.menu.findItem(i);
        if (menuItemFindItem != null) {
            this.presenter.setCheckedItem((MenuItemImpl) menuItemFindItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem menuItemFindItem = this.menu.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.presenter.setCheckedItem((MenuItemImpl) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    public MenuItem getCheckedItem() {
        return this.presenter.getCheckedItem();
    }

    public void setItemTextAppearance(int i) {
        this.presenter.setItemTextAppearance(i);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.presenter.setItemTextAppearanceActiveBoldEnabled(z);
    }

    public void setItemIconSize(int i) {
        this.presenter.setItemIconSize(i);
    }

    public void setItemMaxLines(int i) {
        this.presenter.setItemMaxLines(i);
    }

    public int getItemMaxLines() {
        return this.presenter.getItemMaxLines();
    }

    public boolean isTopInsetScrimEnabled() {
        return this.topInsetScrimEnabled;
    }

    public void setTopInsetScrimEnabled(boolean z) {
        this.topInsetScrimEnabled = z;
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.bottomInsetScrimEnabled;
    }

    public void setBottomInsetScrimEnabled(boolean z) {
        this.bottomInsetScrimEnabled = z;
    }

    public boolean isStartInsetScrimEnabled() {
        return this.startInsetScrimEnabled;
    }

    public void setStartInsetScrimEnabled(boolean z) {
        this.startInsetScrimEnabled = z;
    }

    public boolean isEndInsetScrimEnabled() {
        return this.endInsetScrimEnabled;
    }

    public void setEndInsetScrimEnabled(boolean z) {
        this.endInsetScrimEnabled = z;
    }

    public int getDividerInsetStart() {
        return this.presenter.getDividerInsetStart();
    }

    public void setDividerInsetStart(int i) {
        this.presenter.setDividerInsetStart(i);
    }

    public int getDividerInsetEnd() {
        return this.presenter.getDividerInsetEnd();
    }

    public void setDividerInsetEnd(int i) {
        this.presenter.setDividerInsetEnd(i);
    }

    public int getSubheaderInsetStart() {
        return this.presenter.getSubheaderInsetStart();
    }

    public void setSubheaderInsetStart(int i) {
        this.presenter.setSubheaderInsetStart(i);
    }

    public int getSubheaderInsetEnd() {
        return this.presenter.getSubheaderInsetEnd();
    }

    public void setSubheaderInsetEnd(int i) {
        this.presenter.setSubheaderInsetEnd(i);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(BackEventCompat backEventCompat) {
        requireDrawerLayoutParent();
        this.sideContainerBackHelper.startBackProgress(backEventCompat);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(BackEventCompat backEventCompat) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(requireDrawerLayoutParent().second);
        throw null;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        Pair<DrawerLayout, Object> pairRequireDrawerLayoutParent = requireDrawerLayoutParent();
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(pairRequireDrawerLayoutParent.first);
        if (this.sideContainerBackHelper.onHandleBackInvoked() == null || Build.VERSION.SDK_INT < 34) {
            throw null;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(pairRequireDrawerLayoutParent.second);
        throw null;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        requireDrawerLayoutParent();
        this.sideContainerBackHelper.cancelBackProgress();
        maybeClearCornerSizeAnimationForDrawerLayout();
    }

    private Pair<DrawerLayout, Object> requireDrawerLayoutParent() {
        getParent();
        getLayoutParams();
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    MaterialSideContainerBackHelper getBackHelper() {
        return this.sideContainerBackHelper;
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new SupportMenuInflater(getContext());
        }
        return this.menuInflater;
    }

    private ColorStateList createDefaultColorStateList(int i) {
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
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    private void setupInsetScrimsListener() {
        this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.navigation.NavigationView.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                NavigationView navigationView = NavigationView.this;
                navigationView.getLocationOnScreen(navigationView.tmpLocation);
                boolean z = true;
                boolean z2 = NavigationView.this.tmpLocation[1] == 0;
                NavigationView.this.presenter.setBehindStatusBar(z2);
                NavigationView navigationView2 = NavigationView.this;
                navigationView2.setDrawTopInsetForeground(z2 && navigationView2.isTopInsetScrimEnabled());
                boolean z3 = NavigationView.this.getLayoutDirection() == 1;
                boolean z4 = NavigationView.this.tmpLocation[0] == 0 || NavigationView.this.tmpLocation[0] + NavigationView.this.getWidth() == 0;
                NavigationView navigationView3 = NavigationView.this;
                navigationView3.setDrawLeftInsetForeground(z4 && (!z3 ? !navigationView3.isStartInsetScrimEnabled() : !navigationView3.isEndInsetScrimEnabled()));
                Activity activity = ContextUtils.getActivity(NavigationView.this.getContext());
                if (activity != null) {
                    Rect currentWindowBounds = WindowUtils.getCurrentWindowBounds(activity);
                    boolean z5 = currentWindowBounds.height() - NavigationView.this.getHeight() == NavigationView.this.tmpLocation[1];
                    boolean z6 = Color.alpha(EdgeToEdgeUtils.getNavigationBarColor(activity.getWindow())) != 0;
                    NavigationView navigationView4 = NavigationView.this;
                    navigationView4.setDrawBottomInsetForeground(z5 && z6 && navigationView4.isBottomInsetScrimEnabled());
                    boolean z7 = currentWindowBounds.width() == NavigationView.this.tmpLocation[0] || currentWindowBounds.width() - NavigationView.this.getWidth() == NavigationView.this.tmpLocation[0];
                    NavigationView navigationView5 = NavigationView.this;
                    if (!z7 || (!z3 ? !navigationView5.isEndInsetScrimEnabled() : !navigationView5.isStartInsetScrimEnabled())) {
                        z = false;
                    }
                    navigationView5.setDrawRightInsetForeground(z);
                }
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.navigation.NavigationView.SavedState.1
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
        public Bundle menuState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }
    }
}
