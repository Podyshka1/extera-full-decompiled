package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.R$style;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes5.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    private static final int COLLAPSED_TITLE_GRAVITY_AVAILABLE_SPACE = 1;
    private static final int COLLAPSED_TITLE_GRAVITY_ENTIRE_SPACE = 0;
    private static final int DEFAULT_SCRIM_ANIMATION_DURATION = 600;
    private static final int DEF_STYLE_RES = C1349R.style.Widget_Design_CollapsingToolbar;
    public static final int TITLE_COLLAPSE_MODE_FADE = 1;
    public static final int TITLE_COLLAPSE_MODE_SCALE = 0;
    private final int collapsedTitleGravityMode;
    final CollapsingTextHelper collapsingSubtitleHelper;
    private boolean collapsingTitleEnabled;
    final CollapsingTextHelper collapsingTitleHelper;
    private Drawable contentScrim;
    int currentOffset;
    private boolean drawCollapsingTitle;
    private View dummyView;
    final ElevationOverlayProvider elevationOverlayProvider;
    private int expandedMarginBottom;
    private int expandedMarginEnd;
    private int expandedMarginStart;
    private int expandedMarginTop;
    private int expandedTitleSpacing;
    private int extraHeightForTitles;
    private boolean extraMultilineHeightEnabled;
    private int extraMultilineSubtitleHeight;
    private int extraMultilineTitleHeight;
    private boolean forceApplySystemWindowInsetTop;
    WindowInsetsCompat lastInsets;
    private AppBarLayout.OnOffsetChangedListener onOffsetChangedListener;
    private boolean refreshToolbar;
    private int screenOrientation;
    private int scrimAlpha;
    private long scrimAnimationDuration;
    private final TimeInterpolator scrimAnimationFadeInInterpolator;
    private final TimeInterpolator scrimAnimationFadeOutInterpolator;
    private ValueAnimator scrimAnimator;
    private int scrimVisibleHeightTrigger;
    private boolean scrimsAreShown;
    Drawable statusBarScrim;
    private int titleCollapseMode;
    private final Rect tmpRect;
    private ViewGroup toolbar;
    private View toolbarDirectChild;
    private int toolbarId;
    private int topInsetApplied;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CollapsedTitleGravityMode {
    }

    public interface StaticLayoutBuilderConfigurer extends com.google.android.material.internal.StaticLayoutBuilderConfigurer {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TitleCollapseMode {
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.collapsingToolbarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.refreshToolbar = true;
        this.tmpRect = new Rect();
        this.scrimVisibleHeightTrigger = -1;
        this.topInsetApplied = 0;
        this.extraMultilineTitleHeight = 0;
        this.extraMultilineSubtitleHeight = 0;
        this.extraHeightForTitles = 0;
        Context context2 = getContext();
        this.screenOrientation = getResources().getConfiguration().orientation;
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.collapsingTitleHelper = collapsingTextHelper;
        TimeInterpolator timeInterpolator = AnimationUtils.DECELERATE_INTERPOLATOR;
        collapsingTextHelper.setTextSizeInterpolator(timeInterpolator);
        collapsingTextHelper.setRtlTextDirectionHeuristicsEnabled(false);
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1349R.styleable.CollapsingToolbarLayout, i, i2, new int[0]);
        int i3 = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691);
        int i4 = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, NavigationBarView.ITEM_GRAVITY_START_CENTER);
        this.collapsedTitleGravityMode = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_collapsedTitleGravityMode, 1);
        collapsingTextHelper.setExpandedTextGravity(i3);
        collapsingTextHelper.setCollapsedTextGravity(i4);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.expandedMarginBottom = dimensionPixelSize;
        this.expandedMarginEnd = dimensionPixelSize;
        this.expandedMarginTop = dimensionPixelSize;
        this.expandedMarginStart = dimensionPixelSize;
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.expandedMarginStart = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.expandedMarginEnd = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.expandedMarginTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.expandedMarginBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedTitleSpacing)) {
            this.expandedTitleSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.CollapsingToolbarLayout_expandedTitleSpacing, 0);
        }
        this.collapsingTitleEnabled = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(typedArrayObtainStyledAttributes.getText(C1349R.styleable.CollapsingToolbarLayout_title));
        collapsingTextHelper.setExpandedTextAppearance(C1349R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        collapsingTextHelper.setCollapsedTextAppearance(R$style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            collapsingTextHelper.setExpandedTextAppearance(typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            collapsingTextHelper.setCollapsedTextAppearance(typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_titleTextEllipsize)) {
            setTitleEllipsize(convertEllipsizeToTruncateAt(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_titleTextEllipsize, -1)));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedTitleTextColor)) {
            collapsingTextHelper.setExpandedTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, C1349R.styleable.CollapsingToolbarLayout_expandedTitleTextColor));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_collapsedTitleTextColor)) {
            collapsingTextHelper.setCollapsedTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, C1349R.styleable.CollapsingToolbarLayout_collapsedTitleTextColor));
        }
        this.scrimVisibleHeightTrigger = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_titleMaxLines)) {
            collapsingTextHelper.setExpandedMaxLines(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_titleMaxLines, 1));
        } else if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_maxLines)) {
            collapsingTextHelper.setExpandedMaxLines(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_maxLines, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_titlePositionInterpolator)) {
            collapsingTextHelper.setPositionInterpolator(android.view.animation.AnimationUtils.loadInterpolator(context2, typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.CollapsingToolbarLayout_titlePositionInterpolator, 0)));
        }
        CollapsingTextHelper collapsingTextHelper2 = new CollapsingTextHelper(this);
        this.collapsingSubtitleHelper = collapsingTextHelper2;
        collapsingTextHelper2.setTextSizeInterpolator(timeInterpolator);
        collapsingTextHelper2.setRtlTextDirectionHeuristicsEnabled(false);
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_subtitle)) {
            setSubtitle(typedArrayObtainStyledAttributes.getText(C1349R.styleable.CollapsingToolbarLayout_subtitle));
        }
        collapsingTextHelper2.setExpandedTextGravity(i3);
        collapsingTextHelper2.setCollapsedTextGravity(i4);
        collapsingTextHelper2.setExpandedTextAppearance(R$style.TextAppearance_AppCompat_Headline);
        collapsingTextHelper2.setCollapsedTextAppearance(R$style.TextAppearance_AppCompat_Widget_ActionBar_Subtitle);
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedSubtitleTextAppearance)) {
            collapsingTextHelper2.setExpandedTextAppearance(typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.CollapsingToolbarLayout_expandedSubtitleTextAppearance, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_collapsedSubtitleTextAppearance)) {
            collapsingTextHelper2.setCollapsedTextAppearance(typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.CollapsingToolbarLayout_collapsedSubtitleTextAppearance, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_expandedSubtitleTextColor)) {
            collapsingTextHelper2.setExpandedTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, C1349R.styleable.CollapsingToolbarLayout_expandedSubtitleTextColor));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_collapsedSubtitleTextColor)) {
            collapsingTextHelper2.setCollapsedTextColor(MaterialResources.getColorStateList(context2, typedArrayObtainStyledAttributes, C1349R.styleable.CollapsingToolbarLayout_collapsedSubtitleTextColor));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_subtitleMaxLines)) {
            collapsingTextHelper2.setExpandedMaxLines(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_subtitleMaxLines, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.CollapsingToolbarLayout_titlePositionInterpolator)) {
            collapsingTextHelper2.setPositionInterpolator(android.view.animation.AnimationUtils.loadInterpolator(context2, typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.CollapsingToolbarLayout_titlePositionInterpolator, 0)));
        }
        this.scrimAnimationDuration = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, DEFAULT_SCRIM_ANIMATION_DURATION);
        this.scrimAnimationFadeInInterpolator = MotionUtils.resolveThemeInterpolator(context2, C1349R.attr.motionEasingStandardInterpolator, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        this.scrimAnimationFadeOutInterpolator = MotionUtils.resolveThemeInterpolator(context2, C1349R.attr.motionEasingStandardInterpolator, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        setContentScrim(typedArrayObtainStyledAttributes.getDrawable(C1349R.styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(typedArrayObtainStyledAttributes.getDrawable(C1349R.styleable.CollapsingToolbarLayout_statusBarScrim));
        setTitleCollapseMode(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_titleCollapseMode, 0));
        this.toolbarId = typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.CollapsingToolbarLayout_toolbarId, -1);
        this.forceApplySystemWindowInsetTop = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.CollapsingToolbarLayout_forceApplySystemWindowInsetTop, false);
        this.extraMultilineHeightEnabled = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.CollapsingToolbarLayout_extraMultilineHeightEnabled, false);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return CollapsingToolbarLayout.this.onWindowInsetChanged(windowInsetsCompat);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            disableLiftOnScrollIfNeeded(appBarLayout);
            setFitsSystemWindows(appBarLayout.getFitsSystemWindows());
            if (this.onOffsetChangedListener == null) {
                this.onOffsetChangedListener = new OffsetUpdateListener();
            }
            appBarLayout.addOnOffsetChangedListener(this.onOffsetChangedListener);
            requestApplyInsets();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = this.onOffsetChangedListener;
        if (onOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(onOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = getFitsSystemWindows() ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        ensureToolbar();
        if (this.toolbar == null && (drawable = this.contentScrim) != null && this.scrimAlpha > 0) {
            drawable.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
        }
        if (this.collapsingTitleEnabled && this.drawCollapsingTitle) {
            if (this.toolbar != null && this.contentScrim != null && this.scrimAlpha > 0 && isTitleCollapseFadeMode() && this.collapsingTitleHelper.getExpansionFraction() < this.collapsingTitleHelper.getFadeModeThresholdFraction()) {
                int iSave = canvas.save();
                canvas.clipRect(this.contentScrim.getBounds(), Region.Op.DIFFERENCE);
                this.collapsingTitleHelper.draw(canvas);
                this.collapsingSubtitleHelper.draw(canvas);
                canvas.restoreToCount(iSave);
            } else {
                this.collapsingTitleHelper.draw(canvas);
                this.collapsingSubtitleHelper.draw(canvas);
            }
        }
        if (this.statusBarScrim == null || this.scrimAlpha <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.statusBarScrim.setBounds(0, -this.currentOffset, getWidth(), systemWindowInsetTop - this.currentOffset);
            this.statusBarScrim.mutate().setAlpha(this.scrimAlpha);
            this.statusBarScrim.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.collapsingTitleHelper.maybeUpdateFontWeightAdjustment(configuration);
        if (this.screenOrientation != configuration.orientation && this.extraMultilineHeightEnabled && this.collapsingTitleHelper.getExpansionFraction() == 1.0f) {
            maybeSetPendingActionCollapsed();
        }
        this.screenOrientation = configuration.orientation;
    }

    private void maybeSetPendingActionCollapsed() {
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (appBarLayout.getPendingAction() == 0) {
                appBarLayout.setPendingAction(2);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.contentScrim == null || this.scrimAlpha <= 0 || !isToolbarChild(view)) {
            z = false;
        } else {
            updateContentScrimBounds(this.contentScrim, view, getWidth(), getHeight());
            this.contentScrim.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.contentScrim;
        if (drawable != null) {
            updateContentScrimBounds(drawable, i, i2);
        }
    }

    private boolean isTitleCollapseFadeMode() {
        return this.titleCollapseMode == 1;
    }

    private void disableLiftOnScrollIfNeeded(AppBarLayout appBarLayout) {
        if (isTitleCollapseFadeMode()) {
            appBarLayout.setLiftOnScroll(false);
        }
    }

    private void updateContentScrimBounds(Drawable drawable, int i, int i2) {
        updateContentScrimBounds(drawable, this.toolbar, i, i2);
    }

    private void updateContentScrimBounds(Drawable drawable, View view, int i, int i2) {
        if (isTitleCollapseFadeMode() && view != null && this.collapsingTitleEnabled) {
            i2 = view.getBottom();
        }
        drawable.setBounds(0, 0, i, i2);
    }

    private void ensureToolbar() {
        if (this.refreshToolbar) {
            ViewGroup viewGroup = null;
            this.toolbar = null;
            this.toolbarDirectChild = null;
            int i = this.toolbarId;
            if (i != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
                this.toolbar = viewGroup2;
                if (viewGroup2 != null) {
                    this.toolbarDirectChild = findDirectChild(viewGroup2);
                }
            }
            if (this.toolbar == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (isToolbar(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i2++;
                }
                this.toolbar = viewGroup;
            }
            updateDummyView();
            this.refreshToolbar = false;
        }
    }

    private static boolean isToolbar(View view) {
        return (view instanceof Toolbar) || (view instanceof android.widget.Toolbar);
    }

    private boolean isToolbarChild(View view) {
        View view2 = this.toolbarDirectChild;
        return (view2 == null || view2 == this) ? view == this.toolbar : view == view2;
    }

    private View findDirectChild(View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    private void updateDummyView() {
        View view;
        if (!this.collapsingTitleEnabled && (view = this.dummyView) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.dummyView);
            }
        }
        if (!this.collapsingTitleEnabled || this.toolbar == null) {
            return;
        }
        if (this.dummyView == null) {
            this.dummyView = new View(getContext());
        }
        if (this.dummyView.getParent() == null) {
            this.toolbar.addView(this.dummyView, -1, -1);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        CollapsingToolbarLayout collapsingToolbarLayout;
        ensureToolbar();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if ((mode == 0 || this.forceApplySystemWindowInsetTop) && systemWindowInsetTop > 0) {
            this.topInsetApplied = systemWindowInsetTop;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, TLObject.FLAG_30));
        }
        updateTitleFromToolbarIfNeeded();
        if (!this.collapsingTitleEnabled || TextUtils.isEmpty(this.collapsingTitleHelper.getText())) {
            collapsingToolbarLayout = this;
        } else {
            int measuredHeight = getMeasuredHeight();
            collapsingToolbarLayout = this;
            collapsingToolbarLayout.updateTextBounds(0, 0, getMeasuredWidth(), measuredHeight, true);
            int expandedTextFullSingleLineHeight = (int) (collapsingToolbarLayout.topInsetApplied + collapsingToolbarLayout.expandedMarginTop + collapsingToolbarLayout.collapsingTitleHelper.getExpandedTextFullSingleLineHeight() + (TextUtils.isEmpty(collapsingToolbarLayout.collapsingSubtitleHelper.getText()) ? 0.0f : collapsingToolbarLayout.expandedTitleSpacing + collapsingToolbarLayout.collapsingSubtitleHelper.getExpandedTextFullSingleLineHeight()) + collapsingToolbarLayout.expandedMarginBottom);
            if (expandedTextFullSingleLineHeight > measuredHeight) {
                collapsingToolbarLayout.extraHeightForTitles = expandedTextFullSingleLineHeight - measuredHeight;
            } else {
                collapsingToolbarLayout.extraHeightForTitles = 0;
            }
            if (collapsingToolbarLayout.extraMultilineHeightEnabled) {
                if (collapsingToolbarLayout.collapsingTitleHelper.getExpandedMaxLines() > 1) {
                    int expandedLineCount = collapsingToolbarLayout.collapsingTitleHelper.getExpandedLineCount();
                    if (expandedLineCount > 1) {
                        collapsingToolbarLayout.extraMultilineTitleHeight = Math.round(collapsingToolbarLayout.collapsingTitleHelper.getExpandedTextFullSingleLineHeight()) * (expandedLineCount - 1);
                    } else {
                        collapsingToolbarLayout.extraMultilineTitleHeight = 0;
                    }
                }
                if (collapsingToolbarLayout.collapsingSubtitleHelper.getExpandedMaxLines() > 1) {
                    int expandedLineCount2 = collapsingToolbarLayout.collapsingSubtitleHelper.getExpandedLineCount();
                    if (expandedLineCount2 > 1) {
                        collapsingToolbarLayout.extraMultilineSubtitleHeight = Math.round(collapsingToolbarLayout.collapsingSubtitleHelper.getExpandedTextFullSingleLineHeight()) * (expandedLineCount2 - 1);
                    } else {
                        collapsingToolbarLayout.extraMultilineSubtitleHeight = 0;
                    }
                }
            }
            int i3 = collapsingToolbarLayout.extraHeightForTitles;
            int i4 = collapsingToolbarLayout.extraMultilineTitleHeight;
            int i5 = collapsingToolbarLayout.extraMultilineSubtitleHeight;
            if (i3 + i4 + i5 > 0) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(measuredHeight + i3 + i4 + i5, TLObject.FLAG_30));
            }
        }
        ViewGroup viewGroup = collapsingToolbarLayout.toolbar;
        if (viewGroup != null) {
            View view = collapsingToolbarLayout.toolbarDirectChild;
            if (view == null || view == collapsingToolbarLayout) {
                setMinimumHeight(getHeightWithMargins(viewGroup));
            } else {
                setMinimumHeight(getHeightWithMargins(view));
            }
        }
        if (collapsingToolbarLayout.extraMultilineHeightEnabled && collapsingToolbarLayout.collapsingTitleHelper.getExpandedMaxLines() > 1 && collapsingToolbarLayout.collapsingTitleHelper.getExpansionFraction() == 1.0f) {
            maybeSetPendingActionCollapsed();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            getViewOffsetHelper(getChildAt(i6)).onViewLayout();
        }
        updateTextBounds(i, i2, i3, i4, false);
        updateTitleFromToolbarIfNeeded();
        updateScrimVisibility();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            getViewOffsetHelper(getChildAt(i7)).applyOffsets();
        }
    }

    private void updateTextBounds(int i, int i2, int i3, int i4, boolean z) {
        View view;
        if (!this.collapsingTitleEnabled || (view = this.dummyView) == null) {
            return;
        }
        boolean z2 = view.isAttachedToWindow() && this.dummyView.getVisibility() == 0;
        this.drawCollapsingTitle = z2;
        if (z2 || z) {
            boolean z3 = getLayoutDirection() == 1;
            updateCollapsedBounds(z3);
            int i5 = z3 ? this.expandedMarginEnd : this.expandedMarginStart;
            int i6 = this.tmpRect.top + this.expandedMarginTop;
            int i7 = (i3 - i) - (z3 ? this.expandedMarginStart : this.expandedMarginEnd);
            int i8 = (i4 - i2) - this.expandedMarginBottom;
            if (TextUtils.isEmpty(this.collapsingSubtitleHelper.getText())) {
                this.collapsingTitleHelper.setExpandedBounds(i5, i6, i7, i8);
                this.collapsingTitleHelper.recalculate(z);
            } else {
                this.collapsingTitleHelper.setExpandedBounds(i5, i6, i7, (int) ((i8 - (this.collapsingSubtitleHelper.getExpandedTextFullSingleLineHeight() + this.extraMultilineSubtitleHeight)) - this.expandedTitleSpacing), false);
                this.collapsingSubtitleHelper.setExpandedBounds(i5, (int) (i6 + this.collapsingTitleHelper.getExpandedTextFullSingleLineHeight() + this.extraMultilineTitleHeight + this.expandedTitleSpacing), i7, i8, false);
                this.collapsingTitleHelper.recalculate(z);
                this.collapsingSubtitleHelper.recalculate(z);
            }
        }
    }

    private void updateTitleFromToolbarIfNeeded() {
        ViewGroup viewGroup = this.toolbar;
        if (viewGroup == null || !this.collapsingTitleEnabled) {
            return;
        }
        CharSequence toolbarTitle = getToolbarTitle(viewGroup);
        if (TextUtils.isEmpty(this.collapsingTitleHelper.getText()) && !TextUtils.isEmpty(toolbarTitle)) {
            setTitle(toolbarTitle);
        }
        CharSequence toolbarSubtitle = getToolbarSubtitle(this.toolbar);
        if (!TextUtils.isEmpty(this.collapsingSubtitleHelper.getText()) || TextUtils.isEmpty(toolbarSubtitle)) {
            return;
        }
        setSubtitle(toolbarSubtitle);
    }

    private void updateCollapsedBounds(boolean z) {
        int titleMarginStart;
        int titleMarginBottom;
        int titleMarginEnd;
        int titleMarginTop;
        View view = this.toolbarDirectChild;
        if (view == null) {
            view = this.toolbar;
        }
        int maxOffsetForPinChild = getMaxOffsetForPinChild(view);
        DescendantOffsetUtils.getDescendantRect(this, this.dummyView, this.tmpRect);
        ViewGroup viewGroup = this.toolbar;
        if (viewGroup instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup;
            titleMarginStart = toolbar.getTitleMarginStart();
            titleMarginEnd = toolbar.getTitleMarginEnd();
            titleMarginTop = toolbar.getTitleMarginTop();
            titleMarginBottom = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
            titleMarginStart = 0;
            titleMarginBottom = 0;
            titleMarginEnd = 0;
            titleMarginTop = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
            titleMarginStart = toolbar2.getTitleMarginStart();
            titleMarginEnd = toolbar2.getTitleMarginEnd();
            titleMarginTop = toolbar2.getTitleMarginTop();
            titleMarginBottom = toolbar2.getTitleMarginBottom();
        }
        Rect rect = this.tmpRect;
        int i = rect.left + (z ? titleMarginEnd : titleMarginStart);
        int i2 = rect.right - (z ? titleMarginStart : titleMarginEnd);
        int i3 = rect.top + maxOffsetForPinChild + titleMarginTop;
        int i4 = (rect.bottom + maxOffsetForPinChild) - titleMarginBottom;
        int collapsedFullSingleLineHeight = (int) (i4 - this.collapsingSubtitleHelper.getCollapsedFullSingleLineHeight());
        int collapsedFullSingleLineHeight2 = (int) (i3 + this.collapsingTitleHelper.getCollapsedFullSingleLineHeight());
        if (TextUtils.isEmpty(this.collapsingSubtitleHelper.getText())) {
            this.collapsingTitleHelper.setCollapsedBounds(i, i3, i2, i4);
        } else {
            this.collapsingTitleHelper.setCollapsedBounds(i, i3, i2, collapsedFullSingleLineHeight);
            this.collapsingSubtitleHelper.setCollapsedBounds(i, collapsedFullSingleLineHeight2, i2, i4);
        }
        if (this.collapsedTitleGravityMode == 0) {
            DescendantOffsetUtils.getDescendantRect(this, this, this.tmpRect);
            Rect rect2 = this.tmpRect;
            int i5 = rect2.left + (z ? titleMarginEnd : titleMarginStart);
            int i6 = rect2.right;
            if (!z) {
                titleMarginStart = titleMarginEnd;
            }
            int i7 = i6 - titleMarginStart;
            if (TextUtils.isEmpty(this.collapsingSubtitleHelper.getText())) {
                this.collapsingTitleHelper.setCollapsedBoundsForOffsets(i5, i3, i7, i4);
            } else {
                this.collapsingTitleHelper.setCollapsedBoundsForOffsets(i5, i3, i7, collapsedFullSingleLineHeight);
                this.collapsingSubtitleHelper.setCollapsedBoundsForOffsets(i5, collapsedFullSingleLineHeight2, i7, i4);
            }
        }
    }

    private static CharSequence getToolbarTitle(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (view instanceof android.widget.Toolbar) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    private static CharSequence getToolbarSubtitle(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getSubtitle();
        }
        if (view instanceof android.widget.Toolbar) {
            return ((android.widget.Toolbar) view).getSubtitle();
        }
        return null;
    }

    private static int getHeightWithMargins(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getMeasuredHeight();
    }

    static ViewOffsetHelper getViewOffsetHelper(View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(C1349R.id.view_offset_helper);
        if (viewOffsetHelper != null) {
            return viewOffsetHelper;
        }
        ViewOffsetHelper viewOffsetHelper2 = new ViewOffsetHelper(view);
        view.setTag(C1349R.id.view_offset_helper, viewOffsetHelper2);
        return viewOffsetHelper2;
    }

    public void setTitle(CharSequence charSequence) {
        this.collapsingTitleHelper.setText(charSequence);
        updateContentDescriptionFromTitle();
    }

    public CharSequence getTitle() {
        if (this.collapsingTitleEnabled) {
            return this.collapsingTitleHelper.getText();
        }
        return null;
    }

    public void setSubtitle(CharSequence charSequence) {
        this.collapsingSubtitleHelper.setText(charSequence);
    }

    public CharSequence getSubtitle() {
        if (this.collapsingTitleEnabled) {
            return this.collapsingSubtitleHelper.getText();
        }
        return null;
    }

    public void setTitleCollapseMode(int i) {
        this.titleCollapseMode = i;
        boolean zIsTitleCollapseFadeMode = isTitleCollapseFadeMode();
        this.collapsingTitleHelper.setFadeModeEnabled(zIsTitleCollapseFadeMode);
        this.collapsingSubtitleHelper.setFadeModeEnabled(zIsTitleCollapseFadeMode);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            disableLiftOnScrollIfNeeded((AppBarLayout) parent);
        }
        if (zIsTitleCollapseFadeMode && this.contentScrim == null) {
            setContentScrimColor(getDefaultContentScrimColorForTitleCollapseFadeMode());
        }
    }

    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        ColorStateList colorStateListOrNull = MaterialColors.getColorStateListOrNull(getContext(), C1349R.attr.colorSurfaceContainer);
        if (colorStateListOrNull != null) {
            return colorStateListOrNull.getDefaultColor();
        }
        return this.elevationOverlayProvider.compositeOverlayWithThemeSurfaceColorIfNeeded(getResources().getDimension(C1349R.dimen.design_appbar_elevation));
    }

    public int getTitleCollapseMode() {
        return this.titleCollapseMode;
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.collapsingTitleEnabled) {
            this.collapsingTitleEnabled = z;
            updateContentDescriptionFromTitle();
            updateDummyView();
            requestLayout();
        }
    }

    public boolean isTitleEnabled() {
        return this.collapsingTitleEnabled;
    }

    public void setTitleEllipsize(TextUtils.TruncateAt truncateAt) {
        this.collapsingTitleHelper.setTitleTextEllipsize(truncateAt);
    }

    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.collapsingTitleHelper.getTitleTextEllipsize();
    }

    private TextUtils.TruncateAt convertEllipsizeToTruncateAt(int i) {
        if (i == 0) {
            return TextUtils.TruncateAt.START;
        }
        if (i == 1) {
            return TextUtils.TruncateAt.MIDDLE;
        }
        if (i == 3) {
            return TextUtils.TruncateAt.MARQUEE;
        }
        return TextUtils.TruncateAt.END;
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, isLaidOut() && !isInEditMode());
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.scrimsAreShown != z) {
            if (z2) {
                animateScrim(z ? 255 : 0);
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.scrimsAreShown = z;
        }
    }

    private void animateScrim(int i) {
        TimeInterpolator timeInterpolator;
        ensureToolbar();
        ValueAnimator valueAnimator = this.scrimAnimator;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.scrimAnimator = valueAnimator2;
            if (i > this.scrimAlpha) {
                timeInterpolator = this.scrimAnimationFadeInInterpolator;
            } else {
                timeInterpolator = this.scrimAnimationFadeOutInterpolator;
            }
            valueAnimator2.setInterpolator(timeInterpolator);
            this.scrimAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator3.getAnimatedValue()).intValue());
                }
            });
        } else if (valueAnimator.isRunning()) {
            this.scrimAnimator.cancel();
        }
        this.scrimAnimator.setDuration(this.scrimAnimationDuration);
        this.scrimAnimator.setIntValues(this.scrimAlpha, i);
        this.scrimAnimator.start();
    }

    void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.scrimAlpha) {
            if (this.contentScrim != null && (viewGroup = this.toolbar) != null) {
                viewGroup.postInvalidateOnAnimation();
            }
            this.scrimAlpha = i;
            postInvalidateOnAnimation();
        }
    }

    int getScrimAlpha() {
        return this.scrimAlpha;
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.contentScrim = drawableMutate;
            if (drawableMutate != null) {
                updateContentScrimBounds(drawableMutate, getWidth(), getHeight());
                this.contentScrim.setCallback(this);
                this.contentScrim.setAlpha(this.scrimAlpha);
            }
            postInvalidateOnAnimation();
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(getContext().getDrawable(i));
    }

    public Drawable getContentScrim() {
        return this.contentScrim;
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.statusBarScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.statusBarScrim = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.statusBarScrim.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.statusBarScrim, getLayoutDirection());
                this.statusBarScrim.setVisible(getVisibility() == 0, false);
                this.statusBarScrim.setCallback(this);
                this.statusBarScrim.setAlpha(this.scrimAlpha);
            }
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarScrim;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
        if (collapsingTextHelper != null) {
            state |= collapsingTextHelper.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.contentScrim || drawable == this.statusBarScrim;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.statusBarScrim;
        if (drawable != null && drawable.isVisible() != z) {
            this.statusBarScrim.setVisible(z, false);
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.contentScrim.setVisible(z, false);
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(getContext().getDrawable(i));
    }

    public Drawable getStatusBarScrim() {
        return this.statusBarScrim;
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.collapsingTitleHelper.setCollapsedTextAppearance(i);
    }

    public void setCollapsedSubtitleTextAppearance(int i) {
        this.collapsingSubtitleHelper.setCollapsedTextAppearance(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.collapsingTitleHelper.setCollapsedTextColor(colorStateList);
    }

    public void setCollapsedSubtitleTextColor(int i) {
        setCollapsedSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedSubtitleTextColor(ColorStateList colorStateList) {
        this.collapsingSubtitleHelper.setCollapsedTextColor(colorStateList);
    }

    public void setCollapsedTitleGravity(int i) {
        this.collapsingTitleHelper.setCollapsedTextGravity(i);
        this.collapsingSubtitleHelper.setCollapsedTextGravity(i);
    }

    public int getCollapsedTitleGravity() {
        return this.collapsingTitleHelper.getCollapsedTextGravity();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.collapsingTitleHelper.setExpandedTextAppearance(i);
    }

    public void setExpandedSubtitleTextAppearance(int i) {
        this.collapsingSubtitleHelper.setExpandedTextAppearance(i);
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.collapsingTitleHelper.setExpandedTextColor(colorStateList);
    }

    public void setExpandedSubtitleColor(int i) {
        setExpandedSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedSubtitleTextColor(ColorStateList colorStateList) {
        this.collapsingSubtitleHelper.setExpandedTextColor(colorStateList);
    }

    public void setExpandedTitleGravity(int i) {
        this.collapsingTitleHelper.setExpandedTextGravity(i);
        this.collapsingSubtitleHelper.setExpandedTextGravity(i);
    }

    public int getExpandedTitleGravity() {
        return this.collapsingTitleHelper.getExpandedTextGravity();
    }

    public void setExpandedTitleTextSize(float f) {
        this.collapsingTitleHelper.setExpandedTextSize(f);
    }

    public void setExpandedSubtitleTextSize(float f) {
        this.collapsingSubtitleHelper.setExpandedTextSize(f);
    }

    public float getExpandedTitleTextSize() {
        return this.collapsingTitleHelper.getExpandedTextSize();
    }

    public float getExpandedSubtitleTextSize() {
        return this.collapsingSubtitleHelper.getExpandedTextSize();
    }

    public void setCollapsedTitleTextSize(float f) {
        this.collapsingTitleHelper.setCollapsedTextSize(f);
    }

    public void setCollapsedSubtitleTextSize(float f) {
        this.collapsingSubtitleHelper.setCollapsedTextSize(f);
    }

    public float getCollapsedTitleTextSize() {
        return this.collapsingTitleHelper.getCollapsedTextSize();
    }

    public float getCollapsedSubtitleTextSize() {
        return this.collapsingSubtitleHelper.getCollapsedTextSize();
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.collapsingTitleHelper.setCollapsedTypeface(typeface);
    }

    public void setCollapsedSubtitleTypeface(Typeface typeface) {
        this.collapsingSubtitleHelper.setCollapsedTypeface(typeface);
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.collapsingTitleHelper.getCollapsedTypeface();
    }

    public Typeface getCollapsedSubtitleTypeface() {
        return this.collapsingSubtitleHelper.getCollapsedTypeface();
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.collapsingTitleHelper.setExpandedTypeface(typeface);
    }

    public void setExpandedSubtitleTypeface(Typeface typeface) {
        this.collapsingSubtitleHelper.setExpandedTypeface(typeface);
    }

    public Typeface getExpandedTitleTypeface() {
        return this.collapsingTitleHelper.getExpandedTypeface();
    }

    public Typeface getExpandedSubtitleTypeface() {
        return this.collapsingSubtitleHelper.getExpandedTypeface();
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.expandedMarginStart = i;
        this.expandedMarginTop = i2;
        this.expandedMarginEnd = i3;
        this.expandedMarginBottom = i4;
        requestLayout();
    }

    public int getExpandedTitleMarginStart() {
        return this.expandedMarginStart;
    }

    public void setExpandedTitleMarginStart(int i) {
        this.expandedMarginStart = i;
        requestLayout();
    }

    public int getExpandedTitleMarginTop() {
        return this.expandedMarginTop;
    }

    public void setExpandedTitleMarginTop(int i) {
        this.expandedMarginTop = i;
        requestLayout();
    }

    public int getExpandedTitleMarginEnd() {
        return this.expandedMarginEnd;
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.expandedMarginEnd = i;
        requestLayout();
    }

    public int getExpandedTitleMarginBottom() {
        return this.expandedMarginBottom;
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.expandedMarginBottom = i;
        requestLayout();
    }

    public int getExpandedTitleSpacing() {
        return this.expandedTitleSpacing;
    }

    public void setExpandedTitleSpacing(int i) {
        this.expandedTitleSpacing = i;
        requestLayout();
    }

    public void setMaxLines(int i) {
        this.collapsingTitleHelper.setExpandedMaxLines(i);
        this.collapsingSubtitleHelper.setExpandedMaxLines(i);
    }

    public int getMaxLines() {
        return this.collapsingTitleHelper.getExpandedMaxLines();
    }

    public int getLineCount() {
        return this.collapsingTitleHelper.getLineCount();
    }

    public void setLineSpacingAdd(float f) {
        this.collapsingTitleHelper.setLineSpacingAdd(f);
    }

    public float getLineSpacingAdd() {
        return this.collapsingTitleHelper.getLineSpacingAdd();
    }

    public void setLineSpacingMultiplier(float f) {
        this.collapsingTitleHelper.setLineSpacingMultiplier(f);
    }

    public float getLineSpacingMultiplier() {
        return this.collapsingTitleHelper.getLineSpacingMultiplier();
    }

    public void setHyphenationFrequency(int i) {
        this.collapsingTitleHelper.setHyphenationFrequency(i);
    }

    public int getHyphenationFrequency() {
        return this.collapsingTitleHelper.getHyphenationFrequency();
    }

    public void setStaticLayoutBuilderConfigurer(StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        this.collapsingTitleHelper.setStaticLayoutBuilderConfigurer(staticLayoutBuilderConfigurer);
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.collapsingTitleHelper.setRtlTextDirectionHeuristicsEnabled(z);
    }

    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.collapsingTitleHelper.isRtlTextDirectionHeuristicsEnabled();
    }

    public void setForceApplySystemWindowInsetTop(boolean z) {
        this.forceApplySystemWindowInsetTop = z;
    }

    public boolean isForceApplySystemWindowInsetTop() {
        return this.forceApplySystemWindowInsetTop;
    }

    public void setExtraMultilineHeightEnabled(boolean z) {
        this.extraMultilineHeightEnabled = z;
    }

    public boolean isExtraMultilineHeightEnabled() {
        return this.extraMultilineHeightEnabled;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.scrimVisibleHeightTrigger != i) {
            this.scrimVisibleHeightTrigger = i;
            updateScrimVisibility();
        }
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.scrimVisibleHeightTrigger;
        if (i >= 0) {
            return i + this.topInsetApplied + this.extraMultilineTitleHeight + this.extraMultilineSubtitleHeight + this.extraHeightForTitles;
        }
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight > 0) {
            return Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight());
        }
        return getHeight() / 3;
    }

    public void setTitlePositionInterpolator(TimeInterpolator timeInterpolator) {
        this.collapsingTitleHelper.setPositionInterpolator(timeInterpolator);
    }

    public TimeInterpolator getTitlePositionInterpolator() {
        return this.collapsingTitleHelper.getPositionInterpolator();
    }

    public void setScrimAnimationDuration(long j) {
        this.scrimAnimationDuration = j;
    }

    public long getScrimAnimationDuration() {
        return this.scrimAnimationDuration;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {
        public static final int COLLAPSE_MODE_OFF = 0;
        public static final int COLLAPSE_MODE_PARALLAX = 2;
        public static final int COLLAPSE_MODE_PIN = 1;
        private static final float DEFAULT_PARALLAX_MULTIPLIER = 0.5f;
        int collapseMode;
        float parallaxMult;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.collapseMode = 0;
            this.parallaxMult = DEFAULT_PARALLAX_MULTIPLIER;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1349R.styleable.CollapsingToolbarLayout_Layout);
            this.collapseMode = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            setParallaxMultiplier(typedArrayObtainStyledAttributes.getFloat(C1349R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, DEFAULT_PARALLAX_MULTIPLIER));
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.collapseMode = 0;
            this.parallaxMult = DEFAULT_PARALLAX_MULTIPLIER;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
            this.collapseMode = 0;
            this.parallaxMult = DEFAULT_PARALLAX_MULTIPLIER;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = DEFAULT_PARALLAX_MULTIPLIER;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.collapseMode = 0;
            this.parallaxMult = DEFAULT_PARALLAX_MULTIPLIER;
        }

        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = DEFAULT_PARALLAX_MULTIPLIER;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((FrameLayout.LayoutParams) layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = DEFAULT_PARALLAX_MULTIPLIER;
            this.collapseMode = layoutParams.collapseMode;
            this.parallaxMult = layoutParams.parallaxMult;
        }

        public void setCollapseMode(int i) {
            this.collapseMode = i;
        }

        public int getCollapseMode() {
            return this.collapseMode;
        }

        public void setParallaxMultiplier(float f) {
            this.parallaxMult = f;
        }

        public float getParallaxMultiplier() {
            return this.parallaxMult;
        }
    }

    final void updateScrimVisibility() {
        if (this.contentScrim == null && this.statusBarScrim == null) {
            return;
        }
        setScrimsShown(getHeight() + this.currentOffset < getScrimVisibleHeightTrigger());
    }

    final int getMaxOffsetForPinChild(View view) {
        return ((getHeight() - getViewOffsetHelper(view).getLayoutTop()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    private void updateContentDescriptionFromTitle() {
        setContentDescription(getTitle());
    }

    private class OffsetUpdateListener implements AppBarLayout.OnOffsetChangedListener {
        OffsetUpdateListener() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.currentOffset = i;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.lastInsets;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ViewOffsetHelper viewOffsetHelper = CollapsingToolbarLayout.getViewOffsetHelper(childAt);
                int i3 = layoutParams.collapseMode;
                if (i3 == 1) {
                    viewOffsetHelper.setTopAndBottomOffset(MathUtils.clamp(-i, 0, CollapsingToolbarLayout.this.getMaxOffsetForPinChild(childAt)));
                } else if (i3 == 2) {
                    viewOffsetHelper.setTopAndBottomOffset(Math.round((-i) * layoutParams.parallaxMult));
                }
            }
            CollapsingToolbarLayout.this.updateScrimVisibility();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.statusBarScrim != null && systemWindowInsetTop > 0) {
                collapsingToolbarLayout2.postInvalidateOnAnimation();
            }
            int height = CollapsingToolbarLayout.this.getHeight();
            int minimumHeight = (height - CollapsingToolbarLayout.this.getMinimumHeight()) - systemWindowInsetTop;
            int scrimVisibleHeightTrigger = height - CollapsingToolbarLayout.this.getScrimVisibleHeightTrigger();
            int i4 = CollapsingToolbarLayout.this.currentOffset + minimumHeight;
            float f = minimumHeight;
            float fAbs = Math.abs(i) / f;
            float f2 = scrimVisibleHeightTrigger / f;
            CollapsingToolbarLayout.this.collapsingTitleHelper.setFadeModeStartFraction(Math.min(1.0f, f2));
            CollapsingToolbarLayout.this.collapsingTitleHelper.setCurrentOffsetY(i4);
            CollapsingToolbarLayout.this.collapsingTitleHelper.setExpansionFraction(fAbs);
            CollapsingToolbarLayout.this.collapsingSubtitleHelper.setFadeModeStartFraction(Math.min(1.0f, f2));
            CollapsingToolbarLayout.this.collapsingSubtitleHelper.setCurrentOffsetY(i4);
            CollapsingToolbarLayout.this.collapsingSubtitleHelper.setExpansionFraction(fAbs);
        }
    }
}
