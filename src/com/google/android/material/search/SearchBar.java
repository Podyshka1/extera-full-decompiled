package com.google.android.material.search;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1349R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class SearchBar extends Toolbar {
    private static final float ADAPTIVE_MAX_WIDTH_PERCENT_AFTER_BREAKPOINT = 0.5f;
    private static final int DEFAULT_SCROLL_FLAGS = 53;
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Material3_SearchBar;
    private static final String NAMESPACE_APP = "http://schemas.android.com/apk/res-auto";
    static final int NO_RES_ID = -1;
    private final boolean adaptiveMaxWidthEnabled;
    private final int adaptiveMaxWidthParentBreakpoint;
    private final int backgroundColor;
    private MaterialShapeDrawable backgroundShape;
    private View centerView;
    private final boolean defaultMarginsEnabled;
    private final Drawable defaultNavigationIcon;
    private boolean defaultScrollFlagsEnabled;
    private int endSiblingViewId;
    private final boolean forceDefaultNavigationOnClickListener;
    private final boolean layoutInflated;
    private final AppBarLayout.LiftOnScrollProgressListener liftColorListener;
    private boolean liftOnScroll;
    private final ColorStateList liftOnScrollColor;
    private int maxWidth;
    private int menuResId;
    private ActionMenuView menuView;
    private ImageButton navIconButton;
    private Integer navigationIconTint;
    private Drawable originalNavigationIconBackground;
    private final TextView placeholderTextView;
    private final SearchBarAnimationHelper searchBarAnimationHelper;
    private int startSiblingViewId;
    private boolean textCentered;
    private final TextView textView;
    private final FrameLayout textViewContainer;
    private final boolean tintNavigationIcon;

    public static abstract class OnLoadAnimationCallback {
        public void onAnimationEnd() {
        }

        public void onAnimationStart() {
        }
    }

    private int defaultIfZero(int i, int i2) {
        return i == 0 ? i2 : i;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public SearchBar(Context context) {
        this(context, null);
    }

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.materialSearchBarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchBar(Context context, AttributeSet attributeSet, int i) {
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.menuResId = -1;
        this.liftColorListener = new AppBarLayout.LiftOnScrollProgressListener() { // from class: com.google.android.material.search.SearchBar.1
            @Override // com.google.android.material.appbar.AppBarLayout.LiftOnScrollProgressListener
            public void onUpdate(float f, int i3, float f2) {
                if (SearchBar.this.liftOnScrollColor != null) {
                    SearchBar.this.backgroundShape.setFillColor(ColorStateList.valueOf(MaterialColors.layer(SearchBar.this.backgroundColor, SearchBar.this.liftOnScrollColor.getDefaultColor(), f2)));
                }
            }
        };
        Context context2 = getContext();
        validateAttributes(attributeSet);
        this.adaptiveMaxWidthParentBreakpoint = getResources().getDimensionPixelSize(C1349R.dimen.m3_searchbar_parent_width_breakpoint);
        this.defaultNavigationIcon = AppCompatResources.getDrawable(context2, getDefaultNavigationIconResource());
        this.searchBarAnimationHelper = new SearchBarAnimationHelper();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1349R.styleable.SearchBar, i, i2, new int[0]);
        ShapeAppearanceModel shapeAppearanceModelBuild = ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build();
        int color = typedArrayObtainStyledAttributes.getColor(C1349R.styleable.SearchBar_backgroundTint, 0);
        this.backgroundColor = color;
        this.liftOnScrollColor = MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, C1349R.styleable.SearchBar_liftOnScrollColor);
        float dimension = typedArrayObtainStyledAttributes.getDimension(C1349R.styleable.SearchBar_elevation, 0.0f);
        this.defaultMarginsEnabled = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_defaultMarginsEnabled, true);
        this.defaultScrollFlagsEnabled = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_defaultScrollFlagsEnabled, true);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_hideNavigationIcon, false);
        this.forceDefaultNavigationOnClickListener = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_forceDefaultNavigationOnClickListener, false);
        this.tintNavigationIcon = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_tintNavigationIcon, true);
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.SearchBar_navigationIconTint)) {
            this.navigationIconTint = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(C1349R.styleable.SearchBar_navigationIconTint, -1));
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.SearchBar_android_textAppearance, -1);
        String string = typedArrayObtainStyledAttributes.getString(C1349R.styleable.SearchBar_android_text);
        String string2 = typedArrayObtainStyledAttributes.getString(C1349R.styleable.SearchBar_android_hint);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(C1349R.styleable.SearchBar_strokeWidth, -1.0f);
        int color2 = typedArrayObtainStyledAttributes.getColor(C1349R.styleable.SearchBar_strokeColor, 0);
        this.textCentered = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_textCentered, false);
        this.liftOnScroll = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_liftOnScroll, false);
        this.maxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.SearchBar_android_maxWidth, -1);
        this.adaptiveMaxWidthEnabled = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.SearchBar_adaptiveMaxWidthEnabled, false);
        this.startSiblingViewId = typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.SearchBar_startSiblingViewId, -1);
        this.endSiblingViewId = typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.SearchBar_endSiblingViewId, -1);
        typedArrayObtainStyledAttributes.recycle();
        if (!z) {
            initNavigationIcon();
        }
        setClickable(true);
        setFocusable(true);
        LayoutInflater.from(context2).inflate(C1349R.layout.mtrl_search_bar, this);
        this.layoutInflated = true;
        this.textView = (TextView) findViewById(C1349R.id.open_search_bar_text_view);
        this.placeholderTextView = (TextView) findViewById(C1349R.id.open_search_bar_placeholder_text_view);
        this.textViewContainer = (FrameLayout) findViewById(C1349R.id.open_search_bar_text_view_container);
        setElevation(dimension);
        initTextView(resourceId, string, string2);
        initBackground(shapeAppearanceModelBuild, color, dimension, dimension2, color2);
    }

    void setPlaceholderText(String str) {
        this.placeholderTextView.setText(str);
    }

    private void validateAttributes(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue(NAMESPACE_APP, "title") != null) {
            throw new UnsupportedOperationException("SearchBar does not support title. Use hint or text instead.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_APP, "subtitle") != null) {
            throw new UnsupportedOperationException("SearchBar does not support subtitle. Use hint or text instead.");
        }
    }

    AppBarLayout getAppBarLayoutParentIfExists() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof AppBarLayout) {
                return (AppBarLayout) parent;
            }
        }
        return null;
    }

    private void initNavigationIcon() {
        setNavigationIcon(getNavigationIcon() == null ? this.defaultNavigationIcon : getNavigationIcon());
        setNavigationIconDecorative(true);
    }

    private void initTextView(int i, String str, String str2) {
        if (i != -1) {
            TextViewCompat.setTextAppearance(this.textView, i);
            TextViewCompat.setTextAppearance(this.placeholderTextView, i);
        }
        setText(str);
        setHint(str2);
        setTextCentered(this.textCentered);
    }

    private void initBackground(ShapeAppearanceModel shapeAppearanceModel, int i, float f, float f2, int i2) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
        this.backgroundShape = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(getContext());
        this.backgroundShape.setElevation(f);
        if (f2 >= 0.0f) {
            this.backgroundShape.setStroke(f2, i2);
        }
        int color = MaterialColors.getColor(this, R$attr.colorControlHighlight);
        this.backgroundShape.setFillColor(ColorStateList.valueOf(i));
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(color);
        MaterialShapeDrawable materialShapeDrawable2 = this.backgroundShape;
        setBackground(new RippleDrawable(colorStateListValueOf, materialShapeDrawable2, materialShapeDrawable2));
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.layoutInflated && this.centerView == null && !(view instanceof ActionMenuView)) {
            this.centerView = view;
            view.setAlpha(0.0f);
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeDrawable materialShapeDrawable = this.backgroundShape;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setElevation(f);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        if (Build.VERSION.SDK_INT >= 26) {
            accessibilityNodeInfo.setHintText(getHint());
            accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        }
        if (zIsEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        if (this.forceDefaultNavigationOnClickListener) {
            return;
        }
        super.setNavigationOnClickListener(onClickListener);
        setNavigationIconDecorative(onClickListener == null);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    private Drawable maybeTintNavigationIcon(Drawable drawable) {
        int i;
        int color;
        if (!this.tintNavigationIcon || drawable == null) {
            return drawable;
        }
        Integer num = this.navigationIconTint;
        if (num != null) {
            color = num.intValue();
        } else {
            if (drawable == this.defaultNavigationIcon) {
                i = C1349R.attr.colorOnSurfaceVariant;
            } else {
                i = C1349R.attr.colorOnSurface;
            }
            color = MaterialColors.getColor(this, i);
        }
        Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
        drawableWrap.setTint(color);
        return drawableWrap;
    }

    private void setNavigationIconDecorative(boolean z) {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this);
        if (navigationIconButton == null) {
            return;
        }
        navigationIconButton.setClickable(!z);
        navigationIconButton.setFocusable(!z);
        Drawable background = navigationIconButton.getBackground();
        if (background != null) {
            this.originalNavigationIconBackground = background;
        }
        navigationIconButton.setBackgroundDrawable(z ? null : this.originalNavigationIconBackground);
        setHandwritingBoundsInsets();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(int i) {
        super.inflateMenu(i);
        this.menuResId = i;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int i4 = this.maxWidth;
        if (i4 >= 0 && size > i4) {
            i = View.MeasureSpec.makeMeasureSpec(i4, mode);
        } else if (this.adaptiveMaxWidthEnabled && size > (i3 = this.adaptiveMaxWidthParentBreakpoint)) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max(i3, Math.round(size * ADAPTIVE_MAX_WIDTH_PERCENT_AFTER_BREAKPOINT)), mode);
        }
        super.onMeasure(i, i2);
        measureCenterView(i, i2);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = this.centerView;
        if (view != null) {
            layoutViewInCenter(view);
        }
        setHandwritingBoundsInsets();
        if (this.textView == null || !this.textCentered) {
            return;
        }
        layoutTextViewCenterAvoidToolbarViewsAndPadding();
    }

    public void setLiftOnScroll(boolean z) {
        this.liftOnScroll = z;
        if (z) {
            addLiftOnScrollProgressListener();
        } else {
            removeLiftOnScrollProgressListener();
        }
    }

    public boolean isLiftOnScroll() {
        return this.liftOnScroll;
    }

    private void addLiftOnScrollProgressListener() {
        AppBarLayout appBarLayoutParentIfExists = getAppBarLayoutParentIfExists();
        if (appBarLayoutParentIfExists == null || this.liftOnScrollColor == null) {
            return;
        }
        appBarLayoutParentIfExists.addLiftOnScrollProgressListener(this.liftColorListener);
    }

    private void removeLiftOnScrollProgressListener() {
        AppBarLayout appBarLayoutParentIfExists = getAppBarLayoutParentIfExists();
        if (appBarLayoutParentIfExists != null) {
            appBarLayoutParentIfExists.removeLiftOnScrollProgressListener(this.liftColorListener);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.backgroundShape);
        setDefaultMargins();
        setOrClearDefaultScrollFlags();
        if (this.liftOnScroll) {
            addLiftOnScrollProgressListener();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeLiftOnScrollProgressListener();
    }

    private void setDefaultMargins() {
        if (this.defaultMarginsEnabled && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(C1349R.dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(getDefaultMarginVerticalResource());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            marginLayoutParams.leftMargin = defaultIfZero(marginLayoutParams.leftMargin, dimensionPixelSize);
            marginLayoutParams.topMargin = defaultIfZero(marginLayoutParams.topMargin, dimensionPixelSize2);
            marginLayoutParams.rightMargin = defaultIfZero(marginLayoutParams.rightMargin, dimensionPixelSize);
            marginLayoutParams.bottomMargin = defaultIfZero(marginLayoutParams.bottomMargin, dimensionPixelSize2);
        }
    }

    protected int getDefaultMarginVerticalResource() {
        return C1349R.dimen.m3_searchbar_margin_vertical;
    }

    protected int getDefaultNavigationIconResource() {
        return C1349R.drawable.ic_search_black_24;
    }

    private void setOrClearDefaultScrollFlags() {
        if (getLayoutParams() instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams = (AppBarLayout.LayoutParams) getLayoutParams();
            if (this.defaultScrollFlagsEnabled) {
                if (layoutParams.getScrollFlags() == 0) {
                    layoutParams.setScrollFlags(53);
                }
            } else if (layoutParams.getScrollFlags() == 53) {
                layoutParams.setScrollFlags(0);
            }
        }
    }

    private void measureCenterView(int i, int i2) {
        View view = this.centerView;
        if (view != null) {
            view.measure(i, i2);
        }
    }

    private ActionMenuView findOrGetMenuView() {
        if (this.menuView == null) {
            this.menuView = ToolbarUtils.getActionMenuView(this);
        }
        return this.menuView;
    }

    private ImageButton findOrGetNavView() {
        if (this.navIconButton == null) {
            this.navIconButton = ToolbarUtils.getNavigationIconButton(this);
        }
        return this.navIconButton;
    }

    private void layoutTextViewCenterAvoidToolbarViewsAndPadding() {
        int measuredWidth = (getMeasuredWidth() / 2) - (this.textViewContainer.getMeasuredWidth() / 2);
        int measuredWidth2 = this.textViewContainer.getMeasuredWidth() + measuredWidth;
        int measuredHeight = (getMeasuredHeight() / 2) - (this.textViewContainer.getMeasuredHeight() / 2);
        int measuredHeight2 = this.textViewContainer.getMeasuredHeight() + measuredHeight;
        boolean z = getLayoutDirection() == 1;
        View viewFindOrGetMenuView = findOrGetMenuView();
        ImageButton imageButtonFindOrGetNavView = findOrGetNavView();
        int measuredWidth3 = (this.textViewContainer.getMeasuredWidth() / 2) - (this.textView.getMeasuredWidth() / 2);
        int measuredWidth4 = this.textView.getMeasuredWidth() + measuredWidth3;
        int i = measuredWidth3 + measuredWidth;
        int i2 = measuredWidth4 + measuredWidth;
        View view = z ? viewFindOrGetMenuView : imageButtonFindOrGetNavView;
        if (z) {
            viewFindOrGetMenuView = imageButtonFindOrGetNavView;
        }
        int iMax = view != null ? Math.max(view.getRight() - i, 0) : 0;
        int i3 = i + iMax;
        int i4 = i2 + iMax;
        int iMax2 = viewFindOrGetMenuView != null ? Math.max(i4 - viewFindOrGetMenuView.getLeft(), 0) : 0;
        int i5 = i3 - iMax2;
        int i6 = i4 - iMax2;
        int iMax3 = ((iMax - iMax2) + Math.max(Math.max(getPaddingLeft() - i5, getContentInsetLeft() - i5), 0)) - Math.max(Math.max(i6 - (getMeasuredWidth() - getPaddingRight()), i6 - (getMeasuredWidth() - getContentInsetRight())), 0);
        this.textViewContainer.layout(measuredWidth + iMax3, measuredHeight, measuredWidth2 + iMax3, measuredHeight2);
    }

    private void layoutViewInCenter(View view) {
        if (view == null) {
            return;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
        int i = measuredWidth2 + measuredWidth;
        int measuredHeight = view.getMeasuredHeight();
        int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
        layoutChild(view, measuredWidth2, measuredHeight2, i, measuredHeight2 + measuredHeight);
    }

    private void layoutChild(View view, int i, int i2, int i3, int i4) {
        if (getLayoutDirection() == 1) {
            view.layout(getMeasuredWidth() - i3, i2, getMeasuredWidth() - i, i4);
        } else {
            view.layout(i, i2, i3, i4);
        }
    }

    private void setHandwritingBoundsInsets() {
        int width;
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        int right = 0;
        boolean z = getLayoutDirection() == 1;
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this);
        if (navigationIconButton == null || !navigationIconButton.isClickable()) {
            width = 0;
        } else {
            width = z ? getWidth() - navigationIconButton.getLeft() : navigationIconButton.getRight();
        }
        ActionMenuView actionMenuView = ToolbarUtils.getActionMenuView(this);
        if (actionMenuView != null) {
            right = z ? actionMenuView.getRight() : getWidth() - actionMenuView.getLeft();
        }
        float f = -(z ? right : width);
        if (!z) {
            width = right;
        }
        setHandwritingBoundsOffsets(f, 0.0f, -width, 0.0f);
    }

    public View getCenterView() {
        return this.centerView;
    }

    public void setCenterView(View view) {
        View view2 = this.centerView;
        if (view2 != null) {
            removeView(view2);
            this.centerView = null;
        }
        if (view != null) {
            addView(view);
        }
    }

    TextView getPlaceholderTextView() {
        return this.placeholderTextView;
    }

    public TextView getTextView() {
        return this.textView;
    }

    public CharSequence getText() {
        return this.textView.getText();
    }

    public void setText(CharSequence charSequence) {
        this.textView.setText(charSequence);
        this.placeholderTextView.setText(charSequence);
    }

    public void setText(int i) {
        this.textView.setText(i);
        this.placeholderTextView.setText(i);
    }

    public void setTextCentered(boolean z) {
        this.textCentered = z;
        TextView textView = this.textView;
        if (textView == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams();
        if (z) {
            layoutParams.gravity = 1;
            this.textView.setGravity(1);
        } else {
            layoutParams.gravity = 0;
            this.textView.setGravity(0);
        }
        this.textView.setLayoutParams(layoutParams);
        this.placeholderTextView.setLayoutParams(layoutParams);
    }

    public boolean getTextCentered() {
        return this.textCentered;
    }

    public void clearText() {
        this.textView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.placeholderTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    public CharSequence getHint() {
        return this.textView.getHint();
    }

    public int getStartSiblingViewId() {
        return this.startSiblingViewId;
    }

    public void setStartSiblingViewId(int i) {
        this.startSiblingViewId = i;
    }

    public int getEndSiblingViewId() {
        return this.endSiblingViewId;
    }

    public void setEndSiblingViewId(int i) {
        this.endSiblingViewId = i;
    }

    public void setHint(CharSequence charSequence) {
        this.textView.setHint(charSequence);
    }

    public void setHint(int i) {
        this.textView.setHint(i);
    }

    public int getStrokeColor() {
        return this.backgroundShape.getStrokeColor().getDefaultColor();
    }

    public void setStrokeColor(int i) {
        if (getStrokeColor() != i) {
            this.backgroundShape.setStrokeColor(ColorStateList.valueOf(i));
        }
    }

    public float getStrokeWidth() {
        return this.backgroundShape.getStrokeWidth();
    }

    public void setStrokeWidth(float f) {
        if (getStrokeWidth() != f) {
            this.backgroundShape.setStrokeWidth(f);
        }
    }

    public float getCornerSize() {
        return this.backgroundShape.getTopLeftCornerResolvedSize();
    }

    public boolean isDefaultScrollFlagsEnabled() {
        return this.defaultScrollFlagsEnabled;
    }

    public void setDefaultScrollFlagsEnabled(boolean z) {
        this.defaultScrollFlagsEnabled = z;
        setOrClearDefaultScrollFlags();
    }

    public void startOnLoadAnimation() {
        post(new Runnable() { // from class: com.google.android.material.search.SearchBar$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SearchBar searchBar = this.f$0;
                searchBar.searchBarAnimationHelper.startOnLoadAnimation(searchBar);
            }
        });
    }

    public void stopOnLoadAnimation() {
        this.searchBarAnimationHelper.stopOnLoadAnimation(this);
    }

    public boolean isOnLoadAnimationFadeInEnabled() {
        return this.searchBarAnimationHelper.isOnLoadAnimationFadeInEnabled();
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z) {
        this.searchBarAnimationHelper.setOnLoadAnimationFadeInEnabled(z);
    }

    public void addOnLoadAnimationCallback(OnLoadAnimationCallback onLoadAnimationCallback) {
        this.searchBarAnimationHelper.addOnLoadAnimationCallback(onLoadAnimationCallback);
    }

    public boolean removeOnLoadAnimationCallback(OnLoadAnimationCallback onLoadAnimationCallback) {
        return this.searchBarAnimationHelper.removeOnLoadAnimationCallback(onLoadAnimationCallback);
    }

    public boolean isExpanding() {
        return this.searchBarAnimationHelper.isExpanding();
    }

    public boolean expand(View view) {
        return expand(view, null);
    }

    public boolean expand(View view, AppBarLayout appBarLayout) {
        return expand(view, appBarLayout, false);
    }

    public boolean expand(View view, AppBarLayout appBarLayout, boolean z) {
        if ((view.getVisibility() == 0 || isExpanding()) && !isCollapsing()) {
            return false;
        }
        this.searchBarAnimationHelper.startExpandAnimation(this, view, appBarLayout, z);
        return true;
    }

    public void addExpandAnimationListener(AnimatorListenerAdapter animatorListenerAdapter) {
        this.searchBarAnimationHelper.addExpandAnimationListener(animatorListenerAdapter);
    }

    public boolean removeExpandAnimationListener(AnimatorListenerAdapter animatorListenerAdapter) {
        return this.searchBarAnimationHelper.removeExpandAnimationListener(animatorListenerAdapter);
    }

    public boolean isCollapsing() {
        return this.searchBarAnimationHelper.isCollapsing();
    }

    public boolean collapse(View view) {
        return collapse(view, null);
    }

    public boolean collapse(View view, AppBarLayout appBarLayout) {
        return collapse(view, appBarLayout, false);
    }

    public boolean collapse(View view, AppBarLayout appBarLayout, boolean z) {
        if ((view.getVisibility() != 0 || isCollapsing()) && !isExpanding()) {
            return false;
        }
        this.searchBarAnimationHelper.startCollapseAnimation(this, view, appBarLayout, z);
        return true;
    }

    public void addCollapseAnimationListener(AnimatorListenerAdapter animatorListenerAdapter) {
        this.searchBarAnimationHelper.addCollapseAnimationListener(animatorListenerAdapter);
    }

    public boolean removeCollapseAnimationListener(AnimatorListenerAdapter animatorListenerAdapter) {
        return this.searchBarAnimationHelper.removeCollapseAnimationListener(animatorListenerAdapter);
    }

    int getMenuResId() {
        return this.menuResId;
    }

    float getCompatElevation() {
        MaterialShapeDrawable materialShapeDrawable = this.backgroundShape;
        return materialShapeDrawable != null ? materialShapeDrawable.getElevation() : getElevation();
    }

    public void setMaxWidth(int i) {
        if (this.maxWidth != i) {
            this.maxWidth = i;
            requestLayout();
        }
    }

    public int getMaxWidth() {
        return this.maxWidth;
    }

    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {
        private boolean initialized;

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        protected boolean shouldHeaderOverlapScrollingChild() {
            return true;
        }

        public ScrollingViewBehavior() {
            this.initialized = false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.initialized = false;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            boolean zOnDependentViewChanged = super.onDependentViewChanged(coordinatorLayout, view, view2);
            if (!this.initialized && (view2 instanceof AppBarLayout)) {
                this.initialized = true;
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                appBarLayout.setTouchscreenBlocksFocus(false);
                setAppBarLayoutTransparent(appBarLayout);
            }
            return zOnDependentViewChanged;
        }

        private void setAppBarLayoutTransparent(AppBarLayout appBarLayout) {
            appBarLayout.setBackgroundColor(0);
            appBarLayout.setTargetElevation(0.0f);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        savedState.text = text == null ? null : text.toString();
        return savedState;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.text);
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.search.SearchBar.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        String text;

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.text = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.text);
        }
    }
}
