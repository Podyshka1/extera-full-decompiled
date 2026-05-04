package org.telegram.p029ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import me.vkryl.android.animator.ReplaceAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Adapters.FiltersView;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EllipsizeSpanAnimator;
import org.telegram.p029ui.Components.FireworksEffect;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.SectionsScrollView;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;
import org.telegram.p029ui.Components.SnowflakesEffect;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class ActionBar extends FrameLayout implements Theme.Colorable {
    private int actionBarColor;
    public ActionBarMenuOnItemClick actionBarMenuOnItemClick;
    private ActionBarMenu actionMode;
    private AnimatorSet actionModeAnimation;
    private int actionModeColor;
    private View actionModeExtraView;
    private View[] actionModeHidingViews;
    private View actionModeShowingView;
    private String actionModeTag;
    private View actionModeTop;
    private View actionModeTranslationView;
    protected boolean actionModeVisible;
    private boolean adaptiveBackground;
    private ValueAnimator adaptive_animator;
    private int adaptive_lowerColorKey;
    private int adaptive_topColorKey;
    private boolean addToContainer;
    private ActionBarAnimatedSubtitleOverlayContainer additionalSubTitleOverlayContainer;
    private SimpleTextView additionalSubtitleTextView;
    private boolean allowOverlayTitle;
    private float animatedCenterTitleAvailableWidth;
    private float animatedCenterTitleX;
    private boolean attachState;
    private boolean attached;
    private BackupImageView avatarSearchImageView;
    private Drawable backButtonDrawable;
    public ImageView backButtonImageView;
    private INavigationLayout.BackButtonState backButtonState;
    Runnable backgroundUpdateListener;
    public Paint blurScrimPaint;
    boolean blurredBackground;
    private boolean castShadows;
    private boolean centerScale;
    private int centerTitleAnimationTargetWidth;
    private int centerTitleAnimationTargetX;
    private ValueAnimator centerTitleLayoutAnimator;
    private boolean clipContent;
    SizeNotifierFrameLayout contentView;
    private boolean drawBackButton;
    EllipsizeSpanAnimator ellipsizeSpanAnimator;
    private int extraHeight;
    private boolean fireworks;
    private FireworksEffect fireworksEffect;
    private Paint.FontMetricsInt fontMetricsInt;
    private boolean forceSkipTouches;
    private boolean fromBottom;
    private boolean ignoreLayoutRequest;
    private View.OnTouchListener interceptTouchEventListener;
    private boolean interceptTouches;
    private boolean isCenterTitle;
    private boolean isMenuOffsetSuppressed;
    protected boolean isSearchFieldVisible;
    protected int itemsActionModeBackgroundColor;
    protected int itemsActionModeColor;
    protected int itemsBackgroundColor;
    protected int itemsColor;
    private int lastMeasuredWidth;
    private CharSequence lastOverlayTitle;
    private Drawable lastRightDrawable;
    private Runnable lastRunnable;
    private CharSequence lastTitle;
    public ActionBarMenu menu;
    protected boolean occupyStatusBar;
    private boolean onTop;
    private float onTopAnimated;
    private boolean overlayTitleAnimation;
    boolean overlayTitleAnimationInProgress;
    private final Object[] overlayTitleToSet;
    protected BaseFragment parentFragment;
    private Rect rect;
    Rect rectTmp;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean resumed;
    private View.OnClickListener rightDrawableOnClickListener;
    public float searchFieldVisibleAlpha;
    AnimatorSet searchVisibleAnimator;
    private int shadowAlpha;
    private SnowflakesEffect snowflakesEffect;
    private CharSequence subtitle;
    private SimpleTextView subtitleTextView;
    private boolean supportsHolidayImage;
    private Runnable titleActionRunnable;
    private boolean titleAnimationRunning;
    private AnimatorSet titleAnimator;
    private int titleColorToSet;
    private boolean titleOverlayShown;
    private int titleRightMargin;
    private final SimpleTextView[] titleTextView;
    private FrameLayout titlesContainer;
    private boolean useContainerForTitles;

    public static class ActionBarMenuOnItemClick {
        public boolean canOpenMenu() {
            return true;
        }

        public void onItemClick(int i) {
        }
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    protected boolean onSearchChangedIgnoreTitles() {
        return false;
    }

    public ActionBar(Context context) {
        this(context, null);
    }

    public ActionBar(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.backButtonState = INavigationLayout.BackButtonState.BACK;
        this.titleTextView = new SimpleTextView[2];
        this.occupyStatusBar = true;
        this.addToContainer = true;
        this.interceptTouches = true;
        this.overlayTitleToSet = new Object[3];
        this.castShadows = true;
        this.shadowAlpha = 255;
        this.titleColorToSet = 0;
        this.animatedCenterTitleX = Float.NaN;
        this.animatedCenterTitleAvailableWidth = Float.NaN;
        this.centerTitleAnimationTargetX = Integer.MIN_VALUE;
        this.centerTitleAnimationTargetWidth = -1;
        this.lastMeasuredWidth = -1;
        this.blurScrimPaint = new Paint();
        this.rectTmp = new Rect();
        this.ellipsizeSpanAnimator = new EllipsizeSpanAnimator(this);
        this.onTop = true;
        this.onTopAnimated = 1.0f;
        this.resourcesProvider = resourcesProvider;
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        Runnable runnable;
        if (isSearchFieldVisible() || (runnable = this.titleActionRunnable) == null) {
            return;
        }
        runnable.run();
    }

    public INavigationLayout.BackButtonState getBackButtonState() {
        return this.backButtonState;
    }

    private void createBackButtonImage() {
        if (this.backButtonImageView != null) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        this.backButtonImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.backButtonImageView.setBackgroundDrawable(Theme.createSelectorDrawable(this.itemsBackgroundColor));
        this.backButtonImageView.setPadding(AndroidUtilities.m1124dp(1.0f), 0, 0, 0);
        addView(this.backButtonImageView, LayoutHelper.createFrame(54, 54, 51));
        this.backButtonImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createBackButtonImage$1(view);
            }
        });
        this.backButtonImageView.setContentDescription(LocaleController.getString(C2888R.string.AccDescrGoBack));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createBackButtonImage$1(View view) {
        if (!this.actionModeVisible && this.isSearchFieldVisible) {
            closeSearchField();
            return;
        }
        ActionBarMenuOnItemClick actionBarMenuOnItemClick = this.actionBarMenuOnItemClick;
        if (actionBarMenuOnItemClick != null) {
            actionBarMenuOnItemClick.onItemClick(-1);
        }
    }

    public Drawable getBackButtonDrawable() {
        return this.backButtonDrawable;
    }

    public void setBackButtonDrawable(Drawable drawable) {
        if (this.backButtonImageView == null) {
            createBackButtonImage();
        }
        this.backButtonImageView.setVisibility(drawable == null ? 8 : 0);
        ImageView imageView = this.backButtonImageView;
        this.backButtonDrawable = drawable;
        imageView.setImageDrawable(drawable);
        if (drawable instanceof BackDrawable) {
            BackDrawable backDrawable = (BackDrawable) drawable;
            backDrawable.setRotation(isActionModeShowed() ? 1.0f : 0.0f, false);
            backDrawable.setRotatedColor(this.itemsActionModeColor);
            backDrawable.setColor(this.itemsColor);
            return;
        }
        if (drawable instanceof MenuDrawable) {
            MenuDrawable menuDrawable = (MenuDrawable) drawable;
            menuDrawable.setBackColor(this.actionBarColor);
            menuDrawable.setIconColor(this.itemsColor);
            return;
        }
        this.backButtonImageView.setColorFilter(new PorterDuffColorFilter(this.itemsColor, PorterDuff.Mode.SRC_IN));
    }

    public void setBackButtonContentDescription(CharSequence charSequence) {
        ImageView imageView = this.backButtonImageView;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setSupportsHolidayImage(boolean z) {
        this.supportsHolidayImage = z;
        if (z) {
            this.fontMetricsInt = new Paint.FontMetricsInt();
            this.rect = new Rect();
        }
        invalidate();
    }

    public BackupImageView getSearchAvatarImageView() {
        return this.avatarSearchImageView;
    }

    public void setSearchAvatarImageView(BackupImageView backupImageView) {
        BackupImageView backupImageView2 = this.avatarSearchImageView;
        if (backupImageView2 == backupImageView) {
            return;
        }
        if (backupImageView2 != null) {
            removeView(backupImageView2);
        }
        this.avatarSearchImageView = backupImageView;
        if (backupImageView != null) {
            addView(backupImageView);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Drawable currentHolidayDrawable;
        if (this.supportsHolidayImage && !this.titleOverlayShown && !LocaleController.isRTL && motionEvent.getAction() == 0 && (currentHolidayDrawable = Theme.getCurrentHolidayDrawable()) != null && currentHolidayDrawable.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            boolean z = this.fireworks;
            this.fireworks = !z;
            if (z || this.snowflakesEffect == null) {
                this.fireworksEffect = null;
                SnowflakesEffect snowflakesEffect = new SnowflakesEffect(0);
                this.snowflakesEffect = snowflakesEffect;
                snowflakesEffect.occupyStatusBar = this.occupyStatusBar;
            } else {
                this.snowflakesEffect = null;
                this.fireworksEffect = new FireworksEffect();
            }
            this.titleTextView[0].invalidate();
            invalidate();
        }
        View.OnTouchListener onTouchListener = this.interceptTouchEventListener;
        return (onTouchListener != null && onTouchListener.onTouch(this, motionEvent)) || super.onInterceptTouchEvent(motionEvent);
    }

    protected boolean shouldClipChild(View view) {
        if (this.clipContent) {
            SimpleTextView[] simpleTextViewArr = this.titleTextView;
            if (view == simpleTextViewArr[0] || view == simpleTextViewArr[1] || view == this.subtitleTextView || view == this.menu || view == this.backButtonImageView || view == this.additionalSubtitleTextView || view == this.titlesContainer) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        BaseFragment baseFragment = this.parentFragment;
        if (baseFragment != null && baseFragment.getParentLayout() != null && this.parentFragment.getParentLayout().isActionBarInCrossfade()) {
            return false;
        }
        if (this.drawBackButton && view == this.backButtonImageView) {
            return true;
        }
        boolean zShouldClipChild = shouldClipChild(view);
        if (zShouldClipChild) {
            canvas.save();
            canvas.clipRect(0.0f, (-getTranslationY()) + (this.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0), getMeasuredWidth(), getMeasuredHeight());
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (this.supportsHolidayImage && !this.titleOverlayShown && !LocaleController.isRTL) {
            SimpleTextView[] simpleTextViewArr = this.titleTextView;
            if (view == simpleTextViewArr[0] || view == simpleTextViewArr[1] || (view == this.titlesContainer && this.useContainerForTitles)) {
                Drawable currentHolidayDrawable = Theme.getCurrentHolidayDrawable();
                if (currentHolidayDrawable != null) {
                    SimpleTextView simpleTextView = view == this.titlesContainer ? this.titleTextView[0] : (SimpleTextView) view;
                    if (simpleTextView != null && simpleTextView.getVisibility() == 0 && (simpleTextView.getText() instanceof String)) {
                        TextPaint textPaint = simpleTextView.getTextPaint();
                        textPaint.getFontMetricsInt(this.fontMetricsInt);
                        textPaint.getTextBounds((String) simpleTextView.getText(), 0, 1, this.rect);
                        int textStartX = simpleTextView.getTextStartX() + Theme.getCurrentHolidayDrawableXOffset() + ((this.rect.width() - (currentHolidayDrawable.getIntrinsicWidth() + Theme.getCurrentHolidayDrawableXOffset())) / 2);
                        int textStartY = simpleTextView.getTextStartY() + Theme.getCurrentHolidayDrawableYOffset() + ((int) Math.ceil((simpleTextView.getTextHeight() - this.rect.height()) / 2.0f)) + ((int) (AndroidUtilities.m1124dp(8.0f) * (1.0f - this.titlesContainer.getScaleY())));
                        currentHolidayDrawable.setBounds(textStartX, textStartY - currentHolidayDrawable.getIntrinsicHeight(), currentHolidayDrawable.getIntrinsicWidth() + textStartX, textStartY);
                        currentHolidayDrawable.setAlpha((int) (this.titlesContainer.getAlpha() * 255.0f * simpleTextView.getAlpha()));
                        currentHolidayDrawable.draw(canvas);
                        if (this.overlayTitleAnimationInProgress) {
                            view.invalidate();
                            invalidate();
                        }
                    }
                }
                if (Theme.canStartHolidayAnimation()) {
                    boolean z = this.fireworks;
                    if (!z && this.snowflakesEffect == null) {
                        this.fireworksEffect = null;
                        SnowflakesEffect snowflakesEffect = new SnowflakesEffect(0);
                        this.snowflakesEffect = snowflakesEffect;
                        snowflakesEffect.occupyStatusBar = this.occupyStatusBar;
                    } else if (z && this.snowflakesEffect != null) {
                        this.snowflakesEffect = null;
                        this.fireworksEffect = new FireworksEffect();
                    }
                    SnowflakesEffect snowflakesEffect2 = this.snowflakesEffect;
                    if (snowflakesEffect2 != null) {
                        snowflakesEffect2.onDraw(this, canvas);
                    } else {
                        FireworksEffect fireworksEffect = this.fireworksEffect;
                        if (fireworksEffect != null) {
                            fireworksEffect.onDraw(this, canvas);
                        }
                    }
                }
            }
        }
        if (zShouldClipChild) {
            canvas.restore();
        }
        return zDrawChild;
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        if (this.clipContent) {
            invalidate();
        }
    }

    public void setBackButtonImage(int i) {
        if (this.backButtonImageView == null) {
            createBackButtonImage();
        }
        this.backButtonImageView.setVisibility(i == 0 ? 8 : 0);
        this.backButtonImageView.setImageResource(i);
        this.backButtonImageView.setColorFilter(new PorterDuffColorFilter(this.itemsColor, PorterDuff.Mode.SRC_IN));
    }

    private void createSubtitleTextView() {
        if (this.subtitleTextView != null) {
            return;
        }
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        this.subtitleTextView = simpleTextView;
        simpleTextView.setGravity(ExteraConfig.centerTitle ? 17 : 3);
        this.subtitleTextView.setVisibility(8);
        this.subtitleTextView.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubtitle));
        addView(this.subtitleTextView, 0, LayoutHelper.createFrame(-2, -2, 51));
    }

    public void createAdditionalSubtitleTextView() {
        if (this.additionalSubtitleTextView != null) {
            return;
        }
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        this.additionalSubtitleTextView = simpleTextView;
        simpleTextView.setGravity(ExteraConfig.centerTitle ? 17 : 3);
        this.additionalSubtitleTextView.setVisibility(8);
        this.additionalSubtitleTextView.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubtitle));
        addView(this.additionalSubtitleTextView, 0, LayoutHelper.createFrame(-2, -2, 51));
    }

    public SimpleTextView getAdditionalSubtitleTextView() {
        return this.additionalSubtitleTextView;
    }

    public void setAddToContainer(boolean z) {
        this.addToContainer = z;
    }

    public boolean shouldAddToContainer() {
        return this.addToContainer;
    }

    public void setClipContent(boolean z) {
        this.clipContent = z;
    }

    public void setSubtitle(CharSequence charSequence) {
        if (charSequence != null && this.subtitleTextView == null) {
            createSubtitleTextView();
        }
        if (this.subtitleTextView != null) {
            boolean zIsEmpty = TextUtils.isEmpty(charSequence);
            this.subtitleTextView.setVisibility((zIsEmpty || this.isSearchFieldVisible) ? 8 : 0);
            this.subtitleTextView.setAlpha(1.0f);
            if (!zIsEmpty) {
                this.subtitleTextView.setText(charSequence);
            }
            this.subtitle = charSequence;
        }
    }

    private void createTitleTextView(int i) {
        SimpleTextView[] simpleTextViewArr = this.titleTextView;
        if (simpleTextViewArr[i] != null) {
            return;
        }
        simpleTextViewArr[i] = new SimpleTextView(getContext());
        this.titleTextView[i].setGravity((this.isCenterTitle || ExteraConfig.centerTitle) ? 17 : 19);
        int i2 = this.titleColorToSet;
        if (i2 != 0) {
            this.titleTextView[i].setTextColor(i2);
        } else {
            this.titleTextView[i].setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        }
        SimpleTextView simpleTextView = this.titleTextView[i];
        simpleTextView.setEmojiColor(simpleTextView.getTextColor());
        this.titleTextView[i].setTypeface(AndroidUtilities.bold());
        this.titleTextView[i].setDrawablePadding(AndroidUtilities.m1124dp(4.0f));
        this.titleTextView[i].setPadding(0, AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f));
        this.titleTextView[i].setRightDrawableTopPadding(-AndroidUtilities.m1124dp(1.0f));
        if (this.useContainerForTitles) {
            this.titlesContainer.addView(this.titleTextView[i], 0, LayoutHelper.createFrame(-2, -2, 51));
        } else {
            addView(this.titleTextView[i], 0, LayoutHelper.createFrame(-2, -2, 51));
        }
    }

    public void setTitleRightMargin(int i) {
        this.titleRightMargin = i;
    }

    private boolean shouldUseDialogsDrawerTitleOffset() {
        return (this.backButtonDrawable instanceof MenuDrawable) && ExteraConfig.navigationDrawer && (this.parentFragment instanceof DialogsActivity);
    }

    private int getTitleLeft(boolean z) {
        if (!z) {
            return AndroidUtilities.m1124dp(AndroidUtilities.isTablet() ? 26.0f : 18.0f);
        }
        if (shouldUseDialogsDrawerTitleOffset()) {
            return AndroidUtilities.m1124dp(AndroidUtilities.isTablet() ? 68.0f : 56.0f);
        }
        return AndroidUtilities.m1124dp(AndroidUtilities.isTablet() ? 80.0f : 72.0f);
    }

    public void setTitle(CharSequence charSequence) {
        setTitle(charSequence, null);
    }

    public void setTitle(CharSequence charSequence, Drawable drawable) {
        if (charSequence != null && this.titleTextView[0] == null) {
            createTitleTextView(0);
        }
        SimpleTextView simpleTextView = this.titleTextView[0];
        if (simpleTextView != null) {
            simpleTextView.setTypeface(AndroidUtilities.getTypeface((charSequence == null || !charSequence.toString().equalsIgnoreCase("экстераграм")) ? AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM : "fonts/impact.ttf"));
            this.titleTextView[0].setVisibility((charSequence == null || this.isSearchFieldVisible) ? 4 : 0);
            SimpleTextView simpleTextView2 = this.titleTextView[0];
            this.lastTitle = charSequence;
            simpleTextView2.setText(charSequence);
            if (!ExteraConfig.hideActionBarStatus && UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                if (this.attached) {
                    Drawable drawable2 = this.lastRightDrawable;
                    if (drawable2 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) {
                        ((AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) drawable2).setParentView(null);
                    }
                }
                SimpleTextView simpleTextView3 = this.titleTextView[0];
                this.lastRightDrawable = drawable;
                simpleTextView3.setRightDrawable(drawable);
                if (this.attached) {
                    Drawable drawable3 = this.lastRightDrawable;
                    if (drawable3 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) {
                        ((AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) drawable3).setParentView(this.titleTextView[0]);
                    }
                }
                this.titleTextView[0].setRightDrawableOnClick(this.rightDrawableOnClickListener);
            }
        }
        this.fromBottom = false;
    }

    public void setRightDrawableOnClick(View.OnClickListener onClickListener) {
        this.rightDrawableOnClickListener = onClickListener;
        SimpleTextView simpleTextView = this.titleTextView[0];
        if (simpleTextView != null) {
            simpleTextView.setRightDrawableOnClick(onClickListener);
        }
        SimpleTextView simpleTextView2 = this.titleTextView[1];
        if (simpleTextView2 != null) {
            simpleTextView2.setRightDrawableOnClick(this.rightDrawableOnClickListener);
        }
    }

    public void setTitleColor(int i) {
        if (this.titleTextView[0] == null) {
            createTitleTextView(0);
        }
        this.titleColorToSet = i;
        this.titleTextView[0].setTextColor(i);
        this.titleTextView[0].setEmojiColor(i);
        SimpleTextView simpleTextView = this.titleTextView[1];
        if (simpleTextView != null) {
            simpleTextView.setTextColor(i);
            this.titleTextView[1].setEmojiColor(i);
        }
    }

    public void setSubtitleColor(int i) {
        if (this.subtitleTextView == null) {
            createSubtitleTextView();
        }
        this.subtitleTextView.setTextColor(i);
    }

    public void setTitleScrollNonFitText(boolean z) {
        this.titleTextView[0].setScrollNonFitText(z);
    }

    public void setPopupItemsColor(int i, boolean z, boolean z2) {
        ActionBarMenu actionBarMenu;
        ActionBarMenu actionBarMenu2;
        if (z2 && (actionBarMenu2 = this.actionMode) != null) {
            actionBarMenu2.setPopupItemsColor(i, z);
        } else {
            if (z2 || (actionBarMenu = this.menu) == null) {
                return;
            }
            actionBarMenu.setPopupItemsColor(i, z);
        }
    }

    public void setPopupItemsSelectorColor(int i, boolean z) {
        ActionBarMenu actionBarMenu;
        ActionBarMenu actionBarMenu2;
        if (z && (actionBarMenu2 = this.actionMode) != null) {
            actionBarMenu2.setPopupItemsSelectorColor(i);
        } else {
            if (z || (actionBarMenu = this.menu) == null) {
                return;
            }
            actionBarMenu.setPopupItemsSelectorColor(i);
        }
    }

    public void setPopupBackgroundColor(int i, boolean z) {
        ActionBarMenu actionBarMenu;
        ActionBarMenu actionBarMenu2;
        if (z && (actionBarMenu2 = this.actionMode) != null) {
            actionBarMenu2.redrawPopup(i);
        } else {
            if (z || (actionBarMenu = this.menu) == null) {
                return;
            }
            actionBarMenu.redrawPopup(i);
        }
    }

    public SimpleTextView getSubtitleTextView() {
        return this.subtitleTextView;
    }

    public SimpleTextView getTitleTextView() {
        return this.titleTextView[0];
    }

    public Paint.FontMetricsInt getTitleFontMetricsInt() {
        SimpleTextView simpleTextView = this.titleTextView[0];
        if (simpleTextView == null) {
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(AndroidUtilities.m1124dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 20.0f : 18.0f));
            return textPaint.getFontMetricsInt();
        }
        return simpleTextView.getPaint().getFontMetricsInt();
    }

    public SimpleTextView getTitleTextView2() {
        return this.titleTextView[1];
    }

    public String getTitle() {
        SimpleTextView simpleTextView = this.titleTextView[0];
        if (simpleTextView == null) {
            return null;
        }
        return simpleTextView.getText().toString();
    }

    public String getSubtitle() {
        CharSequence charSequence;
        if (this.subtitleTextView == null || (charSequence = this.subtitle) == null) {
            return null;
        }
        return charSequence.toString();
    }

    public ActionBarMenu createMenu() {
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null) {
            return actionBarMenu;
        }
        ActionBarMenu actionBarMenu2 = new ActionBarMenu(getContext(), this);
        this.menu = actionBarMenu2;
        addView(actionBarMenu2, 0, LayoutHelper.createFrame(-2, -1, 5));
        return this.menu;
    }

    public void setActionBarMenuOnItemClick(ActionBarMenuOnItemClick actionBarMenuOnItemClick) {
        this.actionBarMenuOnItemClick = actionBarMenuOnItemClick;
    }

    public ActionBarMenuOnItemClick getActionBarMenuOnItemClick() {
        return this.actionBarMenuOnItemClick;
    }

    public ImageView getBackButton() {
        return this.backButtonImageView;
    }

    public ActionBarMenu createActionMode() {
        return createActionMode(true, null);
    }

    public boolean actionModeIsExist(String str) {
        if (this.actionMode == null) {
            return false;
        }
        String str2 = this.actionModeTag;
        if (str2 == null && str == null) {
            return true;
        }
        return str2 != null && str2.equals(str);
    }

    public ActionBarMenu createActionMode(boolean z, String str) {
        if (actionModeIsExist(str)) {
            return this.actionMode;
        }
        ActionBarMenu actionBarMenu = this.actionMode;
        if (actionBarMenu != null) {
            removeView(actionBarMenu);
            this.actionMode = null;
        }
        this.actionModeTag = str;
        ActionBarMenu actionBarMenu2 = new ActionBarMenu(getContext(), this) { // from class: org.telegram.ui.ActionBar.ActionBar.1
            @Override // android.view.View
            public void setBackgroundColor(int i) {
                ActionBar.this.actionModeColor = i;
                ActionBar actionBar = ActionBar.this;
                if (actionBar.blurredBackground) {
                    return;
                }
                super.setBackgroundColor(actionBar.actionModeColor);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                ActionBar actionBar = ActionBar.this;
                if (actionBar.blurredBackground && this.drawBlur && actionBar.actionModeColor != 0) {
                    ActionBar.this.rectTmp.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
                    ActionBar actionBar2 = ActionBar.this;
                    actionBar2.blurScrimPaint.setColor(actionBar2.actionModeColor);
                    ActionBar actionBar3 = ActionBar.this;
                    canvas2 = canvas;
                    actionBar3.contentView.drawBlurRect(canvas2, 0.0f, actionBar3.rectTmp, actionBar3.blurScrimPaint, true);
                } else {
                    canvas2 = canvas;
                }
                super.dispatchDraw(canvas2);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                SizeNotifierFrameLayout sizeNotifierFrameLayout = ActionBar.this.contentView;
                if (sizeNotifierFrameLayout != null) {
                    sizeNotifierFrameLayout.blurBehindViews.add(this);
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                SizeNotifierFrameLayout sizeNotifierFrameLayout = ActionBar.this.contentView;
                if (sizeNotifierFrameLayout != null) {
                    sizeNotifierFrameLayout.blurBehindViews.remove(this);
                }
            }
        };
        this.actionMode = actionBarMenu2;
        actionBarMenu2.isActionMode = true;
        actionBarMenu2.setClickable(true);
        this.actionMode.setBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefault));
        addView(this.actionMode, indexOfChild(this.backButtonImageView));
        this.actionMode.setPadding(0, this.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0, 0, 0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.actionMode.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.bottomMargin = this.extraHeight;
        layoutParams.gravity = 5;
        this.actionMode.setLayoutParams(layoutParams);
        this.actionMode.setVisibility(4);
        return this.actionMode;
    }

    public void showActionMode() {
        showActionMode(true, null, null, null, null, null, 0);
    }

    public void showActionMode(boolean z) {
        showActionMode(z, null, null, null, null, null, 0);
    }

    public void showActionMode(boolean z, View view, View view2, View[] viewArr, final boolean[] zArr, View view3, int i) {
        ActionBarMenu actionBarMenu = this.actionMode;
        if (actionBarMenu == null || this.actionModeVisible) {
            return;
        }
        this.actionModeVisible = true;
        if (z) {
            ArrayList arrayList = new ArrayList();
            Property property = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(this.actionMode, (Property<ActionBarMenu, Float>) property, 0.0f, 1.0f));
            if (viewArr != null) {
                for (View view4 : viewArr) {
                    if (view4 != null) {
                        arrayList.add(ObjectAnimator.ofFloat(view4, (Property<View, Float>) property, 1.0f, 0.0f));
                    }
                }
            }
            if (view2 != null) {
                arrayList.add(ObjectAnimator.ofFloat(view2, (Property<View, Float>) property, 0.0f, 1.0f));
            }
            Property property2 = View.TRANSLATION_Y;
            if (view3 != null) {
                arrayList.add(ObjectAnimator.ofFloat(view3, (Property<View, Float>) property2, i));
                this.actionModeTranslationView = view3;
            }
            this.actionModeExtraView = view;
            this.actionModeShowingView = view2;
            this.actionModeHidingViews = viewArr;
            if (view != null) {
                arrayList.add(ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, 0.0f));
            }
            if (this.actionModeColor == 0) {
                if (!this.isSearchFieldVisible) {
                    SimpleTextView simpleTextView = this.titleTextView[0];
                    if (simpleTextView != null) {
                        arrayList.add(ObjectAnimator.ofFloat(simpleTextView, (Property<SimpleTextView, Float>) property, 0.0f));
                    }
                    if (this.subtitleTextView != null && !TextUtils.isEmpty(this.subtitle)) {
                        arrayList.add(ObjectAnimator.ofFloat(this.subtitleTextView, (Property<SimpleTextView, Float>) property, 0.0f));
                    }
                }
                ActionBarMenu actionBarMenu2 = this.menu;
                if (actionBarMenu2 != null) {
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenu2, (Property<ActionBarMenu, Float>) property, 0.0f));
                }
            }
            int i2 = this.actionModeColor;
            if (i2 == 0) {
                i2 = this.actionBarColor;
            }
            if (i2 == 0) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            } else if (ColorUtils.calculateLuminance(i2) < 0.699999988079071d) {
                AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), false);
            } else {
                AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), true);
            }
            AnimatorSet animatorSet = this.actionModeAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.actionModeAnimation = animatorSet2;
            animatorSet2.playTogether(arrayList);
            if (this.backgroundUpdateListener != null) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$showActionMode$2(valueAnimator);
                    }
                });
                this.actionModeAnimation.playTogether(valueAnimatorOfFloat);
            }
            this.actionModeAnimation.setDuration(200L);
            this.actionModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    ActionBar.this.actionMode.setVisibility(0);
                    ActionBar actionBar = ActionBar.this;
                    if (actionBar.occupyStatusBar) {
                        View unused = actionBar.actionModeTop;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    boolean[] zArr2;
                    if (ActionBar.this.actionModeAnimation == null || !ActionBar.this.actionModeAnimation.equals(animator)) {
                        return;
                    }
                    ActionBar.this.actionModeAnimation = null;
                    if (ActionBar.this.titleTextView[0] != null) {
                        ActionBar.this.titleTextView[0].setVisibility(4);
                    }
                    if (ActionBar.this.subtitleTextView != null && !TextUtils.isEmpty(ActionBar.this.subtitle)) {
                        ActionBar.this.subtitleTextView.setVisibility(4);
                    }
                    ActionBarMenu actionBarMenu3 = ActionBar.this.menu;
                    if (actionBarMenu3 != null) {
                        actionBarMenu3.setVisibility(4);
                    }
                    if (ActionBar.this.actionModeHidingViews != null) {
                        for (int i3 = 0; i3 < ActionBar.this.actionModeHidingViews.length; i3++) {
                            if (ActionBar.this.actionModeHidingViews[i3] != null && ((zArr2 = zArr) == null || i3 >= zArr2.length || zArr2[i3])) {
                                ActionBar.this.actionModeHidingViews[i3].setVisibility(4);
                            }
                        }
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (ActionBar.this.actionModeAnimation == null || !ActionBar.this.actionModeAnimation.equals(animator)) {
                        return;
                    }
                    ActionBar.this.actionModeAnimation = null;
                }
            });
            this.actionModeAnimation.start();
            ImageView imageView = this.backButtonImageView;
            if (imageView != null) {
                Drawable drawable = imageView.getDrawable();
                if (drawable instanceof BackDrawable) {
                    ((BackDrawable) drawable).setRotation(1.0f, true);
                } else if (drawable instanceof MenuDrawable) {
                    ((MenuDrawable) drawable).setRotation(1.0f, true);
                }
                this.backButtonImageView.setBackgroundDrawable(Theme.createSelectorDrawable(this.itemsActionModeBackgroundColor));
                return;
            }
            return;
        }
        float f = 0.0f;
        actionBarMenu.setAlpha(1.0f);
        if (viewArr != null) {
            int length = viewArr.length;
            int i3 = 0;
            while (i3 < length) {
                View view5 = viewArr[i3];
                if (view5 != null) {
                    view5.setAlpha(f);
                }
                i3++;
                f = 0.0f;
            }
        }
        if (view2 != null) {
            view2.setAlpha(1.0f);
        }
        if (view3 != null) {
            view3.setTranslationY(i);
            this.actionModeTranslationView = view3;
        }
        this.actionModeExtraView = view;
        if (view != null) {
            view.setTranslationY(0.0f);
        }
        this.actionModeShowingView = view2;
        this.actionModeHidingViews = viewArr;
        int i4 = this.actionModeColor;
        if (i4 == 0) {
            i4 = this.actionBarColor;
        }
        if (i4 == 0) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        } else if (ColorUtils.calculateLuminance(i4) < 0.699999988079071d) {
            AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), false);
        } else {
            AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), true);
        }
        this.actionMode.setVisibility(0);
        SimpleTextView simpleTextView2 = this.titleTextView[0];
        if (simpleTextView2 != null) {
            simpleTextView2.setVisibility(4);
        }
        if (this.subtitleTextView != null && !TextUtils.isEmpty(this.subtitle)) {
            this.subtitleTextView.setVisibility(4);
        }
        ActionBarMenu actionBarMenu3 = this.menu;
        if (actionBarMenu3 != null) {
            actionBarMenu3.setVisibility(4);
        }
        if (this.actionModeHidingViews != null) {
            int i5 = 0;
            while (true) {
                View[] viewArr2 = this.actionModeHidingViews;
                if (i5 >= viewArr2.length) {
                    break;
                }
                View view6 = viewArr2[i5];
                if (view6 != null && (zArr == null || i5 >= zArr.length || zArr[i5])) {
                    view6.setVisibility(4);
                }
                i5++;
            }
        }
        ImageView imageView2 = this.backButtonImageView;
        if (imageView2 != null) {
            Drawable drawable2 = imageView2.getDrawable();
            if (drawable2 instanceof BackDrawable) {
                ((BackDrawable) drawable2).setRotation(1.0f, false);
            } else if (drawable2 instanceof MenuDrawable) {
                ((MenuDrawable) drawable2).setRotation(1.0f, false);
            }
            this.backButtonImageView.setBackgroundDrawable(Theme.createSelectorDrawable(this.itemsActionModeBackgroundColor));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showActionMode$2(ValueAnimator valueAnimator) {
        Runnable runnable = this.backgroundUpdateListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void hideActionMode() {
        ActionBarMenu actionBarMenu = this.actionMode;
        if (actionBarMenu == null || !this.actionModeVisible) {
            return;
        }
        actionBarMenu.hideAllPopupMenus();
        this.actionModeVisible = false;
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        arrayList.add(ObjectAnimator.ofFloat(this.actionMode, (Property<ActionBarMenu, Float>) property, 0.0f));
        View[] viewArr = this.actionModeHidingViews;
        if (viewArr != null) {
            for (View view : viewArr) {
                if (view != null) {
                    view.setVisibility(0);
                    arrayList.add(ObjectAnimator.ofFloat(view, (Property<View, Float>) property, 1.0f));
                }
            }
        }
        View view2 = this.actionModeTranslationView;
        Property property2 = View.TRANSLATION_Y;
        if (view2 != null) {
            arrayList.add(ObjectAnimator.ofFloat(view2, (Property<View, Float>) property2, 0.0f));
            this.actionModeTranslationView = null;
        }
        View view3 = this.actionModeShowingView;
        if (view3 != null) {
            arrayList.add(ObjectAnimator.ofFloat(view3, (Property<View, Float>) property, 0.0f));
        }
        View view4 = this.actionModeExtraView;
        if (view4 != null) {
            arrayList.add(ObjectAnimator.ofFloat(view4, (Property<View, Float>) property2, view4.getMeasuredHeight()));
        }
        if (!this.isSearchFieldVisible) {
            SimpleTextView simpleTextView = this.titleTextView[0];
            if (simpleTextView != null) {
                arrayList.add(ObjectAnimator.ofFloat(simpleTextView, (Property<SimpleTextView, Float>) property, 1.0f));
            }
            if (this.subtitleTextView != null && !TextUtils.isEmpty(this.subtitle)) {
                arrayList.add(ObjectAnimator.ofFloat(this.subtitleTextView, (Property<SimpleTextView, Float>) property, 1.0f));
            }
        }
        ActionBarMenu actionBarMenu2 = this.menu;
        if (actionBarMenu2 != null) {
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenu2, (Property<ActionBarMenu, Float>) property, 1.0f));
        }
        if (this.actionBarColor == 0) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        } else {
            AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), ColorUtils.calculateLuminance(this.actionBarColor) >= 0.699999988079071d);
        }
        AnimatorSet animatorSet = this.actionModeAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.actionModeAnimation = animatorSet2;
        animatorSet2.playTogether(arrayList);
        if (this.backgroundUpdateListener != null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$hideActionMode$3(valueAnimator);
                }
            });
            this.actionModeAnimation.playTogether(valueAnimatorOfFloat);
        }
        this.actionModeAnimation.setDuration(200L);
        this.actionModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ActionBar.this.actionModeAnimation == null || !ActionBar.this.actionModeAnimation.equals(animator)) {
                    return;
                }
                ActionBar.this.actionModeAnimation = null;
                ActionBar.this.actionMode.setVisibility(4);
                ActionBar actionBar = ActionBar.this;
                if (actionBar.occupyStatusBar) {
                    View unused = actionBar.actionModeTop;
                }
                if (ActionBar.this.actionModeExtraView != null) {
                    ActionBar.this.actionModeExtraView.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (ActionBar.this.actionModeAnimation == null || !ActionBar.this.actionModeAnimation.equals(animator)) {
                    return;
                }
                ActionBar.this.actionModeAnimation = null;
            }
        });
        this.actionModeAnimation.start();
        if (!this.isSearchFieldVisible) {
            SimpleTextView simpleTextView2 = this.titleTextView[0];
            if (simpleTextView2 != null) {
                simpleTextView2.setVisibility(0);
            }
            if (this.subtitleTextView != null && !TextUtils.isEmpty(this.subtitle)) {
                this.subtitleTextView.setVisibility(0);
            }
        }
        ActionBarMenu actionBarMenu3 = this.menu;
        if (actionBarMenu3 != null) {
            actionBarMenu3.setVisibility(0);
        }
        ImageView imageView = this.backButtonImageView;
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof BackDrawable) {
                ((BackDrawable) drawable).setRotation(0.0f, true);
            } else if (drawable instanceof MenuDrawable) {
                ((MenuDrawable) drawable).setRotation(0.0f, true);
            }
            this.backButtonImageView.setBackgroundDrawable(Theme.createSelectorDrawable(this.itemsBackgroundColor));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideActionMode$3(ValueAnimator valueAnimator) {
        Runnable runnable = this.backgroundUpdateListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void showActionModeTop() {
        if (this.occupyStatusBar && this.actionModeTop == null) {
            View view = new View(getContext());
            this.actionModeTop = view;
            view.setBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultTop));
            addView(this.actionModeTop);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.actionModeTop.getLayoutParams();
            layoutParams.height = AndroidUtilities.statusBarHeight;
            layoutParams.width = -1;
            layoutParams.gravity = 51;
            this.actionModeTop.setLayoutParams(layoutParams);
        }
    }

    public void setActionModeTopColor(int i) {
        View view = this.actionModeTop;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setSearchTextColor(int i, boolean z) {
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null) {
            actionBarMenu.setSearchTextColor(i, z);
        }
    }

    public void setSearchCursorColor(int i) {
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null) {
            actionBarMenu.setSearchCursorColor(i);
        }
    }

    public void setActionModeColor(int i) {
        ActionBarMenu actionBarMenu = this.actionMode;
        if (actionBarMenu != null) {
            actionBarMenu.setBackgroundColor(i);
        }
    }

    public void setActionModeOverrideColor(int i) {
        this.actionModeColor = i;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.actionBarColor = i;
        if (!this.blurredBackground) {
            super.setBackgroundColor(i);
        }
        ImageView imageView = this.backButtonImageView;
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof MenuDrawable) {
                ((MenuDrawable) drawable).setBackColor(i);
            }
        }
    }

    public int getBackgroundColor() {
        return this.actionBarColor;
    }

    public boolean isActionModeShowed() {
        return this.actionMode != null && this.actionModeVisible;
    }

    public boolean isActionModeShowed(String str) {
        if (this.actionMode == null || !this.actionModeVisible) {
            return false;
        }
        String str2 = this.actionModeTag;
        if (str2 == null && str == null) {
            return true;
        }
        return str2 != null && str2.equals(str);
    }

    public void listenToBackgroundUpdate(Runnable runnable) {
        this.backgroundUpdateListener = runnable;
    }

    public void onSearchFieldVisibilityChanged(final boolean z) {
        Property property;
        this.isSearchFieldVisible = z;
        AnimatorSet animatorSet = this.searchVisibleAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.searchVisibleAnimator = new AnimatorSet();
        final ArrayList arrayList = new ArrayList();
        final boolean zOnSearchChangedIgnoreTitles = onSearchChangedIgnoreTitles();
        if (!zOnSearchChangedIgnoreTitles) {
            SimpleTextView simpleTextView = this.titleTextView[0];
            if (simpleTextView != null) {
                arrayList.add(simpleTextView);
            }
            if (this.subtitleTextView != null && !TextUtils.isEmpty(this.subtitle)) {
                arrayList.add(this.subtitleTextView);
                this.subtitleTextView.setVisibility(z ? 4 : 0);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.searchFieldVisibleAlpha, z ? 1.0f : 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$onSearchFieldVisibilityChanged$4(valueAnimator);
            }
        });
        this.searchVisibleAnimator.playTogether(valueAnimatorOfFloat);
        int i = 0;
        while (true) {
            int size = arrayList.size();
            property = View.ALPHA;
            if (i >= size) {
                break;
            }
            View view = (View) arrayList.get(i);
            float f = 0.95f;
            if (!z) {
                view.setVisibility(0);
                view.setAlpha(0.0f);
                view.setScaleX(0.95f);
                view.setScaleY(0.95f);
            }
            this.searchVisibleAnimator.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) property, z ? 0.0f : 1.0f));
            this.searchVisibleAnimator.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, z ? 0.95f : 1.0f));
            AnimatorSet animatorSet2 = this.searchVisibleAnimator;
            if (!z) {
                f = 1.0f;
            }
            animatorSet2.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, f));
            i++;
        }
        BackupImageView backupImageView = this.avatarSearchImageView;
        if (backupImageView != null) {
            backupImageView.setVisibility(0);
            this.searchVisibleAnimator.playTogether(ObjectAnimator.ofFloat(this.avatarSearchImageView, (Property<BackupImageView, Float>) property, z ? 1.0f : 0.0f));
        }
        this.centerScale = true;
        requestLayout();
        this.searchVisibleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    View view2 = (View) arrayList.get(i2);
                    if (z) {
                        view2.setVisibility(4);
                        view2.setAlpha(0.0f);
                    } else {
                        view2.setAlpha(1.0f);
                    }
                }
                if (z && !zOnSearchChangedIgnoreTitles) {
                    if (ActionBar.this.titleTextView[0] != null) {
                        ActionBar.this.titleTextView[0].setVisibility(8);
                    }
                    if (ActionBar.this.titleTextView[1] != null) {
                        ActionBar.this.titleTextView[1].setVisibility(8);
                    }
                }
                if (ActionBar.this.avatarSearchImageView == null || z) {
                    return;
                }
                ActionBar.this.avatarSearchImageView.setVisibility(8);
            }
        });
        this.searchVisibleAnimator.setDuration(150L).start();
        ImageView imageView = this.backButtonImageView;
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof MenuDrawable) {
                MenuDrawable menuDrawable = (MenuDrawable) drawable;
                menuDrawable.setRotateToBack(true);
                menuDrawable.setRotation(z ? 1.0f : 0.0f, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSearchFieldVisibilityChanged$4(ValueAnimator valueAnimator) {
        this.searchFieldVisibleAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Runnable runnable = this.backgroundUpdateListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setInterceptTouches(boolean z) {
        this.interceptTouches = z;
    }

    public void setInterceptTouchEventListener(View.OnTouchListener onTouchListener) {
        this.interceptTouchEventListener = onTouchListener;
    }

    public void setExtraHeight(int i) {
        this.extraHeight = i;
        ActionBarMenu actionBarMenu = this.actionMode;
        if (actionBarMenu != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) actionBarMenu.getLayoutParams();
            layoutParams.bottomMargin = this.extraHeight;
            this.actionMode.setLayoutParams(layoutParams);
        }
    }

    public void closeSearchField() {
        closeSearchField(true);
    }

    public void closeSearchField(boolean z) {
        ActionBarMenu actionBarMenu;
        if (!this.isSearchFieldVisible || (actionBarMenu = this.menu) == null) {
            return;
        }
        actionBarMenu.closeSearchField(z);
    }

    public void openSearchField(String str, boolean z) {
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu == null || str == null) {
            return;
        }
        boolean z2 = this.isSearchFieldVisible;
        actionBarMenu.openSearchField(!z2, !z2, str, z);
    }

    public void setSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null) {
            actionBarMenu.setFilter(mediaFilterData);
        }
    }

    public void setSearchFieldText(String str) {
        this.menu.setSearchFieldText(str);
    }

    public void onSearchPressed() {
        this.menu.onSearchPressed();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        ImageView imageView = this.backButtonImageView;
        if (imageView != null) {
            imageView.setEnabled(z);
        }
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null) {
            actionBarMenu.setEnabled(z);
        }
        ActionBarMenu actionBarMenu2 = this.actionMode;
        if (actionBarMenu2 != null) {
            actionBarMenu2.setEnabled(z);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayoutRequest) {
            return;
        }
        super.requestLayout();
    }

    private void resetCenterTitleLayoutAnimation() {
        ValueAnimator valueAnimator = this.centerTitleLayoutAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.centerTitleLayoutAnimator = null;
        }
        this.animatedCenterTitleX = Float.NaN;
        this.animatedCenterTitleAvailableWidth = Float.NaN;
        this.centerTitleAnimationTargetX = Integer.MIN_VALUE;
        this.centerTitleAnimationTargetWidth = -1;
    }

    private boolean shouldUseAdaptiveCenterTitle() {
        ActionBarMenu actionBarMenu;
        return ExteraConfig.centerTitle && (actionBarMenu = this.menu) != null && actionBarMenu.getVisibleItemsCount() > 2;
    }

    private int getCenterTitleRightBound(int i) {
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null && actionBarMenu.getVisibility() != 8) {
            int measuredWidth = this.menu.getMeasuredWidth();
            if (ExteraConfig.centerTitle) {
                measuredWidth = this.menu.getVisibleItemsMeasuredWidthForCenterTitle();
            }
            return i - measuredWidth;
        }
        return i - AndroidUtilities.m1124dp(16.0f);
    }

    private int getAdaptiveCenterTitleAvailableWidth(int i, int i2) {
        return Math.max(0, Math.max(i2, getCenterTitleRightBound(i)) - i2);
    }

    private int getAdaptiveCenterTitleCenterX(int i, int i2) {
        return i2 + ((Math.max(i2, getCenterTitleRightBound(i)) - i2) / 2);
    }

    private int getCenteredTitleAvailableWidth(int i, int i2, boolean z) {
        if (z) {
            return getAdaptiveCenterTitleAvailableWidth(i, i2);
        }
        int iMax = Math.max(0, i - AndroidUtilities.m1124dp(120.0f));
        int iMax2 = Math.max(i2, getCenterTitleRightBound(i));
        int i3 = i / 2;
        return Math.min(iMax, Math.max(0, Math.min(i3 - i2, iMax2 - i3)) * 2);
    }

    private int getTargetCenterTitleX(int i, int i2, boolean z) {
        return z ? getAdaptiveCenterTitleCenterX(i, i2) : i / 2;
    }

    private int getAnimatedCenterTitleX(int i) {
        return Float.isNaN(this.animatedCenterTitleX) ? i : Math.round(this.animatedCenterTitleX);
    }

    private int getAnimatedCenterTitleAvailableWidth(int i) {
        return Float.isNaN(this.animatedCenterTitleAvailableWidth) ? i : Math.max(0, Math.round(this.animatedCenterTitleAvailableWidth));
    }

    private boolean shouldAnimateCenterTitleLayout() {
        return (!this.attached || getWindowToken() == null || this.isSearchFieldVisible || this.titleAnimationRunning) ? false : true;
    }

    private void updateCenterTitleLayoutAnimation(final int i, final int i2, boolean z) {
        if (!ExteraConfig.centerTitle) {
            resetCenterTitleLayoutAnimation();
            return;
        }
        if (Float.isNaN(this.animatedCenterTitleX) || Float.isNaN(this.animatedCenterTitleAvailableWidth)) {
            this.animatedCenterTitleX = i;
            this.animatedCenterTitleAvailableWidth = i2;
            return;
        }
        if (!z) {
            ValueAnimator valueAnimator = this.centerTitleLayoutAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.centerTitleLayoutAnimator = null;
            }
            this.animatedCenterTitleX = i;
            this.animatedCenterTitleAvailableWidth = i2;
            this.centerTitleAnimationTargetX = Integer.MIN_VALUE;
            this.centerTitleAnimationTargetWidth = -1;
            return;
        }
        final float f = this.animatedCenterTitleX;
        final float f2 = this.animatedCenterTitleAvailableWidth;
        float f3 = i;
        if (Math.abs(f - f3) < 0.5f) {
            float f4 = i2;
            if (Math.abs(f2 - f4) < 0.5f) {
                ValueAnimator valueAnimator2 = this.centerTitleLayoutAnimator;
                if (valueAnimator2 != null && !valueAnimator2.isRunning()) {
                    this.centerTitleLayoutAnimator = null;
                }
                this.animatedCenterTitleX = f3;
                this.animatedCenterTitleAvailableWidth = f4;
                this.centerTitleAnimationTargetX = Integer.MIN_VALUE;
                this.centerTitleAnimationTargetWidth = -1;
                return;
            }
        }
        ValueAnimator valueAnimator3 = this.centerTitleLayoutAnimator;
        if (valueAnimator3 != null && this.centerTitleAnimationTargetX == i && this.centerTitleAnimationTargetWidth == i2) {
            return;
        }
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.centerTitleLayoutAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.centerTitleLayoutAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(260L);
        this.centerTitleLayoutAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.centerTitleLayoutAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                this.f$0.lambda$updateCenterTitleLayoutAnimation$5(f, i, f2, i2, valueAnimator4);
            }
        });
        this.centerTitleLayoutAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.5
            private boolean cancelled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.cancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ActionBar.this.centerTitleLayoutAnimator == animator) {
                    ActionBar.this.centerTitleLayoutAnimator = null;
                }
                if (!this.cancelled) {
                    ActionBar.this.animatedCenterTitleX = i;
                    ActionBar.this.animatedCenterTitleAvailableWidth = i2;
                }
                ActionBar.this.centerTitleAnimationTargetX = Integer.MIN_VALUE;
                ActionBar.this.centerTitleAnimationTargetWidth = -1;
            }
        });
        this.centerTitleAnimationTargetX = i;
        this.centerTitleAnimationTargetWidth = i2;
        this.centerTitleLayoutAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCenterTitleLayoutAnimation$5(float f, int i, float f2, int i2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.animatedCenterTitleX = f + ((i - f) * fFloatValue);
        this.animatedCenterTitleAvailableWidth = f2 + ((i2 - f2) * fFloatValue);
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int titleLeft;
        SimpleTextView simpleTextView;
        int i3;
        int measuredWidth;
        SimpleTextView simpleTextView2;
        int iMakeMeasureSpec;
        ActionBar actionBar = this;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int currentActionBarHeight = getCurrentActionBarHeight();
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(currentActionBarHeight, TLObject.FLAG_30);
        int i4 = actionBar.lastMeasuredWidth;
        if (i4 > 0 && i4 != size) {
            actionBar.resetCenterTitleLayoutAnimation();
        }
        actionBar.lastMeasuredWidth = size;
        int i5 = 1;
        actionBar.ignoreLayoutRequest = true;
        View view = actionBar.actionModeTop;
        if (view != null) {
            ((FrameLayout.LayoutParams) view.getLayoutParams()).height = AndroidUtilities.statusBarHeight;
        }
        ActionBarMenu actionBarMenu = actionBar.actionMode;
        if (actionBarMenu != null) {
            actionBarMenu.setPadding(0, actionBar.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0, 0, 0);
        }
        actionBar.ignoreLayoutRequest = false;
        actionBar.setMeasuredDimension(size, currentActionBarHeight + (actionBar.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0) + actionBar.extraHeight);
        ImageView imageView = actionBar.backButtonImageView;
        if (imageView != null && imageView.getVisibility() != 8) {
            actionBar.backButtonImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(54.0f), TLObject.FLAG_30), iMakeMeasureSpec2);
            titleLeft = actionBar.getTitleLeft(true);
        } else {
            titleLeft = actionBar.getTitleLeft(false);
        }
        ActionBarMenu actionBarMenu2 = actionBar.menu;
        if (actionBarMenu2 != null && actionBarMenu2.getVisibility() != 8) {
            if (actionBar.menu.searchFieldVisible() && !actionBar.isSearchFieldVisible) {
                actionBar.menu.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), iMakeMeasureSpec2);
                int itemsMeasuredWidth = actionBar.menu.getItemsMeasuredWidth(true);
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((size - AndroidUtilities.m1124dp(AndroidUtilities.isTablet() ? 74.0f : 66.0f)) + actionBar.menu.getItemsMeasuredWidth(true), TLObject.FLAG_30);
                if (!actionBar.isMenuOffsetSuppressed) {
                    actionBar.menu.translateXItems(-itemsMeasuredWidth);
                }
            } else if (actionBar.isSearchFieldVisible) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(AndroidUtilities.isTablet() ? 74.0f : 66.0f), TLObject.FLAG_30);
                if (!actionBar.isMenuOffsetSuppressed) {
                    actionBar.menu.translateXItems(0.0f);
                }
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
                if (!actionBar.isMenuOffsetSuppressed) {
                    actionBar.menu.translateXItems(0.0f);
                }
            }
            actionBar.menu.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        }
        if (!ExteraConfig.centerTitle) {
            actionBar.resetCenterTitleLayoutAnimation();
        }
        boolean zShouldUseAdaptiveCenterTitle = actionBar.shouldUseAdaptiveCenterTitle();
        int i6 = 0;
        while (i6 < 2) {
            SimpleTextView simpleTextView3 = actionBar.titleTextView[0];
            if ((simpleTextView3 == null || simpleTextView3.getVisibility() == 8) && ((simpleTextView = actionBar.subtitleTextView) == null || simpleTextView.getVisibility() == 8)) {
                i3 = i5;
            } else {
                if (ExteraConfig.centerTitle) {
                    measuredWidth = actionBar.getAnimatedCenterTitleAvailableWidth(actionBar.getCenteredTitleAvailableWidth(size, titleLeft, zShouldUseAdaptiveCenterTitle));
                } else {
                    ActionBarMenu actionBarMenu3 = actionBar.menu;
                    measuredWidth = (((size - (actionBarMenu3 != null ? actionBarMenu3.getMeasuredWidth() : 0)) - AndroidUtilities.m1124dp(16.0f)) - titleLeft) - actionBar.titleRightMargin;
                }
                boolean z = actionBar.fromBottom;
                if (((z && i6 == 0) || (!z && i6 == i5)) && actionBar.overlayTitleAnimation && actionBar.titleAnimationRunning) {
                    SimpleTextView simpleTextView4 = actionBar.titleTextView[i6];
                    if (AndroidUtilities.isTablet()) {
                        i3 = i5;
                    } else {
                        i3 = i5;
                        if (actionBar.getResources().getConfiguration().orientation == 2) {
                            i = 18;
                        }
                    }
                    simpleTextView4.setTextSize(i);
                } else {
                    i3 = i5;
                    SimpleTextView simpleTextView5 = actionBar.titleTextView[0];
                    if (simpleTextView5 != null && simpleTextView5.getVisibility() != 8 && (simpleTextView2 = actionBar.subtitleTextView) != null && simpleTextView2.getVisibility() != 8) {
                        SimpleTextView simpleTextView6 = actionBar.titleTextView[i6];
                        if (simpleTextView6 != null) {
                            simpleTextView6.setTextSize(AndroidUtilities.isTablet() ? 20 : 18);
                        }
                        actionBar.subtitleTextView.setTextSize(AndroidUtilities.isTablet() ? 16 : 14);
                        SimpleTextView simpleTextView7 = actionBar.additionalSubtitleTextView;
                        if (simpleTextView7 != null) {
                            simpleTextView7.setTextSize(AndroidUtilities.isTablet() ? 16 : 14);
                        }
                    } else {
                        SimpleTextView simpleTextView8 = actionBar.titleTextView[i6];
                        if (simpleTextView8 != null && simpleTextView8.getVisibility() != 8) {
                            SimpleTextView simpleTextView9 = actionBar.titleTextView[i6];
                            if (!AndroidUtilities.isTablet() && actionBar.getResources().getConfiguration().orientation == 2) {
                                i = 18;
                            }
                            simpleTextView9.setTextSize(i);
                        }
                        SimpleTextView simpleTextView10 = actionBar.subtitleTextView;
                        if (simpleTextView10 != null && simpleTextView10.getVisibility() != 8) {
                            actionBar.subtitleTextView.setTextSize((AndroidUtilities.isTablet() || actionBar.getResources().getConfiguration().orientation != 2) ? 16 : 14);
                        }
                        SimpleTextView simpleTextView11 = actionBar.additionalSubtitleTextView;
                        if (simpleTextView11 != null) {
                            simpleTextView11.setTextSize((AndroidUtilities.isTablet() || actionBar.getResources().getConfiguration().orientation != 2) ? 16 : 14);
                        }
                    }
                }
                SimpleTextView simpleTextView12 = actionBar.titleTextView[i6];
                if (simpleTextView12 != null && simpleTextView12.getVisibility() != 8) {
                    actionBar.titleTextView[i6].measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(24.0f) + actionBar.titleTextView[i6].getPaddingTop() + actionBar.titleTextView[i6].getPaddingBottom(), Integer.MIN_VALUE));
                    if (actionBar.centerScale) {
                        CharSequence text = actionBar.titleTextView[i6].getText();
                        SimpleTextView simpleTextView13 = actionBar.titleTextView[i6];
                        simpleTextView13.setPivotX(simpleTextView13.getTextPaint().measureText(text, 0, text.length()) / 2.0f);
                        actionBar.titleTextView[i6].setPivotY(AndroidUtilities.m1124dp(24.0f) >> 1);
                    } else {
                        actionBar.titleTextView[i6].setPivotX(0.0f);
                        actionBar.titleTextView[i6].setPivotY(0.0f);
                    }
                }
                SimpleTextView simpleTextView14 = actionBar.subtitleTextView;
                if (simpleTextView14 != null && simpleTextView14.getVisibility() != 8) {
                    actionBar.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), Integer.MIN_VALUE));
                }
                ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer = actionBar.additionalSubTitleOverlayContainer;
                if (actionBarAnimatedSubtitleOverlayContainer != null) {
                    actionBarAnimatedSubtitleOverlayContainer.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                }
                SimpleTextView simpleTextView15 = actionBar.additionalSubtitleTextView;
                if (simpleTextView15 != null && simpleTextView15.getVisibility() != 8) {
                    actionBar.additionalSubtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), Integer.MIN_VALUE));
                }
            }
            i6++;
            i5 = i3;
        }
        int i7 = i5;
        BackupImageView backupImageView = actionBar.avatarSearchImageView;
        if (backupImageView != null) {
            backupImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30));
        }
        int childCount = actionBar.getChildCount();
        int i8 = 0;
        while (i8 < childCount) {
            View childAt = actionBar.getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                SimpleTextView[] simpleTextViewArr = actionBar.titleTextView;
                if (childAt != simpleTextViewArr[0] && childAt != simpleTextViewArr[i7] && childAt != actionBar.additionalSubTitleOverlayContainer && childAt != actionBar.subtitleTextView && childAt != actionBar.menu && childAt != actionBar.backButtonImageView && childAt != actionBar.additionalSubtitleTextView && childAt != actionBar.avatarSearchImageView) {
                    actionBar.measureChildWithMargins(childAt, i, 0, View.MeasureSpec.makeMeasureSpec(actionBar.getMeasuredHeight(), TLObject.FLAG_30), 0);
                }
            }
            i8++;
            actionBar = this;
        }
    }

    public void setMenuOffsetSuppressed(boolean z) {
        this.isMenuOffsetSuppressed = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0332  */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int titleLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        SimpleTextView simpleTextView;
        int currentActionBarHeight;
        int i11 = this.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0;
        ImageView imageView = this.backButtonImageView;
        if (imageView != null && imageView.getVisibility() != 8) {
            ImageView imageView2 = this.backButtonImageView;
            imageView2.layout(0, i11, imageView2.getMeasuredWidth(), this.backButtonImageView.getMeasuredHeight() + i11);
            titleLeft = getTitleLeft(true);
        } else {
            titleLeft = getTitleLeft(false);
        }
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null && actionBarMenu.getVisibility() != 8) {
            int iM1124dp = this.menu.searchFieldVisible() ? AndroidUtilities.m1124dp(AndroidUtilities.isTablet() ? 74.0f : 66.0f) : (i3 - i) - this.menu.getMeasuredWidth();
            ActionBarMenu actionBarMenu2 = this.menu;
            actionBarMenu2.layout(iM1124dp, i11, actionBarMenu2.getMeasuredWidth() + iM1124dp, this.menu.getMeasuredHeight() + i11);
        }
        boolean zShouldUseAdaptiveCenterTitle = shouldUseAdaptiveCenterTitle();
        int targetCenterTitleX = getTargetCenterTitleX(getMeasuredWidth(), titleLeft, zShouldUseAdaptiveCenterTitle);
        updateCenterTitleLayoutAnimation(targetCenterTitleX, getCenteredTitleAvailableWidth(getMeasuredWidth(), titleLeft, zShouldUseAdaptiveCenterTitle), shouldAnimateCenterTitleLayout());
        int animatedCenterTitleX = getAnimatedCenterTitleX(targetCenterTitleX);
        int i12 = 0;
        while (true) {
            if (i12 >= 2) {
                break;
            }
            SimpleTextView simpleTextView2 = this.titleTextView[i12];
            if (simpleTextView2 != null && simpleTextView2.getVisibility() != 8) {
                boolean z2 = this.fromBottom;
                if ((((!z2 || i12 != 0) && (z2 || i12 != 1)) || !this.overlayTitleAnimation || !this.titleAnimationRunning) && (simpleTextView = this.subtitleTextView) != null && simpleTextView.getVisibility() != 8) {
                    currentActionBarHeight = AndroidUtilities.m1124dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 3.0f : 2.0f) + (((getCurrentActionBarHeight() / 2) - this.titleTextView[i12].getTextHeight()) / 2) + AndroidUtilities.m1124dp(2.0f);
                } else {
                    currentActionBarHeight = (getCurrentActionBarHeight() - this.titleTextView[i12].getTextHeight()) / 2;
                }
                if (ExteraConfig.centerTitle) {
                    SimpleTextView simpleTextView3 = this.titleTextView[i12];
                    int i13 = currentActionBarHeight + i11;
                    simpleTextView3.layout(animatedCenterTitleX - (simpleTextView3.getMeasuredWidth() / 2), i13 - this.titleTextView[i12].getPaddingTop(), (this.titleTextView[i12].getMeasuredWidth() / 2) + animatedCenterTitleX, ((i13 + this.titleTextView[i12].getTextHeight()) - this.titleTextView[i12].getPaddingTop()) + this.titleTextView[i12].getPaddingBottom());
                } else {
                    SimpleTextView simpleTextView4 = this.titleTextView[i12];
                    int i14 = currentActionBarHeight + i11;
                    simpleTextView4.layout(titleLeft, i14 - simpleTextView4.getPaddingTop(), this.titleTextView[i12].getMeasuredWidth() + titleLeft, ((i14 + this.titleTextView[i12].getTextHeight()) - this.titleTextView[i12].getPaddingTop()) + this.titleTextView[i12].getPaddingBottom());
                }
            }
            i12++;
        }
        if (this.additionalSubTitleOverlayContainer != null) {
            int currentActionBarHeight2 = ((getCurrentActionBarHeight() / 2) + (((getCurrentActionBarHeight() / 2) - this.additionalSubTitleOverlayContainer.getMeasuredHeight()) / 2)) - AndroidUtilities.m1124dp(2.0f);
            if (ExteraConfig.centerTitle) {
                ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer = this.additionalSubTitleOverlayContainer;
                int i15 = currentActionBarHeight2 + i11;
                actionBarAnimatedSubtitleOverlayContainer.layout(animatedCenterTitleX - (actionBarAnimatedSubtitleOverlayContainer.getMeasuredWidth() / 2), i15, (this.additionalSubTitleOverlayContainer.getMeasuredWidth() / 2) + animatedCenterTitleX, this.additionalSubTitleOverlayContainer.getMeasuredHeight() + i15);
            } else {
                ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer2 = this.additionalSubTitleOverlayContainer;
                int i16 = currentActionBarHeight2 + i11;
                actionBarAnimatedSubtitleOverlayContainer2.layout(titleLeft, i16, actionBarAnimatedSubtitleOverlayContainer2.getMeasuredWidth() + titleLeft, this.additionalSubTitleOverlayContainer.getMeasuredHeight() + i16);
            }
        }
        SimpleTextView simpleTextView5 = this.subtitleTextView;
        if (simpleTextView5 != null && simpleTextView5.getVisibility() != 8) {
            int currentActionBarHeight3 = ((getCurrentActionBarHeight() / 2) + (((getCurrentActionBarHeight() / 2) - this.subtitleTextView.getTextHeight()) / 2)) - AndroidUtilities.m1124dp(2.0f);
            if (ExteraConfig.centerTitle) {
                SimpleTextView simpleTextView6 = this.subtitleTextView;
                int i17 = currentActionBarHeight3 + i11;
                simpleTextView6.layout(animatedCenterTitleX - (simpleTextView6.getMeasuredWidth() / 2), i17, (this.subtitleTextView.getMeasuredWidth() / 2) + animatedCenterTitleX, this.subtitleTextView.getTextHeight() + i17);
            } else {
                SimpleTextView simpleTextView7 = this.subtitleTextView;
                int i18 = currentActionBarHeight3 + i11;
                simpleTextView7.layout(titleLeft, i18, simpleTextView7.getMeasuredWidth() + titleLeft, this.subtitleTextView.getTextHeight() + i18);
            }
        }
        SimpleTextView simpleTextView8 = this.additionalSubtitleTextView;
        if (simpleTextView8 != null && simpleTextView8.getVisibility() != 8) {
            int currentActionBarHeight4 = (getCurrentActionBarHeight() / 2) + (((getCurrentActionBarHeight() / 2) - this.additionalSubtitleTextView.getTextHeight()) / 2);
            if (!AndroidUtilities.isTablet()) {
                int i19 = getResources().getConfiguration().orientation;
            }
            int iM1124dp2 = currentActionBarHeight4 - AndroidUtilities.m1124dp(1.0f);
            if (ExteraConfig.centerTitle) {
                SimpleTextView simpleTextView9 = this.additionalSubtitleTextView;
                int i20 = iM1124dp2 + i11;
                simpleTextView9.layout(animatedCenterTitleX - (simpleTextView9.getMeasuredWidth() / 2), i20, animatedCenterTitleX + (this.additionalSubtitleTextView.getMeasuredWidth() / 2), this.additionalSubtitleTextView.getTextHeight() + i20);
            } else {
                SimpleTextView simpleTextView10 = this.additionalSubtitleTextView;
                int i21 = iM1124dp2 + i11;
                simpleTextView10.layout(titleLeft, i21, simpleTextView10.getMeasuredWidth() + titleLeft, this.additionalSubtitleTextView.getTextHeight() + i21);
            }
        }
        BackupImageView backupImageView = this.avatarSearchImageView;
        if (backupImageView != null) {
            backupImageView.layout(AndroidUtilities.m1124dp(64.0f), ((getCurrentActionBarHeight() - this.avatarSearchImageView.getMeasuredHeight()) / 2) + i11, AndroidUtilities.m1124dp(64.0f) + this.avatarSearchImageView.getMeasuredWidth(), i11 + ((getCurrentActionBarHeight() + this.avatarSearchImageView.getMeasuredHeight()) / 2));
        }
        int childCount = getChildCount();
        for (int i22 = 0; i22 < childCount; i22++) {
            View childAt = getChildAt(i22);
            if (childAt.getVisibility() != 8) {
                SimpleTextView[] simpleTextViewArr = this.titleTextView;
                if (childAt != simpleTextViewArr[0] && childAt != simpleTextViewArr[1] && childAt != this.additionalSubTitleOverlayContainer && childAt != this.subtitleTextView && childAt != this.menu && childAt != this.backButtonImageView && childAt != this.additionalSubtitleTextView && childAt != this.avatarSearchImageView) {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    int i23 = layoutParams.gravity;
                    if (i23 == -1) {
                        i23 = 51;
                    }
                    int i24 = i23 & 112;
                    int i25 = i23 & 7;
                    if (i25 == 1) {
                        i5 = (((i3 - i) - measuredWidth) / 2) + layoutParams.leftMargin;
                        i6 = layoutParams.rightMargin;
                    } else if (i25 == 5) {
                        i5 = i3 - measuredWidth;
                        i6 = layoutParams.rightMargin;
                    } else {
                        i7 = layoutParams.leftMargin;
                        if (i24 != 16) {
                            i8 = (((i4 - i2) - measuredHeight) / 2) + layoutParams.topMargin;
                            i9 = layoutParams.bottomMargin;
                        } else if (i24 == 80) {
                            i8 = (i4 - i2) - measuredHeight;
                            i9 = layoutParams.bottomMargin;
                        } else {
                            i10 = layoutParams.topMargin;
                            childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                        }
                        i10 = i8 - i9;
                        childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                    }
                    i7 = i5 - i6;
                    if (i24 != 16) {
                    }
                    i10 = i8 - i9;
                    childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                }
            }
        }
    }

    public void onMenuButtonPressed() {
        ActionBarMenu actionBarMenu;
        if (isActionModeShowed() || (actionBarMenu = this.menu) == null) {
            return;
        }
        actionBarMenu.onMenuButtonPressed();
    }

    public void onResume() {
        this.resumed = true;
        updateAttachState();
    }

    protected void onPause() {
        this.resumed = false;
        updateAttachState();
        ActionBarMenu actionBarMenu = this.menu;
        if (actionBarMenu != null) {
            actionBarMenu.hideAllPopupMenus();
        }
    }

    public void setAllowOverlayTitle(boolean z) {
        this.allowOverlayTitle = z;
    }

    public void setTitleActionRunnable(Runnable runnable) {
        this.titleActionRunnable = runnable;
        this.lastRunnable = runnable;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setTitleOverlayText(String str, int i, Runnable runnable) {
        boolean z;
        CharSequence charSequence;
        SimpleTextView simpleTextView;
        int iIndexOf;
        if (!this.allowOverlayTitle || this.parentFragment.parentLayout == null) {
            return;
        }
        Object[] objArr = this.overlayTitleToSet;
        objArr[0] = str;
        objArr[1] = Integer.valueOf(i);
        this.overlayTitleToSet[2] = runnable;
        if (this.overlayTitleAnimationInProgress) {
            return;
        }
        CharSequence charSequence2 = this.lastOverlayTitle;
        if (charSequence2 == null && str == null) {
            return;
        }
        if (charSequence2 == null || !charSequence2.equals(str)) {
            this.lastOverlayTitle = str;
            Drawable drawable = null;
            if (this.additionalSubTitleOverlayContainer != null) {
                this.additionalSubTitleOverlayContainer.setText(i == C2888R.string.ConnectingToProxyWithDots ? AndroidUtilities.replaceArrows(LocaleController.getString(C2888R.string.TitleSetupProxy), true, AndroidUtilities.m1124dp(2.6666667f), AndroidUtilities.m1124dp(2.0f)) : null, true);
            }
            CharSequence string = str != null ? LocaleController.getString(str, i) : this.lastTitle;
            if (str == null && !ExteraConfig.hideActionBarStatus && UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                drawable = this.lastRightDrawable;
            }
            if (str == null || (iIndexOf = TextUtils.indexOf(string, "...")) < 0) {
                z = false;
                charSequence = string;
            } else {
                SpannableString spannableStringValueOf = SpannableString.valueOf(string);
                this.ellipsizeSpanAnimator.wrap(spannableStringValueOf, iIndexOf);
                z = true;
                charSequence = spannableStringValueOf;
            }
            this.titleOverlayShown = str != null;
            if ((charSequence != null && this.titleTextView[0] == null) || getMeasuredWidth() == 0 || ((simpleTextView = this.titleTextView[0]) != null && simpleTextView.getVisibility() != 0)) {
                createTitleTextView(0);
                if (this.supportsHolidayImage) {
                    this.titleTextView[0].invalidate();
                    invalidate();
                }
                this.titleTextView[0].setText(charSequence);
                this.titleTextView[0].setDrawablePadding(AndroidUtilities.m1124dp(4.0f));
                this.titleTextView[0].setRightDrawable(drawable);
                this.titleTextView[0].setRightDrawableOnClick(this.rightDrawableOnClickListener);
                if (drawable instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) {
                    ((AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) drawable).setParentView(this.titleTextView[0]);
                }
                if (z) {
                    this.ellipsizeSpanAnimator.addView(this.titleTextView[0]);
                } else {
                    this.ellipsizeSpanAnimator.removeView(this.titleTextView[0]);
                }
            } else {
                SimpleTextView simpleTextView2 = this.titleTextView[0];
                if (simpleTextView2 != null) {
                    simpleTextView2.animate().cancel();
                    SimpleTextView simpleTextView3 = this.titleTextView[1];
                    if (simpleTextView3 != null) {
                        simpleTextView3.animate().cancel();
                    }
                    if (this.titleTextView[1] == null) {
                        createTitleTextView(1);
                    }
                    this.titleTextView[1].setText(charSequence);
                    this.titleTextView[1].setDrawablePadding(AndroidUtilities.m1124dp(4.0f));
                    this.titleTextView[1].setRightDrawable(drawable);
                    this.titleTextView[1].setRightDrawableOnClick(this.rightDrawableOnClickListener);
                    if (drawable instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) {
                        ((AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) drawable).setParentView(this.titleTextView[1]);
                    }
                    if (z) {
                        this.ellipsizeSpanAnimator.addView(this.titleTextView[1]);
                    }
                    this.overlayTitleAnimationInProgress = true;
                    SimpleTextView[] simpleTextViewArr = this.titleTextView;
                    SimpleTextView simpleTextView4 = simpleTextViewArr[1];
                    simpleTextViewArr[1] = simpleTextViewArr[0];
                    simpleTextViewArr[0] = simpleTextView4;
                    simpleTextView4.setAlpha(0.0f);
                    this.titleTextView[0].setTranslationY(-AndroidUtilities.m1124dp(20.0f));
                    this.titleTextView[0].animate().alpha(1.0f).translationY(0.0f).setDuration(220L).start();
                    ViewPropertyAnimator viewPropertyAnimatorAlpha = this.titleTextView[1].animate().alpha(0.0f);
                    if (this.subtitleTextView == null) {
                        viewPropertyAnimatorAlpha.translationY(AndroidUtilities.m1124dp(20.0f));
                    } else {
                        viewPropertyAnimatorAlpha.scaleY(0.7f).scaleX(0.7f);
                    }
                    requestLayout();
                    this.centerScale = true;
                    viewPropertyAnimatorAlpha.setDuration(220L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.6
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (ActionBar.this.titleTextView[1] != null && ActionBar.this.titleTextView[1].getParent() != null) {
                                ((ViewGroup) ActionBar.this.titleTextView[1].getParent()).removeView(ActionBar.this.titleTextView[1]);
                            }
                            ActionBar actionBar = ActionBar.this;
                            actionBar.ellipsizeSpanAnimator.removeView(actionBar.titleTextView[1]);
                            ActionBar.this.titleTextView[1] = null;
                            ActionBar actionBar2 = ActionBar.this;
                            actionBar2.overlayTitleAnimationInProgress = false;
                            actionBar2.setTitleOverlayText((String) actionBar2.overlayTitleToSet[0], ((Integer) ActionBar.this.overlayTitleToSet[1]).intValue(), (Runnable) ActionBar.this.overlayTitleToSet[2]);
                        }
                    }).start();
                }
            }
            if (runnable == null) {
                runnable = this.lastRunnable;
            }
            this.titleActionRunnable = runnable;
        }
    }

    public boolean isSearchFieldVisible() {
        return this.isSearchFieldVisible;
    }

    public void setOccupyStatusBar(boolean z) {
        this.occupyStatusBar = z;
        ActionBarMenu actionBarMenu = this.actionMode;
        if (actionBarMenu != null) {
            actionBarMenu.setPadding(0, z ? AndroidUtilities.statusBarHeight : 0, 0, 0);
        }
    }

    public boolean getOccupyStatusBar() {
        return this.occupyStatusBar;
    }

    public void setItemsBackgroundColor(int i, boolean z) {
        ImageView imageView;
        if (z) {
            this.itemsActionModeBackgroundColor = i;
            if (this.actionModeVisible && (imageView = this.backButtonImageView) != null) {
                imageView.setBackgroundDrawable(Theme.createSelectorDrawable(i));
            }
            ActionBarMenu actionBarMenu = this.actionMode;
            if (actionBarMenu != null) {
                actionBarMenu.updateItemsBackgroundColor();
                return;
            }
            return;
        }
        this.itemsBackgroundColor = i;
        ImageView imageView2 = this.backButtonImageView;
        if (imageView2 != null) {
            imageView2.setBackgroundDrawable(Theme.createSelectorDrawable(i));
        }
        ActionBarMenu actionBarMenu2 = this.menu;
        if (actionBarMenu2 != null) {
            actionBarMenu2.updateItemsBackgroundColor();
        }
    }

    public void setItemsColor(int i, boolean z) {
        if (z) {
            this.itemsActionModeColor = i;
            ActionBarMenu actionBarMenu = this.actionMode;
            if (actionBarMenu != null) {
                actionBarMenu.updateItemsColor();
            }
            ImageView imageView = this.backButtonImageView;
            if (imageView != null) {
                Drawable drawable = imageView.getDrawable();
                if (drawable instanceof BackDrawable) {
                    ((BackDrawable) drawable).setRotatedColor(i);
                    return;
                } else {
                    this.backButtonImageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                    return;
                }
            }
            return;
        }
        this.itemsColor = i;
        ImageView imageView2 = this.backButtonImageView;
        if (imageView2 != null && i != 0) {
            Drawable drawable2 = imageView2.getDrawable();
            if (drawable2 instanceof BackDrawable) {
                ((BackDrawable) drawable2).setColor(i);
            } else if (drawable2 instanceof MenuDrawable) {
                ((MenuDrawable) drawable2).setIconColor(i);
            } else {
                this.backButtonImageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
        }
        ActionBarMenu actionBarMenu2 = this.menu;
        if (actionBarMenu2 != null) {
            actionBarMenu2.updateItemsColor();
        }
    }

    public void setCastShadows(boolean z) {
        if (this.castShadows != z && (getParent() instanceof View)) {
            ((View) getParent()).invalidate();
            invalidate();
        }
        this.castShadows = z;
    }

    public void setShadowAlpha(int i) {
        if (this.shadowAlpha == i) {
            return;
        }
        if (getParent() instanceof View) {
            ((View) getParent()).invalidate();
            invalidate();
        }
        this.shadowAlpha = i;
    }

    public int getShadowAlpha() {
        return this.shadowAlpha;
    }

    public boolean getCastShadows() {
        return this.castShadows;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.forceSkipTouches) {
            return false;
        }
        return super.onTouchEvent(motionEvent) || this.interceptTouches;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getCurrentActionBarHeight() {
        float f;
        if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            f = point.x > point.y ? 56.0f : 64.0f;
        }
        return AndroidUtilities.m1124dp(f);
    }

    public void setTitleAnimated(CharSequence charSequence, boolean z, long j) {
        setTitleAnimated(charSequence, z, j, null);
    }

    public void setTitleAnimated(CharSequence charSequence, final boolean z, long j, Interpolator interpolator) {
        if (this.titleTextView[0] == null || charSequence == null) {
            setTitle(charSequence);
            return;
        }
        final boolean z2 = this.overlayTitleAnimation && !TextUtils.isEmpty(this.subtitle);
        if (z2) {
            if (this.subtitleTextView.getVisibility() != 0) {
                this.subtitleTextView.setVisibility(0);
                this.subtitleTextView.setAlpha(0.0f);
            }
            this.subtitleTextView.animate().alpha(z ? 0.0f : 1.0f).setDuration(220L).start();
        }
        SimpleTextView simpleTextView = this.titleTextView[1];
        if (simpleTextView != null) {
            if (simpleTextView.getParent() != null) {
                ((ViewGroup) this.titleTextView[1].getParent()).removeView(this.titleTextView[1]);
            }
            this.titleTextView[1] = null;
        }
        SimpleTextView[] simpleTextViewArr = this.titleTextView;
        simpleTextViewArr[1] = simpleTextViewArr[0];
        simpleTextViewArr[0] = null;
        setTitle(charSequence);
        this.fromBottom = z;
        this.titleTextView[0].setAlpha(0.0f);
        if (!z2) {
            SimpleTextView simpleTextView2 = this.titleTextView[0];
            int iM1124dp = AndroidUtilities.m1124dp(20.0f);
            if (!z) {
                iM1124dp = -iM1124dp;
            }
            simpleTextView2.setTranslationY(iM1124dp);
        }
        ViewPropertyAnimator duration = this.titleTextView[0].animate().alpha(1.0f).translationY(0.0f).setDuration(j);
        if (interpolator != null) {
            duration.setInterpolator(interpolator);
        }
        duration.start();
        this.titleAnimationRunning = true;
        ViewPropertyAnimator viewPropertyAnimatorAlpha = this.titleTextView[1].animate().alpha(0.0f);
        if (!z2) {
            int iM1124dp2 = AndroidUtilities.m1124dp(20.0f);
            if (z) {
                iM1124dp2 = -iM1124dp2;
            }
            viewPropertyAnimatorAlpha.translationY(iM1124dp2);
        }
        if (interpolator != null) {
            viewPropertyAnimatorAlpha.setInterpolator(interpolator);
        }
        viewPropertyAnimatorAlpha.setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ActionBar.this.titleTextView[1] != null && ActionBar.this.titleTextView[1].getParent() != null) {
                    ((ViewGroup) ActionBar.this.titleTextView[1].getParent()).removeView(ActionBar.this.titleTextView[1]);
                }
                ActionBar.this.titleTextView[1] = null;
                ActionBar.this.titleAnimationRunning = false;
                if (z2 && z) {
                    ActionBar.this.subtitleTextView.setVisibility(8);
                }
                ActionBar.this.requestLayout();
            }
        }).start();
        requestLayout();
    }

    public void setTitleAnimatedX(CharSequence charSequence, Drawable drawable, boolean z, int i) {
        SimpleTextView[] simpleTextViewArr = this.titleTextView;
        if (simpleTextViewArr[0] == null || charSequence == null) {
            setTitle(charSequence, drawable);
            return;
        }
        SimpleTextView simpleTextView = simpleTextViewArr[1];
        if (simpleTextView != null) {
            if (simpleTextView.getParent() != null) {
                ((ViewGroup) this.titleTextView[1].getParent()).removeView(this.titleTextView[1]);
            }
            this.titleTextView[1] = null;
        }
        AnimatorSet animatorSet = this.titleAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.titleAnimator = null;
        }
        SimpleTextView[] simpleTextViewArr2 = this.titleTextView;
        simpleTextViewArr2[1] = simpleTextViewArr2[0];
        simpleTextViewArr2[0] = null;
        setTitle(charSequence, drawable);
        this.titleAnimationRunning = true;
        float fM1124dp = AndroidUtilities.m1124dp(10.0f) * (z ? -1 : 1);
        this.titleTextView[1].setTranslationX(0.0f);
        this.titleTextView[1].setTranslationY(0.0f);
        this.titleTextView[0].setTranslationX(-fM1124dp);
        this.titleTextView[0].setTranslationY(0.0f);
        this.titleTextView[0].setAlpha(0.0f);
        this.titleTextView[1].setAlpha(1.0f);
        this.titleTextView[0].setVisibility(0);
        this.titleTextView[1].setVisibility(0);
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        arrayList.add(ObjectAnimator.ofFloat(this.titleTextView[1], (Property<SimpleTextView, Float>) property, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(this.titleTextView[0], (Property<SimpleTextView, Float>) property, 1.0f));
        SimpleTextView simpleTextView2 = this.titleTextView[1];
        float[] fArr = {fM1124dp};
        Property property2 = View.TRANSLATION_X;
        arrayList.add(ObjectAnimator.ofFloat(simpleTextView2, (Property<SimpleTextView, Float>) property2, fArr));
        arrayList.add(ObjectAnimator.ofFloat(this.titleTextView[0], (Property<SimpleTextView, Float>) property2, 0.0f));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.titleAnimator = animatorSet2;
        animatorSet2.playTogether(arrayList);
        this.titleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ActionBar.this.titleTextView[1] != null && ActionBar.this.titleTextView[1].getParent() != null) {
                    ((ViewGroup) ActionBar.this.titleTextView[1].getParent()).removeView(ActionBar.this.titleTextView[1]);
                }
                ActionBar.this.titleTextView[1] = null;
                ActionBar.this.titleAnimationRunning = false;
                ActionBar.this.requestLayout();
            }
        });
        this.titleAnimator.setDuration(i);
        this.titleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.titleAnimator.start();
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        updateAttachState();
        if (this.actionModeVisible) {
            int i = this.actionModeColor;
            if (i == 0) {
                i = this.actionBarColor;
            }
            if (i == 0) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            } else if (ColorUtils.calculateLuminance(i) < 0.699999988079071d) {
                AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), false);
            } else {
                AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), true);
            }
        }
        Drawable drawable = this.lastRightDrawable;
        if (drawable instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) {
            ((AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) drawable).setParentView(this.titleTextView[0]);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        ValueAnimator valueAnimator = this.centerTitleLayoutAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.centerTitleLayoutAnimator = null;
        }
        updateAttachState();
        if (this.actionModeVisible) {
            if (this.actionBarColor == 0 || this.actionModeColor == 0) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            } else {
                AndroidUtilities.setLightStatusBar(((Activity) getContext()).getWindow(), ColorUtils.calculateLuminance(this.actionBarColor) >= 0.699999988079071d);
            }
        }
        Drawable drawable = this.lastRightDrawable;
        if (drawable instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) {
            ((AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) drawable).setParentView(null);
        }
    }

    private void updateAttachState() {
        boolean z = this.attached && this.resumed;
        if (this.attachState != z) {
            this.attachState = z;
            if (z) {
                this.ellipsizeSpanAnimator.onAttachedToWindow();
            } else {
                this.ellipsizeSpanAnimator.onDetachedFromWindow();
            }
        }
    }

    public ActionBarMenu getActionMode() {
        return this.actionMode;
    }

    public void setOverlayTitleAnimation(boolean z) {
        this.overlayTitleAnimation = z;
    }

    public void beginDelayedTransition() {
        if (LocaleController.isRTL) {
            return;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new Fade());
        transitionSet.addTransition(new ChangeBounds() { // from class: org.telegram.ui.ActionBar.ActionBar.9
            @Override // android.transition.ChangeBounds, android.transition.Transition
            public void captureStartValues(TransitionValues transitionValues) {
                super.captureStartValues(transitionValues);
                View view = transitionValues.view;
                if (view instanceof SimpleTextView) {
                    transitionValues.values.put("text_size", Float.valueOf(((SimpleTextView) view).getTextPaint().getTextSize()));
                }
            }

            @Override // android.transition.ChangeBounds, android.transition.Transition
            public void captureEndValues(TransitionValues transitionValues) {
                super.captureEndValues(transitionValues);
                View view = transitionValues.view;
                if (view instanceof SimpleTextView) {
                    transitionValues.values.put("text_size", Float.valueOf(((SimpleTextView) view).getTextPaint().getTextSize()));
                }
            }

            @Override // android.transition.ChangeBounds, android.transition.Transition
            public Animator createAnimator(ViewGroup viewGroup, final TransitionValues transitionValues, TransitionValues transitionValues2) {
                if (transitionValues != null && (transitionValues.view instanceof SimpleTextView)) {
                    AnimatorSet animatorSet = new AnimatorSet();
                    if (transitionValues2 != null) {
                        Animator animatorCreateAnimator = super.createAnimator(viewGroup, transitionValues, transitionValues2);
                        float fFloatValue = ((Float) transitionValues.values.get("text_size")).floatValue() / ((Float) transitionValues2.values.get("text_size")).floatValue();
                        transitionValues.view.setScaleX(fFloatValue);
                        transitionValues.view.setScaleY(fFloatValue);
                        if (animatorCreateAnimator != null) {
                            animatorSet.playTogether(animatorCreateAnimator);
                        }
                    }
                    animatorSet.playTogether(ObjectAnimator.ofFloat(transitionValues.view, (Property<View, Float>) View.SCALE_X, 1.0f));
                    animatorSet.playTogether(ObjectAnimator.ofFloat(transitionValues.view, (Property<View, Float>) View.SCALE_Y, 1.0f));
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.9.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            super.onAnimationStart(animator);
                            transitionValues.view.setLayerType(2, null);
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            transitionValues.view.setLayerType(0, null);
                        }
                    });
                    return animatorSet;
                }
                return super.createAnimator(viewGroup, transitionValues, transitionValues2);
            }
        });
        this.centerScale = false;
        transitionSet.setDuration(220L);
        transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT);
        TransitionManager.beginDelayedTransition(this, transitionSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.ViewTreeObserver$OnPreDrawListener, org.telegram.ui.ActionBar.ActionBar$10] */
    public void refreshTitlePosition(boolean z) {
        float translationX;
        float top;
        float translationY;
        boolean z2 = ExteraConfig.centerTitle;
        int i = z2 ? 17 : 19;
        int i2 = z2 ? 17 : 3;
        int i3 = 0;
        if (!z) {
            while (i3 < 2) {
                SimpleTextView simpleTextView = this.titleTextView[i3];
                if (simpleTextView != null) {
                    simpleTextView.setGravity(i);
                }
                i3++;
            }
            SimpleTextView simpleTextView2 = this.subtitleTextView;
            if (simpleTextView2 != null) {
                simpleTextView2.setGravity(i2);
            }
            SimpleTextView simpleTextView3 = this.additionalSubtitleTextView;
            if (simpleTextView3 != null) {
                simpleTextView3.setGravity(i2);
            }
            requestLayout();
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < 2; i4++) {
            SimpleTextView simpleTextView4 = this.titleTextView[i4];
            if (simpleTextView4 != null && simpleTextView4.getVisibility() == 0) {
                arrayList.add(this.titleTextView[i4]);
            }
        }
        SimpleTextView simpleTextView5 = this.subtitleTextView;
        if (simpleTextView5 != null && simpleTextView5.getVisibility() == 0) {
            arrayList.add(this.subtitleTextView);
        }
        SimpleTextView simpleTextView6 = this.additionalSubtitleTextView;
        if (simpleTextView6 != null && simpleTextView6.getVisibility() == 0) {
            arrayList.add(this.additionalSubtitleTextView);
        }
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            View view = (View) obj;
            view.animate().cancel();
            if (view instanceof SimpleTextView) {
                translationX = r9.getTextStartX() + view.getTranslationX();
                top = ((SimpleTextView) view).getTextStartY();
                translationY = view.getTranslationY();
            } else {
                translationX = view.getTranslationX() + view.getLeft();
                top = view.getTop();
                translationY = view.getTranslationY();
            }
            float f = top + translationY;
            arrayList2.add(Float.valueOf(translationX));
            arrayList3.add(Float.valueOf(f));
        }
        while (i3 < 2) {
            SimpleTextView simpleTextView7 = this.titleTextView[i3];
            if (simpleTextView7 != null) {
                simpleTextView7.setGravity(i);
            }
            i3++;
        }
        SimpleTextView simpleTextView8 = this.subtitleTextView;
        if (simpleTextView8 != null) {
            simpleTextView8.setGravity(i2);
        }
        SimpleTextView simpleTextView9 = this.additionalSubtitleTextView;
        if (simpleTextView9 != null) {
            simpleTextView9.setGravity(i2);
        }
        requestLayout();
        final ?? r0 = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.ActionBar.ActionBar.10
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                float left;
                int top2;
                ActionBar.this.getViewTreeObserver().removeOnPreDrawListener(this);
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    View view2 = (View) arrayList.get(i6);
                    if (view2 instanceof SimpleTextView) {
                        SimpleTextView simpleTextView10 = (SimpleTextView) view2;
                        left = simpleTextView10.getTextStartX();
                        top2 = simpleTextView10.getTextStartY();
                    } else {
                        left = view2.getLeft();
                        top2 = view2.getTop();
                    }
                    float f2 = top2;
                    float fFloatValue = ((Float) arrayList2.get(i6)).floatValue() - left;
                    float fFloatValue2 = ((Float) arrayList3.get(i6)).floatValue() - f2;
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, fFloatValue, 0.0f);
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, fFloatValue2, 0.0f);
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                    animatorSet.setDuration(300L);
                    animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    animatorSet.start();
                }
                return true;
            }
        };
        getViewTreeObserver().addOnPreDrawListener(r0);
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.ActionBar.ActionBar.11
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                ActionBar.this.getViewTreeObserver().removeOnPreDrawListener(r0);
                ActionBar.this.removeOnAttachStateChangeListener(this);
            }
        });
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setDrawBlurBackground(SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        this.blurredBackground = true;
        this.contentView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.blurBehindViews.add(this);
        setBackground(null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        if (!this.blurredBackground || this.actionBarColor == 0) {
            canvas2 = canvas;
        } else {
            this.rectTmp.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.blurScrimPaint.setColor(this.actionBarColor);
            if (this.adaptiveBackground) {
                canvas2 = canvas;
                this.contentView.drawBlurRect(canvas2, getY(), this.rectTmp, this.blurScrimPaint, true, 1.0f - this.onTopAnimated);
            } else {
                canvas2 = canvas;
                this.contentView.drawBlurRect(canvas2, getY(), this.rectTmp, this.blurScrimPaint, true);
            }
        }
        super.dispatchDraw(canvas2);
    }

    public void setForceSkipTouches(boolean z) {
        this.forceSkipTouches = z;
    }

    public void setDrawBackButton(boolean z) {
        this.drawBackButton = z;
        ImageView imageView = this.backButtonImageView;
        if (imageView != null) {
            imageView.invalidate();
        }
    }

    public void setUseContainerForTitles() {
        this.useContainerForTitles = true;
        if (this.titlesContainer == null) {
            FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.ActionBar.ActionBar.12
                @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
                }
            };
            this.titlesContainer = frameLayout;
            addView(frameLayout);
        }
    }

    public FrameLayout getTitlesContainer() {
        return this.titlesContainer;
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        adaptive_updateColor();
        ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer = this.additionalSubTitleOverlayContainer;
        if (actionBarAnimatedSubtitleOverlayContainer != null) {
            actionBarAnimatedSubtitleOverlayContainer.updateColors();
        }
    }

    public FrameLayout createAdditionalSubTitleOverlayContainer() {
        if (this.additionalSubTitleOverlayContainer == null) {
            ActionBarAnimatedSubtitleOverlayContainer actionBarAnimatedSubtitleOverlayContainer = new ActionBarAnimatedSubtitleOverlayContainer(getContext(), this.resourcesProvider, this.ellipsizeSpanAnimator) { // from class: org.telegram.ui.ActionBar.ActionBar.13
                @Override // org.telegram.p029ui.ActionBar.ActionBarAnimatedSubtitleOverlayContainer, me.vkryl.android.animator.ReplaceAnimator.Callback
                public void onItemChanged(ReplaceAnimator replaceAnimator) {
                    super.onItemChanged(replaceAnimator);
                    float totalVisibility = getTotalVisibility();
                    if (ActionBar.this.titlesContainer != null) {
                        ActionBar.this.titlesContainer.setTranslationY(totalVisibility * AndroidUtilities.m1124dp(-11.0f));
                    }
                }
            };
            this.additionalSubTitleOverlayContainer = actionBarAnimatedSubtitleOverlayContainer;
            actionBarAnimatedSubtitleOverlayContainer.setClipChildren(false);
            addView(this.additionalSubTitleOverlayContainer);
        }
        return this.additionalSubTitleOverlayContainer;
    }

    public FrameLayout getAdditionalSubTitleOverlayContainer() {
        return this.additionalSubTitleOverlayContainer;
    }

    public void setAdaptiveBackground(RecyclerView recyclerView) {
        setAdaptiveBackground(recyclerView, Theme.key_windowBackgroundGray, Theme.key_actionBarDefault);
    }

    public void setAdaptiveBackground(final RecyclerView recyclerView, int i, int i2) {
        this.adaptive_topColorKey = i;
        this.adaptive_lowerColorKey = i2;
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setAdaptiveBackground$7(recyclerView);
            }
        };
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ActionBar.ActionBar.15
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int i3, int i4) {
                runnable.run();
            }
        });
        if (this.adaptiveBackground) {
            runnable.run();
            return;
        }
        this.adaptiveBackground = true;
        boolean zCanScrollVertically = recyclerView.canScrollVertically(-1);
        this.onTop = !zCanScrollVertically;
        this.onTopAnimated = !zCanScrollVertically ? 1.0f : 0.0f;
        adaptive_updateColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAdaptiveBackground$7(RecyclerView recyclerView) {
        boolean zCanScrollVertically = recyclerView.canScrollVertically(-1);
        final boolean z = !zCanScrollVertically;
        if (this.onTop == z) {
            return;
        }
        ValueAnimator valueAnimator = this.adaptive_animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f = this.onTopAnimated;
        this.onTop = z;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, !zCanScrollVertically ? 1.0f : 0.0f);
        this.adaptive_animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setAdaptiveBackground$6(valueAnimator2);
            }
        });
        this.adaptive_animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBar.this.onTopAnimated = z ? 1.0f : 0.0f;
                ActionBar.this.adaptive_updateColor();
            }
        });
        this.adaptive_animator.setDuration(320L);
        this.adaptive_animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.adaptive_animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAdaptiveBackground$6(ValueAnimator valueAnimator) {
        this.onTopAnimated = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        adaptive_updateColor();
    }

    public void setAdaptiveBackground(SectionsScrollView sectionsScrollView) {
        setAdaptiveBackground(sectionsScrollView, Theme.key_windowBackgroundGray, Theme.key_actionBarDefault);
    }

    public void setAdaptiveBackground(final SectionsScrollView sectionsScrollView, int i, int i2) {
        this.adaptive_topColorKey = i;
        this.adaptive_lowerColorKey = i2;
        adaptive_updateColor();
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setAdaptiveBackground$9(sectionsScrollView);
            }
        };
        sectionsScrollView.onScroll(runnable);
        if (this.adaptiveBackground) {
            runnable.run();
            return;
        }
        this.adaptiveBackground = true;
        boolean zCanScrollVertically = sectionsScrollView.canScrollVertically(-1);
        this.onTop = !zCanScrollVertically;
        this.onTopAnimated = !zCanScrollVertically ? 1.0f : 0.0f;
        adaptive_updateColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAdaptiveBackground$9(SectionsScrollView sectionsScrollView) {
        boolean zCanScrollVertically = sectionsScrollView.canScrollVertically(-1);
        final boolean z = !zCanScrollVertically;
        if (this.onTop == z) {
            return;
        }
        ValueAnimator valueAnimator = this.adaptive_animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f = this.onTopAnimated;
        this.onTop = z;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, !zCanScrollVertically ? 1.0f : 0.0f);
        this.adaptive_animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBar$$ExternalSyntheticLambda8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setAdaptiveBackground$8(valueAnimator2);
            }
        });
        this.adaptive_animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBar.16
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBar.this.onTopAnimated = z ? 1.0f : 0.0f;
                ActionBar.this.adaptive_updateColor();
            }
        });
        this.adaptive_animator.setDuration(320L);
        this.adaptive_animator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.adaptive_animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAdaptiveBackground$8(ValueAnimator valueAnimator) {
        this.onTopAnimated = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        adaptive_updateColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adaptive_updateColor() {
        if (this.adaptiveBackground) {
            int color = this.adaptive_topColorKey == -1 ? 0 : Theme.getColor(this.adaptive_lowerColorKey, this.resourcesProvider);
            int i = this.adaptive_topColorKey;
            setBackgroundColor(ColorUtils.blendARGB(color, i != -1 ? Theme.getColor(i, this.resourcesProvider) : 0, this.onTopAnimated));
            setShadowAlpha((int) ((1.0f - this.onTopAnimated) * 255.0f));
            if (this.blurredBackground) {
                invalidate();
            }
        }
    }
}
