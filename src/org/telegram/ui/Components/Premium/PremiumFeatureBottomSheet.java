package org.telegram.ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.BottomPagesView;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Premium.PremiumGradient;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.ThemePreviewActivity;
import org.telegram.ui.bots.AffiliateProgramFragment;

/* JADX INFO: loaded from: classes7.dex */
public class PremiumFeatureBottomSheet extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    ActionBar actionBar;
    private final BaseFragment baseFragment;
    private FrameLayout buttonContainer;
    FrameLayout closeLayout;
    boolean containerViewsForward;
    float containerViewsProgress;
    FrameLayout content;
    int contentHeight;
    boolean enterAnimationIsRunning;
    private boolean forceAbout;
    boolean fullscreenNext;
    private int gradientAlpha;
    private final boolean onlySelectedType;
    private PremiumButtonView premiumButtonView;
    ArrayList premiumFeatures;
    float progress;
    float progressToFullscreenView;
    float progressToGradient;
    int selectedPosition;
    private PremiumPreviewFragment.SubscriptionTier selectedTier;
    private final int startType;
    SvgHelper.SvgDrawable svgIcon;
    int toPosition;
    int topCurrentOffset;
    int topGlobalOffset;
    ViewPager viewPager;

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFullscreenType(int i) {
        return i == 0 || i == 14 || i == 28;
    }

    public PremiumFeatureBottomSheet(Context context, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(null, context, UserConfig.selectedAccount, false, i, z, null, resourcesProvider);
    }

    public PremiumFeatureBottomSheet(BaseFragment baseFragment, int i, boolean z) {
        this(baseFragment, i, z, (PremiumPreviewFragment.SubscriptionTier) null);
    }

    public PremiumFeatureBottomSheet(BaseFragment baseFragment, int i, boolean z, PremiumPreviewFragment.SubscriptionTier subscriptionTier) {
        this(baseFragment, baseFragment.getContext(), baseFragment.getCurrentAccount(), false, i, z, subscriptionTier);
    }

    public PremiumFeatureBottomSheet(BaseFragment baseFragment, Context context, int i, int i2, boolean z) {
        this(baseFragment, context, i, false, i2, z, null);
    }

    public PremiumFeatureBottomSheet(BaseFragment baseFragment, Context context, int i, boolean z, int i2, boolean z2, PremiumPreviewFragment.SubscriptionTier subscriptionTier) {
        this(baseFragment, context, i, z, i2, z2, subscriptionTier, getResourceProvider(baseFragment));
    }

    public PremiumFeatureBottomSheet(final BaseFragment baseFragment, Context context, int i, boolean z, int i2, final boolean z2, PremiumPreviewFragment.SubscriptionTier subscriptionTier, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        this.premiumFeatures = new ArrayList();
        this.gradientAlpha = 255;
        this.baseFragment = baseFragment;
        this.selectedTier = subscriptionTier;
        fixNavigationBar(getThemedColor(Theme.key_dialogBackground));
        this.startType = i2;
        this.onlySelectedType = z2;
        this.svgIcon = SvgHelper.getDrawable(AndroidUtilities.readRes(C2484R.raw.star_loader));
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                if (((BottomSheet) PremiumFeatureBottomSheet.this).isPortrait) {
                    PremiumFeatureBottomSheet.this.contentHeight = View.MeasureSpec.getSize(i3);
                } else {
                    PremiumFeatureBottomSheet.this.contentHeight = (int) (View.MeasureSpec.getSize(i4) * 0.65f);
                }
                super.onMeasure(i3, i4);
            }
        };
        if (z || i2 == 35) {
            PremiumPreviewFragment.fillBusinessFeaturesList(this.premiumFeatures, i, false);
            PremiumPreviewFragment.fillBusinessFeaturesList(this.premiumFeatures, i, true);
        } else {
            PremiumPreviewFragment.fillPremiumFeaturesList(this.premiumFeatures, i, false);
        }
        if (i2 == 40) {
            this.premiumFeatures.clear();
            this.premiumFeatures.add(new PremiumPreviewFragment.PremiumFeatureData(40, C2484R.drawable.gift, LocaleController.getString(C2484R.string.FeaturePreviewGifts), LocaleController.getString(C2484R.string.FeaturePreviewGiftsDescription)));
        }
        int i3 = 0;
        while (true) {
            if (i3 >= this.premiumFeatures.size()) {
                i3 = 0;
                break;
            } else if (((PremiumPreviewFragment.PremiumFeatureData) this.premiumFeatures.get(i3)).type == i2) {
                break;
            } else {
                i3++;
            }
        }
        if (z2) {
            PremiumPreviewFragment.PremiumFeatureData premiumFeatureData = (PremiumPreviewFragment.PremiumFeatureData) this.premiumFeatures.get(i3);
            this.premiumFeatures.clear();
            this.premiumFeatures.add(premiumFeatureData);
            i3 = 0;
        }
        final PremiumPreviewFragment.PremiumFeatureData premiumFeatureData2 = (PremiumPreviewFragment.PremiumFeatureData) this.premiumFeatures.get(i3);
        setApplyTopPadding(false);
        setApplyBottomPadding(false);
        this.useBackgroundTopPadding = false;
        final PremiumGradient.PremiumGradientTools premiumGradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradientBottomSheet1, Theme.key_premiumGradientBottomSheet2, Theme.key_premiumGradientBottomSheet3, -1);
        premiumGradientTools.x1 = 0.0f;
        premiumGradientTools.y1 = 1.1f;
        premiumGradientTools.x2 = 1.5f;
        premiumGradientTools.y2 = -0.2f;
        premiumGradientTools.exactly = true;
        this.content = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.2
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i4, int i5) {
                super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(PremiumFeatureBottomSheet.this.contentHeight + AndroidUtilities.dp(2.0f), TLObject.FLAG_30));
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                premiumGradientTools.gradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), 0.0f, 0.0f);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, AndroidUtilities.dp(2.0f), getMeasuredWidth(), getMeasuredHeight() + AndroidUtilities.dp(18.0f));
                canvas.save();
                canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight());
                premiumGradientTools.paint.setAlpha(PremiumFeatureBottomSheet.this.gradientAlpha);
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(12.0f) - 1, AndroidUtilities.dp(12.0f) - 1, premiumGradientTools.paint);
                canvas.restore();
                super.dispatchDraw(canvas);
            }
        };
        this.closeLayout = new FrameLayout(getContext());
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(C2484R.drawable.msg_close);
        imageView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(12.0f), ColorUtils.setAlphaComponent(-1, 40), ColorUtils.setAlphaComponent(-1, 100)));
        this.closeLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 17));
        this.closeLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        frameLayout.addView(this.content, LayoutHelper.createLinear(-1, -2, 1, 0, 16, 0, 0));
        ViewPager viewPager = new ViewPager(getContext()) { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.3
            long lastTapTime;
            private Scroller scroller;
            private boolean smoothScroll;

            {
                try {
                    Field declaredField = ViewPager.class.getDeclaredField("mScroller");
                    declaredField.setAccessible(true);
                    Scroller scroller = new Scroller(getContext()) { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.3.1
                        @Override // android.widget.Scroller
                        public void startScroll(int i4, int i5, int i6, int i7, int i8) {
                            super.startScroll(i4, i5, i6, i7, (C39513.this.smoothScroll ? 3 : 1) * i8);
                        }
                    };
                    this.scroller = scroller;
                    declaredField.set(this, scroller);
                } catch (Exception e) {
                    FileLog.m955e(e);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager, android.view.View
            protected void onMeasure(int i4, int i5) {
                int iDp = AndroidUtilities.dp(100.0f);
                if (getChildCount() > 0) {
                    getChildAt(0).measure(i4, View.MeasureSpec.makeMeasureSpec(0, 0));
                    iDp = getChildAt(0).getMeasuredHeight();
                }
                super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(iDp + PremiumFeatureBottomSheet.this.topGlobalOffset, TLObject.FLAG_30));
            }

            private boolean processTap(MotionEvent motionEvent, boolean z3) {
                Scroller scroller;
                if (motionEvent.getAction() == 0) {
                    this.lastTapTime = System.currentTimeMillis();
                    return true;
                }
                if (motionEvent.getAction() == 1) {
                    if (System.currentTimeMillis() - this.lastTapTime <= ViewConfiguration.getTapTimeout() && (scroller = this.scroller) != null && scroller.isFinished()) {
                        this.smoothScroll = true;
                        if (motionEvent.getX() > getWidth() * 0.45f) {
                            PremiumFeatureBottomSheet premiumFeatureBottomSheet = PremiumFeatureBottomSheet.this;
                            if (premiumFeatureBottomSheet.selectedPosition + 1 < premiumFeatureBottomSheet.premiumFeatures.size()) {
                                setCurrentItem(PremiumFeatureBottomSheet.this.selectedPosition + 1, true);
                            }
                        } else {
                            int i4 = PremiumFeatureBottomSheet.this.selectedPosition;
                            if (i4 - 1 >= 0) {
                                setCurrentItem(i4 - 1, true);
                            }
                        }
                        this.smoothScroll = false;
                    }
                } else if (motionEvent.getAction() == 3) {
                    this.lastTapTime = -1L;
                }
                return false;
            }

            @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                try {
                    processTap(motionEvent, true);
                    return super.onInterceptTouchEvent(motionEvent);
                } catch (Exception unused) {
                    return false;
                }
            }

            @Override // androidx.viewpager.widget.ViewPager, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (PremiumFeatureBottomSheet.this.enterAnimationIsRunning) {
                    return false;
                }
                return super.onTouchEvent(motionEvent) || processTap(motionEvent, false);
            }
        };
        this.viewPager = viewPager;
        viewPager.setOverScrollMode(2);
        this.viewPager.setOffscreenPageLimit(0);
        this.viewPager.setAdapter(new PagerAdapter() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.4
            @Override // androidx.viewpager.widget.PagerAdapter
            public boolean isViewFromObject(View view, Object obj) {
                return view == obj;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return PremiumFeatureBottomSheet.this.premiumFeatures.size();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public Object instantiateItem(ViewGroup viewGroup, int i4) {
                PremiumFeatureBottomSheet premiumFeatureBottomSheet = PremiumFeatureBottomSheet.this;
                ViewPage viewPage = premiumFeatureBottomSheet.new ViewPage(premiumFeatureBottomSheet.getContext(), i4);
                viewGroup.addView(viewPage);
                viewPage.position = i4;
                viewPage.setFeatureDate((PremiumPreviewFragment.PremiumFeatureData) PremiumFeatureBottomSheet.this.premiumFeatures.get(i4));
                return viewPage;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public void destroyItem(ViewGroup viewGroup, int i4, Object obj) {
                viewGroup.removeView((View) obj);
            }
        });
        ViewPager viewPager2 = this.viewPager;
        this.selectedPosition = i3;
        viewPager2.setCurrentItem(i3);
        frameLayout.addView(this.viewPager, LayoutHelper.createFrame(-1, 100.0f, 0, 0.0f, 18.0f, 0.0f, 0.0f));
        frameLayout.addView(this.closeLayout, LayoutHelper.createFrame(52, 52.0f, 53, 0.0f, 24.0f, 0.0f, 0.0f));
        BottomPagesView bottomPagesView = new BottomPagesView(getContext(), this.viewPager, this.premiumFeatures.size());
        this.viewPager.addOnPageChangeListener(new C39535(bottomPagesView));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.addView(frameLayout);
        linearLayout.setOrientation(1);
        bottomPagesView.setColor(Theme.key_chats_unreadCounterMuted, Theme.key_chats_actionBackground);
        if (!z2) {
            linearLayout.addView(bottomPagesView, LayoutHelper.createLinear(this.premiumFeatures.size() * 11, 5, 1, 0, 0, 0, 10));
        }
        PremiumButtonView premiumButtonView = new PremiumButtonView(getContext(), true, resourcesProvider);
        this.premiumButtonView = premiumButtonView;
        premiumButtonView.buttonLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(baseFragment, z2, premiumFeatureData2, view);
            }
        });
        this.premiumButtonView.overlayTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.buttonContainer = frameLayout2;
        frameLayout2.addView(this.premiumButtonView, LayoutHelper.createFrame(-1, 48.0f, 16, 16.0f, 0.0f, 16.0f, 0.0f));
        this.buttonContainer.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        linearLayout.addView(this.buttonContainer, LayoutHelper.createLinear(-1, 68, 80));
        if (i2 == 40) {
            this.premiumButtonView.setOverlayText(StarGiftSheet.replaceUnderstood(LocaleController.getString(C2484R.string.Understood)), true, false);
        } else if (UserConfig.getInstance(i).isPremium()) {
            this.premiumButtonView.setOverlayText(LocaleController.getString(C2484R.string.OK), false, false);
        }
        final ScrollView scrollView = new ScrollView(getContext());
        scrollView.addView(linearLayout);
        setCustomView(scrollView);
        MediaDataController.getInstance(i).preloadPremiumPreviewStickers();
        setButtonText();
        this.customViewGravity = 83;
        final Drawable drawableMutate = ContextCompat.getDrawable(getContext(), C2484R.drawable.header_shadow).mutate();
        FrameLayout frameLayout3 = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.6
            int lastSize;
            Path path = new Path();

            @Override // android.view.View
            public boolean hasOverlappingRendering() {
                return false;
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                PremiumFeatureBottomSheet.this.onContainerTranslationYChanged(f);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i4, int i5) {
                this.lastSize = (i4 + i5) << 16;
                PremiumFeatureBottomSheet.this.topGlobalOffset = 0;
                scrollView.measure(i4, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i5), Integer.MIN_VALUE));
                PremiumFeatureBottomSheet.this.topGlobalOffset = (View.MeasureSpec.getSize(i5) - scrollView.getMeasuredHeight()) + ((BottomSheet) PremiumFeatureBottomSheet.this).backgroundPaddingTop;
                super.onMeasure(i4, i5);
                PremiumFeatureBottomSheet.this.checkTopOffset();
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Drawable drawable = ((BottomSheet) PremiumFeatureBottomSheet.this).shadowDrawable;
                PremiumFeatureBottomSheet premiumFeatureBottomSheet = PremiumFeatureBottomSheet.this;
                drawable.setBounds(0, ((premiumFeatureBottomSheet.topCurrentOffset + ((BottomSheet) premiumFeatureBottomSheet).backgroundPaddingTop) - AndroidUtilities.dp(2.0f)) + 1, getMeasuredWidth(), getMeasuredHeight());
                ((BottomSheet) PremiumFeatureBottomSheet.this).shadowDrawable.draw(canvas);
                super.dispatchDraw(canvas);
                ActionBar actionBar = PremiumFeatureBottomSheet.this.actionBar;
                if (actionBar == null || actionBar.getVisibility() != 0 || PremiumFeatureBottomSheet.this.actionBar.getAlpha() == 0.0f) {
                    return;
                }
                drawableMutate.setBounds(0, PremiumFeatureBottomSheet.this.actionBar.getBottom(), getMeasuredWidth(), PremiumFeatureBottomSheet.this.actionBar.getBottom() + drawableMutate.getIntrinsicHeight());
                drawableMutate.setAlpha((int) (PremiumFeatureBottomSheet.this.actionBar.getAlpha() * 255.0f));
                drawableMutate.draw(canvas);
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == scrollView) {
                    canvas.save();
                    this.path.rewind();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, PremiumFeatureBottomSheet.this.topCurrentOffset + AndroidUtilities.dp(18.0f), getMeasuredWidth(), getMeasuredHeight());
                    this.path.addRoundRect(rectF, AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f), Path.Direction.CW);
                    canvas.clipPath(this.path);
                    super.drawChild(canvas, view, j);
                    canvas.restore();
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    float y = motionEvent.getY();
                    PremiumFeatureBottomSheet premiumFeatureBottomSheet = PremiumFeatureBottomSheet.this;
                    if (y < (premiumFeatureBottomSheet.topCurrentOffset - ((BottomSheet) premiumFeatureBottomSheet).backgroundPaddingTop) + AndroidUtilities.dp(2.0f)) {
                        PremiumFeatureBottomSheet.this.lambda$new$0();
                    }
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.containerView = frameLayout3;
        int i4 = this.backgroundPaddingLeft;
        frameLayout3.setPadding(i4, this.backgroundPaddingTop - 1, i4, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        lambda$new$0();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet$5 */
    class C39535 implements ViewPager.OnPageChangeListener {
        final /* synthetic */ BottomPagesView val$bottomPages;

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        C39535(BottomPagesView bottomPagesView) {
            this.val$bottomPages = bottomPagesView;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            this.val$bottomPages.setPageOffset(i, f);
            PremiumFeatureBottomSheet premiumFeatureBottomSheet = PremiumFeatureBottomSheet.this;
            premiumFeatureBottomSheet.selectedPosition = i;
            premiumFeatureBottomSheet.toPosition = i2 > 0 ? i + 1 : i - 1;
            premiumFeatureBottomSheet.progress = f;
            checkPage();
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (((PremiumPreviewFragment.PremiumFeatureData) PremiumFeatureBottomSheet.this.premiumFeatures.get(i)).type == 0) {
                PremiumFeatureBottomSheet.this.actionBar.setTitle(LocaleController.getString(C2484R.string.DoubledLimits));
                PremiumFeatureBottomSheet.this.actionBar.requestLayout();
            } else if (((PremiumPreviewFragment.PremiumFeatureData) PremiumFeatureBottomSheet.this.premiumFeatures.get(i)).type == 14) {
                PremiumFeatureBottomSheet.this.actionBar.setTitle(LocaleController.getString(C2484R.string.UpgradedStories));
                PremiumFeatureBottomSheet.this.actionBar.requestLayout();
            } else if (((PremiumPreviewFragment.PremiumFeatureData) PremiumFeatureBottomSheet.this.premiumFeatures.get(i)).type == 40) {
                PremiumFeatureBottomSheet.this.actionBar.setTitle(LocaleController.getString(C2484R.string.FeaturePreviewGifts));
                PremiumFeatureBottomSheet.this.actionBar.requestLayout();
            } else if (((PremiumPreviewFragment.PremiumFeatureData) PremiumFeatureBottomSheet.this.premiumFeatures.get(i)).type == 28) {
                PremiumFeatureBottomSheet.this.actionBar.setTitle(LocaleController.getString(C2484R.string.TelegramBusiness));
                PremiumFeatureBottomSheet.this.actionBar.requestLayout();
            }
            checkPage();
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void checkPage() {
            boolean z;
            boolean z2;
            float measuredWidth;
            int i = 0;
            while (true) {
                float f = 0.0f;
                if (i >= PremiumFeatureBottomSheet.this.viewPager.getChildCount()) {
                    break;
                }
                ViewPage viewPage = (ViewPage) PremiumFeatureBottomSheet.this.viewPager.getChildAt(i);
                PremiumFeatureBottomSheet premiumFeatureBottomSheet = PremiumFeatureBottomSheet.this;
                if (!premiumFeatureBottomSheet.enterAnimationIsRunning || !(viewPage.topView instanceof PremiumAppIconsPreviewView)) {
                    int i2 = viewPage.position;
                    if (i2 == premiumFeatureBottomSheet.selectedPosition) {
                        PagerHeaderView pagerHeaderView = viewPage.topHeader;
                        measuredWidth = (-viewPage.getMeasuredWidth()) * PremiumFeatureBottomSheet.this.progress;
                        pagerHeaderView.setOffset(measuredWidth);
                    } else if (i2 == premiumFeatureBottomSheet.toPosition) {
                        PagerHeaderView pagerHeaderView2 = viewPage.topHeader;
                        measuredWidth = ((-viewPage.getMeasuredWidth()) * PremiumFeatureBottomSheet.this.progress) + viewPage.getMeasuredWidth();
                        pagerHeaderView2.setOffset(measuredWidth);
                    } else {
                        viewPage.topHeader.setOffset(viewPage.getMeasuredWidth());
                    }
                    f = measuredWidth;
                }
                if (viewPage.topView instanceof PremiumAppIconsPreviewView) {
                    viewPage.setTranslationX(-f);
                    viewPage.title.setTranslationX(f);
                    viewPage.description.setTranslationX(f);
                }
                i++;
            }
            PremiumFeatureBottomSheet premiumFeatureBottomSheet2 = PremiumFeatureBottomSheet.this;
            premiumFeatureBottomSheet2.containerViewsProgress = premiumFeatureBottomSheet2.progress;
            int i3 = premiumFeatureBottomSheet2.toPosition;
            int i4 = premiumFeatureBottomSheet2.selectedPosition;
            premiumFeatureBottomSheet2.containerViewsForward = i3 > i4;
            if (i4 < 0 || i4 >= premiumFeatureBottomSheet2.premiumFeatures.size()) {
                z = false;
            } else {
                PremiumFeatureBottomSheet premiumFeatureBottomSheet3 = PremiumFeatureBottomSheet.this;
                if (premiumFeatureBottomSheet3.isFullscreenType(((PremiumPreviewFragment.PremiumFeatureData) premiumFeatureBottomSheet3.premiumFeatures.get(premiumFeatureBottomSheet3.selectedPosition)).type)) {
                    z = true;
                }
            }
            PremiumFeatureBottomSheet premiumFeatureBottomSheet4 = PremiumFeatureBottomSheet.this;
            int i5 = premiumFeatureBottomSheet4.toPosition;
            if (i5 < 0 || i5 >= premiumFeatureBottomSheet4.premiumFeatures.size()) {
                z2 = false;
            } else {
                PremiumFeatureBottomSheet premiumFeatureBottomSheet5 = PremiumFeatureBottomSheet.this;
                if (premiumFeatureBottomSheet5.isFullscreenType(((PremiumPreviewFragment.PremiumFeatureData) premiumFeatureBottomSheet5.premiumFeatures.get(premiumFeatureBottomSheet5.toPosition)).type)) {
                    z2 = true;
                }
            }
            if (z && z2) {
                PremiumFeatureBottomSheet premiumFeatureBottomSheet6 = PremiumFeatureBottomSheet.this;
                premiumFeatureBottomSheet6.progressToGradient = 1.0f;
                float f2 = premiumFeatureBottomSheet6.progress;
                if (f2 == 0.0f) {
                    f2 = 1.0f;
                }
                premiumFeatureBottomSheet6.progressToFullscreenView = f2;
                premiumFeatureBottomSheet6.fullscreenNext = true;
            } else if (z) {
                PremiumFeatureBottomSheet premiumFeatureBottomSheet7 = PremiumFeatureBottomSheet.this;
                float f3 = 1.0f - premiumFeatureBottomSheet7.progress;
                premiumFeatureBottomSheet7.progressToFullscreenView = f3;
                premiumFeatureBottomSheet7.progressToGradient = f3;
                premiumFeatureBottomSheet7.fullscreenNext = true;
            } else if (z2) {
                PremiumFeatureBottomSheet premiumFeatureBottomSheet8 = PremiumFeatureBottomSheet.this;
                float f4 = premiumFeatureBottomSheet8.progress;
                premiumFeatureBottomSheet8.progressToFullscreenView = f4;
                premiumFeatureBottomSheet8.progressToGradient = f4;
                premiumFeatureBottomSheet8.fullscreenNext = false;
            } else {
                PremiumFeatureBottomSheet premiumFeatureBottomSheet9 = PremiumFeatureBottomSheet.this;
                premiumFeatureBottomSheet9.progressToFullscreenView = 0.0f;
                premiumFeatureBottomSheet9.progressToGradient = 0.0f;
                premiumFeatureBottomSheet9.fullscreenNext = true;
            }
            PremiumFeatureBottomSheet premiumFeatureBottomSheet10 = PremiumFeatureBottomSheet.this;
            int i6 = (int) ((1.0f - premiumFeatureBottomSheet10.progressToFullscreenView) * 255.0f);
            if (i6 != premiumFeatureBottomSheet10.gradientAlpha) {
                PremiumFeatureBottomSheet.this.gradientAlpha = i6;
                PremiumFeatureBottomSheet.this.content.invalidate();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkPage$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkPage$0() {
            PremiumFeatureBottomSheet.this.checkTopOffset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(BaseFragment baseFragment, boolean z, PremiumPreviewFragment.PremiumFeatureData premiumFeatureData, View view) {
        if (baseFragment instanceof ChatActivity) {
            ChatActivity chatActivity = (ChatActivity) baseFragment;
            chatActivity.closeMenu();
            ChatAttachAlert chatAttachAlert = chatActivity.chatAttachAlert;
            if (chatAttachAlert != null) {
                chatAttachAlert.dismiss(true);
            }
        }
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        int i = 0;
        while (i < 2) {
            BaseFragment baseFragment2 = i == 0 ? baseFragment : lastFragment;
            if (baseFragment2 != null && baseFragment2.getLastStoryViewer() != null) {
                baseFragment2.getLastStoryViewer().dismissVisibleDialogs();
            }
            if (baseFragment2 != null && baseFragment2.getVisibleDialog() != null) {
                baseFragment2.getVisibleDialog().dismiss();
            }
            i++;
        }
        if (z || this.forceAbout) {
            PremiumPreviewFragment premiumPreviewFragment = new PremiumPreviewFragment(PremiumPreviewFragment.featureTypeToServerString(premiumFeatureData.type));
            if (baseFragment instanceof ThemePreviewActivity) {
                BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                bottomSheetParams.transitionFromLeft = true;
                bottomSheetParams.allowNestedScroll = false;
                baseFragment.showAsSheet(premiumPreviewFragment, bottomSheetParams);
            } else if (baseFragment != null) {
                baseFragment.presentFragment(premiumPreviewFragment);
            } else {
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment != null) {
                    safeLastFragment.presentFragment(premiumPreviewFragment);
                }
            }
        } else {
            PremiumPreviewFragment.buyPremium(baseFragment, this.selectedTier, PremiumPreviewFragment.featureTypeToServerString(premiumFeatureData.type));
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        lambda$new$0();
    }

    private static Theme.ResourcesProvider getResourceProvider(BaseFragment baseFragment) {
        if (baseFragment == null) {
            return null;
        }
        if (baseFragment.getLastStoryViewer() != null && baseFragment.getLastStoryViewer().isShown()) {
            return baseFragment.getLastStoryViewer().getResourceProvider();
        }
        return baseFragment.getResourceProvider();
    }

    public PremiumFeatureBottomSheet setForceAbout() {
        this.forceAbout = true;
        this.premiumButtonView.clearOverlayText();
        setButtonText();
        return this;
    }

    private void setButtonText() {
        if (this.forceAbout) {
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString(C2484R.string.AboutTelegramPremium));
            return;
        }
        if (this.onlySelectedType) {
            int i = this.startType;
            if (i == 4) {
                this.premiumButtonView.buttonTextView.setText(LocaleController.getString(C2484R.string.UnlockPremiumReactions));
                this.premiumButtonView.setIcon(C2484R.raw.unlock_icon);
                return;
            } else if (i == 10) {
                this.premiumButtonView.buttonTextView.setText(LocaleController.getString(C2484R.string.UnlockPremiumIcons));
                this.premiumButtonView.setIcon(C2484R.raw.unlock_icon);
                return;
            } else {
                this.premiumButtonView.buttonTextView.setText(LocaleController.getString(C2484R.string.AboutTelegramPremium));
                return;
            }
        }
        this.premiumButtonView.buttonTextView.setText(PremiumPreviewFragment.getPremiumButtonText(this.currentAccount, this.selectedTier));
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 16);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.premiumPromoUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        ActionBar actionBar = new ActionBar(getContext()) { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.7
            @Override // android.view.View
            public void setAlpha(float f) {
                if (getAlpha() != f) {
                    super.setAlpha(f);
                    ((BottomSheet) PremiumFeatureBottomSheet.this).containerView.invalidate();
                }
            }

            @Override // android.view.View
            public void setTag(Object obj) {
                super.setTag(obj);
                PremiumFeatureBottomSheet.this.updateStatusBar();
            }
        };
        this.actionBar = actionBar;
        actionBar.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        this.actionBar.setTitleColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
        ActionBar actionBar2 = this.actionBar;
        int i = Theme.key_actionBarActionModeDefaultIcon;
        actionBar2.setItemsColor(getThemedColor(i), false);
        this.actionBar.setItemsColor(getThemedColor(i), true);
        this.actionBar.setCastShadows(true);
        this.actionBar.setExtraHeight(AndroidUtilities.dp(2.0f));
        this.actionBar.setBackButtonImage(C2484R.drawable.ic_ab_back);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.8
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    PremiumFeatureBottomSheet.this.lambda$new$0();
                }
            }
        });
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
        ((FrameLayout.LayoutParams) this.actionBar.getLayoutParams()).topMargin = (-this.backgroundPaddingTop) - AndroidUtilities.dp(2.0f);
        AndroidUtilities.updateViewVisibilityAnimated(this.actionBar, false, 1.0f, false);
        if (((PremiumPreviewFragment.PremiumFeatureData) this.premiumFeatures.get(this.selectedPosition)).type == 14) {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.UpgradedStories));
            this.actionBar.requestLayout();
        } else if (((PremiumPreviewFragment.PremiumFeatureData) this.premiumFeatures.get(this.selectedPosition)).type == 28) {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.TelegramBusiness));
            this.actionBar.requestLayout();
        } else if (((PremiumPreviewFragment.PremiumFeatureData) this.premiumFeatures.get(this.selectedPosition)).type == 40) {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.FeaturePreviewGifts));
            this.actionBar.requestLayout();
        } else {
            this.actionBar.setTitle(LocaleController.getString(C2484R.string.DoubledLimits));
            this.actionBar.requestLayout();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.premiumPromoUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 16);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        if (this.viewPager != null) {
            for (int i = 0; i < this.viewPager.getChildCount(); i++) {
                View view = ((ViewPage) this.viewPager.getChildAt(i)).topView;
                if (view instanceof VideoScreenPreview) {
                    try {
                        ((VideoScreenPreview) view).onDestroy();
                    } catch (Exception e) {
                        FileLog.m955e(e);
                    }
                } else if (view instanceof PremiumStickersPreviewRecycler) {
                    ((PremiumStickersPreviewRecycler) view).autoPlayEnabled = false;
                }
            }
            this.viewPager = null;
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.billingProductDetailsUpdated || i == NotificationCenter.premiumPromoUpdated) {
            setButtonText();
        } else if (i == NotificationCenter.currentUserPremiumStatusChanged) {
            if (UserConfig.getInstance(this.currentAccount).isPremium()) {
                this.premiumButtonView.setOverlayText(LocaleController.getString(C2484R.string.OK), false, true);
            } else {
                this.premiumButtonView.clearOverlayText();
            }
        }
    }

    private class ViewPage extends LinearLayout {
        LinkSpanDrawable.LinksTextView description;
        LinearLayout featuresLayout;
        public int position;
        TextView title;
        PagerHeaderView topHeader;
        View topView;
        boolean topViewOnFullHeight;

        public ViewPage(Context context, int i) {
            super(context);
            setOrientation(1);
            View viewForPosition = PremiumFeatureBottomSheet.this.getViewForPosition(context, i);
            this.topView = viewForPosition;
            addView(viewForPosition);
            this.topHeader = (PagerHeaderView) this.topView;
            TextView textView = new TextView(context);
            this.title = textView;
            textView.setGravity(1);
            TextView textView2 = this.title;
            int i2 = Theme.key_dialogTextBlack;
            textView2.setTextColor(PremiumFeatureBottomSheet.this.getThemedColor(i2));
            this.title.setTextSize(1, 20.0f);
            this.title.setTypeface(AndroidUtilities.bold());
            addView(this.title, LayoutHelper.createFrame(-1, -2.0f, 0, 21.0f, 20.0f, 21.0f, 0.0f));
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            this.description = linksTextView;
            linksTextView.setGravity(1);
            this.description.setTextSize(1, 15.0f);
            this.description.setTextColor(PremiumFeatureBottomSheet.this.getThemedColor(i2));
            if (!PremiumFeatureBottomSheet.this.onlySelectedType) {
                this.description.setLines(2);
            }
            addView(this.description, LayoutHelper.createLinear(-1, -2, 1, 21, 10, 21, 16));
            setClipChildren(false);
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            this.title.setVisibility(0);
            View view = this.topView;
            if (view instanceof BaseListPageView) {
                ((BaseListPageView) view).setTopOffset(PremiumFeatureBottomSheet.this.topGlobalOffset);
            }
            ViewGroup.LayoutParams layoutParams = this.topView.getLayoutParams();
            PremiumFeatureBottomSheet premiumFeatureBottomSheet = PremiumFeatureBottomSheet.this;
            layoutParams.height = premiumFeatureBottomSheet.contentHeight;
            this.description.setVisibility(((BottomSheet) premiumFeatureBottomSheet).isPortrait ? 0 : 8);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.title.getLayoutParams();
            if (((BottomSheet) PremiumFeatureBottomSheet.this).isPortrait) {
                marginLayoutParams.topMargin = AndroidUtilities.dp(20.0f);
                marginLayoutParams.bottomMargin = 0;
            } else {
                marginLayoutParams.topMargin = AndroidUtilities.dp(10.0f);
                marginLayoutParams.bottomMargin = AndroidUtilities.dp(10.0f);
            }
            ((ViewGroup.MarginLayoutParams) this.topView.getLayoutParams()).bottomMargin = 0;
            super.onMeasure(i, i2);
            if (this.topViewOnFullHeight) {
                this.topView.getLayoutParams().height = getMeasuredHeight() - AndroidUtilities.dp(16.0f);
                ((ViewGroup.MarginLayoutParams) this.topView.getLayoutParams()).bottomMargin = AndroidUtilities.dp(16.0f);
                this.title.setVisibility(8);
                this.description.setVisibility(8);
                super.onMeasure(i, i2);
            }
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == this.topView) {
                boolean z = view instanceof BaseListPageView;
                if (z) {
                    setTranslationY(0.0f);
                } else {
                    setTranslationY(PremiumFeatureBottomSheet.this.topGlobalOffset);
                }
                if (z) {
                    return super.drawChild(canvas, view, j);
                }
                canvas.save();
                canvas.clipRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
                boolean zDrawChild = super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild;
            }
            return super.drawChild(canvas, view, j);
        }

        void setFeatureDate(PremiumPreviewFragment.PremiumFeatureData premiumFeatureData) {
            int i = premiumFeatureData.type;
            if (i == 0 || i == 14 || i == 28) {
                this.title.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.description.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                this.topViewOnFullHeight = true;
            } else if (PremiumFeatureBottomSheet.this.onlySelectedType) {
                if (PremiumFeatureBottomSheet.this.startType == 4) {
                    this.title.setText(LocaleController.getString(C2484R.string.AdditionalReactions));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.AdditionalReactionsDescription)));
                } else if (PremiumFeatureBottomSheet.this.startType == 3) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewNoAds));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewNoAdsDescription2)));
                } else if (PremiumFeatureBottomSheet.this.startType == 24) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewTags));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewTagsDescription)));
                } else if (PremiumFeatureBottomSheet.this.startType == 10) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewAppIcon));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewAppIconDescription2)));
                } else if (PremiumFeatureBottomSheet.this.startType == 2) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewDownloadSpeed));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewDownloadSpeedDescription2)));
                } else if (PremiumFeatureBottomSheet.this.startType == 9) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewAdvancedChatManagement));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewAdvancedChatManagementDescription2)));
                } else if (PremiumFeatureBottomSheet.this.startType == 8) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewVoiceToText));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewVoiceToTextDescription2)));
                } else if (PremiumFeatureBottomSheet.this.startType == 13) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewTranslations));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewTranslationsDescription)));
                } else if (PremiumFeatureBottomSheet.this.startType == 38) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewEffects));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewEffectsDescription)));
                } else if (PremiumFeatureBottomSheet.this.startType == 22) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewWallpaper));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewWallpaperDescription)));
                } else if (PremiumFeatureBottomSheet.this.startType == 23) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewProfileColor));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewProfileColorDescription)));
                } else if (PremiumFeatureBottomSheet.this.startType == 41) {
                    this.title.setText(LocaleController.getString(C2484R.string.PremiumPreviewSharingDisable));
                    this.description.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2484R.string.PremiumPreviewSharingDisableDescription)));
                } else {
                    this.title.setText(premiumFeatureData.title);
                    this.description.setText(AndroidUtilities.replaceTags(premiumFeatureData.description));
                }
                this.topViewOnFullHeight = false;
            } else {
                this.title.setText(premiumFeatureData.title);
                this.description.setText(AndroidUtilities.replaceTags(premiumFeatureData.description));
                this.topViewOnFullHeight = false;
            }
            LinkSpanDrawable.LinksTextView linksTextView = this.description;
            linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), this.description.getPaint()));
            requestLayout();
            boolean z = premiumFeatureData.type == 40;
            if (z && this.featuresLayout == null) {
                LinearLayout linearLayout = new LinearLayout(getContext());
                this.featuresLayout = linearLayout;
                linearLayout.setOrientation(1);
                AffiliateProgramFragment.FeatureCell featureCell = new AffiliateProgramFragment.FeatureCell(getContext(), true, ((BottomSheet) PremiumFeatureBottomSheet.this).resourcesProvider);
                featureCell.set(C2484R.drawable.menu_feature_unique, LocaleController.getString(C2484R.string.GiftsFeature1Title), LocaleController.getString(C2484R.string.GiftsFeature1Text));
                this.featuresLayout.addView(featureCellArr[0], LayoutHelper.createLinear(-1, -2));
                AffiliateProgramFragment.FeatureCell featureCell2 = new AffiliateProgramFragment.FeatureCell(getContext(), true, ((BottomSheet) PremiumFeatureBottomSheet.this).resourcesProvider);
                featureCell2.set(C2484R.drawable.menu_feature_tradable, LocaleController.getString(C2484R.string.GiftsFeature2Title), LocaleController.getString(C2484R.string.GiftsFeature2Text));
                this.featuresLayout.addView(featureCellArr[1], LayoutHelper.createLinear(-1, -2));
                AffiliateProgramFragment.FeatureCell featureCell3 = new AffiliateProgramFragment.FeatureCell(getContext(), true, ((BottomSheet) PremiumFeatureBottomSheet.this).resourcesProvider);
                AffiliateProgramFragment.FeatureCell[] featureCellArr = {featureCell, featureCell2, featureCell3};
                featureCell3.set(C2484R.drawable.menu_wear, LocaleController.getString(C2484R.string.GiftsFeature3Title), LocaleController.getString(C2484R.string.GiftsFeature3Text));
                this.featuresLayout.addView(featureCellArr[2], LayoutHelper.createLinear(-1, -2));
                addView(this.featuresLayout, LayoutHelper.createLinear(-1, -2, 0.0f, -4.0f, 0.0f, 0.0f));
            }
            LinearLayout linearLayout2 = this.featuresLayout;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(z ? 0 : 8);
            }
            ((ViewGroup.MarginLayoutParams) this.description.getLayoutParams()).topMargin = AndroidUtilities.dp(z ? 6.0f : 10.0f);
        }
    }

    View getViewForPosition(Context context, int i) {
        PremiumPreviewFragment.PremiumFeatureData premiumFeatureData = (PremiumPreviewFragment.PremiumFeatureData) this.premiumFeatures.get(i);
        int i2 = premiumFeatureData.type;
        if (i2 == 0) {
            DoubleLimitsPageView doubleLimitsPageView = new DoubleLimitsPageView(context, this.resourcesProvider);
            doubleLimitsPageView.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.9
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                    super.onScrolled(recyclerView, i3, i4);
                    ((BottomSheet) PremiumFeatureBottomSheet.this).containerView.invalidate();
                    PremiumFeatureBottomSheet.this.checkTopOffset();
                }
            });
            return doubleLimitsPageView;
        }
        if (i2 == 14 || i2 == 28) {
            FeaturesPageView featuresPageView = new FeaturesPageView(context, i2 == 28 ? 1 : 0, this.resourcesProvider);
            featuresPageView.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.10
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                    super.onScrolled(recyclerView, i3, i4);
                    ((BottomSheet) PremiumFeatureBottomSheet.this).containerView.invalidate();
                    PremiumFeatureBottomSheet.this.checkTopOffset();
                }
            });
            return featuresPageView;
        }
        if (i2 == 5) {
            return new PremiumStickersPreviewRecycler(context, this.currentAccount) { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.11
                @Override // org.telegram.ui.Components.Premium.PremiumStickersPreviewRecycler, org.telegram.ui.Components.Premium.PagerHeaderView
                public void setOffset(float f) {
                    setAutoPlayEnabled(f == 0.0f);
                    super.setOffset(f);
                }
            };
        }
        if (i2 == 10) {
            return new PremiumAppIconsPreviewView(context, this.resourcesProvider);
        }
        return new VideoScreenPreview(context, this.svgIcon, this.currentAccount, premiumFeatureData.type, this.resourcesProvider);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    protected boolean onCustomOpenAnimation() {
        if (this.viewPager.getChildCount() > 0) {
            View view = ((ViewPage) this.viewPager.getChildAt(0)).topView;
            if (view instanceof PremiumAppIconsPreviewView) {
                final PremiumAppIconsPreviewView premiumAppIconsPreviewView = (PremiumAppIconsPreviewView) view;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(r0.getMeasuredWidth(), 0.0f);
                premiumAppIconsPreviewView.setOffset(r0.getMeasuredWidth());
                this.enterAnimationIsRunning = true;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.12
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        premiumAppIconsPreviewView.setOffset(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet.13
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PremiumFeatureBottomSheet.this.enterAnimationIsRunning = false;
                        premiumAppIconsPreviewView.setOffset(0.0f);
                        super.onAnimationEnd(animator);
                    }
                });
                valueAnimatorOfFloat.setDuration(500L);
                valueAnimatorOfFloat.setStartDelay(100L);
                valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                valueAnimatorOfFloat.start();
            }
        }
        return super.onCustomOpenAnimation();
    }

    void checkTopOffset() {
        View viewFindViewByPosition;
        View viewFindViewByPosition2;
        int top = -1;
        int top2 = -1;
        for (int i = 0; i < this.viewPager.getChildCount(); i++) {
            ViewPage viewPage = (ViewPage) this.viewPager.getChildAt(i);
            if (viewPage.position == this.selectedPosition) {
                View view = viewPage.topView;
                if ((view instanceof BaseListPageView) && ((viewFindViewByPosition2 = ((BaseListPageView) view).layoutManager.findViewByPosition(0)) == null || (top = viewFindViewByPosition2.getTop()) < 0)) {
                    top = 0;
                }
            }
            if (viewPage.position == this.toPosition) {
                View view2 = viewPage.topView;
                if ((view2 instanceof BaseListPageView) && ((viewFindViewByPosition = ((BaseListPageView) view2).layoutManager.findViewByPosition(0)) == null || (top2 = viewFindViewByPosition.getTop()) < 0)) {
                    top2 = 0;
                }
            }
        }
        int iMin = this.topGlobalOffset;
        if (top >= 0) {
            float f = 1.0f - this.progress;
            iMin = Math.min(iMin, (int) ((top * f) + (iMin * (1.0f - f))));
        }
        if (top2 >= 0) {
            float f2 = this.progress;
            iMin = Math.min(iMin, (int) ((top2 * f2) + (this.topGlobalOffset * (1.0f - f2))));
        }
        this.closeLayout.setAlpha(1.0f - this.progressToGradient);
        if (this.progressToFullscreenView == 1.0f) {
            this.closeLayout.setVisibility(4);
        } else {
            this.closeLayout.setVisibility(0);
        }
        this.content.setTranslationX((this.fullscreenNext ? r0.getMeasuredWidth() : -r0.getMeasuredWidth()) * this.progressToGradient);
        if (iMin != this.topCurrentOffset) {
            this.topCurrentOffset = iMin;
            for (int i2 = 0; i2 < this.viewPager.getChildCount(); i2++) {
                if (!((ViewPage) this.viewPager.getChildAt(i2)).topViewOnFullHeight) {
                    this.viewPager.getChildAt(i2).setTranslationY(this.topCurrentOffset);
                }
            }
            this.content.setTranslationY(this.topCurrentOffset);
            this.closeLayout.setTranslationY(this.topCurrentOffset);
            this.containerView.invalidate();
            AndroidUtilities.updateViewVisibilityAnimated(this.actionBar, this.topCurrentOffset < AndroidUtilities.dp(this.startType == 40 ? 5.0f : 30.0f), 1.0f, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusBar() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && actionBar.getTag() != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), isLightStatusBar());
        } else if (this.baseFragment != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), this.baseFragment.isLightStatusBar());
        }
    }

    private boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(Theme.key_dialogBackground)) > 0.699999988079071d;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        for (int i = 0; i < this.viewPager.getChildCount(); i++) {
            ViewPage viewPage = (ViewPage) this.viewPager.getChildAt(i);
            if (viewPage.position == this.selectedPosition) {
                if (viewPage.topView instanceof BaseListPageView) {
                    return !((BaseListPageView) r1).recyclerListView.canScrollVertically(-1);
                }
            }
        }
        return true;
    }
}
