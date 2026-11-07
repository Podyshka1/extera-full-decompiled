package org.telegram.ui.Stars;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ReplacementSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.google.android.gms.cast.CredentialsData;
import com.google.android.material.navigation.NavigationBarView;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import kotlin.text.Typography;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_payments;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.AccountFrozenAlert;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda16;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.SessionCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.ChatEditActivity;
import org.telegram.ui.ChatUsersActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ButtonSpan;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.FireworksOverlay;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingSpan;
import org.telegram.ui.Components.OutlineTextContainerView;
import org.telegram.ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.ui.Components.Premium.StarParticlesView;
import org.telegram.ui.Components.Premium.boosts.UserSelectorBottomSheet;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.StarAppsSheet;
import org.telegram.ui.Components.TableView;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.spoilers.SpoilerEffect2;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.GradientHeaderActivity;
import org.telegram.ui.ImageReceiverSpan;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.PostSuggestionsEditActivity;
import org.telegram.ui.PrivacyControlActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.bots.AffiliateProgramFragment;
import org.telegram.ui.bots.ChannelAffiliateProgramsFragment;

/* JADX INFO: loaded from: classes7.dex */
public class StarsIntroActivity extends GradientHeaderActivity implements NotificationCenter.NotificationCenterDelegate {
    private static DecimalFormat floatFormat;
    public static DecimalFormat floatFormat2;
    private FrameLayout aboveTitleView;
    private UniversalAdapter adapter;
    private LinearLayout balanceLayout;
    private ButtonWithCounterView buyButton;
    private View emptyLayout;
    private FireworksOverlay fireworksOverlay;
    private ButtonWithCounterView giftButton;
    private boolean hadTransactions;
    private GLIconTextureView iconTextureView;
    private FrameLayout oneButtonsLayout;
    private SpannableStringBuilder starBalanceIcon;
    private AnimatedTextView starBalanceTextView;
    private TextView starBalanceTitleView;
    private ButtonWithCounterView topupButton;
    private StarsTransactionsLayout transactionsLayout;
    private boolean twoButtons;
    private LinearLayout twoButtonsLayout;
    private ButtonWithCounterView withdrawButton;
    private boolean expanded = false;
    private final int BUTTON_EXPAND = -1;
    private final int BUTTON_GIFT = -2;
    private final int BUTTON_SUBSCRIPTIONS_EXPAND = -3;
    private final int BUTTON_AFFILIATE = -4;

    public StarsIntroActivity() {
        setWhiteBackground(true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starOptionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starBalanceUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starTransactionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starSubscriptionsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.botStarsUpdated);
        StarsController.getInstance(this.currentAccount).invalidateTransactions(true);
        StarsController.getInstance(this.currentAccount).invalidateSubscriptions(true);
        StarsController.getInstance(this.currentAccount).getOptions();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
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
            StarsController starsController = StarsController.getInstance(this.currentAccount);
            if (this.hadTransactions != starsController.hasTransactions()) {
                this.hadTransactions = starsController.hasTransactions();
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

    @Override // org.telegram.ui.GradientHeaderActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus;
        this.useFillLastLayoutManager = false;
        this.particlesViewHeight = AndroidUtilities.dp(238.0f);
        this.transactionsLayout = new StarsTransactionsLayout(context, this.currentAccount, false, 0L, getClassGuid(), getResourceProvider());
        this.emptyLayout = new View(context) { // from class: org.telegram.ui.Stars.StarsIntroActivity.1
            @Override // android.view.View
            public void onMeasure(int i, int i2) {
                int measuredHeight;
                StarsIntroActivity starsIntroActivity = StarsIntroActivity.this;
                if (starsIntroActivity.isLandscapeMode) {
                    measuredHeight = (starsIntroActivity.statusBarHeight + ((BaseFragment) starsIntroActivity).actionBar.getMeasuredHeight()) - AndroidUtilities.dp(16.0f);
                } else {
                    int iDp = AndroidUtilities.dp(140.0f);
                    StarsIntroActivity starsIntroActivity2 = StarsIntroActivity.this;
                    int measuredHeight2 = iDp + starsIntroActivity2.statusBarHeight;
                    if (starsIntroActivity2.backgroundView.getMeasuredHeight() + AndroidUtilities.dp(24.0f) > measuredHeight2) {
                        measuredHeight2 = StarsIntroActivity.this.backgroundView.getMeasuredHeight() + AndroidUtilities.dp(24.0f);
                    }
                    measuredHeight = measuredHeight2;
                }
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((int) (measuredHeight - (((GradientHeaderActivity) StarsIntroActivity.this).yOffset * 2.5f)), TLObject.FLAG_30));
            }
        };
        super.createView(context);
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isRightLayout()) {
            this.actionBar.setBackButtonImage(C2807R.drawable.ic_ab_close);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        this.aboveTitleView = frameLayout;
        frameLayout.setClickable(true);
        GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 2);
        this.iconTextureView = gLIconTextureView;
        GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
        gLIconRenderer.colorKey1 = Theme.key_starsGradient1;
        gLIconRenderer.colorKey2 = Theme.key_starsGradient2;
        gLIconRenderer.updateColors();
        this.iconTextureView.setStarParticlesView(this.particlesView);
        this.aboveTitleView.addView(this.iconTextureView, LayoutHelper.createFrame(190, 190.0f, 17, 0.0f, 12.0f, 0.0f, 24.0f));
        configureHeader(LocaleController.getString(C2807R.string.TelegramStars), AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.TelegramStarsInfo2), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda33
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
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda34
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$createView$1(view, i);
            }
        });
        FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
        this.fireworksOverlay = fireworksOverlay;
        this.contentView.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
        StarsController starsController = StarsController.getInstance(this.currentAccount);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.balanceLayout = linearLayout;
        linearLayout.setOrientation(1);
        this.balanceLayout.setPadding(0, AndroidUtilities.dp(24.0f), 0, AndroidUtilities.dp(10.0f));
        AnimatedTextView animatedTextView = new AnimatedTextView(getContext(), false, true, false);
        this.starBalanceTextView = animatedTextView;
        animatedTextView.setTypeface(AndroidUtilities.bold());
        this.starBalanceTextView.setTextSize(AndroidUtilities.dp(32.0f));
        this.starBalanceTextView.setGravity(17);
        this.starBalanceTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider));
        this.starBalanceIcon = new SpannableStringBuilder("S");
        ImageReceiverSpan imageReceiverSpan = new ImageReceiverSpan(this.starBalanceTextView, this.currentAccount, 42.0f);
        imageReceiverSpan.imageReceiver.setImageBitmap(new RLottieDrawable(C2807R.raw.star_reaction, AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f)));
        imageReceiverSpan.imageReceiver.setAutoRepeat(2);
        imageReceiverSpan.enableShadow(false);
        imageReceiverSpan.translate(-AndroidUtilities.dp(3.0f), 0.0f);
        this.starBalanceIcon.setSpan(imageReceiverSpan, 0, 1, 33);
        this.balanceLayout.addView(this.starBalanceTextView, LayoutHelper.createFrame(-1, 40.0f, 17, 24.0f, 0.0f, 24.0f, 0.0f));
        TextView textView = new TextView(getContext());
        this.starBalanceTitleView = textView;
        textView.setTextSize(1, 14.0f);
        this.starBalanceTitleView.setGravity(17);
        this.starBalanceTitleView.setText(LocaleController.getString(C2807R.string.YourStarsBalance));
        this.starBalanceTitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourceProvider));
        this.balanceLayout.addView(this.starBalanceTitleView, LayoutHelper.createFrame(-1, -2.0f, 17, 24.0f, 0.0f, 24.0f, 0.0f));
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        FrameLayout frameLayout3 = new FrameLayout(getContext()) { // from class: org.telegram.ui.Stars.StarsIntroActivity.2
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (StarsIntroActivity.this.twoButtons) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.oneButtonsLayout = frameLayout3;
        frameLayout2.addView(frameLayout3);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), this.resourceProvider);
        this.buyButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        this.buyButton.setText(_UrlKt.FRAGMENT_ENCODE_SET, false);
        this.buyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$2(context, view);
            }
        });
        this.oneButtonsLayout.addView(this.buyButton, LayoutHelper.createFrame(-1, 48, 119));
        LinearLayout linearLayout2 = new LinearLayout(getContext()) { // from class: org.telegram.ui.Stars.StarsIntroActivity.3
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (StarsIntroActivity.this.twoButtons) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.twoButtonsLayout = linearLayout2;
        frameLayout2.addView(linearLayout2);
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(getContext(), this.resourceProvider);
        this.topupButton = buttonWithCounterView2;
        buttonWithCounterView2.setRound();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x  ");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.mini_topup, 2), 0, 1, 33);
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.StarsTopUp));
        this.topupButton.setText(spannableStringBuilder, false);
        this.topupButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$3(context, view);
            }
        });
        this.twoButtonsLayout.addView(this.topupButton, LayoutHelper.createLinear(-1, 48, 17.0f, 1, 0, 0, 8, 0));
        ButtonWithCounterView buttonWithCounterView3 = new ButtonWithCounterView(getContext(), this.resourceProvider);
        this.withdrawButton = buttonWithCounterView3;
        buttonWithCounterView3.setRound();
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("x  ");
        spannableStringBuilder2.setSpan(new ColoredImageSpan(C2807R.drawable.mini_stats, 2), 0, 1, 33);
        spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2807R.string.StarsStats));
        this.withdrawButton.setText(spannableStringBuilder2, false);
        this.withdrawButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$4(view);
            }
        });
        this.twoButtonsLayout.addView(this.withdrawButton, LayoutHelper.createLinear(-1, 48, 17.0f, 1, 0, 0, 0, 0));
        this.balanceLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 48.0f, 17, 20.0f, 17.0f, 20.0f, 0.0f));
        ButtonWithCounterView buttonWithCounterView4 = new ButtonWithCounterView(getContext(), false, this.resourceProvider);
        this.giftButton = buttonWithCounterView4;
        buttonWithCounterView4.setRound();
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
        spannableStringBuilder3.append((CharSequence) "G  ");
        spannableStringBuilder3.setSpan(new ColoredImageSpan(C2807R.drawable.menu_stars_gift), 0, 1, 33);
        spannableStringBuilder3.append((CharSequence) LocaleController.getString(C2807R.string.TelegramStarsGift));
        this.giftButton.setText(spannableStringBuilder3, false);
        this.giftButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$5(view);
            }
        });
        this.balanceLayout.addView(this.giftButton, LayoutHelper.createFrame(-1, 48.0f, 17, 20.0f, 8.0f, 20.0f, 0.0f));
        updateBalance();
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        BotStarsController.getInstance(this.currentAccount).preloadStarsStats(getUserConfig().getClientUserId());
        TLRPC.TL_payments_starsRevenueStats starsRevenueStats = BotStarsController.getInstance(this.currentAccount).getStarsRevenueStats(getUserConfig().getClientUserId());
        updateButtonsLayouts(starsController.getBalance().amount > 0 && starsRevenueStats != null && (tL_starsRevenueStatus = starsRevenueStats.status) != null && tL_starsRevenueStatus.overall_revenue.positive(), false);
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
    public /* synthetic */ void lambda$createView$2(Context context, View view) {
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
        } else {
            new StarsOptionsSheet(context, this.resourceProvider).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(Context context, View view) {
        new StarsOptionsSheet(context, this.resourceProvider).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        presentFragment(new BotStarsActivity(0, getUserConfig().getClientUserId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        StarsController.getInstance(this.currentAccount).getGiftOptions();
        UserSelectorBottomSheet.open(1, 0L, BirthdayController.getInstance(this.currentAccount).getState());
    }

    private void updateBalance() {
        TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus;
        StarsController starsController = StarsController.getInstance(this.currentAccount);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.starBalanceIcon);
        spannableStringBuilder.append(formatStarsAmount(starsController.getBalance(), 0.66f, ' '));
        this.starBalanceTextView.setText(spannableStringBuilder);
        this.buyButton.setText(LocaleController.getString(starsController.getBalance().amount > 0 ? C2807R.string.StarsBuyMore : C2807R.string.StarsBuy), true);
        TLRPC.TL_payments_starsRevenueStats starsRevenueStats = BotStarsController.getInstance(this.currentAccount).getStarsRevenueStats(getUserConfig().getClientUserId());
        updateButtonsLayouts((starsRevenueStats == null || (tL_starsRevenueStatus = starsRevenueStats.status) == null || !tL_starsRevenueStatus.overall_revenue.positive()) ? false : true, true);
    }

    private void updateButtonsLayouts(final boolean z, boolean z2) {
        this.twoButtons = z;
        FrameLayout frameLayout = this.oneButtonsLayout;
        if (z2) {
            frameLayout.setVisibility(0);
            this.twoButtonsLayout.setVisibility(0);
            this.oneButtonsLayout.animate().alpha(z ? 0.0f : 1.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateButtonsLayouts$6(z);
                }
            }).start();
            this.twoButtonsLayout.animate().alpha(z ? 1.0f : 0.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateButtonsLayouts$7(z);
                }
            }).start();
            return;
        }
        frameLayout.animate().cancel();
        this.twoButtonsLayout.animate().cancel();
        this.twoButtonsLayout.setAlpha(z ? 1.0f : 0.0f);
        this.oneButtonsLayout.setAlpha(z ? 0.0f : 1.0f);
        this.twoButtonsLayout.setVisibility(z ? 0 : 8);
        this.oneButtonsLayout.setVisibility(z ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonsLayouts$6(boolean z) {
        if (z) {
            this.oneButtonsLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonsLayouts$7(boolean z) {
        if (z) {
            return;
        }
        this.twoButtonsLayout.setVisibility(8);
    }

    @Override // org.telegram.ui.GradientHeaderActivity
    public GradientHeaderActivity.ContentView createContentView() {
        return new NestedFrameLayout(getContext());
    }

    public class NestedFrameLayout extends GradientHeaderActivity.ContentView implements NestedScrollingParent3 {
        private NestedScrollingParentHelper nestedScrollingParentHelper;

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        }

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
            return i == 2;
        }

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, android.view.ViewGroup, android.view.ViewParent
        public void onStopNestedScroll(View view) {
        }

        public NestedFrameLayout(Context context) {
            super(context);
            this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        }

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent3
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            try {
                if (view == ((GradientHeaderActivity) StarsIntroActivity.this).listView && StarsIntroActivity.this.transactionsLayout.isAttachedToWindow()) {
                    RecyclerListView currentListView = StarsIntroActivity.this.transactionsLayout.getCurrentListView();
                    if ((((GradientHeaderActivity) StarsIntroActivity.this).listView.getHeight() - ((GradientHeaderActivity) StarsIntroActivity.this).listView.getPaddingBottom()) - ((View) StarsIntroActivity.this.transactionsLayout.getParent()).getBottom() >= 0) {
                        iArr[1] = i4;
                        currentListView.scrollBy(0, i4);
                    }
                }
            } catch (Throwable th) {
                FileLog.m1040e(th);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$NestedFrameLayout$$ExternalSyntheticLambda0
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
                RecyclerListView currentListView = StarsIntroActivity.this.transactionsLayout.getCurrentListView();
                if (currentListView == null || currentListView.getAdapter() == null) {
                    return;
                }
                currentListView.getAdapter().notifyDataSetChanged();
            } catch (Throwable unused) {
            }
        }

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, android.view.ViewGroup, android.view.ViewParent
        public boolean onNestedPreFling(View view, float f, float f2) {
            return super.onNestedPreFling(view, f, f2);
        }

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            if (view == ((GradientHeaderActivity) StarsIntroActivity.this).listView && StarsIntroActivity.this.transactionsLayout.isAttachedToWindow()) {
                boolean zIsSearchFieldVisible = ((BaseFragment) StarsIntroActivity.this).actionBar.isSearchFieldVisible();
                int top = (((View) StarsIntroActivity.this.transactionsLayout.getParent()).getTop() - AndroidUtilities.statusBarHeight) - ActionBar.getCurrentActionBarHeight();
                int bottom = ((View) StarsIntroActivity.this.transactionsLayout.getParent()).getBottom();
                boolean z = false;
                if (i2 < 0) {
                    if ((((GradientHeaderActivity) StarsIntroActivity.this).listView.getHeight() - ((GradientHeaderActivity) StarsIntroActivity.this).listView.getPaddingBottom()) - bottom >= 0) {
                        RecyclerListView currentListView = StarsIntroActivity.this.transactionsLayout.getCurrentListView();
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
                    RecyclerListView currentListView2 = StarsIntroActivity.this.transactionsLayout.getCurrentListView();
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
                    RecyclerListView currentListView3 = StarsIntroActivity.this.transactionsLayout.getCurrentListView();
                    if ((((GradientHeaderActivity) StarsIntroActivity.this).listView.getHeight() - ((GradientHeaderActivity) StarsIntroActivity.this).listView.getPaddingBottom()) - bottom < 0 || currentListView3 == null || currentListView3.canScrollVertically(1)) {
                        return;
                    }
                    iArr[1] = i2;
                    ((GradientHeaderActivity) StarsIntroActivity.this).listView.stopScroll();
                }
            }
        }

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
            this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        }

        @Override // org.telegram.ui.Components.NestedSizeNotifierLayout, androidx.core.view.NestedScrollingParent2
        public void onStopNestedScroll(View view, int i) {
            this.nestedScrollingParentHelper.onStopNestedScroll(view);
        }
    }

    public boolean attachedTransactionsLayout() {
        StarsTransactionsLayout starsTransactionsLayout = this.transactionsLayout;
        if (starsTransactionsLayout != null && (starsTransactionsLayout.getParent() instanceof View)) {
            if ((this.listView.getHeight() - this.listView.getPaddingBottom()) - ((View) this.transactionsLayout.getParent()).getBottom() >= 0) {
                return true;
            }
        }
        return false;
    }

    @Override // org.telegram.ui.GradientHeaderActivity
    public boolean drawActionBarShadow() {
        return !attachedTransactionsLayout();
    }

    @Override // org.telegram.ui.GradientHeaderActivity
    public StarParticlesView createParticlesView() {
        return makeParticlesView(getContext(), 75, 1);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stars.StarsIntroActivity$4 */
    public class C59734 extends StarParticlesView {
        Paint[] paints;
        final /* synthetic */ int val$particlesCount;
        final /* synthetic */ int val$type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C59734(Context context, int i, int i2) {
            super(context);
            this.val$particlesCount = i;
            this.val$type = i2;
            setClipWithGradient();
        }

        @Override // org.telegram.ui.Components.Premium.StarParticlesView
        public void configure() {
            int iBlendARGB;
            float f;
            int i;
            int i2;
            StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(this.val$particlesCount);
            this.drawable = drawable;
            drawable.type = 105;
            int i3 = 0;
            drawable.roundEffect = false;
            drawable.useRotate = false;
            drawable.useBlur = true;
            drawable.checkBounds = true;
            drawable.isCircle = false;
            drawable.useScale = true;
            drawable.startFromCenter = true;
            if (this.val$type == 1) {
                drawable.centerOffsetY = AndroidUtilities.dp(24.0f);
            }
            this.paints = new Paint[this.val$type == 2 ? 40 : 20];
            while (true) {
                Paint[] paintArr = this.paints;
                if (i3 >= paintArr.length) {
                    break;
                }
                paintArr[i3] = new Paint(1);
                if (this.val$type == 2) {
                    if (i3 >= 20) {
                        f = (i3 - 20) / 19.0f;
                        i = -1005568;
                        i2 = -2062336;
                    } else if (i3 % 5 == 0) {
                        iBlendARGB = -2340;
                    } else {
                        f = i3 / 19.0f;
                        i = -10645;
                        i2 = -20165;
                    }
                    iBlendARGB = ColorUtils.blendARGB(i, i2, f);
                } else {
                    iBlendARGB = ColorUtils.blendARGB(-371690, -14281, i3 / (this.paints.length - 1));
                }
                this.paints[i3].setColorFilter(new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.SRC_IN));
                i3++;
            }
            this.drawable.getPaint = new Utilities.CallbackReturn() { // from class: org.telegram.ui.Stars.StarsIntroActivity$4$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return this.f$0.lambda$configure$0((Integer) obj);
                }
            };
            StarParticlesView.Drawable drawable2 = this.drawable;
            drawable2.size1 = 17;
            drawable2.size2 = 18;
            drawable2.size3 = 19;
            if (this.val$type == 2) {
                drawable2.goldGlitter = true;
                drawable2.size1 = 9;
                drawable2.size2 = 11;
                drawable2.size3 = 13;
                drawable2.speedScale = 1.6f;
                drawable2.minLifeTime = 1400L;
                drawable2.randLifeTime = 1600;
                drawable2.forceMaxAlpha = true;
            }
            drawable2.colorKey = Theme.key_windowBackgroundWhiteBlackText;
            drawable2.init();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Paint lambda$configure$0(Integer num) {
            return this.paints[num.intValue() % this.paints.length];
        }

        @Override // org.telegram.ui.Components.Premium.StarParticlesView
        public int getStarsRectWidth() {
            return getMeasuredWidth();
        }
    }

    public static StarParticlesView makeParticlesView(Context context, int i, int i2) {
        return new C59734(context, i, i2);
    }

    @Override // org.telegram.ui.GradientHeaderActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setPaused(false);
            this.iconTextureView.setDialogVisible(false);
        }
    }

    @Override // org.telegram.ui.GradientHeaderActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        GLIconTextureView gLIconTextureView = this.iconTextureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setPaused(true);
            this.iconTextureView.setDialogVisible(true);
        }
    }

    @Override // org.telegram.ui.GradientHeaderActivity
    public View getHeader(Context context) {
        return super.getHeader(context);
    }

    @Override // org.telegram.ui.GradientHeaderActivity
    public RecyclerView.Adapter<?> createAdapter() {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.listView, getContext(), this.currentAccount, this.classGuid, true, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda67
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, getResourceProvider()) { // from class: org.telegram.ui.Stars.StarsIntroActivity.5
            @Override // org.telegram.ui.Components.UniversalAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                if (i == 42) {
                    HeaderCell headerCell = new HeaderCell(StarsIntroActivity.this.getContext(), Theme.key_windowBackgroundWhiteBlueHeader, 21, 0, false, ((BaseFragment) StarsIntroActivity.this).resourceProvider);
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

    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        if (getContext() == null) {
            return;
        }
        StarsController starsController = StarsController.getInstance(this.currentAccount);
        arrayList.add(UItem.asFullyCustom(getHeader(getContext())));
        arrayList.add(UItem.asCustom(this.balanceLayout));
        ButtonWithCounterView buttonWithCounterView = this.giftButton;
        if (buttonWithCounterView != null) {
            buttonWithCounterView.setVisibility(getMessagesController().starsGiftsEnabled ? 0 : 8);
        }
        arrayList.add(UItem.asShadow(null));
        if (getMessagesController().starrefConnectAllowed) {
            arrayList.add(AffiliateProgramFragment.ColorfulTextCell.Factory.as(-4, getThemedColor(Theme.key_color_green), C2807R.drawable.filled_earn_stars, ChatEditActivity.applyNewSpan(LocaleController.getString(C2807R.string.UserAffiliateProgramRowTitle)), LocaleController.getString(C2807R.string.UserAffiliateProgramRowText)));
            arrayList.add(UItem.asShadow(null));
        }
        if (starsController.hasSubscriptions()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.StarMySubscriptions)));
            for (int i = 0; i < starsController.subscriptions.size(); i++) {
                arrayList.add(StarsSubscriptionView.Factory.asSubscription(starsController.subscriptions.get(i)));
            }
            if (starsController.isLoadingSubscriptions()) {
                arrayList.add(UItem.asFlicker(arrayList.size(), 33));
            } else if (!starsController.didFullyLoadSubscriptions()) {
                arrayList.add(UItem.asButton(-3, C2807R.drawable.arrow_more, LocaleController.getString(C2807R.string.StarMySubscriptionsExpand)).accent());
            }
            arrayList.add(UItem.asShadow(null));
        }
        boolean zHasTransactions = starsController.hasTransactions();
        this.hadTransactions = zHasTransactions;
        if (zHasTransactions) {
            arrayList.add(UItem.asFullscreenCustom(this.transactionsLayout, ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.dp(24.0f) + AndroidUtilities.navigationBarHeight));
        } else {
            arrayList.add(UItem.asCustomShadow(this.emptyLayout));
        }
    }

    public void onItemClick(final UItem uItem, int i) {
        int i2 = uItem.id;
        if (i2 == -1) {
            this.expanded = !this.expanded;
            this.adapter.update(true);
            return;
        }
        if (i2 == -2) {
            StarsController.getInstance(this.currentAccount).getGiftOptions();
            UserSelectorBottomSheet.open(1, 0L, BirthdayController.getInstance(this.currentAccount).getState());
            return;
        }
        if (i2 == -3) {
            StarsController.getInstance(this.currentAccount).loadSubscriptions();
            this.adapter.update(true);
            return;
        }
        if (i2 == -4) {
            if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                AccountFrozenAlert.show(this.currentAccount);
                return;
            } else {
                presentFragment(new ChannelAffiliateProgramsFragment(getUserConfig().getClientUserId()));
                return;
            }
        }
        if (uItem.instanceOf(StarTierView.Factory.class)) {
            if (uItem.object instanceof TL_stars.TL_starsTopupOption) {
                StarsController.getInstance(this.currentAccount).buy(getParentActivity(), (TL_stars.TL_starsTopupOption) uItem.object, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda53
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onItemClick$8(uItem, (Boolean) obj, (String) obj2);
                    }
                }, null);
            }
        } else if (uItem.instanceOf(StarsSubscriptionView.Factory.class) && (uItem.object instanceof TL_stars.StarsSubscription)) {
            showSubscriptionSheet(getContext(), this.currentAccount, (TL_stars.StarsSubscription) uItem.object, getResourceProvider());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$8(UItem uItem, Boolean bool, String str) {
        if (getContext() == null) {
            return;
        }
        if (bool.booleanValue()) {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.stars_topup, LocaleController.getString(C2807R.string.StarsAcquired), AndroidUtilities.replaceTags(LocaleController.formatPluralString("StarsAcquiredInfo", (int) uItem.longValue, new Object[0]))).show();
            this.fireworksOverlay.start(true);
            StarsController.getInstance(this.currentAccount).invalidateTransactions(true);
        } else if (str != null) {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, str)).show();
        }
    }

    public static class StarsBalanceView extends LinearLayout implements NotificationCenter.NotificationCenterDelegate {
        private final AnimatedTextView amountTextView;
        private ValueAnimator bounceAnimator;
        private final int currentAccount;
        private long dialogId;
        private final TextView headerTextView;
        public long lastBalance;
        private SpannableString loadingString;
        private final ColoredImageSpan[] ref;
        private final ColoredImageSpan[] refTon;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean withTon;

        public StarsBalanceView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.lastBalance = -1L;
            this.ref = new ColoredImageSpan[1];
            this.refTon = new ColoredImageSpan[1];
            this.resourcesProvider = resourcesProvider;
            this.currentAccount = i;
            this.dialogId = UserConfig.getInstance(i).getClientUserId();
            setOrientation(1);
            setGravity(21);
            TextView textView = new TextView(context);
            this.headerTextView = textView;
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView.setTextSize(1, 13.0f);
            textView.setText(LocaleController.getString(C2807R.string.StarsBalance));
            textView.setGravity(5);
            textView.setTypeface(AndroidUtilities.bold());
            addView(textView, LayoutHelper.createLinear(-2, -2, 5));
            final Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.star_small_inner).mutate();
            AnimatedTextView animatedTextView = new AnimatedTextView(context) { // from class: org.telegram.ui.Stars.StarsIntroActivity.StarsBalanceView.1
                @Override // android.view.View
                public void dispatchDraw(Canvas canvas) {
                    if (!StarsBalanceView.this.withTon) {
                        int measuredWidth = (int) ((getMeasuredWidth() - getDrawable().getCurrentWidth()) - AndroidUtilities.dp(20.0f));
                        drawableMutate.setBounds(measuredWidth, (getMeasuredHeight() - AndroidUtilities.dp(17.0f)) / 2, AndroidUtilities.dp(17.0f) + measuredWidth, (getMeasuredHeight() + AndroidUtilities.dp(17.0f)) / 2);
                        drawableMutate.draw(canvas);
                    }
                    super.dispatchDraw(canvas);
                }
            };
            this.amountTextView = animatedTextView;
            animatedTextView.adaptWidth = true;
            animatedTextView.getDrawable().setHacks(false, true, true);
            animatedTextView.setTypeface(AndroidUtilities.bold());
            animatedTextView.setTextColor(Theme.getColor(i2, resourcesProvider));
            animatedTextView.setTextSize(AndroidUtilities.dp(13.0f));
            animatedTextView.setGravity(5);
            animatedTextView.setPadding(AndroidUtilities.dp(19.0f), 0, 0, 0);
            addView(animatedTextView, LayoutHelper.createLinear(-2, 20, 5, 0, -2, 0, 0));
            updateBalance(false);
            setPadding(AndroidUtilities.dp(15.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(4.0f));
        }

        public void withTon() {
            this.withTon = true;
        }

        public void setDialogId(long j) {
            if (this.dialogId != j) {
                this.dialogId = j;
                updateBalance(true);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateBalance(false);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starBalanceUpdated);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.botStarsUpdated);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starBalanceUpdated);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.botStarsUpdated);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.starBalanceUpdated) {
                updateBalance(true);
            } else if (i == NotificationCenter.botStarsUpdated && ((Long) objArr[0]).longValue() == this.dialogId) {
                updateBalance(true);
            }
        }

        public void updateBalance(boolean z) {
            long j;
            boolean z2;
            TLRPC.TL_starsRevenueStatus tL_starsRevenueStatus;
            StarsController starsController = StarsController.getInstance(this.currentAccount);
            StarsController tonInstance = this.withTon ? StarsController.getTonInstance(this.currentAccount) : null;
            long j2 = 0;
            AmountUtils$Amount amountUtils$AmountFromNano = AmountUtils$Amount.fromNano(0L, AmountUtils$Currency.TON);
            this.amountTextView.cancelAnimation();
            if (this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                z2 = !starsController.balanceAvailable();
                j = starsController.getBalance().amount;
                if (tonInstance != null) {
                    z2 |= !tonInstance.balanceAvailable();
                    amountUtils$AmountFromNano = tonInstance.getBalanceAmount();
                }
            } else {
                TLRPC.TL_payments_starsRevenueStats starsRevenueStats = BotStarsController.getInstance(this.currentAccount).getStarsRevenueStats(this.dialogId);
                boolean z3 = starsRevenueStats == null || starsRevenueStats.status == null;
                if (starsRevenueStats != null && (tL_starsRevenueStatus = starsRevenueStats.status) != null) {
                    j2 = tL_starsRevenueStatus.current_balance.amount;
                }
                j = j2;
                z2 = z3;
            }
            long j3 = this.lastBalance;
            if (j > j3 && j3 != -1) {
                bounce();
            }
            if (z2) {
                if (this.loadingString == null) {
                    SpannableString spannableString = new SpannableString("x");
                    this.loadingString = spannableString;
                    spannableString.setSpan(new LoadingSpan(this.amountTextView, AndroidUtilities.dp(48.0f)), 0, this.loadingString.length(), 33);
                }
                this.amountTextView.setText(this.loadingString, z);
                this.lastBalance = -1L;
                return;
            }
            if (this.withTon) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (!amountUtils$AmountFromNano.isZero()) {
                    spannableStringBuilder.append((CharSequence) StarsIntroActivity.replaceStarsWithPlain(true, (CharSequence) ("⭐️" + amountUtils$AmountFromNano.asFormatString()), 0.62f, this.refTon));
                    ColoredImageSpan coloredImageSpan = this.refTon[0];
                    if (coloredImageSpan != null) {
                        coloredImageSpan.setColorKey(Theme.key_telegram_color_text);
                    }
                    spannableStringBuilder.append((CharSequence) "  ");
                }
                spannableStringBuilder.append((CharSequence) StarsIntroActivity.replaceStarsWithPlain("⭐️" + LocaleController.formatNumber(j, ' '), 0.62f, this.ref));
                this.amountTextView.setText(spannableStringBuilder);
            } else {
                this.amountTextView.setText(LocaleController.formatNumber(j, ' '));
            }
            this.lastBalance = j;
        }

        public void bounce() {
            ValueAnimator valueAnimator = this.bounceAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.9f, 1.0f);
            this.bounceAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsBalanceView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$bounce$0(valueAnimator2);
                }
            });
            this.bounceAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarsIntroActivity.StarsBalanceView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StarsBalanceView.this.amountTextView.setScaleX(1.0f);
                    StarsBalanceView.this.amountTextView.setScaleY(1.0f);
                }
            });
            this.bounceAnimator.setDuration(320L);
            this.bounceAnimator.setInterpolator(new OvershootInterpolator());
            this.bounceAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$bounce$0(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.amountTextView.setScaleX(fFloatValue);
            this.amountTextView.setScaleY(fFloatValue);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(ActionBar.getCurrentActionBarHeight(), TLObject.FLAG_30));
        }
    }

    public static class StarTierView extends FrameLayout {
        private final AnimatedFloat animatedStarsCount;
        private SpannableString loading;
        private boolean needDivider;
        private final Theme.ResourcesProvider resourcesProvider;
        private final Drawable starDrawable;
        private final Drawable starDrawableOutline;
        private int starsCount;
        private final TextView textView;
        private final AnimatedTextView textView2;

        public StarTierView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.animatedStarsCount = new AnimatedFloat(this, 0L, 500L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.resourcesProvider = resourcesProvider;
            Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.star_small_outline).mutate();
            this.starDrawableOutline = drawableMutate;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogBackground, resourcesProvider), PorterDuff.Mode.SRC_IN));
            this.starDrawable = context.getResources().getDrawable(C2807R.drawable.star_small_inner).mutate();
            setWillNotDraw(false);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextSize(1, 15.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            addView(textView, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 48.0f, 0.0f, 0.0f, 0.0f));
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.textView2 = animatedTextView;
            animatedTextView.setTextSize(AndroidUtilities.dp(15.0f));
            animatedTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            animatedTextView.setGravity(LocaleController.isRTL ? 3 : 5);
            addView(animatedTextView, LayoutHelper.createFrameRelatively(-2.0f, 21.0f, 8388629, 0.0f, 0.0f, 19.0f, 0.0f));
        }

        public void set(int i, CharSequence charSequence, CharSequence charSequence2, boolean z) {
            boolean zEquals = TextUtils.equals(this.textView.getText(), charSequence);
            this.starsCount = i;
            if (!zEquals) {
                this.animatedStarsCount.set(i, true);
            }
            this.textView.setText(charSequence);
            if (charSequence2 == null) {
                if (this.loading == null) {
                    SpannableString spannableString = new SpannableString("x");
                    this.loading = spannableString;
                    spannableString.setSpan(new LoadingSpan(this.textView2, AndroidUtilities.dp(55.0f)), 0, this.loading.length(), 33);
                }
                charSequence2 = this.loading;
            }
            this.textView2.setText(charSequence2);
            float f = LocaleController.isRTL ? -1.0f : 1.0f;
            TextView textView = this.textView;
            if (zEquals) {
                textView.animate().translationX(f * (i - 1) * AndroidUtilities.dp(2.66f)).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            } else {
                textView.setTranslationX(f * (i - 1) * AndroidUtilities.dp(2.66f));
            }
            this.needDivider = z;
            invalidate();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float f = this.animatedStarsCount.set(this.starsCount);
            float f2 = LocaleController.isRTL ? -1.0f : 1.0f;
            float fDp = AndroidUtilities.dp(24.0f);
            float fDp2 = AndroidUtilities.dp(24.0f);
            float fDp3 = AndroidUtilities.dp(2.5f);
            float width = LocaleController.isRTL ? (getWidth() - AndroidUtilities.dp(19.0f)) - fDp : AndroidUtilities.dp(19.0f);
            int iCeil = (int) Math.ceil(f);
            while (true) {
                iCeil--;
                if (iCeil < 0) {
                    break;
                }
                float fClamp = Utilities.clamp(f - iCeil, 1.0f, 0.0f);
                float f3 = (((iCeil - 1) - (1.0f - fClamp)) * fDp3 * f2) + width;
                float measuredHeight = (getMeasuredHeight() - fDp2) / 2.0f;
                int i = (int) f3;
                int i2 = (int) measuredHeight;
                int i3 = (int) (f3 + fDp);
                int i4 = (int) (measuredHeight + fDp2);
                this.starDrawableOutline.setBounds(i, i2, i3, i4);
                int i5 = (int) (fClamp * 255.0f);
                this.starDrawableOutline.setAlpha(i5);
                this.starDrawableOutline.draw(canvas);
                this.starDrawable.setBounds(i, i2, i3, i4);
                this.starDrawable.setAlpha(i5);
                this.starDrawable.draw(canvas);
            }
            if (this.needDivider) {
                Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
                Paint paint = resourcesProvider != null ? resourcesProvider.getPaint("paintDivider") : null;
                if (paint == null) {
                    paint = Theme.dividerPaint;
                }
                canvas.drawRect(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(22.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(22.0f) : 0), getMeasuredHeight(), paint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), TLObject.FLAG_30));
        }

        public static class Factory extends UItem.UItemFactory<StarTierView> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public StarTierView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new StarTierView(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((StarTierView) view).set(uItem.intValue, uItem.text, uItem.subtext, z);
            }

            public static UItem asStarTier(int i, int i2, TL_stars.TL_starsTopupOption tL_starsTopupOption) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.intValue = i2;
                long j = tL_starsTopupOption.stars;
                uItemOfFactory.longValue = j;
                uItemOfFactory.text = LocaleController.formatPluralStringSpaced("StarsCount", (int) j);
                uItemOfFactory.subtext = tL_starsTopupOption.loadingStorePrice ? null : BillingController.getInstance().formatCurrency(tL_starsTopupOption.amount, tL_starsTopupOption.currency);
                uItemOfFactory.object = tL_starsTopupOption;
                return uItemOfFactory;
            }

            public static UItem asStarTier(int i, int i2, TL_stars.TL_starsGiftOption tL_starsGiftOption) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.intValue = i2;
                long j = tL_starsGiftOption.stars;
                uItemOfFactory.longValue = j;
                uItemOfFactory.text = LocaleController.formatPluralStringSpaced("StarsCount", (int) j);
                uItemOfFactory.subtext = tL_starsGiftOption.loadingStorePrice ? null : BillingController.getInstance().formatCurrency(tL_starsGiftOption.amount, tL_starsGiftOption.currency);
                uItemOfFactory.object = tL_starsGiftOption;
                return uItemOfFactory;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                return uItem.id == uItem2.id;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean contentsEquals(UItem uItem, UItem uItem2) {
                return uItem.intValue == uItem2.intValue && uItem.id == uItem2.id && TextUtils.equals(uItem.subtext, uItem2.subtext);
            }
        }
    }

    public static class ExpandView extends FrameLayout {
        public final ImageView arrowView;
        private int lastId;
        private boolean needDivider;
        public final AnimatedTextView textView;

        public ExpandView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.textView = animatedTextView;
            animatedTextView.getDrawable().setHacks(true, true, true);
            animatedTextView.setTextSize(AndroidUtilities.dp(15.0f));
            addView(animatedTextView, LayoutHelper.createFrameRelatively(-1.0f, -1.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 22.0f, 0.0f, 58.0f, 0.0f));
            ImageView imageView = new ImageView(context);
            this.arrowView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C2807R.drawable.arrow_more);
            addView(imageView, LayoutHelper.createFrameRelatively(24.0f, 24.0f, 8388629, 0.0f, 0.0f, 17.0f, 0.0f));
        }

        public void set(UItem uItem, boolean z) {
            int i = this.lastId;
            int i2 = uItem.id;
            boolean z2 = i == i2;
            this.lastId = i2;
            this.textView.setText(uItem.text, z2);
            int color = Theme.getColor(uItem.accent ? Theme.key_windowBackgroundWhiteBlueText2 : Theme.key_windowBackgroundWhiteBlackText);
            this.textView.setTextColor(color);
            this.arrowView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            ImageView imageView = this.arrowView;
            if (z2) {
                imageView.animate().rotation(uItem.collapsed ? 0.0f : 180.0f).setDuration(340L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                imageView.setRotation(uItem.collapsed ? 0.0f : 180.0f);
            }
            this.needDivider = z;
            setWillNotDraw(!z);
        }

        public void set(String str, boolean z, boolean z2, boolean z3) {
            boolean z4 = this.lastId == -1;
            this.lastId = -1;
            this.textView.setText(str, z4);
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteBlueText2);
            this.textView.setTextColor(color);
            this.arrowView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            ImageView imageView = this.arrowView;
            if (z4) {
                imageView.animate().rotation(z ? 0.0f : 180.0f).setDuration(340L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                imageView.setRotation(z ? 0.0f : 180.0f);
            }
            this.needDivider = z3;
            setWillNotDraw(!z3);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(22.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(22.0f) : 0), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.lastId = Integer.MAX_VALUE;
        }

        public static class Factory extends UItem.UItemFactory<ExpandView> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public ExpandView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new ExpandView(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((ExpandView) view).set(uItem, z);
            }

            public static UItem asExpand(int i, CharSequence charSequence, boolean z) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.text = charSequence;
                uItemOfFactory.collapsed = z;
                return uItemOfFactory;
            }
        }
    }

    public static class StarsTransactionsLayout extends LinearLayout implements NotificationCenter.NotificationCenterDelegate {
        private final PageAdapter adapter;
        private final long bot_id;
        private final int currentAccount;
        private final ViewPagerFixed.TabsView tabsView;
        private final boolean ton;
        private final ViewPagerFixed viewPager;

        public static class PageAdapter extends ViewPagerFixed.Adapter {
            private final long bot_id;
            private final int classGuid;
            private final Context context;
            private final int currentAccount;
            private final ArrayList<UItem> items = new ArrayList<>();
            private final Theme.ResourcesProvider resourcesProvider;
            private final boolean ton;

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i, int i2) {
            }

            public PageAdapter(Context context, int i, boolean z, long j, int i2, Theme.ResourcesProvider resourcesProvider) {
                this.context = context;
                this.currentAccount = i;
                this.ton = z;
                this.classGuid = i2;
                this.resourcesProvider = resourcesProvider;
                this.bot_id = j;
                fill();
            }

            public void fill() {
                this.items.clear();
                long j = this.bot_id;
                int i = this.currentAccount;
                if (j == 0) {
                    StarsController starsController = StarsController.getInstance(i, this.ton);
                    this.items.add(UItem.asSpace(0));
                    if (starsController.hasTransactions(1)) {
                        this.items.add(UItem.asSpace(1));
                    }
                    if (starsController.hasTransactions(2)) {
                        this.items.add(UItem.asSpace(2));
                        return;
                    }
                    return;
                }
                BotStarsController botStarsController = BotStarsController.getInstance(i);
                this.items.add(UItem.asSpace(0));
                if (botStarsController.hasTransactions(this.bot_id, 1)) {
                    this.items.add(UItem.asSpace(1));
                }
                if (botStarsController.hasTransactions(this.bot_id, 2)) {
                    this.items.add(UItem.asSpace(2));
                }
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return this.items.size();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public View createView(int i) {
                return new Page(this.context, this.ton, this.bot_id, i, this.currentAccount, this.classGuid, this.resourcesProvider);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i) {
                if (i < 0 || i >= this.items.size()) {
                    return 0;
                }
                return this.items.get(i).intValue;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public String getItemTitle(int i) {
                int itemViewType = getItemViewType(i);
                if (itemViewType == 0) {
                    return LocaleController.getString(C2807R.string.StarsTransactionsAll);
                }
                if (itemViewType == 1) {
                    return LocaleController.getString(C2807R.string.StarsTransactionsIncoming);
                }
                if (itemViewType == 2) {
                    return LocaleController.getString(C2807R.string.StarsTransactionsOutgoing);
                }
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.starTransactionsLoaded) {
                this.adapter.fill();
                this.viewPager.fillTabs(true);
            }
        }

        public StarsTransactionsLayout(Context context, int i, boolean z, long j, int i2, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.currentAccount = i;
            this.ton = z;
            this.bot_id = j;
            setOrientation(1);
            ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context);
            this.viewPager = viewPagerFixed;
            PageAdapter pageAdapter = new PageAdapter(context, i, z, j, i2, resourcesProvider);
            this.adapter = pageAdapter;
            viewPagerFixed.setAdapter(pageAdapter);
            ViewPagerFixed.TabsView tabsViewCreateTabsView = viewPagerFixed.createTabsView(true, 3);
            this.tabsView = tabsViewCreateTabsView;
            View view = new View(context);
            view.setBackgroundColor(Theme.getColor(Theme.key_divider, resourcesProvider));
            addView(tabsViewCreateTabsView, LayoutHelper.createLinear(-1, 48));
            addView(view, LayoutHelper.createLinear(-1.0f, 1.0f / AndroidUtilities.density));
            addView(viewPagerFixed, LayoutHelper.createLinear(-1, -1));
            setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            this.adapter.fill();
            this.viewPager.fillTabs(false);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starTransactionsLoaded);
            super.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starTransactionsLoaded);
            super.onDetachedFromWindow();
        }

        public RecyclerListView getCurrentListView() {
            View currentView = this.viewPager.getCurrentView();
            if (currentView instanceof Page) {
                return ((Page) currentView).listView;
            }
            return null;
        }

        public static class Page extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
            private final long bot_id;
            private final int currentAccount;
            private final UniversalRecyclerView listView;
            private final Runnable loadTransactionsRunnable;
            private final Theme.ResourcesProvider resourcesProvider;
            private final boolean ton;
            private final int type;

            public Page(Context context, final boolean z, final long j, final int i, final int i2, int i3, Theme.ResourcesProvider resourcesProvider) {
                super(context);
                this.type = i;
                this.ton = z;
                this.currentAccount = i2;
                this.bot_id = j;
                this.resourcesProvider = resourcesProvider;
                this.loadTransactionsRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StarsIntroActivity.StarsTransactionsLayout.Page.$r8$lambda$BdY5IePEJVmjFRMp_wLAQjLeH9U(j, i2, i, z);
                    }
                };
                UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, i2, i3, true, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                    }
                }, new Utilities.Callback5() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback5
                    public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                        this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
                    }
                }, null, resourcesProvider);
                this.listView = universalRecyclerView;
                addView(universalRecyclerView, LayoutHelper.createFrame(-1, -1.0f));
                universalRecyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity.StarsTransactionsLayout.Page.1
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                        if (!Page.this.listView.canScrollVertically(1) || Page.this.isLoadingVisible()) {
                            Page.this.loadTransactionsRunnable.run();
                        }
                    }
                });
            }

            public static /* synthetic */ void $r8$lambda$BdY5IePEJVmjFRMp_wLAQjLeH9U(long j, int i, int i2, boolean z) {
                if (j != 0) {
                    BotStarsController.getInstance(i).loadTransactions(j, i2);
                } else {
                    StarsController.getInstance(i, z).loadTransactions(i2);
                }
            }

            public boolean isLoadingVisible() {
                for (int i = 0; i < this.listView.getChildCount(); i++) {
                    if (this.listView.getChildAt(i) instanceof FlickerLoadingView) {
                        return true;
                    }
                }
                return false;
            }

            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public void didReceivedNotification(int i, int i2, Object... objArr) {
                if (i == NotificationCenter.starTransactionsLoaded) {
                    this.listView.adapter.update(true);
                    if (!this.listView.canScrollVertically(1) || isLoadingVisible()) {
                        this.loadTransactionsRunnable.run();
                        return;
                    }
                    return;
                }
                if (i == NotificationCenter.botStarsTransactionsLoaded && ((Long) objArr[0]).longValue() == this.bot_id) {
                    this.listView.adapter.update(true);
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                long j = this.bot_id;
                int i = this.currentAccount;
                if (j != 0) {
                    NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.botStarsTransactionsLoaded);
                } else {
                    NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starTransactionsLoaded);
                }
                this.listView.adapter.update(false);
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                long j = this.bot_id;
                int i = this.currentAccount;
                if (j != 0) {
                    NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.botStarsTransactionsLoaded);
                } else {
                    NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.starTransactionsLoaded);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
                long j = this.bot_id;
                int i = this.currentAccount;
                int i2 = 0;
                if (j != 0) {
                    BotStarsController botStarsController = BotStarsController.getInstance(i);
                    ArrayList<TL_stars.StarsTransaction> transactions = botStarsController.getTransactions(this.bot_id, this.type);
                    int size = transactions.size();
                    while (i2 < size) {
                        TL_stars.StarsTransaction starsTransaction = transactions.get(i2);
                        i2++;
                        arrayList.add(StarsTransactionView.Factory.asTransaction(starsTransaction, true));
                    }
                    if (botStarsController.didFullyLoadTransactions(this.bot_id, this.type)) {
                        return;
                    }
                    arrayList.add(UItem.asFlicker(arrayList.size(), 7));
                    arrayList.add(UItem.asFlicker(arrayList.size(), 7));
                    arrayList.add(UItem.asFlicker(arrayList.size(), 7));
                    return;
                }
                StarsController starsController = StarsController.getInstance(i, this.ton);
                ArrayList<TL_stars.StarsTransaction> arrayList2 = starsController.transactions[this.type];
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    TL_stars.StarsTransaction starsTransaction2 = arrayList2.get(i3);
                    i3++;
                    arrayList.add(StarsTransactionView.Factory.asTransaction(starsTransaction2, false));
                }
                if (starsController.didFullyLoadTransactions(this.type)) {
                    return;
                }
                arrayList.add(UItem.asFlicker(arrayList.size(), 7));
                arrayList.add(UItem.asFlicker(arrayList.size(), 7));
                arrayList.add(UItem.asFlicker(arrayList.size(), 7));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void onClick(UItem uItem, View view, int i, float f, float f2) {
                if (uItem.object instanceof TL_stars.StarsTransaction) {
                    StarsIntroActivity.showTransactionSheet(getContext(), false, 0L, this.currentAccount, (TL_stars.StarsTransaction) uItem.object, this.resourcesProvider);
                }
            }
        }
    }

    public static class StarsTransactionView extends LinearLayout {
        public static HashMap<String, CombinedDrawable> cachedPlatformDrawables;
        private final TextView amountTextView;
        private final AvatarDrawable avatarDrawable;
        private Runnable cancelCurrentGift;
        private final int currentAccount;
        private final TextView dateTextView;
        private final LinearLayout.LayoutParams dateTextViewParams;
        private final BackupImageView imageView;
        private final BackupImageView imageView2;
        private final FrameLayout imageViewContainer;
        private int imageViewCount;
        private boolean needDivider;
        private final SpannableString star;
        private final TextView subtitleTextView;
        private final LinearLayout textLayout;
        private boolean threeLines;
        private final TextView titleTextView;
        private final LinearLayout.LayoutParams titleTextViewParams;
        private final SpannableString ton;

        public StarsTransactionView(Context context, int i, final Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.imageViewCount = 1;
            this.currentAccount = i;
            setOrientation(0);
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Stars.StarsIntroActivity.StarsTransactionView.1
                private final Paint backgroundPaint = new Paint(1);

                @Override // android.view.ViewGroup
                public boolean drawChild(Canvas canvas, View view, long j) {
                    if (StarsTransactionView.this.imageViewCount > 1) {
                        this.backgroundPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(view.getX(), view.getY(), view.getX() + view.getWidth(), view.getY() + view.getHeight());
                        rectF.inset(-AndroidUtilities.dp(1.66f), -AndroidUtilities.dp(1.66f));
                        canvas.drawRoundRect(rectF, AndroidUtilities.dp(13.0f), AndroidUtilities.dp(13.0f), this.backgroundPaint);
                    }
                    return super.drawChild(canvas, view, j);
                }
            };
            this.imageViewContainer = frameLayout;
            addView(frameLayout, LayoutHelper.createLinear(72, -1, 0.0f, 115));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView2 = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.dp(46.0f));
            frameLayout.addView(backupImageView, LayoutHelper.createFrame(46, 46.0f, 16, 13.0f, 0.0f, 13.0f, 0.0f));
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView2 = new BackupImageView(context);
            this.imageView = backupImageView2;
            backupImageView2.setRoundRadius(AndroidUtilities.dp(46.0f));
            frameLayout.addView(backupImageView2, LayoutHelper.createFrame(46, 46.0f, 16, 13.0f, 0.0f, 13.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setGravity(19);
            addView(linearLayout, LayoutHelper.createLinear(-2, -1, 1.0f, 119));
            TextView textView = new TextView(context);
            this.titleTextView = textView;
            textView.setTypeface(AndroidUtilities.bold());
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView.setTextSize(1, 16.0f);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            textView.setSingleLine(true);
            LinearLayout.LayoutParams layoutParamsCreateLinear = LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 4.33f);
            this.titleTextViewParams = layoutParamsCreateLinear;
            linearLayout.addView(textView, layoutParamsCreateLinear);
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            this.subtitleTextView = linksTextView;
            linksTextView.setTextColor(Theme.getColor(i2, resourcesProvider));
            linksTextView.setTextSize(1, 13.0f);
            linksTextView.setEllipsize(truncateAt);
            linksTextView.setSingleLine(true);
            linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.33f));
            TextView textView2 = new TextView(context);
            this.dateTextView = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            textView2.setTextSize(1, 14.0f);
            textView2.setEllipsize(truncateAt);
            textView2.setSingleLine(true);
            LinearLayout.LayoutParams layoutParamsCreateLinear2 = LayoutHelper.createLinear(-1, -2);
            this.dateTextViewParams = layoutParamsCreateLinear2;
            linearLayout.addView(textView2, layoutParamsCreateLinear2);
            TextView textView3 = new TextView(context);
            this.amountTextView = textView3;
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setTextSize(1, 15.3f);
            textView3.setGravity(5);
            addView(textView3, LayoutHelper.createLinear(-2, -2, 0.0f, 21, 8, 0, 20, 0));
            SpannableString spannableString = new SpannableString("⭐️");
            this.star = spannableString;
            Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.star_small_inner).mutate();
            drawableMutate.setBounds(0, 0, AndroidUtilities.dp(21.0f), AndroidUtilities.dp(21.0f));
            spannableString.setSpan(new ImageSpan(drawableMutate), 0, spannableString.length(), 33);
            SpannableString spannableString2 = new SpannableString("TON");
            this.ton = spannableString2;
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(context.getResources().getDrawable(C2807R.drawable.mini_gram_72).mutate());
            coloredImageSpan.recolorDrawable = false;
            coloredImageSpan.setSize(AndroidUtilities.dp(18.0f));
            coloredImageSpan.setTranslateY(AndroidUtilities.dp(0.5f));
            spannableString2.setSpan(coloredImageSpan, 0, spannableString2.length(), 33);
        }

        public static CombinedDrawable getPlatformDrawable(String str) {
            return getPlatformDrawable(str, 44);
        }

        public static CombinedDrawable getPlatformDrawable(String str, int i) {
            if (i != 44) {
                return SessionCell.createDrawable(i, str);
            }
            if (cachedPlatformDrawables == null) {
                cachedPlatformDrawables = new HashMap<>();
            }
            CombinedDrawable combinedDrawable = cachedPlatformDrawables.get(str);
            if (combinedDrawable != null) {
                return combinedDrawable;
            }
            HashMap<String, CombinedDrawable> map = cachedPlatformDrawables;
            CombinedDrawable combinedDrawableCreateDrawable = SessionCell.createDrawable(44, str);
            map.put(str, combinedDrawableCreateDrawable);
            return combinedDrawableCreateDrawable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:299:0x06fe  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(TL_stars.StarsTransaction starsTransaction, boolean z, boolean z2) {
            int i;
            int i2;
            int i3;
            int i4;
            String userName;
            int i5;
            ImageLocation forDocument;
            Integer num = 0;
            long peerDialogId = DialogObject.getPeerDialogId(starsTransaction.peer.peer);
            boolean z3 = starsTransaction.amount instanceof TL_stars.TL_starsTonAmount;
            int i6 = starsTransaction.flags;
            Object[] objArr = (131072 & i6) == 0 && (i6 & 65536) != 0;
            boolean z4 = !(peerDialogId == 0 || starsTransaction.stargift_upgrade || starsTransaction.stargift_drop_original_details || starsTransaction.posts_search) || starsTransaction.subscription || starsTransaction.floodskip || !(starsTransaction.stargift == null || starsTransaction.stargift_upgrade || starsTransaction.stargift_drop_original_details) || (starsTransaction.gift && (starsTransaction.peer instanceof TL_stars.TL_starsTransactionPeerFragment));
            this.threeLines = z4;
            this.titleTextViewParams.bottomMargin = z4 ? 0 : AndroidUtilities.dp(4.33f);
            this.subtitleTextView.setVisibility(this.threeLines ? 0 : 8);
            this.dateTextView.setTextSize(1, this.threeLines ? 13.0f : 14.0f);
            this.dateTextView.setText(LocaleController.formatShortDateTime(starsTransaction.date));
            if (starsTransaction.refund) {
                TextView textView = this.dateTextView;
                i = 2;
                textView.setText(TextUtils.concat(textView.getText(), " — ", LocaleController.getString(C2807R.string.StarsRefunded)));
                i3 = 0;
                i2 = 1;
            } else {
                i = 2;
                if (starsTransaction.failed) {
                    TextView textView2 = this.dateTextView;
                    i2 = 1;
                    textView2.setText(TextUtils.concat(textView2.getText(), " — ", LocaleController.getString(C2807R.string.StarsFailed)));
                } else {
                    i2 = 1;
                    if (starsTransaction.pending) {
                        TextView textView3 = this.dateTextView;
                        i3 = 0;
                        textView3.setText(TextUtils.concat(textView3.getText(), " — ", LocaleController.getString(C2807R.string.StarsPending)));
                    }
                }
                i3 = 0;
            }
            Runnable runnable = this.cancelCurrentGift;
            if (runnable != null) {
                runnable.run();
                this.cancelCurrentGift = null;
            }
            this.imageView.setTranslationX(0.0f);
            this.imageView.setTranslationY(0.0f);
            this.imageView2.setVisibility(8);
            this.imageView.setRoundRadius(AndroidUtilities.dp(46.0f));
            if (starsTransaction.stargift_upgrade && starsTransaction.stargift != null) {
                this.imageView.setImageDrawable(new StarGiftSheet.StarGiftDrawableIcon(this.imageView, starsTransaction.stargift, 46, 0.25f));
                this.titleTextView.setText(LocaleController.getString(C2807R.string.Gift2TransactionUpgraded));
                this.subtitleTextView.setVisibility(8);
            } else if (starsTransaction.stargift_drop_original_details && starsTransaction.stargift != null) {
                this.imageView.setImageDrawable(new StarGiftSheet.StarGiftDrawableIcon(this.imageView, starsTransaction.stargift, 46, 0.25f));
                this.titleTextView.setText(LocaleController.getString(C2807R.string.Gift2TransactionRemovedDescription));
                this.subtitleTextView.setVisibility(8);
            } else if (starsTransaction.posts_search) {
                this.imageView.setImageDrawable(getPlatformDrawable("search"));
                this.titleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionPostsSearch));
                this.subtitleTextView.setVisibility(8);
            } else if (peerDialogId != 0) {
                if (UserObject.isService(peerDialogId)) {
                    String string = LocaleController.getString(C2807R.string.StarsTransactionUnknown);
                    this.imageView.setImageDrawable(getPlatformDrawable("fragment"));
                    userName = string;
                    i5 = i3;
                } else {
                    int i7 = this.currentAccount;
                    if (peerDialogId >= 0) {
                        TLRPC.User user = MessagesController.getInstance(i7).getUser(Long.valueOf(peerDialogId));
                        i4 = user == null ? i2 : i3;
                        this.avatarDrawable.setInfo(user);
                        this.imageView.setForUserOrChat(user, this.avatarDrawable);
                        userName = UserObject.getUserName(user);
                    } else {
                        TLRPC.Chat chat = MessagesController.getInstance(i7).getChat(Long.valueOf(-peerDialogId));
                        i4 = chat == null ? i2 : i3;
                        this.avatarDrawable.setInfo(chat);
                        this.imageView.setForUserOrChat(chat, this.avatarDrawable);
                        userName = chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
                    }
                    i5 = i4;
                }
                if (starsTransaction.stargift != null) {
                    ImageReceiverSpan imageReceiverSpan = new ImageReceiverSpan(this.subtitleTextView, this.currentAccount, 16.0f);
                    imageReceiverSpan.setRoundRadius(4.0f);
                    boolean z5 = i3;
                    imageReceiverSpan.enableShadow(z5);
                    SpannableString spannableString = new SpannableString("x");
                    spannableString.setSpan(imageReceiverSpan, z5 ? 1 : 0, i2, 33);
                    StarsIntroActivity.setGiftImage(imageReceiverSpan.imageReceiver, starsTransaction.stargift, 16);
                    this.titleTextView.setText(userName);
                    if (starsTransaction.offer) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x ");
                        spannableStringBuilder.setSpan(new AnimatedEmojiSpan(starsTransaction.stargift.getDocument(), this.subtitleTextView.getPaint().getFontMetricsInt()), 0, 1, 33);
                        boolean zNegative = starsTransaction.amount.negative();
                        boolean z6 = starsTransaction.refund;
                        if (zNegative) {
                            spannableStringBuilder.append((CharSequence) LocaleController.getString(z6 ? C2807R.string.StarGiftTransactionGiftSaleRefund : C2807R.string.StarGiftTransactionGiftOffer));
                        } else {
                            spannableStringBuilder.append((CharSequence) LocaleController.getString(z6 ? C2807R.string.StarGiftTransactionGiftOfferRefund : C2807R.string.StarGiftTransactionGiftSale));
                        }
                        this.subtitleTextView.setText(spannableStringBuilder);
                    } else if (starsTransaction.stargift_resale) {
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("x ");
                        spannableStringBuilder2.setSpan(new AnimatedEmojiSpan(starsTransaction.stargift.getDocument(), this.subtitleTextView.getPaint().getFontMetricsInt()), 0, 1, 33);
                        boolean zNegative2 = starsTransaction.amount.negative();
                        boolean z7 = starsTransaction.refund;
                        if (zNegative2) {
                            spannableStringBuilder2.append((CharSequence) LocaleController.getString(z7 ? C2807R.string.StarGiftTransactionGiftSaleRefund : C2807R.string.StarGiftTransactionGiftPurchase));
                        } else {
                            spannableStringBuilder2.append((CharSequence) LocaleController.getString(z7 ? C2807R.string.StarGiftTransactionGiftPurchaseRefund : C2807R.string.StarGiftTransactionGiftSale));
                        }
                        this.subtitleTextView.setText(spannableStringBuilder2);
                    } else if (starsTransaction.stargift_prepaid_upgrade) {
                        TextView textView4 = this.subtitleTextView;
                        CharSequence string2 = LocaleController.getString(C2807R.string.Gift2TransactionPrepaidUpgrade);
                        CharSequence[] charSequenceArr = new CharSequence[3];
                        charSequenceArr[0] = spannableString;
                        charSequenceArr[1] = " ";
                        charSequenceArr[i] = string2;
                        textView4.setText(TextUtils.concat(charSequenceArr));
                    } else if (starsTransaction.stargift instanceof TL_stars.TL_starGiftUnique) {
                        this.subtitleTextView.setText(LocaleController.getString(starsTransaction.refund ? C2807R.string.StarGiftTransactionGiftTransferRefund : C2807R.string.StarGiftTransactionGiftTransfer));
                    } else {
                        boolean z8 = starsTransaction.refund;
                        TextView textView5 = this.subtitleTextView;
                        if (z8) {
                            CharSequence string3 = LocaleController.getString(starsTransaction.stargift_auction_bid ? C2807R.string.Gift2TransactionRefundedAuctionBid : starsTransaction.amount.amount > 0 ? starsTransaction.stargift_upgrade ? C2807R.string.Gift2TransactionRefundedUpgrade : C2807R.string.Gift2TransactionRefundedSent : C2807R.string.Gift2TransactionRefundedConverted);
                            CharSequence[] charSequenceArr2 = new CharSequence[3];
                            charSequenceArr2[0] = spannableString;
                            charSequenceArr2[1] = " ";
                            charSequenceArr2[i] = string3;
                            textView5.setText(TextUtils.concat(charSequenceArr2));
                        } else {
                            CharSequence string4 = LocaleController.getString(starsTransaction.stargift_auction_bid ? C2807R.string.Gift2TransactionAuctionBid : starsTransaction.amount.amount > 0 ? C2807R.string.Gift2TransactionConverted : starsTransaction.stargift_upgrade ? C2807R.string.Gift2TransactionUpgraded : C2807R.string.Gift2TransactionSent);
                            CharSequence[] charSequenceArr3 = new CharSequence[3];
                            charSequenceArr3[0] = spannableString;
                            charSequenceArr3[1] = " ";
                            charSequenceArr3[i] = string4;
                            textView5.setText(TextUtils.concat(charSequenceArr3));
                        }
                    }
                } else if (starsTransaction.subscription) {
                    this.titleTextView.setText(userName);
                    int i8 = starsTransaction.subscription_period;
                    if (i8 == 2592000) {
                        this.subtitleTextView.setVisibility(0);
                        this.subtitleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionSubscriptionMonthly));
                    } else {
                        String str = i8 == 300 ? "5 minutes" : "Minute";
                        this.subtitleTextView.setVisibility(0);
                        this.subtitleTextView.setText(String.format(Locale.US, "%s subscription fee", str));
                    }
                } else if (starsTransaction.phonegroup_message) {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    this.subtitleTextView.setText(LocaleController.getString(starsTransaction.reaction ? C2807R.string.StarsTransactionLiveStoryReactionFee : C2807R.string.StarsTransactionLiveStoryMessageFee));
                } else if (starsTransaction.paid_message) {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    this.subtitleTextView.setText(LocaleController.formatPluralStringComma("StarsTransactionMessageFee", starsTransaction.paid_messages));
                } else if (starsTransaction.premium_gift) {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    this.subtitleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionPremiumGift));
                } else if (objArr != false) {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    this.subtitleTextView.setText(LocaleController.formatString(C2807R.string.StarTransactionCommission, AffiliateProgramFragment.percents(starsTransaction.starref_commission_permille)));
                } else if (starsTransaction.gift) {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    this.subtitleTextView.setText(LocaleController.getString(C2807R.string.StarsGiftReceived));
                } else if ((starsTransaction.flags & 8192) != 0) {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    this.subtitleTextView.setText(LocaleController.getString(C2807R.string.StarsGiveawayPrizeReceived));
                } else if (starsTransaction.reaction) {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    this.subtitleTextView.setText(LocaleController.getString(C2807R.string.StarsReactionsSent));
                } else if (!starsTransaction.extended_media.isEmpty()) {
                    TextView textView6 = this.titleTextView;
                    if (z) {
                        textView6.setText(userName);
                        this.subtitleTextView.setVisibility(0);
                        this.subtitleTextView.setText(LocaleController.getString(C2807R.string.StarMediaPurchase));
                    } else {
                        textView6.setText(LocaleController.getString(C2807R.string.StarMediaPurchase));
                        this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                        this.subtitleTextView.setText(userName);
                    }
                    this.imageViewCount = 0;
                    int i9 = 0;
                    while (i9 < Math.min(i, starsTransaction.extended_media.size())) {
                        TLRPC.MessageMedia messageMedia = starsTransaction.extended_media.get(i9);
                        BackupImageView backupImageView = i9 == 0 ? this.imageView : this.imageView2;
                        backupImageView.setRoundRadius(AndroidUtilities.dp(12.0f));
                        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                            forDocument = ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(messageMedia.photo.sizes, AndroidUtilities.dp(46.0f), true), messageMedia.photo);
                        } else {
                            forDocument = messageMedia instanceof TLRPC.TL_messageMediaDocument ? ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(messageMedia.document.thumbs, AndroidUtilities.dp(46.0f), true), messageMedia.document) : null;
                        }
                        backupImageView.setVisibility(0);
                        Integer num2 = num;
                        backupImageView.setImage(forDocument, "46_46", (ImageLocation) null, (String) null, (Drawable) null, num2);
                        num = num2;
                        this.imageViewCount++;
                        i9++;
                        i = 2;
                    }
                    int i10 = 0;
                    while (i10 < this.imageViewCount) {
                        BackupImageView backupImageView2 = i10 == 0 ? this.imageView : this.imageView2;
                        float f = i10;
                        backupImageView2.setTranslationX(AndroidUtilities.dp(2.0f) + ((f - (this.imageViewCount / 2.0f)) * AndroidUtilities.dp(4.33f)));
                        backupImageView2.setTranslationY((f - (this.imageViewCount / 2.0f)) * AndroidUtilities.dp(4.33f));
                        i10++;
                    }
                } else if (starsTransaction.photo != null) {
                    ImageReceiverSpan imageReceiverSpan2 = new ImageReceiverSpan(this.subtitleTextView, this.currentAccount, 14.0f);
                    imageReceiverSpan2.setRoundRadius(4.0f);
                    imageReceiverSpan2.enableShadow(false);
                    SpannableString spannableString2 = new SpannableString("x");
                    spannableString2.setSpan(imageReceiverSpan2, 0, 1, 33);
                    imageReceiverSpan2.imageReceiver.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(starsTransaction.photo)), "14_14", null, null, num, 0);
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    TextView textView7 = this.subtitleTextView;
                    String str2 = starsTransaction.title;
                    if (str2 == null) {
                        str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    textView7.setText(Emoji.replaceEmoji(TextUtils.concat(spannableString2, " ", str2), this.subtitleTextView.getPaint().getFontMetricsInt(), false));
                } else {
                    this.titleTextView.setText(userName);
                    this.subtitleTextView.setVisibility(i5 != 0 ? 8 : 0);
                    TextView textView8 = this.subtitleTextView;
                    String str3 = starsTransaction.title;
                    if (str3 == null) {
                        str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    textView8.setText(Emoji.replaceEmoji(str3, textView8.getPaint().getFontMetricsInt(), false));
                }
            } else if (starsTransaction.floodskip) {
                this.titleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionFloodskip));
                this.subtitleTextView.setText(LocaleController.formatPluralStringComma("StarsTransactionFloodskipMessages", starsTransaction.floodskip_number));
                this.imageView.setImageDrawable(getPlatformDrawable("api"));
            } else {
                TL_stars.StarsTransactionPeer starsTransactionPeer = starsTransaction.peer;
                if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerAppStore) {
                    this.titleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionInApp));
                    this.imageView.setImageDrawable(getPlatformDrawable(CredentialsData.CREDENTIALS_TYPE_IOS));
                } else if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerPlayMarket) {
                    this.titleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionInApp));
                    this.imageView.setImageDrawable(getPlatformDrawable("android"));
                } else if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerFragment) {
                    boolean z9 = starsTransaction.gift;
                    TextView textView9 = this.titleTextView;
                    if (z9) {
                        textView9.setText(LocaleController.getString(C2807R.string.StarsGiftReceived));
                        this.subtitleTextView.setText(LocaleController.getString(z3 ? C2807R.string.StarsTransactionTONFromFragment : C2807R.string.StarsTransactionUnknown));
                        this.subtitleTextView.setVisibility(0);
                    } else if (!z) {
                        boolean z10 = starsTransaction.refund;
                        TL_stars.StarsAmount starsAmount = starsTransaction.amount;
                        int i11 = (!z10 ? starsAmount.negative() : starsAmount.positive()) ? C2807R.string.StarsTransactionFragment : C2807R.string.StarsTransactionWithdrawFragment;
                        textView9.setText(LocaleController.getString(i11));
                    }
                    this.imageView.setImageDrawable(getPlatformDrawable("fragment"));
                } else if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerPremiumBot) {
                    this.titleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionBot));
                    this.imageView.setImageDrawable(getPlatformDrawable("premiumbot"));
                } else if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerUnsupported) {
                    this.titleTextView.setText(LocaleController.getString(C2807R.string.StarsTransactionUnsupported));
                    this.imageView.setImageDrawable(getPlatformDrawable("?"));
                } else {
                    boolean z11 = starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerAds;
                    TextView textView10 = this.titleTextView;
                    if (z11) {
                        textView10.setText(LocaleController.getString(C2807R.string.StarsTransactionAds));
                        this.imageView.setImageDrawable(getPlatformDrawable("ads"));
                    } else {
                        textView10.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                        this.imageView.setImageDrawable(null);
                    }
                }
            }
            TL_stars.StarsAmount starsAmount2 = starsTransaction.amount;
            long j = starsAmount2.amount;
            if (j > 0 || (j == 0 && starsAmount2.nanos > 0)) {
                this.amountTextView.setVisibility(0);
                this.amountTextView.setTextColor(Theme.getColor(Theme.key_color_green));
                this.amountTextView.setText(TextUtils.concat("+", StarsIntroActivity.formatStarsAmount(starsTransaction.amount), " ", z3 ? this.ton : this.star));
            } else if (j < 0 || (j == 0 && starsAmount2.nanos < 0)) {
                this.amountTextView.setVisibility(0);
                this.amountTextView.setTextColor(Theme.getColor(Theme.key_color_red));
                this.amountTextView.setText(TextUtils.concat(StarsIntroActivity.formatStarsAmount(starsTransaction.amount), " ", z3 ? this.ton : this.star));
            } else {
                this.amountTextView.setVisibility(8);
            }
            this.needDivider = z2;
            setWillNotDraw(!z2);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(72.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(72.0f) : 0), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.threeLines ? 71.0f : 58.0f), TLObject.FLAG_30));
        }

        public static class Factory extends UItem.UItemFactory<StarsTransactionView> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public StarsTransactionView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                StarsTransactionView cached = getCached();
                return cached != null ? cached : new StarsTransactionView(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((StarsTransactionView) view).set((TL_stars.StarsTransaction) uItem.object, uItem.accent, z);
            }

            public static UItem asTransaction(TL_stars.StarsTransaction starsTransaction, boolean z) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = starsTransaction;
                uItemOfFactory.accent = z;
                return uItemOfFactory;
            }
        }
    }

    public static class StarsSubscriptionView extends LinearLayout {
        private final int currentAccount;
        public final BackupImageView imageView;
        private boolean needDivider;
        public final LinearLayout priceLayout;
        public final TextView priceSubtitleView;
        public final TextView priceTitleView;
        public final TextView productView;
        private final Theme.ResourcesProvider resourcesProvider;
        public final TextView subtitleView;
        public final LinearLayout textLayout;
        private boolean threeLines;
        public final SimpleTextView titleView;

        public StarsSubscriptionView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            setOrientation(0);
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.dp(46.0f));
            addView(backupImageView, LayoutHelper.createLinear(46, 46, 0.0f, 19, 13, 0, 13, 0));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createLinear(-1, -2, 1.0f, 16, 0, 0, 0, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.titleView = simpleTextView;
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            simpleTextView.setTextColor(Theme.getColor(i2, resourcesProvider));
            simpleTextView.setTextSize(16);
            simpleTextView.setTypeface(AndroidUtilities.bold());
            NotificationCenter.listenEmojiLoading(simpleTextView);
            linearLayout.addView(simpleTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 2.0f));
            TextView textView = new TextView(context);
            this.productView = textView;
            textView.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView.setTextSize(1, 13.0f);
            textView.setVisibility(8);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 1.0f));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            int i3 = Theme.key_windowBackgroundWhiteGrayText2;
            textView2.setTextColor(Theme.getColor(i3, resourcesProvider));
            textView2.setTextSize(1, 14.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
            LinearLayout linearLayout2 = new LinearLayout(context);
            this.priceLayout = linearLayout2;
            linearLayout2.setOrientation(1);
            addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 0.0f, 16, 0, 0, 18, 0));
            TextView textView3 = new TextView(context);
            this.priceTitleView = textView3;
            textView3.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView3.setTextSize(1, 16.0f);
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setGravity(5);
            linearLayout2.addView(textView3, LayoutHelper.createLinear(-1, -2, 5, 0, 0, 0, 1));
            TextView textView4 = new TextView(context);
            this.priceSubtitleView = textView4;
            textView4.setTextColor(Theme.getColor(i3, resourcesProvider));
            textView4.setTextSize(1, 13.0f);
            textView4.setGravity(5);
            linearLayout2.addView(textView4, LayoutHelper.createLinear(-1, -2, 5, 0, 0, 0, 0));
        }

        public void set(TL_stars.StarsSubscription starsSubscription, boolean z) {
            boolean z2;
            String str;
            long peerDialogId = DialogObject.getPeerDialogId(starsSubscription.peer);
            this.threeLines = !TextUtils.isEmpty(starsSubscription.title);
            int i = this.currentAccount;
            if (peerDialogId < 0) {
                TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                avatarDrawable.setInfo(chat);
                this.imageView.setForUserOrChat(chat, avatarDrawable);
                str = chat != null ? chat.title : null;
                z2 = false;
            } else {
                TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
                AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                avatarDrawable2.setInfo(user);
                this.imageView.setForUserOrChat(user, avatarDrawable2);
                String userName = UserObject.getUserName(user);
                z2 = !UserObject.isBot(user);
                str = userName;
            }
            long currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            SimpleTextView simpleTextView = this.titleView;
            simpleTextView.setText(Emoji.replaceEmoji(str, simpleTextView.getPaint().getFontMetricsInt(), false));
            boolean zIsEmpty = TextUtils.isEmpty(starsSubscription.title);
            TextView textView = this.productView;
            if (!zIsEmpty) {
                textView.setVisibility(0);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (starsSubscription.photo != null) {
                    ImageReceiverSpan imageReceiverSpan = new ImageReceiverSpan(this.productView, this.currentAccount, 14.0f);
                    imageReceiverSpan.setRoundRadius(4.0f);
                    imageReceiverSpan.enableShadow(false);
                    SpannableString spannableString = new SpannableString("x");
                    spannableString.setSpan(imageReceiverSpan, 0, 1, 33);
                    imageReceiverSpan.imageReceiver.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(starsSubscription.photo)), "14_14", null, null, 0, 0);
                    spannableStringBuilder.append((CharSequence) spannableString).append((CharSequence) " ");
                }
                spannableStringBuilder.append(Emoji.replaceEmoji(starsSubscription.title, this.titleView.getPaint().getFontMetricsInt(), false));
                this.productView.setText(spannableStringBuilder);
            } else {
                textView.setVisibility(8);
            }
            this.subtitleView.setTextSize(1, this.threeLines ? 13.0f : 14.0f);
            if (starsSubscription.canceled || starsSubscription.bot_canceled) {
                TextView textView2 = this.subtitleView;
                int i2 = starsSubscription.until_date;
                textView2.setText(LocaleController.formatString(((long) i2) < currentTime ? C2807R.string.StarsSubscriptionExpired : C2807R.string.StarsSubscriptionExpires, LocaleController.formatDateChat(i2)));
                this.priceTitleView.setVisibility(8);
                this.priceSubtitleView.setTextColor(Theme.getColor(Theme.key_color_red, this.resourcesProvider));
                this.priceSubtitleView.setText(LocaleController.getString(starsSubscription.bot_canceled ? z2 ? C2807R.string.StarsSubscriptionStatusBizCancelled : C2807R.string.StarsSubscriptionStatusBotCancelled : C2807R.string.StarsSubscriptionStatusCancelled));
            } else {
                int i3 = starsSubscription.until_date;
                long j = i3;
                TextView textView3 = this.subtitleView;
                if (j < currentTime) {
                    textView3.setText(LocaleController.formatString(C2807R.string.StarsSubscriptionExpired, LocaleController.formatDateChat(i3)));
                    this.priceTitleView.setVisibility(8);
                    this.priceSubtitleView.setTextColor(Theme.getColor(Theme.key_color_red, this.resourcesProvider));
                    this.priceSubtitleView.setText(LocaleController.getString(C2807R.string.StarsSubscriptionStatusExpired));
                } else {
                    textView3.setText(LocaleController.formatString(C2807R.string.StarsSubscriptionRenews, LocaleController.formatDateChat(i3)));
                    this.priceTitleView.setVisibility(0);
                    this.priceTitleView.setText(StarsIntroActivity.replaceStarsWithPlain("⭐️ " + Long.toString(starsSubscription.pricing.amount), 0.8f));
                    this.priceSubtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider));
                    int i4 = starsSubscription.pricing.period;
                    if (i4 == 2592000) {
                        this.priceSubtitleView.setText(LocaleController.getString(C2807R.string.StarsParticipantSubscriptionPerMonth));
                    } else if (i4 == 60) {
                        this.priceSubtitleView.setText("per minute");
                    } else if (i4 == 300) {
                        this.priceSubtitleView.setText("per 5 minutes");
                    }
                }
            }
            this.needDivider = z;
            setWillNotDraw(!z);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.threeLines ? 68.0f : 58.0f), TLObject.FLAG_30));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(AndroidUtilities.dp(72.0f), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        public static class Factory extends UItem.UItemFactory<StarsSubscriptionView> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public StarsSubscriptionView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                StarsSubscriptionView cached = getCached();
                return cached != null ? cached : new StarsSubscriptionView(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((StarsSubscriptionView) view).set((TL_stars.StarsSubscription) uItem.object, z);
            }

            public static UItem asSubscription(TL_stars.StarsSubscription starsSubscription) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = starsSubscription;
                return uItemOfFactory;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                if (uItem == null && uItem2 == null) {
                    return true;
                }
                if (uItem == null || uItem2 == null) {
                    return false;
                }
                Object obj = uItem.object;
                if (!(obj instanceof TL_stars.StarsSubscription)) {
                    return false;
                }
                Object obj2 = uItem2.object;
                if (obj2 instanceof TL_stars.StarsSubscription) {
                    return TextUtils.equals(((TL_stars.StarsSubscription) obj).id, ((TL_stars.StarsSubscription) obj2).id);
                }
                return false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x051c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static BottomSheet openConfirmPurchaseSheet(final Context context, Theme.ResourcesProvider resourcesProvider, int i, MessageObject messageObject, long j, String str, long j2, TLRPC.WebDocument webDocument, int i2, final Utilities.Callback<Utilities.Callback<Boolean>> callback, final Runnable runnable) {
        ViewGroup viewGroup;
        BottomSheet.Builder builder;
        float f;
        int i3;
        TLRPC.Message message;
        String userName;
        boolean z;
        TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia;
        int i4;
        int i5;
        int i6;
        String pluralString;
        String pluralString2;
        String str2;
        String pluralString3;
        String pluralString4;
        boolean z2;
        TLRPC.User user;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        TLRPC.Message message2;
        BackupImageView backupImageView;
        int i7;
        int i8;
        ImageLocation forDocument;
        BottomSheet.Builder builder2 = new BottomSheet.Builder(context, false, resourcesProvider);
        TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(j));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(makeParticlesView(context, 40, 0), LayoutHelper.createFrame(-1, -1.0f));
        if (messageObject == null || (message2 = messageObject.messageOwner) == null || !(message2.media instanceof TLRPC.TL_messageMediaPaidMedia)) {
            viewGroup = frameLayout;
            builder = builder2;
            f = 20.0f;
            if (webDocument == null) {
                BackupImageView backupImageView2 = new BackupImageView(context);
                backupImageView2.setRoundRadius(AndroidUtilities.dp(80.0f));
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                avatarDrawable.setInfo(user2);
                backupImageView2.setForUserOrChat(user2, avatarDrawable);
                viewGroup.addView(backupImageView2, LayoutHelper.createFrame(80, 80, 17));
            } else {
                FrameLayout frameLayout2 = new FrameLayout(context);
                BackupImageView backupImageView3 = new BackupImageView(context);
                backupImageView3.setRoundRadius(AndroidUtilities.dp(18.0f));
                backupImageView3.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument)), "80_80", (Drawable) null, 0, (Object) null);
                frameLayout2.addView(backupImageView3, LayoutHelper.createFrame(80, 80, 48));
                viewGroup.addView(frameLayout2, LayoutHelper.createFrame(80, 87, 17));
                TextView textView = new TextView(context);
                textView.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
                textView.setTextSize(1, 13.0f);
                i3 = -1;
                textView.setTextColor(-1);
                textView.setText(replaceStars("XTR " + LocaleController.formatNumber((int) j2, ','), 0.85f));
                textView.setPadding(AndroidUtilities.dp(5.33f), 0, AndroidUtilities.dp(5.33f), 0);
                textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), -1133566));
                FrameLayout frameLayout3 = new FrameLayout(context);
                frameLayout3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), Theme.getColor(Theme.key_dialogBackground, resourcesProvider)));
                frameLayout3.setPadding(AndroidUtilities.dp(1.33f), AndroidUtilities.dp(1.33f), AndroidUtilities.dp(1.33f), AndroidUtilities.dp(1.33f));
                frameLayout3.addView(textView, LayoutHelper.createLinear(-2, 16, 119));
                frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(-2.0f, 18.66f, 81));
                final StarsBalanceView starsBalanceView = new StarsBalanceView(context, i, resourcesProvider);
                ScaleStateListAnimator.apply(starsBalanceView);
                starsBalanceView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda47
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        StarsIntroActivity.m20974$r8$lambda$mUY6Qqoo42WFKMz3Ac4XQviAI8(starsBalanceView, view);
                    }
                });
                viewGroup.addView(starsBalanceView, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 0.0f, -8.0f, 0.0f));
                linearLayout.addView(viewGroup, LayoutHelper.createLinear(i3, 117, 7));
                TextView textView2 = new TextView(context);
                textView2.setTextSize(1, f);
                textView2.setTypeface(AndroidUtilities.bold());
                int i9 = Theme.key_dialogTextBlack;
                textView2.setTextColor(Theme.getColor(i9, resourcesProvider));
                if (i2 > 0) {
                    textView2.setText(Emoji.replaceEmoji(webDocument != null ? str : LocaleController.getString(C2807R.string.StarsConfirmSubscriptionTitle), textView2.getPaint().getFontMetricsInt(), false));
                } else {
                    textView2.setText(Emoji.replaceEmoji(webDocument != null ? str : LocaleController.getString(C2807R.string.StarsConfirmPurchaseTitle), textView2.getPaint().getFontMetricsInt(), false));
                }
                NotificationCenter.listenEmojiLoading(textView2);
                textView2.setGravity(17);
                linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 0, webDocument != null ? -8 : 8, 0, 0));
                if (webDocument != null) {
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    linearLayout2.setOrientation(0);
                    linearLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider)));
                    BackupImageView backupImageView4 = new BackupImageView(context);
                    backupImageView4.setRoundRadius(AndroidUtilities.dp(14.0f));
                    AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                    avatarDrawable2.setInfo(user2);
                    backupImageView4.setForUserOrChat(user2, avatarDrawable2);
                    linearLayout2.addView(backupImageView4, LayoutHelper.createLinear(28, 28));
                    TextView textView3 = new TextView(context);
                    textView3.setTextSize(1, 13.0f);
                    textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                    textView3.setText(UserObject.getUserName(user2));
                    linearLayout2.addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 6, 0, 10, 0));
                    linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, 28, 1, 0, 8, 0, 2));
                }
                TextView textView4 = new TextView(context);
                textView4.setTextSize(1, 14.0f);
                textView4.setTextColor(Theme.getColor(i9, resourcesProvider));
                if (messageObject != null && (message = messageObject.messageOwner) != null && (message.media instanceof TLRPC.TL_messageMediaPaidMedia)) {
                    long dialogId = messageObject.getDialogId();
                    TLRPC.Message message3 = messageObject.messageOwner;
                    if (message3 != null && (messageFwdHeader = message3.fwd_from) != null && (peer = messageFwdHeader.from_id) != null) {
                        dialogId = DialogObject.getPeerDialogId(peer);
                    }
                    if (dialogId < 0 && messageObject.getFromChatId() > 0 && (user = MessagesController.getInstance(i).getUser(Long.valueOf(messageObject.getFromChatId()))) != null && user.bot) {
                        dialogId = user.id;
                    }
                    if (dialogId >= 0) {
                        TLRPC.User user3 = MessagesController.getInstance(i).getUser(Long.valueOf(dialogId));
                        userName = UserObject.getUserName(user3);
                        if (user3 != null && user3.bot) {
                            z = true;
                        }
                        tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageObject.messageOwner.media;
                        i4 = 0;
                        int i10 = 0;
                        for (i5 = 0; i5 < tL_messageMediaPaidMedia.extended_media.size(); i5++) {
                            TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i5);
                            if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                                z2 = (((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0;
                            } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                z2 = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media instanceof TLRPC.TL_messageMediaDocument;
                            }
                            if (z2) {
                                i4++;
                            } else {
                                i10++;
                            }
                        }
                        if (i4 != 0) {
                            str2 = z ? "StarsConfirmPurchaseMediaBotOne2" : "StarsConfirmPurchaseMediaOne2";
                            int i11 = (int) j2;
                            if (i10 != 1) {
                                pluralString4 = LocaleController.formatPluralString("StarsConfirmPurchaseMedia_Photos", i10, new Object[0]);
                            } else {
                                pluralString4 = LocaleController.getString(C2807R.string.StarsConfirmPurchaseMedia_SinglePhoto);
                            }
                            pluralString2 = LocaleController.formatPluralString(str2, i11, pluralString4, userName);
                        } else if (i10 == 0) {
                            str2 = z ? "StarsConfirmPurchaseMediaBotOne2" : "StarsConfirmPurchaseMediaOne2";
                            int i12 = (int) j2;
                            if (i4 != 1) {
                                pluralString3 = LocaleController.formatPluralString("StarsConfirmPurchaseMedia_Videos", i4, new Object[0]);
                            } else {
                                pluralString3 = LocaleController.getString(C2807R.string.StarsConfirmPurchaseMedia_SingleVideo);
                            }
                            pluralString2 = LocaleController.formatPluralString(str2, i12, pluralString3, userName);
                        } else {
                            String str3 = z ? "StarsConfirmPurchaseMediaBotTwo2" : "StarsConfirmPurchaseMediaTwo2";
                            int i13 = (int) j2;
                            if (i10 == 1) {
                                pluralString = LocaleController.getString(C2807R.string.StarsConfirmPurchaseMedia_SinglePhoto);
                                i6 = 0;
                            } else {
                                i6 = 0;
                                pluralString = LocaleController.formatPluralString("StarsConfirmPurchaseMedia_Photos", i10, new Object[0]);
                            }
                            pluralString2 = LocaleController.formatPluralString(str3, i13, pluralString, i4 == 1 ? LocaleController.getString(C2807R.string.StarsConfirmPurchaseMedia_SingleVideo) : LocaleController.formatPluralString("StarsConfirmPurchaseMedia_Videos", i4, new Object[i6]), userName);
                        }
                        textView4.setText(AndroidUtilities.replaceTags(pluralString2));
                    } else {
                        TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-dialogId));
                        userName = chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
                    }
                    z = false;
                    tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageObject.messageOwner.media;
                    i4 = 0;
                    int i102 = 0;
                    while (i5 < tL_messageMediaPaidMedia.extended_media.size()) {
                    }
                    if (i4 != 0) {
                    }
                    textView4.setText(AndroidUtilities.replaceTags(pluralString2));
                } else if (i2 <= 0) {
                    textView4.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsConfirmSubscriptionText2", (int) j2, str, UserObject.getUserName(user2))));
                } else {
                    textView4.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsConfirmPurchaseText2", (int) j2, str, UserObject.getUserName(user2))));
                }
                textView4.setMaxWidth(HintView2.cutInFancyHalf(textView4.getText(), textView4.getPaint()));
                textView4.setGravity(17);
                linearLayout.addView(textView4, LayoutHelper.createLinear(-2, -2, 1, 0, 6, 0, 18));
                final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
                if (i2 > 0) {
                    buttonWithCounterView.setText(replaceStars(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsConfirmSubscriptionButton", (int) j2))), false);
                } else {
                    buttonWithCounterView.setText(replaceStars(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsConfirmPurchaseButton", (int) j2))), false);
                }
                linearLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f));
                LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                linksTextView.setTextSize(1, 14.0f);
                linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(i2 > 0 ? C2807R.string.StarsConfirmSubscriptionTOS : C2807R.string.StarsConfirmPurchaseTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda48
                    @Override // java.lang.Runnable
                    public final void run() {
                        Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTOSLink));
                    }
                }));
                linksTextView.setGravity(17);
                linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 12.0f, 0.0f, 2.0f));
                BottomSheet.Builder builder3 = builder;
                builder3.setCustomView(linearLayout);
                final BottomSheet bottomSheetCreate = builder3.create();
                buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda49
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        StarsIntroActivity.m20982$r8$lambda$vpIjOReXh8zTLIY2rdvSWlDLes(callback, bottomSheetCreate, buttonWithCounterView, view);
                    }
                });
                bottomSheetCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda50
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        StarsIntroActivity.m20983$r8$lambda$w4FKhkRtIxAaT0VafeHKHV_kH8(runnable, dialogInterface);
                    }
                });
                bottomSheetCreate.fixNavigationBar();
                bottomSheetCreate.show();
                return bottomSheetCreate;
            }
        } else {
            BackupImageView backupImageView5 = new BackupImageView(context, context) { // from class: org.telegram.ui.Stars.StarsIntroActivity.6
                private Path clipPath = new Path();
                private RectF clipRect = new RectF();
                private Drawable lock;
                private SpoilerEffect2 spoilerEffect2;
                final /* synthetic */ Context val$context;

                {
                    this.val$context = context;
                    this.lock = context.getResources().getDrawable(C2807R.drawable.large_locked_post).mutate();
                }

                @Override // android.view.View
                public void dispatchDraw(Canvas canvas) {
                    C59756 c59756;
                    Canvas canvas2;
                    super.dispatchDraw(canvas);
                    if (this.spoilerEffect2 == null) {
                        this.spoilerEffect2 = SpoilerEffect2.getInstance(this);
                    }
                    if (this.spoilerEffect2 != null) {
                        this.clipRect.set(0.0f, 0.0f, getWidth(), getHeight());
                        this.clipPath.rewind();
                        this.clipPath.addRoundRect(this.clipRect, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f), Path.Direction.CW);
                        canvas.save();
                        canvas.clipPath(this.clipPath);
                        c59756 = this;
                        canvas2 = canvas;
                        this.spoilerEffect2.draw(canvas2, c59756, getWidth(), getHeight(), 1.0f);
                        canvas2.restore();
                    } else {
                        c59756 = this;
                        canvas2 = canvas;
                    }
                    c59756.lock.setBounds((c59756.getWidth() - c59756.lock.getIntrinsicWidth()) / 2, (c59756.getHeight() - c59756.lock.getIntrinsicHeight()) / 2, (c59756.getWidth() + c59756.lock.getIntrinsicWidth()) / 2, (c59756.getHeight() + c59756.lock.getIntrinsicHeight()) / 2);
                    c59756.lock.draw(canvas2);
                }

                @Override // org.telegram.ui.Components.BackupImageView, android.view.View
                public void onAttachedToWindow() {
                    SpoilerEffect2 spoilerEffect2 = this.spoilerEffect2;
                    if (spoilerEffect2 != null) {
                        spoilerEffect2.attach(this);
                    }
                    super.onAttachedToWindow();
                }

                @Override // org.telegram.ui.Components.BackupImageView, android.view.View
                public void onDetachedFromWindow() {
                    SpoilerEffect2 spoilerEffect2 = this.spoilerEffect2;
                    if (spoilerEffect2 != null) {
                        spoilerEffect2.detach(this);
                    }
                    super.onDetachedFromWindow();
                }
            };
            backupImageView5.setRoundRadius(AndroidUtilities.dp(24.0f));
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia2 = (TLRPC.TL_messageMediaPaidMedia) messageObject.messageOwner.media;
            if (tL_messageMediaPaidMedia2.extended_media.isEmpty()) {
                backupImageView = backupImageView5;
                viewGroup = frameLayout;
                builder = builder2;
                f = 20.0f;
                i7 = 80;
                i8 = 17;
            } else {
                TLRPC.MessageExtendedMedia messageExtendedMedia2 = tL_messageMediaPaidMedia2.extended_media.get(0);
                if (messageExtendedMedia2 instanceof TLRPC.TL_messageExtendedMediaPreview) {
                    forDocument = ImageLocation.getForObject(((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia2).thumb, messageObject.messageOwner);
                } else {
                    if (messageExtendedMedia2 instanceof TLRPC.TL_messageExtendedMedia) {
                        TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia2).media;
                        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                            forDocument = ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(messageMedia.photo.sizes, AndroidUtilities.dp(80.0f), true), messageMedia.photo);
                        } else {
                            forDocument = messageMedia instanceof TLRPC.TL_messageMediaDocument ? ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(messageMedia.document.thumbs, AndroidUtilities.dp(80.0f), true), messageMedia.document) : null;
                        }
                    }
                    final StarsBalanceView starsBalanceView2 = new StarsBalanceView(context, i, resourcesProvider);
                    ScaleStateListAnimator.apply(starsBalanceView2);
                    starsBalanceView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda47
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            StarsIntroActivity.m20974$r8$lambda$mUY6Qqoo42WFKMz3Ac4XQviAI8(starsBalanceView2, view);
                        }
                    });
                    viewGroup.addView(starsBalanceView2, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 0.0f, -8.0f, 0.0f));
                    linearLayout.addView(viewGroup, LayoutHelper.createLinear(i3, 117, 7));
                    TextView textView22 = new TextView(context);
                    textView22.setTextSize(1, f);
                    textView22.setTypeface(AndroidUtilities.bold());
                    int i92 = Theme.key_dialogTextBlack;
                    textView22.setTextColor(Theme.getColor(i92, resourcesProvider));
                    if (i2 > 0) {
                    }
                    NotificationCenter.listenEmojiLoading(textView22);
                    textView22.setGravity(17);
                    linearLayout.addView(textView22, LayoutHelper.createLinear(-2, -2, 1, 0, webDocument != null ? -8 : 8, 0, 0));
                    if (webDocument != null) {
                    }
                    TextView textView42 = new TextView(context);
                    textView42.setTextSize(1, 14.0f);
                    textView42.setTextColor(Theme.getColor(i92, resourcesProvider));
                    if (messageObject != null) {
                        if (i2 <= 0) {
                        }
                    }
                    textView42.setMaxWidth(HintView2.cutInFancyHalf(textView42.getText(), textView42.getPaint()));
                    textView42.setGravity(17);
                    linearLayout.addView(textView42, LayoutHelper.createLinear(-2, -2, 1, 0, 6, 0, 18));
                    final ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, resourcesProvider);
                    if (i2 > 0) {
                    }
                    linearLayout.addView(buttonWithCounterView2, LayoutHelper.createFrame(-1, 48.0f));
                    LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                    linksTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                    linksTextView2.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                    linksTextView2.setTextSize(1, 14.0f);
                    linksTextView2.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(i2 > 0 ? C2807R.string.StarsConfirmSubscriptionTOS : C2807R.string.StarsConfirmPurchaseTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda48
                        @Override // java.lang.Runnable
                        public final void run() {
                            Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTOSLink));
                        }
                    }));
                    linksTextView2.setGravity(17);
                    linearLayout.addView(linksTextView2, LayoutHelper.createLinear(-1, -2, 0.0f, 12.0f, 0.0f, 2.0f));
                    BottomSheet.Builder builder32 = builder;
                    builder32.setCustomView(linearLayout);
                    final BottomSheet bottomSheetCreate2 = builder32.create();
                    buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda49
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            StarsIntroActivity.m20982$r8$lambda$vpIjOReXh8zTLIY2rdvSWlDLes(callback, bottomSheetCreate2, buttonWithCounterView2, view);
                        }
                    });
                    bottomSheetCreate2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda50
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            StarsIntroActivity.m20983$r8$lambda$w4FKhkRtIxAaT0VafeHKHV_kH8(runnable, dialogInterface);
                        }
                    });
                    bottomSheetCreate2.fixNavigationBar();
                    bottomSheetCreate2.show();
                    return bottomSheetCreate2;
                }
                backupImageView = backupImageView5;
                builder = builder2;
                viewGroup = frameLayout;
                f = 20.0f;
                i7 = 80;
                i8 = 17;
                backupImageView.setImage(forDocument, "80_80_b2", (ImageLocation) null, (String) null, (Drawable) null, messageObject);
            }
            viewGroup.addView(backupImageView, LayoutHelper.createFrame(i7, i7, i8));
        }
        i3 = -1;
        final StarsBalanceView starsBalanceView22 = new StarsBalanceView(context, i, resourcesProvider);
        ScaleStateListAnimator.apply(starsBalanceView22);
        starsBalanceView22.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda47
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarsIntroActivity.m20974$r8$lambda$mUY6Qqoo42WFKMz3Ac4XQviAI8(starsBalanceView22, view);
            }
        });
        viewGroup.addView(starsBalanceView22, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 0.0f, -8.0f, 0.0f));
        linearLayout.addView(viewGroup, LayoutHelper.createLinear(i3, 117, 7));
        TextView textView222 = new TextView(context);
        textView222.setTextSize(1, f);
        textView222.setTypeface(AndroidUtilities.bold());
        int i922 = Theme.key_dialogTextBlack;
        textView222.setTextColor(Theme.getColor(i922, resourcesProvider));
        if (i2 > 0) {
        }
        NotificationCenter.listenEmojiLoading(textView222);
        textView222.setGravity(17);
        linearLayout.addView(textView222, LayoutHelper.createLinear(-2, -2, 1, 0, webDocument != null ? -8 : 8, 0, 0));
        if (webDocument != null) {
        }
        TextView textView422 = new TextView(context);
        textView422.setTextSize(1, 14.0f);
        textView422.setTextColor(Theme.getColor(i922, resourcesProvider));
        if (messageObject != null) {
        }
        textView422.setMaxWidth(HintView2.cutInFancyHalf(textView422.getText(), textView422.getPaint()));
        textView422.setGravity(17);
        linearLayout.addView(textView422, LayoutHelper.createLinear(-2, -2, 1, 0, 6, 0, 18));
        final ButtonWithCounterView buttonWithCounterView22 = new ButtonWithCounterView(context, resourcesProvider);
        if (i2 > 0) {
        }
        linearLayout.addView(buttonWithCounterView22, LayoutHelper.createFrame(-1, 48.0f));
        LinkSpanDrawable.LinksTextView linksTextView22 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        linksTextView22.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        linksTextView22.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linksTextView22.setTextSize(1, 14.0f);
        linksTextView22.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(i2 > 0 ? C2807R.string.StarsConfirmSubscriptionTOS : C2807R.string.StarsConfirmPurchaseTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTOSLink));
            }
        }));
        linksTextView22.setGravity(17);
        linearLayout.addView(linksTextView22, LayoutHelper.createLinear(-1, -2, 0.0f, 12.0f, 0.0f, 2.0f));
        BottomSheet.Builder builder322 = builder;
        builder322.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate22 = builder322.create();
        buttonWithCounterView22.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda49
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarsIntroActivity.m20982$r8$lambda$vpIjOReXh8zTLIY2rdvSWlDLes(callback, bottomSheetCreate22, buttonWithCounterView22, view);
            }
        });
        bottomSheetCreate22.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda50
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                StarsIntroActivity.m20983$r8$lambda$w4FKhkRtIxAaT0VafeHKHV_kH8(runnable, dialogInterface);
            }
        });
        bottomSheetCreate22.fixNavigationBar();
        bottomSheetCreate22.show();
        return bottomSheetCreate22;
    }

    /* JADX INFO: renamed from: $r8$lambda$mUY6Qqoo42-WFKMz3Ac4XQviAI8, reason: not valid java name */
    public static /* synthetic */ void m20974$r8$lambda$mUY6Qqoo42WFKMz3Ac4XQviAI8(StarsBalanceView starsBalanceView, View view) {
        BaseFragment lastFragment;
        if (starsBalanceView.lastBalance > 0 && (lastFragment = LaunchActivity.getLastFragment()) != null) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            lastFragment.showAsSheet(new StarsIntroActivity(), bottomSheetParams);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$vpIjOReXh8zTLIY2rdvSW-lDLes, reason: not valid java name */
    public static /* synthetic */ void m20982$r8$lambda$vpIjOReXh8zTLIY2rdvSWlDLes(Utilities.Callback callback, final BottomSheet bottomSheet, final ButtonWithCounterView buttonWithCounterView, View view) {
        if (callback != null) {
            bottomSheet.setCanDismissWithSwipe(false);
            buttonWithCounterView.setLoading(true);
            callback.run(new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda59
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    StarsIntroActivity.$r8$lambda$K77avHa9Rwc1kDpemc6ka6K4cnM(bottomSheet, buttonWithCounterView, (Boolean) obj);
                }
            });
            return;
        }
        bottomSheet.lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$K77avHa9Rwc1kDpemc6ka6K4cnM(final BottomSheet bottomSheet, final ButtonWithCounterView buttonWithCounterView, Boolean bool) {
        if (bool.booleanValue()) {
            bottomSheet.lambda$new$0();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    StarsIntroActivity.$r8$lambda$bGnYDScq0MjNpc_G0Ilw5ZT_LYE(bottomSheet, buttonWithCounterView);
                }
            }, 400L);
        }
    }

    public static /* synthetic */ void $r8$lambda$bGnYDScq0MjNpc_G0Ilw5ZT_LYE(BottomSheet bottomSheet, ButtonWithCounterView buttonWithCounterView) {
        bottomSheet.setCanDismissWithSwipe(false);
        buttonWithCounterView.setLoading(false);
    }

    /* JADX INFO: renamed from: $r8$lambda$w4FKhkRtIxAaT0-VafeHKHV_kH8, reason: not valid java name */
    public static /* synthetic */ void m20983$r8$lambda$w4FKhkRtIxAaT0VafeHKHV_kH8(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static BottomSheet openStarsChannelInviteSheet(final Context context, Theme.ResourcesProvider resourcesProvider, int i, TLRPC.ChatInvite chatInvite, final Utilities.Callback<Utilities.Callback<Boolean>> callback, final Runnable runnable) {
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(makeParticlesView(context, 40, 0), LayoutHelper.createFrame(-1, -1.0f));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(80.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setPeerColor(chatInvite.color);
        avatarDrawable.setText(chatInvite.title);
        TLRPC.Photo photo = chatInvite.photo;
        if (photo != null) {
            backupImageView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(photo.sizes, AndroidUtilities.dp(80.0f)), chatInvite.photo), "80_80", avatarDrawable, chatInvite);
        } else {
            backupImageView.setImageDrawable(avatarDrawable);
        }
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(80, 80, 17));
        Drawable drawable = context.getResources().getDrawable(C2807R.drawable.star_small_outline);
        int i2 = Theme.key_dialogBackground;
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), PorterDuff.Mode.SRC_IN));
        Drawable drawable2 = context.getResources().getDrawable(C2807R.drawable.star_small_inner);
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable);
        frameLayout.addView(imageView, LayoutHelper.createFrame(26, 26, 17));
        imageView.setTranslationX(AndroidUtilities.dp(26.0f));
        imageView.setTranslationY(AndroidUtilities.dp(26.0f));
        imageView.setScaleX(1.2f);
        imageView.setScaleY(1.2f);
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageDrawable(drawable2);
        frameLayout.addView(imageView2, LayoutHelper.createFrame(26, 26, 17));
        imageView2.setTranslationX(AndroidUtilities.dp(26.0f));
        imageView2.setTranslationY(AndroidUtilities.dp(26.0f));
        final StarsBalanceView starsBalanceView = new StarsBalanceView(context, i, resourcesProvider);
        ScaleStateListAnimator.apply(starsBalanceView);
        starsBalanceView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda86
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarsIntroActivity.$r8$lambda$3DQ58Z8O7JOUMF1JDyPIPT8HuYQ(starsBalanceView, view);
            }
        });
        frameLayout.addView(starsBalanceView, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 0.0f, -8.0f, 0.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 117, 7));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        int i3 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView.setText(LocaleController.getString(C2807R.string.StarsSubscribeTitle));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 8, 0, 0));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor(i3, resourcesProvider));
        TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing = chatInvite.subscription_pricing;
        int i4 = tL_starsSubscriptionPricing.period;
        if (i4 == 2592000) {
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("StarsSubscribeText", (int) tL_starsSubscriptionPricing.amount, chatInvite.title)));
        } else {
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("StarsSubscribeTextTest", (int) tL_starsSubscriptionPricing.amount, chatInvite.title, i4 == 300 ? "5 minutes" : "a minute")));
        }
        textView2.setMaxWidth(HintView2.cutInFancyHalf(textView2.getText(), textView2.getPaint()));
        textView2.setGravity(17);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 0, 6, 0, 22));
        if (!TextUtils.isEmpty(chatInvite.about)) {
            TextView textView3 = new TextView(context);
            textView3.setTextSize(1, 14.0f);
            textView3.setTextColor(Theme.getColor(i3, resourcesProvider));
            textView3.setText(Emoji.replaceEmoji(chatInvite.about, textView3.getPaint().getFontMetricsInt(), false));
            textView3.setGravity(17);
            linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 1, 0, 6, 0, 22));
        }
        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView.setText(LocaleController.getString(C2807R.string.StarsSubscribeButton), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsSubscribeInfo), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda87
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsSubscribeInfoLink));
            }
        }));
        linksTextView.setGravity(17);
        linksTextView.setTextSize(1, 13.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 49, 14, 14, 14, 6));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda88
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarsIntroActivity.$r8$lambda$s2eX6YGfcp0ExqVgIcYOP7jBPFw(callback, bottomSheetCreate, buttonWithCounterView, view);
            }
        });
        bottomSheetCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda89
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                StarsIntroActivity.$r8$lambda$FveBt0RZL2ASfWZl8Ig9iYOYCbY(runnable, dialogInterface);
            }
        });
        bottomSheetCreate.fixNavigationBar(Theme.getColor(i2, resourcesProvider));
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!AndroidUtilities.isTablet() && safeLastFragment != null && !AndroidUtilities.hasDialogOnTop(safeLastFragment)) {
            bottomSheetCreate.makeAttached(safeLastFragment);
        }
        bottomSheetCreate.show();
        return bottomSheetCreate;
    }

    public static /* synthetic */ void $r8$lambda$3DQ58Z8O7JOUMF1JDyPIPT8HuYQ(StarsBalanceView starsBalanceView, View view) {
        BaseFragment lastFragment;
        if (starsBalanceView.lastBalance > 0 && (lastFragment = LaunchActivity.getLastFragment()) != null) {
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            lastFragment.showAsSheet(new StarsIntroActivity(), bottomSheetParams);
        }
    }

    public static /* synthetic */ void $r8$lambda$s2eX6YGfcp0ExqVgIcYOP7jBPFw(Utilities.Callback callback, final BottomSheet bottomSheet, final ButtonWithCounterView buttonWithCounterView, View view) {
        if (callback != null) {
            bottomSheet.setCanDismissWithSwipe(false);
            buttonWithCounterView.setLoading(true);
            callback.run(new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda96
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    StarsIntroActivity.$r8$lambda$JRR6PFwiWj5tVezMdJ3uZhRENKU(bottomSheet, buttonWithCounterView, (Boolean) obj);
                }
            });
            return;
        }
        bottomSheet.lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$JRR6PFwiWj5tVezMdJ3uZhRENKU(final BottomSheet bottomSheet, final ButtonWithCounterView buttonWithCounterView, Boolean bool) {
        if (bool.booleanValue()) {
            bottomSheet.lambda$new$0();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda97
                @Override // java.lang.Runnable
                public final void run() {
                    StarsIntroActivity.m20979$r8$lambda$uEYXk9CvtRo81sov3k2iYxLQ08(bottomSheet, buttonWithCounterView);
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$u-EYXk9CvtRo81sov3k2iYxLQ08, reason: not valid java name */
    public static /* synthetic */ void m20979$r8$lambda$uEYXk9CvtRo81sov3k2iYxLQ08(BottomSheet bottomSheet, ButtonWithCounterView buttonWithCounterView) {
        bottomSheet.setCanDismissWithSwipe(false);
        buttonWithCounterView.setLoading(false);
    }

    public static /* synthetic */ void $r8$lambda$FveBt0RZL2ASfWZl8Ig9iYOYCbY(Runnable runnable, DialogInterface dialogInterface) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static class StarsOptionsSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
        private final int BUTTON_EXPAND;
        private UniversalAdapter adapter;
        private boolean expanded;
        private final FireworksOverlay fireworksOverlay;
        private final FrameLayout footerView;

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            UniversalAdapter universalAdapter;
            if ((i == NotificationCenter.starOptionsLoaded || i == NotificationCenter.starBalanceUpdated) && (universalAdapter = this.adapter) != null) {
                universalAdapter.update(true);
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
        public void show() {
            long j = StarsController.getInstance(this.currentAccount).getBalance().amount;
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

        @Override // org.telegram.ui.ActionBar.BottomSheet
        public void dismissInternal() {
            super.dismissInternal();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starOptionsLoaded);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starBalanceUpdated);
        }

        public StarsOptionsSheet(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, null, false, false, false, resourcesProvider);
            this.BUTTON_EXPAND = -1;
            RecyclerListView recyclerListView = this.recyclerListView;
            int i = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i, 0, i, 0);
            this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsOptionsSheet$$ExternalSyntheticLambda1
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
            int i2 = Theme.key_windowBackgroundWhite;
            setBackgroundColor(Theme.getColor(i2, resourcesProvider));
            fixNavigationBar(Theme.getColor(i2, resourcesProvider));
            this.actionBar.setTitle(getTitle());
            FrameLayout frameLayout = new FrameLayout(context);
            this.footerView = frameLayout;
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
            frameLayout.setPadding(0, AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(11.0f));
            linksTextView.setTextSize(1, 12.0f);
            linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
            linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
            linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsOptionsSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1();
                }
            }));
            linksTextView.setGravity(17);
            linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), linksTextView.getPaint()));
            frameLayout.addView(linksTextView, LayoutHelper.createFrame(-2, -1, 17));
            frameLayout.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
            this.fireworksOverlay = fireworksOverlay;
            this.containerView.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
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
        public /* synthetic */ void lambda$new$1() {
            Browser.openUrl(getContext(), LocaleController.getString(C2807R.string.StarsTOSLink));
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public CharSequence getTitle() {
            return LocaleController.getString(C2807R.string.StarsBuy);
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
            UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsOptionsSheet$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, this.resourcesProvider);
            this.adapter = universalAdapter;
            universalAdapter.setApplyBackground(false);
            return this.adapter;
        }

        public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.TelegramStarsChoose)));
            ArrayList<TL_stars.TL_starsTopupOption> options = StarsController.getInstance(this.currentAccount).getOptions();
            if (options != null && !options.isEmpty()) {
                int i = 0;
                int i2 = 1;
                for (int i3 = 0; i3 < options.size(); i3++) {
                    TL_stars.TL_starsTopupOption tL_starsTopupOption = options.get(i3);
                    if (!tL_starsTopupOption.extended || this.expanded) {
                        arrayList.add(StarTierView.Factory.asStarTier(i3, i2, tL_starsTopupOption));
                        i2++;
                    } else {
                        i++;
                    }
                }
                boolean z = this.expanded;
                if (!z && i > 0) {
                    arrayList.add(ExpandView.Factory.asExpand(-1, LocaleController.getString(z ? C2807R.string.NotifyLessOptions : C2807R.string.NotifyMoreOptions), !this.expanded).accent());
                }
            } else {
                arrayList.add(UItem.asFlicker(31));
                arrayList.add(UItem.asFlicker(31));
                arrayList.add(UItem.asFlicker(31));
                arrayList.add(UItem.asFlicker(31));
                arrayList.add(UItem.asFlicker(31));
            }
            arrayList.add(UItem.asCustom(this.footerView));
        }

        public void onItemClick(final UItem uItem, UniversalAdapter universalAdapter) {
            if (uItem.id == -1) {
                this.expanded = !this.expanded;
                universalAdapter.update(true);
                this.recyclerListView.smoothScrollBy(0, AndroidUtilities.dp(300.0f));
            } else if (uItem.instanceOf(StarTierView.Factory.class) && (uItem.object instanceof TL_stars.TL_starsTopupOption)) {
                Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
                if (activityFindActivity == null) {
                    activityFindActivity = LaunchActivity.instance;
                }
                if (activityFindActivity == null) {
                    return;
                }
                StarsController.getInstance(this.currentAccount).buy(activityFindActivity, (TL_stars.TL_starsTopupOption) uItem.object, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsOptionsSheet$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onItemClick$2(uItem, (Boolean) obj, (String) obj2);
                    }
                }, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2(UItem uItem, Boolean bool, String str) {
            if (getContext() == null) {
                return;
            }
            lambda$new$0();
            StarsController.getInstance(this.currentAccount).invalidateTransactions(true);
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null) {
                return;
            }
            if (!bool.booleanValue()) {
                if (str != null) {
                    BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, str)).show();
                }
            } else {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.stars_topup, LocaleController.getString(C2807R.string.StarsAcquired), AndroidUtilities.replaceTags(LocaleController.formatPluralString("StarsAcquiredInfo", (int) uItem.longValue, new Object[0]))).show();
                LaunchActivity launchActivity = LaunchActivity.instance;
                if (launchActivity != null) {
                    launchActivity.getFireworksOverlay().start(true);
                }
            }
        }
    }

    public static class StarsNeededSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
        private final int BUTTON_EXPAND;
        private UniversalAdapter adapter;
        private final boolean canBuy;
        private boolean expanded;
        private final FireworksOverlay fireworksOverlay;
        private final FrameLayout footerView;
        private final HeaderView headerView;
        private final TLRPC.InputPeer purposePeer;
        private final long starsNeeded;
        private Runnable whenPurchased;

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            Runnable runnable;
            if (i == NotificationCenter.starOptionsLoaded || i == NotificationCenter.starBalanceUpdated) {
                UniversalAdapter universalAdapter = this.adapter;
                if (universalAdapter != null) {
                    universalAdapter.update(true);
                }
                long j = StarsController.getInstance(this.currentAccount).getBalance().amount;
                this.headerView.titleView.setText(LocaleController.formatPluralStringComma("StarsNeededTitle", (int) (this.starsNeeded - j)));
                ActionBar actionBar = this.actionBar;
                if (actionBar != null) {
                    actionBar.setTitle(getTitle());
                }
                if (j < this.starsNeeded || (runnable = this.whenPurchased) == null) {
                    return;
                }
                runnable.run();
                this.whenPurchased = null;
                lambda$new$0();
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
        public void show() {
            if (!this.canBuy) {
                BulletinFactory.of(Bulletin.BulletinWindow.make(getContext()), this.resourcesProvider).createSimpleBulletin(C2807R.raw.stars_topup, LocaleController.getString(C2807R.string.PaymentInvoiceDisabledStarsText)).show();
                return;
            }
            if (StarsController.getInstance(this.currentAccount).getBalance().amount >= this.starsNeeded) {
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

        @Override // org.telegram.ui.ActionBar.BottomSheet
        public void dismissInternal() {
            super.dismissInternal();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starOptionsLoaded);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starBalanceUpdated);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x00b3 A[PHI: r8
  0x00b3: PHI (r8v5 java.lang.String) = (r8v0 java.lang.String), (r8v0 java.lang.String), (r8v3 java.lang.String) binds: [B:10:0x00b1, B:19:0x00c6, B:28:0x00ec] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public StarsNeededSheet(Context context, Theme.ResourcesProvider resourcesProvider, long j, int i, String str, Runnable runnable, long j2) {
            String str2;
            super(context, null, false, false, false, resourcesProvider);
            this.BUTTON_EXPAND = -1;
            this.topPadding = 0.2f;
            this.whenPurchased = runnable;
            TLRPC.InputPeer inputPeer = j2 == 0 ? null : MessagesController.getInstance(this.currentAccount).getInputPeer(j2);
            this.purposePeer = inputPeer;
            boolean zCanBuy = StarsController.getInstance(this.currentAccount).canBuy(inputPeer);
            this.canBuy = zCanBuy;
            fixNavigationBar();
            RecyclerListView recyclerListView = this.recyclerListView;
            int i2 = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i2, 0, i2, 0);
            this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i3) {
                    this.f$0.lambda$new$0(view, i3);
                }
            });
            this.recyclerListView.setSections();
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
            defaultItemAnimator.setSupportsChangeAnimations(false);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDurations(350L);
            this.recyclerListView.setItemAnimator(defaultItemAnimator);
            setBackgroundColor(Theme.getColor(Theme.key_dialogBackgroundGray, resourcesProvider));
            this.starsNeeded = j;
            HeaderView headerView = new HeaderView(context, this.currentAccount, resourcesProvider);
            this.headerView = headerView;
            headerView.titleView.setText(LocaleController.formatPluralString("StarsNeededTitle", (int) Math.max(0L, j - StarsController.getInstance(this.currentAccount).getBalance().amount), new Object[0]));
            if (i == 1) {
                str2 = "StarsNeededTextBuySubscription";
            } else {
                String str3 = "StarsNeededTextKeepSubscription";
                if (i != 2) {
                    if (i == 7) {
                        str2 = "StarsNeededTextKeepBotSubscription";
                    } else if (i == 8) {
                        str2 = "StarsNeededTextKeepBizSubscription";
                    } else if (i != 3) {
                        if (i == 4) {
                            str2 = "StarsNeededTextLink";
                            if (str == null) {
                                str3 = "StarsNeededTextLink";
                            } else {
                                str3 = "StarsNeededTextLink_" + str.toLowerCase();
                            }
                            if (LocaleController.nullable(LocaleController.getString(str3)) != null) {
                                str2 = str3;
                            }
                        } else if (i == 5) {
                            str2 = "StarsNeededTextReactions";
                        } else if (i == 6) {
                            str2 = "StarsNeededTextGift";
                        } else if (i == 12) {
                            str2 = "StarsNeededTextGiftChannel";
                        } else if (i == 13) {
                            str2 = "StarsNeededTextPrivateMessage";
                        } else if (i == 10) {
                            str2 = "StarsNeededTextGiftUpgrade";
                        } else if (i == 11) {
                            str2 = "StarsNeededTextGiftTransfer";
                        } else if (i == 9) {
                            str2 = "StarsNeededBizText";
                        } else if (i == 14) {
                            str2 = "StarsNeededTextGiftBuyResale";
                        } else if (i == 15) {
                            str2 = "StarsNeededTextSearch";
                        } else if (i == 16) {
                            str2 = "StarsNeededRemoveGiftDescription";
                        } else if (i == 17) {
                            str2 = "StarsNeededLiveComments";
                        } else {
                            str2 = "StarsNeededText";
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(str2)) {
                headerView.subtitleView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            } else {
                String strNullable = LocaleController.nullable(LocaleController.formatString(str2, 0, str));
                headerView.subtitleView.setText(AndroidUtilities.replaceTags(strNullable == null ? LocaleController.getString(str2) : strNullable));
                TextView textView = headerView.subtitleView;
                textView.setMaxWidth(HintView2.cutInFancyHalf(textView.getText(), headerView.subtitleView.getPaint()));
            }
            this.actionBar.setTitle(getTitle());
            FrameLayout frameLayout = new FrameLayout(context);
            this.footerView = frameLayout;
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
            frameLayout.setPadding(0, AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(11.0f));
            linksTextView.setTextSize(1, 12.0f);
            linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
            linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
            if (zCanBuy) {
                linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$1();
                    }
                }));
            } else {
                linksTextView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.StarsPurchaseUnavailable)));
            }
            linksTextView.setGravity(17);
            linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), linksTextView.getPaint()));
            frameLayout.addView(linksTextView, LayoutHelper.createFrame(-2, -1, 17));
            frameLayout.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
            this.fireworksOverlay = fireworksOverlay;
            this.containerView.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
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
        public /* synthetic */ void lambda$new$1() {
            Browser.openUrl(getContext(), LocaleController.getString(C2807R.string.StarsTOSLink));
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public CharSequence getTitle() {
            HeaderView headerView = this.headerView;
            if (headerView == null) {
                return null;
            }
            return headerView.titleView.getText();
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
            UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, this.resourcesProvider);
            this.adapter = universalAdapter;
            return universalAdapter;
        }

        public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
            arrayList.add(UItem.asCustomShadow(this.headerView));
            if (this.canBuy) {
                arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.TelegramStarsChoose)));
            }
            ArrayList<TL_stars.TL_starsTopupOption> options = StarsController.getInstance(this.currentAccount).getOptions();
            if (this.canBuy) {
                if (options != null && !options.isEmpty()) {
                    int i = 0;
                    int i2 = 0;
                    int i3 = 0;
                    boolean z = false;
                    int i4 = 1;
                    for (int i5 = 0; i5 < options.size(); i5++) {
                        TL_stars.TL_starsTopupOption tL_starsTopupOption = options.get(i5);
                        if (tL_starsTopupOption.stars >= this.starsNeeded) {
                            if (tL_starsTopupOption.extended && !this.expanded && z) {
                                i3++;
                            } else {
                                arrayList.add(StarTierView.Factory.asStarTier(i5, i4, tL_starsTopupOption));
                                i2++;
                                i4++;
                                z = true;
                            }
                        }
                    }
                    if (i2 < 3) {
                        arrayList.clear();
                        arrayList.add(UItem.asCustom(this.headerView));
                        arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.TelegramStarsChoose)));
                        int i6 = 0;
                        for (int i7 = 0; i7 < options.size(); i7++) {
                            TL_stars.TL_starsTopupOption tL_starsTopupOption2 = options.get(i7);
                            if (tL_starsTopupOption2.stars >= this.starsNeeded) {
                                arrayList.add(StarTierView.Factory.asStarTier(i7, i4, tL_starsTopupOption2));
                                i6++;
                                i4++;
                            }
                        }
                        if (i6 == 0) {
                            while (i < options.size()) {
                                arrayList.add(StarTierView.Factory.asStarTier(i, i4, options.get(i)));
                                i++;
                                i4++;
                            }
                            boolean z2 = this.expanded;
                            if (!z2 && i3 > 0) {
                                arrayList.add(ExpandView.Factory.asExpand(-1, LocaleController.getString(z2 ? C2807R.string.NotifyLessOptions : C2807R.string.NotifyMoreOptions), !this.expanded).accent());
                            }
                        } else {
                            this.expanded = true;
                        }
                    } else if (i2 > 0) {
                        boolean z3 = this.expanded;
                        if (!z3 && i3 > 0) {
                            arrayList.add(ExpandView.Factory.asExpand(-1, LocaleController.getString(z3 ? C2807R.string.NotifyLessOptions : C2807R.string.NotifyMoreOptions), !this.expanded).accent());
                        }
                    } else {
                        while (i < options.size()) {
                            arrayList.add(StarTierView.Factory.asStarTier(i, i4, options.get(i)));
                            i++;
                            i4++;
                        }
                    }
                } else {
                    arrayList.add(UItem.asFlicker(31));
                    arrayList.add(UItem.asFlicker(31));
                    arrayList.add(UItem.asFlicker(31));
                }
            }
            arrayList.add(UItem.asCustom(this.footerView));
        }

        public void onItemClick(final UItem uItem, UniversalAdapter universalAdapter) {
            if (uItem.id == -1) {
                this.expanded = !this.expanded;
                universalAdapter.update(true);
            } else if (uItem.instanceOf(StarTierView.Factory.class) && (uItem.object instanceof TL_stars.TL_starsTopupOption)) {
                Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
                if (activityFindActivity == null) {
                    activityFindActivity = LaunchActivity.instance;
                }
                if (activityFindActivity == null) {
                    return;
                }
                StarsController.getInstance(this.currentAccount).buy(activityFindActivity, (TL_stars.TL_starsTopupOption) uItem.object, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onItemClick$2(uItem, (Boolean) obj, (String) obj2);
                    }
                }, this.purposePeer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2(UItem uItem, Boolean bool, String str) {
            if (getContext() == null) {
                return;
            }
            if (bool.booleanValue()) {
                BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createSimpleBulletin(C2807R.raw.stars_topup, LocaleController.getString(C2807R.string.StarsAcquired), AndroidUtilities.replaceTags(LocaleController.formatPluralString("StarsAcquiredInfo", (int) uItem.longValue, new Object[0]))).show();
                this.fireworksOverlay.start(true);
                StarsController.getInstance(this.currentAccount).invalidateTransactions(true);
            } else if (str != null) {
                BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, str)).show();
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        /* JADX INFO: renamed from: dismiss */
        public void lambda$new$0() {
            super.lambda$new$0();
            HeaderView headerView = this.headerView;
            if (headerView != null) {
                headerView.iconView.setPaused(true);
            }
        }

        public static class HeaderView extends LinearLayout {
            public final StarsBalanceView balanceView;
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
                StarParticlesView starParticlesViewMakeParticlesView = StarsIntroActivity.makeParticlesView(context, 70, 0);
                this.particlesView = starParticlesViewMakeParticlesView;
                frameLayout.addView(starParticlesViewMakeParticlesView, LayoutHelper.createFrame(-1, -1.0f));
                GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 2);
                this.iconView = gLIconTextureView;
                GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
                gLIconRenderer.colorKey1 = Theme.key_starsGradient1;
                gLIconRenderer.colorKey2 = Theme.key_starsGradient2;
                gLIconRenderer.updateColors();
                gLIconTextureView.setStarParticlesView(starParticlesViewMakeParticlesView);
                frameLayout.addView(gLIconTextureView, LayoutHelper.createFrame(170, 170.0f, 17, 0.0f, 32.0f, 0.0f, 24.0f));
                gLIconTextureView.setPaused(false);
                StarsBalanceView starsBalanceView = new StarsBalanceView(context, i, resourcesProvider);
                this.balanceView = starsBalanceView;
                ScaleStateListAnimator.apply(starsBalanceView);
                starsBalanceView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$StarsNeededSheet$HeaderView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$0(view);
                    }
                });
                frameLayout.addView(starsBalanceView, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 0.0f, 0.0f, 0.0f));
                addView(frameLayout, LayoutHelper.createFrame(-1, 150.0f));
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

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$0(View view) {
                BaseFragment lastFragment;
                if (this.balanceView.lastBalance > 0 && (lastFragment = LaunchActivity.getLastFragment()) != null) {
                    BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                    bottomSheetParams.transitionFromLeft = true;
                    bottomSheetParams.allowNestedScroll = false;
                    lastFragment.showAsSheet(new StarsIntroActivity(), bottomSheetParams);
                }
            }
        }
    }

    public static class GiftStarsSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
        private final int BUTTON_EXPAND;
        private UniversalAdapter adapter;
        private boolean expanded;
        private final FireworksOverlay fireworksOverlay;
        private final FrameLayout footerView;
        private final HeaderView headerView;
        private final TLRPC.User user;
        private final Runnable whenPurchased;

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            UniversalAdapter universalAdapter;
            if ((i == NotificationCenter.starGiftOptionsLoaded || i == NotificationCenter.starBalanceUpdated) && (universalAdapter = this.adapter) != null) {
                universalAdapter.update(true);
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
        public void show() {
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) lastFragment;
                if (chatActivity.isKeyboardVisible() && chatActivity.getChatActivityEnterView() != null) {
                    chatActivity.getChatActivityEnterView().closeKeyboard();
                }
            }
            super.show();
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet
        public void dismissInternal() {
            super.dismissInternal();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiftOptionsLoaded);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starBalanceUpdated);
        }

        public GiftStarsSheet(Context context, Theme.ResourcesProvider resourcesProvider, TLRPC.User user, Runnable runnable) {
            super(context, null, false, false, false, resourcesProvider);
            this.BUTTON_EXPAND = -1;
            this.user = user;
            this.whenPurchased = runnable;
            this.topPadding = 0.2f;
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starGiftOptionsLoaded);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starBalanceUpdated);
            fixNavigationBar();
            RecyclerListView recyclerListView = this.recyclerListView;
            int i = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i, 0, i, 0);
            this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda0
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
            setBackgroundColor(Theme.getColor(Theme.key_dialogBackgroundGray, resourcesProvider));
            HeaderView headerView = new HeaderView(context, this.currentAccount, resourcesProvider);
            this.headerView = headerView;
            headerView.titleView.setText(LocaleController.getString(C2807R.string.GiftStarsTitle));
            headerView.subtitleView.setText(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.GiftStarsSubtitle, UserObject.getForcedFirstName(user))), " ", AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.GiftStarsSubtitleLinkName).replace(' ', Typography.nbsp), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1();
                }
            }), true)));
            LinkSpanDrawable.LinksTextView linksTextView = headerView.subtitleView;
            linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), headerView.subtitleView.getPaint()) + 1);
            this.actionBar.setTitle(getTitle());
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(user);
            headerView.avatarImageView.setForUserOrChat(user, avatarDrawable);
            FrameLayout frameLayout = new FrameLayout(context);
            this.footerView = frameLayout;
            LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
            frameLayout.setPadding(0, AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(11.0f));
            linksTextView2.setTextSize(1, 12.0f);
            linksTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
            linksTextView2.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
            linksTextView2.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$2();
                }
            }));
            linksTextView2.setGravity(17);
            linksTextView2.setMaxWidth(HintView2.cutInFancyHalf(linksTextView2.getText(), linksTextView2.getPaint()));
            frameLayout.addView(linksTextView2, LayoutHelper.createFrame(-2, -1, 17));
            frameLayout.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
            this.fireworksOverlay = fireworksOverlay;
            this.containerView.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
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
        public /* synthetic */ void lambda$new$1() {
            BaseFragment baseFragment;
            StarAppsSheet starAppsSheet = new StarAppsSheet(getContext());
            if (!AndroidUtilities.isTablet() && !AndroidUtilities.hasDialogOnTop(this.attachedFragment) && (baseFragment = this.attachedFragment) != null) {
                starAppsSheet.makeAttached(baseFragment);
            }
            starAppsSheet.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2() {
            Browser.openUrl(getContext(), LocaleController.getString(C2807R.string.StarsTOSLink));
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public CharSequence getTitle() {
            HeaderView headerView = this.headerView;
            if (headerView == null) {
                return null;
            }
            return headerView.titleView.getText();
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
            UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, this.resourcesProvider);
            this.adapter = universalAdapter;
            return universalAdapter;
        }

        public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
            arrayList.add(UItem.asCustom(this.headerView));
            arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.TelegramStarsChoose)));
            ArrayList<TL_stars.TL_starsGiftOption> giftOptions = StarsController.getInstance(this.currentAccount).getGiftOptions();
            if (giftOptions != null && !giftOptions.isEmpty()) {
                int i = 0;
                int i2 = 1;
                for (int i3 = 0; i3 < giftOptions.size(); i3++) {
                    TL_stars.TL_starsGiftOption tL_starsGiftOption = giftOptions.get(i3);
                    if (this.expanded || !tL_starsGiftOption.extended) {
                        arrayList.add(StarTierView.Factory.asStarTier(i3, i2, tL_starsGiftOption));
                        i2++;
                    } else {
                        i++;
                    }
                }
                boolean z = this.expanded;
                if (!z && i > 0) {
                    arrayList.add(ExpandView.Factory.asExpand(-1, LocaleController.getString(z ? C2807R.string.NotifyLessOptions : C2807R.string.NotifyMoreOptions), !this.expanded).accent());
                }
            } else {
                arrayList.add(UItem.asFlicker(31));
                arrayList.add(UItem.asFlicker(31));
                arrayList.add(UItem.asFlicker(31));
            }
            arrayList.add(UItem.asCustom(this.footerView));
        }

        public void onItemClick(final UItem uItem, UniversalAdapter universalAdapter) {
            if (uItem.id == -1) {
                this.expanded = !this.expanded;
                universalAdapter.update(true);
                this.recyclerListView.smoothScrollBy(0, AndroidUtilities.dp(200.0f), CubicBezierInterpolator.EASE_OUT);
            } else if (uItem.instanceOf(StarTierView.Factory.class) && (uItem.object instanceof TL_stars.TL_starsGiftOption)) {
                Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
                if (activityFindActivity == null) {
                    activityFindActivity = LaunchActivity.instance;
                }
                Activity activity = activityFindActivity;
                if (activity == null) {
                    return;
                }
                final long j = this.user.id;
                StarsController.getInstance(this.currentAccount).buyGift(activity, (TL_stars.TL_starsGiftOption) uItem.object, j, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$onItemClick$4(uItem, j, (Boolean) obj, (String) obj2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(UItem uItem, final long j, Boolean bool, String str) {
            Runnable runnable;
            if (getContext() == null) {
                return;
            }
            if ((bool.booleanValue() || str != null) && (runnable = this.whenPurchased) != null) {
                runnable.run();
            }
            lambda$new$0();
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            FireworksOverlay fireworksOverlay = LaunchActivity.instance.getFireworksOverlay();
            if (safeLastFragment == null) {
                return;
            }
            if (!bool.booleanValue()) {
                if (str != null) {
                    BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.UnknownErrorCode, str)).show();
                }
            } else {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.stars_send, LocaleController.getString(C2807R.string.StarsGiftSentPopup), AndroidUtilities.replaceTags(LocaleController.formatPluralString("StarsGiftSentPopupInfo", (int) uItem.longValue, UserObject.getForcedFirstName(this.user))), LocaleController.getString(C2807R.string.ViewInChat), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$GiftStarsSheet$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        StarsIntroActivity.GiftStarsSheet.$r8$lambda$XJR9mtiHZI9jRwVOKA2h0N0l6G0(j);
                    }
                }).setDuration(5000).show(true);
                if (fireworksOverlay != null) {
                    fireworksOverlay.start(true);
                }
                StarsController.getInstance(this.currentAccount).invalidateTransactions(true);
            }
        }

        public static /* synthetic */ void $r8$lambda$XJR9mtiHZI9jRwVOKA2h0N0l6G0(long j) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                safeLastFragment.presentFragment(ChatActivity.of(j));
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        /* JADX INFO: renamed from: dismiss */
        public void lambda$new$0() {
            super.lambda$new$0();
        }

        public static class HeaderView extends LinearLayout {
            public final BackupImageView avatarImageView;
            public final StarParticlesView particlesView;
            public final LinkSpanDrawable.LinksTextView subtitleView;
            public final TextView titleView;
            private final FrameLayout topView;

            public HeaderView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
                super(context);
                setOrientation(1);
                FrameLayout frameLayout = new FrameLayout(context);
                this.topView = frameLayout;
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                StarParticlesView starParticlesViewMakeParticlesView = StarsIntroActivity.makeParticlesView(context, 70, 0);
                this.particlesView = starParticlesViewMakeParticlesView;
                frameLayout.addView(starParticlesViewMakeParticlesView, LayoutHelper.createFrame(-1, -1.0f));
                BackupImageView backupImageView = new BackupImageView(context);
                this.avatarImageView = backupImageView;
                backupImageView.setRoundRadius(AndroidUtilities.dp(50.0f));
                frameLayout.addView(backupImageView, LayoutHelper.createFrame(100, 100.0f, 17, 0.0f, 32.0f, 0.0f, 24.0f));
                addView(frameLayout, LayoutHelper.createFrame(-1, 150.0f));
                TextView textView = new TextView(context);
                this.titleView = textView;
                textView.setTextSize(1, 20.0f);
                textView.setTypeface(AndroidUtilities.bold());
                int i2 = Theme.key_dialogTextBlack;
                textView.setTextColor(Theme.getColor(i2, resourcesProvider));
                textView.setGravity(17);
                addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 2, 0, 0));
                LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                this.subtitleView = linksTextView;
                linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                linksTextView.setTextSize(1, 14.0f);
                linksTextView.setTextColor(Theme.getColor(i2, resourcesProvider));
                linksTextView.setGravity(17);
                addView(linksTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 9, 0, 18));
            }
        }
    }

    public static SpannableStringBuilder replaceStars(boolean z, CharSequence charSequence) {
        return replaceStars(z, charSequence, 1.13f);
    }

    public static SpannableStringBuilder replaceStars(CharSequence charSequence) {
        return replaceStars(charSequence, 1.13f);
    }

    public static SpannableStringBuilder replaceStars(boolean z, CharSequence charSequence, float f) {
        return replaceStars(z, charSequence, f, null);
    }

    public static SpannableStringBuilder replaceStars(TL_stars.StarsAmount starsAmount, CharSequence charSequence, float f) {
        return replaceStars(starsAmount instanceof TL_stars.TL_starsTonAmount, charSequence, f, null);
    }

    public static SpannableStringBuilder replaceStars(CharSequence charSequence, float f) {
        return replaceStars(charSequence, f, (ColoredImageSpan[]) null);
    }

    public static SpannableStringBuilder replaceStars(boolean z, CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr) {
        return replaceStars(z, charSequence, f, coloredImageSpanArr, 0.0f, 0.0f, 1.0f);
    }

    public static SpannableStringBuilder replaceStars(CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr) {
        return replaceStars(charSequence, f, coloredImageSpanArr, 0.0f, 0.0f, 1.0f);
    }

    public static SpannableStringBuilder replaceStars(CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr, float f2, float f3, float f4) {
        return replaceStars(false, charSequence, f, coloredImageSpanArr, f2, f3, f4);
    }

    public static SpannableStringBuilder replaceStars(boolean z, CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr, float f2, float f3, float f4) {
        SpannableStringBuilder spannableStringBuilder;
        ColoredImageSpan coloredImageSpan;
        if (charSequence == null) {
            return null;
        }
        if (!(charSequence instanceof SpannableStringBuilder)) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = (SpannableStringBuilder) charSequence;
        }
        SpannableString spannableString = new SpannableString((z ? "TON" : "⭐").concat(" "));
        if (coloredImageSpanArr == null || (coloredImageSpan = coloredImageSpanArr[0]) == null) {
            coloredImageSpan = new ColoredImageSpan(z ? C2807R.drawable.mini_gram_72 : C2807R.drawable.msg_premium_liststar);
            if (coloredImageSpanArr != null) {
                coloredImageSpanArr[0] = coloredImageSpan;
            }
        }
        coloredImageSpan.translate(f2, f3);
        coloredImageSpan.spaceScaleX = f4;
        if (z) {
            coloredImageSpan.recolorDrawable = false;
            float f5 = f * 0.2f;
            coloredImageSpan.setScale(f5, f5);
        } else {
            coloredImageSpan.setScale(f, f);
        }
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length() - 1, 33);
        AndroidUtilities.replaceMultipleCharSequence("⭐️", spannableStringBuilder, "⭐");
        AndroidUtilities.replaceMultipleCharSequence("⭐ ", spannableStringBuilder, "⭐");
        AndroidUtilities.replaceMultipleCharSequence("⭐", spannableStringBuilder, spannableString);
        AndroidUtilities.replaceMultipleCharSequence("XTR ", spannableStringBuilder, "XTR");
        AndroidUtilities.replaceMultipleCharSequence("XTR", spannableStringBuilder, spannableString);
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder replaceDiamond(CharSequence charSequence) {
        return replaceDiamond(charSequence, 0.9f, null, 0.0f, 0.0f, 1.0f);
    }

    public static SpannableStringBuilder replaceDiamond(CharSequence charSequence, float f) {
        return replaceDiamond(charSequence, f, null, 0.0f, 0.0f, 1.0f);
    }

    public static SpannableStringBuilder replaceDiamond(CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr, float f2, float f3, float f4) {
        SpannableStringBuilder spannableStringBuilder;
        ColoredImageSpan coloredImageSpan;
        if (charSequence == null) {
            return null;
        }
        if (!(charSequence instanceof SpannableStringBuilder)) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = (SpannableStringBuilder) charSequence;
        }
        SpannableString spannableString = new SpannableString("💎 ");
        if (coloredImageSpanArr == null || (coloredImageSpan = coloredImageSpanArr[0]) == null) {
            coloredImageSpan = new ColoredImageSpan(C2807R.drawable.diamond);
            if (coloredImageSpanArr != null) {
                coloredImageSpanArr[0] = coloredImageSpan;
            }
        }
        coloredImageSpan.recolorDrawable = false;
        coloredImageSpan.translate(f2, f3);
        coloredImageSpan.spaceScaleX = f4;
        coloredImageSpan.setScale(f, f);
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length() - 1, 33);
        AndroidUtilities.replaceMultipleCharSequence("💎️", spannableStringBuilder, "💎");
        AndroidUtilities.replaceMultipleCharSequence("💎 ", spannableStringBuilder, "💎");
        AndroidUtilities.replaceMultipleCharSequence("💎", spannableStringBuilder, spannableString);
        AndroidUtilities.replaceMultipleCharSequence("XTR ", spannableStringBuilder, "XTR");
        AndroidUtilities.replaceMultipleCharSequence("XTR", spannableStringBuilder, spannableString);
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder replaceStars(CharSequence charSequence, ColoredImageSpan[] coloredImageSpanArr) {
        return replaceStars(false, charSequence, coloredImageSpanArr);
    }

    public static SpannableStringBuilder replaceStars(boolean z, CharSequence charSequence, ColoredImageSpan[] coloredImageSpanArr) {
        SpannableStringBuilder spannableStringBuilder;
        ColoredImageSpan coloredImageSpan;
        if (charSequence == null) {
            return null;
        }
        if (!(charSequence instanceof SpannableStringBuilder)) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = (SpannableStringBuilder) charSequence;
        }
        if (coloredImageSpanArr == null || (coloredImageSpan = coloredImageSpanArr[0]) == null) {
            coloredImageSpan = new ColoredImageSpan(z ? C2807R.drawable.mini_gram_72 : C2807R.drawable.msg_premium_liststar);
            coloredImageSpan.setScale(z ? 0.222f : 1.13f, z ? 0.222f : 1.13f);
        }
        if (z) {
            coloredImageSpan.recolorDrawable = false;
        }
        if (coloredImageSpanArr != null) {
            coloredImageSpanArr[0] = coloredImageSpan;
        }
        SpannableString spannableString = new SpannableString("⭐ ");
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length() - 1, 33);
        AndroidUtilities.replaceMultipleCharSequence("⭐️", spannableStringBuilder, "⭐");
        AndroidUtilities.replaceMultipleCharSequence("⭐ ", spannableStringBuilder, "⭐");
        AndroidUtilities.replaceMultipleCharSequence("⭐", spannableStringBuilder, spannableString);
        AndroidUtilities.replaceMultipleCharSequence("XTR ", spannableStringBuilder, "XTR");
        AndroidUtilities.replaceMultipleCharSequence("XTR", spannableStringBuilder, spannableString);
        return spannableStringBuilder;
    }

    public static <T extends CharSequence> T whiteGram(boolean z, T t) {
        VectorDrawableCompat vectorDrawableCompatCreate;
        if (z && (t instanceof Spanned)) {
            for (ColoredImageSpan coloredImageSpan : (ColoredImageSpan[]) ((Spanned) t).getSpans(0, t.length(), ColoredImageSpan.class)) {
                Drawable drawable = coloredImageSpan.drawable;
                if (drawable != null && !(drawable instanceof VectorDrawableCompat) && (vectorDrawableCompatCreate = VectorDrawableCompat.create(ApplicationLoader.applicationContext.getResources(), C2807R.drawable.mini_gram_72_white, null)) != null) {
                    vectorDrawableCompatCreate.setBounds(coloredImageSpan.drawable.getBounds());
                    coloredImageSpan.drawable = vectorDrawableCompatCreate;
                    coloredImageSpan.recolorDrawable = false;
                }
            }
        }
        return t;
    }

    public static SpannableStringBuilder replaceStarsWithPlain(CharSequence charSequence, float f) {
        return replaceStarsWithPlain(charSequence, f, (ColoredImageSpan[]) null);
    }

    public static SpannableStringBuilder replaceStarsWithPlain(boolean z, CharSequence charSequence, float f) {
        return replaceStarsWithPlain(z, charSequence, f, (ColoredImageSpan[]) null);
    }

    public static SpannableStringBuilder replaceStarsWithPlain(TL_stars.StarsAmount starsAmount, CharSequence charSequence, float f) {
        return replaceStarsWithPlain(starsAmount instanceof TL_stars.TL_starsTonAmount, charSequence, f, (ColoredImageSpan[]) null);
    }

    public static SpannableStringBuilder replaceStarsWithPlain(CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr) {
        return replaceStarsWithPlain(false, charSequence, f, coloredImageSpanArr);
    }

    public static SpannableStringBuilder replaceStarsWithPlain(TL_stars.StarsAmount starsAmount, CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr) {
        return replaceStarsWithPlain(starsAmount instanceof TL_stars.TL_starsTonAmount, charSequence, f, coloredImageSpanArr);
    }

    public static SpannableStringBuilder replaceStarsWithPlain(boolean z, CharSequence charSequence, float f, ColoredImageSpan[] coloredImageSpanArr) {
        SpannableStringBuilder spannableStringBuilder;
        ColoredImageSpan coloredImageSpan;
        if (charSequence == null) {
            return null;
        }
        if (!(charSequence instanceof SpannableStringBuilder)) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = (SpannableStringBuilder) charSequence;
        }
        String str = z ? "TON" : "⭐";
        int i = z ? C2807R.drawable.mini_gram_72 : C2807R.drawable.star_small_inner;
        SpannableString spannableString = new SpannableString(str.concat(" "));
        if (coloredImageSpanArr == null || (coloredImageSpan = coloredImageSpanArr[0]) == null) {
            if (coloredImageSpanArr != null && coloredImageSpanArr.length > 0) {
                coloredImageSpan = new ColoredImageSpan(i);
                coloredImageSpanArr[0] = coloredImageSpan;
            } else {
                coloredImageSpan = new ColoredImageSpan(i);
            }
        }
        coloredImageSpan.recolorDrawable = false;
        if (z) {
            f *= 0.33f;
        }
        coloredImageSpan.setScale(f, f);
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length() - 1, 33);
        AndroidUtilities.replaceMultipleCharSequence("⭐️", spannableStringBuilder, "⭐");
        AndroidUtilities.replaceMultipleCharSequence("⭐ ", spannableStringBuilder, "⭐");
        AndroidUtilities.replaceMultipleCharSequence("⭐", spannableStringBuilder, spannableString);
        AndroidUtilities.replaceMultipleCharSequence("XTR ", spannableStringBuilder, "XTR");
        AndroidUtilities.replaceMultipleCharSequence("XTR", spannableStringBuilder, spannableString);
        return spannableStringBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0181  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CharSequence getTransactionTitle(int i, boolean z, TL_stars.StarsTransaction starsTransaction) {
        int i2;
        int i3;
        int i4;
        if (starsTransaction.stargift_drop_original_details) {
            return LocaleController.getString(C2807R.string.StarsTransactionRemovedDescription);
        }
        if (starsTransaction.posts_search) {
            return LocaleController.getString(C2807R.string.StarsTransactionPostsSearch);
        }
        if (starsTransaction.premium_gift) {
            return LocaleController.getString(C2807R.string.StarsTransactionPremiumGift);
        }
        if (starsTransaction.phonegroup_message) {
            return LocaleController.getString(starsTransaction.reaction ? C2807R.string.StarsTransactionLiveStoryReactionFee : C2807R.string.StarsTransactionLiveStoryMessageFee);
        }
        if (starsTransaction.paid_message) {
            return LocaleController.formatPluralStringComma("StarsTransactionMessageFee", starsTransaction.paid_messages);
        }
        if (starsTransaction.floodskip) {
            return LocaleController.getString(C2807R.string.StarsTransactionFloodskip);
        }
        if (!starsTransaction.extended_media.isEmpty()) {
            return LocaleController.getString(C2807R.string.StarMediaPurchase);
        }
        TL_stars.StarsAmount starsAmount = starsTransaction.amount;
        int i5 = starsTransaction.flags;
        if ((131072 & i5) == 0 && (65536 & i5) != 0) {
            return LocaleController.formatString(C2807R.string.StarTransactionCommission, AffiliateProgramFragment.percents(starsTransaction.starref_commission_permille));
        }
        if (starsTransaction.stargift != null) {
            if (starsTransaction.stargift_prepaid_upgrade) {
                return LocaleController.getString(C2807R.string.Gift2TransactionPrepaidUpgrade);
            }
            boolean z2 = starsTransaction.refund;
            boolean z3 = starsTransaction.stargift_auction_bid;
            if (z2) {
                if (z3) {
                    i4 = C2807R.string.Gift2TransactionRefundedAuctionBid;
                } else {
                    i4 = starsAmount.amount > 0 ? starsTransaction.stargift_upgrade ? C2807R.string.Gift2TransactionRefundedUpgrade : C2807R.string.Gift2TransactionRefundedSent : C2807R.string.Gift2TransactionRefundedConverted;
                }
                return LocaleController.getString(i4);
            }
            if (z3) {
                i3 = C2807R.string.Gift2TransactionAuctionBid;
            } else {
                i3 = starsAmount.amount > 0 ? C2807R.string.Gift2TransactionConverted : starsTransaction.stargift_upgrade ? C2807R.string.Gift2TransactionUpgraded : C2807R.string.Gift2TransactionSent;
            }
            return LocaleController.getString(i3);
        }
        if (starsTransaction.subscription) {
            int i6 = starsTransaction.subscription_period;
            if (i6 == 2592000) {
                return LocaleController.getString(C2807R.string.StarSubscriptionPurchase);
            }
            if (i6 == 300) {
                return "5-minute subscription fee";
            }
            if (i6 == 60) {
                return "Minute subscription fee";
            }
        }
        if ((i5 & 8192) != 0) {
            return LocaleController.getString(C2807R.string.StarsGiveawayPrizeReceived);
        }
        if (starsTransaction.gift) {
            if (starsTransaction.sent_by != null) {
                return LocaleController.getString(UserObject.isUserSelf(MessagesController.getInstance(i).getUser(Long.valueOf(DialogObject.getPeerDialogId(starsTransaction.sent_by)))) ? C2807R.string.StarsGiftSent : C2807R.string.StarsGiftReceived);
            }
            return LocaleController.getString(C2807R.string.StarsGiftReceived);
        }
        String str = starsTransaction.title;
        if (str != null) {
            return str;
        }
        long peerDialogId = DialogObject.getPeerDialogId(starsTransaction.peer.peer);
        if (peerDialogId != 0) {
            if (peerDialogId >= 0) {
                return UserObject.getUserName(MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(peerDialogId)));
            }
            TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-peerDialogId));
            return chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
        }
        TL_stars.StarsTransactionPeer starsTransactionPeer = starsTransaction.peer;
        if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerFragment) {
            if (!z) {
                boolean z4 = starsTransaction.refund;
                TL_stars.StarsAmount starsAmount2 = starsTransaction.amount;
                i2 = (!z4 ? starsAmount2.negative() : starsAmount2.positive()) ? C2807R.string.StarsTransactionFragment : C2807R.string.StarsTransactionWithdrawFragment;
            }
            return LocaleController.getString(i2);
        }
        if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerPremiumBot) {
            return LocaleController.getString(C2807R.string.StarsTransactionBot);
        }
        if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeerAds) {
            return LocaleController.getString(C2807R.string.StarsTransactionAds);
        }
        return LocaleController.getString(C2807R.string.StarsTransactionUnsupported);
    }

    public static BottomSheet showTransactionSheet(Context context, int i, int i2, TLRPC.Peer peer, TLRPC.Peer peer2, TLRPC.TL_messageActionPrizeStars tL_messageActionPrizeStars, Theme.ResourcesProvider resourcesProvider) {
        TL_stars.StarsTransaction starsTransaction = new TL_stars.StarsTransaction();
        starsTransaction.title = null;
        starsTransaction.description = null;
        starsTransaction.photo = null;
        TL_stars.TL_starsTransactionPeer tL_starsTransactionPeer = new TL_stars.TL_starsTransactionPeer();
        starsTransaction.peer = tL_starsTransactionPeer;
        tL_starsTransactionPeer.peer = tL_messageActionPrizeStars.boost_peer;
        starsTransaction.date = i2;
        starsTransaction.amount = TL_stars.StarsAmount.ofStars(tL_messageActionPrizeStars.stars);
        starsTransaction.id = tL_messageActionPrizeStars.transaction_id;
        starsTransaction.gift = true;
        starsTransaction.flags |= 8192;
        starsTransaction.giveaway_post_id = tL_messageActionPrizeStars.giveaway_msg_id;
        starsTransaction.sent_by = peer;
        starsTransaction.received_by = peer2;
        return showTransactionSheet(context, false, 0L, i, starsTransaction, resourcesProvider);
    }

    public static BottomSheet showTransactionSheet(Context context, int i, int i2, TLRPC.Peer peer, TLRPC.Peer peer2, TLRPC.TL_messageActionGiftStars tL_messageActionGiftStars, Theme.ResourcesProvider resourcesProvider) {
        TL_stars.StarsTransaction starsTransaction = new TL_stars.StarsTransaction();
        starsTransaction.title = null;
        starsTransaction.description = null;
        starsTransaction.photo = null;
        TL_stars.TL_starsTransactionPeer tL_starsTransactionPeer = new TL_stars.TL_starsTransactionPeer();
        starsTransaction.peer = tL_starsTransactionPeer;
        tL_starsTransactionPeer.peer = peer;
        starsTransaction.date = i2;
        starsTransaction.amount = TL_stars.StarsAmount.ofStars(tL_messageActionGiftStars.stars);
        starsTransaction.id = tL_messageActionGiftStars.transaction_id;
        starsTransaction.gift = true;
        starsTransaction.sent_by = peer;
        starsTransaction.received_by = peer2;
        return showTransactionSheet(context, false, 0L, i, starsTransaction, resourcesProvider);
    }

    public static BottomSheet showTransactionSheet(Context context, int i, int i2, TLRPC.Peer peer, TLRPC.Peer peer2, TLRPC.TL_messageActionGiftTon tL_messageActionGiftTon, Theme.ResourcesProvider resourcesProvider) {
        TL_stars.StarsTransaction starsTransaction = new TL_stars.StarsTransaction();
        starsTransaction.title = null;
        starsTransaction.description = null;
        starsTransaction.photo = null;
        TL_stars.TL_starsTransactionPeer tL_starsTransactionPeer = new TL_stars.TL_starsTransactionPeer();
        starsTransaction.peer = tL_starsTransactionPeer;
        tL_starsTransactionPeer.peer = peer;
        starsTransaction.date = i2;
        TL_stars.TL_starsTonAmount tL_starsTonAmount = new TL_stars.TL_starsTonAmount();
        starsTransaction.amount = tL_starsTonAmount;
        tL_starsTonAmount.amount = tL_messageActionGiftTon.cryptoAmount;
        starsTransaction.id = tL_messageActionGiftTon.transaction_id;
        starsTransaction.gift = true;
        starsTransaction.sent_by = peer;
        starsTransaction.received_by = peer2;
        return showTransactionSheet(context, false, 0L, i, starsTransaction, resourcesProvider);
    }

    public static BottomSheet showTransactionSheet(Context context, int i, int i2, TLRPC.TL_messageActionPaymentRefunded tL_messageActionPaymentRefunded, Theme.ResourcesProvider resourcesProvider) {
        TL_stars.StarsTransaction starsTransaction = new TL_stars.StarsTransaction();
        starsTransaction.title = null;
        starsTransaction.description = null;
        starsTransaction.photo = null;
        TL_stars.TL_starsTransactionPeer tL_starsTransactionPeer = new TL_stars.TL_starsTransactionPeer();
        starsTransaction.peer = tL_starsTransactionPeer;
        tL_starsTransactionPeer.peer = tL_messageActionPaymentRefunded.peer;
        starsTransaction.date = i2;
        starsTransaction.amount = TL_stars.StarsAmount.ofStars(tL_messageActionPaymentRefunded.total_amount);
        starsTransaction.id = tL_messageActionPaymentRefunded.charge.id;
        starsTransaction.refund = true;
        return showTransactionSheet(context, false, 0L, i, starsTransaction, resourcesProvider);
    }

    public static BottomSheet showTransactionSheet(Context context, boolean z, int i, TLRPC.TL_payments_paymentReceiptStars tL_payments_paymentReceiptStars, Theme.ResourcesProvider resourcesProvider) {
        TL_stars.StarsTransaction starsTransaction = new TL_stars.StarsTransaction();
        starsTransaction.title = tL_payments_paymentReceiptStars.title;
        starsTransaction.description = tL_payments_paymentReceiptStars.description;
        starsTransaction.photo = tL_payments_paymentReceiptStars.photo;
        TL_stars.TL_starsTransactionPeer tL_starsTransactionPeer = new TL_stars.TL_starsTransactionPeer();
        starsTransaction.peer = tL_starsTransactionPeer;
        tL_starsTransactionPeer.peer = MessagesController.getInstance(i).getPeer(tL_payments_paymentReceiptStars.bot_id);
        starsTransaction.date = tL_payments_paymentReceiptStars.date;
        starsTransaction.amount = TL_stars.StarsAmount.ofStars(-tL_payments_paymentReceiptStars.total_amount);
        starsTransaction.id = tL_payments_paymentReceiptStars.transaction_id;
        return showTransactionSheet(context, z, 0L, i, starsTransaction, resourcesProvider);
    }

    public static String getGiftStarsEmoji(long j) {
        if (j <= 1000) {
            return "2⃣";
        }
        if (j < 2500) {
            return "3⃣";
        }
        return "4⃣";
    }

    public static Runnable setGiftImage(View view, ImageReceiver imageReceiver, long j) {
        return setGiftImage(view, imageReceiver, getGiftStarsEmoji(j));
    }

    public static Runnable setTonGiftImage(View view, ImageReceiver imageReceiver, long j) {
        return setGiftImage(view, imageReceiver, getTonGiftEmoji(j), true);
    }

    public static String getPremiumGiftMonthsEmoji(int i) {
        if (i == 3) {
            return "2⃣";
        }
        if (i == 6) {
            return "3⃣";
        }
        if (i == 12) {
            return "4⃣";
        }
        if (i == 24) {
            return "5⃣";
        }
        return "1⃣";
    }

    public static String getTonGiftEmoji(long j) {
        if (j <= RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
            return "2⃣";
        }
        if (j <= 50000000000L) {
            return "1⃣";
        }
        return "3⃣";
    }

    public static Runnable setPremiumGiftImage(View view, ImageReceiver imageReceiver, int i) {
        return setGiftImage(view, imageReceiver, getPremiumGiftMonthsEmoji(i));
    }

    public static Runnable setGiftImage(View view, ImageReceiver imageReceiver, String str) {
        return setGiftImage(view, imageReceiver, str, false);
    }

    public static Runnable setGiftImage(View view, final ImageReceiver imageReceiver, final String str, final boolean z) {
        final boolean[] zArr = new boolean[1];
        final int currentAccount = imageReceiver.getCurrentAccount();
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                StarsIntroActivity.$r8$lambda$Thc2AVcSQy69lVnyvZDeWdPLg14(z, currentAccount, str, imageReceiver, zArr);
            }
        };
        runnable.run();
        final Runnable runnableListen = NotificationCenter.getInstance(currentAccount).listen(view, z ? NotificationCenter.didUpdateTonGiftStickers : NotificationCenter.didUpdatePremiumGiftStickers, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda42
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                runnable.run();
            }
        });
        final Runnable runnableListen2 = NotificationCenter.getInstance(currentAccount).listen(view, NotificationCenter.diceStickersDidLoad, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda43
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                runnable.run();
            }
        });
        return new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                StarsIntroActivity.m20978$r8$lambda$sFFyu7tglm5UYol9TNRZbCKkGk(runnableListen, runnableListen2);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$Thc2AVcSQy69lVnyvZDeWdPLg14(boolean z, int i, String str, ImageReceiver imageReceiver, final boolean[] zArr) {
        String str2;
        TLRPC.Document document;
        if (z) {
            str2 = UserConfig.getInstance(i).premiumTonStickerPack;
            if (str2 == null) {
                MediaDataController.getInstance(i).checkTonGiftStickers();
                return;
            }
        } else {
            str2 = UserConfig.getInstance(i).premiumGiftsStickerPack;
            if (str2 == null) {
                MediaDataController.getInstance(i).checkPremiumGiftStickers();
                return;
            }
        }
        TLRPC.TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(i).getStickerSetByName(str2);
        if (stickerSetByName == null) {
            stickerSetByName = MediaDataController.getInstance(i).getStickerSetByEmojiOrName(str2);
        }
        TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSetByName;
        if (tL_messages_stickerSet != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= tL_messages_stickerSet.packs.size()) {
                    break;
                }
                TLRPC.TL_stickerPack tL_stickerPack = tL_messages_stickerSet.packs.get(i2);
                if (TextUtils.equals(tL_stickerPack.emoticon, str) && !tL_stickerPack.documents.isEmpty()) {
                    long jLongValue = tL_stickerPack.documents.get(0).longValue();
                    for (int i3 = 0; i3 < tL_messages_stickerSet.documents.size(); i3++) {
                        document = tL_messages_stickerSet.documents.get(i3);
                        if (document != null && document.id == jLongValue) {
                            break;
                        }
                    }
                } else {
                    i2++;
                }
            }
            document = null;
            if (document == null && !tL_messages_stickerSet.documents.isEmpty()) {
                document = tL_messages_stickerSet.documents.get(0);
            }
        } else {
            document = null;
        }
        if (document != null) {
            imageReceiver.setAllowStartLottieAnimation(true);
            imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Stars.StarsIntroActivity.7
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public void didSetImage(ImageReceiver imageReceiver2, boolean z2, boolean z3, boolean z4) {
                    RLottieDrawable lottieAnimation;
                    if (!z2 || (lottieAnimation = imageReceiver2.getLottieAnimation()) == null || zArr[0]) {
                        return;
                    }
                    lottieAnimation.setCurrentFrame(0, false);
                    AndroidUtilities.runOnUIThread(new ChatActionCell$$ExternalSyntheticLambda16(lottieAnimation));
                    zArr[0] = true;
                }
            });
            Drawable svgThumb = DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 0.3f);
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 160, true, null, true);
            imageReceiver.setAutoRepeat(0);
            imageReceiver.setImage(ImageLocation.getForDocument(document), "160_160_nr", ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "160_160", svgThumb, document.size, "tgs", tL_messages_stickerSet, 1);
            return;
        }
        MediaDataController.getInstance(i).loadStickersByEmojiOrName(str2, false, tL_messages_stickerSet == null);
    }

    /* JADX INFO: renamed from: $r8$lambda$sFFyu7tglm5UYol-9TNRZbCKkGk, reason: not valid java name */
    public static /* synthetic */ void m20978$r8$lambda$sFFyu7tglm5UYol9TNRZbCKkGk(Runnable runnable, Runnable runnable2) {
        runnable.run();
        runnable2.run();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x050a  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0643  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0650  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0740  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x078c  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0ad1  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0d6f  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0ee7  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0ef1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0f03  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0f06  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0f14  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0f6c  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0fa2  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0fe1  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x1028  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x103b  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x1046  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x1077  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x1082  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x109a  */
    /* JADX WARN: Type inference failed for: r0v11, types: [org.telegram.ui.Components.TableView] */
    /* JADX WARN: Type inference failed for: r0v12, types: [org.telegram.ui.Components.TableView] */
    /* JADX WARN: Type inference failed for: r0v17, types: [org.telegram.ui.Components.TableView] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23, types: [android.view.View, org.telegram.ui.Components.TableView] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v61, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout, org.telegram.ui.Stars.StarsIntroActivity$8] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v67 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v72 */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r0v74 */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r0v77 */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v88 */
    /* JADX WARN: Type inference failed for: r1v164 */
    /* JADX WARN: Type inference failed for: r1v165 */
    /* JADX WARN: Type inference failed for: r1v166 */
    /* JADX WARN: Type inference failed for: r1v167 */
    /* JADX WARN: Type inference failed for: r1v168 */
    /* JADX WARN: Type inference failed for: r1v169 */
    /* JADX WARN: Type inference failed for: r1v170 */
    /* JADX WARN: Type inference failed for: r1v171 */
    /* JADX WARN: Type inference failed for: r1v172 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r1v20, types: [android.view.View, android.widget.TextView, org.telegram.ui.Components.LinkSpanDrawable$LinksTextView] */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v59, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v66 */
    /* JADX WARN: Type inference failed for: r3v48, types: [android.view.View, android.widget.TextView, org.telegram.ui.Components.LinkSpanDrawable$LinksTextView] */
    /* JADX WARN: Type inference failed for: r3v95, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
    /* JADX WARN: Type inference failed for: r52v0 */
    /* JADX WARN: Type inference failed for: r52v1 */
    /* JADX WARN: Type inference failed for: r52v11 */
    /* JADX WARN: Type inference failed for: r52v12 */
    /* JADX WARN: Type inference failed for: r52v13 */
    /* JADX WARN: Type inference failed for: r52v14 */
    /* JADX WARN: Type inference failed for: r52v15 */
    /* JADX WARN: Type inference failed for: r52v16 */
    /* JADX WARN: Type inference failed for: r52v17 */
    /* JADX WARN: Type inference failed for: r52v18 */
    /* JADX WARN: Type inference failed for: r52v19 */
    /* JADX WARN: Type inference failed for: r52v2 */
    /* JADX WARN: Type inference failed for: r52v20 */
    /* JADX WARN: Type inference failed for: r52v21 */
    /* JADX WARN: Type inference failed for: r52v22 */
    /* JADX WARN: Type inference failed for: r52v23 */
    /* JADX WARN: Type inference failed for: r52v24 */
    /* JADX WARN: Type inference failed for: r52v25 */
    /* JADX WARN: Type inference failed for: r52v26 */
    /* JADX WARN: Type inference failed for: r52v27 */
    /* JADX WARN: Type inference failed for: r52v28 */
    /* JADX WARN: Type inference failed for: r52v29 */
    /* JADX WARN: Type inference failed for: r52v3 */
    /* JADX WARN: Type inference failed for: r52v30 */
    /* JADX WARN: Type inference failed for: r52v31 */
    /* JADX WARN: Type inference failed for: r52v4 */
    /* JADX WARN: Type inference failed for: r52v5 */
    /* JADX WARN: Type inference failed for: r52v6 */
    /* JADX WARN: Type inference failed for: r52v7 */
    /* JADX WARN: Type inference failed for: r52v8 */
    /* JADX WARN: Type inference failed for: r52v9 */
    /* JADX WARN: Type inference failed for: r5v138, types: [org.telegram.ui.Components.AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable] */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v35, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v94, types: [android.view.View, android.widget.TextView, org.telegram.ui.Components.LinkSpanDrawable$LinksTextView] */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v35 */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static BottomSheet showTransactionSheet(final Context context, final boolean z, final long j, final int i, final TL_stars.StarsTransaction starsTransaction, final Theme.ResourcesProvider resourcesProvider) {
        boolean z2;
        BottomSheet.Builder builder;
        String str;
        boolean z3;
        boolean z4;
        final Context context2;
        final int i2;
        TL_stars.StarsTransaction starsTransaction2;
        boolean z5;
        final long j2;
        final Theme.ResourcesProvider resourcesProvider2;
        String str2;
        TLRPC.Peer peer;
        long peerDialogId;
        ImageLocation imageLocation;
        ImageLocation forDocument;
        ?? r1;
        final BottomSheet[] bottomSheetArr;
        boolean z6;
        ?? r5;
        ?? r12;
        TL_stars.StarGift starGift;
        final BottomSheet[] bottomSheetArr2;
        final TL_stars.StarsTransaction starsTransaction3;
        final Context context3;
        final BottomSheet[] bottomSheetArr3;
        final TL_stars.StarsTransaction starsTransaction4;
        final Theme.ResourcesProvider resourcesProvider3;
        ?? r0;
        ?? r52;
        ?? r522;
        ?? r02;
        ?? r523;
        ?? r03;
        TL_stars.StarsTransactionPeer starsTransactionPeer;
        boolean z7;
        TL_stars.StarGift starGift2;
        final Context context4;
        BaseFragment safeLastFragment;
        int i3;
        ImageLocation forDocument2;
        ?? r524;
        ?? r04;
        TLRPC.User user;
        final long j3;
        final long j4;
        String string;
        final int i4;
        long j5;
        TableView tableView;
        BottomSheet[] bottomSheetArr4;
        String string2;
        long j6;
        Theme.ResourcesProvider resourcesProvider4;
        TableView tableView2;
        ?? r525;
        long j7;
        BottomSheet[] bottomSheetArr5;
        TL_stars.StarsTransaction starsTransaction5;
        BottomSheet[] bottomSheetArr6;
        TL_stars.StarsAmount starsAmount;
        ?? r7;
        TableView tableView3;
        if (starsTransaction == null || context == null) {
            return null;
        }
        TL_stars.StarsAmount starsAmount2 = starsTransaction.amount;
        final boolean z8 = starsAmount2 instanceof TL_stars.TL_starsTonAmount;
        int i5 = starsTransaction.flags;
        boolean z9 = (i5 & 8192) != 0;
        boolean z10 = ((131072 & i5) == 0 || starsTransaction.paid_message) ? false : true;
        boolean z11 = (z10 || (i5 & 65536) == 0 || starsTransaction.paid_message) ? false : true;
        boolean zPositive = starsAmount2.positive();
        boolean zNegative = starsTransaction.amount.negative();
        BottomSheet.Builder builder2 = new BottomSheet.Builder(context, false, resourcesProvider);
        BottomSheet[] bottomSheetArr7 = new BottomSheet[1];
        final ?? linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.dp((z9 || starsTransaction.gift || (starsTransaction.stargift_resale && (starsTransaction.stargift instanceof TL_stars.TL_starGiftUnique))) ? 0.0f : 20.0f), 0, AndroidUtilities.dp(8.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        if (starsTransaction.stargift_resale) {
            TL_stars.StarGift starGift3 = starsTransaction.stargift;
            if (starGift3 instanceof TL_stars.TL_starGiftUnique) {
                final TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift3;
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class);
                TL_stars.starGiftAttributePattern stargiftattributepattern = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributePattern.class);
                final ?? swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(null, AndroidUtilities.dp(20.0f));
                final RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, AndroidUtilities.dp(200.0f), new int[]{stargiftattributebackdrop.center_color | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                z3 = z9;
                final Paint paint = new Paint(1);
                final Matrix matrix = new Matrix();
                paint.setShader(radialGradient);
                z2 = z10;
                str = "fragment";
                builder = builder2;
                ?? r05 = new LinearLayout(context) { // from class: org.telegram.ui.Stars.StarsIntroActivity.8
                    private final Path clipPath = new Path();

                    @Override // android.view.ViewGroup, android.view.View
                    public void dispatchDraw(Canvas canvas) {
                        float fDp = AndroidUtilities.dp(10.0f);
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(0.0f, AndroidUtilities.dp(2.0f) + 1, getWidth(), getHeight() + fDp);
                        this.clipPath.rewind();
                        this.clipPath.addRoundRect(rectF, fDp, fDp, Path.Direction.CW);
                        canvas.save();
                        canvas.clipPath(this.clipPath);
                        matrix.reset();
                        matrix.postTranslate(getWidth() / 2.0f, AndroidUtilities.dp(100.0f));
                        radialGradient.setLocalMatrix(matrix);
                        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
                        canvas.save();
                        canvas.translate(getWidth() / 2.0f, AndroidUtilities.dp(100.0f));
                        StarGiftPatterns.drawPattern(canvas, swapAnimatedEmojiDrawable, getWidth(), AndroidUtilities.dp(180.0f), 1.0f, 1.0f);
                        canvas.restore();
                        super.dispatchDraw(canvas);
                        canvas.restore();
                    }

                    @Override // android.view.ViewGroup, android.view.View
                    public void onAttachedToWindow() {
                        super.onAttachedToWindow();
                        swapAnimatedEmojiDrawable.attach();
                    }

                    @Override // android.view.ViewGroup, android.view.View
                    public void onDetachedFromWindow() {
                        super.onDetachedFromWindow();
                        swapAnimatedEmojiDrawable.detach();
                    }
                };
                swapAnimatedEmojiDrawable.setParentView(r05);
                swapAnimatedEmojiDrawable.set(stargiftattributepattern.document, false);
                r05.setOrientation(1);
                BackupImageView backupImageView = new BackupImageView(context);
                setGiftImage(backupImageView.getImageReceiver(), starsTransaction.stargift, 160);
                r05.addView(backupImageView, LayoutHelper.createLinear(160, 160, 17, 0, 20, 0, 0));
                if (!TextUtils.isEmpty(tL_starGiftUnique.slug)) {
                    ScaleStateListAnimator.apply(backupImageView);
                    backupImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Browser.openUrl(context, "https://" + MessagesController.getInstance(i).linkPrefix + "/nft/" + tL_starGiftUnique.slug);
                        }
                    });
                }
                TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, 0, true);
                textViewMakeTextView.setTextColor(-1);
                textViewMakeTextView.setText(tL_starGiftUnique.title);
                r05.addView(textViewMakeTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 1, 0, 0));
                TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 13.0f, 0, false);
                textViewMakeTextView2.setTextColor(stargiftattributebackdrop.text_color | (-16777216));
                textViewMakeTextView2.setText(LocaleController.formatPluralStringComma("Gift2CollectionNumber", tL_starGiftUnique.num));
                r05.addView(textViewMakeTextView2, LayoutHelper.createLinear(-2, -2, 17, 0, 5, 0, 0));
                TextView textViewMakeTextView3 = TextHelper.makeTextView(context, 18.0f, 0, true);
                textViewMakeTextView3.setTextColor(-1);
                TL_stars.StarsAmount starsAmount3 = starsTransaction.amount;
                textViewMakeTextView3.setText(replaceStars(starsAmount3, TextUtils.concat(zPositive ? "+" : _UrlKt.FRAGMENT_ENCODE_SET, formatStarsAmount(starsAmount3), " ⭐️"), 1.25f));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textViewMakeTextView3.getText());
                if (starsTransaction.refund) {
                    appendStatus(spannableStringBuilder, textViewMakeTextView3, LocaleController.getString(C2807R.string.StarsRefunded));
                } else if (starsTransaction.failed) {
                    appendStatus(spannableStringBuilder, textViewMakeTextView3, LocaleController.getString(C2807R.string.StarsFailed));
                } else if (starsTransaction.pending) {
                    appendStatus(spannableStringBuilder, textViewMakeTextView3, LocaleController.getString(C2807R.string.StarsPending));
                }
                textViewMakeTextView3.setText(spannableStringBuilder);
                r05.addView(textViewMakeTextView3, LayoutHelper.createLinear(-2, -2, 17, 0, 11, 0, 17));
                linearLayout.addView(r05, LayoutHelper.createLinear(-1, -2));
                context2 = context;
                i2 = i;
                starsTransaction2 = starsTransaction;
                r12 = linearLayout;
                z5 = z11;
                bottomSheetArr = bottomSheetArr7;
                resourcesProvider2 = resourcesProvider;
                TableView tableView4 = new TableView(context2, resourcesProvider2);
                starGift = starsTransaction2.stargift;
                if (starGift != null) {
                    if (starsTransaction2.stargift_upgrade) {
                        if ((starsTransaction2.flags & 256) != 0 && starsTransaction2.msg_id > 0) {
                            final ButtonSpan.TextViewButtons textViewButtons = (ButtonSpan.TextViewButtons) ((TableView.TableRowContent) tableView4.addRow(LocaleController.getString(C2807R.string.StarGiftReason), LocaleController.getString(C2807R.string.StarGiftReasonUpgrade)).getChildAt(1)).getChildAt(0);
                            TL_stars.TL_inputSavedStarGiftUser tL_inputSavedStarGiftUser = new TL_stars.TL_inputSavedStarGiftUser();
                            tL_inputSavedStarGiftUser.msg_id = starsTransaction2.msg_id;
                            StarsController.getInstance(i2).getUserStarGift(tL_inputSavedStarGiftUser, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda27
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj) {
                                    StarsIntroActivity.$r8$lambda$fQMhWWgBnGNgmShghlmbb77XPAg(textViewButtons, i2, context2, resourcesProvider2, (TL_stars.SavedStarGift) obj);
                                }
                            });
                        }
                        TL_stars.StarsTransactionPeer starsTransactionPeer2 = starsTransaction2.peer;
                        if (starsTransactionPeer2 instanceof TL_stars.TL_starsTransactionPeer) {
                            final long peerDialogId2 = DialogObject.getPeerDialogId(((TL_stars.TL_starsTransactionPeer) starsTransactionPeer2).peer);
                            r7 = r12;
                            TableView tableView5 = tableView4;
                            tableView5.addRowUser(LocaleController.getString(C2807R.string.StarGiftUpgradeGiftFrom), i2, peerDialogId2, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda28
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StarsIntroActivity.$r8$lambda$z6029uLjkfSiuWjHimoYCU9kjbI(bottomSheetArr, peerDialogId2);
                                }
                            });
                            Context context5 = context2;
                            starsTransaction4 = starsTransaction2;
                            context3 = context5;
                            tableView3 = tableView5;
                        } else {
                            r7 = r12;
                            Context context6 = context2;
                            starsTransaction4 = starsTransaction2;
                            context3 = context6;
                            tableView3 = tableView4;
                        }
                        r524 = r7;
                        bottomSheetArr3 = bottomSheetArr;
                        r04 = tableView3;
                    } else {
                        final int i6 = i2;
                        ?? r2 = r12;
                        if (starGift instanceof TL_stars.TL_starGiftUnique) {
                            final String str3 = starGift.slug;
                            if (!TextUtils.isEmpty(str3)) {
                                tableView4.addRowLink(LocaleController.getString(C2807R.string.Gift2Gift), starsTransaction2.stargift.title + " #" + starsTransaction2.stargift.num, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda29
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        Browser.openUrl(context2, "https://" + MessagesController.getInstance(i6).linkPrefix + "/nft/" + str3);
                                    }
                                });
                            }
                            final long clientUserId = UserConfig.getInstance(i6).getClientUserId();
                            long peerDialogId3 = DialogObject.getPeerDialogId(((TL_stars.TL_starsTransactionPeer) starsTransaction2.peer).peer);
                            if (!starsTransaction2.offer) {
                                if (starsTransaction2.stargift_resale) {
                                    if (!zNegative) {
                                        tableView4.addRow(LocaleController.getString(C2807R.string.StarGiftReason), LocaleController.getString(starsTransaction2.refund ? C2807R.string.StarGiftReasonPurchase : C2807R.string.StarGiftReasonSale));
                                        j6 = clientUserId;
                                    } else {
                                        tableView4.addRow(LocaleController.getString(C2807R.string.StarGiftReason), LocaleController.getString(starsTransaction2.refund ? C2807R.string.StarGiftReasonSale : C2807R.string.StarGiftReasonPurchase));
                                    }
                                } else if (starsTransaction2.stargift_drop_original_details) {
                                    tableView4.addRow(LocaleController.getString(C2807R.string.StarGiftReason), LocaleController.getString(C2807R.string.StarGiftReasonRemovedDescription));
                                    j6 = clientUserId;
                                    peerDialogId3 = j6;
                                } else {
                                    tableView4.addRow(LocaleController.getString(C2807R.string.StarGiftReason), LocaleController.getString(C2807R.string.StarGiftReasonTransfer));
                                }
                                j6 = peerDialogId3;
                                peerDialogId3 = clientUserId;
                            } else if (!zNegative) {
                                tableView4.addRow(LocaleController.getString(C2807R.string.StarGiftReason), LocaleController.getString(starsTransaction2.refund ? C2807R.string.StarGiftReasonOfferRefund : C2807R.string.StarGiftReasonSale));
                                j6 = clientUserId;
                            } else {
                                tableView4.addRow(LocaleController.getString(C2807R.string.StarGiftReason), LocaleController.getString(starsTransaction2.refund ? C2807R.string.StarGiftReasonSale : C2807R.string.StarGiftReasonOffer));
                                j6 = peerDialogId3;
                                peerDialogId3 = clientUserId;
                            }
                            if (peerDialogId3 != clientUserId) {
                                resourcesProvider4 = resourcesProvider;
                                TableView tableView6 = tableView4;
                                r525 = r2;
                                final BottomSheet[] bottomSheetArr8 = bottomSheetArr;
                                starsTransaction5 = starsTransaction2;
                                final long j8 = peerDialogId3;
                                bottomSheetArr5 = bottomSheetArr8;
                                j7 = clientUserId;
                                tableView6.addRowUser(LocaleController.getString(C2807R.string.Gift2From), i, j8, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda30
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        StarsIntroActivity.$r8$lambda$8D3iPuiORhRvfU_OginKQroc44M(bottomSheetArr8, j8, clientUserId);
                                    }
                                });
                                tableView2 = tableView6;
                            } else {
                                resourcesProvider4 = resourcesProvider;
                                tableView2 = tableView4;
                                r525 = r2;
                                j7 = clientUserId;
                                bottomSheetArr5 = bottomSheetArr;
                                starsTransaction5 = starsTransaction2;
                            }
                            if (j6 != j7) {
                                final long j9 = j6;
                                final long j10 = j7;
                                final BottomSheet[] bottomSheetArr9 = bottomSheetArr5;
                                bottomSheetArr6 = bottomSheetArr9;
                                tableView2.addRowUser(LocaleController.getString(C2807R.string.Gift2To), i, j9, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda31
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        StarsIntroActivity.$r8$lambda$EvGo8SDEtLNryPvpxOeqUYlVN2U(bottomSheetArr9, j9, j10);
                                    }
                                });
                            } else {
                                bottomSheetArr6 = bottomSheetArr5;
                            }
                            if ((peerDialogId3 == clientUserId || starsTransaction5.stargift_resale) && (starsAmount = starsTransaction5.starref_amount) != null && starsTransaction5.starref_commission_permille > 0) {
                                TL_stars.StarsAmount starsAmount4 = starsTransaction5.amount;
                                if ((starsAmount4 instanceof TL_stars.TL_starsTonAmount) && (starsAmount instanceof TL_stars.TL_starsTonAmount)) {
                                    TL_stars.TL_starsTonAmount tL_starsTonAmount = new TL_stars.TL_starsTonAmount();
                                    tL_starsTonAmount.amount = starsTransaction5.amount.amount + starsTransaction5.starref_amount.amount;
                                    ColoredImageSpan[] coloredImageSpanArr = new ColoredImageSpan[1];
                                    tableView2.addRow(LocaleController.getString(C2807R.string.StarsTransactionFullPrice), replaceStarsWithPlain(starsTransaction5.amount, "⭐️ " + ((Object) formatStarsAmount(tL_starsTonAmount)), 0.8f, coloredImageSpanArr));
                                    ColoredImageSpan coloredImageSpan = coloredImageSpanArr[0];
                                    if (coloredImageSpan != null) {
                                        coloredImageSpan.setOverrideColor(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider4));
                                    }
                                } else {
                                    long jAbs = Math.abs(Math.round(starsAmount4.toDouble() + starsTransaction5.starref_amount.toDouble()));
                                    tableView2.addRow(LocaleController.getString(C2807R.string.StarsTransactionFullPrice), replaceStarsWithPlain(starsTransaction5.amount, "⭐️ " + LocaleController.formatNumber(jAbs, ','), 0.8f));
                                }
                            }
                            i2 = i;
                            bottomSheetArr3 = bottomSheetArr6;
                            context3 = context2;
                            starsTransaction4 = starsTransaction5;
                            resourcesProvider3 = resourcesProvider4;
                            r03 = tableView2;
                            r523 = r525;
                            starsTransactionPeer = starsTransaction4.peer;
                            if ((starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeer) || (starsTransaction4.flags & 256) == 0) {
                                z7 = z8;
                            } else {
                                final long peerDialogId4 = DialogObject.getPeerDialogId(starsTransactionPeer.peer);
                                if (z) {
                                    peerDialogId4 = j;
                                }
                                TLRPC.Chat chat = MessagesController.getInstance(i2).getChat(Long.valueOf(-peerDialogId4));
                                if (chat != null) {
                                    ?? linksTextView = new LinkSpanDrawable.LinksTextView(context3, resourcesProvider3);
                                    z7 = z8;
                                    linksTextView.setPadding(AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f), AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f));
                                    linksTextView.setEllipsize(TextUtils.TruncateAt.END);
                                    int i7 = Theme.key_chat_messageLinkIn;
                                    linksTextView.setTextColor(Theme.getColor(i7, resourcesProvider3));
                                    linksTextView.setLinkTextColor(Theme.getColor(i7, resourcesProvider3));
                                    linksTextView.setTextSize(1, 14.0f);
                                    linksTextView.setDisablePaddingsOffsetY(true);
                                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(_UrlKt.FRAGMENT_ENCODE_SET);
                                    if (!starsTransaction4.extended_media.isEmpty()) {
                                        ArrayList<TLRPC.MessageMedia> arrayList = starsTransaction4.extended_media;
                                        int size = arrayList.size();
                                        int i8 = 0;
                                        int i9 = 0;
                                        while (i9 < size) {
                                            TLRPC.MessageMedia messageMedia = arrayList.get(i9);
                                            int i10 = i9 + 1;
                                            ArrayList<TLRPC.MessageMedia> arrayList2 = arrayList;
                                            TLRPC.MessageMedia messageMedia2 = messageMedia;
                                            int i11 = size;
                                            int i12 = i8;
                                            ImageReceiverSpan imageReceiverSpan = new ImageReceiverSpan(linksTextView, i2, 24.0f);
                                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
                                                i3 = i10;
                                                forDocument2 = ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(messageMedia2.photo.sizes, AndroidUtilities.dp(24.0f), true), messageMedia2.photo);
                                            } else {
                                                i3 = i10;
                                                forDocument2 = messageMedia2 instanceof TLRPC.TL_messageMediaDocument ? ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(messageMedia2.document.thumbs, AndroidUtilities.dp(24.0f), true), messageMedia2.document) : null;
                                            }
                                            if (forDocument2 != null) {
                                                imageReceiverSpan.setRoundRadius(6.0f);
                                                imageReceiverSpan.imageReceiver.setImage(forDocument2, "24_24", null, null, null, 0);
                                                SpannableString spannableString = new SpannableString("x");
                                                spannableString.setSpan(imageReceiverSpan, 0, spannableString.length(), 33);
                                                spannableStringBuilder2.append((CharSequence) spannableString);
                                                spannableStringBuilder2.append((CharSequence) " ");
                                                i8 = i12 + 1;
                                            } else {
                                                i8 = i12;
                                            }
                                            if (i8 >= 3) {
                                                break;
                                            }
                                            size = i11;
                                            i9 = i3;
                                            arrayList = arrayList2;
                                        }
                                    }
                                    spannableStringBuilder2.append((CharSequence) " ");
                                    int length = spannableStringBuilder2.length();
                                    String publicUsername = ChatObject.getPublicUsername(chat);
                                    if (TextUtils.isEmpty(publicUsername)) {
                                        spannableStringBuilder2.append((CharSequence) chat.title);
                                    } else {
                                        spannableStringBuilder2.append((CharSequence) (MessagesController.getInstance(i2).linkPrefix + "/" + publicUsername + "/" + starsTransaction4.msg_id));
                                    }
                                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda19
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            StarsIntroActivity.$r8$lambda$ipPdXX7asKv2b8XGKXux2lIeVQg(bottomSheetArr3, peerDialogId4, starsTransaction4);
                                        }
                                    };
                                    spannableStringBuilder2.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stars.StarsIntroActivity.11
                                        @Override // android.text.style.ClickableSpan
                                        public void onClick(View view) {
                                            runnable.run();
                                        }

                                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                                        public void updateDrawState(TextPaint textPaint) {
                                            textPaint.setUnderlineText(false);
                                        }
                                    }, length, spannableStringBuilder2.length(), 33);
                                    linksTextView.setSingleLine(true);
                                    linksTextView.setEllipsize(TextUtils.TruncateAt.END);
                                    linksTextView.setText(spannableStringBuilder2);
                                    linksTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda20
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            runnable.run();
                                        }
                                    });
                                    r03.addRowUnpadded(LocaleController.getString(starsTransaction4.reaction ? C2807R.string.StarsTransactionMessage : C2807R.string.StarsTransactionMedia), linksTextView);
                                }
                            }
                            if (!TextUtils.isEmpty(starsTransaction4.id) && !z3) {
                                String string3 = LocaleController.getString(C2807R.string.StarsTransactionID);
                                String str4 = starsTransaction4.id;
                                r03.addRowMonospaced(string3, str4, str4.length() <= 25 ? 9 : 10, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda21
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        BulletinFactory.of(bottomSheetArr3[0].topBulletinContainer, resourcesProvider3).createSimpleBulletin(C2807R.raw.copy, LocaleController.getString(C2807R.string.StarsTransactionIDCopied)).show(false);
                                    }
                                });
                            }
                            if (starsTransaction4.floodskip && starsTransaction4.floodskip_number > 0) {
                                r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionFloodskipNumberName), LocaleController.formatPluralStringComma("StarsTransactionFloodskipNumber", starsTransaction4.floodskip_number));
                            }
                            r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsTransaction4.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsTransaction4.date) * 1000))));
                            starGift2 = starsTransaction4.stargift;
                            if (starGift2 != null) {
                                if (starGift2.limited) {
                                    addAvailabilityRow(r03, i2, starGift2, resourcesProvider3);
                                }
                                if (!TextUtils.isEmpty(starsTransaction4.description)) {
                                    r03.addFullRow(new SpannableStringBuilder(starsTransaction4.description));
                                }
                            }
                            ?? r22 = r523;
                            r22.addView(r03, LayoutHelper.createLinear(-1, -2, 16.0f, 17.0f, 16.0f, 0.0f));
                            if ((starsTransaction4.flags & 32) != 0) {
                                r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionTONDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsTransaction4.transaction_date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsTransaction4.transaction_date) * 1000))));
                            }
                            if (z7) {
                                context4 = context;
                                LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context4, resourcesProvider3);
                                linksTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider3));
                                linksTextView2.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider3));
                                linksTextView2.setTextSize(1, 14.0f);
                                linksTextView2.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTransactionTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda23
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        Browser.openUrl(context4, LocaleController.getString(C2807R.string.StarsTOSLink));
                                    }
                                }));
                                linksTextView2.setGravity(17);
                                r22.addView(linksTextView2, LayoutHelper.createLinear(-1, -2, 16.0f, 15.0f, 16.0f, 0.0f));
                            } else {
                                context4 = context;
                            }
                            ButtonWithCounterView round = new ButtonWithCounterView(context4, resourcesProvider3).setRound();
                            if ((starsTransaction4.flags & 32) == 0) {
                                round.setText(LocaleController.getString(C2807R.string.StarsTransactionViewInBlockchainExplorer), false);
                            } else {
                                round.setText(LocaleController.getString(C2807R.string.OK), false);
                            }
                            r22.addView(round, LayoutHelper.createLinear(-1, 48, 16.0f, 15.0f, 16.0f, 0.0f));
                            ?? r3 = builder;
                            r3.setCustomView(r22);
                            BottomSheet bottomSheetCreate = r3.create();
                            bottomSheetArr3[0] = bottomSheetCreate;
                            bottomSheetCreate.useBackgroundTopPadding = false;
                            if ((starsTransaction4.flags & 32) == 0) {
                                round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda24
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        Browser.openUrl(context4, starsTransaction4.transaction_url);
                                    }
                                });
                            } else {
                                round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda25
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        bottomSheetArr3[0].lambda$new$0();
                                    }
                                });
                            }
                            bottomSheetArr3[0].fixNavigationBar();
                            safeLastFragment = LaunchActivity.getSafeLastFragment();
                            if (!AndroidUtilities.isTablet() && !AndroidUtilities.hasDialogOnTop(safeLastFragment)) {
                                bottomSheetArr3[0].makeAttached(safeLastFragment);
                            }
                            bottomSheetArr3[0].show();
                            return bottomSheetArr3[0];
                        }
                        final BottomSheet[] bottomSheetArr10 = bottomSheetArr;
                        starsTransaction3 = starsTransaction2;
                        TableView tableView7 = tableView4;
                        ?? r526 = r2;
                        if (starsTransaction3.refund) {
                            i2 = i;
                            bottomSheetArr3 = bottomSheetArr10;
                            starsTransaction4 = starsTransaction3;
                            context3 = context;
                            r04 = tableView7;
                            r524 = r526;
                        } else {
                            long clientUserId2 = j == 0 ? UserConfig.getInstance(i).getClientUserId() : j;
                            final long peerDialogId5 = DialogObject.getPeerDialogId(starsTransaction3.peer.peer);
                            TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId5));
                            if (zPositive) {
                                if (peerDialogId5 != clientUserId2) {
                                    String string4 = LocaleController.getString(C2807R.string.StarGiveawayPrizeFrom);
                                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda32
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            StarsIntroActivity.$r8$lambda$6hn_iMyOY89r07iYM9YWg76FlrU(bottomSheetArr10, starsTransaction3, peerDialogId5);
                                        }
                                    };
                                    if (user2 == null || UserObject.isDeleted(user2) || UserObject.areGiftsDisabled(peerDialogId5)) {
                                        bottomSheetArr4 = bottomSheetArr10;
                                        string2 = null;
                                    } else {
                                        bottomSheetArr4 = bottomSheetArr10;
                                        string2 = LocaleController.getString(C2807R.string.Gift2ButtonSendGift);
                                    }
                                    final Context context7 = context2;
                                    i4 = i;
                                    final BottomSheet[] bottomSheetArr11 = bottomSheetArr4;
                                    TableView tableView8 = tableView7;
                                    bottomSheetArr2 = bottomSheetArr11;
                                    j5 = clientUserId2;
                                    tableView8.addRowUser(string4, i4, peerDialogId5, runnable2, string2, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            StarsIntroActivity.$r8$lambda$FwyKMEFKgz9Jb0qoH1k8JITszdc(context7, i4, peerDialogId5, bottomSheetArr11);
                                        }
                                    });
                                    tableView = tableView8;
                                } else {
                                    i4 = i;
                                    bottomSheetArr2 = bottomSheetArr10;
                                    j5 = clientUserId2;
                                    tableView = tableView7;
                                }
                                tableView.addRowUser(LocaleController.getString(C2807R.string.StarGiveawayPrizeTo), i4, j5, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        StarsIntroActivity.m20958$r8$lambda$JNtk_W66tT8hy6JhNUu67YLzwQ(bottomSheetArr2, i4);
                                    }
                                });
                                r02 = tableView;
                                r522 = r526;
                            } else {
                                bottomSheetArr2 = bottomSheetArr10;
                                long j11 = clientUserId2;
                                if (peerDialogId5 != j11) {
                                    user = user2;
                                    j3 = peerDialogId5;
                                    tableView7.addRowUser(LocaleController.getString(C2807R.string.StarGiveawayPrizeFrom), i, j11, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda3
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            StarsIntroActivity.m20967$r8$lambda$_IUToQOzpzvbwAo5dBKoOwLDHs(bottomSheetArr2, i);
                                        }
                                    });
                                } else {
                                    user = user2;
                                    j3 = peerDialogId5;
                                }
                                String string5 = LocaleController.getString(C2807R.string.StarGiveawayPrizeTo);
                                Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        StarsIntroActivity.$r8$lambda$ijwwvAb1HAyZEdCFM3nAGJid1YU(bottomSheetArr2, starsTransaction3, j3);
                                    }
                                };
                                if (user == null || UserObject.isDeleted(user) || UserObject.areGiftsDisabled(j3)) {
                                    j4 = j3;
                                    string = null;
                                } else {
                                    j4 = j3;
                                    string = LocaleController.getString(C2807R.string.Gift2ButtonSendGift);
                                }
                                TableView tableView9 = tableView7;
                                tableView9.addRowUser(string5, i, j4, runnable3, string, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        StarsIntroActivity.$r8$lambda$wy1kOU9z83jNUQez4ncO4QHItIU(context, i, j4, bottomSheetArr2);
                                    }
                                });
                                r02 = tableView9;
                                r522 = r526;
                            }
                            context3 = context;
                            i2 = i;
                            bottomSheetArr3 = bottomSheetArr2;
                            r0 = r02;
                            r52 = r522;
                        }
                    }
                    resourcesProvider3 = resourcesProvider;
                    r03 = r04;
                    r523 = r524;
                    starsTransactionPeer = starsTransaction4.peer;
                    if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeer) {
                        z7 = z8;
                    }
                    if (!TextUtils.isEmpty(starsTransaction4.id)) {
                        String string32 = LocaleController.getString(C2807R.string.StarsTransactionID);
                        String str42 = starsTransaction4.id;
                        r03.addRowMonospaced(string32, str42, str42.length() <= 25 ? 9 : 10, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda21
                            @Override // java.lang.Runnable
                            public final void run() {
                                BulletinFactory.of(bottomSheetArr3[0].topBulletinContainer, resourcesProvider3).createSimpleBulletin(C2807R.raw.copy, LocaleController.getString(C2807R.string.StarsTransactionIDCopied)).show(false);
                            }
                        });
                    }
                    if (starsTransaction4.floodskip) {
                        r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionFloodskipNumberName), LocaleController.formatPluralStringComma("StarsTransactionFloodskipNumber", starsTransaction4.floodskip_number));
                    }
                    r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsTransaction4.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsTransaction4.date) * 1000))));
                    starGift2 = starsTransaction4.stargift;
                    if (starGift2 != null) {
                    }
                    ?? r222 = r523;
                    r222.addView(r03, LayoutHelper.createLinear(-1, -2, 16.0f, 17.0f, 16.0f, 0.0f));
                    if ((starsTransaction4.flags & 32) != 0) {
                    }
                    if (z7) {
                    }
                    ButtonWithCounterView round2 = new ButtonWithCounterView(context4, resourcesProvider3).setRound();
                    if ((starsTransaction4.flags & 32) == 0) {
                    }
                    r222.addView(round2, LayoutHelper.createLinear(-1, 48, 16.0f, 15.0f, 16.0f, 0.0f));
                    ?? r32 = builder;
                    r32.setCustomView(r222);
                    BottomSheet bottomSheetCreate2 = r32.create();
                    bottomSheetArr3[0] = bottomSheetCreate2;
                    bottomSheetCreate2.useBackgroundTopPadding = false;
                    if ((starsTransaction4.flags & 32) == 0) {
                    }
                    bottomSheetArr3[0].fixNavigationBar();
                    safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (!AndroidUtilities.isTablet()) {
                        bottomSheetArr3[0].makeAttached(safeLastFragment);
                    }
                    bottomSheetArr3[0].show();
                    return bottomSheetArr3[0];
                }
                ?? r527 = r12;
                ?? r06 = tableView4;
                bottomSheetArr2 = bottomSheetArr;
                starsTransaction3 = starsTransaction2;
                TL_stars.StarsTransactionPeer starsTransactionPeer3 = starsTransaction3.peer;
                if (starsTransactionPeer3 instanceof TL_stars.TL_starsTransactionPeer) {
                    final long peerDialogId6 = DialogObject.getPeerDialogId(starsTransactionPeer3.peer);
                    if (starsTransaction3.paid_message) {
                        r06.addRowUser(LocaleController.getString(zPositive ? C2807R.string.Gift2From : C2807R.string.Gift2To), i, peerDialogId6, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() {
                                StarsIntroActivity.$r8$lambda$arICYNa0jsYeQfgRMGJO7B296U8(bottomSheetArr2, peerDialogId6);
                            }
                        });
                        r02 = r06;
                        r522 = r527;
                        if (starsTransaction3.starref_amount != null) {
                            r02 = r06;
                            r522 = r527;
                            if (starsTransaction3.starref_commission_permille > 0) {
                                long jAbs2 = Math.abs(Math.round(starsTransaction3.amount.toDouble() + starsTransaction3.starref_amount.toDouble()));
                                r06.addRow(LocaleController.getString(C2807R.string.StarsTransactionFullPrice), replaceStarsWithPlain(starsTransaction3.amount, "⭐️ " + LocaleController.formatNumber(jAbs2, ','), 0.8f));
                                r02 = r06;
                                r522 = r527;
                            }
                        }
                        context3 = context;
                        i2 = i;
                        bottomSheetArr3 = bottomSheetArr2;
                        r0 = r02;
                        r52 = r522;
                    } else if (z2) {
                        final long peerDialogId7 = DialogObject.getPeerDialogId(starsTransaction3.starref_peer);
                        r06.addRowLink(LocaleController.getString(C2807R.string.StarAffiliateReason), LocaleController.getString(C2807R.string.StarAffiliateReasonProgram), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                StarsIntroActivity.$r8$lambda$_RrERp9YKwmIu91kpuMRrq1VWIk(bottomSheetArr2, j);
                            }
                        });
                        i2 = i;
                        r06.addRowUser(LocaleController.getString(C2807R.string.StarAffiliate), i2, peerDialogId7, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                StarsIntroActivity.m20963$r8$lambda$Q1S9j1MqeefuyJamTixcTBvy8(bottomSheetArr2, peerDialogId7);
                            }
                        });
                        r06.addRowUser(LocaleController.getString(C2807R.string.StarAffiliateReferredUser), i2, peerDialogId6, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda9
                            @Override // java.lang.Runnable
                            public final void run() {
                                StarsIntroActivity.m20969$r8$lambda$csuf9CdysUOI37q7ZUM6flepIQ(bottomSheetArr2, peerDialogId6);
                            }
                        });
                        r06.addRow(LocaleController.getString(C2807R.string.StarAffiliateCommission), AffiliateProgramFragment.percents(starsTransaction3.starref_commission_permille));
                        context3 = context;
                        bottomSheetArr3 = bottomSheetArr2;
                        r0 = r06;
                        r52 = r527;
                    } else if (z5) {
                        bottomSheetArr3 = bottomSheetArr2;
                        starsTransaction4 = starsTransaction3;
                        resourcesProvider3 = resourcesProvider;
                        context3 = context;
                        r06.addRowLink(LocaleController.getString(C2807R.string.StarAffiliateReason), LocaleController.getString(C2807R.string.StarAffiliateReasonProgram), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda10
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i13 = i;
                                Context context8 = context;
                                long j12 = j;
                                BotStarsController.getInstance(i13).getConnectedBot(context8, j12, peerDialogId6, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda45
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj) {
                                        StarsIntroActivity.m20948$r8$lambda$1gNBS7abUvYE_OQhlnhhwW5IvY(bottomSheetArr, context8, i13, j12, resourcesProvider, (TL_payments.connectedBotStarRef) obj);
                                    }
                                });
                            }
                        });
                        i2 = i;
                        ?? r07 = r06;
                        r07.addRowUser(LocaleController.getString(C2807R.string.StarAffiliateMiniApp), i2, peerDialogId6, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda12
                            @Override // java.lang.Runnable
                            public final void run() {
                                StarsIntroActivity.$r8$lambda$0nn0Z8n1ThaLHuZ7S1hDAreDjCQ(bottomSheetArr3, peerDialogId6);
                            }
                        });
                        r03 = r07;
                        r523 = r527;
                    } else {
                        context3 = context;
                        bottomSheetArr3 = bottomSheetArr2;
                        ?? r08 = r06;
                        starsTransaction4 = starsTransaction3;
                        resourcesProvider3 = resourcesProvider;
                        if (z3) {
                            r08.addRowUser(LocaleController.getString(C2807R.string.StarGiveawayPrizeFrom), i, peerDialogId6, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda13
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StarsIntroActivity.m20949$r8$lambda$RJA1IKlBZwzeHkVpaZ9ggEB4(bottomSheetArr3, starsTransaction4, peerDialogId6);
                                }
                            });
                            r08.addRowUser(LocaleController.getString(C2807R.string.StarGiveawayPrizeTo), i, UserConfig.getInstance(i).getClientUserId(), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda14
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StarsIntroActivity.$r8$lambda$nY1AL9mt5yQeTz_aj8eKbpZ5x8s(bottomSheetArr3, i);
                                }
                            });
                            r08.addRowLink(LocaleController.getString(C2807R.string.StarGiveawayReason), LocaleController.getString(C2807R.string.StarGiveawayReasonLink), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda15
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StarsIntroActivity.$r8$lambda$K5aoLQnR0i1OzFEjMT7d81gKMDA(bottomSheetArr3, starsTransaction4, peerDialogId6);
                                }
                            });
                            r08.addRow(LocaleController.getString(C2807R.string.StarGiveawayGift), formatStarsAmountString(starsTransaction4.amount));
                        } else if (starsTransaction4.subscription && !z) {
                            i2 = i;
                            r08.addRowUser(LocaleController.getString(C2807R.string.StarSubscriptionTo), i2, peerDialogId6, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda16
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StarsIntroActivity.m20975$r8$lambda$p9IR0rrjiVLGiCJ5k3b28eFKgY(bottomSheetArr3, peerDialogId6, context3);
                                }
                            });
                            r03 = r08;
                            r523 = r527;
                        } else if (starsTransaction4.premium_gift) {
                            r08.addRowUser(LocaleController.getString(C2807R.string.Gift2To), i, peerDialogId6, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda17
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StarsIntroActivity.m20961$r8$lambda$PSexWNx2HdW3KaXu6hbjpsViEA(bottomSheetArr3, peerDialogId6, context3);
                                }
                            });
                            r08.addRow(LocaleController.getString(C2807R.string.StarsTransactionPremiumGiftDuration), LocaleController.formatPluralStringComma("Months", starsTransaction4.premium_gift_months));
                        } else if (!starsTransaction4.posts_search) {
                            i2 = i;
                            r08.addRowUser(LocaleController.getString(C2807R.string.StarsTransactionRecipient), i2, peerDialogId6, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda18
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StarsIntroActivity.m20966$r8$lambda$VNiD53id_DjtqbiCiksxVpI83A(bottomSheetArr3, peerDialogId6, context3);
                                }
                            });
                            r03 = r08;
                            r523 = r527;
                        }
                        i2 = i;
                        r03 = r08;
                        r523 = r527;
                    }
                } else {
                    context3 = context;
                    i2 = i;
                    bottomSheetArr3 = bottomSheetArr2;
                    starsTransaction4 = starsTransaction3;
                    resourcesProvider3 = resourcesProvider;
                    if (starsTransactionPeer3 instanceof TL_stars.TL_starsTransactionPeerFragment) {
                        if (starsTransaction4.gift) {
                            ?? linksTextView3 = new LinkSpanDrawable.LinksTextView(context3, resourcesProvider3);
                            linksTextView3.setPadding(AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f), AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f));
                            linksTextView3.setEllipsize(TextUtils.TruncateAt.END);
                            int i13 = Theme.key_chat_messageLinkIn;
                            linksTextView3.setTextColor(Theme.getColor(i13, resourcesProvider3));
                            linksTextView3.setLinkTextColor(Theme.getColor(i13, resourcesProvider3));
                            linksTextView3.setTextSize(1, 14.0f);
                            linksTextView3.setSingleLine(true);
                            linksTextView3.setDisablePaddingsOffsetY(true);
                            AvatarSpan avatarSpan = new AvatarSpan(linksTextView3, i2, 24.0f);
                            String string6 = LocaleController.getString(z8 ? C2807R.string.StarsTransactionTONFromFragment : C2807R.string.StarsTransactionUnknown);
                            CombinedDrawable platformDrawable = StarsTransactionView.getPlatformDrawable(str, 24);
                            platformDrawable.setIconSize(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
                            avatarSpan.setImageDrawable(platformDrawable);
                            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder("x  " + ((Object) string6));
                            spannableStringBuilder3.setSpan(avatarSpan, 0, 1, 33);
                            spannableStringBuilder3.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stars.StarsIntroActivity.10
                                @Override // android.text.style.ClickableSpan
                                public void onClick(View view) {
                                    bottomSheetArr3[0].lambda$new$0();
                                    Browser.openUrl(context3, LocaleController.getString(z8 ? C2807R.string.StarsTransactionTONFromFragmentLink : C2807R.string.StarsTransactionUnknownLink));
                                }

                                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                                public void updateDrawState(TextPaint textPaint) {
                                    textPaint.setUnderlineText(false);
                                }
                            }, 3, spannableStringBuilder3.length(), 33);
                            linksTextView3.setText(spannableStringBuilder3);
                            r06.addRowUnpadded(LocaleController.getString(C2807R.string.StarsTransactionRecipient), linksTextView3);
                            r03 = r06;
                            r523 = r527;
                        } else {
                            r06.addRow(LocaleController.getString(C2807R.string.StarsTransactionSource), LocaleController.getString(C2807R.string.Fragment));
                            r03 = r06;
                            r523 = r527;
                        }
                    } else if (starsTransactionPeer3 instanceof TL_stars.TL_starsTransactionPeerAppStore) {
                        r06.addRow(LocaleController.getString(C2807R.string.StarsTransactionSource), LocaleController.getString(C2807R.string.AppStore));
                        r03 = r06;
                        r523 = r527;
                    } else if (starsTransactionPeer3 instanceof TL_stars.TL_starsTransactionPeerPlayMarket) {
                        r06.addRow(LocaleController.getString(C2807R.string.StarsTransactionSource), LocaleController.getString(C2807R.string.PlayMarket));
                        r03 = r06;
                        r523 = r527;
                    } else {
                        r03 = r06;
                        r523 = r527;
                        if (starsTransactionPeer3 instanceof TL_stars.TL_starsTransactionPeerPremiumBot) {
                            r06.addRow(LocaleController.getString(C2807R.string.StarsTransactionSource), LocaleController.getString(C2807R.string.StarsTransactionBot));
                            r03 = r06;
                            r523 = r527;
                        }
                    }
                }
                starsTransactionPeer = starsTransaction4.peer;
                if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeer) {
                }
                if (!TextUtils.isEmpty(starsTransaction4.id)) {
                }
                if (starsTransaction4.floodskip) {
                }
                r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsTransaction4.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsTransaction4.date) * 1000))));
                starGift2 = starsTransaction4.stargift;
                if (starGift2 != null) {
                }
                ?? r2222 = r523;
                r2222.addView(r03, LayoutHelper.createLinear(-1, -2, 16.0f, 17.0f, 16.0f, 0.0f));
                if ((starsTransaction4.flags & 32) != 0) {
                }
                if (z7) {
                }
                ButtonWithCounterView round22 = new ButtonWithCounterView(context4, resourcesProvider3).setRound();
                if ((starsTransaction4.flags & 32) == 0) {
                }
                r2222.addView(round22, LayoutHelper.createLinear(-1, 48, 16.0f, 15.0f, 16.0f, 0.0f));
                ?? r322 = builder;
                r322.setCustomView(r2222);
                BottomSheet bottomSheetCreate22 = r322.create();
                bottomSheetArr3[0] = bottomSheetCreate22;
                bottomSheetCreate22.useBackgroundTopPadding = false;
                if ((starsTransaction4.flags & 32) == 0) {
                }
                bottomSheetArr3[0].fixNavigationBar();
                safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (!AndroidUtilities.isTablet()) {
                }
                bottomSheetArr3[0].show();
                return bottomSheetArr3[0];
                starsTransaction4 = starsTransaction3;
                r04 = r0;
                r524 = r52;
                resourcesProvider3 = resourcesProvider;
                r03 = r04;
                r523 = r524;
                starsTransactionPeer = starsTransaction4.peer;
                if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeer) {
                }
                if (!TextUtils.isEmpty(starsTransaction4.id)) {
                }
                if (starsTransaction4.floodskip) {
                }
                r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsTransaction4.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsTransaction4.date) * 1000))));
                starGift2 = starsTransaction4.stargift;
                if (starGift2 != null) {
                }
                ?? r22222 = r523;
                r22222.addView(r03, LayoutHelper.createLinear(-1, -2, 16.0f, 17.0f, 16.0f, 0.0f));
                if ((starsTransaction4.flags & 32) != 0) {
                }
                if (z7) {
                }
                ButtonWithCounterView round222 = new ButtonWithCounterView(context4, resourcesProvider3).setRound();
                if ((starsTransaction4.flags & 32) == 0) {
                }
                r22222.addView(round222, LayoutHelper.createLinear(-1, 48, 16.0f, 15.0f, 16.0f, 0.0f));
                ?? r3222 = builder;
                r3222.setCustomView(r22222);
                BottomSheet bottomSheetCreate222 = r3222.create();
                bottomSheetArr3[0] = bottomSheetCreate222;
                bottomSheetCreate222.useBackgroundTopPadding = false;
                if ((starsTransaction4.flags & 32) == 0) {
                }
                bottomSheetArr3[0].fixNavigationBar();
                safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (!AndroidUtilities.isTablet()) {
                }
                bottomSheetArr3[0].show();
                return bottomSheetArr3[0];
            }
            z2 = z10;
        } else {
            z2 = z10;
        }
        builder = builder2;
        str = "fragment";
        z3 = z9;
        final BackupImageView backupImageView2 = new BackupImageView(context);
        if (starsTransaction.premium_gift) {
            setPremiumGiftImage(backupImageView2, backupImageView2.getImageReceiver(), starsTransaction.premium_gift_months);
            linearLayout.addView(backupImageView2, LayoutHelper.createLinear(160, 160, 17, 0, -8, 0, 10));
        } else if (starsTransaction.posts_search) {
            CombinedDrawable combinedDrawableCreateDrawable = SessionCell.createDrawable(100, "search");
            combinedDrawableCreateDrawable.setIconSize(AndroidUtilities.dp(40.0f), AndroidUtilities.dp(40.0f));
            backupImageView2.setImageDrawable(combinedDrawableCreateDrawable);
        } else {
            TL_stars.StarGift starGift4 = starsTransaction.stargift;
            if (starGift4 != null) {
                if (starGift4 instanceof TL_stars.TL_starGiftUnique) {
                    backupImageView2.setImageDrawable(new StarGiftSheet.StarGiftDrawableIcon(backupImageView2, starsTransaction.stargift, 94, 0.44f));
                    linearLayout.addView(backupImageView2, LayoutHelper.createLinear(94, 94, 17, 0, 2, 0, 10));
                } else {
                    setGiftImage(backupImageView2.getImageReceiver(), starsTransaction.stargift, 160);
                    linearLayout.addView(backupImageView2, LayoutHelper.createLinear(160, 160, 17, 0, -8, 0, 10));
                }
            } else {
                if (z3 || starsTransaction.gift) {
                    z4 = z;
                    context2 = context;
                    i2 = i;
                    starsTransaction2 = starsTransaction;
                    ?? r13 = linearLayout;
                    z5 = z11;
                    j2 = j;
                    resourcesProvider2 = resourcesProvider;
                    if (starsTransaction2.amount instanceof TL_stars.TL_starsTonAmount) {
                        setTonGiftImage(backupImageView2, backupImageView2.getImageReceiver(), starsTransaction2.amount.amount);
                    } else {
                        setGiftImage(backupImageView2, backupImageView2.getImageReceiver(), starsTransaction2.amount.amount);
                    }
                    r13.addView(backupImageView2, LayoutHelper.createLinear(160, 160, 17, 0, -8, 0, 10));
                    r1 = r13;
                } else if (!starsTransaction.extended_media.isEmpty()) {
                    backupImageView2.setRoundRadius(AndroidUtilities.dp(30.0f));
                    TLRPC.MessageMedia messageMedia3 = starsTransaction.extended_media.get(0);
                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPhoto) {
                        forDocument = ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(messageMedia3.photo.sizes, AndroidUtilities.dp(100.0f), true), messageMedia3.photo);
                    } else if (messageMedia3 instanceof TLRPC.TL_messageMediaDocument) {
                        forDocument = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(messageMedia3.document.thumbs, AndroidUtilities.dp(100.0f), true), messageMedia3.document);
                    } else {
                        imageLocation = null;
                        backupImageView2.setImage(imageLocation, "100_100", (ImageLocation) null, (String) null, (Drawable) null, (Object) 0);
                        linearLayout.addView(backupImageView2, LayoutHelper.createLinear(100, 100, 17, 0, 0, 0, 10));
                        context2 = context;
                        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                StarsIntroActivity.$r8$lambda$XnFteaku7WSmKmw_rh7NFFxndVE(z, j, starsTransaction, i, resourcesProvider, backupImageView2, linearLayout, view);
                            }
                        };
                        z4 = z;
                        r1 = linearLayout;
                        i2 = i;
                        resourcesProvider2 = resourcesProvider;
                        j2 = j;
                        starsTransaction2 = starsTransaction;
                        backupImageView2.setOnClickListener(onClickListener);
                        z5 = z11;
                    }
                    imageLocation = forDocument;
                    backupImageView2.setImage(imageLocation, "100_100", (ImageLocation) null, (String) null, (Drawable) null, (Object) 0);
                    linearLayout.addView(backupImageView2, LayoutHelper.createLinear(100, 100, 17, 0, 0, 0, 10));
                    context2 = context;
                    View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda11
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            StarsIntroActivity.$r8$lambda$XnFteaku7WSmKmw_rh7NFFxndVE(z, j, starsTransaction, i, resourcesProvider, backupImageView2, linearLayout, view);
                        }
                    };
                    z4 = z;
                    r1 = linearLayout;
                    i2 = i;
                    resourcesProvider2 = resourcesProvider;
                    j2 = j;
                    starsTransaction2 = starsTransaction;
                    backupImageView2.setOnClickListener(onClickListener2);
                    z5 = z11;
                } else {
                    z4 = z;
                    context2 = context;
                    i2 = i;
                    starsTransaction2 = starsTransaction;
                    ?? r14 = linearLayout;
                    j2 = j;
                    resourcesProvider2 = resourcesProvider;
                    TL_stars.StarsTransactionPeer starsTransactionPeer4 = starsTransaction2.peer;
                    if (starsTransactionPeer4 instanceof TL_stars.TL_starsTransactionPeer) {
                        if (starsTransaction2.photo != null) {
                            backupImageView2.setRoundRadius(AndroidUtilities.dp(50.0f));
                            backupImageView2.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(starsTransaction2.photo)), "100_100", (Drawable) null, 0, (Object) null);
                            z5 = z11;
                        } else {
                            backupImageView2.setRoundRadius(AndroidUtilities.dp(50.0f));
                            if (z11) {
                                peer = starsTransaction2.starref_peer;
                            } else if (starsTransaction2.subscription && z4) {
                                peerDialogId = j2;
                                AvatarDrawable avatarDrawable = new AvatarDrawable();
                                if (peerDialogId < 0) {
                                    z5 = z11;
                                    TLRPC.User user3 = MessagesController.getInstance(i2).getUser(Long.valueOf(peerDialogId));
                                    avatarDrawable.setInfo(user3);
                                    backupImageView2.setForUserOrChat(user3, avatarDrawable);
                                } else {
                                    z5 = z11;
                                    TLRPC.Chat chat2 = MessagesController.getInstance(i2).getChat(Long.valueOf(-peerDialogId));
                                    avatarDrawable.setInfo(chat2);
                                    backupImageView2.setForUserOrChat(chat2, avatarDrawable);
                                }
                            } else {
                                peer = starsTransaction2.peer.peer;
                            }
                            peerDialogId = DialogObject.getPeerDialogId(peer);
                            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                            if (peerDialogId < 0) {
                            }
                        }
                        r14.addView(backupImageView2, LayoutHelper.createLinear(100, 100, 17, 0, 0, 0, 10));
                        r1 = r14;
                    } else {
                        z5 = z11;
                        if (starsTransactionPeer4 instanceof TL_stars.TL_starsTransactionPeerAppStore) {
                            str2 = CredentialsData.CREDENTIALS_TYPE_IOS;
                        } else if (starsTransactionPeer4 instanceof TL_stars.TL_starsTransactionPeerPlayMarket) {
                            str2 = "android";
                        } else if (starsTransactionPeer4 instanceof TL_stars.TL_starsTransactionPeerPremiumBot) {
                            str2 = "premiumbot";
                        } else if (starsTransactionPeer4 instanceof TL_stars.TL_starsTransactionPeerFragment) {
                            str2 = str;
                        } else if (starsTransactionPeer4 instanceof TL_stars.TL_starsTransactionPeerAds) {
                            str2 = "ads";
                        } else if (!(starsTransactionPeer4 instanceof TL_stars.TL_starsTransactionPeerAPI)) {
                            str2 = "?";
                        } else {
                            str2 = "api";
                        }
                        CombinedDrawable combinedDrawableCreateDrawable2 = SessionCell.createDrawable(100, str2);
                        combinedDrawableCreateDrawable2.setIconSize(AndroidUtilities.dp(40.0f), AndroidUtilities.dp(40.0f));
                        backupImageView2.setImageDrawable(combinedDrawableCreateDrawable2);
                        r1 = r14;
                    }
                }
                TextView textView = new TextView(context2);
                int i14 = Theme.key_dialogTextBlack;
                textView.setTextColor(Theme.getColor(i14, resourcesProvider2));
                textView.setTextSize(1, 20.0f);
                textView.setTypeface(AndroidUtilities.bold());
                textView.setGravity(17);
                textView.setText(getTransactionTitle(i2, z4, starsTransaction2));
                r1.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 36, 0, 36, 4));
                TextView textView2 = new TextView(context2);
                textView2.setTextSize(1, 18.0f);
                textView2.setTypeface(AndroidUtilities.bold());
                textView2.setGravity(17);
                textView2.setTextColor(Theme.getColor(!zPositive ? Theme.key_color_green : Theme.key_color_red, resourcesProvider2));
                TL_stars.StarsAmount starsAmount5 = starsTransaction2.amount;
                textView2.setText(replaceStarsWithPlain(starsAmount5, TextUtils.concat(zPositive ? "+" : _UrlKt.FRAGMENT_ENCODE_SET, formatStarsAmount(starsAmount5), " ⭐️"), 0.8f));
                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(textView2.getText());
                if (!starsTransaction2.refund) {
                    appendStatus(spannableStringBuilder4, textView2, LocaleController.getString(C2807R.string.StarsRefunded));
                } else if (starsTransaction2.failed) {
                    textView2.setTextColor(Theme.getColor(Theme.key_color_red, resourcesProvider2));
                    appendStatus(spannableStringBuilder4, textView2, LocaleController.getString(C2807R.string.StarsFailed));
                } else if (starsTransaction2.pending) {
                    textView2.setTextColor(Theme.getColor(Theme.key_color_yellow, resourcesProvider2));
                    appendStatus(spannableStringBuilder4, textView2, LocaleController.getString(C2807R.string.StarsPending));
                }
                textView2.setText(spannableStringBuilder4);
                r1.addView(textView2, LayoutHelper.createLinear(-1, -2, 17, 36, 0, 36, 4));
                if (!starsTransaction2.paid_message && starsTransaction2.starref_commission_permille > 0 && zPositive) {
                    LinkSpanDrawable.LinksTextView linksTextView4 = new LinkSpanDrawable.LinksTextView(context2);
                    linksTextView4.setTextColor(Theme.getColor(i14, resourcesProvider2));
                    linksTextView4.setTextSize(1, 14.0f);
                    linksTextView4.setGravity(17);
                    linksTextView4.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider2));
                    linksTextView4.setDisablePaddingsOffsetY(true);
                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
                    spannableStringBuilder5.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.StarsTransactionMessageFeeInfo, AffiliateProgramFragment.percents(1000 - starsTransaction2.starref_commission_permille))));
                    if (j2 == UserConfig.getInstance(i2).getClientUserId() || ChatObject.canUserDoAction(MessagesController.getInstance(i2).getChat(Long.valueOf(-j2)), 2)) {
                        spannableStringBuilder5.append((CharSequence) " ");
                        spannableStringBuilder5.append(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTransactionMessageFeeInfoLink).replace(' ', Typography.nbsp), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda22
                            @Override // java.lang.Runnable
                            public final void run() {
                                StarsIntroActivity.m20986$r8$lambda$zwULHCHSR6XhVIWPoGD8TwBSpY(j2, i2);
                            }
                        }), true));
                    }
                    linksTextView4.setText(spannableStringBuilder5);
                    r1.addView(linksTextView4, LayoutHelper.createLinear(-1, -2, 17, 36, 0, 36, 4));
                    bottomSheetArr = bottomSheetArr7;
                    r12 = r1;
                } else if ((starsTransaction2.amount instanceof TL_stars.TL_starsTonAmount) && (z3 || starsTransaction2.gift)) {
                    TLRPC.User user4 = starsTransaction2.sent_by == null ? null : MessagesController.getInstance(i2).getUser(Long.valueOf(DialogObject.getPeerDialogId(starsTransaction2.sent_by)));
                    TLRPC.User user5 = starsTransaction2.sent_by == null ? null : MessagesController.getInstance(i2).getUser(Long.valueOf(DialogObject.getPeerDialogId(starsTransaction2.received_by)));
                    boolean zIsUserSelf = UserObject.isUserSelf(user4);
                    if (zIsUserSelf) {
                        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider2));
                        TL_stars.StarsAmount starsAmount6 = starsTransaction2.amount;
                        z6 = zIsUserSelf;
                        r5 = 1;
                        textView2.setText(replaceStarsWithPlain(starsAmount6, TextUtils.concat(formatStarsAmount(starsAmount6), " ⭐️"), 0.8f));
                    } else {
                        z6 = zIsUserSelf;
                        r5 = 1;
                    }
                    ?? linksTextView5 = new LinkSpanDrawable.LinksTextView(context2);
                    linksTextView5.setTextColor(Theme.getColor(i14, resourcesProvider2));
                    linksTextView5.setTextSize(r5, 16.0f);
                    linksTextView5.setGravity(17);
                    linksTextView5.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider2));
                    linksTextView5.setDisablePaddingsOffsetY(r5);
                    bottomSheetArr = bottomSheetArr7;
                    linksTextView5.setText(TextUtils.concat(AndroidUtilities.replaceTags(z6 ? LocaleController.formatString(C2807R.string.ActionGiftStarsSubtitle, UserObject.getForcedFirstName(user5)) : LocaleController.getString(C2807R.string.ActionGiftStarsSubtitleYou)), " ", AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.GiftStarsSubtitleLinkName).replace(' ', Typography.nbsp), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda26
                        @Override // java.lang.Runnable
                        public final void run() {
                            StarsIntroActivity.$r8$lambda$7PL3orQMT_NP3BhLDG9qZ7s3bhs(context2, bottomSheetArr);
                        }
                    }), true)));
                    r1.addView(linksTextView5, LayoutHelper.createLinear(-1, -2, 17, 36, 0, 36, 4));
                    r12 = r1;
                } else {
                    bottomSheetArr = bottomSheetArr7;
                    r12 = r1;
                    if (starsTransaction2.description != null) {
                        r12 = r1;
                        if (starsTransaction2.extended_media.isEmpty()) {
                            TextView textView3 = new TextView(context2);
                            textView3.setTextColor(Theme.getColor(i14, resourcesProvider2));
                            textView3.setTextSize(1, 16.0f);
                            textView3.setGravity(17);
                            textView3.setText(starsTransaction2.description);
                            r1.addView(textView3, LayoutHelper.createLinear(-1, -2, 17, 36, 0, 36, 4));
                            r12 = r1;
                        }
                    }
                }
                TableView tableView42 = new TableView(context2, resourcesProvider2);
                starGift = starsTransaction2.stargift;
                if (starGift != null) {
                }
                starsTransaction4 = starsTransaction3;
                r04 = r0;
                r524 = r52;
                resourcesProvider3 = resourcesProvider;
                r03 = r04;
                r523 = r524;
                starsTransactionPeer = starsTransaction4.peer;
                if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeer) {
                }
                if (!TextUtils.isEmpty(starsTransaction4.id)) {
                }
                if (starsTransaction4.floodskip) {
                }
                r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsTransaction4.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsTransaction4.date) * 1000))));
                starGift2 = starsTransaction4.stargift;
                if (starGift2 != null) {
                }
                ?? r222222 = r523;
                r222222.addView(r03, LayoutHelper.createLinear(-1, -2, 16.0f, 17.0f, 16.0f, 0.0f));
                if ((starsTransaction4.flags & 32) != 0) {
                }
                if (z7) {
                }
                ButtonWithCounterView round2222 = new ButtonWithCounterView(context4, resourcesProvider3).setRound();
                if ((starsTransaction4.flags & 32) == 0) {
                }
                r222222.addView(round2222, LayoutHelper.createLinear(-1, 48, 16.0f, 15.0f, 16.0f, 0.0f));
                ?? r32222 = builder;
                r32222.setCustomView(r222222);
                BottomSheet bottomSheetCreate2222 = r32222.create();
                bottomSheetArr3[0] = bottomSheetCreate2222;
                bottomSheetCreate2222.useBackgroundTopPadding = false;
                if ((starsTransaction4.flags & 32) == 0) {
                }
                bottomSheetArr3[0].fixNavigationBar();
                safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (!AndroidUtilities.isTablet()) {
                }
                bottomSheetArr3[0].show();
                return bottomSheetArr3[0];
            }
        }
        z4 = z;
        context2 = context;
        i2 = i;
        starsTransaction2 = starsTransaction;
        r1 = linearLayout;
        z5 = z11;
        j2 = j;
        resourcesProvider2 = resourcesProvider;
        TextView textView4 = new TextView(context2);
        int i142 = Theme.key_dialogTextBlack;
        textView4.setTextColor(Theme.getColor(i142, resourcesProvider2));
        textView4.setTextSize(1, 20.0f);
        textView4.setTypeface(AndroidUtilities.bold());
        textView4.setGravity(17);
        textView4.setText(getTransactionTitle(i2, z4, starsTransaction2));
        r1.addView(textView4, LayoutHelper.createLinear(-1, -2, 17, 36, 0, 36, 4));
        TextView textView22 = new TextView(context2);
        textView22.setTextSize(1, 18.0f);
        textView22.setTypeface(AndroidUtilities.bold());
        textView22.setGravity(17);
        textView22.setTextColor(Theme.getColor(!zPositive ? Theme.key_color_green : Theme.key_color_red, resourcesProvider2));
        TL_stars.StarsAmount starsAmount52 = starsTransaction2.amount;
        textView22.setText(replaceStarsWithPlain(starsAmount52, TextUtils.concat(zPositive ? "+" : _UrlKt.FRAGMENT_ENCODE_SET, formatStarsAmount(starsAmount52), " ⭐️"), 0.8f));
        SpannableStringBuilder spannableStringBuilder42 = new SpannableStringBuilder(textView22.getText());
        if (!starsTransaction2.refund) {
        }
        textView22.setText(spannableStringBuilder42);
        r1.addView(textView22, LayoutHelper.createLinear(-1, -2, 17, 36, 0, 36, 4));
        if (!starsTransaction2.paid_message) {
            if (starsTransaction2.amount instanceof TL_stars.TL_starsTonAmount) {
                bottomSheetArr = bottomSheetArr7;
                r12 = r1;
                if (starsTransaction2.description != null) {
                }
            }
        }
        TableView tableView422 = new TableView(context2, resourcesProvider2);
        starGift = starsTransaction2.stargift;
        if (starGift != null) {
        }
        starsTransaction4 = starsTransaction3;
        r04 = r0;
        r524 = r52;
        resourcesProvider3 = resourcesProvider;
        r03 = r04;
        r523 = r524;
        starsTransactionPeer = starsTransaction4.peer;
        if (starsTransactionPeer instanceof TL_stars.TL_starsTransactionPeer) {
        }
        if (!TextUtils.isEmpty(starsTransaction4.id)) {
        }
        if (starsTransaction4.floodskip) {
        }
        r03.addRow(LocaleController.getString(C2807R.string.StarsTransactionDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsTransaction4.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsTransaction4.date) * 1000))));
        starGift2 = starsTransaction4.stargift;
        if (starGift2 != null) {
        }
        ?? r2222222 = r523;
        r2222222.addView(r03, LayoutHelper.createLinear(-1, -2, 16.0f, 17.0f, 16.0f, 0.0f));
        if ((starsTransaction4.flags & 32) != 0) {
        }
        if (z7) {
        }
        ButtonWithCounterView round22222 = new ButtonWithCounterView(context4, resourcesProvider3).setRound();
        if ((starsTransaction4.flags & 32) == 0) {
        }
        r2222222.addView(round22222, LayoutHelper.createLinear(-1, 48, 16.0f, 15.0f, 16.0f, 0.0f));
        ?? r322222 = builder;
        r322222.setCustomView(r2222222);
        BottomSheet bottomSheetCreate22222 = r322222.create();
        bottomSheetArr3[0] = bottomSheetCreate22222;
        bottomSheetCreate22222.useBackgroundTopPadding = false;
        if ((starsTransaction4.flags & 32) == 0) {
        }
        bottomSheetArr3[0].fixNavigationBar();
        safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!AndroidUtilities.isTablet()) {
        }
        bottomSheetArr3[0].show();
        return bottomSheetArr3[0];
    }

    public static /* synthetic */ void $r8$lambda$XnFteaku7WSmKmw_rh7NFFxndVE(boolean z, long j, TL_stars.StarsTransaction starsTransaction, int i, Theme.ResourcesProvider resourcesProvider, final BackupImageView backupImageView, final LinearLayout linearLayout, View view) {
        if (!z) {
            j = DialogObject.getPeerDialogId(starsTransaction.peer.peer);
        }
        final long j2 = j;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < starsTransaction.extended_media.size(); i2++) {
            TLRPC.MessageMedia messageMedia = starsTransaction.extended_media.get(i2);
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.id = starsTransaction.msg_id;
            tL_message.dialog_id = j2;
            TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
            tL_message.from_id = tL_peerChannel;
            long j3 = -j2;
            tL_peerChannel.channel_id = j3;
            TLRPC.TL_peerChannel tL_peerChannel2 = new TLRPC.TL_peerChannel();
            tL_message.peer_id = tL_peerChannel2;
            tL_peerChannel2.channel_id = j3;
            tL_message.date = starsTransaction.date;
            tL_message.flags |= 512;
            tL_message.media = messageMedia;
            tL_message.noforwards = true;
            arrayList.add(new MessageObject(i, tL_message, false, false));
        }
        if (arrayList.isEmpty()) {
            return;
        }
        PhotoViewer.getInstance().setParentActivity(LaunchActivity.getLastFragment(), resourcesProvider);
        PhotoViewer.getInstance().openPhoto(arrayList, 0, j2, 0L, 0L, new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Stars.StarsIntroActivity.9
            @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public boolean forceAllInGroup() {
                return true;
            }

            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i3, boolean z2, boolean z3) {
                ImageReceiver imageReceiver = backupImageView.getImageReceiver();
                int[] iArr = new int[2];
                backupImageView.getLocationInWindow(iArr);
                PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                placeProviderObject.viewX = iArr[0];
                placeProviderObject.viewY = iArr[1];
                placeProviderObject.parentView = linearLayout;
                placeProviderObject.animatingImageView = null;
                placeProviderObject.imageReceiver = imageReceiver;
                if (z2) {
                    placeProviderObject.thumb = imageReceiver.getBitmapSafe();
                }
                placeProviderObject.radius = imageReceiver.getRoundRadius(true);
                placeProviderObject.dialogId = j2;
                placeProviderObject.clipTopAddition = 0;
                placeProviderObject.clipBottomAddition = 0;
                return placeProviderObject;
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$zwULHCHSR6XhVIWPoGD8TwBS-pY, reason: not valid java name */
    public static /* synthetic */ void m20986$r8$lambda$zwULHCHSR6XhVIWPoGD8TwBSpY(long j, int i) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if (j >= 0) {
                safeLastFragment.presentFragment(new PrivacyControlActivity(10));
                return;
            }
            long j2 = -j;
            if (ChatObject.isChannelAndNotMegaGroup(MessagesController.getInstance(i).getChat(Long.valueOf(j2)))) {
                safeLastFragment.presentFragment(new PostSuggestionsEditActivity(j2));
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", j2);
            bundle.putInt("type", 3);
            ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle);
            chatUsersActivity.setInfo(MessagesController.getInstance(i).getChatFull(j2));
            safeLastFragment.presentFragment(chatUsersActivity);
        }
    }

    public static /* synthetic */ void $r8$lambda$7PL3orQMT_NP3BhLDG9qZ7s3bhs(Context context, BottomSheet[] bottomSheetArr) {
        BottomSheet bottomSheet;
        BaseFragment baseFragment;
        StarAppsSheet starAppsSheet = new StarAppsSheet(context);
        if (!AndroidUtilities.isTablet() && !AndroidUtilities.hasDialogOnTop(bottomSheetArr[0].attachedFragment) && (bottomSheet = bottomSheetArr[0]) != null && (baseFragment = bottomSheet.attachedFragment) != null) {
            starAppsSheet.makeAttached(baseFragment);
        }
        starAppsSheet.show();
    }

    public static /* synthetic */ void $r8$lambda$fQMhWWgBnGNgmShghlmbb77XPAg(ButtonSpan.TextViewButtons textViewButtons, final int i, final Context context, final Theme.ResourcesProvider resourcesProvider, final TL_stars.SavedStarGift savedStarGift) {
        if (savedStarGift != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textViewButtons.getText());
            spannableStringBuilder.append((CharSequence) " ").append(ButtonSpan.make(LocaleController.getString(C2807R.string.StarGiftReasonUpgradeView), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = i;
                    new StarGiftSheet(context, i2, UserConfig.getInstance(i2).getClientUserId(), resourcesProvider).set(savedStarGift, (StarsController.IGiftsList) null).show();
                }
            }, resourcesProvider));
            textViewButtons.setText(spannableStringBuilder);
        }
    }

    public static /* synthetic */ void $r8$lambda$z6029uLjkfSiuWjHimoYCU9kjbI(BottomSheet[] bottomSheetArr, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
    }

    public static /* synthetic */ void $r8$lambda$8D3iPuiORhRvfU_OginKQroc44M(BottomSheet[] bottomSheetArr, long j, long j2) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", j);
            if (j == j2) {
                bundle.putBoolean("my_profile", true);
            }
            bundle.putBoolean("open_gifts", true);
            safeLastFragment.presentFragment(new ProfileActivity(bundle));
        }
    }

    public static /* synthetic */ void $r8$lambda$EvGo8SDEtLNryPvpxOeqUYlVN2U(BottomSheet[] bottomSheetArr, long j, long j2) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", j);
            if (j == j2) {
                bundle.putBoolean("my_profile", true);
            }
            bundle.putBoolean("open_gifts", true);
            safeLastFragment.presentFragment(new ProfileActivity(bundle));
        }
    }

    public static /* synthetic */ void $r8$lambda$6hn_iMyOY89r07iYM9YWg76FlrU(BottomSheet[] bottomSheetArr, TL_stars.StarsTransaction starsTransaction, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if ((starsTransaction.flags & 8192) != 0) {
                safeLastFragment.presentFragment(ChatActivity.of(j, starsTransaction.giveaway_post_id));
            } else {
                safeLastFragment.presentFragment(ChatActivity.of(j));
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$FwyKMEFKgz9Jb0qoH1k8JITszdc(Context context, int i, long j, BottomSheet[] bottomSheetArr) {
        BottomSheet bottomSheet = bottomSheetArr[0];
        Objects.requireNonNull(bottomSheet);
        new GiftSheet(context, i, j, new StarsIntroActivity$$ExternalSyntheticLambda46(bottomSheet)).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$JNtk_W-66tT8hy6JhNUu67YLzwQ, reason: not valid java name */
    public static /* synthetic */ void m20958$r8$lambda$JNtk_W66tT8hy6JhNUu67YLzwQ(BottomSheet[] bottomSheetArr, int i) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", UserConfig.getInstance(i).getClientUserId());
            bundle.putBoolean("my_profile", true);
            bundle.putBoolean("open_gifts", true);
            safeLastFragment.presentFragment(new ProfileActivity(bundle));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$_IUToQOzpzvbwAo5dB-KoOwLDHs, reason: not valid java name */
    public static /* synthetic */ void m20967$r8$lambda$_IUToQOzpzvbwAo5dBKoOwLDHs(BottomSheet[] bottomSheetArr, int i) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", UserConfig.getInstance(i).getClientUserId());
            bundle.putBoolean("my_profile", true);
            bundle.putBoolean("open_gifts", true);
            safeLastFragment.presentFragment(new ProfileActivity(bundle));
        }
    }

    public static /* synthetic */ void $r8$lambda$ijwwvAb1HAyZEdCFM3nAGJid1YU(BottomSheet[] bottomSheetArr, TL_stars.StarsTransaction starsTransaction, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if ((starsTransaction.flags & 8192) != 0) {
                safeLastFragment.presentFragment(ChatActivity.of(j, starsTransaction.giveaway_post_id));
            } else {
                safeLastFragment.presentFragment(ChatActivity.of(j));
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$wy1kOU9z83jNUQez4ncO4QHItIU(Context context, int i, long j, BottomSheet[] bottomSheetArr) {
        BottomSheet bottomSheet = bottomSheetArr[0];
        Objects.requireNonNull(bottomSheet);
        new GiftSheet(context, i, j, new StarsIntroActivity$$ExternalSyntheticLambda46(bottomSheet)).show();
    }

    public static /* synthetic */ void $r8$lambda$arICYNa0jsYeQfgRMGJO7B296U8(BottomSheet[] bottomSheetArr, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
    }

    public static /* synthetic */ void $r8$lambda$_RrERp9YKwmIu91kpuMRrq1VWIk(BottomSheet[] bottomSheetArr, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(new AffiliateProgramFragment(j));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Q1S9j1Mq-eefuyJam-TixcTBvy8, reason: not valid java name */
    public static /* synthetic */ void m20963$r8$lambda$Q1S9j1MqeefuyJamTixcTBvy8(BottomSheet[] bottomSheetArr, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ProfileActivity.of(j));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$csuf9Cdy-sUOI37q7ZUM6flepIQ, reason: not valid java name */
    public static /* synthetic */ void m20969$r8$lambda$csuf9CdysUOI37q7ZUM6flepIQ(BottomSheet[] bottomSheetArr, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ProfileActivity.of(j));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-1gNBS7abUvYE_OQhlnhhwW5IvY, reason: not valid java name */
    public static /* synthetic */ void m20948$r8$lambda$1gNBS7abUvYE_OQhlnhhwW5IvY(BottomSheet[] bottomSheetArr, Context context, int i, long j, Theme.ResourcesProvider resourcesProvider, TL_payments.connectedBotStarRef connectedbotstarref) {
        bottomSheetArr[0].lambda$new$0();
        ChannelAffiliateProgramsFragment.showShareAffiliateAlert(context, i, connectedbotstarref, j, resourcesProvider);
    }

    public static /* synthetic */ void $r8$lambda$0nn0Z8n1ThaLHuZ7S1hDAreDjCQ(BottomSheet[] bottomSheetArr, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ProfileActivity.of(j));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-RJA1IKlB-ZwzeHkVpaZ9gg-EB4, reason: not valid java name */
    public static /* synthetic */ void m20949$r8$lambda$RJA1IKlBZwzeHkVpaZ9ggEB4(BottomSheet[] bottomSheetArr, TL_stars.StarsTransaction starsTransaction, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if ((starsTransaction.flags & 8192) != 0) {
                safeLastFragment.presentFragment(ChatActivity.of(j, starsTransaction.giveaway_post_id));
            } else {
                safeLastFragment.presentFragment(ChatActivity.of(j));
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$nY1AL9mt5yQeTz_aj8eKbpZ5x8s(BottomSheet[] bottomSheetArr, int i) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", UserConfig.getInstance(i).getClientUserId());
            bundle.putBoolean("my_profile", true);
            safeLastFragment.presentFragment(new ProfileActivity(bundle));
        }
    }

    public static /* synthetic */ void $r8$lambda$K5aoLQnR0i1OzFEjMT7d81gKMDA(BottomSheet[] bottomSheetArr, TL_stars.StarsTransaction starsTransaction, long j) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if ((starsTransaction.flags & 8192) != 0) {
                safeLastFragment.presentFragment(ChatActivity.of(j, starsTransaction.giveaway_post_id));
            } else {
                safeLastFragment.presentFragment(ChatActivity.of(j));
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$p9IR0r-rjiVLGiCJ5k3b28eFKgY, reason: not valid java name */
    public static /* synthetic */ void m20975$r8$lambda$p9IR0rrjiVLGiCJ5k3b28eFKgY(BottomSheet[] bottomSheetArr, long j, Context context) {
        bottomSheetArr[0].lambda$new$0();
        if (UserObject.isService(j)) {
            Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTransactionUnknownLink));
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$PSexWNx2HdW3KaXu6-hbjpsViEA, reason: not valid java name */
    public static /* synthetic */ void m20961$r8$lambda$PSexWNx2HdW3KaXu6hbjpsViEA(BottomSheet[] bottomSheetArr, long j, Context context) {
        bottomSheetArr[0].lambda$new$0();
        if (UserObject.isService(j)) {
            Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTransactionUnknownLink));
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$VNiD53id_Djtqbi-CiksxVpI83A, reason: not valid java name */
    public static /* synthetic */ void m20966$r8$lambda$VNiD53id_DjtqbiCiksxVpI83A(BottomSheet[] bottomSheetArr, long j, Context context) {
        bottomSheetArr[0].lambda$new$0();
        if (UserObject.isService(j)) {
            Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTransactionUnknownLink));
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ChatActivity.of(j));
        }
    }

    public static /* synthetic */ void $r8$lambda$ipPdXX7asKv2b8XGKXux2lIeVQg(BottomSheet[] bottomSheetArr, long j, TL_stars.StarsTransaction starsTransaction) {
        bottomSheetArr[0].lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", -j);
            bundle.putInt("message_id", starsTransaction.msg_id);
            safeLastFragment.presentFragment(new ChatActivity(bundle));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0451  */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static BottomSheet showSubscriptionSheet(final Context context, final int i, final TL_stars.StarsSubscription starsSubscription, final Theme.ResourcesProvider resourcesProvider) {
        BottomSheet.Builder builder;
        String userName;
        boolean[] zArr;
        boolean z;
        boolean z2;
        TLObject tLObject;
        TLObject tLObject2;
        boolean z3;
        boolean z4;
        String str;
        TLObject tLObject3;
        int i2;
        TableView tableView;
        final NotificationCenter.NotificationCenterDelegate notificationCenterDelegate;
        boolean z5;
        String str2;
        long currentTime;
        ?? r8;
        final BottomSheet[] bottomSheetArr;
        final int i3;
        BottomSheet.Builder builder2;
        BaseFragment safeLastFragment;
        int i4;
        if (starsSubscription == null || context == null) {
            return null;
        }
        BottomSheet.Builder builder3 = new BottomSheet.Builder(context, false, resourcesProvider);
        final BottomSheet[] bottomSheetArr2 = new BottomSheet[1];
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(4.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 7, 0, 0, 0, 10));
        final boolean[] zArr2 = new boolean[1];
        NotificationCenter.NotificationCenterDelegate notificationCenterDelegate2 = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Stars.StarsIntroActivity.12
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public void didReceivedNotification(int i5, int i6, Object... objArr) {
                BottomSheet bottomSheet;
                if (i5 == NotificationCenter.starSubscriptionsLoaded && zArr2[0] && (bottomSheet = bottomSheetArr2[0]) != null) {
                    bottomSheet.lambda$new$0();
                }
            }
        };
        NotificationCenter.getInstance(i).addObserver(notificationCenterDelegate2, NotificationCenter.starSubscriptionsLoaded);
        final long peerDialogId = DialogObject.getPeerDialogId(starsSubscription.peer);
        BackupImageView backupImageView = new BackupImageView(context);
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (peerDialogId >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
            userName = UserObject.getUserName(user);
            boolean zIsBot = UserObject.isBot(user);
            zArr = zArr2;
            builder = builder3;
            z = zIsBot;
            z2 = !zIsBot;
            tLObject = user;
        } else {
            builder = builder3;
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
            if (chat == null) {
                userName = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                userName = chat.title;
            }
            zArr = zArr2;
            z = false;
            z2 = false;
            tLObject = chat;
        }
        if (starsSubscription.photo != null) {
            backupImageView.setRoundRadius(AndroidUtilities.dp(21.0f));
            backupImageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(starsSubscription.photo)), "100_100", (Drawable) null, 0, (Object) null);
            tLObject3 = tLObject;
            z3 = z;
        } else {
            backupImageView.setRoundRadius(AndroidUtilities.dp(50.0f));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            if (peerDialogId >= 0) {
                tLObject3 = tLObject;
                z3 = z;
                TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
                avatarDrawable.setInfo(user2);
                backupImageView.setForUserOrChat(user2, avatarDrawable);
            } else {
                tLObject2 = tLObject;
                z3 = z;
                z4 = z2;
                str = userName;
                TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
                avatarDrawable.setInfo(chat2);
                backupImageView.setForUserOrChat(chat2, avatarDrawable);
                frameLayout.addView(backupImageView, LayoutHelper.createFrame(100, 100, 17));
                Drawable drawable = context.getResources().getDrawable(C2807R.drawable.star_small_outline);
                drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogBackground, resourcesProvider), PorterDuff.Mode.SRC_IN));
                Drawable drawable2 = context.getResources().getDrawable(C2807R.drawable.star_small_inner);
                if (starsSubscription.photo == null) {
                    ImageView imageView = new ImageView(context);
                    imageView.setImageDrawable(drawable);
                    frameLayout.addView(imageView, LayoutHelper.createFrame(28, 28, 17));
                    imageView.setTranslationX(AndroidUtilities.dp(34.0f));
                    imageView.setTranslationY(AndroidUtilities.dp(35.0f));
                    imageView.setScaleX(1.1f);
                    imageView.setScaleY(1.1f);
                    ImageView imageView2 = new ImageView(context);
                    imageView2.setImageDrawable(drawable2);
                    frameLayout.addView(imageView2, LayoutHelper.createFrame(28, 28, 17));
                    imageView2.setTranslationX(AndroidUtilities.dp(34.0f));
                    imageView2.setTranslationY(AndroidUtilities.dp(35.0f));
                }
                TextView textView = new TextView(context);
                textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                textView.setTextSize(1, 20.0f);
                textView.setTypeface(AndroidUtilities.bold());
                textView.setGravity(17);
                if (TextUtils.isEmpty(starsSubscription.title)) {
                    textView.setText(starsSubscription.title);
                } else {
                    textView.setText(LocaleController.getString(C2807R.string.StarsSubscriptionTitle));
                }
                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
                TextView textView2 = new TextView(context);
                textView2.setTextSize(1, 14.0f);
                textView2.setGravity(17);
                textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
                TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing = starsSubscription.pricing;
                i2 = tL_starsSubscriptionPricing.period;
                if (i2 != 2592000) {
                    textView2.setText(replaceStarsWithPlain(LocaleController.formatString(C2807R.string.StarsSubscriptionPrice, Long.valueOf(tL_starsSubscriptionPricing.amount)), 0.8f));
                } else {
                    textView2.setText(replaceStarsWithPlain(LocaleController.formatString(C2807R.string.StarsSubscriptionPrice, Long.valueOf(tL_starsSubscriptionPricing.amount), i2 == 300 ? "5min" : "min"), 0.8f));
                }
                linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
                tableView = new TableView(context, resourcesProvider);
                LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                linksTextView.setPadding(AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f), AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f));
                linksTextView.setEllipsize(TextUtils.TruncateAt.END);
                int i5 = Theme.key_chat_messageLinkIn;
                linksTextView.setTextColor(Theme.getColor(i5, resourcesProvider));
                linksTextView.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
                linksTextView.setTextSize(1, 14.0f);
                linksTextView.setSingleLine(true);
                linksTextView.setDisablePaddingsOffsetY(true);
                AvatarSpan avatarSpan = new AvatarSpan(linksTextView, i, 24.0f);
                if (peerDialogId < 0) {
                    TLRPC.User user3 = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
                    boolean z6 = user3 == null || UserObject.isDeleted(user3);
                    String userName2 = UserObject.getUserName(user3);
                    avatarSpan.setUser(user3);
                    z5 = z6;
                    notificationCenterDelegate = notificationCenterDelegate2;
                    str2 = userName2;
                } else {
                    notificationCenterDelegate = notificationCenterDelegate2;
                    TLRPC.Chat chat3 = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
                    z5 = chat3 == null;
                    if (chat3 != null) {
                        str3 = chat3.title;
                    }
                    avatarSpan.setChat(chat3);
                    str2 = str3;
                }
                final String str4 = str;
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x  " + ((Object) str2));
                spannableStringBuilder.setSpan(avatarSpan, 0, 1, 33);
                spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stars.StarsIntroActivity.13
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        bottomSheetArr2[0].lambda$new$0();
                        BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
                        if (safeLastFragment2 != null) {
                            safeLastFragment2.presentFragment(ChatActivity.of(peerDialogId));
                        }
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                        textPaint.setUnderlineText(false);
                    }
                }, 3, spannableStringBuilder.length(), 33);
                linksTextView.setText(spannableStringBuilder);
                if (!z5) {
                    if (peerDialogId < 0) {
                        i4 = C2807R.string.StarsSubscriptionChannel;
                    } else {
                        i4 = z4 ? C2807R.string.StarsSubscriptionBusiness : C2807R.string.StarsSubscriptionBot;
                    }
                    tableView.addRowUnpadded(LocaleController.getString(i4), linksTextView);
                }
                if (peerDialogId >= 0 && !TextUtils.isEmpty(starsSubscription.title)) {
                    tableView.addRow(LocaleController.getString(!z4 ? C2807R.string.StarsSubscriptionBusinessProduct : C2807R.string.StarsSubscriptionBotProduct), starsSubscription.title);
                }
                tableView.addRow(LocaleController.getString(C2807R.string.StarsSubscriptionSince), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) (starsSubscription.until_date - starsSubscription.pricing.period)) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) (starsSubscription.until_date - starsSubscription.pricing.period)) * 1000))));
                currentTime = ConnectionsManager.getInstance(i).getCurrentTime();
                tableView.addRow(LocaleController.getString((!starsSubscription.canceled || starsSubscription.bot_canceled) ? C2807R.string.StarsSubscriptionUntilExpires : currentTime > ((long) starsSubscription.until_date) ? C2807R.string.StarsSubscriptionUntilExpired : C2807R.string.StarsSubscriptionUntilRenews), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsSubscription.until_date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsSubscription.until_date) * 1000))));
                linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0.0f, 17.0f, 0.0f, 0.0f));
                LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                int i6 = Theme.key_windowBackgroundWhiteGrayText2;
                linksTextView2.setTextColor(Theme.getColor(i6, resourcesProvider));
                linksTextView2.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
                linksTextView2.setTextSize(1, 14.0f);
                linksTextView2.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTransactionTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda69
                    @Override // java.lang.Runnable
                    public final void run() {
                        Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTOSLink));
                    }
                }));
                linksTextView2.setGravity(17);
                linearLayout.addView(linksTextView2, LayoutHelper.createLinear(-1, -2, 14.0f, 15.0f, 14.0f, 7.0f));
                if (currentTime >= starsSubscription.until_date) {
                    if (starsSubscription.can_refulfill) {
                        LinkSpanDrawable.LinksTextView linksTextView3 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                        linksTextView3.setTextColor(Theme.getColor(i6, resourcesProvider));
                        linksTextView3.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
                        linksTextView3.setTextSize(1, 14.0f);
                        linksTextView3.setText(LocaleController.formatString(z3 ? C2807R.string.StarsSubscriptionBotRefulfillInfo : C2807R.string.StarsSubscriptionRefulfillInfo, LocaleController.formatDateChat(starsSubscription.until_date)));
                        linksTextView3.setSingleLine(false);
                        linksTextView3.setMaxLines(4);
                        linksTextView3.setGravity(17);
                        linearLayout.addView(linksTextView3, LayoutHelper.createLinear(-1, -2, 26.0f, 7.0f, 26.0f, 15.0f));
                        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, resourcesProvider);
                        buttonWithCounterView.setText(LocaleController.getString(z3 ? C2807R.string.StarsSubscriptionBotRefulfill : C2807R.string.StarsSubscriptionRefulfill), false);
                        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48));
                        final boolean z7 = z4;
                        bottomSheetArr = bottomSheetArr2;
                        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda70
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                StarsIntroActivity.$r8$lambda$laqoFMs_J2ETEpV2XpJ2h5yFzZ8(buttonWithCounterView, i, starsSubscription, bottomSheetArr, peerDialogId, context, resourcesProvider, z7, str4, view);
                            }
                        });
                        i3 = i;
                    } else if (starsSubscription.bot_canceled) {
                        LinkSpanDrawable.LinksTextView linksTextView4 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                        linksTextView4.setTextColor(Theme.getColor(Theme.key_color_red, resourcesProvider));
                        linksTextView4.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
                        linksTextView4.setTextSize(1, 14.0f);
                        linksTextView4.setText(LocaleController.getString(z4 ? C2807R.string.StarsSubscriptionBusinessCancelledText : C2807R.string.StarsSubscriptionBotCancelledText));
                        linksTextView4.setSingleLine(false);
                        linksTextView4.setMaxLines(4);
                        linksTextView4.setGravity(17);
                        linearLayout.addView(linksTextView4, LayoutHelper.createLinear(-1, -2, 26.0f, 7.0f, 26.0f, 15.0f));
                    } else if (starsSubscription.canceled) {
                        LinkSpanDrawable.LinksTextView linksTextView5 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                        linksTextView5.setTextColor(Theme.getColor(Theme.key_color_red, resourcesProvider));
                        linksTextView5.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
                        linksTextView5.setTextSize(1, 14.0f);
                        linksTextView5.setText(LocaleController.getString(C2807R.string.StarsSubscriptionCancelledText));
                        linksTextView5.setSingleLine(false);
                        linksTextView5.setMaxLines(4);
                        linksTextView5.setGravity(17);
                        linearLayout.addView(linksTextView5, LayoutHelper.createLinear(-1, -2, 26.0f, 7.0f, 26.0f, 15.0f));
                        if (starsSubscription.chat_invite_hash != null || starsSubscription.invoice_slug != null) {
                            final ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, true, resourcesProvider);
                            buttonWithCounterView2.setText(LocaleController.getString(C2807R.string.StarsSubscriptionRenew), false);
                            linearLayout.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48));
                            final TLObject tLObject4 = tLObject2;
                            bottomSheetArr = bottomSheetArr2;
                            i3 = i;
                            buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda71
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    StarsIntroActivity.$r8$lambda$ZW2Ilg6RObAVl6CF3AILhSh6aKw(buttonWithCounterView2, starsSubscription, i3, bottomSheetArr, tLObject4, str4, view);
                                }
                            });
                        }
                    } else {
                        LinkSpanDrawable.LinksTextView linksTextView6 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                        linksTextView6.setTextColor(Theme.getColor(i6, resourcesProvider));
                        linksTextView6.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
                        linksTextView6.setTextSize(1, 14.0f);
                        linksTextView6.setText(LocaleController.formatString(C2807R.string.StarsSubscriptionCancelInfo, LocaleController.formatDateChat(starsSubscription.until_date)));
                        linksTextView6.setSingleLine(false);
                        linksTextView6.setMaxLines(4);
                        linksTextView6.setGravity(17);
                        linearLayout.addView(linksTextView6, LayoutHelper.createLinear(-1, -2, 26.0f, 7.0f, 26.0f, 15.0f));
                        final ButtonWithCounterView buttonWithCounterView3 = new ButtonWithCounterView(context, false, resourcesProvider);
                        buttonWithCounterView3.setText(LocaleController.getString(C2807R.string.StarsSubscriptionCancel), false);
                        buttonWithCounterView3.setTextColor(Theme.getColor(Theme.key_color_red, resourcesProvider));
                        linearLayout.addView(buttonWithCounterView3, LayoutHelper.createLinear(-1, 48));
                        final TLObject tLObject5 = tLObject2;
                        final boolean z8 = z3;
                        final boolean z9 = z4;
                        bottomSheetArr = bottomSheetArr2;
                        i3 = i;
                        buttonWithCounterView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda72
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                StarsIntroActivity.m20968$r8$lambda$bMLbQQVepNFPt99ZGB3iaHKeVg(buttonWithCounterView3, starsSubscription, i3, bottomSheetArr, z9, z8, tLObject5, view);
                            }
                        });
                    }
                    builder2 = builder;
                    r8 = 0;
                    builder2.setCustomView(linearLayout);
                    BottomSheet bottomSheetCreate = builder2.create();
                    bottomSheetArr[r8] = bottomSheetCreate;
                    bottomSheetCreate.useBackgroundTopPadding = r8;
                    bottomSheetCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda74
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            NotificationCenter.getInstance(i3).removeObserver(notificationCenterDelegate, NotificationCenter.starSubscriptionsLoaded);
                        }
                    });
                    bottomSheetArr[r8].fixNavigationBar();
                    safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (!AndroidUtilities.isTablet() && !AndroidUtilities.hasDialogOnTop(safeLastFragment)) {
                        bottomSheetArr[r8].makeAttached(safeLastFragment);
                    }
                    bottomSheetArr[r8].show();
                    return bottomSheetArr[r8];
                }
                LinkSpanDrawable.LinksTextView linksTextView7 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
                linksTextView7.setTextColor(Theme.getColor(i6, resourcesProvider));
                linksTextView7.setLinkTextColor(Theme.getColor(i5, resourcesProvider));
                linksTextView7.setTextSize(1, 14.0f);
                linksTextView7.setText(LocaleController.formatString(C2807R.string.StarsSubscriptionExpiredInfo, LocaleController.formatDateChat(starsSubscription.until_date)));
                linksTextView7.setSingleLine(false);
                linksTextView7.setMaxLines(4);
                linksTextView7.setGravity(17);
                linearLayout.addView(linksTextView7, LayoutHelper.createLinear(-1, -2, 26.0f, 7.0f, 26.0f, 15.0f));
                if (starsSubscription.chat_invite_hash != null || starsSubscription.invoice_slug != null) {
                    final ButtonWithCounterView round = new ButtonWithCounterView(context, true, resourcesProvider).setRound();
                    r8 = 0;
                    round.setText(LocaleController.getString(C2807R.string.StarsSubscriptionAgain), false);
                    linearLayout.addView(round, LayoutHelper.createLinear(-1, 48));
                    bottomSheetArr = bottomSheetArr2;
                    final boolean[] zArr3 = zArr;
                    i3 = i;
                    round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda73
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            StarsIntroActivity.$r8$lambda$ipbcP8b7a053N5xSEE2QTd_sqIg(round, starsSubscription, i3, bottomSheetArr, resourcesProvider, zArr3, context, view);
                        }
                    });
                    builder2 = builder;
                    builder2.setCustomView(linearLayout);
                    BottomSheet bottomSheetCreate2 = builder2.create();
                    bottomSheetArr[r8] = bottomSheetCreate2;
                    bottomSheetCreate2.useBackgroundTopPadding = r8;
                    bottomSheetCreate2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda74
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            NotificationCenter.getInstance(i3).removeObserver(notificationCenterDelegate, NotificationCenter.starSubscriptionsLoaded);
                        }
                    });
                    bottomSheetArr[r8].fixNavigationBar();
                    safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (!AndroidUtilities.isTablet()) {
                        bottomSheetArr[r8].makeAttached(safeLastFragment);
                    }
                    bottomSheetArr[r8].show();
                    return bottomSheetArr[r8];
                }
                i3 = i;
                bottomSheetArr = bottomSheetArr2;
                builder2 = builder;
                r8 = 0;
                builder2.setCustomView(linearLayout);
                BottomSheet bottomSheetCreate22 = builder2.create();
                bottomSheetArr[r8] = bottomSheetCreate22;
                bottomSheetCreate22.useBackgroundTopPadding = r8;
                bottomSheetCreate22.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda74
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        NotificationCenter.getInstance(i3).removeObserver(notificationCenterDelegate, NotificationCenter.starSubscriptionsLoaded);
                    }
                });
                bottomSheetArr[r8].fixNavigationBar();
                safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (!AndroidUtilities.isTablet()) {
                }
                bottomSheetArr[r8].show();
                return bottomSheetArr[r8];
            }
        }
        z4 = z2;
        str = userName;
        tLObject2 = tLObject3;
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(100, 100, 17));
        Drawable drawable3 = context.getResources().getDrawable(C2807R.drawable.star_small_outline);
        drawable3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogBackground, resourcesProvider), PorterDuff.Mode.SRC_IN));
        Drawable drawable22 = context.getResources().getDrawable(C2807R.drawable.star_small_inner);
        if (starsSubscription.photo == null) {
        }
        TextView textView3 = new TextView(context);
        textView3.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView3.setTextSize(1, 20.0f);
        textView3.setTypeface(AndroidUtilities.bold());
        textView3.setGravity(17);
        if (TextUtils.isEmpty(starsSubscription.title)) {
        }
        linearLayout.addView(textView3, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        TextView textView22 = new TextView(context);
        textView22.setTextSize(1, 14.0f);
        textView22.setGravity(17);
        textView22.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
        TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing2 = starsSubscription.pricing;
        i2 = tL_starsSubscriptionPricing2.period;
        if (i2 != 2592000) {
        }
        linearLayout.addView(textView22, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        tableView = new TableView(context, resourcesProvider);
        LinkSpanDrawable.LinksTextView linksTextView8 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        linksTextView8.setPadding(AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f), AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f));
        linksTextView8.setEllipsize(TextUtils.TruncateAt.END);
        int i52 = Theme.key_chat_messageLinkIn;
        linksTextView8.setTextColor(Theme.getColor(i52, resourcesProvider));
        linksTextView8.setLinkTextColor(Theme.getColor(i52, resourcesProvider));
        linksTextView8.setTextSize(1, 14.0f);
        linksTextView8.setSingleLine(true);
        linksTextView8.setDisablePaddingsOffsetY(true);
        AvatarSpan avatarSpan2 = new AvatarSpan(linksTextView8, i, 24.0f);
        if (peerDialogId < 0) {
        }
        final String str42 = str;
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("x  " + ((Object) str2));
        spannableStringBuilder2.setSpan(avatarSpan2, 0, 1, 33);
        spannableStringBuilder2.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stars.StarsIntroActivity.13
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                bottomSheetArr2[0].lambda$new$0();
                BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment2 != null) {
                    safeLastFragment2.presentFragment(ChatActivity.of(peerDialogId));
                }
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setUnderlineText(false);
            }
        }, 3, spannableStringBuilder2.length(), 33);
        linksTextView8.setText(spannableStringBuilder2);
        if (!z5) {
        }
        if (peerDialogId >= 0) {
            tableView.addRow(LocaleController.getString(!z4 ? C2807R.string.StarsSubscriptionBusinessProduct : C2807R.string.StarsSubscriptionBotProduct), starsSubscription.title);
        }
        tableView.addRow(LocaleController.getString(C2807R.string.StarsSubscriptionSince), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) (starsSubscription.until_date - starsSubscription.pricing.period)) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) (starsSubscription.until_date - starsSubscription.pricing.period)) * 1000))));
        currentTime = ConnectionsManager.getInstance(i).getCurrentTime();
        tableView.addRow(LocaleController.getString((!starsSubscription.canceled || starsSubscription.bot_canceled) ? C2807R.string.StarsSubscriptionUntilExpires : currentTime > ((long) starsSubscription.until_date) ? C2807R.string.StarsSubscriptionUntilExpired : C2807R.string.StarsSubscriptionUntilRenews), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) starsSubscription.until_date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) starsSubscription.until_date) * 1000))));
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0.0f, 17.0f, 0.0f, 0.0f));
        LinkSpanDrawable.LinksTextView linksTextView22 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        int i62 = Theme.key_windowBackgroundWhiteGrayText2;
        linksTextView22.setTextColor(Theme.getColor(i62, resourcesProvider));
        linksTextView22.setLinkTextColor(Theme.getColor(i52, resourcesProvider));
        linksTextView22.setTextSize(1, 14.0f);
        linksTextView22.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTransactionTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTOSLink));
            }
        }));
        linksTextView22.setGravity(17);
        linearLayout.addView(linksTextView22, LayoutHelper.createLinear(-1, -2, 14.0f, 15.0f, 14.0f, 7.0f));
        if (currentTime >= starsSubscription.until_date) {
        }
        i3 = i;
        bottomSheetArr = bottomSheetArr2;
        builder2 = builder;
        r8 = 0;
        builder2.setCustomView(linearLayout);
        BottomSheet bottomSheetCreate222 = builder2.create();
        bottomSheetArr[r8] = bottomSheetCreate222;
        bottomSheetCreate222.useBackgroundTopPadding = r8;
        bottomSheetCreate222.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda74
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                NotificationCenter.getInstance(i3).removeObserver(notificationCenterDelegate, NotificationCenter.starSubscriptionsLoaded);
            }
        });
        bottomSheetArr[r8].fixNavigationBar();
        safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!AndroidUtilities.isTablet()) {
        }
        bottomSheetArr[r8].show();
        return bottomSheetArr[r8];
    }

    public static /* synthetic */ void $r8$lambda$laqoFMs_J2ETEpV2XpJ2h5yFzZ8(final ButtonWithCounterView buttonWithCounterView, final int i, final TL_stars.StarsSubscription starsSubscription, final BottomSheet[] bottomSheetArr, final long j, Context context, Theme.ResourcesProvider resourcesProvider, boolean z, String str, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        StarsController starsController = StarsController.getInstance(i);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda80
            @Override // java.lang.Runnable
            public final void run() {
                StarsIntroActivity.m20972$r8$lambda$jdcOnrH0PgPxKNXVE1hEWcFE0(buttonWithCounterView, starsSubscription, i, bottomSheetArr, j);
            }
        };
        if (starsController.balance.amount < starsSubscription.pricing.amount) {
            new StarsNeededSheet(context, resourcesProvider, starsSubscription.pricing.amount, z ? 8 : j < 0 ? 2 : 7, str, runnable, j).show();
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$jdcOnrH0PgPxKN-XVE-1hEWcFE0, reason: not valid java name */
    public static /* synthetic */ void m20972$r8$lambda$jdcOnrH0PgPxKNXVE1hEWcFE0(final ButtonWithCounterView buttonWithCounterView, TL_stars.StarsSubscription starsSubscription, final int i, final BottomSheet[] bottomSheetArr, final long j) {
        buttonWithCounterView.setLoading(true);
        TL_stars.TL_fulfillStarsSubscription tL_fulfillStarsSubscription = new TL_stars.TL_fulfillStarsSubscription();
        tL_fulfillStarsSubscription.subscription_id = starsSubscription.id;
        tL_fulfillStarsSubscription.peer = new TLRPC.TL_inputPeerSelf();
        ConnectionsManager.getInstance(i).sendRequest(tL_fulfillStarsSubscription, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda91
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda94
                    @Override // java.lang.Runnable
                    public final void run() {
                        StarsIntroActivity.m20951$r8$lambda$1aYKVcSuG2LSELCqk6YGGdDaI(buttonWithCounterView, bottomSheetArr, i, j);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$1aYKVcSuG2LSE-LCq-k6YGGdDaI, reason: not valid java name */
    public static /* synthetic */ void m20951$r8$lambda$1aYKVcSuG2LSELCqk6YGGdDaI(ButtonWithCounterView buttonWithCounterView, BottomSheet[] bottomSheetArr, int i, long j) {
        buttonWithCounterView.setLoading(false);
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
        }
        StarsController.getInstance(i).invalidateSubscriptions(true);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(ChatActivity.of(j));
    }

    public static /* synthetic */ void $r8$lambda$ZW2Ilg6RObAVl6CF3AILhSh6aKw(final ButtonWithCounterView buttonWithCounterView, TL_stars.StarsSubscription starsSubscription, final int i, final BottomSheet[] bottomSheetArr, final TLObject tLObject, final String str, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        TL_stars.TL_changeStarsSubscription tL_changeStarsSubscription = new TL_stars.TL_changeStarsSubscription();
        tL_changeStarsSubscription.canceled = Boolean.FALSE;
        tL_changeStarsSubscription.peer = new TLRPC.TL_inputPeerSelf();
        tL_changeStarsSubscription.subscription_id = starsSubscription.id;
        ConnectionsManager.getInstance(i).sendRequest(tL_changeStarsSubscription, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda77
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda85
                    @Override // java.lang.Runnable
                    public final void run() {
                        StarsIntroActivity.m20955$r8$lambda$9YDO1oz7yQK_v0iAyFCkVRyg_g(buttonWithCounterView, bottomSheetArr, i, tLObject, str);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$9YDO1oz7yQK_v-0iAyFCkVRyg_g, reason: not valid java name */
    public static /* synthetic */ void m20955$r8$lambda$9YDO1oz7yQK_v0iAyFCkVRyg_g(ButtonWithCounterView buttonWithCounterView, BottomSheet[] bottomSheetArr, int i, TLObject tLObject, String str) {
        buttonWithCounterView.setLoading(false);
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
        }
        StarsController.getInstance(i).invalidateSubscriptions(true);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            BulletinFactory.of(safeLastFragment).createUsersBulletin(Collections.singletonList(tLObject), LocaleController.getString(C2807R.string.StarsSubscriptionRenewedToast), AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.StarsSubscriptionRenewedToastText, str))).show(false);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$bMLbQQVepN-FPt99ZGB3iaHKeVg, reason: not valid java name */
    public static /* synthetic */ void m20968$r8$lambda$bMLbQQVepNFPt99ZGB3iaHKeVg(final ButtonWithCounterView buttonWithCounterView, final TL_stars.StarsSubscription starsSubscription, final int i, final BottomSheet[] bottomSheetArr, final boolean z, final boolean z2, final TLObject tLObject, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        TL_stars.TL_changeStarsSubscription tL_changeStarsSubscription = new TL_stars.TL_changeStarsSubscription();
        tL_changeStarsSubscription.canceled = Boolean.TRUE;
        tL_changeStarsSubscription.peer = new TLRPC.TL_inputPeerSelf();
        tL_changeStarsSubscription.subscription_id = starsSubscription.id;
        ConnectionsManager.getInstance(i).sendRequest(tL_changeStarsSubscription, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda81
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda92
                    @Override // java.lang.Runnable
                    public final void run() {
                        StarsIntroActivity.$r8$lambda$HXjjolat772q5MuwE4enDUo5kC4(buttonWithCounterView, bottomSheetArr, i, z, starsSubscription, z, tLObject);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$HXjjolat772q5MuwE4enDUo5kC4(ButtonWithCounterView buttonWithCounterView, BottomSheet[] bottomSheetArr, int i, boolean z, TL_stars.StarsSubscription starsSubscription, boolean z2, TLObject tLObject) {
        String string;
        buttonWithCounterView.setLoading(false);
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
        }
        StarsController.getInstance(i).invalidateSubscriptions(true);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if (z && !TextUtils.isEmpty(starsSubscription.title)) {
                string = LocaleController.formatString(C2807R.string.StarsSubscriptionCancelledBizToastText, LocaleController.formatDateChat(starsSubscription.until_date), starsSubscription.title);
            } else if (z2 && !TextUtils.isEmpty(starsSubscription.title)) {
                string = LocaleController.formatString(C2807R.string.StarsSubscriptionCancelledBotToastText, LocaleController.formatDateChat(starsSubscription.until_date), starsSubscription.title);
            } else {
                string = LocaleController.formatString(C2807R.string.StarsSubscriptionCancelledToastText, LocaleController.formatDateChat(starsSubscription.until_date));
            }
            BulletinFactory.of(safeLastFragment).createUsersBulletin(Collections.singletonList(tLObject), LocaleController.getString(C2807R.string.StarsSubscriptionCancelledToast), AndroidUtilities.replaceTags(string)).show(false);
        }
    }

    public static /* synthetic */ void $r8$lambda$ipbcP8b7a053N5xSEE2QTd_sqIg(final ButtonWithCounterView buttonWithCounterView, TL_stars.StarsSubscription starsSubscription, final int i, final BottomSheet[] bottomSheetArr, final Theme.ResourcesProvider resourcesProvider, boolean[] zArr, Context context, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        if (starsSubscription.chat_invite_hash != null) {
            final TLRPC.TL_messages_checkChatInvite tL_messages_checkChatInvite = new TLRPC.TL_messages_checkChatInvite();
            tL_messages_checkChatInvite.hash = starsSubscription.chat_invite_hash;
            ConnectionsManager.getInstance(i).sendRequest(tL_messages_checkChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda78
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda90
                        @Override // java.lang.Runnable
                        public final void run() {
                            StarsIntroActivity.m20981$r8$lambda$v_vgNFcTwMDDVzGV44BUag7P1M(buttonWithCounterView, tLObject, bottomSheetArr, resourcesProvider, i, tL_messages_checkChatInvite);
                        }
                    });
                }
            });
        } else if (starsSubscription.invoice_slug != null) {
            zArr[0] = true;
            Browser.openUrl(context, Uri.parse("https://t.me/$" + starsSubscription.invoice_slug), true, false, false, new Browser.Progress() { // from class: org.telegram.ui.Stars.StarsIntroActivity.14
                @Override // org.telegram.messenger.browser.Browser.Progress
                public void end() {
                    buttonWithCounterView.setLoading(false);
                }
            }, null, false, true, false);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$v_vgNFcTwMDDVzGV44BUag7-P1M, reason: not valid java name */
    public static /* synthetic */ void m20981$r8$lambda$v_vgNFcTwMDDVzGV44BUag7P1M(ButtonWithCounterView buttonWithCounterView, TLObject tLObject, BottomSheet[] bottomSheetArr, Theme.ResourcesProvider resourcesProvider, final int i, TLRPC.TL_messages_checkChatInvite tL_messages_checkChatInvite) {
        buttonWithCounterView.setLoading(false);
        if (tLObject instanceof TLRPC.ChatInvite) {
            TLRPC.ChatInvite chatInvite = (TLRPC.ChatInvite) tLObject;
            TL_stars.TL_starsSubscriptionPricing tL_starsSubscriptionPricing = chatInvite.subscription_pricing;
            if (tL_starsSubscriptionPricing == null) {
                BulletinFactory.of(bottomSheetArr[0].topBulletinContainer, resourcesProvider).createErrorBulletin(LocaleController.getString(C2807R.string.UnknownError)).show(false);
                return;
            } else {
                final long j = tL_starsSubscriptionPricing.amount;
                StarsController.getInstance(i).subscribeTo(tL_messages_checkChatInvite.hash, chatInvite, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda95
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        StarsIntroActivity.$r8$lambda$AUr_XEXXRDvLDtJmB1NEsAk5IkI(i, j, (String) obj, (Long) obj2);
                    }
                });
                return;
            }
        }
        BulletinFactory.of(bottomSheetArr[0].topBulletinContainer, resourcesProvider).createErrorBulletin(LocaleController.getString(C2807R.string.LinkHashExpired)).show(false);
    }

    public static /* synthetic */ void $r8$lambda$AUr_XEXXRDvLDtJmB1NEsAk5IkI(final int i, final long j, String str, final Long l) {
        if (!"paid".equals(str) || l.longValue() == 0) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda98
            @Override // java.lang.Runnable
            public final void run() {
                StarsIntroActivity.$r8$lambda$kkYRwSdQXxOuQRsPGWqHBsjR2RY(l, i, j);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$kkYRwSdQXxOuQRsPGWqHBsjR2RY(Long l, int i, final long j) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        final ChatActivity chatActivityOf = ChatActivity.of(l.longValue());
        safeLastFragment.presentFragment(chatActivityOf);
        final TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-l.longValue()));
        if (chat != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    BulletinFactory.of(chatActivityOf).createSimpleBulletin(C2807R.raw.stars_send, LocaleController.getString(C2807R.string.StarsSubscriptionCompleted), AndroidUtilities.replaceTags(LocaleController.formatPluralString("StarsSubscriptionCompletedText", (int) j, chat.title))).show(true);
                }
            }, 250L);
        }
    }

    public static BottomSheet showBoostsSheet(final Context context, int i, final long j, final TL_stories.Boost boost, Theme.ResourcesProvider resourcesProvider) {
        if (boost == null || context == null) {
            return null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        final BottomSheet[] bottomSheetArr = new BottomSheet[1];
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(4.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 150, 7, 0, 0, 0, 10));
        StarParticlesView starParticlesViewMakeParticlesView = makeParticlesView(context, 70, 0);
        frameLayout.addView(starParticlesViewMakeParticlesView, LayoutHelper.createFrame(-1, -1.0f));
        final GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 2);
        GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
        gLIconRenderer.colorKey1 = Theme.key_starsGradient1;
        gLIconRenderer.colorKey2 = Theme.key_starsGradient2;
        gLIconRenderer.updateColors();
        gLIconTextureView.setStarParticlesView(starParticlesViewMakeParticlesView);
        frameLayout.addView(gLIconTextureView, LayoutHelper.createFrame(170, 170.0f, 17, 0.0f, 32.0f, 0.0f, 24.0f));
        gLIconTextureView.setPaused(false);
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setText(LocaleController.formatPluralStringSpaced("BoostStars", (int) boost.stars));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        TextView textView2 = new TextView(context);
        textView2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), -6915073));
        textView2.setTextColor(-1);
        textView2.setTextSize(1, 11.33f);
        textView2.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(8.33f), 0);
        textView2.setGravity(17);
        textView2.setTypeface(AndroidUtilities.bold());
        StringBuilder sb = new StringBuilder("x");
        int i2 = boost.multiplier;
        if (i2 == 0) {
            i2 = 1;
        }
        sb.append(LocaleController.formatPluralStringSpaced("BoostingBoostsCount", i2));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb.toString());
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_boost_badge, 2);
        coloredImageSpan.translate(0.0f, AndroidUtilities.dp(0.66f));
        spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
        textView2.setText(spannableStringBuilder);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, 20, 17, 20, 4, 20, 4));
        TableView tableView = new TableView(context, resourcesProvider);
        tableView.addRowUser(LocaleController.getString(C2807R.string.BoostFrom), i, j, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                StarsIntroActivity.$r8$lambda$UJrgeQXB_AWuKvlIikjNUVwiQbk(bottomSheetArr, j);
            }
        });
        tableView.addRow(LocaleController.getString(C2807R.string.BoostGift), LocaleController.formatPluralString("BoostStars", (int) boost.stars, new Object[0]));
        if (boost.giveaway_msg_id != 0) {
            tableView.addRowLink(LocaleController.getString(C2807R.string.BoostReason), LocaleController.getString(C2807R.string.BoostReasonGiveaway), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    StarsIntroActivity.m20953$r8$lambda$7ZsrleWoA0mADFYg9aN5w130ds(bottomSheetArr, j, boost);
                }
            });
        }
        tableView.addRow(LocaleController.getString(C2807R.string.BoostDate), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) boost.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) boost.date) * 1000))));
        tableView.addRow(LocaleController.getString(C2807R.string.BoostUntil), LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) boost.expires) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) boost.expires) * 1000))));
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 16.0f, 17.0f, 16.0f, 0.0f));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.StarsTransactionTOS), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2807R.string.StarsTOSLink));
            }
        }));
        linksTextView.setGravity(17);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 14.0f, 15.0f, 14.0f, 7.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView.setText(LocaleController.getString(C2807R.string.OK), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda57
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarsIntroActivity.m20984$r8$lambda$w5wFWPeug5L7TCVPFmCvlF4BI(bottomSheetArr, view);
            }
        });
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 16.0f, 8.0f, 16.0f, 0.0f));
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetCreate = builder.create();
        bottomSheetArr[0] = bottomSheetCreate;
        bottomSheetCreate.useBackgroundTopPadding = false;
        bottomSheetCreate.fixNavigationBar();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!AndroidUtilities.isTablet() && !AndroidUtilities.hasDialogOnTop(safeLastFragment)) {
            bottomSheetArr[0].makeAttached(safeLastFragment);
        }
        gLIconTextureView.setPaused(false);
        bottomSheetArr[0].show();
        bottomSheetArr[0].setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                gLIconTextureView.setPaused(true);
            }
        });
        return bottomSheetArr[0];
    }

    public static /* synthetic */ void $r8$lambda$UJrgeQXB_AWuKvlIikjNUVwiQbk(BottomSheet[] bottomSheetArr, long j) {
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(ChatActivity.of(j));
    }

    /* JADX INFO: renamed from: $r8$lambda$7ZsrleWoA0mADFYg-9aN5w130ds, reason: not valid java name */
    public static /* synthetic */ void m20953$r8$lambda$7ZsrleWoA0mADFYg9aN5w130ds(BottomSheet[] bottomSheetArr, long j, TL_stories.Boost boost) {
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(ChatActivity.of(j, boost.giveaway_msg_id));
    }

    /* JADX INFO: renamed from: $r8$lambda$w5wFW-Peug5L7TC-VPFmCvlF4BI, reason: not valid java name */
    public static /* synthetic */ void m20984$r8$lambda$w5wFWPeug5L7TCVPFmCvlF4BI(BottomSheet[] bottomSheetArr, View view) {
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
        }
    }

    private static CharSequence appendStatus(SpannableStringBuilder spannableStringBuilder, TextView textView, String str) {
        spannableStringBuilder.append(" ");
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ReplacementSpan(textView.getCurrentTextColor(), str) { // from class: org.telegram.ui.Stars.StarsIntroActivity.15
            private final Paint backgroundPaint;
            private final Text layout;
            final /* synthetic */ int val$color;
            final /* synthetic */ String val$string;

            {
                this.val$color = i;
                this.val$string = str;
                Paint paint = new Paint(1);
                this.backgroundPaint = paint;
                paint.setColor(Theme.multAlpha(i, 0.1f));
                this.layout = new Text(str, 13.0f, AndroidUtilities.bold());
            }

            @Override // android.text.style.ReplacementSpan
            public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
                return (int) (AndroidUtilities.dp(12.0f) + this.layout.getCurrentWidth());
            }

            @Override // android.text.style.ReplacementSpan
            public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(f, (r12 - AndroidUtilities.dp(20.0f)) / 2.0f, AndroidUtilities.dp(12.0f) + f + this.layout.getCurrentWidth(), (AndroidUtilities.dp(20.0f) + r12) / 2.0f);
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), this.backgroundPaint);
                this.layout.draw(canvas, f + AndroidUtilities.dp(6.0f), (i3 + i5) / 2.0f, this.val$color, 1.0f);
            }
        }, 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    public static BottomSheet showMediaPriceSheet(final Context context, final long j, final boolean z, final Utilities.Callback2<Long, Runnable> callback2, Theme.ResourcesProvider resourcesProvider) {
        final BottomSheet[] bottomSheetArr;
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2807R.string.PaidContentTitle));
        textView.setTextSize(1, 20.0f);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 4.0f, 0.0f, 4.0f, 18.0f));
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        final OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context, resourcesProvider);
        outlineTextContainerView.setForceForceUseCenter(true);
        outlineTextContainerView.setText(LocaleController.getString(C2807R.string.PaidContentPriceTitle));
        outlineTextContainerView.setLeftPadding(AndroidUtilities.dp(36.0f));
        editTextBoldCursor.setTextColor(Theme.getColor(i, resourcesProvider));
        editTextBoldCursor.setCursorSize(AndroidUtilities.dp(20.0f));
        editTextBoldCursor.setCursorWidth(1.5f);
        ButtonWithCounterView round = null;
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setMaxLines(1);
        int iDp = AndroidUtilities.dp(16.0f);
        editTextBoldCursor.setPadding(AndroidUtilities.dp(6.0f), iDp, iDp, iDp);
        editTextBoldCursor.setInputType(2);
        editTextBoldCursor.setTypeface(Typeface.DEFAULT);
        editTextBoldCursor.setSelectAllOnFocus(true);
        editTextBoldCursor.setHighlightColor(Theme.getColor(Theme.key_chat_inTextSelectionHighlight, resourcesProvider));
        editTextBoldCursor.setHandlesColor(Theme.getColor(Theme.key_chat_TextSelectionCursor, resourcesProvider));
        editTextBoldCursor.setGravity(LocaleController.isRTL ? 5 : 3);
        editTextBoldCursor.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda60
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                OutlineTextContainerView outlineTextContainerView2 = outlineTextContainerView;
                EditTextBoldCursor editTextBoldCursor2 = editTextBoldCursor;
                outlineTextContainerView2.animateSelection(z2, !TextUtils.isEmpty(editTextBoldCursor2.getText()));
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setImageResource(C2807R.drawable.star_small_inner);
        linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 0.0f, 19, 14, 0, 0, 0));
        linearLayout2.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 1.0f, 119));
        outlineTextContainerView.attachEditText(editTextBoldCursor);
        outlineTextContainerView.addView(linearLayout2, LayoutHelper.createFrame(-1, -2, 48));
        linearLayout.addView(outlineTextContainerView, LayoutHelper.createLinear(-1, -2));
        final TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 16.0f);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText3));
        outlineTextContainerView.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 21, 0.0f, 0.0f, 14.0f, 0.0f));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        linksTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.PaidContentInfo), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2807R.string.PaidContentInfoLink));
            }
        }), true));
        linksTextView.setTextSize(1, 12.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 14.0f, 3.0f, 14.0f, 24.0f));
        final ButtonWithCounterView round2 = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round2.setText(LocaleController.getString(j > 0 ? C2807R.string.PaidContentUpdateButton : C2807R.string.PaidContentButton), false);
        linearLayout.addView(round2, LayoutHelper.createLinear(-1, 48));
        if (j > 0 && z) {
            round = new ButtonWithCounterView(context, false, resourcesProvider).setRound();
            round.setText(LocaleController.getString(C2807R.string.PaidContentClearButton), false, false);
            linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 0.0f, 4.0f, 0.0f, 0.0f));
        }
        builder.setCustomView(linearLayout);
        final BottomSheet[] bottomSheetArr2 = {builder.create()};
        editTextBoldCursor.setText(j <= 0 ? _UrlKt.FRAGMENT_ENCODE_SET : Long.toString(j));
        editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Stars.StarsIntroActivity.16
            private boolean ignore;
            private int shakeDp = 2;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                long j2;
                if (this.ignore) {
                    return;
                }
                try {
                    j2 = TextUtils.isEmpty(editable) ? 0L : Long.parseLong(editable.toString());
                    try {
                        if (j2 > MessagesController.getInstance(UserConfig.selectedAccount).starsPaidPostAmountMax) {
                            this.ignore = true;
                            EditTextBoldCursor editTextBoldCursor2 = editTextBoldCursor;
                            j2 = MessagesController.getInstance(UserConfig.selectedAccount).starsPaidPostAmountMax;
                            editTextBoldCursor2.setText(Long.toString(j2));
                            EditTextBoldCursor editTextBoldCursor3 = editTextBoldCursor;
                            editTextBoldCursor3.setSelection(editTextBoldCursor3.getText().length());
                            OutlineTextContainerView outlineTextContainerView2 = outlineTextContainerView;
                            int i2 = -this.shakeDp;
                            this.shakeDp = i2;
                            AndroidUtilities.shakeViewSpring(outlineTextContainerView2, i2);
                        }
                    } catch (Exception unused) {
                        this.ignore = true;
                        EditTextBoldCursor editTextBoldCursor4 = editTextBoldCursor;
                        long j3 = j;
                        editTextBoldCursor4.setText(j3 <= 0 ? _UrlKt.FRAGMENT_ENCODE_SET : Long.toString(j3));
                        EditTextBoldCursor editTextBoldCursor5 = editTextBoldCursor;
                        editTextBoldCursor5.setSelection(editTextBoldCursor5.getText().length());
                    }
                } catch (Exception unused2) {
                    j2 = 0;
                }
                this.ignore = false;
                if (!z) {
                    round2.setEnabled(j2 > 0);
                }
                outlineTextContainerView.animateSelection(editTextBoldCursor.isFocused(), true ^ TextUtils.isEmpty(editTextBoldCursor.getText()));
                TextView textView3 = textView2;
                if (j2 == 0) {
                    textView3.animate().alpha(0.0f).start();
                    textView2.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                    return;
                }
                textView3.animate().alpha(1.0f).start();
                textView2.setText("≈" + BillingController.getInstance().formatCurrency((long) ((j2 / 1000.0d) * ((double) MessagesController.getInstance(UserConfig.selectedAccount).starsUsdWithdrawRate1000)), "USD"));
            }
        });
        final boolean[] zArr = {false};
        editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda62
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView3, int i2, KeyEvent keyEvent) {
                return StarsIntroActivity.m20962$r8$lambda$PUcLBJ7bNknzyrHru5RbTP3EEQ(zArr, callback2, round2, editTextBoldCursor, bottomSheetArr2, textView3, i2, keyEvent);
            }
        });
        round2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda63
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarsIntroActivity.$r8$lambda$1W7CtXtcUz2fAWNaJvsTOrY3G18(zArr, callback2, editTextBoldCursor, round2, bottomSheetArr2, view);
            }
        });
        if (round != null) {
            final ButtonWithCounterView buttonWithCounterView = round;
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda64
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StarsIntroActivity.$r8$lambda$uEOd_eZkdzAo6jf3OfosQ3Ms8to(zArr, callback2, buttonWithCounterView, editTextBoldCursor, bottomSheetArr2, view);
                }
            };
            bottomSheetArr = bottomSheetArr2;
            buttonWithCounterView.setOnClickListener(onClickListener);
        } else {
            bottomSheetArr = bottomSheetArr2;
        }
        bottomSheetArr[0].fixNavigationBar();
        bottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda65
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
            }
        });
        bottomSheetArr[0].show();
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda66
            @Override // java.lang.Runnable
            public final void run() {
                StarsIntroActivity.$r8$lambda$M7B49l2nlUHQOQhvgmJgBU1XyQU(bottomSheetArr, editTextBoldCursor);
            }
        }, lastFragment instanceof ChatActivity ? ((ChatActivity) lastFragment).needEnterText() : false ? 200L : 80L);
        return bottomSheetArr[0];
    }

    /* JADX INFO: renamed from: $r8$lambda$PUcLBJ7bNknzy-rHru5RbTP3EEQ, reason: not valid java name */
    public static /* synthetic */ boolean m20962$r8$lambda$PUcLBJ7bNknzyrHru5RbTP3EEQ(boolean[] zArr, Utilities.Callback2 callback2, ButtonWithCounterView buttonWithCounterView, final EditTextBoldCursor editTextBoldCursor, final BottomSheet[] bottomSheetArr, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        if (zArr[0]) {
            return true;
        }
        if (callback2 != null) {
            zArr[0] = true;
            buttonWithCounterView.setLoading(true);
            callback2.run(Long.valueOf(Long.parseLong(editTextBoldCursor.getText().toString())), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda82
                @Override // java.lang.Runnable
                public final void run() {
                    StarsIntroActivity.$r8$lambda$FSHDo5_r5iae7kqpOxT0Ppad5TU(editTextBoldCursor, bottomSheetArr);
                }
            });
            return true;
        }
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        bottomSheetArr[0].lambda$new$0();
        return true;
    }

    public static /* synthetic */ void $r8$lambda$FSHDo5_r5iae7kqpOxT0Ppad5TU(EditTextBoldCursor editTextBoldCursor, BottomSheet[] bottomSheetArr) {
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        bottomSheetArr[0].lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$1W7CtXtcUz2fAWNaJvsTOrY3G18(boolean[] zArr, Utilities.Callback2 callback2, final EditTextBoldCursor editTextBoldCursor, ButtonWithCounterView buttonWithCounterView, final BottomSheet[] bottomSheetArr, View view) {
        if (zArr[0]) {
            return;
        }
        if (callback2 != null) {
            String string = editTextBoldCursor.getText().toString();
            zArr[0] = true;
            buttonWithCounterView.setLoading(true);
            callback2.run(Long.valueOf(TextUtils.isEmpty(string) ? 0L : Long.parseLong(string)), new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda79
                @Override // java.lang.Runnable
                public final void run() {
                    StarsIntroActivity.m20957$r8$lambda$GlYDQcjXmO82yQsqRyyzMeiMAI(editTextBoldCursor, bottomSheetArr);
                }
            });
            return;
        }
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        bottomSheetArr[0].lambda$new$0();
    }

    /* JADX INFO: renamed from: $r8$lambda$GlYDQcjXmO82yQsqRy-yzMeiMAI, reason: not valid java name */
    public static /* synthetic */ void m20957$r8$lambda$GlYDQcjXmO82yQsqRyyzMeiMAI(EditTextBoldCursor editTextBoldCursor, BottomSheet[] bottomSheetArr) {
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        bottomSheetArr[0].lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$uEOd_eZkdzAo6jf3OfosQ3Ms8to(final boolean[] zArr, Utilities.Callback2 callback2, ButtonWithCounterView buttonWithCounterView, final EditTextBoldCursor editTextBoldCursor, final BottomSheet[] bottomSheetArr, View view) {
        if (zArr[0]) {
            return;
        }
        if (callback2 != null) {
            zArr[0] = true;
            buttonWithCounterView.setLoading(true);
            callback2.run(0L, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    StarsIntroActivity.m20964$r8$lambda$SUA6c15Kw8xJ4cZLSHlpKgM6Qg(zArr, editTextBoldCursor, bottomSheetArr);
                }
            });
        } else {
            AndroidUtilities.hideKeyboard(editTextBoldCursor);
            bottomSheetArr[0].lambda$new$0();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$SUA6c15Kw-8xJ4cZLSHlpKgM6Qg, reason: not valid java name */
    public static /* synthetic */ void m20964$r8$lambda$SUA6c15Kw8xJ4cZLSHlpKgM6Qg(boolean[] zArr, EditTextBoldCursor editTextBoldCursor, BottomSheet[] bottomSheetArr) {
        zArr[0] = false;
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        bottomSheetArr[0].lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$M7B49l2nlUHQOQhvgmJgBU1XyQU(BottomSheet[] bottomSheetArr, final EditTextBoldCursor editTextBoldCursor) {
        bottomSheetArr[0].setFocusable(true);
        editTextBoldCursor.requestFocus();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda83
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.showKeyboard(editTextBoldCursor);
            }
        });
    }

    public static BottomSheet showGiftResellPriceSheet(Context context, int i, Utilities.Callback2<AmountUtils$Amount, Runnable> callback2, Theme.ResourcesProvider resourcesProvider) {
        return showGiftResellPriceSheet(context, i, null, null, callback2, resourcesProvider);
    }

    public static BottomSheet showGiftResellPriceSheet(Context context, int i, TL_stars.StarGift starGift, AmountUtils$Amount amountUtils$Amount, final Utilities.Callback2<AmountUtils$Amount, Runnable> callback2, Theme.ResourcesProvider resourcesProvider) {
        if (amountUtils$Amount == null) {
            if (starGift == null) {
                amountUtils$Amount = AmountUtils$Amount.fromDecimal(MessagesController.getInstance(i).config.starsStarGiftResaleAmountMin.get(), AmountUtils$Currency.STARS);
            } else if (starGift.resale_ton_only) {
                amountUtils$Amount = starGift.getResellAmount(AmountUtils$Currency.TON);
            } else {
                amountUtils$Amount = starGift.getResellAmount(AmountUtils$Currency.STARS);
            }
        }
        SellGiftEnterPriceSheet sellGiftEnterPriceSheet = new SellGiftEnterPriceSheet(context, resourcesProvider, i, amountUtils$Amount, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda84
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                callback2.run((AmountUtils$Amount) obj, new Runnable() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda93
                    @Override // java.lang.Runnable
                    public final void run() {
                        sellGiftEnterPriceSheetArr[0].lambda$new$0();
                    }
                });
            }
        });
        final SellGiftEnterPriceSheet[] sellGiftEnterPriceSheetArr = {sellGiftEnterPriceSheet};
        sellGiftEnterPriceSheet.show();
        return sellGiftEnterPriceSheetArr[0];
    }

    public static void setGiftImage(ImageReceiver imageReceiver, TLRPC.Document document, int i) {
        if (document == null) {
            imageReceiver.clearImage();
            return;
        }
        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, i);
        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document.thumbs, Theme.key_windowBackgroundGray, 0.35f);
        imageReceiver.setImage(ImageLocation.getForDocument(document), i + "_" + i, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), i + "_" + i, svgThumb, 0L, null, null, 0);
    }

    public static void setGiftImage(ImageReceiver imageReceiver, TL_stars.StarGift starGift, int i) {
        setGiftImage(imageReceiver, starGift == null ? null : starGift.getDocument(), i);
    }

    public static BottomSheet showSoldOutGiftSheet(Context context, int i, TL_stars.StarGift starGift, Theme.ResourcesProvider resourcesProvider) {
        if (starGift == null || context == null) {
            return null;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        BackupImageView backupImageView = new BackupImageView(context);
        setGiftImage(backupImageView.getImageReceiver(), starGift, 160);
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(160, 160, 17, 0, -8, 0, 10));
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setText(LocaleController.getString(C2807R.string.Gift2SoldOutSheetTitle));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setGravity(17);
        textView2.setTextColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
        textView2.setText(LocaleController.getString(C2807R.string.Gift2SoldOutSheetSubtitle));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 4));
        TableView tableView = new TableView(context, resourcesProvider);
        if (starGift.first_sale_date != 0) {
            tableView.addRowDateTime(LocaleController.getString(C2807R.string.Gift2SoldOutSheetFirstSale), starGift.first_sale_date);
        }
        if (starGift.last_sale_date != 0) {
            tableView.addRowDateTime(LocaleController.getString(C2807R.string.Gift2SoldOutSheetLastSale), starGift.last_sale_date);
        }
        tableView.addRow(LocaleController.getString(C2807R.string.Gift2SoldOutSheetValue), replaceStarsWithPlain("⭐️ " + LocaleController.formatNumber(starGift.stars, ','), 0.8f));
        if (starGift.limited) {
            addAvailabilityRow(tableView, i, starGift, resourcesProvider);
        }
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0.0f, 17.0f, 0.0f, 12.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView.setText(LocaleController.getString(C2807R.string.OK), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48));
        builder.setCustomView(linearLayout);
        final BottomSheet[] bottomSheetArr = {builder.create()};
        bottomSheetArr[0].useBackgroundTopPadding = false;
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda68
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetArr[0].lambda$new$0();
            }
        });
        bottomSheetArr[0].fixNavigationBar();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!AndroidUtilities.isTablet() && !AndroidUtilities.hasDialogOnTop(safeLastFragment)) {
            bottomSheetArr[0].makeAttached(safeLastFragment);
        }
        bottomSheetArr[0].show();
        return bottomSheetArr[0];
    }

    public static void addAvailabilityRow(TableView tableView, int i, TL_stars.StarGift starGift, Theme.ResourcesProvider resourcesProvider) {
        CharSequence pluralStringComma;
        final TextView textView = (TextView) ((TableView.TableRowContent) tableView.addRow(LocaleController.getString(C2807R.string.Gift2Availability), _UrlKt.FRAGMENT_ENCODE_SET).getChildAt(1)).getChildAt(0);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x ");
        LoadingSpan loadingSpan = new LoadingSpan(textView, AndroidUtilities.dp(90.0f), 0, resourcesProvider);
        loadingSpan.setColors(Theme.multAlpha(textView.getPaint().getColor(), 0.21f), Theme.multAlpha(textView.getPaint().getColor(), 0.08f));
        spannableStringBuilder.setSpan(loadingSpan, 0, 1, 33);
        textView.setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
        if (!starGift.sold_out) {
            StarsController.getInstance(i).getStarGift(starGift.id, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarsIntroActivity$$ExternalSyntheticLambda51
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    StarsIntroActivity.m20952$r8$lambda$6yoR4Iq9GbT6hgJd2aiDqi9OdE(textView, (TL_stars.StarGift) obj);
                }
            });
            return;
        }
        boolean z = starGift instanceof TL_stars.TL_starGiftUnique;
        int i2 = starGift.availability_remains;
        if (!z) {
            int i3 = starGift.availability_total;
            textView.setText(i2 <= 0 ? LocaleController.formatPluralStringComma("Gift2Availability2ValueNone", i3) : LocaleController.formatPluralStringComma("Gift2Availability4Value", i2, LocaleController.formatNumber(i3, ',')));
            return;
        }
        if (i2 <= 0) {
            pluralStringComma = LocaleController.formatPluralStringComma("Gift2QuantityIssuedNone", starGift.availability_total);
        } else {
            pluralStringComma = LocaleController.formatPluralStringComma("Gift2QuantityIssued1", starGift.availability_issued) + LocaleController.formatPluralStringComma("Gift2QuantityIssued2", starGift.availability_total);
        }
        textView.setText(pluralStringComma);
    }

    /* JADX INFO: renamed from: $r8$lambda$6yoR4Iq9GbT6hgJd2aiDqi9-OdE, reason: not valid java name */
    public static /* synthetic */ void m20952$r8$lambda$6yoR4Iq9GbT6hgJd2aiDqi9OdE(TextView textView, TL_stars.StarGift starGift) {
        String pluralStringComma;
        if (starGift == null) {
            return;
        }
        boolean z = starGift instanceof TL_stars.TL_starGiftUnique;
        int i = starGift.availability_remains;
        if (!z) {
            int i2 = starGift.availability_total;
            textView.setText(i <= 0 ? LocaleController.formatPluralStringComma("Gift2Availability2ValueNone", i2) : LocaleController.formatPluralStringComma("Gift2Availability4Value", i, LocaleController.formatNumber(i2, ',')));
            return;
        }
        if (i <= 0) {
            pluralStringComma = LocaleController.formatPluralStringComma("Gift2QuantityIssuedNone", starGift.availability_total);
        } else {
            pluralStringComma = LocaleController.formatPluralStringComma("Gift2QuantityIssued1", starGift.availability_issued) + LocaleController.formatPluralStringComma("Gift2QuantityIssued2", starGift.availability_total);
        }
        textView.setText(pluralStringComma);
    }

    public static String formatTON(long j) {
        if (floatFormat2 == null) {
            floatFormat2 = new DecimalFormat("0.####", new DecimalFormatSymbols(Locale.US));
        }
        if (j % 1000000000 != 0) {
            return floatFormat2.format(j / 1.0E9d);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(j < 0 ? "-" : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(LocaleController.formatNumber(Math.abs(j / 1000000000), ','));
        return sb.toString();
    }

    public static CharSequence formatStarsAmount(TL_stars.StarsAmount starsAmount) {
        return formatStarsAmount(starsAmount, 0.777f, ',');
    }

    public static CharSequence formatStarsAmount(TL_stars.StarsAmount starsAmount, float f, char c2) {
        double d;
        int i;
        if (floatFormat == null) {
            floatFormat = new DecimalFormat("0.###", new DecimalFormatSymbols(Locale.US));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean z = starsAmount instanceof TL_stars.TL_starsTonAmount;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if (z) {
            long j = starsAmount.amount;
            if (j % 1000000000 != 0) {
                String str2 = floatFormat.format(j / 1.0E9d);
                spannableStringBuilder.append((CharSequence) str2);
                int iIndexOf = str2.indexOf(".");
                if (iIndexOf >= 0) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(f), iIndexOf, spannableStringBuilder.length(), 33);
                    return spannableStringBuilder;
                }
            } else {
                StringBuilder sb = new StringBuilder();
                if (starsAmount.negative()) {
                    str = "-";
                }
                sb.append(str);
                sb.append(LocaleController.formatNumber(Math.abs(starsAmount.amount / 1000000000), c2));
                spannableStringBuilder.append((CharSequence) sb.toString());
                return spannableStringBuilder;
            }
        } else {
            long j2 = starsAmount.amount;
            int i2 = starsAmount.nanos;
            boolean z2 = false;
            if (i2 < 0 && j2 > 0) {
                i = -1;
                d = 1.0E9d;
            } else if (i2 <= 0 || j2 >= 0) {
                d = 1.0E9d;
                i = 0;
            } else {
                d = 1.0E9d;
                i = 1;
            }
            long j3 = ((long) i) + j2;
            if (j2 != 0 ? j2 < 0 : i2 < 0) {
                z2 = true;
            }
            if (i2 != 0) {
                StringBuilder sb2 = new StringBuilder();
                if (z2) {
                    str = "-";
                }
                sb2.append(str);
                sb2.append(LocaleController.formatNumber(Math.abs(j3), c2));
                spannableStringBuilder.append((CharSequence) sb2.toString());
                DecimalFormat decimalFormat = floatFormat;
                int i3 = starsAmount.nanos;
                double d2 = i3;
                if (i3 < 0) {
                    d2 += d;
                }
                String str3 = decimalFormat.format(d2 / d);
                int iIndexOf2 = str3.indexOf(".");
                if (iIndexOf2 >= 0) {
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) str3.substring(iIndexOf2));
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(f), length + 1, spannableStringBuilder.length(), 33);
                }
            } else {
                StringBuilder sb3 = new StringBuilder();
                if (z2) {
                    str = "-";
                }
                sb3.append(str);
                sb3.append(LocaleController.formatNumber(Math.abs(j3), c2));
                spannableStringBuilder.append((CharSequence) sb3.toString());
                return spannableStringBuilder;
            }
        }
        return spannableStringBuilder;
    }

    public static CharSequence formatStarsAmountShort(TL_stars.StarsAmount starsAmount) {
        return formatStarsAmountShort(starsAmount, 0.777f, ' ');
    }

    public static CharSequence formatStarsAmountShort(TL_stars.StarsAmount starsAmount, float f, char c2) {
        double d;
        int i;
        if (floatFormat == null) {
            floatFormat = new DecimalFormat("0.################", new DecimalFormatSymbols(Locale.US));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (starsAmount instanceof TL_stars.TL_starsTonAmount) {
            String str = floatFormat.format(starsAmount.amount / 1.0E9d);
            spannableStringBuilder.append((CharSequence) str);
            int iIndexOf = str.indexOf(".");
            if (iIndexOf >= 0) {
                spannableStringBuilder.setSpan(new RelativeSizeSpan(f), iIndexOf, spannableStringBuilder.length(), 33);
                return spannableStringBuilder;
            }
        } else {
            long j = starsAmount.amount;
            int i2 = starsAmount.nanos;
            if (i2 < 0 && j > 0) {
                i = -1;
                d = 1.0E9d;
            } else if (i2 <= 0 || j >= 0) {
                d = 1.0E9d;
                i = 0;
            } else {
                d = 1.0E9d;
                i = 1;
            }
            long j2 = ((long) i) + j;
            boolean z = j != 0 ? j < 0 : i2 < 0;
            long jAbs = Math.abs(j2);
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (jAbs > 1000 || starsAmount.nanos == 0) {
                if (starsAmount.amount <= 1000) {
                    StringBuilder sb = new StringBuilder();
                    if (z) {
                        str2 = "-";
                    }
                    sb.append(str2);
                    sb.append(LocaleController.formatNumber(Math.abs(j2), c2));
                    spannableStringBuilder.append((CharSequence) sb.toString());
                    return spannableStringBuilder;
                }
                StringBuilder sb2 = new StringBuilder();
                if (z) {
                    str2 = "-";
                }
                sb2.append(str2);
                sb2.append(AndroidUtilities.formatWholeNumber((int) Math.abs(j2), 0));
                spannableStringBuilder.append((CharSequence) sb2.toString());
                return spannableStringBuilder;
            }
            StringBuilder sb3 = new StringBuilder();
            if (z) {
                str2 = "-";
            }
            sb3.append(str2);
            sb3.append(LocaleController.formatNumber(Math.abs(j2), c2));
            spannableStringBuilder.append((CharSequence) sb3.toString());
            DecimalFormat decimalFormat = floatFormat;
            int i3 = starsAmount.nanos;
            double d2 = i3;
            if (i3 < 0) {
                d2 += d;
            }
            String str3 = decimalFormat.format(d2 / d);
            int iIndexOf2 = str3.indexOf(".");
            if (iIndexOf2 >= 0) {
                int length = spannableStringBuilder.length();
                String strSubstring = str3.substring(iIndexOf2);
                if (strSubstring.length() > 1) {
                    spannableStringBuilder.append((CharSequence) strSubstring.substring(0, Math.min(strSubstring.length(), 3)));
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(f), length + 1, spannableStringBuilder.length(), 33);
                }
            }
        }
        return spannableStringBuilder;
    }

    public static CharSequence formatStarsAmountString(TL_stars.StarsAmount starsAmount) {
        return formatStarsAmountString(starsAmount, 0.777f, ',');
    }

    public static CharSequence formatStarsAmountString(TL_stars.StarsAmount starsAmount, float f, char c2) {
        double d;
        int i;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (starsAmount instanceof TL_stars.TL_starsTonAmount) {
            if (floatFormat == null) {
                floatFormat = new DecimalFormat("0.################", new DecimalFormatSymbols(Locale.US));
            }
            String str = floatFormat.format(starsAmount.amount / 1.0E9d);
            spannableStringBuilder.append((CharSequence) str);
            int iIndexOf = str.indexOf(".");
            if (iIndexOf >= 0) {
                spannableStringBuilder.setSpan(new RelativeSizeSpan(f), iIndexOf, spannableStringBuilder.length(), 33);
            }
            return spannableStringBuilder;
        }
        long j = starsAmount.amount;
        int i2 = starsAmount.nanos;
        boolean z = false;
        if (i2 < 0 && j > 0) {
            i = -1;
            d = 1.0E9d;
        } else if (i2 <= 0 || j >= 0) {
            d = 1.0E9d;
            i = 0;
        } else {
            d = 1.0E9d;
            i = 1;
        }
        long j2 = ((long) i) + j;
        if (j != 0 ? j < 0 : i2 < 0) {
            z = true;
        }
        if (i2 != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(z ? "-" : _UrlKt.FRAGMENT_ENCODE_SET);
            sb.append(LocaleController.formatNumber(Math.abs(j2), c2));
            spannableStringBuilder.append((CharSequence) sb.toString());
            if (floatFormat == null) {
                floatFormat = new DecimalFormat("0.################", new DecimalFormatSymbols(Locale.US));
            }
            DecimalFormat decimalFormat = floatFormat;
            int i3 = starsAmount.nanos;
            double d2 = i3;
            if (i3 < 0) {
                d2 += d;
            }
            String str2 = decimalFormat.format(d2 / d);
            int iIndexOf2 = str2.indexOf(".");
            if (iIndexOf2 >= 0) {
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) str2.substring(iIndexOf2));
                spannableStringBuilder.setSpan(new RelativeSizeSpan(f), length + 1, spannableStringBuilder.length(), 33);
            }
            spannableStringBuilder.append((CharSequence) " ").append((CharSequence) LocaleController.getString(C2807R.string.StarsNano));
            return spannableStringBuilder;
        }
        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralStringComma("Stars", (int) j));
        return spannableStringBuilder;
    }
}
