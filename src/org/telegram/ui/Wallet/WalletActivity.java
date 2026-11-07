package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.UpdateAppearance;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.export.output.html.HtmlContext$$ExternalSyntheticBackport0;
import com.exteragram.messenger.inline.math.MathFormat$$ExternalSyntheticBackportWithForwarding0;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda1;
import com.exteragram.messenger.utils.ui.FontUtils$$ExternalSyntheticApiModelOutline0;
import com.exteragram.messenger.utils.ui.FontUtils$$ExternalSyntheticApiModelOutline1;
import com.google.android.gms.cast.MediaError;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_toncenter;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedColor;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.DialogsActivityTopPanelLayout;
import org.telegram.ui.Components.EdgeEffectTrackerFactory;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.IconBackgroundColors;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingSpan;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.TableView;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.LinkManager;
import org.telegram.ui.PasscodeActivity;
import org.telegram.ui.QrShare.QrCodeLayer;
import org.telegram.ui.QrShare.QrScanOverlay;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stories.UploadingDotsSpannable;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.TON.TONIntroActivity;
import org.telegram.ui.TwoStepVerificationSetupActivity;
import org.telegram.ui.Wallet.CollectibleCell;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.TransactionCell;
import org.telegram.ui.Wallet.WalletActivity;
import org.telegram.ui.Wallet.WalletGiftCell;
import org.telegram.ui.Wallet.WalletGiftStickers;

