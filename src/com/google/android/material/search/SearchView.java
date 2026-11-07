package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;
import androidx.view.BackEventCompat;
import com.google.android.material.C1451R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.AttachedBehavior, MaterialBackHandler {
    private static final int DEF_STYLE_RES = C1451R.style.Widget_Material3_SearchView;
    private static final long TALKBACK_FOCUS_CHANGE_DELAY_MS = 100;
    private boolean animatedMenuItems;
    private boolean animatedNavigationIcon;
    private boolean autoShowKeyboard;
    private final boolean backHandlingEnabled;
    private final MaterialBackOrchestrator backOrchestrator;
    private final int backgroundColor;
    final View backgroundView;
    private Map<View, Integer> childImportantForAccessibilityMap;
    final ImageButton clearButton;
    private final boolean containedAnimationEnabled;
    final TouchObserverFrameLayout contentContainer;
    private TransitionState currentTransitionState;
    final View divider;
    private final boolean dividerVisible;
    final TextView dummyTextView;
    final Toolbar dummyToolbar;
    final EditText editText;
    private final ElevationOverlayProvider elevationOverlayProvider;
    final FrameLayout headerContainer;
    private final boolean layoutInflated;
    final ClippableRoundedCornerLayout rootView;
    final View scrim;
    private SearchBar searchBar;
    final TextView searchPrefix;
    private final SearchViewAnimationHelper searchViewAnimationHelper;
    private int softInputMode;
    final View statusBarSpacer;
    private boolean statusBarSpacerEnabledOverride;
    final LinearLayout textContainer;
    final MaterialToolbar toolbar;
    final FrameLayout toolbarContainer;
    private final ViewTreeObserver.OnTouchModeChangeListener touchModeChangeListener;
    private final Set<TransitionListener> transitionListeners;
    private boolean useWindowInsetsController;

    public interface TransitionListener {
        void onStateChanged(SearchView searchView, TransitionState transitionState, TransitionState transitionState2);
    }

    public enum TransitionState {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1451R.attr.materialSearchViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchView(Context context, AttributeSet attributeSet, int i) {
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.backOrchestrator = new MaterialBackOrchestrator(this);
        this.transitionListeners = new LinkedHashSet();
        this.softInputMode = 16;
        this.currentTransitionState = TransitionState.HIDDEN;
        this.touchModeChangeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: com.google.android.material.search.SearchView.1
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public void onTouchModeChanged(boolean z) {
                EditText editText;
                if (z || !SearchView.this.hasWindowFocus() || !SearchView.this.isShowing() || (editText = SearchView.this.editText) == null || editText.isFocused()) {
                    return;
                }
                final EditText editText2 = SearchView.this.editText;
                Objects.requireNonNull(editText2);
                editText2.post(new Runnable() { // from class: com.google.android.material.search.SearchView$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        editText2.requestFocus();
                    }
                });
            }
        };
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1451R.styleable.SearchView, i, i2, new int[0]);
        this.backgroundColor = typedArrayObtainStyledAttributes.getColor(C1451R.styleable.SearchView_backgroundTint, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1451R.styleable.SearchView_headerLayout, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(C1451R.styleable.SearchView_android_textAppearance, -1);
        String string = typedArrayObtainStyledAttributes.getString(C1451R.styleable.SearchView_android_text);
        String string2 = typedArrayObtainStyledAttributes.getString(C1451R.styleable.SearchView_android_hint);
        String string3 = typedArrayObtainStyledAttributes.getString(C1451R.styleable.SearchView_searchPrefixText);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_useDrawerArrowDrawable, false);
        this.animatedNavigationIcon = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_animateNavigationIcon, true);
        this.animatedMenuItems = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_animateMenuItems, true);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_hideNavigationIcon, false);
        this.autoShowKeyboard = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_autoShowKeyboard, true);
        this.backHandlingEnabled = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_backHandlingEnabled, true);
        this.dividerVisible = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_dividerVisible, true);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(C1451R.styleable.SearchView_containedAnimationEnabled, false);
        this.containedAnimationEnabled = z3;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(context2).inflate(C1451R.layout.mtrl_search_view, this);
        this.layoutInflated = true;
        this.scrim = findViewById(C1451R.id.open_search_view_scrim);
        this.rootView = (ClippableRoundedCornerLayout) findViewById(C1451R.id.open_search_view_root);
        this.backgroundView = findViewById(C1451R.id.open_search_view_background);
        this.statusBarSpacer = findViewById(C1451R.id.open_search_view_status_bar_spacer);
        this.headerContainer = (FrameLayout) findViewById(C1451R.id.open_search_view_header_container);
        this.toolbarContainer = (FrameLayout) findViewById(C1451R.id.open_search_view_toolbar_container);
        this.toolbar = (MaterialToolbar) findViewById(C1451R.id.open_search_view_toolbar);
        this.dummyToolbar = (Toolbar) findViewById(C1451R.id.open_search_view_dummy_toolbar);
        this.dummyTextView = (TextView) findViewById(C1451R.id.open_search_view_dummy_text_view);
        this.searchPrefix = (TextView) findViewById(C1451R.id.open_search_view_search_prefix);
        this.textContainer = (LinearLayout) findViewById(C1451R.id.open_search_view_text_container);
        this.editText = (EditText) findViewById(C1451R.id.open_search_view_edit_text);
        this.clearButton = (ImageButton) findViewById(C1451R.id.open_search_view_clear_button);
        this.divider = findViewById(C1451R.id.open_search_view_divider);
        this.contentContainer = (TouchObserverFrameLayout) findViewById(C1451R.id.open_search_view_content_container);
        this.searchViewAnimationHelper = new SearchViewAnimationHelper(context2, this, z3);
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        setUpRootView();
        setUpBackgroundViewElevationOverlay();
        setUpHeaderLayout(resourceId);
        setSearchPrefixText(string3);
        setUpEditText(resourceId2, string, string2);
        setUpBackButton(z, z2);
        setUpClearButton();
        setUpDivider();
        setUpContentOnTouchListener();
        setUpInsetListeners();
        setToolbarTouchscreenBlocksFocus(false);
        if (z3) {
            setUpDummyToolbarForContainedAnimation();
            setUpDummyTextForContainedAnimation(resourceId2, string, string2);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.layoutInflated) {
            this.contentContainer.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        updateSoftInputMode();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        setUpBackgroundViewElevationOverlay(f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        TransitionState currentTransitionState = getCurrentTransitionState();
        updateModalForAccessibility(currentTransitionState);
        updateListeningForBackCallbacks(currentTransitionState);
        getViewTreeObserver().addOnTouchModeChangeListener(this.touchModeChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setModalForAccessibility(false);
        this.backOrchestrator.stopListeningForBackCallbacks();
        getViewTreeObserver().removeOnTouchModeChangeListener(this.touchModeChangeListener);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public CoordinatorLayout.Behavior<SearchView> getBehavior() {
        return new Behavior();
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(BackEventCompat backEventCompat) {
        SearchBar searchBar;
        if (isHiddenOrHiding() || (searchBar = this.searchBar) == null) {
            return;
        }
        if (!this.containedAnimationEnabled) {
            searchBar.setPlaceholderText(this.editText.getText().toString());
        }
        this.searchViewAnimationHelper.startBackProgress(backEventCompat);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(BackEventCompat backEventCompat) {
        if (isHiddenOrHiding() || this.searchBar == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.searchViewAnimationHelper.updateBackProgress(backEventCompat);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        if (isHiddenOrHiding()) {
            return;
        }
        BackEventCompat backEventCompatOnHandleBackInvoked = this.searchViewAnimationHelper.onHandleBackInvoked();
        if (Build.VERSION.SDK_INT >= 34 && this.searchBar != null && backEventCompatOnHandleBackInvoked != null) {
            this.searchViewAnimationHelper.finishBackProgress();
        } else {
            hide();
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        if (isHiddenOrHiding() || this.searchBar == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.searchViewAnimationHelper.cancelBackProgress();
    }

    public MaterialMainContainerBackHelper getBackHelper() {
        return this.searchViewAnimationHelper.getBackHelper();
    }

    private boolean isHiddenOrHiding() {
        return this.currentTransitionState.equals(TransitionState.HIDDEN) || this.currentTransitionState.equals(TransitionState.HIDING);
    }

    private Window getActivityWindow() {
        Activity activity = ContextUtils.getActivity(getContext());
        if (activity == null) {
            return null;
        }
        return activity.getWindow();
    }

    /* JADX INFO: renamed from: $r8$lambda$m5jol66nZ-NnGCtW5-81117_ung, reason: not valid java name */
    public static /* synthetic */ boolean m2962$r8$lambda$m5jol66nZNnGCtW581117_ung(View view, MotionEvent motionEvent) {
        return true;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setUpRootView() {
        this.rootView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda7
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SearchView.m2962$r8$lambda$m5jol66nZNnGCtW581117_ung(view, motionEvent);
            }
        });
    }

    private void setUpBackgroundViewElevationOverlay() {
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
    }

    private void setUpBackgroundViewElevationOverlay(float f) {
        ElevationOverlayProvider elevationOverlayProvider = this.elevationOverlayProvider;
        if (elevationOverlayProvider == null || this.backgroundView == null) {
            return;
        }
        this.backgroundView.setBackgroundColor(elevationOverlayProvider.compositeOverlayIfNeeded(this.backgroundColor, f));
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.searchBar;
        if (searchBar != null) {
            return searchBar.getCompatElevation();
        }
        return getResources().getDimension(C1451R.dimen.m3_searchview_elevation);
    }

    private void setUpHeaderLayout(int i) {
        if (i != -1) {
            addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.headerContainer, false));
        }
    }

    private void setUpEditText(int i, String str, String str2) {
        if (i != -1) {
            TextViewCompat.setTextAppearance(this.editText, i);
        }
        this.editText.setText(str);
        this.editText.setHint(str2);
        this.editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                SearchView.$r8$lambda$WUeSk6ghHnMkVgC1iE4anOjbXG0(this.f$0, view, z);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$WUeSk6ghHnMkVgC1iE4anOjbXG0(SearchView searchView, View view, boolean z) {
        if (z) {
            searchView.getClass();
        } else {
            ViewUtils.hideKeyboard(view, searchView.useWindowInsetsController);
        }
    }

    private void setUpBackButton(boolean z, boolean z2) {
        MaterialToolbar materialToolbar = this.toolbar;
        if (z2) {
            materialToolbar.setNavigationIcon((Drawable) null);
            return;
        }
        materialToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.hide();
            }
        });
        if (z) {
            DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(getContext());
            drawerArrowDrawable.setColor(MaterialColors.getColor(this, C1451R.attr.colorOnSurface));
            this.toolbar.setNavigationIcon(drawerArrowDrawable);
        }
    }

    private void setUpClearButton() {
        this.clearButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchView.$r8$lambda$FtRxa6ENwBmIB2T1T1NhMPVVspQ(this.f$0, view);
            }
        });
        this.editText.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.search.SearchView.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SearchView.this.clearButton.setVisibility(charSequence.length() > 0 ? 0 : 8);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$FtRxa6ENwBmIB2T1T1NhMPVVspQ(SearchView searchView, View view) {
        searchView.clearText();
        searchView.requestFocusAndShowKeyboardIfNeeded();
    }

    private void setUpDivider() {
        this.divider.setVisibility(this.dividerVisible ? 0 : 8);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setUpContentOnTouchListener() {
        this.contentContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda8
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SearchView.$r8$lambda$kv0oFltobJWB4bU6YEBJTxq6BP0(this.f$0, view, motionEvent);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$kv0oFltobJWB4bU6YEBJTxq6BP0(SearchView searchView, View view, MotionEvent motionEvent) {
        if (!searchView.isAdjustNothingSoftInputMode()) {
            return false;
        }
        searchView.editText.clearFocus();
        return false;
    }

    private void setUpStatusBarSpacer(int i) {
        if (this.statusBarSpacer.getLayoutParams().height != i) {
            this.statusBarSpacer.getLayoutParams().height = i;
            this.statusBarSpacer.requestLayout();
        }
    }

    private void setUpDummyToolbarForContainedAnimation() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.dummyToolbar.getLayoutParams();
        layoutParams.gravity = PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES;
        this.dummyToolbar.setLayoutParams(layoutParams);
        this.dummyToolbar.setVisibility(4);
    }

    private void setUpDummyTextForContainedAnimation(int i, String str, String str2) {
        if (i != -1) {
            TextViewCompat.setTextAppearance(this.dummyTextView, i);
        }
        this.dummyTextView.setText(str);
        this.dummyTextView.setHint(str2);
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void updateNavigationIconIfNeeded() {
        MaterialToolbar materialToolbar = this.toolbar;
        if (materialToolbar == null || isNavigationIconDrawerArrowDrawable(materialToolbar)) {
            return;
        }
        int defaultNavigationIconResource = getDefaultNavigationIconResource();
        if (this.searchBar == null) {
            this.toolbar.setNavigationIcon(defaultNavigationIconResource);
            return;
        }
        Drawable drawableWrap = DrawableCompat.wrap(AppCompatResources.getDrawable(getContext(), defaultNavigationIconResource).mutate());
        if (this.toolbar.getNavigationIconTint() != null) {
            drawableWrap.setTint(this.toolbar.getNavigationIconTint().intValue());
        }
        DrawableCompat.setLayoutDirection(drawableWrap, getLayoutDirection());
        this.toolbar.setNavigationIcon(new FadeThroughDrawable(this.searchBar.getNavigationIcon(), drawableWrap));
        updateNavigationIconProgressIfNeeded();
    }

    private boolean isNavigationIconDrawerArrowDrawable(Toolbar toolbar) {
        return DrawableCompat.unwrap(toolbar.getNavigationIcon()) instanceof DrawerArrowDrawable;
    }

    private void setUpInsetListeners() {
        setUpToolbarInsetListener();
        setUpDividerInsetListener();
        setUpStatusBarSpacerInsetListener();
    }

    private void setUpToolbarInsetListener() {
        ViewUtils.doOnApplyWindowInsets(this.toolbar, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda3
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                return SearchView.$r8$lambda$G8B5rsxcXvRyDj7fvUDVNwFxJ5w(this.f$0, view, windowInsetsCompat, relativePadding);
            }
        });
    }

    public static /* synthetic */ WindowInsetsCompat $r8$lambda$G8B5rsxcXvRyDj7fvUDVNwFxJ5w(SearchView searchView, View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(searchView.toolbar);
        int i = zIsLayoutRtl ? relativePadding.end : relativePadding.start;
        int i2 = zIsLayoutRtl ? relativePadding.start : relativePadding.end;
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        searchView.toolbar.setPadding(i + insets.left, relativePadding.top, i2 + insets.right, relativePadding.bottom);
        return windowInsetsCompat;
    }

    private void setUpStatusBarSpacerInsetListener() {
        setUpStatusBarSpacer(getStatusBarHeight());
        ViewCompat.setOnApplyWindowInsetsListener(this.statusBarSpacer, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda4
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SearchView.m2959$r8$lambda$QJgI_sbnqkAOLmyBZDJ799LdzU(this.f$0, view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$QJgI_sbnqkAOLmyBZDJ799L-dzU, reason: not valid java name */
    public static /* synthetic */ WindowInsetsCompat m2959$r8$lambda$QJgI_sbnqkAOLmyBZDJ799LdzU(SearchView searchView, View view, WindowInsetsCompat windowInsetsCompat) {
        searchView.getClass();
        int i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout()).top;
        searchView.setUpStatusBarSpacer(i);
        if (!searchView.statusBarSpacerEnabledOverride) {
            searchView.setStatusBarSpacerEnabledInternal(i > 0);
        }
        return windowInsetsCompat;
    }

    private void setUpDividerInsetListener() {
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.divider.getLayoutParams();
        final int i = marginLayoutParams.leftMargin;
        final int i2 = marginLayoutParams.rightMargin;
        ViewCompat.setOnApplyWindowInsetsListener(this.divider, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SearchView.$r8$lambda$tBnLxbkKv_XuGC2_Ev51IggFIhU(marginLayoutParams, i, i2, view, windowInsetsCompat);
            }
        });
    }

    public static /* synthetic */ WindowInsetsCompat $r8$lambda$tBnLxbkKv_XuGC2_Ev51IggFIhU(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        marginLayoutParams.leftMargin = i + insets.left;
        marginLayoutParams.rightMargin = i2 + insets.right;
        return windowInsetsCompat;
    }

    public boolean isSetupWithSearchBar() {
        return this.searchBar != null;
    }

    public void setupWithSearchBar(SearchBar searchBar) {
        this.searchBar = searchBar;
        this.searchViewAnimationHelper.setSearchBar(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.show();
                }
            });
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new Runnable() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.show();
                        }
                    });
                    this.editText.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        updateNavigationIconIfNeeded();
        setUpBackgroundViewElevationOverlay();
        updateListeningForBackCallbacks(getCurrentTransitionState());
    }

    public void addHeaderView(View view) {
        this.headerContainer.addView(view);
        this.headerContainer.setVisibility(0);
    }

    public void removeHeaderView(View view) {
        this.headerContainer.removeView(view);
        if (this.headerContainer.getChildCount() == 0) {
            this.headerContainer.setVisibility(8);
        }
    }

    public void removeAllHeaderViews() {
        this.headerContainer.removeAllViews();
        this.headerContainer.setVisibility(8);
    }

    public void setAnimatedNavigationIcon(boolean z) {
        this.animatedNavigationIcon = z;
    }

    public boolean isAnimatedNavigationIcon() {
        return this.animatedNavigationIcon;
    }

    public void setMenuItemsAnimated(boolean z) {
        this.animatedMenuItems = z;
    }

    public boolean isMenuItemsAnimated() {
        return this.animatedMenuItems;
    }

    public void setAutoShowKeyboard(boolean z) {
        this.autoShowKeyboard = z;
    }

    public boolean isAutoShowKeyboard() {
        return this.autoShowKeyboard;
    }

    public void setUseWindowInsetsController(boolean z) {
        this.useWindowInsetsController = z;
    }

    public boolean isUseWindowInsetsController() {
        return this.useWindowInsetsController;
    }

    public void addTransitionListener(TransitionListener transitionListener) {
        this.transitionListeners.add(transitionListener);
    }

    public void removeTransitionListener(TransitionListener transitionListener) {
        this.transitionListeners.remove(transitionListener);
    }

    public void inflateMenu(int i) {
        this.toolbar.inflateMenu(i);
    }

    public void setOnMenuItemClickListener(Toolbar.OnMenuItemClickListener onMenuItemClickListener) {
        this.toolbar.setOnMenuItemClickListener(onMenuItemClickListener);
    }

    public TextView getSearchPrefix() {
        return this.searchPrefix;
    }

    public void setSearchPrefixText(CharSequence charSequence) {
        this.searchPrefix.setText(charSequence);
        this.searchPrefix.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    public CharSequence getSearchPrefixText() {
        return this.searchPrefix.getText();
    }

    public Toolbar getToolbar() {
        return this.toolbar;
    }

    public View getSearchContainer() {
        return this.rootView;
    }

    public EditText getEditText() {
        return this.editText;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        return this.editText.getText();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(CharSequence charSequence) {
        this.editText.setText(charSequence);
        this.dummyTextView.setText(charSequence);
    }

    public void setText(int i) {
        this.editText.setText(i);
        this.dummyTextView.setText(i);
    }

    public void clearText() {
        this.editText.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.dummyTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    public CharSequence getHint() {
        return this.editText.getHint();
    }

    public void setHint(CharSequence charSequence) {
        this.editText.setHint(charSequence);
        this.dummyTextView.setHint(charSequence);
    }

    public void setHint(int i) {
        this.editText.setHint(i);
        this.dummyTextView.setHint(i);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.softInputMode;
    }

    public void updateSoftInputMode() {
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.softInputMode = activityWindow.getAttributes().softInputMode;
        }
    }

    public void setStatusBarSpacerEnabled(boolean z) {
        this.statusBarSpacerEnabledOverride = true;
        setStatusBarSpacerEnabledInternal(z);
    }

    private void setStatusBarSpacerEnabledInternal(boolean z) {
        this.statusBarSpacer.setVisibility(z ? 0 : 8);
    }

    public TransitionState getCurrentTransitionState() {
        return this.currentTransitionState;
    }

    public void setTransitionState(TransitionState transitionState) {
        setTransitionState(transitionState, true);
    }

    private void setTransitionState(TransitionState transitionState, boolean z) {
        if (this.currentTransitionState.equals(transitionState)) {
            return;
        }
        if (z) {
            updateModalForAccessibility(transitionState);
        }
        TransitionState transitionState2 = this.currentTransitionState;
        this.currentTransitionState = transitionState;
        Iterator it = new LinkedHashSet(this.transitionListeners).iterator();
        while (it.hasNext()) {
            ((TransitionListener) it.next()).onStateChanged(this, transitionState2, transitionState);
        }
        updateListeningForBackCallbacks(transitionState);
        SearchBar searchBar = this.searchBar;
        if (searchBar == null || transitionState != TransitionState.HIDDEN) {
            return;
        }
        searchBar.sendAccessibilityEvent(8);
    }

    private void updateModalForAccessibility(TransitionState transitionState) {
        if (transitionState == TransitionState.SHOWN) {
            setModalForAccessibility(true);
        } else if (transitionState == TransitionState.HIDDEN) {
            setModalForAccessibility(false);
        }
    }

    private void updateListeningForBackCallbacks(TransitionState transitionState) {
        if (this.searchBar == null || !this.backHandlingEnabled) {
            return;
        }
        if (transitionState.equals(TransitionState.SHOWN)) {
            this.backOrchestrator.startListeningForBackCallbacks();
        } else if (transitionState.equals(TransitionState.HIDDEN)) {
            this.backOrchestrator.stopListeningForBackCallbacks();
        }
    }

    public boolean isShowing() {
        return this.currentTransitionState.equals(TransitionState.SHOWN) || this.currentTransitionState.equals(TransitionState.SHOWING);
    }

    public void show() {
        if (this.currentTransitionState.equals(TransitionState.SHOWN) || this.currentTransitionState.equals(TransitionState.SHOWING)) {
            return;
        }
        this.searchViewAnimationHelper.show();
    }

    public void hide() {
        if (this.currentTransitionState.equals(TransitionState.HIDDEN) || this.currentTransitionState.equals(TransitionState.HIDING)) {
            return;
        }
        SearchBar searchBar = this.searchBar;
        if (searchBar != null && searchBar.isAttachedToWindow()) {
            if (!this.containedAnimationEnabled) {
                this.searchBar.setPlaceholderText(this.editText.getText().toString());
            }
            SearchBar searchBar2 = this.searchBar;
            final SearchViewAnimationHelper searchViewAnimationHelper = this.searchViewAnimationHelper;
            Objects.requireNonNull(searchViewAnimationHelper);
            searchBar2.post(new Runnable() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    searchViewAnimationHelper.hide();
                }
            });
            return;
        }
        this.searchViewAnimationHelper.hide();
    }

    public void setVisible(boolean z) {
        boolean z2 = this.rootView.getVisibility() == 0;
        this.rootView.setVisibility(z ? 0 : 8);
        updateNavigationIconProgressIfNeeded();
        setTransitionState(z ? TransitionState.SHOWN : TransitionState.HIDDEN, z2 != z);
    }

    private void updateNavigationIconProgressIfNeeded() {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.toolbar);
        if (navigationIconButton == null) {
            return;
        }
        int i = this.rootView.getVisibility() == 0 ? 1 : 0;
        Drawable drawableUnwrap = DrawableCompat.unwrap(navigationIconButton.getDrawable());
        if (drawableUnwrap instanceof DrawerArrowDrawable) {
            ((DrawerArrowDrawable) drawableUnwrap).setProgress(i);
        }
        if (drawableUnwrap instanceof FadeThroughDrawable) {
            ((FadeThroughDrawable) drawableUnwrap).setProgress(i);
        }
    }

    public void requestFocusAndShowKeyboardIfNeeded() {
        if (this.autoShowKeyboard) {
            requestFocusAndShowKeyboard();
        } else {
            if (isInTouchMode()) {
                return;
            }
            this.editText.postDelayed(new Runnable() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    SearchView.$r8$lambda$kSdhGhsAFWaJsWajoyQZ6PYmWOM(this.f$0);
                }
            }, TALKBACK_FOCUS_CHANGE_DELAY_MS);
        }
    }

    public static /* synthetic */ void $r8$lambda$kSdhGhsAFWaJsWajoyQZ6PYmWOM(SearchView searchView) {
        if (searchView.editText.requestFocus()) {
            searchView.editText.sendAccessibilityEvent(8);
        }
    }

    public void requestFocusAndShowKeyboard() {
        this.editText.postDelayed(new Runnable() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SearchView.$r8$lambda$pfxc05DoMwXdGzLboNjxhQUHZkY(this.f$0);
            }
        }, TALKBACK_FOCUS_CHANGE_DELAY_MS);
    }

    public static /* synthetic */ void $r8$lambda$pfxc05DoMwXdGzLboNjxhQUHZkY(SearchView searchView) {
        if (searchView.editText.requestFocus()) {
            searchView.editText.sendAccessibilityEvent(8);
        }
        ViewUtils.showKeyboard(searchView.editText, searchView.useWindowInsetsController);
    }

    public void clearFocusAndHideKeyboard() {
        this.editText.post(new Runnable() { // from class: com.google.android.material.search.SearchView$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                SearchView.m2961$r8$lambda$_tQAfRiHH28AlaRoXnUlvtpr60(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$_tQAfRiHH28A-laRoXnUlvtpr60, reason: not valid java name */
    public static /* synthetic */ void m2961$r8$lambda$_tQAfRiHH28AlaRoXnUlvtpr60(SearchView searchView) {
        searchView.editText.clearFocus();
        ViewUtils.hideKeyboard(searchView.editText, searchView.useWindowInsetsController);
    }

    public boolean isAdjustNothingSoftInputMode() {
        return this.softInputMode == 48;
    }

    public void setModalForAccessibility(boolean z) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z) {
            this.childImportantForAccessibilityMap = new HashMap(viewGroup.getChildCount());
        }
        updateChildImportantForAccessibility(viewGroup, z);
        if (z) {
            return;
        }
        this.childImportantForAccessibilityMap = null;
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z) {
        this.toolbar.setTouchscreenBlocksFocus(z);
    }

    @SuppressLint({"InlinedApi"})
    private void updateChildImportantForAccessibility(ViewGroup viewGroup, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != this) {
                if (childAt.findViewById(this.rootView.getId()) != null) {
                    updateChildImportantForAccessibility((ViewGroup) childAt, z);
                } else {
                    Map<View, Integer> map = this.childImportantForAccessibilityMap;
                    if (!z) {
                        if (map != null && map.containsKey(childAt)) {
                            childAt.setImportantForAccessibility(this.childImportantForAccessibilityMap.get(childAt).intValue());
                        }
                    } else {
                        map.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        childAt.setImportantForAccessibility(4);
                    }
                }
            }
        }
    }

    public int getDefaultNavigationIconResource() {
        return C1451R.drawable.ic_arrow_back_black_24;
    }

    public static class Behavior extends CoordinatorLayout.Behavior<SearchView> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, SearchView searchView, View view) {
            if (searchView.isSetupWithSearchBar() || !(view instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view);
            return false;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        savedState.text = text == null ? null : text.toString();
        savedState.visibility = this.rootView.getVisibility();
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
        setText(savedState.text);
        setVisible(savedState.visibility == 0);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.search.SearchView.SavedState.1
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
        int visibility;

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.text = parcel.readString();
            this.visibility = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.text);
            parcel.writeInt(this.visibility);
        }
    }
}
