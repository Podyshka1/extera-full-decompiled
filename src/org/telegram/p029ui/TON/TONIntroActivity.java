package org.telegram.p029ui.TON;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.p029ui.AccountFrozenAlert;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.FireworksOverlay;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.p029ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.p029ui.Components.Premium.StarParticlesView;
import org.telegram.p029ui.Components.Premium.boosts.UserSelectorBottomSheet;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.GradientHeaderActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.Stars.BotStarsActivity;
import org.telegram.p029ui.Stars.BotStarsController;
import org.telegram.p029ui.Stars.ExplainStarsSheet;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.Stories.recorder.HintView2;
import org.telegram.p029ui.bots.ChannelAffiliateProgramsFragment;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;

/* JADX INFO: loaded from: classes7.dex */
public class TONIntroActivity extends GradientHeaderActivity implements NotificationCenter.NotificationCenterDelegate {
    private FrameLayout aboveTitleView;
    private UniversalAdapter adapter;
    private LinearLayout balanceLayout;
    private ButtonWithCounterView buyButton;
    private View emptyLayout;
    private FireworksOverlay fireworksOverlay;
    private boolean hadTransactions;
    private GLIconTextureView iconTextureView;
    private FrameLayout oneButtonsLayout;
    private SpannableStringBuilder starBalanceIcon;
    private AnimatedTextView starBalanceTextView;
    private AnimatedTextView starBalanceTitleView;
    private ButtonWithCounterView topUpButton;
    private StarsIntroActivity.StarsTransactionsLayout transactionsLayout;
    private boolean twoButtons;
    private LinearLayout twoButtonsLayout;
    private ButtonWithCounterView withdrawButton;
    private boolean expanded = false;
    private final int BUTTON_EXPAND = -1;
    private final int BUTTON_GIFT = -2;
    private final int BUTTON_SUBSCRIPTIONS_EXPAND = -3;
    private final int BUTTON_AFFILIATE = -4;
    private final boolean allowTopUp = allowTopUp();

    public static boolean allowTopUp() {
        return BuildVars.isBetaApp();
    }