/* JADX INFO: loaded from: classes8.dex */
public class WalletActivity extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {
    private static Typeface walletAddressTypeface;
    private FrameLayout actionBarBalance;
    private View actionBarBalanceAnchor;
    private ButtonWithCounterView addFundsButton;
    private ColoredImageSpan balanceGramIconSpan;
    private BalanceLabelSpan balanceGramLabelSpan;
    private boolean balanceInOverlay;
    private LinearLayout balanceLayout;
    private FrameLayout balanceOverlay;
    private boolean balanceReturningToCard;
    private float balanceTransitionProgress;
    private AnimatedTextView balanceView;
    private int buttonColor;
    private LinearLayout buttonsContainer;
    private Runnable cancelListen;
    private WalletCardComponent card;
    private float cardCollapseProgress;
    private float cardFloat;
    private ValueAnimator cardFloatAnimator;
    private float cardFloatTarget;
    private int cardItemPosition;
    private FrameLayout cardLayer;
    private View cardShadowView;
    private WalletGiftStickers giftStickers;
    private FrameLayout gramEarningsButton;
    private TextView gramEarningsButtonText;
    private CharSequence gramIcon;
    private boolean hasCollectibles;
    private boolean hasPassword;
    private WalletHeaderSnapHelper headerSnapHelper;
    private LinearLayout historyLayout;
    private ViewPagerFixed historyPager;
    private WalletSearchTabs historySearchTabs;
    private ViewPagerFixed.TabsView historyTabs;
    private ValueAnimator historyTabsAnimator;
    private FrameLayout historyTabsContainer;
    private float historyTabsVisibility;
    private boolean loadedPassword;
    private int maxCardHeight;
    private GramWallet.CollectiblesList nftsList;
    private FrameLayout oldWalletsButton;
    private TextView oldWalletsButtonText;
    private boolean pendingShowCollectibles;
    private FrameLayout protectAccountButton;
    private FrameLayout protectAccountContainer;
    private View scanItem;
    private QrScanOverlay scanOverlay;
    private float searchButtonsCollapse;
    private ButtonWithCounterView sendButton;
    private boolean showingLearnCells;
    private boolean termsVisible;
    private boolean topOverscrollVisible;
    private View tosSpacer;
    private LinkSpanDrawable.LinksTextView tosText;
    private GramWallet.TransactionsList transactionsList;
    private AnimatedTextView usdBalanceView;
    private DialogsActivityTopPanelLayout walletTopPanel;
    private FrameLayout walletTopPanelContainer;
    private FrameLayout waltButton;
    private TextView waltButtonText;
    private final Runnable updateCardOverscrollTilt = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity.1
        @Override // java.lang.Runnable
        public void run() {
            WalletActivity walletActivity = WalletActivity.this;
            if (walletActivity.listView == null || walletActivity.card == null) {
                return;
            }
            WalletActivity.this.updateCardTilt();
            if (WalletActivity.this.topOverscrollVisible) {
                WalletActivity.this.listView.postOnAnimation(this);
            }
        }
    };
    private final EdgeEffectTrackerFactory.OnEdgeEffectListener cardOverscrollListener = new EdgeEffectTrackerFactory.OnEdgeEffectListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda23
        @Override // org.telegram.ui.Components.EdgeEffectTrackerFactory.OnEdgeEffectListener
        public final void onEdgeEffectVisibilityChange(int i, boolean z) {
            this.f$0.lambda$new$0(i, z);
        }
    };
    private final Rect balanceCardBounds = new Rect();
    private final Matrix balanceFaceTransform = new Matrix();
    private final Matrix balanceDrawTransform = new Matrix();
    private final Matrix nextBalanceDrawTransform = new Matrix();
    private final float[] balanceLocalCorners = new float[8];
    private final float[] balanceProjectedCorners = new float[8];
    private final float[] balanceTransitionCorners = new float[8];
    private final int[] balanceTargetLocation = new int[2];
    private final int[] balanceOverlayLocation = new int[2];
    private final int[] cardListLocation = new int[2];
    private final int[] cardLayerLocation = new int[2];
    private int tab = 0;
    private String collectibleQuery = _UrlKt.FRAGMENT_ENCODE_SET;
    private final UniversalRecyclerView[] historyLists = new UniversalRecyclerView[2];
    private final Runnable onNftsChanged = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda24
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$1();
        }
    };
    private final Runnable hideCardFloat = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda25
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$25();
        }
    };
    private CharSequence[] cachedLoading = new CharSequence[2];
    private HashSet<Runnable> updateRunnables = new HashSet<>();

    /* JADX INFO: renamed from: $r8$lambda$iuN8V0O-Jl2ku_BYbbGK-V4Eo04, reason: not valid java name */
    public static /* synthetic */ void m23236$r8$lambda$iuN8V0OJl2ku_BYbbGKV4Eo04() {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i, boolean z) {
        UniversalRecyclerView universalRecyclerView;
        if ((i == 1 || i == 3) && (universalRecyclerView = this.listView) != null) {
            this.topOverscrollVisible = z;
            universalRecyclerView.removeCallbacks(this.updateCardOverscrollTilt);
            this.updateCardOverscrollTilt.run();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        WalletGiftStickers walletGiftStickers = this.giftStickers;
        return (walletGiftStickers == null || !walletGiftStickers.isInteracting()) && super.canBeginSlide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        GramWallet.CollectiblesList collectiblesList;
        WalletGiftStickers walletGiftStickers = this.giftStickers;
        if (walletGiftStickers != null && (collectiblesList = this.nftsList) != null) {
            walletGiftStickers.sync(collectiblesList);
        }
        GramWallet.CollectiblesList collectiblesList2 = this.nftsList;
        boolean z = (collectiblesList2 == null || collectiblesList2.collectibles.isEmpty()) ? false : true;
        if (this.hasCollectibles != z) {
            setHasCollectibles(z);
        }
        if (z && this.pendingShowCollectibles) {
            showCollectibles();
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || universalRecyclerView.adapter == null) {
            return;
        }
        updateHistory(true);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(C2807R.string.WalletTitle);
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        cancelHistoryTabsAnimation();
        stopCardOverscrollTracking();
        WalletHeaderSnapHelper walletHeaderSnapHelper = this.headerSnapHelper;
        if (walletHeaderSnapHelper != null) {
            walletHeaderSnapHelper.attachToRecyclerView(null);
        }
        this.cardShadowView = null;
        this.walletTopPanel = null;
        this.walletTopPanelContainer = null;
        this.historyLayout = null;
        this.historyPager = null;
        UniversalRecyclerView[] universalRecyclerViewArr = this.historyLists;
        universalRecyclerViewArr[0] = null;
        universalRecyclerViewArr[1] = null;
        GramWallet.CollectiblesList collectiblesList = this.nftsList;
        boolean z = (collectiblesList == null || collectiblesList.collectibles.isEmpty()) ? false : true;
        this.hasCollectibles = z;
        if (!z) {
            this.tab = 0;
        } else if (this.pendingShowCollectibles) {
            this.tab = 1;
        }
        WalletGiftStickers walletGiftStickers = this.giftStickers;
        if (walletGiftStickers != null) {
            walletGiftStickers.dispose();
        }
        this.giftStickers = null;
        View viewCreateView = super.createView(context);
        final WalletNestedLayout walletNestedLayout = new WalletNestedLayout(context);
        walletNestedLayout.addView(viewCreateView, LayoutHelper.createFrame(-1, -1.0f));
        this.fragmentView = walletNestedLayout;
        this.actionBar.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        this.actionBar.setCastShadows(false);
        this.actionBar.setBackButtonImage(C2807R.drawable.ic_ab_back);
        this.actionBar.setClipChildren(false);
        this.actionBar.setClipToPadding(false);
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(2, C2807R.drawable.scan_qr);
        this.scanItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$2(view);
            }
        });
        actionBarMenuCreateMenu.addItem(1, C2807R.drawable.ic_ab_other).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$13(context, view);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Wallet.WalletActivity.2
            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                setMeasuredDimension(getMeasuredWidth(), (int) Math.ceil(WalletActivity.this.walletTopPanel.getAnimatedHeightWithPadding(AndroidUtilities.dp(4.0f))));
            }
        };
        this.walletTopPanelContainer = frameLayout;
        frameLayout.setClipToPadding(false);
        this.walletTopPanelContainer.setClipChildren(false);
        this.walletTopPanelContainer.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(4.0f));
        DialogsActivityTopPanelLayout dialogsActivityTopPanelLayout = new DialogsActivityTopPanelLayout(context) { // from class: org.telegram.ui.Wallet.WalletActivity.3
            private final Drawable solidBackground;

            {
                this.solidBackground = Theme.createRoundRectDrawable(AndroidUtilities.dp(22.0f), WalletActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
            }

            @Override // org.telegram.ui.Components.DialogsActivityTopPanelLayout, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                int iCeil = (int) Math.ceil(getMetadata().getTotalHeight());
                if (iCeil > 0) {
                    this.solidBackground.setBounds(0, 0, getWidth(), iCeil);
                    this.solidBackground.setAlpha((int) (getMetadata().getTotalVisibility() * 255.0f));
                    this.solidBackground.draw(canvas);
                }
                super.dispatchDraw(canvas);
            }
        };
        this.walletTopPanel = dialogsActivityTopPanelLayout;
        dialogsActivityTopPanelLayout.setDefaultRadiusDp(22);
        this.walletTopPanel.setOnAnimatedHeightChangedListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$15();
            }
        });
        TextView textView = new TextView(context);
        this.waltButtonText = textView;
        textView.setText(LocaleController.getString(C2807R.string.WalletWaltFunds));
        this.waltButton = createWalletNoticeRow(this.waltButtonText, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$16();
            }
        });
        TextView textView2 = new TextView(context);
        this.oldWalletsButtonText = textView2;
        this.oldWalletsButton = createWalletNoticeRow(textView2, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$17();
            }
        });
        TextView textView3 = new TextView(context);
        this.gramEarningsButtonText = textView3;
        this.gramEarningsButton = createWalletNoticeRow(textView3, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$18();
            }
        });
        this.walletTopPanelContainer.addView(this.walletTopPanel, LayoutHelper.createFrame(-1, -2.0f));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.tosText = linksTextView;
        this.termsVisible = false;
        linksTextView.setAlpha(0.0f);
        this.tosText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourceProvider));
        this.tosText.setTextSize(1, 13.0f);
        this.tosText.setGravity(17);
        this.tosText.setText(AndroidUtilities.replaceSingleLink(LocaleController.getString(C2807R.string.WalletTermsOfService), Theme.getColor(Theme.key_chat_messageLinkIn, this.resourceProvider), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrlInSystemBrowser(context, LocaleController.getString(C2807R.string.TermsOfServiceUrl));
            }
        }));
        this.tosText.setVisibility(4);
        if (viewCreateView instanceof FrameLayout) {
            ((FrameLayout) viewCreateView).addView(this.tosText, LayoutHelper.createFrame(-1, -2.0f, 81, 12.0f, 0.0f, 12.0f, 24.0f));
        }
        View view = new View(context) { // from class: org.telegram.ui.Wallet.WalletActivity.4
            @Override // android.view.View
            public void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i);
                WalletActivity.this.tosText.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, size - AndroidUtilities.dp(24.0f)), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
                setMeasuredDimension(size, WalletActivity.this.tosText.getMeasuredHeight() + AndroidUtilities.dp(36.0f));
            }
        };
        this.tosSpacer = view;
        view.setImportantForAccessibility(2);
        this.protectAccountContainer = new FrameLayout(context);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.protectAccountButton = frameLayout2;
        int i = Theme.key_windowBackgroundWhite;
        frameLayout2.setBackground(Theme.createRadSelectorDrawable(getThemedColor(i), Theme.blendOver(getThemedColor(i), getThemedColor(Theme.key_listSelector)), 16, 16));
        this.protectAccountContainer.addView(this.protectAccountButton, LayoutHelper.createFrame(-1, -2.0f, 55, 12.0f, 0.0f, 12.0f, 12.0f));
        ImageView imageView = new ImageView(context);
        float fDpf2 = AndroidUtilities.dpf2(10.0f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2}, null, null));
        shapeDrawable.setShaderFactory(new ShapeDrawable.ShaderFactory() { // from class: org.telegram.ui.Wallet.WalletActivity.5
            @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
            public Shader resize(int i2, int i3) {
                IconBackgroundColors iconBackgroundColors = IconBackgroundColors.RED;
                return new LinearGradient(0.0f, 0.0f, 0.0f, i3, iconBackgroundColors.top, iconBackgroundColors.bottom, Shader.TileMode.CLAMP);
            }
        });
        imageView.setBackground(shapeDrawable);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2807R.drawable.wallet_protect);
        this.protectAccountButton.addView(imageView, LayoutHelper.createFrame(28, 28.0f, 19, 14.0f, 11.0f, 16.0f, 11.0f));
        TextView textView4 = new TextView(context);
        textView4.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourceProvider));
        textView4.setTextSize(1, 16.0f);
        textView4.setText(LocaleController.getString(C2807R.string.WalletProtectAccount));
        this.protectAccountButton.addView(textView4, LayoutHelper.createFrame(-1, -2.0f, 19, 58.0f, 0.0f, 32.0f, 0.0f));
        this.protectAccountButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$20(view2);
            }
        });
        ScaleStateListAnimator.apply(this.protectAccountButton, 0.02f, 1.2f);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.actionBarBalance = frameLayout3;
        frameLayout3.setClipChildren(false);
        this.actionBarBalance.setClipToPadding(false);
        this.actionBar.addView(this.actionBarBalance, LayoutHelper.createFrame(-1, 56.0f, 87, 64.0f, 0.0f, 96.0f, 0.0f));
        View view2 = new View(context);
        this.actionBarBalanceAnchor = view2;
        this.actionBarBalance.addView(view2, LayoutHelper.createFrame(1, 1, 19));
        this.balanceInOverlay = false;
        this.balanceReturningToCard = false;
        this.balanceCardBounds.setEmpty();
        this.balanceDrawTransform.reset();
        C64696 c64696 = new C64696(context);
        this.balanceOverlay = c64696;
        c64696.setClipChildren(false);
        this.balanceOverlay.setClipToPadding(false);
        WalletCardComponent walletCardComponent = new WalletCardComponent(context) { // from class: org.telegram.ui.Wallet.WalletActivity.7
            @Override // org.telegram.ui.Wallet.WalletCardComponent
            public void setStickerStyle(float[] fArr) {
                super.setStickerStyle(fArr);
                WalletActivity walletActivity = WalletActivity.this;
                walletActivity.updateBalanceTransitionColors(walletActivity.balanceTransitionProgress);
                WalletActivity.this.updateButtonColors(fArr);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                super.onMeasure(i2, iMakeMeasureSpec);
                if (WalletActivity.this.maxCardHeight <= 0 || getMeasuredHeight() <= WalletActivity.this.maxCardHeight) {
                    return;
                }
                int paddingLeft = getPaddingLeft() + getPaddingRight();
                int paddingTop = getPaddingTop() + getPaddingBottom();
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(paddingLeft + ((int) ((getMeasuredWidth() - paddingLeft) * (Math.max(0, WalletActivity.this.maxCardHeight - paddingTop) / Math.max(1, getMeasuredHeight() - paddingTop)))), TLObject.FLAG_30), iMakeMeasureSpec);
            }
        };
        this.card = walletCardComponent;
        walletCardComponent.setDiamondOnCard(true);
        this.card.setCardOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                this.f$0.lambda$createView$21(view3);
            }
        });
        this.listView.addEdgeEffectListener(this.cardOverscrollListener);
        View view3 = new View(context) { // from class: org.telegram.ui.Wallet.WalletActivity.8
            @Override // android.view.View
            public void onMeasure(int i2, int i3) {
                WalletActivity.this.card.measure(i2, View.MeasureSpec.makeMeasureSpec(0, 0));
                setMeasuredDimension(View.MeasureSpec.getSize(i2), WalletActivity.this.card.getMeasuredHeight());
            }
        };
        this.cardShadowView = view3;
        view3.setImportantForAccessibility(2);
        C64729 c64729 = new C64729(context);
        this.cardLayer = c64729;
        c64729.setClipChildren(false);
        this.cardLayer.setClipToPadding(false);
        this.cardLayer.addView(this.card, LayoutHelper.createFrame(-1, -2.0f));
        walletNestedLayout.addView(this.cardLayer, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setClipChildren(false);
        this.listView.setClipToPadding(false);
        this.balanceLayout = this.card.getBalanceLayout();
        this.balanceView = this.card.getBalanceView();
        this.usdBalanceView = this.card.getUsdBalanceView();
        this.card.setCardHolder(UserObject.getUserName(getUserConfig().getCurrentUser()).toUpperCase());
        this.searchButtonsCollapse = 0.0f;
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Wallet.WalletActivity.10
            @Override // android.widget.LinearLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                setMeasuredDimension(getMeasuredWidth(), Math.round(getMeasuredHeight() * (1.0f - WalletActivity.this.searchButtonsCollapse)));
            }
        };
        this.buttonsContainer = linearLayout;
        linearLayout.setOrientation(0);
        this.buttonsContainer.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f));
        ButtonWithCounterView round = new ButtonWithCounterView(context, this.resourceProvider).setRound();
        this.addFundsButton = round;
        round.setText(LocaleController.getString(C2807R.string.WalletAddFunds));
        this.buttonsContainer.addView(this.addFundsButton, LayoutHelper.createLinear(0, 48, 1.0f, 0, 0, 4, 0));
        this.addFundsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.lambda$createView$22(view4);
            }
        });
        ButtonWithCounterView round2 = new ButtonWithCounterView(context, this.resourceProvider).setRound();
        this.sendButton = round2;
        round2.setText(LocaleController.getString(C2807R.string.WalletSend));
        this.sendButton.setEnabled(GramWallet.getInstance(this.currentAccount).canSend());
        this.sendButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.lambda$createView$24(view4);
            }
        });
        this.buttonsContainer.addView(this.sendButton, LayoutHelper.createLinear(0, 48, 1.0f, 4, 0, 0, 0));
        updateButtonColors(this.card.getStickerStyle());
        this.transactionsList = GramWallet.getInstance(this.currentAccount).getTransactions();
        this.listView.setDescendantFocusability(131072);
        WalletGiftStickers walletGiftStickers2 = new WalletGiftStickers(this, this.card, new WalletGiftStickers.Host() { // from class: org.telegram.ui.Wallet.WalletActivity.11
            @Override // org.telegram.ui.Wallet.WalletGiftStickers.Host
            public void bringCard() {
                WalletActivity.this.showCardForStickers(0L);
            }

            @Override // org.telegram.ui.Wallet.WalletGiftStickers.Host
            public void showCardFor(long j) {
                WalletActivity.this.showCardForStickers(j);
            }

            @Override // org.telegram.ui.Wallet.WalletGiftStickers.Host
            public boolean isCardShown() {
                return WalletActivity.this.cardFloatTarget > 0.0f || WalletActivity.this.isCardOnScreen();
            }

            @Override // org.telegram.ui.Wallet.WalletGiftStickers.Host
            public void onDragFinished() {
                if (WalletActivity.this.cardFloatTarget > 0.0f) {
                    AndroidUtilities.cancelRunOnUIThread(WalletActivity.this.hideCardFloat);
                    AndroidUtilities.runOnUIThread(WalletActivity.this.hideCardFloat, 1650L);
                }
            }

            @Override // org.telegram.ui.Wallet.WalletGiftStickers.Host
            public void cancelChildTouches() {
                walletNestedLayout.cancelChildTouches();
            }
        });
        this.giftStickers = walletGiftStickers2;
        walletNestedLayout.addView(walletGiftStickers2, LayoutHelper.createFrame(-1, -1.0f));
        createHistoryLayout(context);
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Wallet.WalletActivity.12
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (i2 != 1 || WalletActivity.this.historySearchTabs == null) {
                    return;
                }
                WalletActivity.this.historySearchTabs.dismissKeyboard();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (i3 != 0 && recyclerView.getScrollState() == 1 && WalletActivity.this.headerSnapHelper != null) {
                    WalletActivity.this.headerSnapHelper.onUserScroll();
                }
                WalletActivity.this.updateBalancePosition();
            }
        });
        this.listView.adapter.setApplyBackground(false);
        this.listView.adapter.update(false);
        WalletHeaderSnapHelper walletHeaderSnapHelper2 = new WalletHeaderSnapHelper();
        this.headerSnapHelper = walletHeaderSnapHelper2;
        walletHeaderSnapHelper2.attachToRecyclerView(this.listView);
        update();
        this.transactionsList.load();
        this.actionBar.post(new WalletActivity$$ExternalSyntheticLambda7(this));
        this.listView.post(new WalletActivity$$ExternalSyntheticLambda8(this));
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        openWalletQrScanner();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(Context context, View view) {
        final GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((BaseFragment) this, view, true);
        itemOptionsMakeOptions.translate(0.0f, -AndroidUtilities.dp(48.0f));
        itemOptionsMakeOptions.setDimAlpha(0);
        itemOptionsMakeOptions.setGravity(5);
        final ItemOptions itemOptionsMakeSwipeback = itemOptionsMakeOptions.makeSwipeback();
        itemOptionsMakeSwipeback.add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.WalletBack), new RatePill$$ExternalSyntheticLambda1(itemOptionsMakeOptions));
        itemOptionsMakeSwipeback.addGap();
        ScrollView scrollView = new ScrollView(context);
        final LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        scrollView.addView(linearLayout);
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$5(linearLayout, gramWallet, itemOptionsMakeOptions);
            }
        };
        itemOptionsMakeSwipeback.addView(scrollView, LayoutHelper.createLinear(-1, 350));
        final ActionBarMenuSubItem last = itemOptionsMakeOptions.add(C2807R.drawable.wallet_globe, LocaleController.getString(C2807R.string.WalletCurrency), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                WalletActivity.$r8$lambda$JkGU87yRH9sPWMgADK21mWS7hVQ(runnable, itemOptionsMakeOptions, itemOptionsMakeSwipeback);
            }
        }).getLast();
        String currencyTitle = gramWallet.currencies.getCurrencyTitle();
        boolean zIsEmpty = TextUtils.isEmpty(currencyTitle);
        CharSequence charSequence = currencyTitle;
        if (zIsEmpty) {
            last.setSubtext("USD");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2807R.string.Loading));
            spannableStringBuilder.setSpan(new LoadingSpan(last.subtextView, AndroidUtilities.dp(75.0f)), 0, spannableStringBuilder.length(), 33);
            charSequence = spannableStringBuilder;
        }
        last.setSubtext(charSequence);
        final boolean[] zArr = {gramWallet.currencies.getCurrencies() != null};
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                WalletActivity.$r8$lambda$TlV90XG79bq3zLBEBkjzy773c94(gramWallet, zArr, last, runnable);
            }
        };
        this.updateRunnables.add(runnable2);
        runnable.run();
        itemOptionsMakeOptions.add(C2807R.drawable.wallet_lock, LocaleController.getString(C2807R.string.Passcode), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$8(itemOptionsMakeOptions);
            }
        }).add(C2807R.drawable.wallet_key, LocaleController.getString(C2807R.string.WalletKeysAndBackup), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$9(itemOptionsMakeOptions);
            }
        }).addIf(!gramWallet.tonConnect.sessions.isEmpty(), C2807R.drawable.wallet_apps, LocaleController.getString(C2807R.string.WalletConnectedApps), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$10(itemOptionsMakeOptions);
            }
        }).addGap().add(C2807R.drawable.wallet_help, LocaleController.getString(C2807R.string.WalletWhatIsWallet), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$11(itemOptionsMakeOptions);
            }
        });
        itemOptionsMakeOptions.setOnDismiss(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$12(runnable2);
            }
        });
        itemOptionsMakeOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(final LinearLayout linearLayout, final GramWallet gramWallet, final ItemOptions itemOptions) {
        linearLayout.removeAllViews();
        final String currency = gramWallet.currencies.getCurrency();
        TL_wallet.currencyRates currencies = gramWallet.currencies.getCurrencies();
        int i = 0;
        if (currencies == null) {
            while (i < 3) {
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(getContext(), getResourceProvider());
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.setViewType(31);
                linearLayout.addView(flickerLoadingView, LayoutHelper.createLinear(200, -2));
                i++;
            }
            return;
        }
        Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda82
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createView$4(currency, gramWallet, itemOptions, linearLayout, (TL_wallet.currencyRate) obj);
            }
        };
        ArrayList<TL_wallet.currencyRate> hintCurrencies = gramWallet.currencies.getHintCurrencies();
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < hintCurrencies.size(); i2++) {
            TL_wallet.currencyRate currencyrate = hintCurrencies.get(i2);
            if (currencyrate != null && hashSet.add(currencyrate.currency)) {
                callback.run(currencyrate);
            }
        }
        if (!hashSet.isEmpty() && !currencies.rates.isEmpty()) {
            linearLayout.addView(new ActionBarPopupWindow.GapView(getContext(), this.resourceProvider), LayoutHelper.createLinear(-1, 8));
        }
        while (i < currencies.rates.size()) {
            TL_wallet.currencyRate currencyrate2 = currencies.rates.get(i);
            if (currencyrate2 != null && !hashSet.contains(currencyrate2.currency)) {
                callback.run(currencyrate2);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(String str, final GramWallet gramWallet, final ItemOptions itemOptions, LinearLayout linearLayout, final TL_wallet.currencyRate currencyrate) {
        if (currencyrate == null) {
            return;
        }
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), 2, false, false, this.resourceProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        actionBarMenuSubItem.setText(currencyrate.currency);
        actionBarMenuSubItem.setSubtext(!TextUtils.isEmpty(currencyrate.translatedTitle) ? currencyrate.translatedTitle : currencyrate.title);
        boolean zEquals = TextUtils.equals(str, currencyrate.currency);
        actionBarMenuSubItem.subtextView.setPadding(0, 0, AndroidUtilities.dp(zEquals ? 42.0f : 0.0f), 0);
        actionBarMenuSubItem.setChecked(zEquals);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda91
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletActivity.m23228$r8$lambda$NgjplgJR4Vg0H3bdHt6iISY5hg(gramWallet, currencyrate, itemOptions, view);
            }
        });
        linearLayout.addView(actionBarMenuSubItem, LayoutHelper.createLinear(200, -2));
    }

    /* JADX INFO: renamed from: $r8$lambda$Ng-jplgJR4Vg0H3bdHt6iISY5hg, reason: not valid java name */
    public static /* synthetic */ void m23228$r8$lambda$NgjplgJR4Vg0H3bdHt6iISY5hg(GramWallet gramWallet, TL_wallet.currencyRate currencyrate, ItemOptions itemOptions, View view) {
        gramWallet.currencies.setCurrency(currencyrate.currency);
        itemOptions.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$JkGU87yRH9sPWMgADK21mWS7hVQ(Runnable runnable, ItemOptions itemOptions, ItemOptions itemOptions2) {
        runnable.run();
        itemOptions.openSwipeback(itemOptions2);
    }

    public static /* synthetic */ void $r8$lambda$TlV90XG79bq3zLBEBkjzy773c94(GramWallet gramWallet, boolean[] zArr, ActionBarMenuSubItem actionBarMenuSubItem, Runnable runnable) {
        if (gramWallet.currencies.getCurrencies() == null || zArr[0]) {
            return;
        }
        actionBarMenuSubItem.setSubtext(gramWallet.currencies.getCurrencyTitle());
        runnable.run();
        zArr[0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(ItemOptions itemOptions) {
        itemOptions.dismiss();
        presentFragment(PasscodeActivity.determineOpenFragment());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(ItemOptions itemOptions) {
        itemOptions.dismiss();
        presentFragment(new WalletKeysBackupFragment());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(ItemOptions itemOptions) {
        itemOptions.dismiss();
        presentFragment(new WalletTonConnectSessionsFragment());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(ItemOptions itemOptions) {
        itemOptions.dismiss();
        openWalletHowItWorksAlert(getContext(), getResourceProvider());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(Runnable runnable) {
        this.updateRunnables.remove(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15() {
        this.walletTopPanelContainer.post(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$14();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14() {
        if (this.walletTopPanelContainer.isAttachedToWindow()) {
            if (!this.listView.canScrollVertically(-1)) {
                this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
            }
            this.walletTopPanelContainer.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16() {
        Browser.openUrl(getContext(), GramWallet.getInstance(this.currentAccount).getWaltUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17() {
        presentFragment(new WalletKeysBackupFragment());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18() {
        presentFragment(new TONIntroActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$20(View view) {
        presentFragment(new TwoStepVerificationSetupActivity(6, null));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$6 */
    public class C64696 extends FrameLayout {
        private final ViewTreeObserver.OnPreDrawListener updateProjection;

        public C64696(Context context) {
            super(context);
            this.updateProjection = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Wallet.WalletActivity$6$$ExternalSyntheticLambda0
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return this.f$0.lambda$$0();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$$0() {
            if (WalletActivity.this.balanceInOverlay || WalletActivity.this.balanceReturningToCard) {
                WalletActivity.this.updateBalanceOverlayTransform();
            }
            if (!WalletActivity.this.balanceReturningToCard) {
                return true;
            }
            invalidate();
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            getViewTreeObserver().addOnPreDrawListener(this.updateProjection);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            getViewTreeObserver().removeOnPreDrawListener(this.updateProjection);
            super.onDetachedFromWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            Canvas canvas2;
            int iSave;
            super.dispatchDraw(canvas);
            if (WalletActivity.this.balanceReturningToCard) {
                float alpha = WalletActivity.this.card.getVisibility() == 0 ? WalletActivity.this.card.getAlpha() : 0.0f;
                if (alpha <= 0.0f) {
                    return;
                }
                if (alpha < 1.0f) {
                    canvas2 = canvas;
                    iSave = canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (alpha * 255.0f));
                } else {
                    canvas2 = canvas;
                    iSave = canvas2.save();
                }
                canvas2.concat(WalletActivity.this.balanceDrawTransform);
                canvas2.translate(-WalletActivity.this.balanceLayout.getLeft(), -WalletActivity.this.balanceLayout.getTop());
                super.drawChild(canvas2, WalletActivity.this.balanceLayout, getDrawingTime());
                canvas2.restoreToCount(iSave);
            }
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (view != WalletActivity.this.balanceLayout || !WalletActivity.this.balanceInOverlay) {
                return super.drawChild(canvas, view, j);
            }
            int iSave = canvas.save();
            canvas.concat(WalletActivity.this.balanceDrawTransform);
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restoreToCount(iSave);
            return zDrawChild;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$21(View view) {
        openWalletQRAlert(getContext(), this.currentAccount, getResourceProvider());
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$9 */
    public class C64729 extends FrameLayout {
        private int lastCardHeight;
        private View lastCardItem;
        private float lastCardY;
        private final ViewTreeObserver.OnPreDrawListener updateCardPosition;

        public C64729(Context context) {
            super(context);
            this.updateCardPosition = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Wallet.WalletActivity$9$$ExternalSyntheticLambda0
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return this.f$0.lambda$$0();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$$0() {
            WalletActivity.this.updateTermsVisibility();
            WalletActivity walletActivity = WalletActivity.this;
            View viewFindViewByPosition = walletActivity.listView.layoutManager.findViewByPosition(walletActivity.cardItemPosition);
            float y = viewFindViewByPosition == null ? 0.0f : viewFindViewByPosition.getY();
            int height = viewFindViewByPosition == null ? 0 : viewFindViewByPosition.getHeight();
            if (viewFindViewByPosition == this.lastCardItem && y == this.lastCardY && height == this.lastCardHeight) {
                return true;
            }
            this.lastCardItem = viewFindViewByPosition;
            this.lastCardY = y;
            this.lastCardHeight = height;
            WalletActivity.this.updateBalancePosition();
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            getViewTreeObserver().addOnPreDrawListener(this.updateCardPosition);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            getViewTreeObserver().removeOnPreDrawListener(this.updateCardPosition);
            super.onDetachedFromWindow();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            WalletActivity.this.updateBalancePosition();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$22(View view) {
        openWalletQRAlert(getContext(), this.currentAccount, getResourceProvider());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$24(View view) {
        final GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        if (this.sendButton.isLoading()) {
            return;
        }
        this.sendButton.setLoading(true);
        gramWallet.makeSureSecretPhraseBackedUpLocally(false, false, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda30
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createView$23(gramWallet, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$23(GramWallet gramWallet, String str) {
        this.sendButton.setLoading(false);
        if ("NO_LOCAL_BACKUP".equalsIgnoreCase(str)) {
            presentFragment(new WalletImportFragment().setMatchPublicKey(gramWallet.getPublicKey()));
        } else if (str != null) {
            BulletinFactory.of(this).showForError(str);
        } else {
            presentFragment(new WalletSendSelectSender());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$25() {
        animateCardFloat(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCardOnScreen() {
        View viewFindViewByPosition;
        UniversalRecyclerView universalRecyclerView = this.listView;
        return universalRecyclerView != null && (viewFindViewByPosition = universalRecyclerView.layoutManager.findViewByPosition(this.cardItemPosition)) != null && this.cardCollapseProgress < 0.5f && viewFindViewByPosition.getBottom() > this.listView.getPaddingTop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCardForStickers(long j) {
        if (this.listView == null) {
            return;
        }
        WalletSearchTabs walletSearchTabs = this.historySearchTabs;
        if (walletSearchTabs != null) {
            walletSearchTabs.dismissKeyboard();
        }
        if (this.cardFloatTarget <= 0.0f && isCardOnScreen()) {
            int top = this.listView.layoutManager.findViewByPosition(this.cardItemPosition).getTop() - this.listView.getPaddingTop();
            this.listView.stopScroll();
            if (top < 0) {
                this.listView.smoothScrollBy(0, top, CubicBezierInterpolator.EASE_OUT_QUINT);
                return;
            }
            return;
        }
        this.listView.stopScroll();
        animateCardFloat(true);
        AndroidUtilities.cancelRunOnUIThread(this.hideCardFloat);
        if (j > 0) {
            AndroidUtilities.runOnUIThread(this.hideCardFloat, j + 260);
        }
    }

    private void animateCardFloat(boolean z) {
        AndroidUtilities.cancelRunOnUIThread(this.hideCardFloat);
        float f = z ? 1.0f : 0.0f;
        if (this.cardFloatTarget == f) {
            return;
        }
        this.cardFloatTarget = f;
        ValueAnimator valueAnimator = this.cardFloatAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        updateBalancePosition();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.cardFloat, f);
        this.cardFloatAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(z ? 260L : 120L);
        this.cardFloatAnimator.setInterpolator(z ? new CubicBezierInterpolator(0.05d, 0.7d, 0.1d, 1.0d) : new CubicBezierInterpolator(0.4d, 0.0d, 0.2d, 1.0d));
        this.cardFloatAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda62
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateCardFloat$26(valueAnimator2);
            }
        });
        this.cardFloatAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletActivity.13
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (WalletActivity.this.cardFloatAnimator == animator) {
                    WalletActivity.this.cardFloatAnimator = null;
                }
            }
        });
        this.cardFloatAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateCardFloat$26(ValueAnimator valueAnimator) {
        this.cardFloat = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateBalancePosition();
    }

    private void finishCardFloat() {
        AndroidUtilities.cancelRunOnUIThread(this.hideCardFloat);
        ValueAnimator valueAnimator = this.cardFloatAnimator;
        if (valueAnimator != null) {
            this.cardFloatAnimator = null;
            valueAnimator.cancel();
        }
        this.cardFloat = 0.0f;
        this.cardFloatTarget = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCardTilt() {
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || this.card == null) {
            return;
        }
        this.card.setAdditionalTilt((-Math.min(10.0f, universalRecyclerView.getEdgeEffectDistance(1) * 40.0f)) + Math.min(10.0f, this.listView.getEdgeEffectDistance(3) * 40.0f) + Math.max(0.0f, ((((float) Math.sqrt(Utilities.clamp01(this.balanceTransitionProgress))) * 90.0f) - 10.0f) + (this.balanceTransitionProgress * 10.0f)));
        this.card.setUseGyroscope(1.0f - ((float) Math.pow(this.balanceTransitionProgress, 0.33000001311302185d)));
    }

    private void stopCardOverscrollTracking() {
        this.topOverscrollVisible = false;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.removeEdgeEffectListener(this.cardOverscrollListener);
            this.listView.removeCallbacks(this.updateCardOverscrollTilt);
        }
        WalletCardComponent walletCardComponent = this.card;
        if (walletCardComponent != null) {
            walletCardComponent.setAdditionalTilt(0.0f);
        }
    }

    private void createHistoryLayout(Context context) {
        this.collectibleQuery = _UrlKt.FRAGMENT_ENCODE_SET;
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Wallet.WalletActivity.14
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchSetPressed(boolean z) {
            }
        };
        this.historyLayout = linearLayout;
        linearLayout.setOrientation(1);
        this.historyLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        AnonymousClass15 anonymousClass15 = new AnonymousClass15(context, this.resourceProvider);
        this.historyPager = anonymousClass15;
        anonymousClass15.setAllowDisallowInterceptTouch(false);
        this.historyPager.setAdapter(new AnonymousClass16(context));
        ViewPagerFixed.TabsView tabsViewCreateTabsView = this.historyPager.createTabsView(true, -2);
        this.historyTabs = tabsViewCreateTabsView;
        int i = Theme.key_windowBackgroundWhiteGrayText2;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        int i3 = Theme.key_listSelector;
        int i4 = Theme.key_windowBackgroundWhite;
        tabsViewCreateTabsView.setColors(i, i2, i, i3, i4);
        this.historyTabs.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), getThemedColor(i4)));
        this.historyTabsContainer = new FrameLayout(context);
        WalletSearchTabs walletSearchTabs = new WalletSearchTabs(context, this.historyTabs, this.resourceProvider, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda32
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createHistoryLayout$27((Boolean) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createHistoryLayout$28((String) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda34
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.setSearchButtonsCollapse(((Float) obj).floatValue());
            }
        });
        this.historySearchTabs = walletSearchTabs;
        this.historyTabsContainer.addView(walletSearchTabs, LayoutHelper.createFrame(-1, 40.0f, 48, 16.0f, 0.0f, 16.0f, 0.0f));
        this.historyPager.setPosition(this.tab);
        updateSearchButtonVisibility();
        this.historyLayout.addView(this.historyTabsContainer, LayoutHelper.createLinear(-1, 52, 0.0f, 0.0f, 0.0f, -6.0f));
        this.historyLayout.addView(this.historyPager, LayoutHelper.createLinear(-1, 0, 1.0f));
        setHasCollectibles(this.hasCollectibles);
        GramWallet.CollectiblesList collectiblesList = this.nftsList;
        if (collectiblesList != null) {
            this.giftStickers.sync(collectiblesList);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$15, reason: invalid class name */
    public class AnonymousClass15 extends ViewPagerFixed {
        @Override // org.telegram.ui.Components.ViewPagerFixed
        public int tabMarginDp() {
            return 12;
        }

        public AnonymousClass15(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed
        public void onTabPageSelected(int i) {
            WalletActivity.this.tab = i;
            if (i != 1 && WalletActivity.this.historySearchTabs != null) {
                WalletActivity.this.historySearchTabs.setOpen(false);
            }
            if (i == 1) {
                ViewPagerFixed viewPagerFixed = WalletActivity.this.historyPager;
                final WalletActivity walletActivity = WalletActivity.this;
                viewPagerFixed.post(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$15$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        walletActivity.loadMoreNfts();
                    }
                });
            }
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed
        public void onTabAnimationUpdate(boolean z) {
            WalletActivity.this.updateSearchButtonVisibility();
            if (WalletActivity.this.giftStickers != null) {
                WalletActivity.this.giftStickers.wakeHint();
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$16, reason: invalid class name */
    public class AnonymousClass16 extends ViewPagerFixed.Adapter {
        final /* synthetic */ Context val$context;

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public int getItemViewType(int i) {
            return i;
        }

        public AnonymousClass16(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public int getItemCount() {
            return WalletActivity.this.hasCollectibles ? 2 : 1;
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public CharSequence getItemTitle(int i) {
            return LocaleController.getString(i == 0 ? C2807R.string.WalletTransactions : C2807R.string.WalletCollectibles);
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public View createView(final int i) {
            if (WalletActivity.this.historyLists[i] == null) {
                Context context = this.val$context;
                int i2 = ((BaseFragment) WalletActivity.this).currentAccount;
                int i3 = ((BaseFragment) WalletActivity.this).classGuid;
                Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletActivity$16$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$createView$0(i, (ArrayList) obj, (UniversalAdapter) obj2);
                    }
                };
                final WalletActivity walletActivity = WalletActivity.this;
                Utilities.Callback5 callback5 = new Utilities.Callback5() { // from class: org.telegram.ui.Wallet.WalletActivity$16$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback5
                    public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                        walletActivity.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
                    }
                };
                final WalletActivity walletActivity2 = WalletActivity.this;
                UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, i2, i3, false, callback2, callback5, new Utilities.Callback5Return() { // from class: org.telegram.ui.Wallet.WalletActivity$16$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback5Return
                    public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                        return Boolean.valueOf(walletActivity2.onLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
                    }
                }, ((BaseFragment) WalletActivity.this).resourceProvider, i == 1 ? 3 : -1, 1) { // from class: org.telegram.ui.Wallet.WalletActivity.16.1
                    @Override // org.telegram.ui.Components.RecyclerListView
                    public boolean shouldClipChildToSection(View view) {
                        return ((view instanceof TransactionCell) && ((TransactionCell) view).isRaised()) ? false : true;
                    }
                };
                if (i == 1) {
                    universalRecyclerView.setPadding(AndroidUtilities.dp(9.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(12.0f));
                }
                universalRecyclerView.setFocusableInTouchMode(false);
                universalRecyclerView.setClipChildren(false);
                universalRecyclerView.setClipToPadding(false);
                if (i == 0) {
                    universalRecyclerView.setSections();
                } else {
                    universalRecyclerView.setSelectorType(9);
                    universalRecyclerView.setSelectorDrawableColor(0);
                }
                universalRecyclerView.adapter.setApplyBackground(false);
                universalRecyclerView.addOnScrollListener(new C64632(i));
                WalletActivity.this.historyLists[i] = universalRecyclerView;
                return universalRecyclerView;
            }
            return WalletActivity.this.historyLists[i];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createView$0(int i, ArrayList arrayList, UniversalAdapter universalAdapter) {
            WalletActivity walletActivity = WalletActivity.this;
            if (i == 0) {
                walletActivity.fillTransactions(arrayList, universalAdapter);
            } else {
                walletActivity.fillCollectibles(arrayList, universalAdapter);
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$16$2 */
        public class C64632 extends RecyclerView.OnScrollListener {
            final /* synthetic */ int val$viewType;

            public C64632(int i) {
                this.val$viewType = i;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i != 1 || WalletActivity.this.historySearchTabs == null) {
                    return;
                }
                WalletActivity.this.historySearchTabs.dismissKeyboard();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                int i3 = this.val$viewType;
                AnonymousClass16 anonymousClass16 = AnonymousClass16.this;
                if (i3 == 0) {
                    WalletActivity.this.loadMoreTransactions();
                } else {
                    final WalletActivity walletActivity = WalletActivity.this;
                    recyclerView.post(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$16$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            walletActivity.loadMoreNfts();
                        }
                    });
                }
            }
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public void bindView(View view, int i, int i2) {
            WalletActivity.this.updateHistoryPage((UniversalRecyclerView) view, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createHistoryLayout$27(Boolean bool) {
        this.addFundsButton.setClickable(!bool.booleanValue());
        this.sendButton.setClickable(!bool.booleanValue());
        if (bool.booleanValue()) {
            this.tab = 1;
            this.historyPager.setPosition(1);
            this.historyPager.post(new WalletActivity$$ExternalSyntheticLambda28(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createHistoryLayout$28(String str) {
        this.collectibleQuery = str.trim().toLowerCase(Locale.ROOT);
        UniversalRecyclerView universalRecyclerView = this.historyLists[1];
        if (universalRecyclerView != null) {
            updateHistoryPage(universalRecyclerView, true);
            this.historyLists[1].scrollToPosition(0);
            this.historyLists[1].post(new WalletActivity$$ExternalSyntheticLambda28(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSearchButtonVisibility() {
        WalletSearchTabs walletSearchTabs = this.historySearchTabs;
        if (walletSearchTabs == null || this.historyPager == null) {
            return;
        }
        walletSearchTabs.setButtonVisibility(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSearchButtonsCollapse(float f) {
        LinearLayout linearLayout;
        if (this.searchButtonsCollapse == f) {
            return;
        }
        this.searchButtonsCollapse = f;
        float fMax = Math.max(0.0f, 1.0f - (f / 0.6f));
        int i = 0;
        while (true) {
            int childCount = this.buttonsContainer.getChildCount();
            linearLayout = this.buttonsContainer;
            if (i >= childCount) {
                break;
            }
            View childAt = linearLayout.getChildAt(i);
            childAt.setAlpha(fMax);
            childAt.setPivotY(0.0f);
            childAt.setScaleY(1.0f - f);
            i++;
        }
        linearLayout.setImportantForAccessibility(f != 0.0f ? 4 : 0);
        this.buttonsContainer.requestLayout();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay != null) {
            if (z) {
                qrScanOverlay.close();
            }
            return false;
        }
        WalletSearchTabs walletSearchTabs = this.historySearchTabs;
        if (walletSearchTabs == null || !walletSearchTabs.isOpen()) {
            return super.onBackPressed(z);
        }
        if (z) {
            this.historySearchTabs.setOpen(false);
        }
        return false;
    }

    public void showCollectibles() {
        WalletSearchTabs walletSearchTabs = this.historySearchTabs;
        if (walletSearchTabs != null) {
            walletSearchTabs.setOpen(false);
        }
        if (!this.hasCollectibles) {
            this.pendingShowCollectibles = true;
            return;
        }
        this.pendingShowCollectibles = false;
        this.tab = 1;
        ViewPagerFixed viewPagerFixed = this.historyPager;
        if (viewPagerFixed != null) {
            viewPagerFixed.setPosition(1);
        }
    }

    public void showTransactions() {
        this.pendingShowCollectibles = false;
        WalletSearchTabs walletSearchTabs = this.historySearchTabs;
        if (walletSearchTabs != null) {
            walletSearchTabs.setOpen(false);
        }
        this.tab = 0;
        ViewPagerFixed viewPagerFixed = this.historyPager;
        if (viewPagerFixed != null) {
            viewPagerFixed.setPosition(0);
        }
    }

    public void prepareSendLanding(TL_wallet.walletTransaction wallettransaction) {
        showTransactions();
        updateHistory(false);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null) {
            return;
        }
        universalRecyclerView.stopScroll();
        this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
        UniversalRecyclerView universalRecyclerView2 = this.historyLists[0];
        if (universalRecyclerView2 != null) {
            universalRecyclerView2.stopScroll();
            universalRecyclerView2.adapter.update(false);
            for (int i = 0; i < universalRecyclerView2.adapter.getItemCount(); i++) {
                UItem item = universalRecyclerView2.adapter.getItem(i);
                if (item != null) {
                    Object obj = item.object;
                    if ((obj instanceof TL_wallet.walletTransaction) && (TransactionCell.Factory.sourceOf((TL_wallet.walletTransaction) obj) == wallettransaction || GramWallet.transactionMatches((TL_wallet.walletTransaction) item.object, wallettransaction))) {
                        universalRecyclerView2.layoutManager.scrollToPositionWithOffset(i, 0);
                        return;
                    }
                }
            }
        }
    }

    public TransactionCell findSendLanding(TL_wallet.walletTransaction wallettransaction) {
        UniversalRecyclerView universalRecyclerView = this.historyLists[0];
        if (universalRecyclerView == null) {
            return null;
        }
        for (int i = 0; i < universalRecyclerView.getChildCount(); i++) {
            View childAt = universalRecyclerView.getChildAt(i);
            if (childAt instanceof TransactionCell) {
                TransactionCell transactionCell = (TransactionCell) childAt;
                if (transactionCell.matches(wallettransaction)) {
                    return transactionCell;
                }
            }
        }
        return null;
    }

    private void setHasCollectibles(boolean z) {
        this.hasCollectibles = z;
        if (!z) {
            this.tab = 0;
        }
        if (this.historyPager == null || this.historyTabsContainer == null) {
            return;
        }
        if (!z) {
            this.historySearchTabs.setOpen(false);
            this.historyPager.setPosition(0);
        }
        updateSearchButtonVisibility();
        cancelHistoryTabsAnimation();
        final float f = z ? 1.0f : 0.0f;
        boolean z2 = this.historyLayout.isAttachedToWindow() && this.historyLayout.isLaidOut();
        if (z) {
            this.historyPager.fillTabs(false);
        }
        if (z2 && this.historyTabsVisibility != f) {
            this.historyTabsContainer.setVisibility(0);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.historyTabsVisibility, f);
            this.historyTabsAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(250L);
            this.historyTabsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.historyTabsAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda31
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setHasCollectibles$29(valueAnimator);
                }
            });
            this.historyTabsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletActivity.17
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (WalletActivity.this.historyTabsAnimator != animator) {
                        return;
                    }
                    WalletActivity.this.historyTabsAnimator = null;
                    WalletActivity.this.setHistoryTabsVisibility(f);
                    WalletActivity.this.historyPager.fillTabs(false);
                }
            });
            this.historyTabsAnimator.start();
        } else {
            setHistoryTabsVisibility(f);
            this.historyPager.fillTabs(false);
        }
        if (this.listView == null || this.showingLearnCells == shouldShowLearnCells()) {
            return;
        }
        updateHistory(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setHasCollectibles$29(ValueAnimator valueAnimator) {
        setHistoryTabsVisibility(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHistoryTabsVisibility(float f) {
        this.historyTabsVisibility = f;
        this.historyTabsContainer.setVisibility((f > 0.0f || this.historyTabsAnimator != null) ? 0 : 8);
        this.historyTabsContainer.setAlpha(f);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.historyTabsContainer.getLayoutParams();
        layoutParams.height = Math.round(AndroidUtilities.dp(52.0f) * f);
        layoutParams.bottomMargin = -Math.round(AndroidUtilities.dp(6.0f) * f);
        this.historyTabsContainer.setLayoutParams(layoutParams);
    }

    private void cancelHistoryTabsAnimation() {
        ValueAnimator valueAnimator = this.historyTabsAnimator;
        if (valueAnimator == null) {
            return;
        }
        this.historyTabsAnimator = null;
        valueAnimator.cancel();
    }

    private boolean shouldShowLearnCells() {
        GramWallet.TransactionsList transactionsList;
        return (this.hasCollectibles || (transactionsList = this.transactionsList) == null || !transactionsList.allTransactions.isEmpty() || this.transactionsList.isLoading() || !this.transactionsList.isEndReached()) ? false : true;
    }

    private void updateHistory(boolean z) {
        boolean zShouldShowLearnCells = shouldShowLearnCells();
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && this.showingLearnCells != zShouldShowLearnCells) {
            this.showingLearnCells = zShouldShowLearnCells;
            universalRecyclerView.stopScroll();
            for (UniversalRecyclerView universalRecyclerView2 : this.historyLists) {
                if (universalRecyclerView2 != null) {
                    universalRecyclerView2.stopScroll();
                }
            }
            this.listView.adapter.update(false);
            this.listView.layoutManager.scrollToPositionWithOffset(0, 0);
            this.listView.post(new WalletActivity$$ExternalSyntheticLambda8(this));
        }
        if (zShouldShowLearnCells) {
            return;
        }
        for (UniversalRecyclerView universalRecyclerView3 : this.historyLists) {
            if (universalRecyclerView3 != null) {
                updateHistoryPage(universalRecyclerView3, z);
            }
        }
        LinearLayout linearLayout = this.historyLayout;
        if (linearLayout != null) {
            linearLayout.post(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.loadMoreTransactions();
                }
            });
            this.historyLayout.post(new WalletActivity$$ExternalSyntheticLambda28(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHistoryPage(UniversalRecyclerView universalRecyclerView, boolean z) {
        boolean zCanScrollVertically = universalRecyclerView.canScrollVertically(-1);
        universalRecyclerView.adapter.update(z);
        universalRecyclerView.invalidateItemDecorations();
        if (zCanScrollVertically) {
            return;
        }
        universalRecyclerView.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMoreTransactions() {
        GramWallet.TransactionsList transactionsList;
        UniversalRecyclerView universalRecyclerView = this.historyLists[0];
        if (universalRecyclerView == null || !universalRecyclerView.isAttachedToWindow() || (transactionsList = this.transactionsList) == null || transactionsList.isLoading() || this.transactionsList.isEndReached() || universalRecyclerView.layoutManager.findLastVisibleItemPosition() < universalRecyclerView.adapter.getItemCount() - 3) {
            return;
        }
        this.transactionsList.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMoreNfts() {
        GramWallet.CollectiblesList collectiblesList;
        UniversalRecyclerView universalRecyclerView = this.historyLists[1];
        if (this.tab != 1 || universalRecyclerView == null || !universalRecyclerView.isAttachedToWindow() || (collectiblesList = this.nftsList) == null || collectiblesList.isLoading() || this.nftsList.isEndReached() || this.nftsList.getError() != null || universalRecyclerView.layoutManager.findLastVisibleItemPosition() < universalRecyclerView.adapter.getItemCount() - 3) {
            return;
        }
        this.nftsList.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasAttachedHistoryPager() {
        LinearLayout linearLayout;
        if (this.showingLearnCells || (linearLayout = this.historyLayout) == null || !linearLayout.isAttachedToWindow()) {
            return false;
        }
        ViewParent parent = this.historyLayout.getParent();
        UniversalRecyclerView universalRecyclerView = this.listView;
        return parent == universalRecyclerView.layoutManager.findViewByPosition(universalRecyclerView.adapter.getItemCount() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UniversalRecyclerView getCurrentHistoryList() {
        if (!hasAttachedHistoryPager()) {
            return null;
        }
        ViewPagerFixed viewPagerFixed = this.historyPager;
        View currentView = viewPagerFixed == null ? null : viewPagerFixed.getCurrentView();
        if (currentView instanceof UniversalRecyclerView) {
            return (UniversalRecyclerView) currentView;
        }
        return null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBeginSlide() {
        WalletHeaderSnapHelper walletHeaderSnapHelper = this.headerSnapHelper;
        if (walletHeaderSnapHelper != null) {
            walletHeaderSnapHelper.cancelGesture();
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.stopScroll();
        }
        UniversalRecyclerView currentHistoryList = getCurrentHistoryList();
        if (currentHistoryList != null) {
            currentHistoryList.stopScroll();
        }
        super.onBeginSlide();
    }

    public class WalletHeaderSnapHelper extends SnapHelper {
        private UniversalRecyclerView recyclerView;
        private final Runnable snapWhenIdle;
        private boolean touchInProgress;
        private float touchStartX;
        private float touchStartY;
        private boolean userSnapPending;
        private boolean verticalGesture;

        private WalletHeaderSnapHelper() {
            this.snapWhenIdle = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$WalletHeaderSnapHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            };
        }

        public void cancelGesture() {
            this.touchInProgress = false;
            this.verticalGesture = false;
            this.userSnapPending = false;
            UniversalRecyclerView universalRecyclerView = this.recyclerView;
            if (universalRecyclerView != null) {
                universalRecyclerView.removeCallbacks(this.snapWhenIdle);
            }
        }

        public void onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                cancelGesture();
                this.touchInProgress = true;
                this.touchStartX = motionEvent.getX();
                this.touchStartY = motionEvent.getY();
                return;
            }
            if (actionMasked == 3) {
                cancelGesture();
                return;
            }
            if (actionMasked == 2 || actionMasked == 1) {
                float fAbs = Math.abs(motionEvent.getX() - this.touchStartX);
                float fAbs2 = Math.abs(motionEvent.getY() - this.touchStartY);
                boolean z = fAbs2 > ((float) ViewConfiguration.get(this.recyclerView.getContext()).getScaledTouchSlop()) && fAbs2 > fAbs * 1.5f;
                this.verticalGesture = z;
                if (!z) {
                    this.userSnapPending = false;
                }
                if (actionMasked == 1) {
                    this.touchInProgress = false;
                }
            }
        }

        public void onUserScroll() {
            if (this.verticalGesture) {
                this.userSnapPending = true;
            }
        }

        @Override // androidx.recyclerview.widget.SnapHelper, androidx.recyclerview.widget.RecyclerView.OnFlingListener
        public boolean onFling(int i, int i2) {
            if (!this.verticalGesture) {
                return false;
            }
            onUserScroll();
            return super.onFling(i, i2);
        }

        @Override // androidx.recyclerview.widget.SnapHelper
        public void attachToRecyclerView(RecyclerView recyclerView) {
            UniversalRecyclerView universalRecyclerView = this.recyclerView;
            if (universalRecyclerView != null) {
                universalRecyclerView.removeCallbacks(this.snapWhenIdle);
            }
            this.recyclerView = (UniversalRecyclerView) recyclerView;
            super.attachToRecyclerView(recyclerView);
        }

        private boolean isIdle() {
            UniversalRecyclerView universalRecyclerView = this.recyclerView;
            if (universalRecyclerView == null || universalRecyclerView.getScrollState() != 0) {
                return false;
            }
            UniversalRecyclerView currentHistoryList = WalletActivity.this.getCurrentHistoryList();
            return currentHistoryList == null || currentHistoryList.getScrollState() == 0;
        }

        @Override // androidx.recyclerview.widget.SnapHelper
        public int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
            return new int[]{0, layoutManager.getDecoratedTop(view) - layoutManager.getPaddingTop()};
        }

        @Override // androidx.recyclerview.widget.SnapHelper
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            View viewFindViewByPosition = null;
            if (!this.touchInProgress && isIdle()) {
                if (!this.userSnapPending) {
                    return null;
                }
                this.userSnapPending = false;
                if (!WalletActivity.this.hasAttachedHistoryPager()) {
                    return null;
                }
                View viewFindViewByPosition2 = layoutManager.findViewByPosition(0);
                viewFindViewByPosition = layoutManager.findViewByPosition(layoutManager.getItemCount() - 1);
                if (viewFindViewByPosition2 == null) {
                    return viewFindViewByPosition;
                }
                if (viewFindViewByPosition == null || Math.abs(calculateDistanceToFinalSnap(layoutManager, viewFindViewByPosition2)[1]) < Math.abs(calculateDistanceToFinalSnap(layoutManager, viewFindViewByPosition)[1])) {
                    return viewFindViewByPosition2;
                }
            }
            return viewFindViewByPosition;
        }

        @Override // androidx.recyclerview.widget.SnapHelper
        public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
            if (this.recyclerView != null && this.verticalGesture && Math.abs(i2) >= AndroidUtilities.dp(600.0f) && WalletActivity.this.hasAttachedHistoryPager()) {
                int i3 = i2 > 0 ? 1 : -1;
                UniversalRecyclerView currentHistoryList = WalletActivity.this.getCurrentHistoryList();
                if (this.recyclerView.canScrollVertically(i3) && (i3 >= 0 || currentHistoryList == null || !currentHistoryList.canScrollVertically(-1))) {
                    if (i3 > 0) {
                        return layoutManager.getItemCount() - 1;
                    }
                    return 0;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            View viewFindSnapView;
            int i;
            if (!isIdle() || (viewFindSnapView = findSnapView(this.recyclerView.layoutManager)) == null || (i = calculateDistanceToFinalSnap(this.recyclerView.layoutManager, viewFindSnapView)[1]) == 0) {
                return;
            }
            this.recyclerView.smoothScrollBy(0, i);
        }

        public void onNestedScrollStopped() {
            UniversalRecyclerView universalRecyclerView = this.recyclerView;
            if (universalRecyclerView == null) {
                return;
            }
            universalRecyclerView.removeCallbacks(this.snapWhenIdle);
            this.recyclerView.post(this.snapWhenIdle);
        }
    }

    public class WalletNestedLayout extends SizeNotifierFrameLayout implements NestedScrollingParent3 {
        private boolean forwardingScroll;
        private final NestedScrollingParentHelper nestedHelper;

        @Override // androidx.core.view.NestedScrollingParent2
        public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
            return (i & 2) != 0;
        }

        public WalletNestedLayout(Context context) {
            super(context);
            this.nestedHelper = new NestedScrollingParentHelper(this);
        }

        public void cancelChildTouches() {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            if (WalletActivity.this.headerSnapHelper != null) {
                WalletActivity.this.headerSnapHelper.onTouchEvent(motionEventObtain);
            }
            super.dispatchTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (WalletActivity.this.giftStickers != null && WalletActivity.this.giftStickers.touch(motionEvent)) {
                return true;
            }
            if (WalletActivity.this.headerSnapHelper != null) {
                WalletActivity.this.headerSnapHelper.onTouchEvent(motionEvent);
            }
            boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            if (motionEvent.getActionMasked() == 1 && WalletActivity.this.headerSnapHelper != null) {
                WalletActivity.this.headerSnapHelper.onNestedScrollStopped();
            }
            return zDispatchTouchEvent;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size = (int) (View.MeasureSpec.getSize(i2) * 0.75f);
            if (WalletActivity.this.maxCardHeight != size) {
                WalletActivity.this.maxCardHeight = size;
                if (WalletActivity.this.card != null) {
                    WalletActivity.this.card.requestLayout();
                }
                if (WalletActivity.this.cardShadowView != null) {
                    WalletActivity.this.cardShadowView.requestLayout();
                }
            }
            super.onMeasure(i, i2);
        }

        private boolean historyPinned() {
            return WalletActivity.this.historyLayout != null && (WalletActivity.this.historyLayout.getParent() instanceof View) && ((View) WalletActivity.this.historyLayout.getParent()).getTop() <= WalletActivity.this.listView.getPaddingTop();
        }

        private int scrollList(RecyclerView recyclerView, int i) {
            final int[] iArr = {0};
            RecyclerView.OnScrollListener onScrollListener = new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Wallet.WalletActivity.WalletNestedLayout.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView2, int i2, int i3) {
                    int[] iArr2 = iArr;
                    iArr2[0] = iArr2[0] + i3;
                }
            };
            this.forwardingScroll = true;
            recyclerView.addOnScrollListener(onScrollListener);
            try {
                recyclerView.scrollBy(0, i);
                recyclerView.removeOnScrollListener(onScrollListener);
                this.forwardingScroll = false;
                return iArr[0];
            } catch (Throwable th) {
                recyclerView.removeOnScrollListener(onScrollListener);
                this.forwardingScroll = false;
                throw th;
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public boolean onNestedPreFling(View view, float f, float f2) {
            if (view != WalletActivity.this.getCurrentHistoryList() || WalletActivity.this.headerSnapHelper == null) {
                return false;
            }
            return WalletActivity.this.headerSnapHelper.onFling((int) f, (int) f2);
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
            UniversalRecyclerView currentHistoryList;
            if (this.forwardingScroll || (currentHistoryList = WalletActivity.this.getCurrentHistoryList()) == null) {
                return;
            }
            if (i2 != 0 && i3 == 0) {
                WalletActivity walletActivity = WalletActivity.this;
                if ((view == walletActivity.listView || view == currentHistoryList) && walletActivity.headerSnapHelper != null) {
                    WalletActivity.this.headerSnapHelper.onUserScroll();
                }
            }
            if (view == WalletActivity.this.listView && i2 < 0 && historyPinned()) {
                iArr[1] = iArr[1] + scrollList(currentHistoryList, i2);
            } else {
                if (view != currentHistoryList || i2 <= 0) {
                    return;
                }
                iArr[1] = iArr[1] + scrollList(WalletActivity.this.listView, i2);
            }
        }

        @Override // androidx.core.view.NestedScrollingParent3
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            UniversalRecyclerView currentHistoryList;
            if (this.forwardingScroll || i4 == 0 || (currentHistoryList = WalletActivity.this.getCurrentHistoryList()) == null) {
                return;
            }
            if (view == WalletActivity.this.listView && historyPinned()) {
                iArr[1] = iArr[1] + scrollList(currentHistoryList, i4);
            } else {
                if (view != currentHistoryList || i4 >= 0) {
                    return;
                }
                iArr[1] = iArr[1] + scrollList(WalletActivity.this.listView, i4);
            }
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
            onNestedScroll(view, i, i2, i3, i4, i5, new int[2]);
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
            this.nestedHelper.onNestedScrollAccepted(view, view2, i, i2);
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onStopNestedScroll(View view, int i) {
            this.nestedHelper.onStopNestedScroll(view, i);
            if (WalletActivity.this.headerSnapHelper != null) {
                WalletActivity.this.headerSnapHelper.onNestedScrollStopped();
            }
        }

        @Override // android.view.ViewGroup
        public int getNestedScrollAxes() {
            return this.nestedHelper.getNestedScrollAxes();
        }
    }

    private void openWalletQrScanner() {
        if (getParentActivity() == null || this.scanOverlay != null || this.scanItem == null) {
            return;
        }
        if (getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
            getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 44);
        } else {
            this.scanOverlay = QrScanOverlay.open(this, this.scanItem, new Utilities.CallbackReturn() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda48
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return Boolean.valueOf(WalletActivity.isWalletQrLink(WalletActivity.walletQrUri((String) obj)));
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda49
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$openWalletQrScanner$32((String) obj);
                }
            }, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openWalletQrScanner$33();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWalletQrScanner$32(String str) {
        Uri uriWalletQrUri = walletQrUri(str);
        String strWalletQrUsername = walletQrUsername(uriWalletQrUri);
        if (strWalletQrUsername != null) {
            resolveWalletQrUser(this.currentAccount, strWalletQrUsername, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda65
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$openWalletQrScanner$31((TLRPC.User) obj);
                }
            });
        } else {
            if ((getParentActivity() instanceof LaunchActivity) && new LinkManager((LaunchActivity) getParentActivity(), this.currentAccount, null, false).handle(uriWalletQrUri)) {
                return;
            }
            showInvalidWalletQr();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWalletQrScanner$31(TLRPC.User user) {
        if (this.isFinished) {
            return;
        }
        if (user == null) {
            showInvalidWalletQr();
        } else {
            presentFragment(new WalletSendEnterAmount(user));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openWalletQrScanner$33() {
        this.scanOverlay = null;
    }

    private static boolean isTelegramHost(String str) {
        if (str != null) {
            return "t.me".equalsIgnoreCase(str) || "telegram.me".equalsIgnoreCase(str) || "telegram.dog".equalsIgnoreCase(str);
        }
        return false;
    }

    public static Uri walletQrUri(String str) {
        Uri uri = Uri.parse(str.trim());
        if (uri.getScheme() == null) {
            Uri uri2 = Uri.parse("https://" + str.trim());
            if (isTelegramHost(uri2.getHost())) {
                return uri2;
            }
        }
        return uri;
    }

    public static boolean isWalletQrLink(Uri uri) {
        String scheme = uri.getScheme();
        if ("ton".equalsIgnoreCase(scheme) || "tc".equalsIgnoreCase(scheme)) {
            return true;
        }
        if ((!"https".equalsIgnoreCase(scheme) && !"http".equalsIgnoreCase(scheme)) || !isTelegramHost(uri.getHost())) {
            return false;
        }
        List<String> pathSegments = uri.getPathSegments();
        return pathSegments.size() == 1 && ("sendgrams".equalsIgnoreCase(pathSegments.get(0)) || walletQrUsername(uri) != null);
    }

    public static String walletQrUsername(Uri uri) {
        if (!isTelegramHost(uri.getHost())) {
            return null;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() != 1) {
            return null;
        }
        String str = pathSegments.get(0);
        if ("sendgrams".equalsIgnoreCase(str) || !str.matches("[a-zA-Z][a-zA-Z0-9_]{3,31}")) {
            return null;
        }
        return str;
    }

    public static void resolveWalletQrUser(final int i, String str, final Utilities.Callback<TLRPC.User> callback) {
        MessagesController.getInstance(i).getUserNameResolver().resolve(str, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda87
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                Long l = (Long) obj;
                callback.run((l == null || l.longValue() <= 0 || l.longValue() == LongCompanionObject.MAX_VALUE) ? null : MessagesController.getInstance(i).getUser(l));
            }
        });
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        destroyScanOverlay();
    }

    private void destroyScanOverlay() {
        QrScanOverlay qrScanOverlay = this.scanOverlay;
        if (qrScanOverlay != null) {
            qrScanOverlay.destroy();
            AndroidUtilities.removeFromParent(this.scanOverlay);
            this.scanOverlay = null;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (i != 44 || getParentActivity() == null) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            openWalletQrScanner();
        } else {
            new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.QRCodePermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString(C2807R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda19
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$onRequestPermissionsResultFragment$35(alertDialog, i2);
                }
            }).setNegativeButton(LocaleController.getString(C2807R.string.ContactsPermissionAlertNotNow), null).setTopAnimation(C2807R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$35(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInvalidWalletQr$36() {
        BulletinFactory.of(this).createSimpleBulletin(LocaleController.getString(C2807R.string.ScanQrCode), LocaleController.getString(C2807R.string.ErrorOccurred)).show();
    }

    private void showInvalidWalletQr() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda86
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showInvalidWalletQr$36();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void attachBalanceOverlay() {
        ActionBar actionBar;
        if (this.balanceOverlay == null || (actionBar = this.actionBar) == null || !(actionBar.getParent() instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) this.actionBar.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        if (this.balanceOverlay.getParent() != this.actionBar) {
            AndroidUtilities.removeFromParent(this.balanceOverlay);
            this.actionBar.addView(this.balanceOverlay, LayoutHelper.createFrame(-1, -1.0f));
        }
        this.balanceOverlay.bringToFront();
        this.actionBar.bringToFront();
        this.balanceOverlay.post(new WalletActivity$$ExternalSyntheticLambda8(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateTermsVisibility() {
        UniversalRecyclerView universalRecyclerView;
        boolean z;
        if (this.tosText == null || (universalRecyclerView = this.listView) == null) {
            return;
        }
        if (this.showingLearnCells) {
            z = universalRecyclerView.canScrollVertically(1) ? false : true;
        }
        if (this.termsVisible == z) {
            return;
        }
        this.termsVisible = z;
        this.tosText.animate().cancel();
        LinkSpanDrawable.LinksTextView linksTextView = this.tosText;
        if (z) {
            linksTextView.setVisibility(0);
            this.tosText.animate().alpha(1.0f).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
        } else {
            linksTextView.setAlpha(0.0f);
            this.tosText.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBalancePosition() {
        FrameLayout frameLayout;
        float fClamp;
        float fMin;
        float f;
        if (this.listView == null || this.card == null || this.balanceLayout == null || this.actionBarBalanceAnchor == null || (frameLayout = this.balanceOverlay) == null || this.actionBar == null) {
            return;
        }
        frameLayout.bringToFront();
        View viewFindViewByPosition = this.listView.layoutManager.findViewByPosition(this.cardItemPosition);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (viewFindViewByPosition == null) {
            fClamp = universalRecyclerView.layoutManager.findFirstVisibleItemPosition() > this.cardItemPosition ? 1.0f : 0.0f;
        } else {
            fClamp = Utilities.clamp((universalRecyclerView.getPaddingTop() - viewFindViewByPosition.getTop()) / viewFindViewByPosition.getHeight(), 1.0f, 0.0f);
        }
        this.cardCollapseProgress = fClamp;
        float f2 = this.cardFloatTarget;
        boolean z = f2 > 0.0f || this.cardFloat > 0.0f;
        if (z) {
            fClamp = f2 > 0.0f ? 0.0f : fClamp * (1.0f - this.cardFloat);
        }
        this.balanceTransitionProgress = fClamp;
        updateCardTilt();
        float fMax = viewFindViewByPosition != null ? Math.max(0.0f, (viewFindViewByPosition.getHeight() / 2.0f) + AndroidUtilities.dp(24.0f)) * this.balanceTransitionProgress : 0.0f;
        float fLerp = AndroidUtilities.lerp(1.0f, 0.8f, this.balanceTransitionProgress);
        this.card.setPivotX(r10.getWidth() * 0.5f);
        this.card.setPivotY(0.0f);
        this.card.setScaleX(fLerp);
        this.card.setScaleY(fLerp);
        this.card.setAlpha(1.0f - Utilities.clamp01(AndroidUtilities.ilerp(fClamp, 0.75f, 1.0f)));
        this.card.setVisibility((z || (viewFindViewByPosition != null && fClamp < 1.0f && viewFindViewByPosition.getBottom() > this.listView.getPaddingTop() && viewFindViewByPosition.getTop() < this.listView.getHeight() - this.listView.getPaddingBottom())) ? 0 : 4);
        if (viewFindViewByPosition != null) {
            this.listView.getLocationInWindow(this.cardListLocation);
            this.cardLayer.getLocationInWindow(this.cardLayerLocation);
            this.card.setTranslationX((this.cardListLocation[0] - this.cardLayerLocation[0]) + viewFindViewByPosition.getX() + this.cardShadowView.getX() + ((this.cardShadowView.getWidth() - this.card.getWidth()) / 2.0f));
            this.card.setTranslationY((this.cardListLocation[1] - this.cardLayerLocation[1]) + viewFindViewByPosition.getY() + this.cardShadowView.getY() + fMax);
        }
        if (z) {
            boolean z2 = this.cardFloatTarget == 0.0f;
            float fLerp2 = this.cardFloat;
            if (z2) {
                fMin = 0.3f * fLerp2;
                f = 0.6f;
            } else {
                fMin = Math.min(1.0f, 1.8f * fLerp2) * 0.06f;
                f = 0.84f;
            }
            float fLerp3 = fMin + f;
            this.actionBar.getLocationInWindow(this.cardListLocation);
            this.cardLayer.getLocationInWindow(this.cardLayerLocation);
            float height = (((this.cardListLocation[1] - this.cardLayerLocation[1]) + this.actionBar.getHeight()) + AndroidUtilities.dp(4.0f)) - ((1.0f - fLerp2) * (z2 ? 0.0f : this.card.getHeight() * 0.35f));
            if (z2) {
                height += ((0.9f - fLerp3) * this.card.getHeight()) / 2.0f;
            }
            float width = (this.cardLayer.getWidth() - this.card.getWidth()) / 2.0f;
            if (!z2) {
                fLerp2 = Math.min(1.0f, fLerp2 * 2.0f);
            }
            if (viewFindViewByPosition != null) {
                this.listView.getLocationInWindow(this.cardListLocation);
                float x = (this.cardListLocation[0] - this.cardLayerLocation[0]) + viewFindViewByPosition.getX() + this.cardShadowView.getX() + ((this.cardShadowView.getWidth() - this.card.getWidth()) / 2.0f);
                float y = (this.cardListLocation[1] - this.cardLayerLocation[1]) + viewFindViewByPosition.getY() + this.cardShadowView.getY();
                float fClamp01 = Utilities.clamp01(1.0f - ((height - y) / (this.card.getHeight() * 0.5f)));
                if (fClamp01 >= 1.0f) {
                    finishCardFloat();
                    updateBalancePosition();
                    return;
                } else {
                    width = AndroidUtilities.lerp(width, x, fClamp01);
                    height = AndroidUtilities.lerp(height, y, fClamp01);
                    fLerp3 = AndroidUtilities.lerp(fLerp3, 1.0f, fClamp01);
                    fLerp2 = AndroidUtilities.lerp(fLerp2, 1.0f, fClamp01);
                }
            }
            this.card.setPivotX(r0.getWidth() * 0.5f);
            this.card.setPivotY(0.0f);
            this.card.setScaleX(fLerp3);
            this.card.setScaleY(fLerp3);
            this.card.setTranslationX(width);
            this.card.setTranslationY(height);
            this.card.setAlpha(fLerp2);
        }
        setBalanceInOverlay(fClamp > 0.0f);
        updateBalanceTransitionColors(fClamp);
        if (this.balanceInOverlay) {
            updateBalanceOverlayTransform();
        }
        float f3 = 1.0f - fClamp;
        float f4 = (-AndroidUtilities.dp(8.0f)) * (1.0f - f3);
        if (this.actionBar.getTitleTextView() != null) {
            this.actionBar.getTitleTextView().setAlpha(f3);
            this.actionBar.getTitleTextView().setTranslationY(f4);
        }
        if (this.actionBar.getTitleTextView2() != null) {
            this.actionBar.getTitleTextView2().setAlpha(f3);
            this.actionBar.getTitleTextView2().setTranslationY(f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBalanceOverlayTransform() {
        if (!this.balanceCardBounds.isEmpty() && this.actionBarBalanceAnchor.isAttachedToWindow() && this.card.getFrontFaceTransform(this.balanceOverlay, this.balanceFaceTransform)) {
            float fWidth = this.balanceCardBounds.width();
            float fHeight = this.balanceCardBounds.height();
            int i = 0;
            while (true) {
                float f = 0.0f;
                if (i >= 4) {
                    break;
                }
                float f2 = (i == 1 || i == 2) ? fWidth : 0.0f;
                if (i >= 2) {
                    f = fHeight;
                }
                float[] fArr = this.balanceLocalCorners;
                int i2 = i * 2;
                fArr[i2] = f2;
                int i3 = i2 + 1;
                fArr[i3] = f;
                float[] fArr2 = this.balanceProjectedCorners;
                Rect rect = this.balanceCardBounds;
                fArr2[i2] = rect.left + f2;
                fArr2[i3] = rect.top + f;
                i++;
            }
            this.balanceFaceTransform.mapPoints(this.balanceProjectedCorners);
            this.balanceOverlay.getLocationInWindow(this.balanceOverlayLocation);
            this.actionBarBalanceAnchor.getLocationInWindow(this.balanceTargetLocation);
            this.card.setBalanceTransition(this.balanceTransitionProgress, this.actionBarBalance.getWidth() / 0.7826087f);
            float f3 = this.balanceTargetLocation[0] - this.balanceOverlayLocation[0];
            float f4 = (r0[1] - r7[1]) - ((fHeight * 0.7826087f) * 0.5f);
            for (int i4 = 0; i4 < 4; i4++) {
                int i5 = i4 * 2;
                this.balanceTransitionCorners[i5] = AndroidUtilities.lerp(this.balanceProjectedCorners[i5], (this.balanceLocalCorners[i5] * 0.7826087f) + f3, this.balanceTransitionProgress);
                int i6 = i5 + 1;
                this.balanceTransitionCorners[i6] = AndroidUtilities.lerp(this.balanceProjectedCorners[i6], (this.balanceLocalCorners[i6] * 0.7826087f) + f4, this.balanceTransitionProgress);
            }
            if (this.nextBalanceDrawTransform.setPolyToPoly(this.balanceLocalCorners, 0, this.balanceTransitionCorners, 0, 4) && !this.balanceDrawTransform.equals(this.nextBalanceDrawTransform)) {
                this.balanceDrawTransform.set(this.nextBalanceDrawTransform);
                this.balanceOverlay.invalidate();
            }
            this.card.setBalanceDiamondTransform(this.balanceFaceTransform, this.balanceDrawTransform);
            float fLerp = AndroidUtilities.lerp(1.0f, 1.0952381f, this.balanceTransitionProgress);
            this.usdBalanceView.setPivotX(0.0f);
            this.usdBalanceView.setPivotY(0.0f);
            this.usdBalanceView.setScaleX(fLerp);
            this.usdBalanceView.setScaleY(fLerp);
        }
    }

    private void setBalanceInOverlay(boolean z) {
        LinearLayout linearLayout;
        if (this.balanceInOverlay == z || (linearLayout = this.balanceLayout) == null) {
            return;
        }
        if (z) {
            if (linearLayout.getWidth() == 0 || this.balanceLayout.getHeight() == 0) {
                return;
            } else {
                this.balanceCardBounds.set(this.balanceLayout.getLeft(), this.balanceLayout.getTop(), this.balanceLayout.getRight(), this.balanceLayout.getBottom());
            }
        }
        this.card.setOnFrontContentPresented(null);
        this.balanceReturningToCard = false;
        AndroidUtilities.removeFromParent(this.balanceLayout);
        this.balanceInOverlay = z;
        if (z) {
            this.balanceOverlay.addView(this.balanceLayout, new FrameLayout.LayoutParams(this.balanceCardBounds.width(), this.balanceCardBounds.height(), 51));
            this.balanceLayout.layout(0, 0, this.balanceCardBounds.width(), this.balanceCardBounds.height());
            updateBalanceOverlayTransform();
        } else {
            this.card.attachBalanceToCard();
            LinearLayout linearLayout2 = this.balanceLayout;
            Rect rect = this.balanceCardBounds;
            linearLayout2.layout(rect.left, rect.top, rect.right, rect.bottom);
            this.balanceReturningToCard = !this.card.isUse2D();
            updateBalanceOverlayTransform();
            if (this.balanceReturningToCard) {
                this.card.setOnFrontContentPresented(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda61
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setBalanceInOverlay$37();
                    }
                });
            }
        }
        this.balanceOverlay.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBalanceInOverlay$37() {
        this.balanceReturningToCard = false;
        this.balanceOverlay.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtonColors(float[] fArr) {
        if (this.addFundsButton == null || this.sendButton == null) {
            return;
        }
        float fLightness = WalletGiftPalette.lightness(getThemedColor(Theme.key_windowBackgroundGray));
        boolean z = fLightness < 0.6f;
        int iClampLightness = WalletGiftPalette.clampLightness(WalletGiftPalette.cardTone(getThemedColor(Theme.key_featuredStickers_addButton), fArr), z ? 0.25f + fLightness : 0.0f, z ? 1.0f : fLightness - 0.2f);
        if (iClampLightness == this.buttonColor) {
            return;
        }
        this.buttonColor = iClampLightness;
        int themedColor = ColorUtils.calculateLuminance(iClampLightness) > 0.550000011920929d ? -16777216 : getThemedColor(Theme.key_featuredStickers_buttonText);
        ButtonWithCounterView[] buttonWithCounterViewArr = {this.addFundsButton, this.sendButton};
        for (int i = 0; i < 2; i++) {
            ButtonWithCounterView buttonWithCounterView = buttonWithCounterViewArr[i];
            buttonWithCounterView.setColor(iClampLightness);
            buttonWithCounterView.setTextColor(themedColor);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBalanceTransitionColors(float f) {
        int themedColor = getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
        this.balanceView.setTextColor(AndroidUtilities.lerpColor(-1, themedColor, f));
        this.usdBalanceView.setTextColor(AndroidUtilities.lerpColor(this.card.stickerColor(-7868417), ColorUtils.setAlphaComponent(themedColor, Math.round(142.8f)), f));
        ColoredImageSpan coloredImageSpan = this.balanceGramIconSpan;
        if (coloredImageSpan != null) {
            coloredImageSpan.setOverrideColor(AndroidUtilities.lerpColor(-1, getThemedColor(Theme.key_featuredStickers_addButton), f));
        }
        BalanceLabelSpan balanceLabelSpan = this.balanceGramLabelSpan;
        if (balanceLabelSpan != null) {
            balanceLabelSpan.setColor(ColorUtils.setAlphaComponent(this.card.stickerColor(-9577217), Math.round((1.0f - f) * 255.0f)));
        }
        this.balanceView.invalidate();
    }

    public static void openOnramp(final int i, long j, final Utilities.Callback<String> callback) {
        final GramWallet gramWallet = GramWallet.getInstance(i);
        gramWallet.whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                WalletActivity.$r8$lambda$yCbFBdbyKj1imEkDWAg7diMgroY(i, callback, gramWallet);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$yCbFBdbyKj1imEkDWAg7diMgroY(int i, final Utilities.Callback callback, final GramWallet gramWallet) {
        final ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i);
        connectionsManager.sendRequestTyped(new TL_toncenter.getOnrampProviders(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda66
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                WalletActivity.$r8$lambda$JmsN4R1EevDCqil3fW5H9z04CvY(callback, gramWallet, connectionsManager, (Vector) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$JmsN4R1EevDCqil3fW5H9z04CvY(final Utilities.Callback callback, GramWallet gramWallet, ConnectionsManager connectionsManager, Vector vector, TLRPC.TL_error tL_error) {
        TL_toncenter.onrampProviderInfo onrampproviderinfo;
        String str;
        String str2;
        if (vector == null) {
            String str3 = "NULL_ERROR";
            if (tL_error == null || (str = tL_error.text) == null) {
                str = "NULL_ERROR";
            }
            callback.run(str);
            if (tL_error != null && (str2 = tL_error.text) != null) {
                str3 = str2;
            }
            BulletinFactory.showError(str3);
            return;
        }
        if (vector.objects.size() <= 0) {
            callback.run("NO_PROVIDERS");
            BulletinFactory.showError("NO_PROVIDERS");
            return;
        }
        ArrayList<T> arrayList = vector.objects;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                onrampproviderinfo = null;
                break;
            }
            Object obj = arrayList.get(i);
            i++;
            onrampproviderinfo = (TL_toncenter.onrampProviderInfo) obj;
            if (onrampproviderinfo.supports_base_currencies && (onrampproviderinfo.crypto_currencies.contains("GRAM") || onrampproviderinfo.crypto_currencies.contains("gram"))) {
                break;
            }
        }
        if (onrampproviderinfo == null) {
            callback.run("NO_SUITABLE_PROVIDER");
            BulletinFactory.showError("NO_SUITABLE_PROVIDER");
            return;
        }
        TL_toncenter.createOnrampSession createonrampsession = new TL_toncenter.createOnrampSession();
        createonrampsession.address = gramWallet.getAddress();
        createonrampsession.crypto_currency = "gram";
        createonrampsession.base_currency = gramWallet.currencies.getCurrency();
        createonrampsession.provider = onrampproviderinfo.id;
        connectionsManager.sendRequestTyped(createonrampsession, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda95
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj2, Object obj3) {
                WalletActivity.$r8$lambda$Cyl_OtcU_K68J6wvPcRBnEUOTjY(callback, (TL_toncenter.onrampSession) obj2, (TLRPC.TL_error) obj3);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Cyl_OtcU_K68J6wvPcRBnEUOTjY(Utilities.Callback callback, TL_toncenter.onrampSession onrampsession, TLRPC.TL_error tL_error) {
        String str;
        if (onrampsession == null || TextUtils.isEmpty(onrampsession.url)) {
            if (tL_error == null || (str = tL_error.text) == null) {
                str = "NO_SESSION";
            }
            callback.run(str);
            return;
        }
        callback.run(null);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        Browser.openUrl(safeLastFragment.getContext(), onrampsession.url);
    }

    public static void openWalletQRAlert(Context context, final int i, final Theme.ResourcesProvider resourcesProvider) {
        GramWallet gramWallet = GramWallet.getInstance(i);
        if (gramWallet.isReady()) {
            final String address = gramWallet.getAddress();
            if (TextUtils.isEmpty(address)) {
                return;
            }
            BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider, -12207881);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackground(new WalletSheetGradientDrawable());
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            frameLayout.addView(linearLayout, LayoutHelper.createFrameMarginPx(-1, -2.0f, 55, AndroidUtilities.dp(12.0f), AndroidUtilities.dp(30.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f) + AndroidUtilities.navigationBarHeight));
            WalletQrView walletQrView = new WalletQrView(context, address);
            linearLayout.addView(walletQrView, LayoutHelper.createLinear(288, 302, 1));
            TextView textView = new TextView(context);
            textView.setText(LocaleController.getString(C2807R.string.WalletReceiveInfo));
            textView.setTextColor(-1);
            textView.setTextSize(1, 14.0f);
            textView.setGravity(17);
            textView.setLineSpacing(AndroidUtilities.dp(1.0f), 1.0f);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 24, 0, 24, 20));
            final ButtonWithCounterView round = new ButtonWithCounterView(context, null).setRound();
            round.setColor(-1);
            round.setTextColor(-15556886);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "$");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.wallet_buy), 0, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) " ").append((CharSequence) LocaleController.getString(C2807R.string.WalletBuyWithCashOrCrypto));
            round.setText(spannableStringBuilder);
            linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 1, 0, 0, 0, 0));
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(C2807R.drawable.ic_close_white);
            imageView.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
            imageView.setContentDescription(LocaleController.getString(C2807R.string.Close));
            ScaleStateListAnimator.apply(imageView);
            frameLayout.addView(imageView, LayoutHelper.createFrame(48, 48.0f, 51, 4.0f, 2.0f, 0.0f, 0.0f));
            builder.setCustomView(frameLayout);
            final BottomSheet bottomSheetCreate = builder.create();
            bottomSheetCreate.occupyNavigationBar = true;
            bottomSheetCreate.setApplyTopPadding(false);
            bottomSheetCreate.setApplyBottomPadding(false);
            bottomSheetCreate.fixNavigationBar(-12207881);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    bottomSheetCreate.lambda$new$0();
                }
            });
            walletQrView.setOnCopyAddressListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.addToClipboard(address);
                }
            });
            bottomSheetCreate.show();
            bottomSheetCreate.setOverlayNavBarColor(-12207881);
            AndroidUtilities.setNavigationBarColor((Dialog) bottomSheetCreate, -12207881, false);
            AndroidUtilities.setLightNavigationBar((Dialog) bottomSheetCreate, false);
            if (Build.VERSION.SDK_INT >= 29 && bottomSheetCreate.getWindow() != null) {
                bottomSheetCreate.getWindow().setNavigationBarContrastEnforced(false);
            }
            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletActivity.m23241$r8$lambda$ryDFPxv8wAP6bIGEYDie9Tlbrw(round, i, bottomSheetCreate, resourcesProvider, view);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ryDFPxv8wAP6bIGEYDie9Tl-brw, reason: not valid java name */
    public static /* synthetic */ void m23241$r8$lambda$ryDFPxv8wAP6bIGEYDie9Tlbrw(final ButtonWithCounterView buttonWithCounterView, int i, final BottomSheet bottomSheet, final Theme.ResourcesProvider resourcesProvider, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        openOnramp(i, 0L, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WalletActivity.$r8$lambda$TqMTAmIwmnxJEQS__y4SGv5J3C4(buttonWithCounterView, bottomSheet, resourcesProvider, (String) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$TqMTAmIwmnxJEQS__y4SGv5J3C4(ButtonWithCounterView buttonWithCounterView, BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider, String str) {
        buttonWithCounterView.setLoading(false);
        if (!TextUtils.isEmpty(str)) {
            BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(str);
        } else {
            bottomSheet.lambda$new$0();
        }
    }

    public static void openWalletHowItWorksAlert(final Context context, Theme.ResourcesProvider resourcesProvider) {
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.getColor(Theme.key_dialogBackground, resourcesProvider)));
        frameLayout.setPadding(AndroidUtilities.dp(36.0f), 0, AndroidUtilities.dp(36.0f), AndroidUtilities.dp(14.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
        linearLayout.addView(new WalletDiamondView(context, 160), LayoutHelper.createLinear(160, 160, 1, 0, -12, 0, -8));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2807R.string.WalletHowItWorks));
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 17.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 6));
        TextView textView2 = new TextView(context);
        textView2.setText(LocaleController.getString(C2807R.string.WalletHowItWorksInfo));
        int i = Theme.key_windowBackgroundWhiteGrayText2;
        textView2.setTextColor(Theme.getColor(i, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        textView2.setLineSpacing(AndroidUtilities.dp(1.0f), 1.0f);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 24));
        LearnCell learnCell = new LearnCell(context, resourcesProvider);
        learnCell.setPadding(AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f));
        learnCell.set(C2807R.drawable.wallet_learn_instant, LocaleController.getString(C2807R.string.WalletSendInstantly), LocaleController.getString(C2807R.string.WalletSendInstantlyInfo));
        linearLayout.addView(learnCell, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        LearnCell learnCell2 = new LearnCell(context, resourcesProvider);
        learnCell2.setPadding(AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f));
        learnCell2.set(C2807R.drawable.wallet_learn_fees, LocaleController.getString(C2807R.string.WalletNoFees), LocaleController.getString(C2807R.string.WalletNoFeesInfo));
        linearLayout.addView(learnCell2, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        LearnCell learnCell3 = new LearnCell(context, resourcesProvider);
        learnCell3.setPadding(AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f));
        learnCell3.set(C2807R.drawable.wallet_learn_verified, LocaleController.getString(C2807R.string.WalletBlockchainVerified), LocaleController.getString(C2807R.string.WalletBlockchainVerifiedInfo));
        linearLayout.addView(learnCell3, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 14.0f));
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.WalletGotIt));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 1, 0, 0, 0, 0));
        ScaleStateListAnimator.apply(round, 0.02f, 1.1f);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        linksTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        linksTextView.setTextSize(1, 13.0f);
        linksTextView.setGravity(17);
        linksTextView.setText(AndroidUtilities.replaceSingleLink(LocaleController.getString(C2807R.string.WalletTermsOfService), Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrlInSystemBrowser(context, LocaleController.getString(C2807R.string.TermsOfServiceUrl));
            }
        }));
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 12.0f, 0.0f, 6.0f));
        builder.setCustomView(frameLayout);
        final BottomSheet[] bottomSheetArr = {builder.create()};
        bottomSheetArr[0].setAllowNestedScroll(true);
        bottomSheetArr[0].fixNavigationBar();
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda64
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetArr[0].lambda$new$0();
            }
        });
        bottomSheetArr[0].show();
    }

    public static BottomSheet openWalletFirstGramsAlert(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        String string;
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.getColor(Theme.key_dialogBackground, resourcesProvider)));
        frameLayout.setPadding(AndroidUtilities.dp(36.0f), 0, AndroidUtilities.dp(36.0f), AndroidUtilities.dp(14.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
        linearLayout.addView(new WalletDiamondView(context, 120), LayoutHelper.createLinear(120, 120, 1, 0, 0, 0, -8));
        TextView textView = new TextView(context);
        textView.setText(LocaleController.getString(C2807R.string.WalletFirstGrams));
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setTextSize(1, 17.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 6));
        TextView textView2 = new TextView(context);
        double d = MessagesController.getInstance(i).config.tonUsdRate.get();
        if (d > 0.0d && !Double.isNaN(d) && !Double.isInfinite(d)) {
            string = LocaleController.formatString(C2807R.string.WalletFirstGramsRate, GramWallet.formatGramsWithUnit(1000000000L), String.format(LocaleController.getInstance().getCurrentLocale(), "%.2f", Double.valueOf(d)));
        } else {
            string = LocaleController.getString(C2807R.string.WalletFirstGramsActions);
        }
        textView2.setText(string);
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        textView2.setLineSpacing(AndroidUtilities.dp(1.0f), 1.0f);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 24));
        LearnCell learnCell = new LearnCell(context, resourcesProvider);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2807R.string.WalletFirstGramsSendInfo));
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_attach, 2);
        coloredImageSpan.setSize(AndroidUtilities.dp(14.0f));
        int iIndexOf = spannableStringBuilder.toString().indexOf("📎");
        spannableStringBuilder.setSpan(coloredImageSpan, iIndexOf, iIndexOf + 2, 33);
        int iIndexOf2 = spannableStringBuilder.toString().indexOf("→");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.wallet_intro_arrow, 2), iIndexOf2, iIndexOf2 + 1, 33);
        learnCell.setPadding(AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f));
        learnCell.set(C2807R.drawable.wallet_intro_telegram, LocaleController.getString(C2807R.string.WalletSend), spannableStringBuilder);
        ImageView imageView = learnCell.icon;
        int i2 = Theme.key_windowBackgroundWhiteBlueText;
        int color = Theme.getColor(i2, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        linearLayout.addView(learnCell, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        LearnCell learnCell2 = new LearnCell(context, resourcesProvider);
        learnCell2.setPadding(AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f));
        learnCell2.set(C2807R.drawable.wallet_intro_trade, LocaleController.getString(C2807R.string.WalletTrade), LocaleController.getString(C2807R.string.WalletFirstGramsTradeInfo));
        learnCell2.icon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), mode));
        linearLayout.addView(learnCell2, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        LearnCell learnCell3 = new LearnCell(context, resourcesProvider);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(LocaleController.getString(C2807R.string.WalletFirstGramsStoreInfo));
        ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2807R.drawable.wallet_intro_chats, 2);
        int iIndexOf3 = spannableStringBuilder2.toString().indexOf("💬");
        spannableStringBuilder2.setSpan(coloredImageSpan2, iIndexOf3, iIndexOf3 + 2, 33);
        int iIndexOf4 = spannableStringBuilder2.toString().indexOf("⋮");
        spannableStringBuilder2.setSpan(new ColoredImageSpan(C2807R.drawable.wallet_intro_options, 2), iIndexOf4, iIndexOf4 + 1, 33);
        int iIndexOf5 = TextUtils.indexOf(spannableStringBuilder2, "→");
        while (iIndexOf5 >= 0) {
            int i3 = iIndexOf5 + 1;
            spannableStringBuilder2.setSpan(new ColoredImageSpan(C2807R.drawable.wallet_intro_arrow, 2), iIndexOf5, i3, 33);
            iIndexOf5 = TextUtils.indexOf(spannableStringBuilder2, "→", i3);
        }
        learnCell3.setPadding(AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(0.0f), AndroidUtilities.dp(8.0f));
        learnCell3.set(C2807R.drawable.wallet_intro_store, LocaleController.getString(C2807R.string.WalletStore), spannableStringBuilder2);
        learnCell3.icon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, resourcesProvider), PorterDuff.Mode.SRC_IN));
        linearLayout.addView(learnCell3, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 14.0f));
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.WalletGotIt));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 1, 0, 0, 0, 0));
        ScaleStateListAnimator.apply(round, 0.02f, 1.1f);
        builder.setCustomView(frameLayout);
        final BottomSheet[] bottomSheetArr = {builder.create()};
        bottomSheetArr[0].setAllowNestedScroll(true);
        bottomSheetArr[0].fixNavigationBar();
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetArr[0].lambda$new$0();
            }
        });
        bottomSheetArr[0].show();
        return bottomSheetArr[0];
    }

    public static void openCollectibleSheet(final Context context, final TL_wallet.nftItem nftitem, Theme.ResourcesProvider resourcesProvider) {
        if (context == null || nftitem == null) {
            return;
        }
        int color = Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider);
        int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider);
        final BottomSheet bottomSheet = new BottomSheet(context, false, resourcesProvider) { // from class: org.telegram.ui.Wallet.WalletActivity.18
            {
                this.behindKeyboardColorKey = Theme.key_windowBackgroundGray;
            }
        };
        bottomSheet.setBackgroundColor(color);
        bottomSheet.fixNavigationBar(color);
        ScrollView scrollView = new ScrollView(context);
        scrollView.setFillViewport(true);
        scrollView.setVerticalScrollBarEnabled(false);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(28.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        scrollView.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(12.0f));
        backupImageView.setContentDescription(nftitem.name);
        Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.wallet_nft_placeholder).mutate();
        int i = Theme.key_windowBackgroundWhiteGrayText2;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, resourcesProvider), PorterDuff.Mode.SRC_IN));
        ImageLocation image = CollectibleCell.getImage(nftitem, false);
        if (image != null) {
            backupImageView.setImage(image, "120_120", drawableMutate, nftitem);
        } else {
            backupImageView.setImageDrawable(drawableMutate);
        }
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(120, 120, 1));
        TextView textView = new TextView(context);
        textView.setText(TextUtils.isEmpty(nftitem.name) ? LocaleController.getString(C2807R.string.WalletCollectible) : nftitem.name);
        textView.setTextColor(color2);
        textView.setTextSize(1, 17.0f);
        textView.setTypeface(AndroidUtilities.bold());
        int i2 = 17;
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 12.0f, 16.0f, 12.0f, 0.0f));
        TextView textView2 = new TextView(context);
        textView2.setText(nftitem.description);
        textView2.setTextColor(Theme.getColor(i, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        textView2.setVisibility(TextUtils.isEmpty(nftitem.description) ? 8 : 0);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 12.0f, 4.0f, 12.0f, 0.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, 54, 0.0f, 20.0f, 0.0f, 16.0f));
        int i3 = 0;
        while (i3 < 2) {
            LinearLayout linearLayout3 = new LinearLayout(context);
            linearLayout3.setOrientation(1);
            linearLayout3.setGravity(i2);
            linearLayout3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider), Theme.getColor(Theme.key_listSelector, resourcesProvider)));
            linearLayout3.setClickable(true);
            linearLayout3.setFocusable(true);
            String string = LocaleController.getString(i3 == 0 ? C2807R.string.WalletTransfer : C2807R.string.WalletSell);
            linearLayout3.setContentDescription(string);
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(i3 == 0 ? C2807R.drawable.wallet_transfer : C2807R.drawable.wallet_sell);
            imageView.setImportantForAccessibility(2);
            imageView.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.SRC_IN));
            linearLayout3.addView(imageView, LayoutHelper.createLinear(24, 24));
            TextView textView3 = new TextView(context);
            textView3.setText(string);
            textView3.setTextColor(color2);
            textView3.setTextSize(1, 12.0f);
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setGravity(17);
            linearLayout3.addView(textView3, LayoutHelper.createLinear(-2, -2, 0.0f, 2.0f, 0.0f, 0.0f));
            linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(0, -1, 1.0f, i3 == 0 ? 0 : 4, 0, i3 == 0 ? 4 : 0, 0));
            i3++;
            i2 = 17;
        }
        ArrayList<TL_wallet.nftAttribute> arrayList = nftitem.attributes;
        if (arrayList != null && !arrayList.isEmpty()) {
            TableView tableView = new TableView(context, resourcesProvider);
            tableView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            ArrayList<TL_wallet.nftAttribute> arrayList2 = nftitem.attributes;
            int size = arrayList2.size();
            int i4 = 0;
            while (i4 < size) {
                TL_wallet.nftAttribute nftattribute = arrayList2.get(i4);
                i4++;
                TL_wallet.nftAttribute nftattribute2 = nftattribute;
                tableView.addRow(nftattribute2.trait_type, nftattribute2.value);
            }
            linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 14.0f));
        }
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.WalletOK));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48));
        bottomSheet.setCustomView(scrollView);
        bottomSheet.useBackgroundTopPadding = false;
        linearLayout2.getChildAt(0).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletActivity.$r8$lambda$1TmmUKXy6lq_DGhOvEgbTd0dAvo(bottomSheet, nftitem, view);
            }
        });
        linearLayout2.getChildAt(1).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Browser.openUrlInSystemBrowser(context, "https://fragment.com/");
            }
        });
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheet.lambda$new$0();
            }
        });
        bottomSheet.show();
        bottomSheet.fixNavigationBar(color);
        AndroidUtilities.setNavigationBarColor((Dialog) bottomSheet, color, false);
    }

    public static /* synthetic */ void $r8$lambda$1TmmUKXy6lq_DGhOvEgbTd0dAvo(BottomSheet bottomSheet, TL_wallet.nftItem nftitem, View view) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        bottomSheet.lambda$new$0();
        safeLastFragment.presentFragment(new WalletSendSelectSender().setCollectible(nftitem));
    }

    public static void openTransactionSheet(Context context, int i, TL_wallet.walletTransaction wallettransaction, Utilities.Callback3<String, Boolean, Utilities.Callback<String>> callback3, Utilities.Callback2<String, Boolean> callback2, Theme.ResourcesProvider resourcesProvider) {
        openTransactionSheet(context, i, wallettransaction, callback3, callback2, null, null, resourcesProvider);
    }

    public static void openTransactionSheet(final Context context, final int i, TL_wallet.walletTransaction wallettransaction, Utilities.Callback3<String, Boolean, Utilities.Callback<String>> callback3, Utilities.Callback2<String, Boolean> callback2, byte[] bArr, Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        View[] viewArr;
        final TL_wallet.walletTransaction wallettransaction2;
        final NewBottomSheet[] newBottomSheetArr;
        final Utilities.Callback2<String, Boolean> callback22;
        ViewGroup viewGroupCreateTransactionSheetContent;
        TL_wallet.nftItem nftitem;
        if (context == null) {
            return;
        }
        if ((wallettransaction.peer instanceof TL_wallet.walletTransactionPeerTelegramGift) && (nftitem = wallettransaction.nft) != null) {
            TL_stars.StarGift starGift = nftitem.gift;
            if (starGift instanceof TL_stars.TL_starGiftUnique) {
                TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift;
                new StarGiftSheet(context, i, 0L, resourcesProvider).setWalletTransaction(wallettransaction).set(tL_starGiftUnique.slug, tL_starGiftUnique, null).show();
                return;
            }
        }
        NewBottomSheet[] newBottomSheetArr2 = new NewBottomSheet[1];
        View[] viewArr2 = new View[1];
        GramWallet.TransactionsList transactions = GramWallet.getInstance(i).getTransactions();
        final ArrayList arrayList = new ArrayList(transactions.allTransactions);
        int i2 = 0;
        while (true) {
            if (i2 >= arrayList.size()) {
                i2 = -1;
                break;
            } else if (arrayList.get(i2) == wallettransaction || GramWallet.transactionMatches(wallettransaction, (TL_wallet.walletTransaction) arrayList.get(i2))) {
                break;
            } else {
                i2++;
            }
        }
        if (callback3 == null && runnable == null && i2 >= 0) {
            final Rect rect = new Rect();
            context.getResources().getDrawable(C2807R.drawable.sheet_shadow_round).getPadding(rect);
            AnonymousClass19 anonymousClass19 = new AnonymousClass19(context, resourcesProvider, transactions, arrayList, i, rect, viewArr2);
            viewArr = viewArr2;
            anonymousClass19.setPosition(i2);
            newBottomSheetArr = newBottomSheetArr2;
            anonymousClass19.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Wallet.WalletActivity.20
                @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
                public int getItemCount() {
                    return arrayList.size();
                }

                @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
                public View createView(int i3) {
                    FrameLayout frameLayout = new FrameLayout(context);
                    ShapeDrawable shapeDrawableCreateRoundRectDrawable = Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), 0, Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
                    Rect rect2 = rect;
                    frameLayout.setBackground(new InsetDrawable((Drawable) shapeDrawableCreateRoundRectDrawable, rect2.left, 0, rect2.right, 0));
                    return frameLayout;
                }

                @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
                public void bindView(View view, int i3, int i4) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    frameLayout.removeAllViews();
                    frameLayout.addView(WalletActivity.createTransactionSheetContent(context, i, (TL_wallet.walletTransaction) arrayList.get(i3), null, null, null, null, resourcesProvider, newBottomSheetArr, true), LayoutHelper.createFrame(-1, -2.0f));
                }
            });
            wallettransaction2 = wallettransaction;
            viewGroupCreateTransactionSheetContent = anonymousClass19;
            callback22 = callback2;
        } else {
            viewArr = viewArr2;
            wallettransaction2 = wallettransaction;
            newBottomSheetArr = newBottomSheetArr2;
            callback22 = callback2;
            viewGroupCreateTransactionSheetContent = createTransactionSheetContent(context, i, wallettransaction, callback3, callback2, bArr, runnable, resourcesProvider, newBottomSheetArr2, false);
        }
        AnonymousClass21 anonymousClass21 = new AnonymousClass21(context, viewGroupCreateTransactionSheetContent, resourcesProvider, viewGroupCreateTransactionSheetContent, viewArr, context);
        newBottomSheetArr[0] = anonymousClass21;
        if ((viewGroupCreateTransactionSheetContent instanceof ViewPagerFixed) && callback22 != null) {
            anonymousClass21.setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback2 callback23 = callback22;
                    TL_wallet.walletTransaction wallettransaction3 = wallettransaction2;
                    callback23.run(wallettransaction3.comment, Boolean.valueOf(wallettransaction3.comment_encrypted));
                }
            });
        }
        newBottomSheetArr[0].setFocusable(callback3 != null);
        NewBottomSheet newBottomSheet = newBottomSheetArr[0];
        newBottomSheet.useBackgroundTopPadding = false;
        newBottomSheet.show();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$19, reason: invalid class name */
    public class AnonymousClass19 extends ViewPagerFixed {
        private final NotificationCenter.NotificationCenterDelegate listener;
        private boolean swipeTouchActive;
        final /* synthetic */ View[] val$bottomBackground;
        final /* synthetic */ int val$currentAccount;
        final /* synthetic */ GramWallet.TransactionsList val$history;
        final /* synthetic */ Rect val$pagePadding;
        final /* synthetic */ ArrayList val$transactions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass19(Context context, Theme.ResourcesProvider resourcesProvider, final GramWallet.TransactionsList transactionsList, final ArrayList arrayList, int i, Rect rect, View[] viewArr) {
            super(context, resourcesProvider);
            this.val$history = transactionsList;
            this.val$transactions = arrayList;
            this.val$currentAccount = i;
            this.val$pagePadding = rect;
            this.val$bottomBackground = viewArr;
            this.listener = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Wallet.WalletActivity$19$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                    WalletActivity.AnonymousClass19.$r8$lambda$3Q_0h6hA9a1BU894ck_TE7TlUCc(transactionsList, arrayList, i2, i3, objArr);
                }
            };
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.swipeTouchActive = true;
            } else if (actionMasked == 1 || actionMasked == 3) {
                this.swipeTouchActive = false;
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        public static /* synthetic */ void $r8$lambda$3Q_0h6hA9a1BU894ck_TE7TlUCc(GramWallet.TransactionsList transactionsList, ArrayList arrayList, int i, int i2, Object[] objArr) {
            ArrayList<TL_wallet.walletTransaction> arrayList2 = transactionsList.allTransactions;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                TL_wallet.walletTransaction wallettransaction = arrayList2.get(i3);
                i3++;
                TL_wallet.walletTransaction wallettransaction2 = wallettransaction;
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    if (arrayList.get(i4) == wallettransaction2 || GramWallet.transactionMatches((TL_wallet.walletTransaction) arrayList.get(i4), wallettransaction2)) {
                        arrayList.set(i4, wallettransaction2);
                        break;
                    }
                }
                arrayList.add(wallettransaction2);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getInstance(this.val$currentAccount).addObserver(this.listener, NotificationCenter.walletTransactionsUpdate);
            loadMore();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(this.val$currentAccount).removeObserver(this.listener, NotificationCenter.walletTransactionsUpdate);
        }

        private void loadMore() {
            if (this.currentPosition < this.val$transactions.size() - 2 || this.val$history.isLoading() || this.val$history.isEndReached()) {
                return;
            }
            this.val$history.load();
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed
        public void onItemSelected(View view, View view2, int i, int i2) {
            requestLayout();
            View childAt = ((FrameLayout) view).getChildAt(0);
            if (childAt != null && (childAt.getTag() instanceof Runnable)) {
                ((Runnable) childAt.getTag()).run();
            }
            loadMore();
            if (Bulletin.getVisibleBulletin() != null) {
                Bulletin.getVisibleBulletin().hide(false, 0L);
            }
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed
        public float getAvailableTranslationX() {
            int measuredWidth = getMeasuredWidth();
            Rect rect = this.val$pagePadding;
            return Math.max(1, (measuredWidth - rect.left) - rect.right);
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed
        public void setTranslationX(View view, float f) {
            view.setTranslationX(f);
            if (getMeasuredWidth() <= 0) {
                return;
            }
            float fClamp = Utilities.clamp(f / getMeasuredWidth(), 1.0f, -1.0f);
            view.setTranslationX(f - ((2.0f * fClamp) * this.val$pagePadding.left));
            view.setPivotX(fClamp <= 0.0f ? view.getMeasuredWidth() : 0.0f);
            view.setCameraDistance(view.getMeasuredHeight() * 3.4f);
            view.setScaleX(1.0f - Math.abs(0.25f * fClamp));
            view.setRotationY(10.0f * fClamp);
            WalletDiamondView walletDiamondView = (WalletDiamondView) view.findViewWithTag(WalletDiamondView.class);
            if (walletDiamondView != null) {
                walletDiamondView.setSwipeProgress(fClamp, this.swipeTouchActive);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            canvas.save();
            canvas.clipRect(this.val$pagePadding.left, -getHeight(), getWidth() - this.val$pagePadding.right, getHeight() * 2);
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed
        public void onTabAnimationUpdate(boolean z) {
            requestLayout();
            View view = this.val$bottomBackground[0];
            if (view != null) {
                view.invalidate();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            View view = getViewPages()[0];
            if (view != null) {
                view.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = view.getMeasuredHeight();
                View view2 = getViewPages()[1];
                if (view2 != null && view2.getVisibility() == 0 && getMeasuredWidth() > 0) {
                    view2.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
                    measuredHeight = AndroidUtilities.lerp(measuredHeight, view2.getMeasuredHeight(), Utilities.clamp(Math.abs(view.getTranslationX()) / getAvailableTranslationX(), 1.0f, 0.0f));
                }
                i2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, TLObject.FLAG_30);
            }
            super.onMeasure(i, i2);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$21, reason: invalid class name */
    public class AnonymousClass21 extends NewBottomSheet {
        final /* synthetic */ View[] val$bottomBackground;
        final /* synthetic */ ViewGroup val$content;
        final /* synthetic */ Context val$context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass21(Context context, ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, ViewGroup viewGroup2, View[] viewArr, Context context2) {
            super(context, viewGroup, resourcesProvider);
            this.val$content = viewGroup2;
            this.val$bottomBackground = viewArr;
            this.val$context = context2;
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public boolean shouldDrawBackground() {
            return !(this.val$content instanceof ViewPagerFixed);
        }

        @Override // org.telegram.ui.Wallet.NewBottomSheet, org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public void onSheetTop(float f) {
            super.onSheetTop(f);
            if (this.val$content instanceof ViewPagerFixed) {
                this.shadowDrawable.setBounds(0, (int) f, this.containerView.getWidth(), this.containerView.getHeight());
            }
        }

        @Override // org.telegram.ui.Wallet.NewBottomSheet, org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
        public void show() {
            super.show();
            if (this.val$content instanceof ViewPagerFixed) {
                View[] viewArr = this.val$bottomBackground;
                if (viewArr[0] == null) {
                    viewArr[0] = new View(this.val$context) { // from class: org.telegram.ui.Wallet.WalletActivity.21.1
                        private final Paint paint = new Paint(1);
                        private final int[] pagerLocation = new int[2];
                        private final int[] backgroundLocation = new int[2];

                        @Override // android.view.View
                        public void onDraw(Canvas canvas) {
                            Canvas canvas2;
                            this.paint.setColor(AnonymousClass21.this.getSheetBackgroundColor());
                            AnonymousClass21.this.val$content.getLocationInWindow(this.pagerLocation);
                            getLocationInWindow(this.backgroundLocation);
                            float f = this.pagerLocation[0] - this.backgroundLocation[0];
                            View view = ((ViewPagerFixed) AnonymousClass21.this.val$content).getViewPages()[0];
                            int paddingLeft = view != null ? view.getPaddingLeft() : 0;
                            int paddingRight = view != null ? view.getPaddingRight() : 0;
                            canvas.save();
                            canvas.clipRect(paddingLeft + f, 0.0f, (f + AnonymousClass21.this.val$content.getWidth()) - paddingRight, getHeight());
                            View[] viewPages = ((ViewPagerFixed) AnonymousClass21.this.val$content).getViewPages();
                            int length = viewPages.length;
                            int i = 0;
                            while (i < length) {
                                View view2 = viewPages[i];
                                if (view2 == null || view2.getVisibility() != 0) {
                                    canvas2 = canvas;
                                } else {
                                    canvas.save();
                                    canvas.translate((this.pagerLocation[0] - this.backgroundLocation[0]) + view2.getLeft(), (this.pagerLocation[1] - this.backgroundLocation[1]) + view2.getTop());
                                    canvas.concat(view2.getMatrix());
                                    canvas2 = canvas;
                                    canvas2.drawRect(view2.getPaddingLeft(), 0.0f, view2.getWidth() - view2.getPaddingRight(), view2.getHeight() + AndroidUtilities.dp(100.0f), this.paint);
                                    canvas2.restore();
                                }
                                i++;
                                canvas = canvas2;
                            }
                            canvas.restore();
                        }
                    };
                    this.containerView.addView(this.val$bottomBackground[0], 0, LayoutHelper.createFrame(-1, 50, 80));
                }
                this.containerView.setBackground(null);
                this.containerView.setPadding(0, 0, 0, 0);
                this.recyclerListView.setPadding(0, 0, 0, 0);
            }
        }

        @Override // org.telegram.ui.Wallet.NewBottomSheet
        public int getSheetBackgroundColor() {
            return getThemedColor(Theme.key_windowBackgroundWhite);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0655  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0612  */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v62 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r9v20, types: [android.view.View, android.widget.LinearLayout] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static LinearLayout createTransactionSheetContent(final Context context, final int i, final TL_wallet.walletTransaction wallettransaction, final Utilities.Callback3<String, Boolean, Utilities.Callback<String>> callback3, Utilities.Callback2<String, Boolean> callback2, final byte[] bArr, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider, final NewBottomSheet[] newBottomSheetArr, boolean z) {
        int i2;
        ImageView imageView;
        ImageView.ScaleType scaleType;
        String address;
        int i3;
        int i4;
        ImageView imageView2;
        PorterDuff.Mode mode;
        int i5;
        float f;
        int i6;
        byte b2;
        final Theme.ResourcesProvider resourcesProvider2;
        ImageView.ScaleType scaleType2;
        int i7;
        TableView tableView;
        final ?? r1;
        SpannableString[] spannableStringArr;
        TextView[] textViewArr;
        String[] strArr;
        final boolean[] zArr;
        TextView textView;
        final TL_wallet.walletTransaction wallettransaction2;
        EditTextBoldCursor editTextBoldCursor;
        final int i8;
        NotificationCenter.NotificationCenterDelegate notificationCenterDelegate;
        final NewBottomSheet[] newBottomSheetArr2;
        Object gramsWithUnit;
        ViewGroup viewGroup;
        EditTextBoldCursor editTextBoldCursor2;
        ?? r12;
        boolean z2 = callback3 != null;
        final ?? linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 56));
        int i9 = Theme.key_windowBackgroundWhiteBlackText;
        int color = Theme.getColor(i9, resourcesProvider);
        int i10 = Theme.key_listSelector;
        int color2 = Theme.getColor(i10, resourcesProvider);
        ImageView imageView3 = new ImageView(context);
        ImageView.ScaleType scaleType3 = ImageView.ScaleType.CENTER;
        imageView3.setScaleType(scaleType3);
        imageView3.setImageResource(C2807R.drawable.ic_ab_close);
        PorterDuff.Mode mode2 = PorterDuff.Mode.SRC_IN;
        imageView3.setColorFilter(new PorterDuffColorFilter(color, mode2));
        imageView3.setBackground(Theme.createSelectorDrawable(color2, 1));
        imageView3.setContentDescription(LocaleController.getString(C2807R.string.Close));
        frameLayout.addView(imageView3, LayoutHelper.createFrame(48, 48.0f, 19, 4.0f, -2.0f, 0.0f, 0.0f));
        ImageView imageView4 = new ImageView(context);
        imageView4.setScaleType(scaleType3);
        imageView4.setImageResource(C2807R.drawable.ic_ab_other);
        imageView4.setColorFilter(new PorterDuffColorFilter(color, mode2));
        imageView4.setBackground(Theme.createSelectorDrawable(color2, 1));
        imageView4.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        imageView4.setVisibility(callback3 != null ? 8 : 0);
        frameLayout.addView(imageView4, LayoutHelper.createFrame(44, 48.0f, 21, 0.0f, 2.0f, 4.0f, 0.0f));
        ?? linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 14.0f, wallettransaction.key_change ? -20.0f : -40.0f, 14.0f, 24.0f));
        WalletDiamondView walletDiamondView = new WalletDiamondView(context, 120, z);
        walletDiamondView.setTag(WalletDiamondView.class);
        linearLayout2.addView(walletDiamondView, LayoutHelper.createLinear(120, 120, 1, 0, 0, 0, -8));
        final TextView textView2 = new TextView(context) { // from class: org.telegram.ui.Wallet.WalletActivity.22
            @Override // android.view.View
            public boolean canScrollHorizontally(int i11) {
                return false;
            }
        };
        textView2.setSingleLine(true);
        textView2.setGravity(17);
        textView2.setIncludeFontPadding(false);
        textView2.setTextSize(1, 40.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, 50, 1));
        TextView textView3 = new TextView(context);
        textView3.setGravity(17);
        textView3.setIncludeFontPadding(false);
        textView3.setTextSize(1, 14.0f);
        int i11 = Theme.key_windowBackgroundWhiteGrayText2;
        textView3.setTextColor(Theme.getColor(i11, resourcesProvider));
        linearLayout2.addView(textView3, LayoutHelper.createLinear(-1, 20, 1, 0, 3, 0, 0));
        if (wallettransaction.key_change) {
            linearLayout2.removeAllViews();
            FrameLayout frameLayout2 = new FrameLayout(context);
            int iDp = AndroidUtilities.dp(76.0f);
            i2 = i10;
            IconBackgroundColors iconBackgroundColors = IconBackgroundColors.GRAY;
            imageView = imageView3;
            frameLayout2.setBackground(Theme.createCircleDrawable(iDp, iconBackgroundColors.top, iconBackgroundColors.bottom));
            ImageView imageView5 = new ImageView(context);
            imageView5.setImageResource(C2807R.drawable.wallet_transaction_key);
            imageView5.setScaleType(ImageView.ScaleType.FIT_CENTER);
            scaleType = scaleType3;
            frameLayout2.addView(imageView5, LayoutHelper.createFrame(44, 44, 17));
            linearLayout2.addView(frameLayout2, LayoutHelper.createLinear(76, 76, 1));
            TextView textView4 = new TextView(context);
            textView4.setText(LocaleController.getString(C2807R.string.WalletKeyUpdate));
            textView4.setTextColor(color);
            textView4.setTextSize(1, 18.0f);
            textView4.setTypeface(AndroidUtilities.bold());
            textView4.setGravity(17);
            textView4.setIncludeFontPadding(false);
            linearLayout2.addView(textView4, LayoutHelper.createLinear(-1, 24, 1, 12, 12, 12, 0));
        } else {
            i2 = i10;
            imageView = imageView3;
            scaleType = scaleType3;
            if (wallettransaction.nft != null) {
                linearLayout2.removeAllViews();
                TL_wallet.nftItem nftitem = wallettransaction.nft;
                BackupImageView backupImageView = new BackupImageView(context);
                backupImageView.setRoundRadius(AndroidUtilities.dp(12.0f));
                backupImageView.setContentDescription(nftitem.name);
                Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.wallet_nft_placeholder).mutate();
                drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i11, resourcesProvider), mode2));
                ImageLocation image = CollectibleCell.getImage(nftitem, false);
                if (image != null) {
                    backupImageView.setImage(image, "120_120", drawableMutate, nftitem);
                } else {
                    backupImageView.setImageDrawable(drawableMutate);
                }
                linearLayout2.addView(backupImageView, LayoutHelper.createLinear(120, 120, 1));
                TextView textView5 = new TextView(context);
                textView5.setText(TextUtils.isEmpty(nftitem.name) ? LocaleController.getString(C2807R.string.WalletCollectible) : nftitem.name);
                textView5.setTextColor(color);
                textView5.setTextSize(1, 17.0f);
                textView5.setTypeface(AndroidUtilities.bold());
                textView5.setGravity(17);
                linearLayout2.addView(textView5, LayoutHelper.createLinear(-1, -2, 12.0f, 16.0f, 12.0f, 0.0f));
            }
        }
        if (wallettransaction.incoming) {
            TL_wallet.WalletTransactionPeer walletTransactionPeer = wallettransaction.peer;
            address = walletTransactionPeer != null ? walletTransactionPeer.address : null;
        } else {
            address = GramWallet.getInstance(i).getAddress();
        }
        if (callback3 == null) {
            if (wallettransaction.comment_encrypted || wallettransaction.comment_encrypted_preparing) {
                f = 11.0f;
                if (wallettransaction.comment_encrypted_preparing || !TextUtils.isEmpty(address)) {
                    final SpoilersTextView spoilersTextView = new SpoilersTextView(context, false, resourcesProvider);
                    spoilersTextView.allowClickSpoilers = false;
                    spoilersTextView.setTextSize(1, 15.0f);
                    spoilersTextView.setTextColor(Theme.getColor(i9, resourcesProvider));
                    SpannableString spannableString = new SpannableString(HtmlContext$$ExternalSyntheticBackport0.m257m("a", 25));
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    textStyleRun.flags |= 256;
                    final String str = address;
                    i3 = color;
                    spannableString.setSpan(new TextStyleSpan(textStyleRun), 0, spannableString.length(), 33);
                    spoilersTextView.setText(spannableString);
                    MessageDrawable messageDrawable = new MessageDrawable(0, false, false);
                    messageDrawable.shadow = false;
                    messageDrawable.overrideColor = Integer.valueOf(Theme.getColor(Theme.key_wallet_comment, resourcesProvider));
                    spoilersTextView.setBackground(messageDrawable);
                    spoilersTextView.setPadding(AndroidUtilities.dp(19.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(11.0f));
                    linearLayout2.addView(spoilersTextView, LayoutHelper.createLinear(-2, -2, 1, 32, 15, 32, 0));
                    ScaleStateListAnimator.apply(spoilersTextView);
                    i7 = 1;
                    final boolean[] zArr2 = {false};
                    i4 = i11;
                    imageView2 = imageView4;
                    mode = mode2;
                    scaleType2 = scaleType;
                    i5 = i2;
                    b2 = -1;
                    i6 = 44;
                    resourcesProvider2 = resourcesProvider;
                    spoilersTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda39
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            WalletActivity.m23237$r8$lambda$lNBnQhbWOVgQcKDzPFBPNJyhQU(zArr2, newBottomSheetArr, resourcesProvider, spoilersTextView, wallettransaction, i, str, view);
                        }
                    });
                    final SpannableString[] spannableStringArr2 = new SpannableString[i7];
                    final TextView[] textViewArr2 = new TextView[i7];
                    TableView tableView2 = new TableView(context, resourcesProvider2);
                    linearLayout.addView(tableView2, LayoutHelper.createLinear(-1, -2, 14.0f, 0.0f, 14.0f, 0.0f));
                    final String[] strArr2 = {wallettransaction.comment};
                    final boolean[] zArr3 = {(wallettransaction.comment_encrypted || (z2 && bArr == null)) ? false : true};
                    if (callback3 == null) {
                        final FrameLayout frameLayout3 = new FrameLayout(context);
                        tableView = tableView2;
                        int i12 = i4;
                        frameLayout3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(22.0f), AndroidUtilities.dp(22.0f), Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider2)));
                        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda40
                            @Override // java.lang.Runnable
                            public final void run() {
                                WalletActivity.$r8$lambda$CY9_YFvn4ek6O1eHEVzD5HwkWCQ(textViewArr2, spannableStringArr2);
                            }
                        };
                        final Runnable[] runnableArr = new Runnable[1];
                        final Theme.ResourcesProvider resourcesProvider3 = resourcesProvider2;
                        spannableStringArr = spannableStringArr2;
                        textView = textView3;
                        final Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda41
                            @Override // java.lang.Runnable
                            public final void run() {
                                WalletActivity.$r8$lambda$tb9ewAuX68SGYYsco35Fo2QPXT8(runnableArr, textViewArr2, i, resourcesProvider3, wallettransaction, strArr2, zArr3, bArr);
                            }
                        };
                        resourcesProvider2 = resourcesProvider3;
                        wallettransaction2 = wallettransaction;
                        EditTextBoldCursor editTextBoldCursor3 = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Wallet.WalletActivity.23
                            private final AnimatedTextView.AnimatedTextDrawable limit;
                            private int remaining = 960;
                            private final AnimatedColor limitColor = new AnimatedColor(this);

                            {
                                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
                                this.limit = animatedTextDrawable;
                                animatedTextDrawable.setAnimationProperties(0.2f, 0L, 160L, CubicBezierInterpolator.EASE_OUT_QUINT);
                                animatedTextDrawable.setTextSize(AndroidUtilities.dp(15.33f));
                                animatedTextDrawable.setGravity(5);
                                animatedTextDrawable.setCallback(this);
                            }

                            @Override // android.widget.TextView, android.view.View
                            public boolean verifyDrawable(Drawable drawable) {
                                return drawable == this.limit || super.verifyDrawable(drawable);
                            }

                            @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView
                            public void onTextChanged(CharSequence charSequence, int i13, int i14, int i15) {
                                super.onTextChanged(charSequence, i13, i14, i15);
                                if (this.limit == null) {
                                    return;
                                }
                                this.remaining = 960 - charSequence.toString().getBytes(StandardCharsets.UTF_8).length;
                                this.limit.cancelAnimation();
                                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.limit;
                                int i16 = this.remaining;
                                animatedTextDrawable.setText(i16 <= 100 ? Integer.toString(i16) : _UrlKt.FRAGMENT_ENCODE_SET, isAttachedToWindow());
                                invalidate();
                            }

                            @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, android.widget.TextView, android.view.View
                            public void onDraw(Canvas canvas) {
                                canvas.save();
                                canvas.clipRect(getScrollX() + getPaddingLeft(), getScrollY(), (getScrollX() + getWidth()) - getPaddingRight(), getScrollY() + getHeight());
                                super.onDraw(canvas);
                                canvas.restore();
                            }

                            @Override // android.view.View
                            public void dispatchDraw(Canvas canvas) {
                                super.dispatchDraw(canvas);
                                this.limit.setTextColor(this.limitColor.set(Theme.getColor(this.remaining <= 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, resourcesProvider2)));
                                int scrollX = ((getScrollX() + getWidth()) - getPaddingRight()) + AndroidUtilities.dp(48.0f);
                                int scrollY = getScrollY() + getHeight();
                                this.limit.setBounds(scrollX - AndroidUtilities.dp(48.0f), scrollY - Math.min(AndroidUtilities.dp(44.0f), getHeight()), scrollX, scrollY);
                                this.limit.draw(canvas);
                            }
                        };
                        editTextBoldCursor3.setHint(LocaleController.getString(C2807R.string.WalletOptionalComment));
                        editTextBoldCursor3.setText(strArr2[0]);
                        int iDp2 = AndroidUtilities.dp(16.0f);
                        int iDp3 = AndroidUtilities.dp(f);
                        textViewArr = textViewArr2;
                        zArr = zArr3;
                        editTextBoldCursor3.setPadding(iDp2, iDp3, AndroidUtilities.dp(64.0f), AndroidUtilities.dp(12.0f));
                        editTextBoldCursor3.setTextColor(Theme.getColor(i9, resourcesProvider2));
                        editTextBoldCursor3.setHintTextColor(Theme.multAlpha(Theme.getColor(i9, resourcesProvider2), 0.65f));
                        editTextBoldCursor3.setMaxLines(4);
                        frameLayout3.addView(editTextBoldCursor3, LayoutHelper.createFrame(-1, -2.0f, 119, 0.0f, 0.0f, (wallettransaction2.nft != null || bArr == null) ? 0.0f : 44.0f, 0.0f));
                        editTextBoldCursor3.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Wallet.WalletActivity.24
                            @Override // android.text.TextWatcher
                            public void beforeTextChanged(CharSequence charSequence, int i13, int i14, int i15) {
                            }

                            @Override // android.text.TextWatcher
                            public void onTextChanged(CharSequence charSequence, int i13, int i14, int i15) {
                            }

                            @Override // android.text.TextWatcher
                            public void afterTextChanged(Editable editable) {
                                strArr2[0] = editable.toString();
                                runnable2.run();
                                Runnable runnable4 = runnableArr[0];
                                if (runnable4 != null) {
                                    runnable4.run();
                                    runnableArr[0] = null;
                                }
                                AndroidUtilities.cancelRunOnUIThread(runnable3);
                                AndroidUtilities.runOnUIThread(runnable3, 1000L);
                            }
                        });
                        if (wallettransaction2.nft != null || bArr == null) {
                            viewGroup = frameLayout3;
                            strArr = strArr2;
                            editTextBoldCursor2 = editTextBoldCursor3;
                            r12 = linearLayout;
                        } else {
                            FrameLayout frameLayout4 = new FrameLayout(context);
                            ScaleStateListAnimator.apply(frameLayout4);
                            final ImageView imageView6 = new ImageView(context);
                            frameLayout4.addView(imageView6, LayoutHelper.createFrame(-1, -1.0f));
                            imageView6.setScaleType(scaleType2);
                            imageView6.setColorFilter(new PorterDuffColorFilter(Theme.getColor(zArr[0] ? Theme.key_featuredStickers_addButton : i12, resourcesProvider2), mode));
                            imageView6.setImageResource(zArr[0] ? C2807R.drawable.wallet_comment_locked : C2807R.drawable.wallet_comment_unlocked);
                            imageView6.setBackground(Theme.createSelectorDrawable(Theme.getColor(i5, resourcesProvider2), 1));
                            final HintView2[] hintView2Arr = new HintView2[1];
                            editTextBoldCursor2 = editTextBoldCursor3;
                            int i13 = i6;
                            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda42
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    WalletActivity.$r8$lambda$SIJIjEofnn83L8mGyjzJM5loXhI(zArr, imageView6, resourcesProvider2, hintView2Arr, linearLayout, context, frameLayout3, strArr2, runnable2, runnableArr, runnable3, view);
                                }
                            };
                            r12 = linearLayout;
                            viewGroup = frameLayout3;
                            strArr = strArr2;
                            resourcesProvider2 = resourcesProvider2;
                            frameLayout4.setOnClickListener(onClickListener);
                            viewGroup.addView(frameLayout4, LayoutHelper.createFrame(i13, i13, 85));
                        }
                        r12.addView(viewGroup, LayoutHelper.createLinear(-1, -2, 14.0f, 12.0f, 14.0f, 8.0f));
                        editTextBoldCursor = editTextBoldCursor2;
                        r1 = r12;
                    } else {
                        tableView = tableView2;
                        r1 = linearLayout;
                        spannableStringArr = spannableStringArr2;
                        textViewArr = textViewArr2;
                        strArr = strArr2;
                        zArr = zArr3;
                        textView = textView3;
                        wallettransaction2 = wallettransaction;
                        editTextBoldCursor = null;
                    }
                    final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider2).setRound();
                    round.setText(LocaleController.getString(C2807R.string.OK));
                    r1.addView(round, LayoutHelper.createLinear(-1, 48, 14.0f, 14.0f, 14.0f, 14.0f));
                    final TL_wallet.walletTransaction[] wallettransactionArr = {wallettransaction2};
                    final TextView[] textViewArr3 = textViewArr;
                    final EditTextBoldCursor editTextBoldCursor4 = editTextBoldCursor;
                    final TextView textView6 = textView;
                    final SpannableString[] spannableStringArr3 = spannableStringArr;
                    final int i14 = i3;
                    final Theme.ResourcesProvider resourcesProvider4 = resourcesProvider2;
                    final TableView tableView3 = tableView;
                    final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda43
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            WalletActivity.$r8$lambda$A4AuxedaMAAWhinZkDpS2Z6C5jM(r1, textView2, resourcesProvider4, i, textView6, newBottomSheetArr, tableView3, callback3, context, textViewArr3, i14, spannableStringArr3, (TL_wallet.walletTransaction) obj);
                        }
                    };
                    ?? r9 = r1;
                    r9.setTag(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda44
                        @Override // java.lang.Runnable
                        public final void run() {
                            callback.run(wallettransactionArr[0]);
                        }
                    });
                    callback.run(wallettransaction2);
                    if (z2) {
                        i8 = i;
                        NotificationCenter.NotificationCenterDelegate notificationCenterDelegate2 = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Wallet.WalletActivity.25
                            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                            public void didReceivedNotification(int i15, int i16, Object... objArr) {
                                TL_wallet.walletTransaction wallettransaction3;
                                if (i15 == NotificationCenter.walletUpdate || i15 == NotificationCenter.walletTransactionsUpdate) {
                                    ArrayList<TL_wallet.walletTransaction> arrayList = GramWallet.getInstance(i8).getTransactions().allTransactions;
                                    int size = arrayList.size();
                                    int i17 = 0;
                                    while (true) {
                                        if (i17 >= size) {
                                            wallettransaction3 = null;
                                            break;
                                        }
                                        TL_wallet.walletTransaction wallettransaction4 = arrayList.get(i17);
                                        i17++;
                                        wallettransaction3 = wallettransaction4;
                                        TL_wallet.walletTransaction wallettransaction5 = wallettransactionArr[0];
                                        if (wallettransaction3 == wallettransaction5 || GramWallet.transactionMatches(wallettransaction5, wallettransaction3)) {
                                            break;
                                        }
                                    }
                                    if (wallettransaction3 != null) {
                                        Utilities.Callback callback4 = callback;
                                        wallettransactionArr[0] = wallettransaction3;
                                        callback4.run(wallettransaction3);
                                    }
                                }
                            }
                        };
                        if (wallettransaction2.preview) {
                            GramWallet.getInstance(i8).getTransaction(wallettransaction2.id, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda45
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj) {
                                    WalletActivity.$r8$lambda$hNx4AayJV0gvbD0t85nGTS6Y0LM(wallettransaction2, callback, wallettransactionArr, (TL_wallet.walletTransaction) obj);
                                }
                            });
                        }
                        notificationCenterDelegate = notificationCenterDelegate2;
                    } else {
                        i8 = i;
                        notificationCenterDelegate = null;
                    }
                    final String[] strArr3 = strArr;
                    final boolean[] zArr4 = zArr;
                    r9.addOnAttachStateChangeListener(new AnonymousClass26(callback, wallettransactionArr, notificationCenterDelegate, i8, callback2, newBottomSheetArr, strArr3, zArr4));
                    if (callback3 == null) {
                        int i15 = C2807R.string.WalletSendAmount;
                        TL_wallet.nftItem nftitem2 = wallettransaction2.nft;
                        if (nftitem2 != null) {
                            gramsWithUnit = TextUtils.isEmpty(nftitem2.name) ? LocaleController.getString(C2807R.string.WalletCollectible) : wallettransaction2.nft.name;
                        } else {
                            gramsWithUnit = GramWallet.formatGramsWithUnit(Math.abs(wallettransaction2.amount));
                        }
                        round.setText(LocaleController.formatSpannable(i15, gramsWithUnit));
                        newBottomSheetArr2 = newBottomSheetArr;
                        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda46
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                WalletActivity.m23221$r8$lambda$DsbHavsm26yecMlnBQ2v_Z1g8Y(round, editTextBoldCursor4, callback3, strArr3, zArr4, newBottomSheetArr2, resourcesProvider, view);
                            }
                        });
                    } else {
                        newBottomSheetArr2 = newBottomSheetArr;
                        if (runnable != null) {
                            round.setText(LocaleController.getString(C2807R.string.WalletOpenMyWallet));
                            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda47
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    WalletActivity.$r8$lambda$TURtlLRKYcBEe1E8RldXUoK3txE(runnable, newBottomSheetArr2, view);
                                }
                            });
                        } else {
                            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda36
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    newBottomSheetArr2[0].lambda$new$0();
                                }
                            });
                        }
                    }
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda37
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            newBottomSheetArr2[0].lambda$new$0();
                        }
                    });
                    final NewBottomSheet[] newBottomSheetArr3 = newBottomSheetArr2;
                    final ImageView imageView7 = imageView2;
                    imageView7.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda38
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            WalletActivity.$r8$lambda$QwCYU0_tktsi2Dp0d_GxSKSuFIs(newBottomSheetArr3, resourcesProvider, imageView7, wallettransactionArr, context, i, view);
                        }
                    });
                    return r9;
                }
            } else if (TextUtils.isEmpty(wallettransaction.comment)) {
                f = 11.0f;
            } else {
                SpoilersTextView spoilersTextView2 = new SpoilersTextView(context);
                spoilersTextView2.setTextSize(1, 15.0f);
                f = 11.0f;
                spoilersTextView2.setTextColor(Theme.getColor(i9, resourcesProvider));
                spoilersTextView2.setText(Emoji.replaceEmoji(wallettransaction.comment, spoilersTextView2.getPaint().getFontMetricsInt(), false));
                spoilersTextView2.setTextIsSelectable(true);
                MessageDrawable messageDrawable2 = new MessageDrawable(0, false, false);
                messageDrawable2.shadow = false;
                messageDrawable2.overrideColor = Integer.valueOf(Theme.getColor(Theme.key_wallet_comment, resourcesProvider));
                spoilersTextView2.setBackground(messageDrawable2);
                spoilersTextView2.setPadding(AndroidUtilities.dp(19.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(8.0f));
                linearLayout2.addView(spoilersTextView2, LayoutHelper.createLinear(-2, -2, 1, 32, 16, 32, 0));
            }
            i3 = color;
            i4 = i11;
            imageView2 = imageView4;
            mode = mode2;
            i5 = i2;
        } else {
            i3 = color;
            i4 = i11;
            imageView2 = imageView4;
            mode = mode2;
            i5 = i2;
            f = 11.0f;
        }
        i7 = 1;
        i6 = 44;
        resourcesProvider2 = resourcesProvider;
        scaleType2 = scaleType;
        b2 = -1;
        final SpannableString[] spannableStringArr22 = new SpannableString[i7];
        final TextView[] textViewArr22 = new TextView[i7];
        TableView tableView22 = new TableView(context, resourcesProvider2);
        linearLayout.addView(tableView22, LayoutHelper.createLinear(-1, -2, 14.0f, 0.0f, 14.0f, 0.0f));
        final String[] strArr22 = {wallettransaction.comment};
        final boolean[] zArr32 = {(wallettransaction.comment_encrypted || (z2 && bArr == null)) ? false : true};
        if (callback3 == null) {
        }
        final ButtonWithCounterView round2 = new ButtonWithCounterView(context, resourcesProvider2).setRound();
        round2.setText(LocaleController.getString(C2807R.string.OK));
        r1.addView(round2, LayoutHelper.createLinear(-1, 48, 14.0f, 14.0f, 14.0f, 14.0f));
        final TL_wallet.walletTransaction[] wallettransactionArr2 = {wallettransaction2};
        final TextView[] textViewArr32 = textViewArr;
        final EditTextBoldCursor editTextBoldCursor42 = editTextBoldCursor;
        final TextView textView62 = textView;
        final SpannableString[] spannableStringArr32 = spannableStringArr;
        final int i142 = i3;
        final Theme.ResourcesProvider resourcesProvider42 = resourcesProvider2;
        final TableView tableView32 = tableView;
        final Utilities.Callback callback4 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda43
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WalletActivity.$r8$lambda$A4AuxedaMAAWhinZkDpS2Z6C5jM(r1, textView2, resourcesProvider42, i, textView62, newBottomSheetArr, tableView32, callback3, context, textViewArr32, i142, spannableStringArr32, (TL_wallet.walletTransaction) obj);
            }
        };
        ?? r92 = r1;
        r92.setTag(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                callback4.run(wallettransactionArr2[0]);
            }
        });
        callback4.run(wallettransaction2);
        if (z2) {
        }
        final String[] strArr32 = strArr;
        final boolean[] zArr42 = zArr;
        r92.addOnAttachStateChangeListener(new AnonymousClass26(callback4, wallettransactionArr2, notificationCenterDelegate, i8, callback2, newBottomSheetArr, strArr32, zArr42));
        if (callback3 == null) {
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                newBottomSheetArr2[0].lambda$new$0();
            }
        });
        final NewBottomSheet[] newBottomSheetArr32 = newBottomSheetArr2;
        final ImageView imageView72 = imageView2;
        imageView72.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletActivity.$r8$lambda$QwCYU0_tktsi2Dp0d_GxSKSuFIs(newBottomSheetArr32, resourcesProvider, imageView72, wallettransactionArr2, context, i, view);
            }
        });
        return r92;
    }

    /* JADX INFO: renamed from: $r8$lambda$lNBnQhbWOVgQcKDzPFBPNJyhQ-U, reason: not valid java name */
    public static /* synthetic */ void m23237$r8$lambda$lNBnQhbWOVgQcKDzPFBPNJyhQU(final boolean[] zArr, final NewBottomSheet[] newBottomSheetArr, final Theme.ResourcesProvider resourcesProvider, final SpoilersTextView spoilersTextView, TL_wallet.walletTransaction wallettransaction, int i, String str, View view) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        Utilities.Callback2<String, String> callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda78
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                WalletActivity.$r8$lambda$AXgNdalHEYVxtccO2TWGKcZm0C4(zArr, newBottomSheetArr, resourcesProvider, spoilersTextView, (String) obj, (String) obj2);
            }
        };
        if (wallettransaction.comment_encrypted_preparing) {
            callback2.run(wallettransaction.comment, null);
        } else {
            GramWallet.getInstance(i).decryptTransactionComment(wallettransaction.comment, str, callback2);
        }
    }

    public static /* synthetic */ void $r8$lambda$AXgNdalHEYVxtccO2TWGKcZm0C4(boolean[] zArr, NewBottomSheet[] newBottomSheetArr, Theme.ResourcesProvider resourcesProvider, SpoilersTextView spoilersTextView, String str, String str2) {
        zArr[0] = false;
        if (str2 != null) {
            BulletinFactory.of(newBottomSheetArr[0].topBulletinContainer, resourcesProvider).showForError(str2);
            return;
        }
        spoilersTextView.setPadding(AndroidUtilities.dp(19.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(8.0f));
        SpannableString spannableString = new SpannableString(str);
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags |= 256;
        spannableString.setSpan(new TextStyleSpan(textStyleRun), 0, spannableString.length(), 33);
        spoilersTextView.setText(spannableString);
        spoilersTextView.setTextIsSelectable(true);
        spoilersTextView.setOnClickListener(null);
        ScaleStateListAnimator.reset(spoilersTextView);
        spoilersTextView.reveal();
    }

    public static /* synthetic */ void $r8$lambda$CY9_YFvn4ek6O1eHEVzD5HwkWCQ(TextView[] textViewArr, SpannableString[] spannableStringArr) {
        if (textViewArr[0] == null) {
            return;
        }
        if (spannableStringArr[0] == null) {
            SpannableString spannableString = new SpannableString(LocaleController.getString(C2807R.string.Loading));
            spannableStringArr[0] = spannableString;
            spannableString.setSpan(new LoadingSpan(textViewArr[0], AndroidUtilities.dp(150.0f)), 0, spannableStringArr[0].length(), 33);
        }
        textViewArr[0].setText(spannableStringArr[0]);
    }

    public static /* synthetic */ void $r8$lambda$tb9ewAuX68SGYYsco35Fo2QPXT8(final Runnable[] runnableArr, final TextView[] textViewArr, final int i, final Theme.ResourcesProvider resourcesProvider, TL_wallet.walletTransaction wallettransaction, String[] strArr, boolean[] zArr, byte[] bArr) {
        Runnable runnableEmulateSend;
        Runnable runnable = runnableArr[0];
        if (runnable != null) {
            runnable.run();
        }
        Utilities.Callback2<TL_wallet.walletTransaction, String> callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda85
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                WalletActivity.$r8$lambda$YNw2LvzZmTeJsUlf1nnVPOq0Lus(runnableArr, textViewArr, i, resourcesProvider, (TL_wallet.walletTransaction) obj, (String) obj2);
            }
        };
        GramWallet gramWallet = GramWallet.getInstance(i);
        TL_wallet.nftItem nftitem = wallettransaction.nft;
        TL_wallet.WalletTransactionPeer walletTransactionPeer = wallettransaction.peer;
        if (nftitem != null) {
            runnableEmulateSend = gramWallet.emulateSendNFT(walletTransactionPeer.address, nftitem, strArr[0], callback2);
        } else {
            runnableEmulateSend = gramWallet.emulateSend(walletTransactionPeer.address, wallettransaction.amount, strArr[0], zArr[0] ? bArr : null, callback2);
        }
        runnableArr[0] = runnableEmulateSend;
    }

    public static /* synthetic */ void $r8$lambda$YNw2LvzZmTeJsUlf1nnVPOq0Lus(Runnable[] runnableArr, TextView[] textViewArr, int i, Theme.ResourcesProvider resourcesProvider, TL_wallet.walletTransaction wallettransaction, String str) {
        runnableArr[0] = null;
        TextView textView = textViewArr[0];
        if (textView == null || wallettransaction == null) {
            return;
        }
        long j = wallettransaction.fee;
        if (j > 0) {
            textView.setText(formatTransactionFee(i, j, resourcesProvider));
        }
    }

    public static /* synthetic */ void $r8$lambda$SIJIjEofnn83L8mGyjzJM5loXhI(final boolean[] zArr, final ImageView imageView, final Theme.ResourcesProvider resourcesProvider, HintView2[] hintView2Arr, LinearLayout linearLayout, Context context, FrameLayout frameLayout, String[] strArr, Runnable runnable, Runnable[] runnableArr, Runnable runnable2, View view) {
        zArr[0] = !zArr[0];
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(150L);
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda83
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                WalletActivity.$r8$lambda$f6Iug8gKGHf2cjL0Z1cdqzCI1vs(imageView, atomicBoolean, zArr, resourcesProvider, valueAnimator);
            }
        });
        duration.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        duration.setDuration(420L);
        duration.start();
        HintView2 hintView2 = hintView2Arr[0];
        if (hintView2 != null) {
            hintView2.hide();
            hintView2Arr[0] = null;
        }
        if (linearLayout.getParent() instanceof FrameLayout) {
            FrameLayout frameLayout2 = (FrameLayout) linearLayout.getParent();
            final HintView2 hintView22 = new HintView2(context, 3);
            hintView2Arr[0] = hintView22;
            hintView22.setRoundingWithCornerEffect(false);
            hintView22.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            hintView22.setText(LocaleController.getString(zArr[0] ? C2807R.string.WalletPrivateCommentInfo : C2807R.string.WalletPublicCommentInfo));
            hintView22.setTranslationY(-((linearLayout.getHeight() - frameLayout.getBottom()) + AndroidUtilities.dp(44.0f)));
            hintView22.setJointPx(1.0f, -AndroidUtilities.dp(26.0f));
            hintView22.setRounding(20.0f);
            hintView22.setShadow(AndroidUtilities.dp(12.0f), 0.0f, AndroidUtilities.dp(4.0f), Theme.multAlpha(-16777216, 0.25f));
            frameLayout2.addView(hintView22, LayoutHelper.createFrame(-1, 200, 87));
            hintView22.show();
            hintView22.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda84
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.removeFromParent(hintView22);
                }
            });
        }
        if (TextUtils.isEmpty(strArr[0])) {
            return;
        }
        runnable.run();
        Runnable runnable3 = runnableArr[0];
        if (runnable3 != null) {
            runnable3.run();
            runnableArr[0] = null;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable2);
        AndroidUtilities.runOnUIThread(runnable2, 1000L);
    }

    public static /* synthetic */ void $r8$lambda$f6Iug8gKGHf2cjL0Z1cdqzCI1vs(ImageView imageView, AtomicBoolean atomicBoolean, boolean[] zArr, Theme.ResourcesProvider resourcesProvider, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float fAbs = ((Math.abs(fFloatValue - 0.5f) / 0.5f) * 0.25f) + 0.75f;
        imageView.setScaleX(fAbs);
        imageView.setScaleY(fAbs);
        if (fFloatValue < 0.5f || atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(zArr[0] ? Theme.key_featuredStickers_addButton : Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider), PorterDuff.Mode.SRC_IN));
        imageView.setImageResource(zArr[0] ? C2807R.drawable.wallet_comment_locked : C2807R.drawable.wallet_comment_unlocked);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:198:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01aa  */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v22, types: [android.text.SpannableString] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r1v45, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r1v50, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r1v51, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9, types: [org.telegram.ui.Components.TableView] */
    /* JADX WARN: Type inference failed for: r7v12, types: [android.text.SpannableStringBuilder, java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$A4AuxedaMAAWhinZkDpS2Z6C5jM(LinearLayout linearLayout, TextView textView, final Theme.ResourcesProvider resourcesProvider, final int i, TextView textView2, final NewBottomSheet[] newBottomSheetArr, TableView tableView, final Utilities.Callback3 callback3, final Context context, TextView[] textViewArr, int i2, SpannableString[] spannableStringArr, TL_wallet.walletTransaction wallettransaction) {
        boolean z;
        int i3;
        boolean z2;
        ActionBar actionBar;
        NewBottomSheet newBottomSheet;
        ActionBar actionBar2;
        final TL_wallet.WalletTransactionPeer walletTransactionPeer;
        TableView tableView2;
        long j;
        int i4;
        ?? r14;
        final TL_wallet.WalletTransactionPeer walletTransactionPeer2;
        boolean z3;
        ?? r6;
        long j2;
        boolean z4;
        Runnable runnable;
        boolean z5;
        int color;
        boolean z6;
        SpannableStringBuilder spannableStringBuilder;
        int i5;
        char c2;
        NewBottomSheet newBottomSheet2;
        ActionBar actionBar3;
        CharSequence charSequenceReplace;
        long jAbs = Math.abs(wallettransaction.amount);
        boolean z7 = wallettransaction.incoming;
        long jAbs2 = Math.abs(wallettransaction.fee);
        boolean z8 = wallettransaction.pending || wallettransaction.failed;
        boolean z9 = ((linearLayout.getParent() instanceof View) && (linearLayout.getParent().getParent() instanceof ViewPagerFixed) && ((ViewPagerFixed) linearLayout.getParent().getParent()).getViewPages()[0] != linearLayout.getParent()) ? false : true;
        boolean z10 = wallettransaction.key_change;
        if (z10 || wallettransaction.nft != null) {
            z = z7;
            boolean z11 = z9;
            i3 = 33;
            if (!z10) {
                TL_wallet.nftItem nftitem = wallettransaction.nft;
                if (nftitem != null && z11) {
                    z2 = false;
                    NewBottomSheet newBottomSheet3 = newBottomSheetArr[0];
                    if (newBottomSheet3 != null && (actionBar = newBottomSheet3.actionBar) != null) {
                        actionBar.setTitle(TextUtils.isEmpty(nftitem.name) ? LocaleController.getString(C2807R.string.WalletCollectible) : wallettransaction.nft.name);
                    }
                }
                tableView.clear();
                walletTransactionPeer = wallettransaction.peer;
                if (!(walletTransactionPeer instanceof TL_wallet.walletTransactionPeerUser)) {
                    final TL_wallet.walletTransactionPeerUser wallettransactionpeeruser = (TL_wallet.walletTransactionPeerUser) walletTransactionPeer;
                    final TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(wallettransactionpeeruser.user_id));
                    if (user == null || UserObject.isService(user.id)) {
                        tableView2 = tableView;
                        j = jAbs2;
                        z4 = z2;
                        i4 = i3;
                    } else {
                        String string = LocaleController.getString(z ? C2807R.string.WalletSender : C2807R.string.WalletRecipient);
                        int i6 = i3;
                        long j3 = wallettransactionpeeruser.user_id;
                        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda67
                            @Override // java.lang.Runnable
                            public final void run() {
                                WalletActivity.m23244$r8$lambda$xntOqf8uxj6VrObi1KMy1XKjuc(callback3, newBottomSheetArr, wallettransactionpeeruser);
                            }
                        };
                        String string2 = LocaleController.getString(C2807R.string.WalletSend);
                        if (callback3 != null) {
                            runnable = null;
                            tableView2 = tableView;
                            j = jAbs2;
                            z5 = z2;
                        } else {
                            runnable = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda69
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WalletActivity.m23243$r8$lambda$whUV8CH5kuHGA7KYG7wyWKvXw8(newBottomSheetArr, user);
                                }
                            };
                            j = jAbs2;
                            z5 = z2;
                            tableView2 = tableView;
                        }
                        i4 = i6;
                        tableView2.addRowUser(string, i, j3, runnable2, string2, runnable);
                        z4 = z5;
                    }
                    r14 = z4;
                    if (!TextUtils.isEmpty(wallettransactionpeeruser.domain)) {
                        r14 = z4;
                        if (!TextUtils.isEmpty(wallettransactionpeeruser.address)) {
                            tableView2.addRowLink(LocaleController.getString(C2807R.string.WalletDomain), wallettransactionpeeruser.domain, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda70
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WalletActivity.$r8$lambda$LTQXzSSShgR0T8W8J0bHIfFjvGI(newBottomSheetArr, user, wallettransactionpeeruser);
                                }
                            });
                            r14 = z4;
                        }
                    }
                } else {
                    tableView2 = tableView;
                    j = jAbs2;
                    boolean z12 = z2;
                    i4 = i3;
                    if (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerChannel) {
                        if (MessagesController.getInstance(i).getChat(Long.valueOf(walletTransactionPeer.channel_id)) != null) {
                            tableView2.addRowUser(LocaleController.getString(z ? C2807R.string.WalletSender : C2807R.string.WalletRecipient), i, -walletTransactionPeer.channel_id, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda71
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WalletActivity.$r8$lambda$00ZPwEK_LcPbywUByHbZI8_sXZM(callback3, newBottomSheetArr, walletTransactionPeer);
                                }
                            });
                        }
                        r14 = z12;
                        if (!TextUtils.isEmpty(walletTransactionPeer.domain)) {
                            r14 = z12;
                            if (!TextUtils.isEmpty(walletTransactionPeer.address)) {
                                tableView2.addRowLink(LocaleController.getString(C2807R.string.WalletDomain), walletTransactionPeer.domain, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda72
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WalletActivity.$r8$lambda$rf7tp1PUOs9h558SYDuzerkbC7E(newBottomSheetArr, walletTransactionPeer);
                                    }
                                });
                                r14 = z12;
                            }
                        }
                    } else {
                        r14 = z12;
                        if (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerAddress) {
                            final TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress = (TL_wallet.walletTransactionPeerAddress) walletTransactionPeer;
                            r14 = z12;
                            if (!TextUtils.isEmpty(wallettransactionpeeraddress.domain)) {
                                if (TextUtils.isEmpty(wallettransactionpeeraddress.address)) {
                                    tableView2.addRowLink(LocaleController.getString(z ? C2807R.string.WalletSender : C2807R.string.WalletRecipient), wallettransactionpeeraddress.domain, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda75
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WalletActivity.m23236$r8$lambda$iuN8V0OJl2ku_BYbbGKV4Eo04();
                                        }
                                    });
                                    r14 = z12;
                                } else {
                                    tableView2.addRowLink(LocaleController.getString(z ? C2807R.string.WalletSender : C2807R.string.WalletRecipient), wallettransactionpeeraddress.domain, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda73
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WalletActivity.$r8$lambda$0obHW1qYzi5PgXOEOErIfMQaQyk(newBottomSheetArr, wallettransactionpeeraddress);
                                        }
                                    }, LocaleController.getString(C2807R.string.WalletSend), callback3 != null ? null : new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda74
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            WalletActivity.$r8$lambda$doXWI1vpVAOO6AyJ9H1lxmkz6UM(newBottomSheetArr, wallettransactionpeeraddress);
                                        }
                                    });
                                    r14 = z12;
                                }
                            }
                        }
                    }
                }
                walletTransactionPeer2 = wallettransaction.peer;
                z3 = walletTransactionPeer2 instanceof TL_wallet.walletTransactionPeerUser;
                if (!z3 || (walletTransactionPeer2 instanceof TL_wallet.walletTransactionPeerChannel) || (walletTransactionPeer2 instanceof TL_wallet.walletTransactionPeerAddress)) {
                    TableView tableView3 = tableView2;
                    tableView3.addRowMonospaced(LocaleController.getString(C2807R.string.WalletAddress), formatTransactionAddress(walletTransactionPeer2.address, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda76
                        @Override // java.lang.Runnable
                        public final void run() {
                            BulletinFactory.of(newBottomSheetArr[0].topBulletinContainer, resourcesProvider).createSimpleBulletin(C2807R.raw.copy, LocaleController.getString(C2807R.string.WalletAddressCopiedBulletin)).show(false);
                        }
                    }), 14, null, ((callback3 == null || ((z3 || MessagesController.getInstance(i).getUser(Long.valueOf(walletTransactionPeer2.user_id)) == null || UserObject.isService(walletTransactionPeer2.user_id)) ? r14 : 1) != 0 || !TextUtils.isEmpty(walletTransactionPeer2.domain) || TextUtils.isEmpty(walletTransactionPeer2.address)) ? r14 : 1) != 0 ? LocaleController.getString(C2807R.string.WalletSend) : null, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda77
                        @Override // java.lang.Runnable
                        public final void run() {
                            WalletActivity.m23225$r8$lambda$LlAEd3fuoA3XG9F7YJANUIb92c(newBottomSheetArr, walletTransactionPeer2);
                        }
                    });
                    r6 = tableView3;
                } else {
                    r6 = tableView2;
                }
                if (j <= 0 && wallettransaction.gasless) {
                    ?? spannableStringBuilder2 = new SpannableStringBuilder("x ");
                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.wallet_gram_small, 2);
                    coloredImageSpan.recolorDrawable = r14;
                    coloredImageSpan.setSize(AndroidUtilities.dp(16.0f));
                    coloredImageSpan.translate(0.0f, AndroidUtilities.dp(1.0f));
                    spannableStringBuilder2.setSpan(coloredImageSpan, r14, 1, i4);
                    spannableStringBuilder2.append(LocaleController.getString(C2807R.string.WalletFeePaidByTelegram));
                    final long j4 = j;
                    r6.addRow(LocaleController.getString(C2807R.string.WalletFee), spannableStringBuilder2, "?", new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda68
                        @Override // java.lang.Runnable
                        public final void run() {
                            new AlertDialog.Builder(context, resourcesProvider).setTitle(LocaleController.getString(C2807R.string.WalletNetworkFee)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2807R.string.WalletNetworkFeeInfo, GramWallet.getInstance(i).formatCurrency(j4, true)))).setPositiveButton(LocaleController.getString(C2807R.string.WalletOK), null).show();
                        }
                    });
                } else {
                    j2 = j;
                    if (j <= 0 || wallettransaction.nft != null || wallettransaction.preview) {
                        TextView textView3 = new TextView(context);
                        textViewArr[r14] = textView3;
                        textView3.setGravity(16);
                        textViewArr[r14].setIncludeFontPadding(r14);
                        textViewArr[r14].setTextSize(1, 14.0f);
                        textViewArr[r14].setTextColor(!z8 ? Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider) : i2);
                        if (!wallettransaction.preview && j <= 0) {
                            if (spannableStringArr[r14] == 0) {
                                ?? spannableString = new SpannableString(LocaleController.getString(C2807R.string.Loading));
                                spannableStringArr[r14] = spannableString;
                                spannableString.setSpan(new LoadingSpan(textViewArr[r14], AndroidUtilities.dp(150.0f)), r14, spannableStringArr[r14].length(), i4);
                            }
                            textViewArr[r14].setText(spannableStringArr[r14]);
                        } else {
                            textViewArr[r14].setText(formatTransactionFee(i, j2, resourcesProvider));
                        }
                        r6.addRow(LocaleController.getString(C2807R.string.WalletFee), textViewArr[r14]);
                    }
                }
                if (wallettransaction.date == 0) {
                    r6.addRow(LocaleController.getString(C2807R.string.WalletDate), LocaleController.formatShortDateTime(wallettransaction.date));
                    return;
                }
                return;
            }
            if (z11 && (newBottomSheet = newBottomSheetArr[0]) != null && (actionBar2 = newBottomSheet.actionBar) != null) {
                actionBar2.setTitle(GramWallet.formatGramsWithUnit(GramWallet.formatGramsScaled(jAbs, 0.75f)));
            }
        } else {
            if (z8) {
                color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider);
            } else {
                color = Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider);
            }
            textView.setTextColor(color);
            SpannableStringBuilder gramsScaled = GramWallet.formatGramsScaled(jAbs, 0.75f);
            gramsScaled.insert(0, (CharSequence) (z7 ? "+" : "–"));
            if (z8) {
                z = z7;
            } else {
                z = z7;
                gramsScaled.setSpan(new ForegroundColorSpan(Theme.getColor(z7 ? Theme.key_color_green : Theme.key_windowBackgroundWhiteBlackText, resourcesProvider)), 0, gramsScaled.length(), 33);
            }
            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
            spannableStringBuilder3.append(GramWallet.formatGramsWithUnit(gramsScaled));
            int iIndexOf = TextUtils.indexOf(spannableStringBuilder3, gramsScaled);
            int length = gramsScaled.length() + iIndexOf;
            if (iIndexOf > 0) {
                z6 = z9;
                spannableStringBuilder = gramsScaled;
                i5 = 33;
                spannableStringBuilder3.setSpan(new RelativeSizeSpan(0.75f), 0, iIndexOf, 33);
            } else {
                z6 = z9;
                spannableStringBuilder = gramsScaled;
                i5 = 33;
            }
            if (iIndexOf >= 0 && length < spannableStringBuilder3.length()) {
                spannableStringBuilder3.setSpan(new RelativeSizeSpan(0.75f), length, spannableStringBuilder3.length(), i5);
            }
            textView.setText(spannableStringBuilder3);
            CharSequence currency = GramWallet.getInstance(i).formatCurrency(jAbs);
            if (z8) {
                if (wallettransaction.failed) {
                    charSequenceReplace = LocaleController.getString(C2807R.string.WalletFailed);
                } else {
                    charSequenceReplace = UploadingDotsSpannable.replace(LocaleController.getString(C2807R.string.WalletSending), textView2);
                }
                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(charSequenceReplace);
                i3 = 33;
                c2 = 0;
                spannableStringBuilder4.setSpan(new ForegroundColorSpan(Theme.getColor(wallettransaction.failed ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteBlueText, resourcesProvider)), 0, spannableStringBuilder4.length(), 33);
                textView2.setText(LocaleController.formatSpannable(C2807R.string.WalletTransactionAmountStatus, currency, spannableStringBuilder4));
            } else {
                i3 = 33;
                c2 = 0;
                textView2.setText(currency);
            }
            if (z6 && (newBottomSheet2 = newBottomSheetArr[c2]) != null && (actionBar3 = newBottomSheet2.actionBar) != null) {
                actionBar3.setTitle(GramWallet.formatGramsWithUnit(spannableStringBuilder));
            }
        }
        z2 = false;
        tableView.clear();
        walletTransactionPeer = wallettransaction.peer;
        if (!(walletTransactionPeer instanceof TL_wallet.walletTransactionPeerUser)) {
        }
        walletTransactionPeer2 = wallettransaction.peer;
        z3 = walletTransactionPeer2 instanceof TL_wallet.walletTransactionPeerUser;
        if (z3) {
            if (z3) {
                if (callback3 == null) {
                    TableView tableView32 = tableView2;
                    tableView32.addRowMonospaced(LocaleController.getString(C2807R.string.WalletAddress), formatTransactionAddress(walletTransactionPeer2.address, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda76
                        @Override // java.lang.Runnable
                        public final void run() {
                            BulletinFactory.of(newBottomSheetArr[0].topBulletinContainer, resourcesProvider).createSimpleBulletin(C2807R.raw.copy, LocaleController.getString(C2807R.string.WalletAddressCopiedBulletin)).show(false);
                        }
                    }), 14, null, ((callback3 == null || ((z3 || MessagesController.getInstance(i).getUser(Long.valueOf(walletTransactionPeer2.user_id)) == null || UserObject.isService(walletTransactionPeer2.user_id)) ? r14 : 1) != 0 || !TextUtils.isEmpty(walletTransactionPeer2.domain) || TextUtils.isEmpty(walletTransactionPeer2.address)) ? r14 : 1) != 0 ? LocaleController.getString(C2807R.string.WalletSend) : null, new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda77
                        @Override // java.lang.Runnable
                        public final void run() {
                            WalletActivity.m23225$r8$lambda$LlAEd3fuoA3XG9F7YJANUIb92c(newBottomSheetArr, walletTransactionPeer2);
                        }
                    });
                    r6 = tableView32;
                }
            }
        }
        if (j <= 0) {
            j2 = j;
            if (j <= 0) {
                TextView textView32 = new TextView(context);
                textViewArr[r14] = textView32;
                textView32.setGravity(16);
                textViewArr[r14].setIncludeFontPadding(r14);
                textViewArr[r14].setTextSize(1, 14.0f);
                textViewArr[r14].setTextColor(!z8 ? Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider) : i2);
                if (!wallettransaction.preview) {
                    textViewArr[r14].setText(formatTransactionFee(i, j2, resourcesProvider));
                    r6.addRow(LocaleController.getString(C2807R.string.WalletFee), textViewArr[r14]);
                }
            }
        }
        if (wallettransaction.date == 0) {
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$xntOqf8uxj6VrObi1KM-y1XKjuc, reason: not valid java name */
    public static /* synthetic */ void m23244$r8$lambda$xntOqf8uxj6VrObi1KMy1XKjuc(Utilities.Callback3 callback3, NewBottomSheet[] newBottomSheetArr, TL_wallet.walletTransactionPeerUser wallettransactionpeeruser) {
        if (callback3 != null) {
            return;
        }
        NewBottomSheet newBottomSheet = newBottomSheetArr[0];
        if (newBottomSheet != null) {
            newBottomSheet.lambda$new$0();
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(ChatActivity.of(wallettransactionpeeruser.user_id));
    }

    /* JADX INFO: renamed from: $r8$lambda$whUV8CH5kuHGA-7KYG7wyWKvXw8, reason: not valid java name */
    public static /* synthetic */ void m23243$r8$lambda$whUV8CH5kuHGA7KYG7wyWKvXw8(NewBottomSheet[] newBottomSheetArr, final TLRPC.User user) {
        newBottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda93
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WalletActivity.m23217$r8$lambda$2t62TyAedzhS6aJxpym5QAxlI(user, dialogInterface);
            }
        });
        newBottomSheetArr[0].lambda$new$0();
    }

    /* JADX INFO: renamed from: $r8$lambda$2t62TyA-edzhS6-aJxpym5QAxlI, reason: not valid java name */
    public static /* synthetic */ void m23217$r8$lambda$2t62TyAedzhS6aJxpym5QAxlI(TLRPC.User user, DialogInterface dialogInterface) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(new WalletSendEnterAmount(user));
    }

    public static /* synthetic */ void $r8$lambda$LTQXzSSShgR0T8W8J0bHIfFjvGI(NewBottomSheet[] newBottomSheetArr, final TLRPC.User user, final TL_wallet.walletTransactionPeerUser wallettransactionpeeruser) {
        newBottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda94
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WalletActivity.$r8$lambda$CESXmRT8ODHmVpabNIuX478_Lzo(user, wallettransactionpeeruser, dialogInterface);
            }
        });
        newBottomSheetArr[0].lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$CESXmRT8ODHmVpabNIuX478_Lzo(TLRPC.User user, TL_wallet.walletTransactionPeerUser wallettransactionpeeruser, DialogInterface dialogInterface) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(user != null ? new WalletSendEnterAmount(user) : new WalletSendEnterAmount(wallettransactionpeeruser.address).setRecipientDomain(wallettransactionpeeruser.domain));
    }

    public static /* synthetic */ void $r8$lambda$00ZPwEK_LcPbywUByHbZI8_sXZM(Utilities.Callback3 callback3, NewBottomSheet[] newBottomSheetArr, TL_wallet.WalletTransactionPeer walletTransactionPeer) {
        if (callback3 != null) {
            return;
        }
        NewBottomSheet newBottomSheet = newBottomSheetArr[0];
        if (newBottomSheet != null) {
            newBottomSheet.lambda$new$0();
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(ChatActivity.of(-walletTransactionPeer.channel_id));
    }

    public static /* synthetic */ void $r8$lambda$rf7tp1PUOs9h558SYDuzerkbC7E(NewBottomSheet[] newBottomSheetArr, final TL_wallet.WalletTransactionPeer walletTransactionPeer) {
        newBottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda92
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WalletActivity.m23224$r8$lambda$J0tGtu0xj5vEokeDCrFQLQ5M(walletTransactionPeer, dialogInterface);
            }
        });
        newBottomSheetArr[0].lambda$new$0();
    }

    /* JADX INFO: renamed from: $r8$lambda$J0-tGtu0xj5vE-okeDCrFQLQ5-M, reason: not valid java name */
    public static /* synthetic */ void m23224$r8$lambda$J0tGtu0xj5vEokeDCrFQLQ5M(TL_wallet.WalletTransactionPeer walletTransactionPeer, DialogInterface dialogInterface) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(new WalletSendEnterAmount(walletTransactionPeer.address).setRecipientDomain(walletTransactionPeer.domain));
    }

    public static /* synthetic */ void $r8$lambda$0obHW1qYzi5PgXOEOErIfMQaQyk(NewBottomSheet[] newBottomSheetArr, final TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress) {
        newBottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda89
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WalletActivity.m23227$r8$lambda$NflpA1oAMUqCQPr5t3tQCHeliU(wallettransactionpeeraddress, dialogInterface);
            }
        });
        newBottomSheetArr[0].lambda$new$0();
    }

    /* JADX INFO: renamed from: $r8$lambda$NflpA1oAM-UqCQPr5t3tQCHeliU, reason: not valid java name */
    public static /* synthetic */ void m23227$r8$lambda$NflpA1oAMUqCQPr5t3tQCHeliU(TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress, DialogInterface dialogInterface) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(new WalletSendEnterAmount(wallettransactionpeeraddress.address).setRecipientDomain(wallettransactionpeeraddress.domain));
    }

    public static /* synthetic */ void $r8$lambda$doXWI1vpVAOO6AyJ9H1lxmkz6UM(NewBottomSheet[] newBottomSheetArr, final TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress) {
        newBottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda90
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WalletActivity.$r8$lambda$ixVgokfawiJtqXSGCs7M7DVorLo(wallettransactionpeeraddress, dialogInterface);
            }
        });
        newBottomSheetArr[0].lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$ixVgokfawiJtqXSGCs7M7DVorLo(TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress, DialogInterface dialogInterface) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(new WalletSendEnterAmount(wallettransactionpeeraddress.address).setRecipientDomain(wallettransactionpeeraddress.domain));
    }

    /* JADX INFO: renamed from: $r8$lambda$LlAEd3fuoA3XG9F-7YJANUIb92c, reason: not valid java name */
    public static /* synthetic */ void m23225$r8$lambda$LlAEd3fuoA3XG9F7YJANUIb92c(NewBottomSheet[] newBottomSheetArr, final TL_wallet.WalletTransactionPeer walletTransactionPeer) {
        newBottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda88
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WalletActivity.$r8$lambda$tIQ4_tCmjPPLV0fKC0_ZW_SDaUA(walletTransactionPeer, dialogInterface);
            }
        });
        newBottomSheetArr[0].lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$tIQ4_tCmjPPLV0fKC0_ZW_SDaUA(TL_wallet.WalletTransactionPeer walletTransactionPeer, DialogInterface dialogInterface) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.presentFragment(new WalletSendEnterAmount(walletTransactionPeer.address));
    }

    public static /* synthetic */ void $r8$lambda$hNx4AayJV0gvbD0t85nGTS6Y0LM(TL_wallet.walletTransaction wallettransaction, Utilities.Callback callback, TL_wallet.walletTransaction[] wallettransactionArr, TL_wallet.walletTransaction wallettransaction2) {
        if (wallettransaction2 == null) {
            return;
        }
        wallettransaction2.incoming = wallettransaction.incoming;
        wallettransaction2.peer = wallettransaction.peer;
        wallettransactionArr[0] = wallettransaction2;
        callback.run(wallettransaction2);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletActivity$26, reason: invalid class name */
    public class AnonymousClass26 implements View.OnAttachStateChangeListener {
        final /* synthetic */ int val$currentAccount;
        final /* synthetic */ NotificationCenter.NotificationCenterDelegate val$listener;
        final /* synthetic */ Utilities.Callback2 val$onDismiss;
        final /* synthetic */ NewBottomSheet[] val$sheet;
        final /* synthetic */ TL_wallet.walletTransaction[] val$transaction;
        final /* synthetic */ String[] val$typingComment;
        final /* synthetic */ boolean[] val$typingCommentEncrypted;
        final /* synthetic */ Utilities.Callback val$update;

        public AnonymousClass26(Utilities.Callback callback, TL_wallet.walletTransaction[] wallettransactionArr, NotificationCenter.NotificationCenterDelegate notificationCenterDelegate, int i, Utilities.Callback2 callback2, NewBottomSheet[] newBottomSheetArr, String[] strArr, boolean[] zArr) {
            this.val$update = callback;
            this.val$transaction = wallettransactionArr;
            this.val$listener = notificationCenterDelegate;
            this.val$currentAccount = i;
            this.val$onDismiss = callback2;
            this.val$sheet = newBottomSheetArr;
            this.val$typingComment = strArr;
            this.val$typingCommentEncrypted = zArr;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.val$update.run(this.val$transaction[0]);
            if (this.val$listener != null) {
                NotificationCenter.getInstance(this.val$currentAccount).addObserver(this.val$listener, NotificationCenter.walletUpdate);
                NotificationCenter.getInstance(this.val$currentAccount).addObserver(this.val$listener, NotificationCenter.walletTransactionsUpdate);
            }
            final Utilities.Callback2 callback2 = this.val$onDismiss;
            if (callback2 != null) {
                NewBottomSheet newBottomSheet = this.val$sheet[0];
                final String[] strArr = this.val$typingComment;
                final boolean[] zArr = this.val$typingCommentEncrypted;
                newBottomSheet.setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$26$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback2.run(strArr[0], Boolean.valueOf(zArr[0]));
                    }
                });
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (this.val$listener != null) {
                NotificationCenter.getInstance(this.val$currentAccount).removeObserver(this.val$listener, NotificationCenter.walletUpdate);
                NotificationCenter.getInstance(this.val$currentAccount).removeObserver(this.val$listener, NotificationCenter.walletTransactionsUpdate);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$DsbHavsm26yecMlnBQ2v_Z1g-8Y, reason: not valid java name */
    public static /* synthetic */ void m23221$r8$lambda$DsbHavsm26yecMlnBQ2v_Z1g8Y(final ButtonWithCounterView buttonWithCounterView, EditTextBoldCursor editTextBoldCursor, Utilities.Callback3 callback3, String[] strArr, boolean[] zArr, final NewBottomSheet[] newBottomSheetArr, final Theme.ResourcesProvider resourcesProvider, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        if (editTextBoldCursor != null && editTextBoldCursor.getText().toString().getBytes(StandardCharsets.UTF_8).length > 960) {
            AndroidUtilities.shakeViewSpring(editTextBoldCursor);
        } else {
            buttonWithCounterView.setLoading(true);
            callback3.run(strArr[0], Boolean.valueOf(zArr[0]), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda79
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    WalletActivity.$r8$lambda$74yCgXEDuTY0jji90mq2pUd8430(buttonWithCounterView, newBottomSheetArr, resourcesProvider, (String) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$74yCgXEDuTY0jji90mq2pUd8430(ButtonWithCounterView buttonWithCounterView, NewBottomSheet[] newBottomSheetArr, Theme.ResourcesProvider resourcesProvider, String str) {
        buttonWithCounterView.setLoading(false);
        if (!TextUtils.isEmpty(str)) {
            BulletinFactory.of(newBottomSheetArr[0].topBulletinContainer, resourcesProvider).showForError(str);
        } else {
            newBottomSheetArr[0].lambda$new$0();
        }
    }

    public static /* synthetic */ void $r8$lambda$TURtlLRKYcBEe1E8RldXUoK3txE(Runnable runnable, NewBottomSheet[] newBottomSheetArr, View view) {
        runnable.run();
        newBottomSheetArr[0].lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$QwCYU0_tktsi2Dp0d_GxSKSuFIs(NewBottomSheet[] newBottomSheetArr, final Theme.ResourcesProvider resourcesProvider, ImageView imageView, final TL_wallet.walletTransaction[] wallettransactionArr, final Context context, final int i, View view) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(newBottomSheetArr[0].getContainer(), resourcesProvider, imageView);
        if (!TextUtils.isEmpty(wallettransactionArr[0].tx_hash)) {
            itemOptionsMakeOptions.add(C2807R.drawable.msg_search, LocaleController.getString(C2807R.string.WalletViewInExplorer), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda80
                @Override // java.lang.Runnable
                public final void run() {
                    WalletActivity.openTransactionInExplorer(context, i, wallettransactionArr[0].tx_hash);
                }
            });
        }
        itemOptionsMakeOptions.add(C2807R.drawable.wallet_help, LocaleController.getString(C2807R.string.WalletWhatIsGram), new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                WalletActivity.openWalletHowItWorksAlert(context, resourcesProvider);
            }
        });
        itemOptionsMakeOptions.translate(0.0f, -AndroidUtilities.dp(48.0f));
        itemOptionsMakeOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void openTransactionInExplorer(Context context, int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strConcat = MessagesController.getInstance(i).tonBlockchainExplorerUrl;
        if (TextUtils.isEmpty(strConcat)) {
            strConcat = "https://tonviewer.com/";
        } else if (!strConcat.endsWith("/")) {
            strConcat = strConcat.concat("/");
        }
        Browser.openUrlInSystemBrowser(context, strConcat + "transaction/" + Uri.encode(str));
    }

    public static CharSequence formatTransactionFee(int i, long j, Theme.ResourcesProvider resourcesProvider) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("G ");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.wallet_gram_small, 2);
        coloredImageSpan.recolorDrawable = false;
        coloredImageSpan.setSize(AndroidUtilities.dp(16.0f));
        spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
        spannableStringBuilder.append((CharSequence) MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(new BigDecimal(j).movePointLeft(9)).toPlainString());
        CharSequence currency = GramWallet.getInstance(i).formatCurrency(j, true);
        if (!TextUtils.isEmpty(currency)) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) "  ~\u2009").append(currency);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider)), length, spannableStringBuilder.length(), 33);
        }
        return spannableStringBuilder;
    }

    public static CharSequence formatTransactionAddress(final String str, final Runnable runnable) {
        if (TextUtils.isEmpty(str)) {
            return LocaleController.getString(C2807R.string.WalletUnknown);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i > 0 && i % 4 == 0) {
                spannableStringBuilder.append(i % 16 == 0 ? '\n' : ' ');
                spannableStringBuilder.length();
            }
            spannableStringBuilder.append(str.charAt(i));
            if (i % 4 == 3) {
                spannableStringBuilder.length();
            }
        }
        if (runnable != null) {
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Wallet.WalletActivity.27
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    AndroidUtilities.addToClipboard(str);
                    runnable.run();
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setUnderlineText(false);
                }
            }, 0, spannableStringBuilder.length(), 33);
        }
        return spannableStringBuilder;
    }

    private CharSequence loading(int i) {
        CharSequence[] charSequenceArr = this.cachedLoading;
        if (charSequenceArr[i] == null) {
            charSequenceArr[i] = new SpannableString("l");
            LoadingSpan loadingSpan = new LoadingSpan(i == 0 ? this.balanceView : this.usdBalanceView, AndroidUtilities.dp(i == 0 ? 100.0f : 50.0f));
            loadingSpan.setColors(Theme.multAlpha(-1, 0.45f), Theme.multAlpha(-1, 0.2f));
            CharSequence charSequence = this.cachedLoading[i];
            ((SpannableString) charSequence).setSpan(loadingSpan, 0, charSequence.length(), 33);
        }
        return this.cachedLoading[i];
    }

    private void update() {
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        updateWalletTopPanel();
        this.sendButton.setEnabled(gramWallet.isReady() && gramWallet.canSend());
        if (!gramWallet.isReady()) {
            this.balanceView.setText(loading(0));
            this.usdBalanceView.setText(loading(1));
            return;
        }
        updateBalance(gramWallet.getBalance());
        GramWallet.CollectiblesList collectiblesList = this.nftsList;
        if (collectiblesList != null && !collectiblesList.isLoaded() && !this.nftsList.isLoading() && this.nftsList.getError() == null) {
            this.nftsList.load();
        }
        String address = gramWallet.getAddress();
        if (TextUtils.isEmpty(address)) {
            return;
        }
        this.card.setCardNumber(formatAddress(address.toUpperCase()));
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (i2 != this.currentAccount) {
            return;
        }
        if (i == NotificationCenter.walletUpdate && this.balanceView != null) {
            update();
            Iterator<Runnable> it = this.updateRunnables.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            return;
        }
        if (i == NotificationCenter.starBalanceUpdated) {
            updateWalletTopPanel();
            return;
        }
        if (i == NotificationCenter.didSetOrRemoveTwoStepPassword) {
            if (objArr.length > 0) {
                Object obj = objArr[0];
                if (obj instanceof TL_account.Password) {
                    updatePasswordState((TL_account.Password) obj);
                    return;
                }
            }
            requestPassword();
            return;
        }
        if (i != NotificationCenter.walletTransactionsUpdate || objArr.length <= 0) {
            return;
        }
        Object obj2 = objArr[0];
        GramWallet.TransactionsList transactionsList = this.transactionsList;
        if (obj2 != transactionsList || (universalRecyclerView = this.listView) == null || universalRecyclerView.adapter == null) {
            return;
        }
        if (transactionsList.transactions.isEmpty() && !this.transactionsList.isEndReached()) {
            this.transactionsList.load();
        }
        updateHistory(true);
    }

    private void updateBalance(long j) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (this.gramIcon == null) {
            this.gramIcon = new SpannableString("G");
            ColoredImageSpan coloredImageSpanCreateBalanceDiamondSpan = this.card.createBalanceDiamondSpan();
            this.balanceGramIconSpan = coloredImageSpanCreateBalanceDiamondSpan;
            CharSequence charSequence = this.gramIcon;
            ((SpannableString) charSequence).setSpan(coloredImageSpanCreateBalanceDiamondSpan, 0, charSequence.length(), 33);
        }
        spannableStringBuilder.append(this.gramIcon);
        spannableStringBuilder.append((CharSequence) " ");
        spannableStringBuilder.append((CharSequence) WalletCardComponent.formatBalance(j));
        spannableStringBuilder.append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.GramCurrency));
        if (this.balanceGramLabelSpan == null) {
            this.balanceGramLabelSpan = new BalanceLabelSpan(-9577217);
        }
        spannableStringBuilder.setSpan(this.balanceGramLabelSpan, length, spannableStringBuilder.length(), 33);
        this.balanceView.setText(spannableStringBuilder);
        CharSequence currency = GramWallet.getInstance(this.currentAccount).formatCurrency(j);
        boolean zIsEmpty = TextUtils.isEmpty(currency);
        AnimatedTextView animatedTextView = this.usdBalanceView;
        if (zIsEmpty) {
            animatedTextView.setText(loading(1));
        } else {
            animatedTextView.setText(currency);
        }
        updateBalanceTransitionColors(this.balanceTransitionProgress);
    }

    public static class BalanceLabelSpan extends CharacterStyle implements UpdateAppearance {
        private int color;

        private BalanceLabelSpan(int i) {
            this.color = i;
        }

        public void setColor(int i) {
            this.color = i;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(this.color);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String formatAddress(String str) {
        StringBuilder sb = new StringBuilder(str.length() + (str.length() / 4));
        for (int i = 0; i < str.length(); i++) {
            if (i > 0 && i % 4 == 0) {
                sb.append(' ');
            }
            sb.append(str.charAt(i));
        }
        return sb.toString();
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
    private FrameLayout createWalletNoticeRow(TextView textView, final Runnable runnable) {
        Context context = textView.getContext();
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(14.0f));
        frameLayout.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 2));
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(19);
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 3, 0.0f, 0.0f, 42.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2807R.drawable.attach_arrow_right);
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2), PorterDuff.Mode.SRC_IN));
        frameLayout.addView(imageView, LayoutHelper.createFrame(-2, -2, 21));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda60
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        textView.setDuplicateParentStateEnabled(true);
        ScaleStateListAnimator.apply(textView, 0.02f, 1.2f);
        this.walletTopPanel.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
        return frameLayout;
    }

    private CharSequence formatWalletNoticeBalance(long j, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((char) 65532);
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_gram_16);
        coloredImageSpan.recolorDrawable = false;
        int themedColor = getThemedColor(Theme.key_featuredStickers_addButton);
        spannableStringBuilder.setSpan(coloredImageSpan, length, spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) " ");
        int length2 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) GramWallet.formatGrams(j));
        spannableStringBuilder.setSpan(new ForegroundColorSpan(themedColor), length2, spannableStringBuilder.length(), 33);
        return LocaleController.formatSpannable(i, spannableStringBuilder);
    }

    private void updateWalletTopPanel() {
        if (this.walletTopPanel == null) {
            return;
        }
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        boolean z = this.walletTopPanel.isAttachedToWindow() && this.walletTopPanel.isLaidOut();
        this.walletTopPanel.setViewVisible(this.waltButton, gramWallet.hasWaltBalance(), z);
        long balanceOfPreviousWallets = gramWallet.getBalanceOfPreviousWallets();
        boolean z2 = balanceOfPreviousWallets > 500000000;
        if (z2) {
            this.oldWalletsButtonText.setText(formatWalletNoticeBalance(balanceOfPreviousWallets, C2807R.string.WalletOldWalletsBalance));
        }
        this.walletTopPanel.setViewVisible(this.oldWalletsButton, z2, z);
        long j = StarsController.getTonInstance(this.currentAccount).getBalance().amount;
        boolean z3 = j > 500000000;
        if (z3) {
            this.gramEarningsButtonText.setText(formatWalletNoticeBalance(j, C2807R.string.WalletGramEarningsBalance));
        }
        this.walletTopPanel.setViewVisible(this.gramEarningsButton, z3, z);
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        updateWalletTopPanel();
        arrayList.add(UItem.asCustomShadow(this.walletTopPanelContainer));
        this.cardItemPosition = arrayList.size();
        arrayList.add(UItem.asCustomShadow(this.cardShadowView, true));
        arrayList.add(UItem.asCustomShadow(this.buttonsContainer));
        boolean zShouldShowLearnCells = shouldShowLearnCells();
        this.showingLearnCells = zShouldShowLearnCells;
        if (zShouldShowLearnCells) {
            arrayList.add(LearnCell.Factory.of(C2807R.drawable.wallet_learn_instant, LocaleController.getString(C2807R.string.WalletSendInstantly), LocaleController.getString(C2807R.string.WalletSendInstantlyInfo)));
            arrayList.add(LearnCell.Factory.of(C2807R.drawable.wallet_learn_fees, LocaleController.getString(C2807R.string.WalletNoFees), LocaleController.getString(C2807R.string.WalletNoFeesInfo)));
            arrayList.add(LearnCell.Factory.of(C2807R.drawable.wallet_learn_verified, LocaleController.getString(C2807R.string.WalletBlockchainVerified), LocaleController.getString(C2807R.string.WalletBlockchainVerifiedInfo)));
            arrayList.add(UItem.asCustomShadow(this.tosSpacer));
        } else if (this.historyLayout != null) {
            if (this.loadedPassword && !this.hasPassword && gramWallet.getBalance() > 500000000) {
                arrayList.add(UItem.asCustom(this.protectAccountContainer).setTransparent(true));
            }
            arrayList.add(UItem.asFullscreenCustom(this.historyLayout, 0, true).setTransparent(true));
        }
        LinkSpanDrawable.LinksTextView linksTextView = this.tosText;
        if (linksTextView != null) {
            this.termsVisible = false;
            linksTextView.animate().cancel();
            this.tosText.setAlpha(0.0f);
            this.tosText.setVisibility(4);
        }
    }

    private void requestPassword() {
        getConnectionsManager().sendRequestTyped(new TL_account.getPassword(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestPassword$89((TL_account.Password) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestPassword$89(TL_account.Password password, TLRPC.TL_error tL_error) {
        if (password != null) {
            updatePasswordState(password);
        }
    }

    private void updatePasswordState(TL_account.Password password) {
        UniversalAdapter universalAdapter;
        this.loadedPassword = true;
        this.hasPassword = password.has_password;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillCollectibles(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        String str;
        GramWallet.CollectiblesList collectiblesList = this.nftsList;
        if (collectiblesList == null) {
            return;
        }
        ArrayList<TL_wallet.nftItem> arrayList2 = collectiblesList.collectibles;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            TL_wallet.nftItem nftitem = arrayList2.get(i);
            i++;
            TL_wallet.nftItem nftitem2 = nftitem;
            if (this.collectibleQuery.isEmpty() || ((str = nftitem2.name) != null && str.toLowerCase(Locale.ROOT).contains(this.collectibleQuery))) {
                if (nftitem2.gift != null) {
                    arrayList.add(WalletGiftCell.Factory.of(nftitem2, this.giftStickers));
                } else {
                    arrayList.add(CollectibleCell.Factory.of(nftitem2).setSpanCount(1));
                }
            }
        }
        if (arrayList.isEmpty() && !this.collectibleQuery.isEmpty() && !this.nftsList.isLoading() && this.nftsList.isEndReached()) {
            arrayList.add(UItem.asGraySection(LocaleController.getString(C2807R.string.NoResult)));
        }
        if (this.nftsList.isLoading()) {
            for (int i2 = 0; i2 < 3; i2++) {
                arrayList.add(UItem.asFlicker((-1) - i2, 35).setSpanCount(1));
            }
        } else if (this.nftsList.getError() != null) {
            arrayList.add(UItem.asButton(-10001, LocaleController.getString(C2807R.string.Retry)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillTransactions(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        universalAdapter.whiteSectionStart();
        GramWallet.TransactionsList transactionsList = this.transactionsList;
        boolean z = (transactionsList == null || transactionsList.allTransactions.isEmpty()) ? false : true;
        if (z) {
            for (int i = 0; i < this.transactionsList.allTransactions.size(); i++) {
                arrayList.add(TransactionCell.Factory.of(this.transactionsList.allTransactions.get(i), this.transactionsList.addressFormatter));
            }
        }
        GramWallet.TransactionsList transactionsList2 = this.transactionsList;
        if (transactionsList2 != null && (transactionsList2.isLoading() || !this.transactionsList.hasEndReached())) {
            arrayList.add(UItem.asFlicker(-1, 37));
            arrayList.add(UItem.asFlicker(-2, 37));
            arrayList.add(UItem.asFlicker(-3, 37));
        }
        universalAdapter.whiteSectionEnd();
        if (z) {
            long j = getMessagesController().config.walletTransferMinNanos.get();
            if (j > 0) {
                arrayList.add(UItem.asShadow(LocaleController.formatSpannable(C2807R.string.WalletHiddenTransactions, GramWallet.formatGramsWithUnit(j))));
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.post(new WalletActivity$$ExternalSyntheticLambda7(this));
        }
        GramWallet.getInstance(this.currentAccount).invalidateState();
        if (this.nftsList != null && GramWallet.getInstance(this.currentAccount).isReady()) {
            this.nftsList.invalidate();
        }
        update();
        if (this.listView != null) {
            updateHistory(true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        WalletCard2DMaterial.prewarm(ApplicationLoader.applicationContext);
        getNotificationCenter().addObserver(this, NotificationCenter.walletUpdate);
        getNotificationCenter().addObserver(this, NotificationCenter.starBalanceUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.walletTransactionsUpdate);
        getNotificationCenter().addObserver(this, NotificationCenter.didSetOrRemoveTwoStepPassword);
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        GramWallet.CollectiblesList collectibles = gramWallet.getCollectibles();
        this.nftsList = collectibles;
        collectibles.subscribe(this.onNftsChanged);
        Runnable runnable = this.cancelListen;
        if (runnable != null) {
            runnable.run();
        }
        this.cancelListen = gramWallet.listen();
        requestPassword();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        destroyScanOverlay();
        AndroidUtilities.cancelRunOnUIThread(this.hideCardFloat);
        ValueAnimator valueAnimator = this.cardFloatAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        WalletGiftStickers walletGiftStickers = this.giftStickers;
        if (walletGiftStickers != null) {
            walletGiftStickers.dispose();
        }
        WalletCardComponent walletCardComponent = this.card;
        if (walletCardComponent != null) {
            walletCardComponent.setOnFrontContentPresented(null);
        }
        this.balanceReturningToCard = false;
        cancelHistoryTabsAnimation();
        GramWallet.CollectiblesList collectiblesList = this.nftsList;
        if (collectiblesList != null) {
            collectiblesList.unsubscribe(this.onNftsChanged);
        }
        stopCardOverscrollTracking();
        WalletHeaderSnapHelper walletHeaderSnapHelper = this.headerSnapHelper;
        if (walletHeaderSnapHelper != null) {
            walletHeaderSnapHelper.attachToRecyclerView(null);
        }
        getNotificationCenter().removeObserver(this, NotificationCenter.walletUpdate);
        getNotificationCenter().removeObserver(this, NotificationCenter.starBalanceUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.walletTransactionsUpdate);
        getNotificationCenter().removeObserver(this, NotificationCenter.didSetOrRemoveTwoStepPassword);
        AndroidUtilities.removeFromParent(this.balanceOverlay);
        GramWallet.TransactionsList transactionsList = this.transactionsList;
        if (transactionsList != null) {
            transactionsList.cancel();
        }
        super.onFragmentDestroy();
        Runnable runnable = this.cancelListen;
        if (runnable != null) {
            runnable.run();
            this.cancelListen = null;
        }
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        GramWallet.CollectiblesList collectiblesList;
        Object obj = uItem.object;
        if (obj instanceof TL_wallet.nftItem) {
            openWalletCollectible((TL_wallet.nftItem) obj);
            return;
        }
        if (uItem.id == -10001 && (collectiblesList = this.nftsList) != null) {
            collectiblesList.load();
        } else if (obj instanceof TL_wallet.walletTransaction) {
            openTransactionSheet(getContext(), this.currentAccount, (TL_wallet.walletTransaction) uItem.object, null, null, getResourceProvider());
        }
    }

    public void openWalletCollectible(final TL_wallet.nftItem nftitem) {
        TL_stars.StarGift starGift = nftitem.gift;
        if (starGift instanceof TL_stars.TL_starGiftUnique) {
            final TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift;
            StarGiftSheet walletCollectible = new StarGiftSheet(getContext(), this.currentAccount, 0L, getResourceProvider()).setWalletCollectible(nftitem);
            if (this.giftStickers != null) {
                walletCollectible.setWalletColorDelegate(new StarGiftSheet.WalletColorDelegate() { // from class: org.telegram.ui.Wallet.WalletActivity.28
                    @Override // org.telegram.ui.Stars.StarGiftSheet.WalletColorDelegate
                    public boolean isAllowed() {
                        return WalletGiftStickers.isCardBgGift(((BaseFragment) WalletActivity.this).currentAccount, tL_starGiftUnique.slug);
                    }

                    @Override // org.telegram.ui.Stars.StarGiftSheet.WalletColorDelegate
                    public boolean isApplied() {
                        return WalletActivity.this.giftStickers != null && WalletActivity.this.giftStickers.isColorApplied(nftitem);
                    }

                    @Override // org.telegram.ui.Stars.StarGiftSheet.WalletColorDelegate
                    public void toggle() {
                        if (WalletActivity.this.giftStickers != null) {
                            WalletActivity.this.giftStickers.toggleColor(nftitem);
                        }
                    }
                });
                walletCollectible.setWalletCardDelegate(new StarGiftSheet.WalletCardDelegate() { // from class: org.telegram.ui.Wallet.WalletActivity.29
                    @Override // org.telegram.ui.Stars.StarGiftSheet.WalletCardDelegate
                    public boolean isOnCard() {
                        return WalletActivity.this.giftStickers != null && WalletActivity.this.giftStickers.isOnCard(nftitem);
                    }

                    @Override // org.telegram.ui.Stars.StarGiftSheet.WalletCardDelegate
                    public void toggle() {
                        if (WalletActivity.this.giftStickers != null) {
                            WalletActivity.this.giftStickers.toggle(nftitem);
                        }
                    }
                });
            }
            showDialog(walletCollectible.set(tL_starGiftUnique.slug, tL_starGiftUnique, null));
            return;
        }
        openCollectibleSheet(getContext(), nftitem, getResourceProvider());
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        WalletGiftStickers walletGiftStickers;
        if (!(view instanceof WalletGiftCell) || (walletGiftStickers = this.giftStickers) == null) {
            return false;
        }
        walletGiftStickers.showMenu((WalletGiftCell) view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Typeface getWalletAddressTypeface(Context context) {
        if (walletAddressTypeface == null) {
            if (Build.VERSION.SDK_INT >= 26) {
                FontUtils$$ExternalSyntheticApiModelOutline1.m298m();
                walletAddressTypeface = FontUtils$$ExternalSyntheticApiModelOutline0.m297m(context.getAssets(), "fonts/rmono_var.ttf").setFontVariationSettings("'wght' 500").setWeight(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN).build();
            } else {
                walletAddressTypeface = AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO);
            }
        }
        return walletAddressTypeface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static QrCodeLayer.Code createWalletQrCode(String str) {
        return QrCodeLayer.build("ton://transfer/" + str, 768, ErrorCorrectionLevel.H, 1.0f, new ColorDrawable(0));
    }

    public static class WalletQrCodeView extends View {
        private final QrCodeLayer layer;
        private QrCodeLayer.Code pendingCode;
        private final Runnable startIntro;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            QrCodeLayer.Code code = this.pendingCode;
            if (code == null) {
                return;
            }
            this.layer.assemble(code);
            this.layer.setBuildOverride(0.0f);
            this.pendingCode = null;
            invalidate();
        }

        public WalletQrCodeView(Context context, QrCodeLayer.Code code) {
            super(context);
            QrCodeLayer qrCodeLayer = new QrCodeLayer();
            this.layer = qrCodeLayer;
            this.startIntro = new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$WalletQrCodeView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            };
            qrCodeLayer.setColor(-16777216);
            this.pendingCode = code;
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.pendingCode != null) {
                postDelayed(this.startIntro, 200L);
            }
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            removeCallbacks(this.startIntro);
            this.startIntro.run();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            this.layer.draw(canvas, 0.0f, 0.0f, getWidth());
            if (this.layer.isAnimating()) {
                invalidate();
            }
        }
    }

    public static class WalletQrView extends FrameLayout {
        private final FrameLayout backFace;
        private final TextView copyButton;
        private ValueAnimator flipAnimator;
        private boolean flipInProgress;
        private final FrameLayout frontFace;
        private Runnable onCopyAddressListener;
        private final FrameLayout qrCard;
        private final TextView showQrButton;
        private boolean showingAddress;

        public WalletQrView(Context context, String str) {
            super(context);
            addView(new AddressRingView(context, str), LayoutHelper.createFrame(-1, -1, 17));
            FrameLayout frameLayout = new FrameLayout(context);
            this.qrCard = frameLayout;
            frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), -1));
            frameLayout.setCameraDistance(AndroidUtilities.dp(8000.0f));
            addView(frameLayout, LayoutHelper.createFrame(Opcodes.REM_INT_LIT16, 244.0f, 49, 0.0f, 22.0f, 0.0f, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.frontFace = frameLayout2;
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -1.0f));
            FrameLayout frameLayout3 = new FrameLayout(context);
            frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(164, 164.0f, 49, 0.0f, 24.0f, 0.0f, 0.0f));
            QrCodeLayer.Code codeCreateWalletQrCode = WalletActivity.createWalletQrCode(str);
            frameLayout3.addView(new WalletQrCodeView(context, codeCreateWalletQrCode), LayoutHelper.createFrame(-1, -1.0f));
            float fLogoShare = QrCodeLayer.logoShare(codeCreateWalletQrCode);
            if (fLogoShare > 0.0f) {
                if (WalletQrDiamond.isStatic(context)) {
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    imageView.setImageResource(C2807R.drawable.mini_gram_72);
                    int iRound = Math.round(fLogoShare * 164.0f);
                    frameLayout3.addView(imageView, LayoutHelper.createFrame(iRound, iRound, 17));
                } else {
                    int iRound2 = Math.round(fLogoShare * 164.0f * 1.35f);
                    frameLayout3.addView(new WalletQrDiamond(context), LayoutHelper.createFrame(iRound2, iRound2, 17));
                }
            }
            TextView textView = new TextView(context);
            this.copyButton = textView;
            textView.setText(LocaleController.getString(C2807R.string.WalletCopyAddress));
            textView.setTextColor(-15556886);
            textView.setTextSize(1, 14.0f);
            textView.setGravity(17);
            textView.setCompoundDrawablePadding(AndroidUtilities.dp(4.0f));
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(12.0f), 0);
            textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(18.0f), -984578, -1903620));
            Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.wallet_copy).mutate();
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-15556886, mode));
            drawableMutate.setBounds(0, 0, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f));
            textView.setCompoundDrawables(drawableMutate, null, null, null);
            ScaleStateListAnimator.apply(textView);
            frameLayout2.addView(textView, LayoutHelper.createFrame(-2, 28.0f, 49, 0.0f, 202.0f, 0.0f, 0.0f));
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.backFace = frameLayout4;
            frameLayout4.setVisibility(4);
            frameLayout4.setRotationY(180.0f);
            frameLayout.addView(frameLayout4, LayoutHelper.createFrame(-1, -1.0f));
            TextView textView2 = new TextView(context);
            textView2.setText(createAddressText(str));
            textView2.setTextColor(-16777216);
            textView2.setTextSize(1, 18.0f);
            textView2.setTypeface(WalletActivity.getWalletAddressTypeface(context));
            textView2.setGravity(17);
            textView2.setIncludeFontPadding(false);
            textView2.setMaxLines(4);
            textView2.setLineSpacing(0.0f, 1.0f);
            frameLayout4.addView(textView2, LayoutHelper.createFrame(-1, 112.0f, 55, 8.0f, 32.0f, 8.0f, 0.0f));
            TextView textView3 = new TextView(context);
            textView3.setText(LocaleController.getString(C2807R.string.WalletAddressCopiedShort));
            textView3.setTextColor(-15556886);
            textView3.setTextSize(1, 14.0f);
            textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView3.setGravity(17);
            textView3.setCompoundDrawablePadding(AndroidUtilities.dp(3.0f));
            Drawable drawableMutate2 = context.getResources().getDrawable(C2807R.drawable.msg_text_check).mutate();
            drawableMutate2.setColorFilter(new PorterDuffColorFilter(-15556886, mode));
            drawableMutate2.setBounds(0, 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            textView3.setCompoundDrawables(drawableMutate2, null, null, null);
            frameLayout4.addView(textView3, LayoutHelper.createFrame(-2, 28.0f, 49, 0.0f, 149.0f, 0.0f, 0.0f));
            TextView textView4 = new TextView(context);
            this.showQrButton = textView4;
            textView4.setText(LocaleController.getString(C2807R.string.WalletShowMyQR));
            textView4.setTextColor(-15556886);
            textView4.setTextSize(1, 14.0f);
            textView4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView4.setGravity(17);
            textView4.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
            textView4.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(18.0f), -984578, -1903620));
            ScaleStateListAnimator.apply(textView4);
            frameLayout4.addView(textView4, LayoutHelper.createFrame(-2, 28.0f, 49, 0.0f, 202.0f, 0.0f, 0.0f));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$WalletQrView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            };
            frameLayout3.setOnClickListener(onClickListener);
            textView.setOnClickListener(onClickListener);
            textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$WalletQrView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.showingAddress || this.flipInProgress) {
                return;
            }
            Runnable runnable = this.onCopyAddressListener;
            if (runnable != null) {
                runnable.run();
            }
            setShowingAddress(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            setShowingAddress(false);
        }

        public void setOnCopyAddressListener(Runnable runnable) {
            this.onCopyAddressListener = runnable;
        }

        private void setShowingAddress(boolean z) {
            if (this.showingAddress == z || this.flipInProgress) {
                return;
            }
            this.flipInProgress = true;
            this.showingAddress = z;
            this.qrCard.setLayerType(2, null);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.qrCard.getRotationY(), z ? 180.0f : 0.0f);
            this.flipAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(420L);
            this.flipAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.flipAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActivity$WalletQrView$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setShowingAddress$2(valueAnimator);
                }
            });
            this.flipAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletActivity.WalletQrView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    WalletQrView.this.flipInProgress = false;
                    WalletQrView.this.flipAnimator = null;
                    WalletQrView.this.qrCard.setLayerType(0, null);
                }
            });
            this.flipAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setShowingAddress$2(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.qrCard.setRotationY(fFloatValue);
            boolean z = fFloatValue > 90.0f;
            this.frontFace.setVisibility(z ? 4 : 0);
            this.backFace.setVisibility(z ? 0 : 4);
        }

        private static CharSequence createAddressText(String str) {
            String strReplace = str.replace(" ", _UrlKt.FRAGMENT_ENCODE_SET);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            int i = 0;
            int i2 = 0;
            while (i < strReplace.length()) {
                if (i2 > 0) {
                    spannableStringBuilder.append(i2 % 3 == 0 ? '\n' : ' ');
                }
                int length = spannableStringBuilder.length();
                int i3 = i + 4;
                spannableStringBuilder.append((CharSequence) strReplace, i, Math.min(i3, strReplace.length()));
                if ((i2 & 1) != 0) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(-7434605), length, spannableStringBuilder.length(), 33);
                }
                i2++;
                i = i3;
            }
            return spannableStringBuilder;
        }
    }

    public static class AddressRingView extends View {
        private final String address;
        private float addressWidth;
        private float advanceScale;
        private float[] characterAdvances;
        private final RectF oval;
        private final Paint paint;
        private final Path path;
        private final PathMeasure pathMeasure;
        private float perimeter;
        private final float[] position;
        private String ringText;
        private ValueAnimator scrollAnimator;
        private final float[] tangent;
        private float textOffset;

        public AddressRingView(Context context, String str) {
            super(context);
            Paint paint = new Paint(1);
            this.paint = paint;
            this.path = new Path();
            this.pathMeasure = new PathMeasure();
            this.oval = new RectF();
            this.position = new float[2];
            this.tangent = new float[2];
            this.address = WalletActivity.formatAddress(str.toUpperCase().replace('_', ' ').replace(SignatureVisitor.SUPER, ' ')) + "   ·   ";
            paint.setColor(-16747826);
            paint.setTextSize((float) AndroidUtilities.dp(12.0f));
            paint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO));
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            this.oval.set(((i - AndroidUtilities.dp(212.0f)) / 2.0f) - AndroidUtilities.dp(12.0f), AndroidUtilities.dp(22.0f) - AndroidUtilities.dp(12.0f), ((i + AndroidUtilities.dp(212.0f)) / 2.0f) + AndroidUtilities.dp(12.0f), AndroidUtilities.dp(266.0f) + AndroidUtilities.dp(12.0f));
            this.path.reset();
            this.path.addRoundRect(this.oval, AndroidUtilities.dp(32.0f), AndroidUtilities.dp(32.0f), Path.Direction.CW);
            this.pathMeasure.setPath(this.path, true);
            this.perimeter = this.pathMeasure.getLength();
            int iMax = Math.max(1, Math.round(this.perimeter / this.paint.measureText(this.address)));
            StringBuilder sb = new StringBuilder(this.address.length() * iMax);
            int i5 = 0;
            for (int i6 = 0; i6 < iMax; i6++) {
                sb.append(this.address);
            }
            String string = sb.toString();
            this.ringText = string;
            this.characterAdvances = new float[string.length()];
            float f = 0.0f;
            while (i5 < this.ringText.length()) {
                int i7 = i5 + 1;
                this.characterAdvances[i5] = this.paint.measureText(this.ringText, i5, i7);
                f += this.characterAdvances[i5];
                i5 = i7;
            }
            float f2 = this.perimeter;
            this.advanceScale = f2 / f;
            this.addressWidth = f2 / iMax;
            restartScrollAnimator();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            super.onDraw(canvas);
            if (this.characterAdvances == null || this.perimeter <= 0.0f || this.addressWidth <= 0.0f) {
                return;
            }
            int i = 0;
            float f = 0.0f;
            while (i < this.ringText.length()) {
                float f2 = this.characterAdvances[i] * this.advanceScale;
                float f3 = ((f2 / 2.0f) + f) - this.textOffset;
                float f4 = this.perimeter;
                float f5 = f3 % f4;
                if (f5 < 0.0f) {
                    f5 += f4;
                }
                if (this.ringText.charAt(i) == ' ' || !this.pathMeasure.getPosTan(f5, this.position, this.tangent)) {
                    canvas2 = canvas;
                } else {
                    canvas.save();
                    float[] fArr = this.position;
                    canvas.translate(fArr[0], fArr[1]);
                    float[] fArr2 = this.tangent;
                    canvas.rotate((float) Math.toDegrees(Math.atan2(fArr2[1], fArr2[0])));
                    canvas2 = canvas;
                    canvas2.drawText(this.ringText, i, i + 1, (-this.characterAdvances[i]) / 2.0f, AndroidUtilities.dp(3.0f), this.paint);
                    canvas2.restore();
                }
                f += f2;
                i++;
                canvas = canvas2;
            }
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            restartScrollAnimator();
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            ValueAnimator valueAnimator = this.scrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.scrollAnimator = null;
            }
            super.onDetachedFromWindow();
        }

        private void restartScrollAnimator() {
            if (!isAttachedToWindow() || this.addressWidth <= 0.0f) {
                return;
            }
            ValueAnimator valueAnimator = this.scrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.addressWidth);
            this.scrollAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(Math.max(1L, (long) ((this.addressWidth / AndroidUtilities.dp(24.0f)) * 1000.0f)));
            this.scrollAnimator.setInterpolator(new LinearInterpolator());
            this.scrollAnimator.setRepeatCount(-1);
            this.scrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletActivity$AddressRingView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$restartScrollAnimator$0(valueAnimator2);
                }
            });
            this.scrollAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$restartScrollAnimator$0(ValueAnimator valueAnimator) {
            this.textOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    public static class WalletSheetGradientDrawable extends Drawable {
        private final float[] cornerRadii;
        private final Paint paint;
        private final Path path;
        private final RectF rect;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        private WalletSheetGradientDrawable() {
            this.paint = new Paint(1);
            this.path = new Path();
            this.rect = new RectF();
            this.cornerRadii = new float[]{AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f), 0.0f, 0.0f, 0.0f, 0.0f};
        }

        @Override // android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            this.rect.set(rect);
            this.path.reset();
            this.path.addRoundRect(this.rect, this.cornerRadii, Path.Direction.CW);
            this.paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{-16216082, -12207881}, new float[]{0.15f, 0.53f}, Shader.TileMode.CLAMP));
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawPath(this.path, this.paint);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.paint.setAlpha(i);
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.paint.setColorFilter(colorFilter);
            invalidateSelf();
        }
    }

    public static class LearnCell extends FrameLayout implements Theme.Colorable {
        private final TextView header;
        private final ImageView icon;
        private final LinearLayout layout;
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView text;

        public LearnCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setPadding(AndroidUtilities.dp(36.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(36.0f), AndroidUtilities.dp(8.0f));
            ImageView imageView = new ImageView(context);
            this.icon = imageView;
            addView(imageView, LayoutHelper.createFrame(28, 28.0f, 51, 0.0f, 2.0f, 0.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            this.layout = linearLayout;
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 55, 42.0f, 0.0f, 0.0f, 0.0f));
            TextView textView = new TextView(context);
            this.header = textView;
            textView.setTextSize(1, 14.0f);
            textView.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 2));
            TextView textView2 = new TextView(context);
            this.text = textView2;
            textView2.setTextSize(1, 14.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 55, 0, 0, 0, 2));
            updateColors();
        }

        public void set(int i, CharSequence charSequence, CharSequence charSequence2) {
            this.icon.setImageResource(i);
            this.header.setText(charSequence);
            this.text.setText(charSequence2);
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            ImageView imageView = this.icon;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            this.header.setTextColor(Theme.getColor(i, this.resourcesProvider));
            this.text.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider));
        }

        public static class Factory extends UItem.UItemFactory<LearnCell> {
            @Override // org.telegram.ui.Components.UItem.UItemFactory
            /* JADX INFO: renamed from: isClickable */
            public boolean getIsClickableValue() {
                return false;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            /* JADX INFO: renamed from: isShadow */
            public boolean getIsShadowValue() {
                return true;
            }

            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public LearnCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new LearnCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((LearnCell) view).set(uItem.iconResId, uItem.text, uItem.subtext);
            }

            public static UItem of(int i, CharSequence charSequence, CharSequence charSequence2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.iconResId = i;
                uItemOfFactory.text = charSequence;
                uItemOfFactory.subtext = charSequence2;
                return uItemOfFactory;
            }
        }
    }

    public static class TabsView extends FrameLayout implements Theme.Colorable {
        private final AnimatedFloat animatedSelected;
        private final LinearLayout layout;
        private final Theme.ResourcesProvider resourcesProvider;
        private int selected;
        private final Paint shadowPaint;
        public boolean shadowed;
        private final TextView[] tabs;

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public TabsView(Context context, CharSequence[] charSequenceArr, final Utilities.Callback<Integer> callback, final Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.selected = 0;
            this.shadowed = false;
            this.shadowPaint = new Paint(1);
            this.resourcesProvider = resourcesProvider;
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Wallet.WalletActivity.TabsView.1
                private final RectF lowRect = new RectF();
                private final RectF highRect = new RectF();
                private final RectF rect = new RectF();
                private final Paint backgroundPaint = new Paint(1);

                private void set(TextView textView, RectF rectF) {
                    rectF.set(textView.getX(), textView.getY(), textView.getX() + textView.getWidth(), textView.getY() + textView.getHeight());
                }

                @Override // android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    float f = TabsView.this.animatedSelected.set(TabsView.this.selected);
                    double d = f;
                    int iClamp = Utilities.clamp((int) Math.floor(d), TabsView.this.tabs.length, 0);
                    int iClamp2 = Utilities.clamp((int) Math.ceil(d), TabsView.this.tabs.length, 0);
                    if (iClamp >= 0 && iClamp < TabsView.this.tabs.length) {
                        set(TabsView.this.tabs[iClamp], this.lowRect);
                    }
                    if (iClamp2 >= 0 && iClamp2 < TabsView.this.tabs.length) {
                        set(TabsView.this.tabs[iClamp2], this.highRect);
                    }
                    AndroidUtilities.lerp(this.lowRect, this.highRect, f - iClamp, this.rect);
                    this.backgroundPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), 0.1f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), this.backgroundPaint);
                    super.dispatchDraw(canvas);
                }
            };
            this.layout = linearLayout;
            this.animatedSelected = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$TabsView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            }, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
            linearLayout.setOrientation(0);
            linearLayout.setPadding(AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f));
            this.tabs = new TextView[charSequenceArr.length];
            final int i = 0;
            while (i < charSequenceArr.length) {
                TextView textView = new TextView(context);
                textView.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(6.0f));
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextSize(1, 14.0f);
                textView.setText(charSequenceArr[i]);
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletActivity$TabsView$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$1(callback, i, view);
                    }
                });
                ScaleStateListAnimator.apply(textView);
                this.layout.addView(textView, LayoutHelper.createLinear(-2, -2, 0.0f, 19, i == 0 ? 0 : 3, 0, 0, 0));
                this.tabs[i] = textView;
                i++;
            }
            addView(this.layout, LayoutHelper.createFrame(-2, -2, 17));
            updateColors();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletActivity$TabsView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.stepAnimation();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(Utilities.Callback callback, int i, View view) {
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
            setSelected(i);
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (this.shadowed && view == this.layout) {
                this.shadowPaint.setShadowLayer(AndroidUtilities.dpf2(1.67f), 0.0f, AndroidUtilities.dpf2(0.67f), 520093696);
                this.shadowPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.layout.getX(), this.layout.getY(), this.layout.getX() + this.layout.getWidth(), this.layout.getY() + this.layout.getHeight());
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f), this.shadowPaint);
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stepAnimation() {
            float f = this.animatedSelected.set(this.selected);
            for (int i = 0; i < this.tabs.length; i++) {
                this.tabs[i].setTextColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), Utilities.clamp01(1.0f - Math.abs(f - i))));
            }
            this.layout.invalidate();
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            stepAnimation();
            this.layout.setBackground(this.shadowed ? null : Theme.createRoundRectDrawable(AndroidUtilities.dp(18.0f), Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider)));
        }

        public void setSelected(int i) {
            if (this.selected == i) {
                return;
            }
            this.selected = i;
            stepAnimation();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
        LinkSpanDrawable.LinksTextView linksTextView = this.tosText;
        if (linksTextView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linksTextView.getLayoutParams();
            layoutParams.bottomMargin = AndroidUtilities.dp(24.0f) + i4;
            this.tosText.setLayoutParams(layoutParams);
        }
    }
}