    public TONIntroActivity() {
        setWhiteBackground(true);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starOptionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starBalanceUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starTransactionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starSubscriptionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.botStarsUpdated);
        StarsController.getTonInstance(this.currentAccount).invalidateTransactions(true);
        StarsController.getTonInstance(this.currentAccount).invalidateSubscriptions(true);
        StarsController.getTonInstance(this.currentAccount).getOptions();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starOptionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starBalanceUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starTransactionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starSubscriptionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.botStarsUpdated);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.starOptionsLoaded) {
            saveScrollPosition();
            UniversalAdapter universalAdapter = this.adapter;
            if (universalAdapter != null) {
                universalAdapter.update(true);
            }
            if (this.savedScrollPosition == 0 && this.savedScrollOffset < 0) {
                this.savedScrollOffset = 0;
            }
            applyScrolledPosition();
            return;
        }
        if (i == NotificationCenter.starTransactionsLoaded) {
            StarsController tonInstance = StarsController.getTonInstance(this.currentAccount);
            if (this.hadTransactions != tonInstance.hasTransactions()) {
                this.hadTransactions = tonInstance.hasTransactions();
                saveScrollPosition();
                UniversalAdapter universalAdapter2 = this.adapter;
                if (universalAdapter2 != null) {
                    universalAdapter2.update(true);
                }
                if (this.savedScrollPosition == 0 && this.savedScrollOffset < 0) {
                    this.savedScrollOffset = 0;
                }
                applyScrolledPosition();
                return;
            }
            return;
        }
        if (i == NotificationCenter.starSubscriptionsLoaded) {
            UniversalAdapter universalAdapter3 = this.adapter;
            if (universalAdapter3 != null) {
                universalAdapter3.update(true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.starBalanceUpdated) {
            updateBalance();
        } else if (i == NotificationCenter.botStarsUpdated && getUserConfig().getClientUserId() == ((Long) objArr[0]).longValue()) {
            updateBalance();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return Theme.getColor(Theme.key_dialogBackgroundGray);
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.useFillLastLayoutManager = false;
        this.particlesViewHeight = AndroidUtilities.m1124dp(238.0f);
        this.transactionsLayout = new StarsIntroActivity.StarsTransactionsLayout(context, this.currentAccount, true, 0L, getClassGuid(), getResourceProvider());
        View view = new View(context) { // from class: org.telegram.ui.TON.TONIntroActivity.1
            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                int measuredHeight;
                TONIntroActivity tONIntroActivity = TONIntroActivity.this;
                if (tONIntroActivity.isLandscapeMode) {
                    measuredHeight = (tONIntroActivity.statusBarHeight + ((BaseFragment) tONIntroActivity).actionBar.getMeasuredHeight()) - AndroidUtilities.m1124dp(16.0f);
                } else {
                    int iM1124dp = AndroidUtilities.m1124dp(140.0f);
                    TONIntroActivity tONIntroActivity2 = TONIntroActivity.this;
                    int measuredHeight2 = iM1124dp + tONIntroActivity2.statusBarHeight;
                    if (tONIntroActivity2.backgroundView.getMeasuredHeight() + AndroidUtilities.m1124dp(24.0f) > measuredHeight2) {
                        measuredHeight2 = TONIntroActivity.this.backgroundView.getMeasuredHeight() + AndroidUtilities.m1124dp(24.0f);
                    }
                    measuredHeight = measuredHeight2;
                }
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((int) (measuredHeight - (((GradientHeaderActivity) TONIntroActivity.this).yOffset * 2.5f)), TLObject.FLAG_30));
            }
        };
        this.emptyLayout = view;
        view.setBackgroundColor(Theme.getColor(this.allowTopUp ? Theme.key_dialogBackgroundGray : Theme.key_dialogBackground));
        super.createView(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.aboveTitleView = frameLayout;
        frameLayout.setClickable(true);
        GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 4);
        this.iconTextureView = gLIconTextureView;
        GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
        gLIconRenderer.colorKey1 = Theme.key_starsGradient1;
        gLIconRenderer.colorKey2 = Theme.key_starsGradient2;
        gLIconRenderer.updateColors();
        this.iconTextureView.setStarParticlesView(this.particlesView);
        this.aboveTitleView.addView(this.iconTextureView, LayoutHelper.createFrame(170, 170.0f, 17, 0.0f, 32.0f, 0.0f, 24.0f));
        configureHeader(LocaleController.getString(C2888R.string.TONBalanceTitle), AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.TONBalanceText), new Runnable() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                new ExplainStarsSheet(context).show();
            }
        }), true), this.aboveTitleView, null);
        this.listView.setOverScrollMode(2);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i) {
                this.f$0.lambda$createView$1(view2, i);
            }
        });
        FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
        this.fireworksOverlay = fireworksOverlay;
        this.contentView.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
        StarsController.getTonInstance(this.currentAccount);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.balanceLayout = linearLayout;
        linearLayout.setOrientation(1);
        this.balanceLayout.setPadding(0, AndroidUtilities.m1124dp(20.0f), 0, AndroidUtilities.m1124dp(10.0f));
        AnimatedTextView animatedTextView = new AnimatedTextView(getContext(), false, true, false);
        this.starBalanceTextView = animatedTextView;
        animatedTextView.setTypeface(AndroidUtilities.bold());
        this.starBalanceTextView.setTextSize(AndroidUtilities.m1124dp(32.0f));
        this.starBalanceTextView.setGravity(17);
        this.starBalanceTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider));
        this.starBalanceIcon = new SpannableStringBuilder("S");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.ton);
        coloredImageSpan.setOverrideColor(-13397548);
        coloredImageSpan.setScale(0.5f, 0.5f);
        coloredImageSpan.translate(-AndroidUtilities.m1124dp(3.0f), 0.0f);
        this.starBalanceIcon.setSpan(coloredImageSpan, 0, 1, 33);
        this.balanceLayout.addView(this.starBalanceTextView, LayoutHelper.createFrame(-1, 40.0f, 17, 24.0f, 0.0f, 24.0f, 0.0f));
        AnimatedTextView animatedTextView2 = new AnimatedTextView(getContext());
        this.starBalanceTitleView = animatedTextView2;
        animatedTextView2.setTextSize(AndroidUtilities.m1124dp(14.0f));
        this.starBalanceTitleView.setGravity(17);
        this.starBalanceTitleView.setText(LocaleController.getString(C2888R.string.YourTonBalance));
        this.starBalanceTitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourceProvider));
        this.balanceLayout.addView(this.starBalanceTitleView, LayoutHelper.createFrame(-1, 20.0f, 17, 24.0f, 0.0f, 24.0f, 8.0f));
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        FrameLayout frameLayout3 = new FrameLayout(getContext()) { // from class: org.telegram.ui.TON.TONIntroActivity.2
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (TONIntroActivity.this.twoButtons) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.oneButtonsLayout = frameLayout3;
        frameLayout2.addView(frameLayout3);
        if (this.allowTopUp) {
            ButtonWithCounterView round = new ButtonWithCounterView(getContext(), this.resourceProvider).setRound();
            this.buyButton = round;
            round.setRound();
            this.buyButton.setText(LocaleController.getString(C2888R.string.TopUpViaFragment), false);
            this.buyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$2(view2);
                }
            });
            this.oneButtonsLayout.addView(this.buyButton, LayoutHelper.createFrame(-1, 48, 119));
        }
        LinearLayout linearLayout2 = new LinearLayout(getContext()) { // from class: org.telegram.ui.TON.TONIntroActivity.3
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (TONIntroActivity.this.twoButtons) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.twoButtonsLayout = linearLayout2;
        frameLayout2.addView(linearLayout2);
        this.topUpButton = new ButtonWithCounterView(getContext(), this.resourceProvider).setRound();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x  ");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2888R.drawable.mini_topup, 2), 0, 1, 33);
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.TonTopUp));
        this.topUpButton.setText(spannableStringBuilder, false);
        this.topUpButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$3(view2);
            }
        });
        if (this.allowTopUp) {
            this.twoButtonsLayout.addView(this.topUpButton, LayoutHelper.createLinear(-1, 48, 17.0f, 1, 0, 0, 8, 0));
        }
        this.withdrawButton = new ButtonWithCounterView(getContext(), this.resourceProvider).setRound();
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("x  ");
        spannableStringBuilder2.setSpan(new ColoredImageSpan(C2888R.drawable.mini_stats, 2), 0, 1, 33);
        spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2888R.string.TonStats));
        this.withdrawButton.setText(spannableStringBuilder2, false);
        this.withdrawButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$4(view2);
            }
        });
        this.twoButtonsLayout.addView(this.withdrawButton, LayoutHelper.createLinear(-1, 48, 17.0f, 1, 0, 0, 0, 0));
        this.balanceLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 48.0f, 17, 20.0f, 6.0f, 20.0f, 4.0f));
        this.oneButtonsLayout.animate().cancel();
        this.twoButtonsLayout.animate().cancel();
        this.twoButtonsLayout.setAlpha(this.twoButtons ? 1.0f : 0.0f);
        this.oneButtonsLayout.setAlpha(this.twoButtons ? 0.0f : 1.0f);
        this.twoButtonsLayout.setVisibility(this.twoButtons ? 0 : 8);
        this.oneButtonsLayout.setVisibility(this.twoButtons ? 8 : 0);
        updateBalance();
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, int i) {
        UItem item;
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter == null || (item = universalAdapter.getItem(i)) == null) {
            return;
        }
        onItemClick(item, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        Browser.openUrlInSystemBrowser(getContext(), LocaleController.getString(C2888R.string.TopUpViaFragmentLink));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        Browser.openUrlInSystemBrowser(getContext(), LocaleController.getString(C2888R.string.TopUpViaFragmentLink));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        presentFragment(new BotStarsActivity(1, getUserConfig().getClientUserId()));
    }

    private void updateBalance() {
        TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus;
        StarsController tonInstance = StarsController.getTonInstance(this.currentAccount);
        double d = getMessagesController().config.tonUsdRate.get();
        TL_stars.StarsAmount balance = tonInstance.getBalance();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.starBalanceIcon);
        spannableStringBuilder.append(StarsIntroActivity.formatStarsAmount(balance, 0.66f, ' '));
        this.starBalanceTextView.setText(spannableStringBuilder);
        int i = (int) ((balance.amount / 1.0E9d) * d * 100.0d);
        if (i > 0) {
            this.starBalanceTitleView.setText("≈" + BillingController.getInstance().formatCurrency(i, "USD"));
        } else {
            this.starBalanceTitleView.setText(LocaleController.getString(C2888R.string.YourTonBalance));
        }
        TLRPC.TL_payments_starsRevenueStats tONRevenueStats = BotStarsController.getInstance(this.currentAccount).getTONRevenueStats(getUserConfig().getClientUserId(), true);
        updateButtonsLayouts((tONRevenueStats == null || (tL_starsRevenueStatus = tONRevenueStats.status) == null || !tL_starsRevenueStatus.overall_revenue.positive()) ? false : true, true);
    }

    private void updateButtonsLayouts(final boolean z, boolean z2) {
        if (this.twoButtons == z) {
            return;
        }
        this.twoButtons = z;
        if (z2) {
            this.oneButtonsLayout.setVisibility(0);
            this.twoButtonsLayout.setVisibility(0);
            this.oneButtonsLayout.animate().alpha(z ? 0.0f : 1.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateButtonsLayouts$5(z);
                }
            }).start();
            this.twoButtonsLayout.animate().alpha(z ? 1.0f : 0.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateButtonsLayouts$6(z);
                }
            }).start();
            return;
        }
        this.oneButtonsLayout.animate().cancel();
        this.twoButtonsLayout.animate().cancel();
        this.twoButtonsLayout.setAlpha(z ? 1.0f : 0.0f);
        this.oneButtonsLayout.setAlpha(z ? 0.0f : 1.0f);
        this.twoButtonsLayout.setVisibility(z ? 0 : 8);
        this.oneButtonsLayout.setVisibility(z ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonsLayouts$5(boolean z) {
        if (z) {
            this.oneButtonsLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonsLayouts$6(boolean z) {
        if (z) {
            return;
        }
        this.twoButtonsLayout.setVisibility(8);
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity
    protected GradientHeaderActivity.ContentView createContentView() {
        return new NestedFrameLayout(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    class NestedFrameLayout extends GradientHeaderActivity.ContentView implements NestedScrollingParent3 {
        private NestedScrollingParentHelper nestedScrollingParentHelper;

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        }

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
            return i == 2;
        }

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, android.view.ViewGroup, android.view.ViewParent
        public void onStopNestedScroll(View view) {
        }

        public NestedFrameLayout(Context context) {
            super(context);
            this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        }

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent3
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            try {
                if (view == ((GradientHeaderActivity) TONIntroActivity.this).listView && TONIntroActivity.this.transactionsLayout.isAttachedToWindow()) {
                    RecyclerListView currentListView = TONIntroActivity.this.transactionsLayout.getCurrentListView();
                    if (((GradientHeaderActivity) TONIntroActivity.this).listView.getHeight() - ((View) TONIntroActivity.this.transactionsLayout.getParent()).getBottom() >= 0) {
                        iArr[1] = i4;
                        currentListView.scrollBy(0, i4);
                    }
                }
            } catch (Throwable th) {
                FileLog.m1136e(th);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TON.TONIntroActivity$NestedFrameLayout$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onNestedScroll$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNestedScroll$0() {
            try {
                RecyclerListView currentListView = TONIntroActivity.this.transactionsLayout.getCurrentListView();
                if (currentListView == null || currentListView.getAdapter() == null) {
                    return;
                }
                currentListView.getAdapter().notifyDataSetChanged();
            } catch (Throwable unused) {
            }
        }

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, android.view.ViewGroup, android.view.ViewParent
        public boolean onNestedPreFling(View view, float f, float f2) {
            return super.onNestedPreFling(view, f, f2);
        }

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            if (view == ((GradientHeaderActivity) TONIntroActivity.this).listView && TONIntroActivity.this.transactionsLayout.isAttachedToWindow()) {
                boolean zIsSearchFieldVisible = ((BaseFragment) TONIntroActivity.this).actionBar.isSearchFieldVisible();
                int top = (((View) TONIntroActivity.this.transactionsLayout.getParent()).getTop() - AndroidUtilities.statusBarHeight) - ActionBar.getCurrentActionBarHeight();
                int bottom = ((View) TONIntroActivity.this.transactionsLayout.getParent()).getBottom();
                boolean z = false;
                if (i2 < 0) {
                    if (((GradientHeaderActivity) TONIntroActivity.this).listView.getHeight() - bottom >= 0) {
                        RecyclerListView currentListView = TONIntroActivity.this.transactionsLayout.getCurrentListView();
                        int iFindFirstVisibleItemPosition = ((LinearLayoutManager) currentListView.getLayoutManager()).findFirstVisibleItemPosition();
                        if (iFindFirstVisibleItemPosition != -1) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = currentListView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                            int top2 = viewHolderFindViewHolderForAdapterPosition != null ? viewHolderFindViewHolderForAdapterPosition.itemView.getTop() : -1;
                            int paddingTop = currentListView.getPaddingTop();
                            if (top2 != paddingTop || iFindFirstVisibleItemPosition != 0) {
                                iArr[1] = iFindFirstVisibleItemPosition != 0 ? i2 : Math.max(i2, top2 - paddingTop);
                                currentListView.scrollBy(0, i2);
                                z = true;
                            }
                        }
                    }
                    if (zIsSearchFieldVisible) {
                        if (!z && top < 0) {
                            iArr[1] = i2 - Math.max(top, i2);
                            return;
                        } else {
                            iArr[1] = i2;
                            return;
                        }
                    }
                    return;
                }
                if (zIsSearchFieldVisible) {
                    RecyclerListView currentListView2 = TONIntroActivity.this.transactionsLayout.getCurrentListView();
                    iArr[1] = i2;
                    if (top > 0) {
                        iArr[1] = 0;
                    }
                    if (currentListView2 == null || (i4 = iArr[1]) <= 0) {
                        return;
                    }
                    currentListView2.scrollBy(0, i4);
                    return;
                }
                if (i2 > 0) {
                    RecyclerListView currentListView3 = TONIntroActivity.this.transactionsLayout.getCurrentListView();
                    if (((GradientHeaderActivity) TONIntroActivity.this).listView.getHeight() - bottom < 0 || currentListView3 == null || currentListView3.canScrollVertically(1)) {
                        return;
                    }
                    iArr[1] = i2;
                    ((GradientHeaderActivity) TONIntroActivity.this).listView.stopScroll();
                }
            }
        }

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
            this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        }

        @Override // org.telegram.p029ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onStopNestedScroll(View view, int i) {
            this.nestedScrollingParentHelper.onStopNestedScroll(view);
        }
    }

    public boolean attachedTransactionsLayout() {
        StarsIntroActivity.StarsTransactionsLayout starsTransactionsLayout = this.transactionsLayout;
        if (starsTransactionsLayout != null && (starsTransactionsLayout.getParent() instanceof View)) {
            if (this.listView.getHeight() - ((View) this.transactionsLayout.getParent()).getBottom() >= 0) {
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity
    protected boolean drawActionBarShadow() {
        return !attachedTransactionsLayout();
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity
    public StarParticlesView createParticlesView() {
        return makeParticlesView(getContext(), 75, 1);
    }

    /* JADX INFO: renamed from: org.telegram.ui.TON.TONIntroActivity$4 */
    class C71954 extends StarParticlesView {
        Paint[] paints;
        final /* synthetic */ int val$particlesCount;
        final /* synthetic */ int val$type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C71954(Context context, int i, int i2) {
            super(context);
            this.val$particlesCount = i;
            this.val$type = i2;
            setClipWithGradient();
        }

        @Override // org.telegram.p029ui.Components.Premium.StarParticlesView
        protected void configure() {
            StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(this.val$particlesCount);
            this.drawable = drawable;
            drawable.type = 106;
            int i = 0;
            drawable.roundEffect = false;
            drawable.useRotate = false;
            drawable.useBlur = true;
            drawable.checkBounds = true;
            drawable.isCircle = false;
            drawable.useScale = true;
            drawable.startFromCenter = true;
            if (this.val$type == 1) {
                drawable.centerOffsetY = AndroidUtilities.m1124dp(24.0f);
            }
            this.paints = new Paint[20];
            while (true) {
                Paint[] paintArr = this.paints;
                if (i < paintArr.length) {
                    paintArr[i] = new Paint(1);
                    this.paints[i].setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-13729319, -14238726, i / (this.paints.length - 1)), PorterDuff.Mode.SRC_IN));
                    i++;
                } else {
                    this.drawable.getPaint = new Utilities.CallbackReturn() { // from class: org.telegram.ui.TON.TONIntroActivity$4$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.CallbackReturn
                        public final Object run(Object obj) {
                            return this.f$0.lambda$configure$0((Integer) obj);
                        }
                    };
                    StarParticlesView.Drawable drawable2 = this.drawable;
                    drawable2.size1 = 17;
                    drawable2.size2 = 18;
                    drawable2.size3 = 19;
                    drawable2.colorKey = Theme.key_windowBackgroundWhiteBlackText;
                    drawable2.init();
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Paint lambda$configure$0(Integer num) {
            return this.paints[num.intValue() % this.paints.length];
        }

        @Override // org.telegram.p029ui.Components.Premium.StarParticlesView
        protected int getStarsRectWidth() {
            return getMeasuredWidth();
        }
    }

    public static StarParticlesView makeParticlesView(Context context, int i, int i2) {
        return new C71954(context, i, i2);
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setPaused(false);
            this.iconTextureView.setDialogVisible(false);
        }
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setPaused(true);
            this.iconTextureView.setDialogVisible(true);
        }
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity
    protected View getHeader(Context context) {
        return super.getHeader(context);
    }

    @Override // org.telegram.p029ui.GradientHeaderActivity
    protected RecyclerView.Adapter createAdapter() {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.listView, getContext(), this.currentAccount, this.classGuid, true, new Utilities.Callback2() { // from class: org.telegram.ui.TON.TONIntroActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, getResourceProvider()) { // from class: org.telegram.ui.TON.TONIntroActivity.5
            @Override // org.telegram.p029ui.Components.UniversalAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                if (i == 42) {
                    HeaderCell headerCell = new HeaderCell(TONIntroActivity.this.getContext(), Theme.key_windowBackgroundWhiteBlueHeader, 21, 0, false, ((BaseFragment) TONIntroActivity.this).resourceProvider);
                    headerCell.setHeight(25);
                    return new RecyclerListView.Holder(headerCell);
                }
                return super.onCreateViewHolder(viewGroup, i);
            }
        };
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (getContext() == null) {
            return;
        }
        StarsController tonInstance = StarsController.getTonInstance(this.currentAccount);
        arrayList.add(UItem.asFullyCustom(getHeader(getContext())));
        arrayList.add(UItem.asCustom(this.balanceLayout));
        if (this.allowTopUp) {
            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.TopUpViaFragmentInfo)));
        }
        boolean zHasTransactions = tonInstance.hasTransactions();
        this.hadTransactions = zHasTransactions;
        if (zHasTransactions) {
            if (!this.allowTopUp) {
                arrayList.add(UItem.asShadow(null));
            }
            arrayList.add(UItem.asFullscreenCustom(this.transactionsLayout, ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.m1124dp(12.0f)));
            return;
        }
        arrayList.add(UItem.asCustom(this.emptyLayout));
    }

    public void onItemClick(UItem uItem, int i) {
        int i2 = uItem.f2105id;
        if (i2 == -1) {
            this.expanded = !this.expanded;
            this.adapter.update(true);
            return;
        }
        if (i2 == -2) {
            StarsController.getTonInstance(this.currentAccount).getGiftOptions();
            UserSelectorBottomSheet.open(1, 0L, BirthdayController.getInstance(this.currentAccount).getState());
        } else if (i2 == -3) {
            StarsController.getTonInstance(this.currentAccount).loadSubscriptions();
            this.adapter.update(true);
        } else if (i2 == -4) {
            if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                AccountFrozenAlert.show(this.currentAccount);
            } else {
                presentFragment(new ChannelAffiliateProgramsFragment(getUserConfig().getClientUserId()));
            }
        }
    }

    public static class StarsNeededSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
        private UniversalAdapter adapter;
        private final FrameLayout footerView;
        private final HeaderView headerView;
        private final AmountUtils$Amount requiredAmount;
        private final ButtonWithCounterView topUpButton;
        private Runnable whenPurchased;

        public void onItemClick(UItem uItem, UniversalAdapter universalAdapter) {
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            Runnable runnable;
            if (i == NotificationCenter.starOptionsLoaded || i == NotificationCenter.starBalanceUpdated) {
                UniversalAdapter universalAdapter = this.adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                }
                AmountUtils$Amount balanceAmount = StarsController.getTonInstance(this.currentAccount).getBalanceAmount();
                this.headerView.titleView.setText(LocaleController.formatString(C2888R.string.TonNeededTitle, AmountUtils$Amount.fromNano(this.requiredAmount.asNano() - balanceAmount.asNano(), AmountUtils$Currency.TON).asFormatString()));
                ActionBar actionBar = this.actionBar;
                if (actionBar != null) {
                    actionBar.setTitle(getTitle());
                }
                if (balanceAmount.asNano() < this.requiredAmount.asNano() || (runnable = this.whenPurchased) == null) {
                    return;
                }
                runnable.run();
                this.whenPurchased = null;
                lambda$new$0();
            }
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
        public void show() {
            if (StarsController.getTonInstance(this.currentAccount).getBalanceAmount().asNano() >= this.requiredAmount.asNano()) {
                Runnable runnable = this.whenPurchased;
                if (runnable != null) {
                    runnable.run();
                    this.whenPurchased = null;
                    return;
                }
                return;
            }
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) lastFragment;
                if (chatActivity.isKeyboardVisible() && chatActivity.getChatActivityEnterView() != null) {
                    chatActivity.getChatActivityEnterView().closeKeyboard();
                }
            }
            super.show();
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starOptionsLoaded);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starBalanceUpdated);
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet
        public void dismissInternal() {
            super.dismissInternal();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starOptionsLoaded);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starBalanceUpdated);
        }

        public StarsNeededSheet(Context context, Theme.ResourcesProvider resourcesProvider, AmountUtils$Amount amountUtils$Amount, boolean z, Runnable runnable) {
            super(context, null, false, false, false, resourcesProvider);
            this.topPadding = 0.2f;
            this.whenPurchased = runnable;
            fixNavigationBar();
            RecyclerListView recyclerListView = this.recyclerListView;
            int i = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i, 0, i, 0);
            this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.TON.TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i2) {
                    this.f$0.lambda$new$0(view, i2);
                }
            });
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
            defaultItemAnimator.setSupportsChangeAnimations(false);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDurations(350L);
            this.recyclerListView.setItemAnimator(defaultItemAnimator);
            setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            this.requiredAmount = amountUtils$Amount;
            HeaderView headerView = new HeaderView(context, this.currentAccount, resourcesProvider);
            this.headerView = headerView;
            headerView.titleView.setText(LocaleController.formatString(C2888R.string.TonNeededTitle, AmountUtils$Amount.fromNano(amountUtils$Amount.asNano() - StarsController.getTonInstance(this.currentAccount).getBalanceAmount().asNano(), AmountUtils$Currency.TON).asFormatString()));
            headerView.subtitleView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.FragmentAddFunds)));
            TextView textView = headerView.subtitleView;
            textView.setMaxWidth(HintView2.cutInFancyHalf(textView.getText(), headerView.subtitleView.getPaint()));
            this.actionBar.setTitle(getTitle());
            FrameLayout frameLayout = new FrameLayout(context);
            this.footerView = frameLayout;
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), getResourcesProvider());
            this.topUpButton = buttonWithCounterView;
            frameLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 17, 20, 10, 20, 20));
            if (z || TONIntroActivity.allowTopUp()) {
                buttonWithCounterView.setText(LocaleController.getString(C2888R.string.TopUpViaFragment), false);
                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TON.TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$1(view);
                    }
                });
            } else {
                buttonWithCounterView.setText(LocaleController.getString(C2888R.string.Close), false);
                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TON.TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$2(view);
                    }
                });
            }
            UniversalAdapter universalAdapter = this.adapter;
            if (universalAdapter != null) {
                universalAdapter.update(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i) {
            UItem item;
            UniversalAdapter universalAdapter = this.adapter;
            if (universalAdapter == null || (item = universalAdapter.getItem(i - 1)) == null) {
                return;
            }
            onItemClick(item, this.adapter);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            Browser.openUrlInSystemBrowser(getContext(), LocaleController.getString(C2888R.string.TopUpViaFragmentLink));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            lambda$new$0();
        }

        @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
        protected CharSequence getTitle() {
            HeaderView headerView = this.headerView;
            if (headerView == null) {
                return null;
            }
            return headerView.titleView.getText();
        }

        @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
        protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
            UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.TON.TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, this.resourcesProvider);
            this.adapter = universalAdapter;
            return universalAdapter;
        }

        public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
            arrayList.add(UItem.asCustom(this.headerView));
            arrayList.add(UItem.asCustom(this.footerView));
        }

        @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        /* JADX INFO: renamed from: dismiss */
        public void lambda$new$0() {
            super.lambda$new$0();
            HeaderView headerView = this.headerView;
            if (headerView != null) {
                headerView.iconView.setPaused(true);
            }
        }

        public static class HeaderView extends LinearLayout {
            public final GLIconTextureView iconView;
            public final StarParticlesView particlesView;
            public final TextView subtitleView;
            public final TextView titleView;
            private final FrameLayout topView;

            public HeaderView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
                super(context);
                setOrientation(1);
                FrameLayout frameLayout = new FrameLayout(context);
                this.topView = frameLayout;
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                StarParticlesView starParticlesViewMakeParticlesView = TONIntroActivity.makeParticlesView(context, 70, 0);
                this.particlesView = starParticlesViewMakeParticlesView;
                frameLayout.addView(starParticlesViewMakeParticlesView, LayoutHelper.createFrame(-1, -1.0f));
                GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 4);
                this.iconView = gLIconTextureView;
                GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
                gLIconRenderer.colorKey1 = Theme.key_starsGradient1;
                gLIconRenderer.colorKey2 = Theme.key_starsGradient2;
                gLIconRenderer.updateColors();
                gLIconTextureView.setStarParticlesView(starParticlesViewMakeParticlesView);
                frameLayout.addView(gLIconTextureView, LayoutHelper.createFrame(170, 170.0f, 17, 0.0f, 32.0f, 0.0f, 24.0f));
                gLIconTextureView.setPaused(false);
                addView(frameLayout, LayoutHelper.createFrame(-1, 180.0f));
                TextView textView = new TextView(context);
                this.titleView = textView;
                textView.setTextSize(1, 20.0f);
                textView.setTypeface(AndroidUtilities.bold());
                int i2 = Theme.key_dialogTextBlack;
                textView.setTextColor(Theme.getColor(i2, resourcesProvider));
                textView.setGravity(17);
                addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 2, 0, 0));
                TextView textView2 = new TextView(context);
                this.subtitleView = textView2;
                textView2.setTextSize(1, 14.0f);
                textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
                textView2.setGravity(17);
                addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 0, 9, 0, 18));
            }
        }
    }
}
