package org.telegram.ui.Gifts;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.export.ui.ExportMapper$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.Choreographer60FpsContent;
import org.telegram.messenger.utils.DrawableUtils;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.AccountFrozenAlert;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BatchParticlesDrawHelper;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CombinedDrawable;
import org.telegram.ui.Components.CompatDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EffectsTextView;
import org.telegram.ui.Components.ExtendedGridLayoutManager;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Premium.GiftPremiumBottomSheet$GiftTier;
import org.telegram.ui.Components.Premium.PremiumLockIconView;
import org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.ui.Components.Premium.boosts.BoostRepository;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.Shaker;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.blur3.utils.NinePatchBuilder;
import org.telegram.ui.Components.chat.buttons.AbstractC4591x2078045a;
import org.telegram.ui.Components.chat.buttons.AbstractC4592x2078045b;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.ExplainStarsSheet;
import org.telegram.ui.Stars.StarGiftPatterns;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stars.StarsReactionsSheet;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.bots.AffiliateProgramFragment;

/* JADX INFO: loaded from: classes7.dex */
public class GiftSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private int TAB_ALL;
    private int TAB_COLLECTIBLES;
    private int TAB_IN_STOCK;
    private int TAB_LIMITED;
    private int TAB_MY_GIFTS;
    private int TAB_RESALE;
    private UniversalAdapter adapter;
    private final StarsIntroActivity.StarsBalanceView balanceView;
    private boolean birthday;
    private final Runnable closeParentSheet;
    private final int currentAccount;
    private final long dialogId;
    private final DefaultItemAnimator itemAnimator;
    private final ExtendedGridLayoutManager layoutManager;
    private final StarsController.GiftsList myGifts;
    private final String name;
    private List<TLRPC.TL_premiumGiftCodeOption> options;
    private final FrameLayout premiumHeaderView;
    private final ArrayList<GiftPremiumBottomSheet$GiftTier> premiumTiers;
    private int selectedTab;
    private final boolean self;
    private boolean shownCollectiblesInfo;
    private final LinearLayout starsHeaderView;
    private final LinkSpanDrawable.LinksTextView subtitleCollectiblesStarsView;
    private final LinkSpanDrawable.LinksTextView subtitleStarsView;
    private final ArrayList<CharSequence> tabs;
    private final FrameLayout topView;
    private TLRPC.DisallowedGiftsSettings userSettings;

    public GiftSheet(Context context, int i, long j, Runnable runnable) {
        this(context, i, j, null, runnable);
    }

    public GiftSheet(final Context context, final int i, final long j, List<TLRPC.TL_premiumGiftCodeOption> list, final Runnable runnable) {
        int i2;
        super(context, null, false, false, false, null);
        final Context context2 = context;
        this.premiumTiers = new ArrayList<>();
        this.TAB_ALL = -1;
        this.TAB_MY_GIFTS = -1;
        this.TAB_LIMITED = -1;
        this.TAB_IN_STOCK = -1;
        this.TAB_RESALE = -1;
        this.TAB_COLLECTIBLES = -1;
        this.tabs = new ArrayList<>();
        this.currentAccount = i;
        this.dialogId = j;
        boolean z = UserConfig.getInstance(i).getClientUserId() == j;
        this.self = z;
        this.options = list;
        this.closeParentSheet = runnable;
        int i3 = Theme.key_dialogGiftsBackground;
        setBackgroundColor(Theme.getColor(i3));
        fixNavigationBar(Theme.getColor(i3));
        this.myGifts = StarsController.getInstance(i).getProfileGiftsList(UserConfig.getInstance(i).getClientUserId());
        StarsController.getInstance(i).loadStarGifts();
        BackupImageView backupImageView = new BackupImageView(context2);
        backupImageView.setImportantForAccessibility(2);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        if (j > 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            this.name = UserObject.getForcedFirstName(user);
            avatarDrawable.setInfo(user);
            backupImageView.setForUserOrChat(user, avatarDrawable);
            TLRPC.UserFull userFull = MessagesController.getInstance(i).getUserFull(j);
            this.userSettings = (j == UserConfig.getInstance(i).getClientUserId() || userFull == null) ? null : userFull.disallowed_stargifts;
            if (userFull == null) {
                MessagesController.getInstance(i).loadFullUser(user, 0, true);
            }
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            this.name = chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
            avatarDrawable.setInfo(chat);
            backupImageView.setForUserOrChat(chat, avatarDrawable);
        }
        this.topPadding = 0.1f;
        StarsIntroActivity.StarsBalanceView starsBalanceView = new StarsIntroActivity.StarsBalanceView(context2, i, this.resourcesProvider);
        this.balanceView = starsBalanceView;
        ScaleStateListAnimator.apply(starsBalanceView);
        starsBalanceView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context2);
        this.premiumHeaderView = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context2) { // from class: org.telegram.ui.Gifts.GiftSheet.1
            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i4, int i5) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(120.0f), TLObject.FLAG_30));
            }
        };
        this.topView = frameLayout2;
        frameLayout2.setClipChildren(false);
        frameLayout2.setClipToPadding(false);
        frameLayout2.addView(StarsIntroActivity.makeParticlesView(context2, 70, 0), LayoutHelper.createFrame(-1, -1.0f));
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(84.0f));
        frameLayout2.addView(backupImageView, LayoutHelper.createFrame(84, 84.0f, 17, 0.0f, 15.0f, 0.0f, 17.0f));
        ScaleStateListAnimator.apply(backupImageView);
        backupImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(j, view);
            }
        });
        frameLayout2.addView(starsBalanceView, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, -3.0f, -10.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context2);
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 55));
        TextView textView = new TextView(context2);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        int i4 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 4, 0, 4, 0));
        textView.setMaxWidth(HintView2.cutInFancyHalf(textView.getText(), textView.getPaint()));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context2, this.resourcesProvider);
        int i5 = Theme.key_chat_messageLinkIn;
        linksTextView.setLinkTextColor(Theme.getColor(i5, this.resourcesProvider));
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        linksTextView.setGravity(17);
        linksTextView.setLineSpacing(AndroidUtilities.dp(2.33f), 1.0f);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 1, 4, 4, 4, 12));
        textView.setText(LocaleController.getString(C2573R.string.Gift2Premium));
        linksTextView.setText(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2PremiumInfo, this.name)), " ", AndroidUtilities.replaceArrows(AndroidUtilities.makeClickable(LocaleController.getString(C2573R.string.Gift2PremiumInfoLink), new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                GiftSheet.$r8$lambda$HSCej1TuvnAyxiD8uWvIfr9SGf0();
            }
        }), true)));
        linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), linksTextView.getPaint()));
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.starsHeaderView = linearLayout2;
        linearLayout2.setOrientation(1);
        TextView textView2 = new TextView(context2);
        textView2.setTextSize(1, 20.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        textView2.setGravity(17);
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 4, 0, 4, 0));
        LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context2, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.GiftSheet.2
            @Override // android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (getAlpha() < 0.95f) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.subtitleStarsView = linksTextView2;
        linksTextView2.setLinkTextColor(Theme.getColor(i5, this.resourcesProvider));
        linksTextView2.setTextSize(1, 14.0f);
        linksTextView2.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        linksTextView2.setGravity(17);
        LinkSpanDrawable.LinksTextView linksTextView3 = new LinkSpanDrawable.LinksTextView(context2, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.GiftSheet.3
            @Override // android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (getAlpha() < 0.95f) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.subtitleCollectiblesStarsView = linksTextView3;
        linksTextView3.setLinkTextColor(Theme.getColor(i5, this.resourcesProvider));
        linksTextView3.setTextSize(1, 14.0f);
        linksTextView3.setTextColor(Theme.getColor(i4, this.resourcesProvider));
        linksTextView3.setGravity(17);
        linksTextView3.setAlpha(0.0f);
        linksTextView3.setScaleX(0.85f);
        linksTextView3.setScaleY(0.85f);
        FrameLayout frameLayout3 = new FrameLayout(context2);
        frameLayout3.addView(linksTextView2, LayoutHelper.createFrame(-1, -2.0f, 49, 26.0f, 0.0f, 26.0f, 0.0f));
        frameLayout3.addView(linksTextView3, LayoutHelper.createFrame(-1, -2.0f, 49, 26.0f, 0.0f, 26.0f, 0.0f));
        if (j < 0) {
            i2 = C2573R.string.Gift2StarsChannel;
        } else {
            i2 = z ? C2573R.string.Gift2StarsSelf : C2573R.string.Gift2Stars;
        }
        textView2.setText(LocaleController.getString(i2));
        if (z) {
            linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-2, -2, 1, 0, 9, 0, 4));
            LinkSpanDrawable.LinksTextView linksTextView4 = new LinkSpanDrawable.LinksTextView(context2, this.resourcesProvider);
            linksTextView4.setLinkTextColor(Theme.getColor(i5, this.resourcesProvider));
            linksTextView4.setTextSize(1, 14.0f);
            linksTextView4.setTextColor(Theme.getColor(i4, this.resourcesProvider));
            linksTextView4.setGravity(17);
            linearLayout2.addView(linksTextView4, LayoutHelper.createLinear(-2, -2, 1, 26, 4, 26, 6));
            linksTextView2.setText(LocaleController.getString(C2573R.string.Gift2StarsSelfInfo1));
            linksTextView4.setText(LocaleController.getString(C2573R.string.Gift2StarsSelfInfo2));
        } else if (j < 0) {
            linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-2, -2, 1, 0, 9, 0, 4));
            NotificationCenter.listenEmojiLoading(linksTextView2);
            linksTextView2.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2StarsChannelInfo, this.name)), linksTextView2.getPaint().getFontMetricsInt(), false));
        } else {
            linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-1, -2, 1, 0, 9, 0, 6));
            final StarsController.GiftsList profileGiftsList = StarsController.getInstance(i).getProfileGiftsList(j);
            final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$5(profileGiftsList, j, runnable, context);
                }
            };
            context2 = context;
            runnable2.run();
            linksTextView2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Gifts.GiftSheet.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    runnable2.run();
                }
            });
            if (profileGiftsList.gifts.size() < 3) {
                profileGiftsList.load();
            }
            NotificationCenter.getInstance(i).listen(linksTextView2, NotificationCenter.starUserGiftsLoaded, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GiftSheet.$r8$lambda$3dkE23YxP0eT28ZcAWx7zHxtNUw(profileGiftsList, runnable2, (Object[]) obj);
                }
            });
        }
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context2, 3);
        this.layoutManager = extendedGridLayoutManager;
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Gifts.GiftSheet.5
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i6) {
                int i7;
                if (GiftSheet.this.adapter == null || i6 == 0) {
                    return GiftSheet.this.layoutManager.getSpanCount();
                }
                UItem item = GiftSheet.this.adapter.getItem(i6 - 1);
                return (item == null || (i7 = item.spanCount) == -1) ? GiftSheet.this.layoutManager.getSpanCount() : i7;
            }
        });
        this.recyclerListView.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setClipChildren(false);
        this.recyclerListView.setLayoutManager(extendedGridLayoutManager);
        this.recyclerListView.setSelectorType(9);
        this.recyclerListView.setSelectorDrawableColor(0);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Gifts.GiftSheet.6
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public float animateByScale(View view) {
                return 0.3f;
            }
        };
        this.itemAnimator = defaultItemAnimator;
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayIncrement(40L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i6) {
                this.f$0.lambda$new$19(context2, i, runnable, j, view, i6);
            }
        });
        updatePremiumTiers();
        this.adapter.update(false);
        updateTitle();
        if (BirthdayController.getInstance(i).isToday(j)) {
            setBirthday();
        }
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.userInfoDidLoad);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starGiftSoldOut);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.starUserGiftsLoaded);
        this.actionBar.setTitle(getTitle());
        NotificationCenter.listenEmojiLoading(this.actionBar.getTitleTextView());
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(long j, View view) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        lambda$new$0();
        safeLastFragment.presentFragment(ProfileActivity.of(j));
    }

    public static /* synthetic */ void $r8$lambda$HSCej1TuvnAyxiD8uWvIfr9SGf0() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        lastFragment.showAsSheet(new PremiumPreviewFragment("gifts"), bottomSheetParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(StarsController.GiftsList giftsList, final long j, final Runnable runnable, final Context context) {
        TL_stars.StarGift starGift;
        TLRPC.Document document;
        int i = 0;
        while (i < 2) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(i == 1 ? LocaleController.getString(C2573R.string.Gift2StarsCollectibleInfo) : LocaleController.formatString(C2573R.string.Gift2StarsInfo, this.name)));
            spannableStringBuilder.append((CharSequence) " ");
            HashSet hashSet = new HashSet();
            HashSet<TLRPC.Document> hashSet2 = new HashSet();
            for (int i2 = 0; i2 < giftsList.gifts.size() && hashSet.size() < 3; i2++) {
                TL_stars.SavedStarGift savedStarGift = giftsList.gifts.get(i2);
                if (savedStarGift != null && (starGift = savedStarGift.gift) != null && (document = starGift.getDocument()) != null && !hashSet.contains(Long.valueOf(document.id))) {
                    hashSet2.add(document);
                    hashSet.add(Long.valueOf(document.id));
                }
            }
            if (hashSet2.size() > 0) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                spannableStringBuilder2.append((CharSequence) LocaleController.formatString(C2573R.string.Gift2StarsInfoProfileLink, DialogObject.getShortName(j)).replaceAll(" ", " "));
                spannableStringBuilder2.append((CharSequence) " ");
                for (TLRPC.Document document2 : hashSet2) {
                    spannableStringBuilder2.append((CharSequence) "\u2060e");
                    spannableStringBuilder2.setSpan(new AnimatedEmojiSpan(document2, this.subtitleStarsView.getPaint().getFontMetricsInt()), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 33);
                }
                spannableStringBuilder2.append((CharSequence) " >");
                spannableStringBuilder.append(AndroidUtilities.replaceArrows(AndroidUtilities.makeClickable(spannableStringBuilder2, new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$3(runnable, j);
                    }
                }), true));
            } else {
                spannableStringBuilder.append(AndroidUtilities.replaceArrows(AndroidUtilities.makeClickable(LocaleController.getString(C2573R.string.Gift2StarsInfoLink), new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        new ExplainStarsSheet(context).show();
                    }
                }), true));
            }
            LinkSpanDrawable.LinksTextView linksTextView = i == 0 ? this.subtitleStarsView : this.subtitleCollectiblesStarsView;
            linksTextView.setText(spannableStringBuilder);
            linksTextView.setMaxWidth(HintView2.cutInFancyHalf(linksTextView.getText(), linksTextView.getPaint()));
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(Runnable runnable, long j) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        lambda$new$0();
        if (runnable != null) {
            runnable.run();
        }
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", j);
        bundle.putBoolean("open_gifts", true);
        safeLastFragment.presentFragment(new ProfileActivity(bundle));
    }

    public static /* synthetic */ void $r8$lambda$3dkE23YxP0eT28ZcAWx7zHxtNUw(StarsController.GiftsList giftsList, Runnable runnable, Object[] objArr) {
        if (objArr[1] == giftsList) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$19(final Context context, final int i, final Runnable runnable, final long j, View view, int i2) {
        TL_stars.SavedStarGift savedStarGift;
        UItem item = this.adapter.getItem(i2 - 1);
        if (item != null && item.instanceOf(GiftCell.Factory.class)) {
            Object obj = item.object;
            if (obj instanceof GiftPremiumBottomSheet$GiftTier) {
                new SendGiftSheet(context, i, (GiftPremiumBottomSheet$GiftTier) obj, this.dialogId, new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$7(runnable);
                    }
                }) { // from class: org.telegram.ui.Gifts.GiftSheet.7
                    @Override // org.telegram.ui.Gifts.SendGiftSheet
                    public BulletinFactory getParentBulletinFactory() {
                        GiftSheet giftSheet = GiftSheet.this;
                        return BulletinFactory.of(giftSheet.container, giftSheet.resourcesProvider);
                    }
                }.show();
                return;
            }
            if (obj instanceof TL_stars.StarGift) {
                final TL_stars.StarGift starGift = (TL_stars.StarGift) obj;
                StarsController.GiftsList giftsList = this.myGifts;
                int i3 = 0;
                if (giftsList != null && this.selectedTab == this.TAB_MY_GIFTS) {
                    ArrayList<TL_stars.SavedStarGift> arrayList = giftsList.gifts;
                    int size = arrayList.size();
                    while (true) {
                        if (i3 >= size) {
                            savedStarGift = null;
                            break;
                        }
                        TL_stars.SavedStarGift savedStarGift2 = arrayList.get(i3);
                        i3++;
                        TL_stars.SavedStarGift savedStarGift3 = savedStarGift2;
                        if (savedStarGift3.gift.id == starGift.id) {
                            savedStarGift = savedStarGift3;
                            break;
                        }
                    }
                    if (savedStarGift == null) {
                        return;
                    }
                    final StarGiftSheet starGiftSheet = new StarGiftSheet(getContext(), i, UserConfig.getInstance(i).getClientUserId(), this.resourcesProvider) { // from class: org.telegram.ui.Gifts.GiftSheet.8
                        @Override // org.telegram.ui.Stars.StarGiftSheet, org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
                        public BulletinFactory getBulletinFactory() {
                            GiftSheet giftSheet = GiftSheet.this;
                            return BulletinFactory.of(giftSheet.container, giftSheet.resourcesProvider);
                        }
                    }.set(savedStarGift, (StarsController.IGiftsList) null);
                    starGiftSheet.openTransferAlert(j, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda13
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj2) {
                            this.f$0.lambda$new$10(starGiftSheet, j, runnable, (Browser.Progress) obj2);
                        }
                    });
                    return;
                }
                if (item.accent && starGift.availability_resale > 0) {
                    BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment == null) {
                        return;
                    }
                    BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                    bottomSheetParams.transitionFromLeft = true;
                    bottomSheetParams.allowNestedScroll = false;
                    bottomSheetParams.occupyNavigationBar = true;
                    final ViewTreeObserver viewTreeObserver = this.container.getViewTreeObserver();
                    final ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda14
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public final boolean onPreDraw() {
                            return GiftSheet.$r8$lambda$XUFXsp9t2Unk8m8ATPMnCO7ps6g();
                        }
                    };
                    ResaleGiftsFragment resaleGiftsFragment = new ResaleGiftsFragment(j, starGift.title, starGift.id, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.GiftSheet.9
                        @Override // org.telegram.ui.ActionBar.BaseFragment
                        public void onPause() {
                            super.onPause();
                            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
                        }

                        @Override // org.telegram.ui.ActionBar.BaseFragment
                        public void onResume() {
                            super.onResume();
                            viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
                        }
                    };
                    resaleGiftsFragment.setCloseParentSheet(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda15
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$12(runnable);
                        }
                    });
                    safeLastFragment.showAsSheet(resaleGiftsFragment, bottomSheetParams);
                    return;
                }
                if (starGift.auction) {
                    AuctionJoinSheet.show(context, this.resourcesProvider, i, j, starGift.id, new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$13(runnable);
                        }
                    });
                    return;
                }
                if (starGift.sold_out) {
                    StarsIntroActivity.showSoldOutGiftSheet(context, i, starGift, this.resourcesProvider);
                    return;
                }
                if (starGift.limited_per_user && starGift.per_user_remains <= 0) {
                    BulletinFactory.of(this.container, this.resourcesProvider).createSimpleMultiBulletin(starGift.getDocument(), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2PerUserLimit", starGift.per_user_total))).show();
                    return;
                }
                final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$15(context, i, starGift, runnable);
                    }
                };
                if (starGift.locked_until_date > ConnectionsManager.getInstance(i).getCurrentTime()) {
                    final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
                    alertDialog.showDelayed(500L);
                    TL_stars.checkCanSendGift checkcansendgift = new TL_stars.checkCanSendGift();
                    checkcansendgift.gift_id = starGift.id;
                    ConnectionsManager.getInstance(i).sendRequest(checkcansendgift, new RequestDelegate() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda18
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$new$18(alertDialog, runnable2, runnable, tLObject, tL_error);
                        }
                    });
                    return;
                }
                if (starGift.require_premium && !UserConfig.getInstance(i).isPremium()) {
                    BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment2 == null) {
                        return;
                    }
                    PremiumPreviewBottomSheet premiumPreviewBottomSheet = new PremiumPreviewBottomSheet(safeLastFragment2, i, null, null, starGift, this.resourcesProvider);
                    BackupImageView backupImageView = new BackupImageView(getContext());
                    final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(backupImageView, AndroidUtilities.dp(160.0f), 4);
                    backupImageView.setImageDrawable(swapAnimatedEmojiDrawable);
                    backupImageView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Gifts.GiftSheet.11
                        @Override // android.view.View.OnAttachStateChangeListener
                        public void onViewAttachedToWindow(View view2) {
                            swapAnimatedEmojiDrawable.attach();
                        }

                        @Override // android.view.View.OnAttachStateChangeListener
                        public void onViewDetachedFromWindow(View view2) {
                            swapAnimatedEmojiDrawable.detach();
                        }
                    });
                    swapAnimatedEmojiDrawable.set(starGift.getDocument(), false);
                    premiumPreviewBottomSheet.overrideTitleIcon = backupImageView;
                    premiumPreviewBottomSheet.show();
                    swapAnimatedEmojiDrawable.play();
                    return;
                }
                runnable2.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final StarGiftSheet starGiftSheet, long j, final Runnable runnable, final Browser.Progress progress) {
        progress.init();
        starGiftSheet.doTransfer(j, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda24
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$9(progress, runnable, starGiftSheet, (TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(Browser.Progress progress, Runnable runnable, final StarGiftSheet starGiftSheet, final TLRPC.TL_error tL_error) {
        progress.end();
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    starGiftSheet.getBulletinFactory().showForError(tL_error);
                }
            });
        } else {
            lambda$new$0();
        }
    }

    public static /* synthetic */ boolean $r8$lambda$XUFXsp9t2Unk8m8ATPMnCO7ps6g() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15(Context context, int i, TL_stars.StarGift starGift, final Runnable runnable) {
        boolean z;
        Context context2;
        int i2;
        TL_stars.StarGift starGift2;
        GiftSheet giftSheet;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings2;
        long j = this.dialogId;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$14(runnable);
            }
        };
        boolean z2 = starGift.limited;
        boolean z3 = z2 && (disallowedGiftsSettings2 = this.userSettings) != null && disallowedGiftsSettings2.disallow_limited_stargifts;
        if (z2 && (disallowedGiftsSettings = this.userSettings) != null && disallowedGiftsSettings.disallow_unique_stargifts) {
            z = true;
            giftSheet = this;
            i2 = i;
            starGift2 = starGift;
            context2 = context;
        } else {
            z = false;
            context2 = context;
            i2 = i;
            starGift2 = starGift;
            giftSheet = this;
        }
        new SendGiftSheet(context2, i2, starGift2, j, runnable2, z3, z) { // from class: org.telegram.ui.Gifts.GiftSheet.10
            @Override // org.telegram.ui.Gifts.SendGiftSheet
            public BulletinFactory getParentBulletinFactory() {
                GiftSheet giftSheet2 = GiftSheet.this;
                return BulletinFactory.of(giftSheet2.container, giftSheet2.resourcesProvider);
            }
        }.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18(final AlertDialog alertDialog, final Runnable runnable, final Runnable runnable2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$17(alertDialog, tLObject, runnable, runnable2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17(AlertDialog alertDialog, TLObject tLObject, Runnable runnable, final Runnable runnable2, TLRPC.TL_error tL_error) {
        alertDialog.dismiss();
        if (tLObject instanceof TL_stars.checkCanSendGiftResultOk) {
            runnable.run();
            return;
        }
        if (!(tLObject instanceof TL_stars.checkCanSendGiftResultFail)) {
            if (tL_error != null) {
                BulletinFactory.of(this.container, this.resourcesProvider).showForError(tL_error);
            }
        } else {
            final AlertDialog alertDialogShow = new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.GiftLocked)).setMessage(MessageObject.formatTextWithEntities(((TL_stars.checkCanSendGiftResultFail) tLObject).reason, false)).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
            final TextView messageTextView = alertDialogShow.getMessageTextView();
            if (messageTextView instanceof EffectsTextView) {
                ((EffectsTextView) messageTextView).setOnLinkPressListener(new LinkSpanDrawable.LinksTextView.OnLinkPress() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda25
                    @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView.OnLinkPress
                    public final void run(ClickableSpan clickableSpan) {
                        this.f$0.lambda$new$16(alertDialogShow, runnable2, messageTextView, clickableSpan);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(AlertDialog alertDialog, Runnable runnable, TextView textView, ClickableSpan clickableSpan) {
        alertDialog.dismiss();
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
        clickableSpan.onClick(textView);
    }

    public void setShowCollectiblesInfo(boolean z) {
        if (z == this.shownCollectiblesInfo) {
            return;
        }
        this.shownCollectiblesInfo = z;
        ViewPropertyAnimator duration = this.subtitleStarsView.animate().alpha(!z ? 1.0f : 0.0f).scaleX(!z ? 1.0f : 0.85f).scaleY(!z ? 1.0f : 0.85f).setDuration(380L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        duration.setInterpolator(cubicBezierInterpolator).start();
        this.subtitleCollectiblesStarsView.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.85f).scaleY(z ? 1.0f : 0.85f).setDuration(380L).setInterpolator(cubicBezierInterpolator).start();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings = this.userSettings;
        if (disallowedGiftsSettings != null && disallowedGiftsSettings.disallow_premium_gifts && disallowedGiftsSettings.disallow_unique_stargifts && disallowedGiftsSettings.disallow_limited_stargifts && disallowedGiftsSettings.disallow_unlimited_stargifts) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.error, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.UserDisallowedGifts, DialogObject.getShortName(this.dialogId)))).show();
                return;
            }
            return;
        }
        super.show();
    }

    public GiftSheet setBirthday() {
        return setBirthday(true);
    }

    public GiftSheet setBirthday(boolean z) {
        this.birthday = z;
        this.adapter.update(false);
        return this;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.billingProductDetailsUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.userInfoDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiftSoldOut);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalAdapter universalAdapter;
        if (i == NotificationCenter.billingProductDetailsUpdated) {
            updatePremiumTiers();
            return;
        }
        if (i == NotificationCenter.starGiftsLoaded) {
            UniversalAdapter universalAdapter2 = this.adapter;
            if (universalAdapter2 != null) {
                universalAdapter2.update(true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.userInfoDidLoad) {
            if (isShown()) {
                long jLongValue = ((Long) objArr[0]).longValue();
                long j = this.dialogId;
                if (jLongValue == j && j > 0) {
                    TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(this.dialogId);
                    TLRPC.DisallowedGiftsSettings disallowedGiftsSettings = (this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() || userFull == null) ? null : userFull.disallowed_stargifts;
                    this.userSettings = disallowedGiftsSettings;
                    if (disallowedGiftsSettings != null && disallowedGiftsSettings.disallow_premium_gifts && disallowedGiftsSettings.disallow_unique_stargifts && disallowedGiftsSettings.disallow_limited_stargifts && disallowedGiftsSettings.disallow_unlimited_stargifts) {
                        lambda$new$0();
                        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                        if (safeLastFragment != null) {
                            BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.error, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.UserDisallowedGifts, DialogObject.getShortName(this.dialogId)))).show();
                            return;
                        }
                        return;
                    }
                    UniversalAdapter universalAdapter3 = this.adapter;
                    if (universalAdapter3 != null) {
                        universalAdapter3.update(true);
                    }
                }
                ArrayList<GiftPremiumBottomSheet$GiftTier> arrayList = this.premiumTiers;
                if (arrayList == null || arrayList.isEmpty()) {
                    updatePremiumTiers();
                    UniversalAdapter universalAdapter4 = this.adapter;
                    if (universalAdapter4 != null) {
                        universalAdapter4.update(true);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.starGiftSoldOut) {
            if (isShown()) {
                TL_stars.StarGift starGift = (TL_stars.StarGift) objArr[0];
                BulletinFactory.of(this.container, this.resourcesProvider).createEmojiBulletin(starGift.sticker, LocaleController.getString(C2573R.string.Gift2SoldOutTitle), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2SoldOutCount", starGift.availability_total))).show();
                UniversalAdapter universalAdapter5 = this.adapter;
                if (universalAdapter5 != null) {
                    universalAdapter5.update(true);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.starUserGiftsLoaded && objArr[1] == this.myGifts && (universalAdapter = this.adapter) != null) {
            universalAdapter.update(true);
        }
    }

    private void updatePremiumTiers() {
        List<TLRPC.TL_premiumGiftCodeOption> list;
        TLRPC.TL_premiumGiftCodeOption next;
        this.premiumTiers.clear();
        if (this.premiumTiers.isEmpty() && (list = this.options) != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            long pricePerMonth = 0;
            for (int size = this.options.size() - 1; size >= 0; size--) {
                TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption = this.options.get(size);
                if (!"XTR".equalsIgnoreCase(tL_premiumGiftCodeOption.currency)) {
                    Iterator<TLRPC.TL_premiumGiftCodeOption> it = this.options.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        if (next != tL_premiumGiftCodeOption && "XTR".equalsIgnoreCase(next.currency) && next.months == tL_premiumGiftCodeOption.months) {
                            break;
                        }
                    }
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier = new GiftPremiumBottomSheet$GiftTier(tL_premiumGiftCodeOption, next);
                    this.premiumTiers.add(giftPremiumBottomSheet$GiftTier);
                    if (BuildVars.useInvoiceBilling()) {
                        if (giftPremiumBottomSheet$GiftTier.getPricePerMonth() > pricePerMonth) {
                            pricePerMonth = giftPremiumBottomSheet$GiftTier.getPricePerMonth();
                        }
                    } else if (giftPremiumBottomSheet$GiftTier.getStoreProduct() != null && BillingController.getInstance().isReady()) {
                        arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductType("inapp").setProductId(giftPremiumBottomSheet$GiftTier.getStoreProduct()).build());
                    }
                }
            }
            if (BuildVars.useInvoiceBilling()) {
                ArrayList<GiftPremiumBottomSheet$GiftTier> arrayList2 = this.premiumTiers;
                int size2 = arrayList2.size();
                int i = 0;
                while (i < size2) {
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier2 = arrayList2.get(i);
                    i++;
                    giftPremiumBottomSheet$GiftTier2.setPricePerMonthRegular(pricePerMonth);
                }
            } else if (!arrayList.isEmpty()) {
                System.currentTimeMillis();
                BillingController.getInstance().queryProductDetails(arrayList, new ProductDetailsResponseListener() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda0
                    @Override // com.android.billingclient.api.ProductDetailsResponseListener
                    public final void onProductDetailsResponse(BillingResult billingResult, List list2) {
                        this.f$0.lambda$updatePremiumTiers$22(billingResult, list2);
                    }
                });
            }
        }
        if (this.premiumTiers.isEmpty()) {
            BoostRepository.loadGiftOptions(this.currentAccount, null, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$updatePremiumTiers$23((List) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePremiumTiers$22(BillingResult billingResult, List list) {
        int i;
        Iterator it = list.iterator();
        long pricePerMonth = 0;
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            ProductDetails productDetails = (ProductDetails) it.next();
            ArrayList<GiftPremiumBottomSheet$GiftTier> arrayList = this.premiumTiers;
            int size = arrayList.size();
            while (true) {
                if (i < size) {
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier = arrayList.get(i);
                    i++;
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier2 = giftPremiumBottomSheet$GiftTier;
                    if (giftPremiumBottomSheet$GiftTier2.getStoreProduct() != null && giftPremiumBottomSheet$GiftTier2.getStoreProduct().equals(productDetails.getProductId())) {
                        giftPremiumBottomSheet$GiftTier2.setGooglePlayProductDetails(productDetails);
                        if (giftPremiumBottomSheet$GiftTier2.getPricePerMonth() > pricePerMonth) {
                            pricePerMonth = giftPremiumBottomSheet$GiftTier2.getPricePerMonth();
                        }
                    }
                }
            }
        }
        ArrayList<GiftPremiumBottomSheet$GiftTier> arrayList2 = this.premiumTiers;
        int size2 = arrayList2.size();
        while (i < size2) {
            GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier3 = arrayList2.get(i);
            i++;
            giftPremiumBottomSheet$GiftTier3.setPricePerMonthRegular(pricePerMonth);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updatePremiumTiers$21();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePremiumTiers$21() {
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePremiumTiers$23(List list) {
        if (getContext() == null || !isShown()) {
            return;
        }
        List<TLRPC.TL_premiumGiftCodeOption> listFilterGiftOptions = BoostRepository.filterGiftOptions(list, 1);
        this.options = listFilterGiftOptions;
        List<TLRPC.TL_premiumGiftCodeOption> listFilterGiftOptionsByBilling = BoostRepository.filterGiftOptionsByBilling(listFilterGiftOptions);
        this.options = listFilterGiftOptionsByBilling;
        if (listFilterGiftOptionsByBilling.isEmpty()) {
            return;
        }
        updatePremiumTiers();
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        if (this.self) {
            return LocaleController.getString(C2573R.string.Gift2TitleSelf1);
        }
        return Emoji.replaceEmoji(LocaleController.formatString(C2573R.string.Gift2User, this.name), null, false);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda2
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
        boolean z;
        ArrayList<TL_stars.StarGift> arrayList2;
        boolean z2;
        StarsController.GiftsList giftsList;
        long j;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings2;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings3;
        StarsController.GiftsList giftsList2;
        StarsController.GiftsList giftsList3;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings4;
        long j2 = 0;
        if (this.self || this.dialogId < 0 || ((disallowedGiftsSettings4 = this.userSettings) != null && disallowedGiftsSettings4.disallow_premium_gifts)) {
            z = false;
        } else {
            arrayList.add(UItem.asCustom(this.topView));
            arrayList.add(UItem.asCustom(this.premiumHeaderView));
            ArrayList<GiftPremiumBottomSheet$GiftTier> arrayList3 = this.premiumTiers;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                ArrayList<GiftPremiumBottomSheet$GiftTier> arrayList4 = this.premiumTiers;
                int size = arrayList4.size();
                int i = 0;
                while (i < size) {
                    GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier = arrayList4.get(i);
                    i++;
                    arrayList.add(GiftCell.Factory.asPremiumGift(giftPremiumBottomSheet$GiftTier));
                }
            } else {
                arrayList.add(UItem.asFlicker(1, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(2, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(3, 34).setSpanCount(1));
            }
            z = true;
        }
        StarsController starsController = StarsController.getInstance(this.currentAccount);
        if (this.birthday) {
            arrayList2 = starsController.birthdaySortedGifts;
        } else {
            arrayList2 = starsController.sortedGifts;
        }
        if (this.userSettings != null) {
            arrayList2 = (ArrayList) arrayList2.stream().filter(new Predicate() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda19
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$fillItems$24((TL_stars.StarGift) obj);
                }
            }).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
        }
        if (this.dialogId < 0) {
            arrayList2 = (ArrayList) arrayList2.stream().filter(new Predicate() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda20
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return GiftSheet.$r8$lambda$BWHgLBI1xuuSDJlJhhRqd8BDE2o((TL_stars.StarGift) obj);
                }
            }).collect(Collectors.toCollection(new ExportMapper$$ExternalSyntheticLambda2()));
        }
        if (this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() || (giftsList3 = this.myGifts) == null) {
            z2 = false;
        } else {
            ArrayList<TL_stars.SavedStarGift> arrayList5 = giftsList3.gifts;
            int size2 = arrayList5.size();
            int i2 = 0;
            while (i2 < size2) {
                TL_stars.SavedStarGift savedStarGift = arrayList5.get(i2);
                i2++;
                if (savedStarGift.gift instanceof TL_stars.TL_starGiftUnique) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        }
        if (!MessagesController.getInstance(this.currentAccount).stargiftsBlocked && (!arrayList2.isEmpty() || ((disallowedGiftsSettings3 = this.userSettings) != null && !disallowedGiftsSettings3.disallow_unique_stargifts && (giftsList2 = this.myGifts) != null && !giftsList2.gifts.isEmpty()))) {
            if (!z) {
                arrayList.add(UItem.asCustom(this.topView));
            } else {
                arrayList.add(UItem.asSpace(AndroidUtilities.dp(16.0f)));
            }
            arrayList.add(UItem.asCustom(this.starsHeaderView));
            TreeSet treeSet = new TreeSet();
            TLRPC.DisallowedGiftsSettings disallowedGiftsSettings5 = this.userSettings;
            if (disallowedGiftsSettings5 == null || !disallowedGiftsSettings5.disallow_unique_stargifts) {
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    treeSet.add(Long.valueOf(arrayList2.get(i3).stars));
                }
            }
            ArrayList arrayList6 = new ArrayList();
            this.TAB_MY_GIFTS = -1;
            this.TAB_LIMITED = -1;
            this.TAB_IN_STOCK = -1;
            this.TAB_ALL = -1;
            if (!arrayList2.isEmpty()) {
                this.TAB_ALL = arrayList6.size();
                arrayList6.add(LocaleController.getString(C2573R.string.Gift2TabAll));
            }
            TLRPC.DisallowedGiftsSettings disallowedGiftsSettings6 = this.userSettings;
            if ((disallowedGiftsSettings6 == null || !disallowedGiftsSettings6.disallow_unique_stargifts) && z2) {
                this.TAB_MY_GIFTS = arrayList6.size();
                arrayList6.add(LocaleController.getString(C2573R.string.Gift2TabMine));
            }
            this.TAB_COLLECTIBLES = arrayList6.size();
            arrayList6.add(LocaleController.getString(C2573R.string.Gift2TabCollectibles));
            arrayList.add(Tabs.Factory.asTabs(1, arrayList6, this.selectedTab, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$$ExternalSyntheticLambda21
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.selectTab(((Integer) obj).intValue());
                }
            }));
            setShowCollectiblesInfo(this.selectedTab == this.TAB_COLLECTIBLES && !this.self && this.dialogId >= 0);
            if (this.myGifts != null && this.selectedTab == this.TAB_MY_GIFTS) {
                arrayList2 = new ArrayList<>();
                ArrayList<TL_stars.SavedStarGift> arrayList7 = this.myGifts.gifts;
                int size3 = arrayList7.size();
                int i4 = 0;
                while (i4 < size3) {
                    TL_stars.SavedStarGift savedStarGift2 = arrayList7.get(i4);
                    i4++;
                    TL_stars.StarGift starGift = savedStarGift2.gift;
                    if (starGift instanceof TL_stars.TL_starGiftUnique) {
                        arrayList2.add(starGift);
                    }
                }
            }
            int i5 = 0;
            int i6 = 0;
            while (i5 < arrayList2.size()) {
                TL_stars.StarGift starGift2 = arrayList2.get(i5);
                int i7 = this.selectedTab;
                if (i7 == this.TAB_ALL || i7 == this.TAB_MY_GIFTS) {
                    j = j2;
                } else {
                    j = j2;
                    if (i7 != this.TAB_COLLECTIBLES || (starGift2.availability_resale <= j && !starGift2.require_premium && starGift2.locked_until_date == 0)) {
                    }
                    i5++;
                    j2 = j;
                }
                if (!starGift2.sold_out && starGift2.availability_resale > j && i7 != this.TAB_COLLECTIBLES) {
                    arrayList.add(GiftCell.Factory.asStarGift(i7, starGift2, i7 == this.TAB_MY_GIFTS, starGift2.limited && (disallowedGiftsSettings2 = this.userSettings) != null && disallowedGiftsSettings2.disallow_limited_stargifts, false, false, false));
                    i6++;
                }
                int i8 = this.selectedTab;
                arrayList.add(GiftCell.Factory.asStarGift(i8, starGift2, i8 == this.TAB_MY_GIFTS, starGift2.limited && (disallowedGiftsSettings = this.userSettings) != null && disallowedGiftsSettings.disallow_limited_stargifts, true, false, false));
                i6++;
                i5++;
                j2 = j;
            }
            int i9 = this.selectedTab;
            int i10 = this.TAB_MY_GIFTS;
            if (i9 == i10 && (giftsList = this.myGifts) != null && !giftsList.endReached) {
                giftsList.load();
                arrayList.add(UItem.asFlicker(4, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(5, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(6, 34).setSpanCount(1));
            } else if (i9 != i10 && starsController.giftsLoading) {
                arrayList.add(UItem.asFlicker(4, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(5, 34).setSpanCount(1));
                arrayList.add(UItem.asFlicker(6, 34).setSpanCount(1));
            }
            arrayList.add(UItem.asSpace(AndroidUtilities.dp(i6 >= 9 ? 40.0f : 300.0f)));
            return;
        }
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings7 = this.userSettings;
        if (disallowedGiftsSettings7 == null || disallowedGiftsSettings7.disallow_unique_stargifts || !arrayList2.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.dp(300.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$fillItems$24(TL_stars.StarGift starGift) {
        boolean z;
        if (starGift instanceof TL_stars.TL_starGiftUnique) {
            z = this.userSettings.disallow_unique_stargifts;
        } else {
            boolean z2 = starGift.limited;
            TLRPC.DisallowedGiftsSettings disallowedGiftsSettings = this.userSettings;
            if (z2) {
                return !disallowedGiftsSettings.disallow_limited_stargifts || (starGift.can_upgrade && !disallowedGiftsSettings.disallow_unique_stargifts);
            }
            z = disallowedGiftsSettings.disallow_unlimited_stargifts;
        }
        return !z;
    }

    public static /* synthetic */ boolean $r8$lambda$BWHgLBI1xuuSDJlJhhRqd8BDE2o(TL_stars.StarGift starGift) {
        return !starGift.auction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectTab(int i) {
        if (this.selectedTab == i) {
            return;
        }
        this.selectedTab = i;
        this.itemAnimator.endAnimations();
        this.adapter.update(true);
    }

    public static class GiftCell extends FrameLayout {
        public static final int[] PREMIUM_STROKE = {-2781403, -3635939};
        public boolean allowResaleInGifts;
        private final AnimatedFloat animatedReordering;
        private final AvatarDrawable avatarDrawable;
        private final BackupImageView avatarView;
        private final FrameLayout.LayoutParams avatarViewLayout1;
        private final FrameLayout.LayoutParams avatarViewLayout2;
        private Runnable cancel;
        public final FrameLayout card;
        public final CardBackground cardBackground;
        private final Rect cardBackgroundPadding;
        public final TextView chanceTextView;
        private CheckBox2 checkBox;
        private final int currentAccount;
        private TL_stars.StarGift gift;
        private boolean giftMine;
        public final BackupImageView imageView;
        public FrameLayout.LayoutParams imageViewLayoutParams;
        public boolean inCollection;
        public boolean inCrafting;
        public boolean inResalePage;
        private TLRPC.Document lastDocument;
        private long lastDocumentId;
        private GiftPremiumBottomSheet$GiftTier lastTier;
        private TL_stars.SavedStarGift lastUserGift;
        private final PremiumLockIconView lockView;
        private final PremiumLockIconView pinView;
        private boolean pinned;
        private boolean pinnedIcon;
        private final ImageView pinnedImageView;
        private final FrameLayout pinnedView;
        private GiftPremiumBottomSheet$GiftTier premiumTier;
        private final StarsBackgroundView priceBackground;
        private final FrameLayout priceLayout;
        private final TextView priceView;
        private boolean priotityAuction;
        private boolean reordering;
        private final Theme.ResourcesProvider resourcesProvider;
        private final Ribbon ribbon;
        private final Shaker shaker;
        private final TextView starsPriceView;
        private Text subtitle;
        private final TextView subtitleView;
        private Text title;
        private final TextView titleView;
        private final ImageView tonOnlySaleView;
        private TL_stars.SavedStarGift userGift;

        public GiftCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.cardBackgroundPadding = new Rect();
            this.animatedReordering = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            ScaleStateListAnimator.apply(this, 0.04f, 1.5f);
            this.shaker = new Shaker(this);
            FrameLayout frameLayout = new FrameLayout(context);
            this.card = frameLayout;
            CardBackground cardBackground = new CardBackground(frameLayout, resourcesProvider, true);
            this.cardBackground = cardBackground;
            frameLayout.setBackground(cardBackground);
            addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
            Ribbon ribbon = new Ribbon(context);
            this.ribbon = ribbon;
            addView(ribbon, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 2.0f, 1.0f, 0.0f));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.getImageReceiver().setAutoRepeat(0);
            FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(80, 80.0f, 17, 0.0f, 12.0f, 0.0f, 12.0f);
            this.imageViewLayoutParams = layoutParamsCreateFrame;
            frameLayout.addView(backupImageView, layoutParamsCreateFrame);
            PremiumLockIconView premiumLockIconView = new PremiumLockIconView(context, PremiumLockIconView.TYPE_GIFT_LOCK, resourcesProvider);
            this.lockView = premiumLockIconView;
            premiumLockIconView.setImageReceiver(backupImageView.getImageReceiver());
            frameLayout.addView(premiumLockIconView, LayoutHelper.createFrame(30, 30.0f, 49, 0.0f, 38.0f, 0.0f, 0.0f));
            PremiumLockIconView premiumLockIconView2 = new PremiumLockIconView(context, PremiumLockIconView.TYPE_GIFT_PIN, resourcesProvider);
            this.pinView = premiumLockIconView2;
            premiumLockIconView2.setImageReceiver(backupImageView.getImageReceiver());
            frameLayout.addView(premiumLockIconView2, LayoutHelper.createFrame(44, 44, 17));
            premiumLockIconView2.setAlpha(0.0f);
            premiumLockIconView2.setScaleX(0.3f);
            premiumLockIconView2.setScaleY(0.3f);
            premiumLockIconView2.setVisibility(8);
            TextView textView = new TextView(context);
            this.titleView = textView;
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView.setGravity(17);
            textView.setTextSize(1, 14.0f);
            textView.setTypeface(AndroidUtilities.bold());
            frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 48, 0.0f, 89.0f, 0.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView2.setGravity(17);
            textView2.setTextSize(1, 12.0f);
            frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 48, 0.0f, 107.0f, 0.0f, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.Gifts.GiftSheet.GiftCell.1
                @Override // android.widget.FrameLayout, android.view.View
                public void onMeasure(int i3, int i4) {
                    super.onMeasure(i3, i4);
                    GiftCell.this.priceBackground.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
                }
            };
            this.priceLayout = frameLayout2;
            TextView textView3 = new TextView(context);
            this.priceView = textView3;
            textView3.setTextSize(1, 12.0f);
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            textView3.setGravity(17);
            textView3.setTextColor(-13397548);
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-2, -2.0f, 81, 0.0f, 0.0f, 0.0f, 11.0f));
            StarsBackgroundView starsBackgroundView = new StarsBackgroundView(context);
            this.priceBackground = starsBackgroundView;
            starsBackgroundView.setBackgroundColor(-16776961);
            frameLayout2.addView(starsBackgroundView, LayoutHelper.createFrame(0, 0.0f));
            frameLayout2.addView(textView3, LayoutHelper.createFrame(-2, 26, 17));
            starsBackgroundView.setBackground(new StarsBackground(Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
            TextView textView4 = new TextView(context);
            this.starsPriceView = textView4;
            textView4.setTextSize(1, 10.66f);
            textView4.setGravity(17);
            textView4.setTextColor(Theme.isCurrentThemeDark() ? -1333971 : -2722014);
            textView4.setVisibility(8);
            frameLayout.addView(textView4, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 161.0f, 0.0f, 8.0f));
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView2 = new BackupImageView(context);
            this.avatarView = backupImageView2;
            backupImageView2.setRoundRadius(AndroidUtilities.dp(20.0f));
            backupImageView2.setVisibility(8);
            FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(20, 20.0f, 51, 2.0f, 2.0f, 2.0f, 2.0f);
            this.avatarViewLayout1 = layoutParamsCreateFrame2;
            frameLayout.addView(backupImageView2, layoutParamsCreateFrame2);
            this.avatarViewLayout2 = LayoutHelper.createFrame(20, 20.0f, 51, 5.0f, 5.0f, 2.0f, 2.0f);
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.pinnedView = frameLayout3;
            frameLayout3.setAlpha(0.0f);
            frameLayout3.setScaleX(0.3f);
            frameLayout3.setScaleY(0.3f);
            frameLayout3.setVisibility(8);
            ImageView imageView = new ImageView(context);
            this.pinnedImageView = imageView;
            imageView.setImageResource(C2573R.drawable.msg_limit_pin);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            frameLayout3.addView(imageView, LayoutHelper.createFrame(12.66f, 12.66f, 17));
            frameLayout.addView(frameLayout3, LayoutHelper.createFrame(20, 20.0f, 51, 2.0f, 2.0f, 2.0f, 2.0f));
            ImageView imageView2 = new ImageView(context);
            this.tonOnlySaleView = imageView2;
            imageView2.setImageResource(C2573R.drawable.mini_gram_14);
            imageView2.setPadding(0, AndroidUtilities.dp(2.0f), 0, 0);
            imageView2.setVisibility(8);
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            frameLayout.addView(imageView2, LayoutHelper.createFrame(20, 20.0f, 51, 3.0f, 3.0f, 3.0f, 3.0f));
            TextView textView5 = new TextView(context);
            this.chanceTextView = textView5;
            textView5.setTextSize(1, 10.0f);
            textView5.setTypeface(AndroidUtilities.bold());
            textView5.setPadding(AndroidUtilities.dp(5.0f), 0, AndroidUtilities.dp(5.0f), 0);
            textView5.setGravity(17);
            textView5.setTextColor(-1);
            frameLayout.addView(textView5, LayoutHelper.createFrame(-2, 17.0f, 51, 4.0f, 4.0f, 0.0f, 0.0f));
            textView5.setVisibility(8);
            setImportantForAccessibility(1);
            frameLayout.setImportantForAccessibility(4);
            ribbon.setImportantForAccessibility(2);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x006e  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            CharSequence text;
            TL_stars.StarGift starGift;
            BackupImageView backupImageView;
            TextView textView;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Button");
            accessibilityNodeInfo.setClickable(true);
            if (isEnabled()) {
                accessibilityNodeInfo.addAction(16);
            }
            try {
                StringBuilder sb = new StringBuilder();
                String userName = null;
                if (this.premiumTier != null) {
                    TextView textView2 = this.titleView;
                    text = (textView2 == null || textView2.getVisibility() != 0 || TextUtils.isEmpty(this.titleView.getText())) ? null : this.titleView.getText();
                } else {
                    TL_stars.SavedStarGift savedStarGift = this.userGift;
                    if (savedStarGift != null && (starGift = savedStarGift.gift) != null) {
                        if ((starGift instanceof TL_stars.TL_starGiftUnique) && !TextUtils.isEmpty(starGift.title)) {
                            text = this.userGift.gift.title;
                        }
                    } else {
                        TL_stars.StarGift starGift2 = this.gift;
                        if (starGift2 != null && (starGift2 instanceof TL_stars.TL_starGiftUnique) && !TextUtils.isEmpty(starGift2.title)) {
                            text = this.gift.title;
                        }
                    }
                }
                if (TextUtils.isEmpty(text)) {
                    text = LocaleController.getString(C2573R.string.Gift2Gift);
                }
                sb.append(text);
                TextView textView3 = this.subtitleView;
                if (textView3 != null && textView3.getVisibility() == 0 && !TextUtils.isEmpty(this.subtitleView.getText())) {
                    sb.append(", ");
                    sb.append(this.subtitleView.getText());
                }
                Ribbon ribbon = this.ribbon;
                if (ribbon != null && ribbon.getVisibility() == 0) {
                    CharSequence text2 = this.ribbon.getText();
                    if (!TextUtils.isEmpty(text2)) {
                        sb.append(", ");
                        sb.append(text2);
                    }
                }
                FrameLayout frameLayout = this.priceLayout;
                if (frameLayout != null && frameLayout.getVisibility() == 0 && (textView = this.priceView) != null && textView.getVisibility() == 0 && !TextUtils.isEmpty(this.priceView.getText())) {
                    sb.append(", ");
                    sb.append(this.priceView.getText());
                }
                TL_stars.SavedStarGift savedStarGift2 = this.userGift;
                if (savedStarGift2 != null && savedStarGift2.unsaved) {
                    sb.append(", ");
                    sb.append(LocaleController.getString(C2573R.string.Gift2FilterHidden));
                }
                TL_stars.SavedStarGift savedStarGift3 = this.userGift;
                if (savedStarGift3 != null && !(savedStarGift3.gift instanceof TL_stars.TL_starGiftUnique) && !savedStarGift3.name_hidden && (backupImageView = this.avatarView) != null && backupImageView.getVisibility() == 0) {
                    long peerDialogId = DialogObject.getPeerDialogId(this.userGift.from_id);
                    if (peerDialogId != 0) {
                        int i = this.currentAccount;
                        if (peerDialogId > 0) {
                            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
                            if (user != null) {
                                userName = UserObject.getUserName(user);
                            }
                        } else {
                            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
                            if (chat != null) {
                                userName = chat.title;
                            }
                        }
                        if (!TextUtils.isEmpty(userName)) {
                            sb.append(", ");
                            sb.append((CharSequence) userName);
                        }
                    }
                }
                CheckBox2 checkBox2 = this.checkBox;
                if (checkBox2 != null && checkBox2.isChecked()) {
                    accessibilityNodeInfo.setCheckable(true);
                    accessibilityNodeInfo.setChecked(true);
                }
                accessibilityNodeInfo.setContentDescription(sb.toString());
            } catch (Exception unused) {
            }
        }

        public void removeImage() {
            this.card.removeView(this.imageView);
        }

        public void setImageSize(int i) {
            FrameLayout.LayoutParams layoutParams = this.imageViewLayoutParams;
            layoutParams.width = i;
            layoutParams.height = i;
        }

        public void setImageLayer(int i) {
            this.imageView.setLayerNum(i);
        }

        public void hidePrice() {
            this.priceLayout.setVisibility(8);
        }

        public void setSelected(boolean z, boolean z2) {
            this.cardBackground.setSelected(z, z2);
            ImageView imageView = this.tonOnlySaleView;
            if (z2) {
                imageView.animate().translationX(z ? AndroidUtilities.dp(6.0f) : 0.0f).translationY(z ? AndroidUtilities.dp(6.0f) : 0.0f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                return;
            }
            imageView.animate().cancel();
            this.tonOnlySaleView.setTranslationX(z ? AndroidUtilities.dp(6.0f) : 0.0f);
            this.tonOnlySaleView.setTranslationY(z ? AndroidUtilities.dp(6.0f) : 0.0f);
        }

        public void invalidateCustom() {
            this.card.invalidate();
            this.card.invalidateDrawable(this.cardBackground);
        }

        public void customDraw(View view, Canvas canvas, float f, float f2, float f3) {
            Canvas canvas2 = canvas;
            canvas2.save();
            canvas2.scale(getScaleX(), getScaleY(), f / 2.0f, f2 / 2.0f);
            TL_stars.TL_starGiftUnique uniqueStarGift = getUniqueStarGift();
            float fDp = uniqueStarGift != null ? AndroidUtilities.dp(63.0f) * f3 : 0.0f;
            this.cardBackground.setBounds(0, 0, (int) f, (int) f2);
            this.cardBackground.draw(canvas2, f3);
            this.cardBackground.getPadding(this.cardBackgroundPadding);
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(80.0f), AndroidUtilities.dp(120.0f), f3);
            float f4 = f2 - fDp;
            this.imageView.getImageReceiver().setImageCoords((f - fLerp) / 2.0f, (f4 - fLerp) / 2.0f, fLerp, fLerp);
            this.imageView.getImageReceiver().draw(canvas2);
            if (this.imageView.getImageReceiver().isLottieRunning()) {
                view.invalidate();
            }
            if (this.lockView.getVisibility() == 0 && this.lockView.getAlpha() > 0.0f) {
                canvas2.save();
                canvas2.translate((f - this.lockView.getMeasuredWidth()) / 2.0f, AndroidUtilities.lerp(this.lockView.getY(), (f4 - this.lockView.getMeasuredHeight()) / 2.0f, f3));
                canvas2.saveLayerAlpha(0.0f, 0.0f, this.lockView.getWidth(), this.lockView.getHeight(), (int) ((1.0f - f3) * 255.0f * this.lockView.getAlpha()), 31);
                this.lockView.draw(canvas2);
                canvas2.restore();
                canvas2.restore();
            }
            if (this.pinnedView.getVisibility() == 0 && this.pinnedView.getAlpha() > 0.0f) {
                canvas2.save();
                canvas2.translate(this.cardBackgroundPadding.left + AndroidUtilities.dp(2.0f), this.cardBackgroundPadding.top + AndroidUtilities.dp(2.0f));
                canvas2.saveLayerAlpha(0.0f, 0.0f, this.pinnedView.getWidth(), this.pinnedView.getHeight(), (int) (this.pinnedView.getAlpha() * 255.0f), 31);
                this.pinnedView.draw(canvas2);
                canvas2.restore();
                canvas2.restore();
            }
            if (this.avatarView.getVisibility() == 0 && this.avatarView.getAlpha() > 0.0f) {
                canvas2.save();
                canvas2.translate(this.cardBackgroundPadding.left + AndroidUtilities.dp(2.0f), this.cardBackgroundPadding.top + AndroidUtilities.dp(2.0f));
                this.avatarView.draw(canvas2);
                canvas2.restore();
            }
            if (this.ribbon.getVisibility() == 0 && this.ribbon.getAlpha() > 0.0f) {
                canvas2.save();
                canvas2.translate(f - AndroidUtilities.dp(1.0f), AndroidUtilities.dp(2.0f));
                float fLerp2 = AndroidUtilities.lerp(1.0f, 1.25f, f3);
                canvas2.scale(fLerp2, fLerp2);
                canvas2.translate(-this.ribbon.getWidth(), 0.0f);
                this.ribbon.draw(canvas2);
                canvas2.restore();
            }
            if (uniqueStarGift != null) {
                if (this.title == null) {
                    this.title = new Text(uniqueStarGift.title, 20.0f, AndroidUtilities.bold());
                }
                if (this.subtitle == null) {
                    this.subtitle = new Text(LocaleController.formatPluralStringComma("Gift2CollectionNumber", uniqueStarGift.num), 13.0f);
                }
                float f5 = 1.0f - f3;
                this.title.ellipsize(f - AndroidUtilities.dp(8.0f)).draw(canvas2, (f - this.title.getWidth()) / 2.0f, ((f2 - AndroidUtilities.dp(40.0f)) - (this.title.getHeight() / 2.0f)) + (AndroidUtilities.dp(50.0f) * f5), -1, f3);
                this.subtitle.ellipsize(f - AndroidUtilities.dp(8.0f)).draw(canvas, (f - this.subtitle.getWidth()) / 2.0f, (AndroidUtilities.dp(50.0f) * f5) + ((f2 - AndroidUtilities.dp(19.0f)) - (this.subtitle.getHeight() / 2.0f)), -1, f3 * 0.6f);
                canvas2 = canvas;
            }
            FrameLayout frameLayout = this.priceLayout;
            if (frameLayout != null && frameLayout.getVisibility() == 0) {
                canvas2.save();
                canvas2.translate(this.priceLayout.getX(), this.priceLayout.getY());
                canvas2.saveLayerAlpha(0.0f, 0.0f, this.priceLayout.getWidth(), this.priceLayout.getHeight(), (int) ((1.0f - f3) * 255.0f * this.priceLayout.getAlpha()), 31);
                this.priceLayout.draw(canvas2);
                canvas2.restore();
                canvas2.restore();
            }
            ImageView imageView = this.tonOnlySaleView;
            if (imageView != null && imageView.getVisibility() == 0) {
                canvas2.save();
                canvas2.translate(this.tonOnlySaleView.getX(), this.tonOnlySaleView.getY());
                canvas2.saveLayerAlpha(0.0f, 0.0f, this.tonOnlySaleView.getWidth(), this.tonOnlySaleView.getHeight(), (int) ((1.0f - f3) * 255.0f * this.tonOnlySaleView.getAlpha()), 31);
                this.tonOnlySaleView.draw(canvas2);
                canvas2.restore();
                canvas2.restore();
            }
            canvas2.restore();
        }

        public void setPinned(final boolean z, boolean z2) {
            TL_stars.SavedStarGift savedStarGift;
            if (this.pinned == z) {
                return;
            }
            this.pinned = z;
            FrameLayout frameLayout = this.pinnedView;
            boolean z3 = false;
            if (z2) {
                frameLayout.setVisibility(0);
                this.pinnedView.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.3f).scaleY(z ? 1.0f : 0.3f).withEndAction(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$GiftCell$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setPinned$0(z);
                    }
                }).start();
            } else {
                frameLayout.setVisibility(z ? 0 : 8);
                this.pinnedView.setAlpha(z ? 1.0f : 0.0f);
                this.pinnedView.setScaleX(z ? 1.0f : 0.3f);
                this.pinnedView.setScaleY(z ? 1.0f : 0.3f);
            }
            if (!this.pinned && this.reordering && !this.inCollection && (savedStarGift = this.userGift) != null && (savedStarGift.gift instanceof TL_stars.TL_starGiftUnique)) {
                z3 = true;
            }
            setShowPinIcon(z3, z2);
            updateRibbonText();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPinned$0(boolean z) {
            if (z) {
                return;
            }
            this.pinnedView.setVisibility(8);
        }

        private TL_stars.TL_starGiftUnique getUniqueStarGift() {
            TL_stars.SavedStarGift savedStarGift = this.userGift;
            if (savedStarGift == null) {
                return null;
            }
            TL_stars.StarGift starGift = savedStarGift.gift;
            if (starGift instanceof TL_stars.TL_starGiftUnique) {
                return (TL_stars.TL_starGiftUnique) starGift;
            }
            return null;
        }

        public void setShowPinIcon(final boolean z, boolean z2) {
            if (this.pinnedIcon == z) {
                return;
            }
            this.pinnedIcon = z;
            PremiumLockIconView premiumLockIconView = this.pinView;
            if (z2) {
                premiumLockIconView.setVisibility(0);
                this.pinView.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.3f).scaleY(z ? 1.0f : 0.3f).withEndAction(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$GiftCell$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setShowPinIcon$1(z);
                    }
                }).start();
            } else {
                premiumLockIconView.setVisibility(z ? 0 : 8);
                this.pinView.setAlpha(z ? 1.0f : 0.0f);
                this.pinView.setScaleX(z ? 1.0f : 0.3f);
                this.pinView.setScaleY(z ? 1.0f : 0.3f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setShowPinIcon$1(boolean z) {
            if (z) {
                return;
            }
            this.pinView.setVisibility(8);
        }

        public void setReordering(boolean z, boolean z2) {
            TL_stars.SavedStarGift savedStarGift;
            if (this.reordering == z) {
                return;
            }
            this.reordering = z;
            if (!z2) {
                this.animatedReordering.force(z);
            }
            invalidate();
            setShowPinIcon((this.pinned || !z || this.inCollection || (savedStarGift = this.userGift) == null || !(savedStarGift.gift instanceof TL_stars.TL_starGiftUnique)) ? false : true, z2);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            canvas.save();
            canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
            float f = this.animatedReordering.set(this.reordering);
            if (f > 0.0f) {
                this.shaker.concat(canvas, f);
            }
            canvas.translate((-getWidth()) / 2.0f, (-getHeight()) / 2.0f);
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        public GiftPremiumBottomSheet$GiftTier getPremiumTier() {
            return this.premiumTier;
        }

        public TL_stars.StarGift getGift() {
            return this.gift;
        }

        public TL_stars.SavedStarGift getSavedGift() {
            return this.userGift;
        }

        public void setPriorityAuction() {
            this.priotityAuction = true;
        }

        public boolean setPremiumGift(GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier) {
            int months = giftPremiumBottomSheet$GiftTier.getMonths();
            if (this.lastTier != giftPremiumBottomSheet$GiftTier) {
                BackupImageView backupImageView = this.imageView;
                Runnable premiumGiftImage = StarsIntroActivity.setPremiumGiftImage(backupImageView, backupImageView.getImageReceiver(), months);
                this.cancel = premiumGiftImage;
                if (premiumGiftImage != null) {
                    premiumGiftImage.run();
                    this.cancel = null;
                }
            }
            this.cardBackground.setBackdrop(null);
            this.cardBackground.setPattern(null);
            this.cardBackground.setStrokeColors(null);
            this.titleView.setText(LocaleController.formatPluralString("Gift2Months", months, new Object[0]));
            this.subtitleView.setText(LocaleController.getString(C2573R.string.TelegramPremiumShort));
            this.titleView.setVisibility(0);
            this.subtitleView.setVisibility(0);
            this.imageView.setTranslationY(-AndroidUtilities.dp(8.0f));
            this.avatarView.setVisibility(8);
            this.lockView.setVisibility(8);
            boolean zIsStarsPaymentAvailable = giftPremiumBottomSheet$GiftTier.isStarsPaymentAvailable();
            TextView textView = this.starsPriceView;
            if (zIsStarsPaymentAvailable) {
                textView.setTextColor(Theme.isCurrentThemeDark() ? -1333971 : -2722014);
                this.starsPriceView.setVisibility(0);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(_UrlKt.FRAGMENT_ENCODE_SET + LocaleController.formatNumber(giftPremiumBottomSheet$GiftTier.getStarsPrice(), ','));
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilder.length(), 33);
                ColoredImageSpan[] coloredImageSpanArr = new ColoredImageSpan[1];
                this.starsPriceView.setText(StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatSpannable(C2573R.string.PremiumOrStarsPrice, spannableStringBuilder), 0.48f, coloredImageSpanArr));
                coloredImageSpanArr[0].spaceScaleX = 0.8f;
            } else {
                textView.setVisibility(8);
            }
            FrameLayout.LayoutParams layoutParams = this.imageViewLayoutParams;
            layoutParams.gravity = 49;
            this.imageView.setLayoutParams(layoutParams);
            this.priceView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            this.priceView.setTextSize(1, 12.0f);
            this.priceView.setText(giftPremiumBottomSheet$GiftTier.getFormattedPrice());
            this.priceBackground.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(13.0f), 422810068));
            this.priceView.setTextColor(-13397548);
            ((ViewGroup.MarginLayoutParams) this.priceLayout.getLayoutParams()).topMargin = AndroidUtilities.dp(130.0f);
            ((FrameLayout.LayoutParams) this.priceLayout.getLayoutParams()).gravity = 49;
            this.lastTier = giftPremiumBottomSheet$GiftTier;
            this.lastDocument = null;
            this.premiumTier = giftPremiumBottomSheet$GiftTier;
            this.gift = null;
            this.giftMine = false;
            this.userGift = null;
            this.allowResaleInGifts = false;
            this.inResalePage = false;
            this.inCollection = false;
            this.title = null;
            this.subtitle = null;
            setPinned(false, false);
            updateRibbonText();
            return false;
        }

        private void setSticker(TLRPC.Document document, Object obj) {
            if (document == null) {
                this.imageView.clearImage();
                this.lastDocument = null;
                this.lastDocumentId = 0L;
            } else {
                if (this.lastDocument == document) {
                    return;
                }
                this.lastDocument = document;
                this.lastDocumentId = document.id;
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, AndroidUtilities.dp(100.0f));
                this.imageView.setImage(ImageLocation.getForDocument(document), "80_80_nolimit_pcache", ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "80_80_nolimit_pcache", DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 0.3f), obj);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x02ac  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x02bd  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x02de  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x02e2  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x02ff  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0301  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x030d  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x0319  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x031d  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x032f  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0343  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x015c  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0172  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x01d3  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0280  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean setStarsGift(TL_stars.StarGift starGift, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            long j;
            long j2;
            boolean z6;
            boolean z7;
            Runnable runnable = this.cancel;
            if (runnable != null) {
                runnable.run();
                this.cancel = null;
            }
            setSticker(starGift.getDocument(), starGift);
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeBackdrop.class);
            this.cardBackground.setBackdrop(stargiftattributebackdrop);
            this.cardBackground.setPattern((TL_stars.starGiftAttributePattern) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributePattern.class));
            if (starGift.auction && ((!(z7 = starGift.sold_out) || this.priotityAuction) && (!z3 || starGift.availability_resale <= 0))) {
                CardBackground cardBackground = this.cardBackground;
                if (z7) {
                    int i = Theme.key_gift_ribbon_soldout;
                    cardBackground.setStrokeColors(new int[]{Theme.getColor(i, this.resourcesProvider), Theme.getColor(i, this.resourcesProvider)});
                } else {
                    cardBackground.setStrokeColors(PREMIUM_STROKE);
                }
            } else {
                this.cardBackground.setStrokeColors((!starGift.require_premium || (z3 && starGift.availability_resale > 0)) ? null : PREMIUM_STROKE);
            }
            this.titleView.setVisibility(8);
            this.subtitleView.setVisibility(8);
            this.imageView.setTranslationY(0.0f);
            this.lockView.setVisibility(8);
            this.tonOnlySaleView.setVisibility(starGift.resale_ton_only ? 0 : 8);
            this.chanceTextView.setVisibility(z5 ? 0 : 8);
            this.chanceTextView.setTranslationX(starGift.resale_ton_only ? AndroidUtilities.dp(23.0f) : 0.0f);
            this.chanceTextView.setTranslationY(starGift.resale_ton_only ? AndroidUtilities.dp(1.0f) : 0.0f);
            if (z5) {
                TextView textView = this.chanceTextView;
                StringBuilder sb = new StringBuilder("+");
                int i2 = starGift.craft_chance_permille;
                sb.append(i2 <= 0 ? "<0.1%" : AffiliateProgramFragment.percents(i2));
                textView.setText(sb.toString());
            }
            FrameLayout.LayoutParams layoutParams = this.imageViewLayoutParams;
            layoutParams.gravity = 49;
            this.imageView.setLayoutParams(layoutParams);
            if (z4) {
                j = 0;
            } else {
                if ((!z3 || starGift.availability_resale <= 0) && starGift.locked_until_date > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
                    this.avatarView.setVisibility(0);
                    this.avatarView.setLayoutParams(this.avatarViewLayout2);
                    j = 0;
                    this.avatarView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_color_red, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
                    this.avatarView.setImageResource(C2573R.drawable.mini_gift_lock);
                    this.priceView.setVisibility((z5 || z4) ? 0 : 8);
                    this.priceView.setTextSize(1, 12.0f);
                    if (!z) {
                        this.priceView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
                        this.priceView.setText(LocaleController.getString(C2573R.string.Gift2TransferMine));
                        int iBlendOver = stargiftattributebackdrop != null ? Theme.blendOver(stargiftattributebackdrop.center_color | (-16777216), Theme.multAlpha(stargiftattributebackdrop.pattern_color | (-16777216), 0.55f)) : 1090519039;
                        this.priceBackground.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(13.0f), iBlendOver, Theme.blendOver(iBlendOver, 822083583)));
                        this.priceView.setTextColor(-1);
                        this.tonOnlySaleView.setColorFilter(-1);
                        this.tonOnlySaleView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(10.0f), iBlendOver, Theme.blendOver(iBlendOver, 822083583)));
                    } else {
                        TextView textView2 = this.priceView;
                        if (z4) {
                            textView2.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f), 0);
                            long resellStars = starGift.getResellStars();
                            int iBlendOver2 = Theme.blendOver(stargiftattributebackdrop.center_color | (-16777216), Theme.multAlpha(stargiftattributebackdrop.pattern_color | (-16777216), 0.55f));
                            this.priceView.setText(StarsIntroActivity.replaceStars("XTR " + LocaleController.formatNumber(resellStars, ',')));
                            this.priceBackground.setBackground(new StarsBackground(1895825407, iBlendOver2));
                            this.priceView.setTextColor(-1);
                            this.tonOnlySaleView.setColorFilter(-1);
                            this.tonOnlySaleView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), iBlendOver2));
                            this.chanceTextView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(9.0f), iBlendOver2));
                        } else {
                            textView2.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f), 0);
                            if (z3) {
                                long j3 = starGift.availability_resale;
                                if (j3 > j) {
                                    j2 = starGift.resell_min_stars;
                                    if (j3 > 1 && j2 < MessagesController.getInstance(this.currentAccount).config.starsStarGiftResaleAmountMax.get()) {
                                        z6 = true;
                                    }
                                    if (!starGift.auction && starGift.availability_resale == j) {
                                        this.priceView.setText(LocaleController.getString(starGift.sold_out ? C2573R.string.Gift2AuctionPriceView : C2573R.string.Gift2AuctionPriceJoin));
                                    } else {
                                        TextView textView3 = this.priceView;
                                        StringBuilder sb2 = new StringBuilder("XTR ");
                                        sb2.append(LocaleController.formatNumber(j2, ','));
                                        sb2.append(z6 ? "+" : _UrlKt.FRAGMENT_ENCODE_SET);
                                        textView3.setText(StarsIntroActivity.replaceStarsWithPlain(sb2.toString(), 0.71f));
                                    }
                                    boolean z8 = starGift instanceof TL_stars.TL_starGiftUnique;
                                    this.priceBackground.setBackground(new StarsBackground(!z8 ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                                    this.priceView.setTextColor(!Theme.isCurrentThemeDark() ? -1333971 : -2722014);
                                    this.tonOnlySaleView.setColorFilter(Theme.isCurrentThemeDark() ? -1333971 : -2722014);
                                    this.tonOnlySaleView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), !z8 ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                                    this.chanceTextView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(9.0f), stargiftattributebackdrop == null ? Theme.blendOver(stargiftattributebackdrop.center_color | (-16777216), Theme.multAlpha(stargiftattributebackdrop.pattern_color | (-16777216), 0.55f)) : 0));
                                } else {
                                    j2 = ((z2 && starGift.can_upgrade) ? starGift.upgrade_stars : j) + starGift.stars;
                                }
                                z6 = false;
                                if (!starGift.auction) {
                                    TextView textView32 = this.priceView;
                                    StringBuilder sb22 = new StringBuilder("XTR ");
                                    sb22.append(LocaleController.formatNumber(j2, ','));
                                    sb22.append(z6 ? "+" : _UrlKt.FRAGMENT_ENCODE_SET);
                                    textView32.setText(StarsIntroActivity.replaceStarsWithPlain(sb22.toString(), 0.71f));
                                    boolean z82 = starGift instanceof TL_stars.TL_starGiftUnique;
                                    this.priceBackground.setBackground(new StarsBackground(!z82 ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                                    this.priceView.setTextColor(!Theme.isCurrentThemeDark() ? -1333971 : -2722014);
                                    this.tonOnlySaleView.setColorFilter(Theme.isCurrentThemeDark() ? -1333971 : -2722014);
                                    this.tonOnlySaleView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), !z82 ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                                    this.chanceTextView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(9.0f), stargiftattributebackdrop == null ? Theme.blendOver(stargiftattributebackdrop.center_color | (-16777216), Theme.multAlpha(stargiftattributebackdrop.pattern_color | (-16777216), 0.55f)) : 0));
                                }
                            }
                        }
                    }
                    ((ViewGroup.MarginLayoutParams) this.priceLayout.getLayoutParams()).topMargin = AndroidUtilities.dp(103.0f);
                    ((FrameLayout.LayoutParams) this.priceLayout.getLayoutParams()).gravity = 49;
                    this.starsPriceView.setVisibility(8);
                    this.lastTier = null;
                    this.premiumTier = null;
                    this.gift = starGift;
                    this.giftMine = z;
                    this.userGift = null;
                    this.allowResaleInGifts = z3;
                    this.inResalePage = z4;
                    this.inCollection = false;
                    this.inCrafting = z5;
                    this.title = null;
                    this.subtitle = null;
                    setPinned(false, false);
                    updateRibbonText();
                    return false;
                }
                j = 0;
            }
            this.avatarView.setColorFilter(null);
            this.avatarView.setVisibility(8);
            this.priceView.setVisibility((z5 || z4) ? 0 : 8);
            this.priceView.setTextSize(1, 12.0f);
            if (!z) {
            }
            ((ViewGroup.MarginLayoutParams) this.priceLayout.getLayoutParams()).topMargin = AndroidUtilities.dp(103.0f);
            ((FrameLayout.LayoutParams) this.priceLayout.getLayoutParams()).gravity = 49;
            this.starsPriceView.setVisibility(8);
            this.lastTier = null;
            this.premiumTier = null;
            this.gift = starGift;
            this.giftMine = z;
            this.userGift = null;
            this.allowResaleInGifts = z3;
            this.inResalePage = z4;
            this.inCollection = false;
            this.inCrafting = z5;
            this.title = null;
            this.subtitle = null;
            setPinned(false, false);
            updateRibbonText();
            return false;
        }

        public long getGiftId() {
            TL_stars.StarGift starGift = this.gift;
            if (starGift != null) {
                return starGift.id;
            }
            return 0L;
        }

        public boolean setStarsGift(final TL_stars.SavedStarGift savedStarGift, boolean z, boolean z2) {
            int i;
            char c2;
            Runnable runnable = this.cancel;
            if (runnable != null) {
                runnable.run();
                this.cancel = null;
            }
            setSticker(savedStarGift.gift.getDocument(), savedStarGift);
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(savedStarGift.gift.attributes, TL_stars.starGiftAttributeBackdrop.class);
            this.cardBackground.setBackdrop(stargiftattributebackdrop);
            this.cardBackground.setPattern((TL_stars.starGiftAttributePattern) StarsController.findAttribute(savedStarGift.gift.attributes, TL_stars.starGiftAttributePattern.class));
            this.cardBackground.setStrokeColors(null);
            this.titleView.setVisibility(8);
            this.subtitleView.setVisibility(8);
            this.imageView.setTranslationY(0.0f);
            this.lockView.setWaitingImage();
            this.lockView.setBlendWithColor(stargiftattributebackdrop != null ? Integer.valueOf(Theme.multAlpha(stargiftattributebackdrop.center_color | (-16777216), 0.75f)) : null);
            this.pinView.setWaitingImage();
            this.pinView.setBlendWithColor(stargiftattributebackdrop != null ? Integer.valueOf(Theme.multAlpha(stargiftattributebackdrop.center_color | (-16777216), 0.75f)) : null);
            this.tonOnlySaleView.setVisibility(savedStarGift.gift.resale_ton_only ? 0 : 8);
            FrameLayout frameLayout = this.pinnedView;
            if (stargiftattributebackdrop != null) {
                frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(20.0f), Theme.adaptHSV(stargiftattributebackdrop.center_color | (-16777216), 0.1f, -0.2f)));
            } else {
                frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(20.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
            }
            FrameLayout.LayoutParams layoutParams = this.imageViewLayoutParams;
            layoutParams.gravity = 17;
            this.imageView.setLayoutParams(layoutParams);
            TL_stars.SavedStarGift savedStarGift2 = this.lastUserGift;
            PremiumLockIconView premiumLockIconView = this.lockView;
            if (savedStarGift2 == savedStarGift) {
                premiumLockIconView.setVisibility(0);
                this.lockView.animate().alpha(savedStarGift.unsaved ? 1.0f : 0.0f).scaleX(savedStarGift.unsaved ? 1.0f : 0.4f).scaleY(savedStarGift.unsaved ? 1.0f : 0.4f).setDuration(350L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).withEndAction(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$GiftCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setStarsGift$2(savedStarGift);
                    }
                }).start();
            } else {
                premiumLockIconView.setAlpha(savedStarGift.unsaved ? 1.0f : 0.0f);
                this.lockView.setScaleX(savedStarGift.unsaved ? 1.0f : 0.4f);
                this.lockView.setScaleY(savedStarGift.unsaved ? 1.0f : 0.4f);
                this.lockView.setVisibility(savedStarGift.unsaved ? 0 : 8);
            }
            boolean z3 = savedStarGift.gift instanceof TL_stars.TL_starGiftUnique;
            this.avatarView.setColorFilter(null);
            this.avatarView.setLayoutParams(this.avatarViewLayout1);
            if (z3) {
                this.avatarView.setVisibility(8);
            } else if (savedStarGift.name_hidden) {
                this.avatarView.setVisibility(0);
                CombinedDrawable platformDrawable = StarsIntroActivity.StarsTransactionView.getPlatformDrawable("anonymous");
                platformDrawable.setIconSize(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
                this.avatarView.setImageDrawable(platformDrawable);
            } else {
                long peerDialogId = DialogObject.getPeerDialogId(savedStarGift.from_id);
                int i2 = this.currentAccount;
                if (peerDialogId > 0) {
                    TLRPC.User user = MessagesController.getInstance(i2).getUser(Long.valueOf(peerDialogId));
                    BackupImageView backupImageView = this.avatarView;
                    if (user != null) {
                        backupImageView.setVisibility(0);
                        this.avatarDrawable.setInfo(user);
                        this.avatarView.setForUserOrChat(user, this.avatarDrawable);
                    } else {
                        backupImageView.setVisibility(8);
                    }
                } else {
                    TLRPC.Chat chat = MessagesController.getInstance(i2).getChat(Long.valueOf(-peerDialogId));
                    BackupImageView backupImageView2 = this.avatarView;
                    if (chat != null) {
                        backupImageView2.setVisibility(0);
                        this.avatarDrawable.setInfo(chat);
                        this.avatarView.setForUserOrChat(chat, this.avatarDrawable);
                    } else {
                        backupImageView2.setVisibility(8);
                    }
                }
            }
            if (stargiftattributebackdrop != null && savedStarGift.gift.resell_amount != null) {
                this.priceView.setVisibility(0);
                FrameLayout.LayoutParams layoutParams2 = this.imageViewLayoutParams;
                layoutParams2.topMargin = 0;
                layoutParams2.bottomMargin = 0;
                this.priceView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f), 0);
                this.priceView.setTextSize(1, 12.0f);
                ColoredImageSpan[] coloredImageSpanArr = new ColoredImageSpan[1];
                TL_stars.StarGift starGift = savedStarGift.gift;
                if (starGift.resale_ton_only && DialogObject.getPeerDialogId(starGift.owner_id) == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                    TextView textView = this.priceView;
                    StringBuilder sb = new StringBuilder("XTR ");
                    c2 = 0;
                    sb.append((Object) StarsIntroActivity.formatStarsAmount(savedStarGift.gift.getResellAmount(AmountUtils$Currency.TON).toTl(), 1.0f, ','));
                    textView.setText(StarsIntroActivity.replaceStars(true, sb.toString(), 0.95f, coloredImageSpanArr));
                } else {
                    c2 = 0;
                    this.priceView.setText(StarsIntroActivity.replaceStars("XTR " + LocaleController.formatNumber(savedStarGift.gift.getResellStars(), ','), 0.95f, coloredImageSpanArr));
                }
                ColoredImageSpan coloredImageSpan = coloredImageSpanArr[c2];
                if (coloredImageSpan != null) {
                    coloredImageSpan.translate(0.0f, AndroidUtilities.dp(0.5f));
                }
                int iBlendOver = Theme.blendOver(stargiftattributebackdrop.center_color | (-16777216), Theme.multAlpha(stargiftattributebackdrop.pattern_color | (-16777216), 0.55f));
                this.priceBackground.setBackground(new StarsBackground(1895825407, iBlendOver));
                this.priceView.setTextColor(-1);
                this.tonOnlySaleView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), iBlendOver));
                this.tonOnlySaleView.setColorFilter(-1);
                ((FrameLayout.LayoutParams) this.priceLayout.getLayoutParams()).gravity = 49;
                ((ViewGroup.MarginLayoutParams) this.priceLayout.getLayoutParams()).topMargin = AndroidUtilities.dp(79.0f);
            } else {
                TextView textView2 = this.priceView;
                if (z) {
                    textView2.setVisibility(8);
                    this.imageViewLayoutParams.topMargin = AndroidUtilities.dp(12.0f);
                    this.imageViewLayoutParams.bottomMargin = AndroidUtilities.dp(12.0f);
                    i = 0;
                } else {
                    i = 0;
                    textView2.setVisibility(0);
                    FrameLayout.LayoutParams layoutParams3 = this.imageViewLayoutParams;
                    layoutParams3.topMargin = 0;
                    layoutParams3.bottomMargin = 0;
                }
                TextView textView3 = this.priceView;
                if (z3) {
                    textView3.setPadding(AndroidUtilities.dp(8.0f), i, AndroidUtilities.dp(8.0f), i);
                    this.priceView.setTextSize(1, 12.0f);
                    this.priceView.setText(LocaleController.getString(C2573R.string.Gift2PriceUnique));
                } else {
                    textView3.setPadding(AndroidUtilities.dp(8.0f), i, AndroidUtilities.dp(10.0f), i);
                    this.priceView.setTextSize(1, 12.0f);
                    TextView textView4 = this.priceView;
                    StringBuilder sb2 = new StringBuilder("XTR ");
                    TL_stars.StarGift starGift2 = savedStarGift.gift;
                    long j = starGift2.stars;
                    long j2 = savedStarGift.convert_stars;
                    if (j2 <= 0) {
                        j2 = starGift2.convert_stars;
                    }
                    sb2.append(LocaleController.formatNumber(Math.max(j, j2), ','));
                    textView4.setText(StarsIntroActivity.replaceStarsWithPlain(sb2.toString(), 0.66f));
                }
                this.priceView.setTextColor(z3 ? -1 : Theme.isCurrentThemeDark() ? -1333971 : -4229632);
                int i3 = 1088989954;
                this.priceBackground.setBackground(new StarsBackground(z3 ? 1090519039 : Theme.isCurrentThemeDark() ? 518759725 : 1088989954));
                ImageView imageView = this.tonOnlySaleView;
                int iDp = AndroidUtilities.dp(10.0f);
                if (z3) {
                    i3 = 1090519039;
                } else if (Theme.isCurrentThemeDark()) {
                    i3 = 518759725;
                }
                imageView.setBackground(Theme.createRoundRectDrawable(iDp, i3));
                this.tonOnlySaleView.setColorFilter(z3 ? -1 : Theme.isCurrentThemeDark() ? -1333971 : -4229632);
                ((FrameLayout.LayoutParams) this.priceLayout.getLayoutParams()).gravity = 49;
                ((ViewGroup.MarginLayoutParams) this.priceLayout.getLayoutParams()).topMargin = AndroidUtilities.dp(103.0f);
            }
            this.starsPriceView.setVisibility(8);
            this.lastUserGift = savedStarGift;
            this.lastTier = null;
            TL_stars.SavedStarGift savedStarGift3 = this.userGift;
            this.premiumTier = null;
            this.gift = null;
            this.giftMine = false;
            this.userGift = savedStarGift;
            this.allowResaleInGifts = false;
            this.inResalePage = false;
            this.inCollection = z2;
            this.title = null;
            this.subtitle = null;
            setPinned(savedStarGift.pinned_to_top, savedStarGift3 == savedStarGift);
            updateRibbonText();
            return savedStarGift3 == savedStarGift;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setStarsGift$2(TL_stars.SavedStarGift savedStarGift) {
            if (savedStarGift.unsaved) {
                return;
            }
            this.lockView.setVisibility(8);
        }

        public void setChecked(boolean z, boolean z2) {
            if (this.checkBox == null) {
                CheckBox2 checkBox2 = new CheckBox2(getContext(), 21);
                this.checkBox = checkBox2;
                checkBox2.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
                this.checkBox.setDrawUnchecked(false);
                this.card.addView(this.checkBox, LayoutHelper.createFrame(24, 24.0f, 51, 4.0f, 4.0f, 4.0f, 4.0f));
            }
            this.avatarView.setVisibility(8);
            this.checkBox.setChecked(z, z2);
        }

        private void updateRibbonText() {
            TL_stars.SavedStarGift savedStarGift = this.userGift;
            if (savedStarGift != null) {
                TL_stars.StarGift starGift = savedStarGift.gift;
                if (starGift instanceof TL_stars.TL_starGiftUnique) {
                    this.ribbon.setVisibility(0);
                    if (this.userGift.gift.resell_amount != null) {
                        int iBlendOver = Theme.blendOver(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), 0.04f));
                        this.ribbon.setColor(Theme.getColor(Theme.key_color_green, this.resourcesProvider));
                        this.ribbon.setStrokeColor(iBlendOver);
                        this.ribbon.setBackdrop(null);
                        this.ribbon.setText(LocaleController.getString(C2573R.string.Gift2OnSale), false);
                        return;
                    }
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop((TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(this.userGift.gift.attributes, TL_stars.starGiftAttributeBackdrop.class));
                    this.ribbon.setText("#" + LocaleController.formatNumber(this.userGift.gift.num, ','), true);
                    return;
                }
                boolean z = starGift.limited;
                Ribbon ribbon = this.ribbon;
                if (z) {
                    ribbon.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop(null);
                    this.ribbon.setText(LocaleController.formatString(C2573R.string.Gift2Limited1OfRibbon, AndroidUtilities.formatWholeNumber(this.userGift.gift.availability_total, 0)), true);
                    return;
                }
                ribbon.setBackdrop(null);
                this.ribbon.setVisibility(8);
                return;
            }
            TL_stars.StarGift starGift2 = this.gift;
            if (starGift2 != null) {
                if (this.inResalePage || this.inCrafting) {
                    this.ribbon.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setBackdrop((TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(this.gift.attributes, TL_stars.starGiftAttributeBackdrop.class));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setText("#" + LocaleController.formatNumber(this.gift.num, ','), true);
                    return;
                }
                if (this.allowResaleInGifts && starGift2.availability_resale > 0) {
                    this.ribbon.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_color_green, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop(null);
                    this.ribbon.setText(LocaleController.getString(C2573R.string.Gift2Resale), false);
                    return;
                }
                if (this.giftMine) {
                    this.ribbon.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop((TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(this.gift.attributes, TL_stars.starGiftAttributeBackdrop.class));
                    this.ribbon.setText(LocaleController.formatString(C2573R.string.Gift2Limited1OfRibbon, AndroidUtilities.formatWholeNumber(this.gift.availability_issued, 0)), true);
                    return;
                }
                boolean z2 = starGift2.limited;
                if (z2 && starGift2.availability_remains <= 0) {
                    this.ribbon.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon_soldout, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop(null);
                    this.ribbon.setText(LocaleController.getString(C2573R.string.Gift2SoldOut), true);
                    return;
                }
                if (starGift2.auction) {
                    this.ribbon.setVisibility(0);
                    this.ribbon.setBackdrop(null);
                    this.ribbon.setColors(-2650077, -4227818);
                    this.ribbon.setStrokeColor(0);
                    int i = this.gift.auction_start_date;
                    int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                    Ribbon ribbon2 = this.ribbon;
                    if (i > currentTime) {
                        ribbon2.setText(LocaleController.getString(C2573R.string.Gift2LimitedAuctionSoon), true);
                        return;
                    } else {
                        ribbon2.setText(LocaleController.getString(C2573R.string.Gift2LimitedAuction), true);
                        return;
                    }
                }
                if (starGift2.require_premium) {
                    this.ribbon.setVisibility(0);
                    this.ribbon.setBackdrop(null);
                    this.ribbon.setColors(-2650077, -4227818);
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setText(LocaleController.getString(C2573R.string.Gift2LimitedPremium), true);
                    return;
                }
                Ribbon ribbon3 = this.ribbon;
                if (z2) {
                    ribbon3.setVisibility(0);
                    this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setBackdrop(null);
                    this.ribbon.setText(LocaleController.getString(C2573R.string.Gift2LimitedRibbon), true);
                    return;
                }
                ribbon3.setBackdrop(null);
                this.ribbon.setStrokeColor(0);
                this.ribbon.setVisibility(8);
                return;
            }
            GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier = this.premiumTier;
            if (giftPremiumBottomSheet$GiftTier != null) {
                int discount = giftPremiumBottomSheet$GiftTier.getDiscount();
                Ribbon ribbon4 = this.ribbon;
                if (discount > 0) {
                    ribbon4.setVisibility(0);
                    this.ribbon.setBackdrop(null);
                    this.ribbon.setColors(-2535425, -8229377);
                    this.ribbon.setStrokeColor(0);
                    this.ribbon.setText(12, LocaleController.formatString(C2573R.string.GiftPremiumOptionDiscount, Integer.valueOf(this.premiumTier.getDiscount())), true);
                    return;
                }
                ribbon4.setVisibility(8);
                this.ribbon.setBackdrop(null);
                this.ribbon.setStrokeColor(0);
            }
        }

        public void setRibbonColor(int i) {
            this.ribbon.setColor(i);
            this.ribbon.invalidate();
        }

        public void setRibbonText(String str) {
            this.ribbon.setText(str, true);
        }

        public void setRibbonTextOneOf(int i) {
            this.ribbon.setVisibility(0);
            this.ribbon.setColor(Theme.getColor(Theme.key_gift_ribbon, this.resourcesProvider));
            this.ribbon.setStrokeColor(0);
            this.ribbon.setBackdrop((TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(this.gift.attributes, TL_stars.starGiftAttributeBackdrop.class));
            this.ribbon.setText(LocaleController.formatString(C2573R.string.Gift2Limited1OfRibbon, AndroidUtilities.formatWholeNumber(i, 0)), true);
        }

        public static class Factory extends UItem.UItemFactory<GiftCell> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public GiftCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new GiftCell(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                boolean starsGift;
                GiftCell giftCell = (GiftCell) view;
                Object obj = uItem.object;
                if (obj instanceof GiftPremiumBottomSheet$GiftTier) {
                    starsGift = giftCell.setPremiumGift((GiftPremiumBottomSheet$GiftTier) obj);
                } else {
                    if (obj instanceof TL_stars.StarGift) {
                        TL_stars.StarGift starGift = (TL_stars.StarGift) obj;
                        boolean z2 = uItem.checked;
                        Object obj2 = uItem.object2;
                        starsGift = giftCell.setStarsGift(starGift, z2, obj2 instanceof Boolean ? ((Boolean) obj2).booleanValue() : false, uItem.accent, uItem.red, uItem.locked);
                    } else {
                        starsGift = obj instanceof TL_stars.SavedStarGift ? giftCell.setStarsGift((TL_stars.SavedStarGift) obj, uItem.accent, uItem.red) : false;
                    }
                }
                if (uItem.collapsed) {
                    giftCell.setChecked(uItem.checked, starsGift);
                }
                giftCell.setReordering(uItem.reordering, starsGift);
                giftCell.card.setAlpha(uItem.enabled ? 1.0f : 0.65f);
                giftCell.ribbon.setAlpha(uItem.enabled ? 1.0f : 0.5f);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void attachedView(RecyclerListView recyclerListView, View view, UItem uItem) {
                ((GiftCell) view).setReordering(uItem.reordering, false);
            }

            public static UItem asPremiumGift(GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier) {
                UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
                spanCount.object = giftPremiumBottomSheet$GiftTier;
                return spanCount;
            }

            public static UItem asStarGift(int i, TL_stars.StarGift starGift, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
                UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
                spanCount.intValue = i;
                spanCount.object = starGift;
                spanCount.checked = z;
                spanCount.object2 = Boolean.valueOf(z2);
                spanCount.red = z4;
                spanCount.accent = z3;
                spanCount.locked = z5;
                return spanCount;
            }

            public static UItem asStarGift(int i, TL_stars.SavedStarGift savedStarGift, boolean z, boolean z2, boolean z3) {
                UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
                spanCount.intValue = i;
                spanCount.object = savedStarGift;
                spanCount.accent = z;
                spanCount.collapsed = z2;
                spanCount.red = z3;
                return spanCount;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                if (uItem.accent != uItem2.accent) {
                    return false;
                }
                Object obj = uItem.object;
                if (obj != null || uItem2.object != null) {
                    if (obj instanceof GiftPremiumBottomSheet$GiftTier) {
                        return obj == uItem2.object;
                    }
                    if (obj instanceof TL_stars.StarGift) {
                        Object obj2 = uItem2.object;
                        if (obj2 instanceof TL_stars.StarGift) {
                            return ((TL_stars.StarGift) obj).id == ((TL_stars.StarGift) obj2).id;
                        }
                    }
                    if (obj instanceof TL_stars.SavedStarGift) {
                        Object obj3 = uItem2.object;
                        if (obj3 instanceof TL_stars.SavedStarGift) {
                            TL_stars.SavedStarGift savedStarGift = (TL_stars.SavedStarGift) obj;
                            TL_stars.SavedStarGift savedStarGift2 = (TL_stars.SavedStarGift) obj3;
                            return savedStarGift.gift.id == savedStarGift2.gift.id && savedStarGift.date == savedStarGift2.date && savedStarGift.saved_id == savedStarGift2.saved_id;
                        }
                    }
                }
                return uItem.intValue == uItem2.intValue && uItem.checked == uItem2.checked && uItem.longValue == uItem2.longValue && TextUtils.equals(uItem.text, uItem2.text);
            }
        }
    }

    public static class RibbonDrawable extends CompatDrawable {
        private boolean left;
        private StarsReactionsSheet.Particles particles;
        private Path path;
        private float scale;
        private Paint strokePaint;
        private Text text;
        private int textColor;

        public static void fillRibbonPath(Path path, float f, final boolean z) {
            Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: org.telegram.ui.Gifts.GiftSheet$RibbonDrawable$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    Float f2 = (Float) obj;
                    return Float.valueOf(z ? 48.0f - f2.floatValue() : f2.floatValue());
                }
            };
            path.rewind();
            float f2 = f * 24.5f;
            path.moveTo(AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(46.83f))).floatValue() * f), AndroidUtilities.dp(f2));
            path.lineTo(AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(23.5f))).floatValue() * f), AndroidUtilities.dp(1.17f * f));
            path.cubicTo(AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(22.75f))).floatValue() * f), AndroidUtilities.dp(0.42f * f), AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(21.73f))).floatValue() * f), 0.0f, AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(20.68f))).floatValue() * f), 0.0f);
            float f3 = f * 0.05f;
            path.cubicTo(AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(19.62f))).floatValue() * f), 0.0f, AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(2.73f))).floatValue() * f), AndroidUtilities.dp(f3), AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(1.55f))).floatValue() * f), AndroidUtilities.dp(f3));
            path.cubicTo(AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(0.36f))).floatValue() * f), AndroidUtilities.dp(f3), AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(-0.23f))).floatValue() * f), AndroidUtilities.dp(1.4885f * f), AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(0.6f))).floatValue() * f), AndroidUtilities.dp(2.32f * f));
            path.lineTo(AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(45.72f))).floatValue() * f), AndroidUtilities.dp(47.44f * f));
            float fDp = AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(46.56f))).floatValue() * f);
            float fDp2 = AndroidUtilities.dp(48.28f * f);
            Float fValueOf = Float.valueOf(48.0f);
            path.cubicTo(fDp, fDp2, AndroidUtilities.dp(((Float) callbackReturn.run(fValueOf)).floatValue() * f), AndroidUtilities.dp(47.68f * f), AndroidUtilities.dp(((Float) callbackReturn.run(fValueOf)).floatValue() * f), AndroidUtilities.dp(46.5f * f));
            path.cubicTo(AndroidUtilities.dp(((Float) callbackReturn.run(fValueOf)).floatValue() * f), AndroidUtilities.dp(45.31f * f), AndroidUtilities.dp(((Float) callbackReturn.run(fValueOf)).floatValue() * f), AndroidUtilities.dp(28.38f * f), AndroidUtilities.dp(((Float) callbackReturn.run(fValueOf)).floatValue() * f), AndroidUtilities.dp(27.32f * f));
            path.cubicTo(AndroidUtilities.dp(((Float) callbackReturn.run(fValueOf)).floatValue() * f), AndroidUtilities.dp(26.26f * f), AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(47.5f))).floatValue() * f), AndroidUtilities.dp(25.24f * f), AndroidUtilities.dp(((Float) callbackReturn.run(Float.valueOf(46.82f))).floatValue() * f), AndroidUtilities.dp(f2));
            path.close();
        }

        public RibbonDrawable(View view, float f) {
            super(view);
            this.path = new Path();
            this.strokePaint = new Paint(1);
            this.textColor = -1;
            Path path = this.path;
            this.scale = f;
            fillRibbonPath(path, f, false);
            this.paint.setColor(-698031);
            this.paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dp(2.33f)));
            this.strokePaint.setColor(0);
            this.strokePaint.setStyle(Paint.Style.STROKE);
            this.strokePaint.setStrokeJoin(Paint.Join.ROUND);
            this.strokePaint.setStrokeCap(Paint.Cap.ROUND);
        }

        public void setParticles(boolean z) {
            if (z == (this.particles != null)) {
                return;
            }
            if (z) {
                StarsReactionsSheet.Particles particles = new StarsReactionsSheet.Particles(2, 12);
                this.particles = particles;
                particles.setSpeed(5.0f);
                return;
            }
            this.particles = null;
        }

        public void setColor(int i) {
            this.paint.setShader(null);
            this.paint.setColor(i);
        }

        public void setStrokeColor(int i) {
            this.strokePaint.setColor(i);
        }

        public void setColors(int i, int i2) {
            this.paint.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(48.0f), AndroidUtilities.dp(48.0f), new int[]{i, i2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
        }

        public void setBackdrop(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop, boolean z, boolean z2) {
            if (stargiftattributebackdrop == null) {
                this.paint.setShader(null);
            } else {
                boolean z3 = this.left ? !z : z;
                this.paint.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(48.0f), AndroidUtilities.dp(48.0f), new int[]{Theme.adaptHSV(stargiftattributebackdrop.center_color | (-16777216), z3 ? 0.07f : 0.05f, (z3 ? -0.15f : -0.1f) - (z2 ? 0.125f : 0.0f)), Theme.adaptHSV(stargiftattributebackdrop.edge_color | (-16777216), z3 ? 0.07f : 0.05f, (z3 ? -0.15f : -0.1f) - (z2 ? 0.125f : 0.0f))}, new float[]{z3 ? 1.0f : 0.0f, z3 ? 0.0f : 1.0f}, Shader.TileMode.CLAMP));
            }
        }

        public void setText(int i, CharSequence charSequence, boolean z) {
            this.text = new Text(charSequence, i, z ? AndroidUtilities.bold() : null);
        }

        public void setLeft(boolean z) {
            Path path = this.path;
            float f = this.scale;
            this.left = z;
            fillRibbonPath(path, f, z);
        }

        public void setTextColor(int i) {
            this.textColor = i;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Canvas canvas2;
            canvas.save();
            canvas.translate(getBounds().right - AndroidUtilities.dp(48.0f), getBounds().top);
            if (this.strokePaint.getAlpha() > 0) {
                this.strokePaint.setStrokeWidth(AndroidUtilities.dp(1.33f) * 2);
                canvas.drawPath(this.path, this.strokePaint);
            }
            canvas.drawPath(this.path, this.paint);
            if (this.particles != null) {
                canvas.clipPath(this.path);
                this.particles.setBounds(0, 0, AndroidUtilities.dp(48.0f), AndroidUtilities.dp(48.0f));
                this.particles.process();
                this.particles.draw(canvas, -1);
                invalidateSelf();
            }
            if (this.text != null) {
                canvas.save();
                canvas.rotate(this.left ? -45.0f : 45.0f, (getBounds().width() / 2.0f) + AndroidUtilities.dp(this.left ? -7.0f : 6.0f), (getBounds().height() / 2.0f) - AndroidUtilities.dp(this.left ? 5.0f : 6.0f));
                float fMin = Math.min(1.0f, AndroidUtilities.dp(40.0f) / this.text.getCurrentWidth());
                canvas.scale(fMin, fMin, (getBounds().width() / 2.0f) + AndroidUtilities.dp(this.left ? -7.0f : 6.0f), (getBounds().height() / 2.0f) - AndroidUtilities.dp(this.left ? 5.0f : 6.0f));
                canvas2 = canvas;
                this.text.draw(canvas2, ((getBounds().width() / 2.0f) + AndroidUtilities.dp(this.left ? -7.0f : 6.0f)) - (this.text.getWidth() / 2.0f), (getBounds().height() / 2.0f) - AndroidUtilities.dp(this.left ? 4.0f : 5.0f), this.textColor, 1.0f);
                canvas2.restore();
            } else {
                canvas2 = canvas;
            }
            canvas2.restore();
        }
    }

    public static class Ribbon extends View {
        private CharSequence currentText;
        public final RibbonDrawable drawable;

        public Ribbon(Context context) {
            super(context);
            RibbonDrawable ribbonDrawable = new RibbonDrawable(this, 1.0f);
            this.drawable = ribbonDrawable;
            ribbonDrawable.setCallback(this);
        }

        public CharSequence getText() {
            return this.currentText;
        }

        public void setText(CharSequence charSequence, boolean z) {
            this.currentText = charSequence;
            this.drawable.setText(z ? 10 : 11, charSequence, z);
        }

        public void setText(int i, CharSequence charSequence, boolean z) {
            this.currentText = charSequence;
            this.drawable.setText(i, charSequence, z);
        }

        public void setColor(int i) {
            this.drawable.setColor(i);
        }

        public void setStrokeColor(int i) {
            this.drawable.setStrokeColor(i);
        }

        public void setColors(int i, int i2) {
            this.drawable.setColors(i, i2);
        }

        public void setBackdrop(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
            this.drawable.setBackdrop(stargiftattributebackdrop, false, false);
            invalidate();
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return this.drawable == drawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            setMeasuredDimension(AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f));
        }

        @Override // android.view.View
        public void dispatchDraw(Canvas canvas) {
            this.drawable.setBounds(0, 0, getWidth(), getHeight());
            this.drawable.draw(canvas);
        }
    }

    public static class StarsBackgroundView extends View {
        private StarsBackground currentBackground;

        public StarsBackgroundView(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            if (this.currentBackground != null) {
                if (isAttachedToWindow()) {
                    this.currentBackground.detach();
                }
                this.currentBackground = null;
            }
            super.setBackground(drawable);
            if (drawable instanceof StarsBackground) {
                this.currentBackground = (StarsBackground) drawable;
                if (isAttachedToWindow()) {
                    this.currentBackground.attach();
                }
            }
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            StarsBackground starsBackground = this.currentBackground;
            if (starsBackground != null) {
                starsBackground.attach();
            }
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            StarsBackground starsBackground = this.currentBackground;
            if (starsBackground != null) {
                starsBackground.detach();
            }
        }
    }

    public static class StarsBackground extends Drawable {
        public final Paint backgroundPaint;
        private final int color;
        private Runnable invalidateRunnable;
        private boolean isAttached;
        private Utilities.Callback<Boolean> liteModeCallback;
        public final StarsReactionsSheet.Particles particles;
        private boolean particlesAllowed;
        private final int particlesColor;
        public final Path path;
        public final RectF rectF;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        public StarsBackground(int i) {
            this(ColorUtils.setAlphaComponent(i, 128), i);
        }

        public StarsBackground(int i, int i2) {
            this.rectF = new RectF();
            this.path = new Path();
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            this.particlesColor = i;
            this.color = i2;
            paint.setColor(i2);
            if (BatchParticlesDrawHelper.isAvailable()) {
                this.particles = new StarsReactionsSheet.Particles(1, 25);
            } else {
                this.particles = null;
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawPath(this.path, this.backgroundPaint);
            if (this.particles != null) {
                if (this.particlesAllowed || !this.isAttached) {
                    canvas.save();
                    canvas.clipPath(this.path);
                    if (this.invalidateRunnable == null) {
                        this.particles.process();
                    }
                    this.particles.draw(canvas, this.particlesColor);
                    canvas.restore();
                    if (this.invalidateRunnable == null) {
                        invalidateSelf();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateParticles() {
            StarsReactionsSheet.Particles particles = this.particles;
            if (particles != null) {
                particles.process();
                invalidateSelf();
            }
        }

        private void checkParticlesAllowed() {
            boolean z = this.particles != null && this.isAttached && LiteMode.isEnabled(131072);
            if (this.particlesAllowed == z) {
                return;
            }
            this.particlesAllowed = z;
            if (z) {
                Choreographer60FpsContent choreographer60FpsContent = Choreographer60FpsContent.getInstance();
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$StarsBackground$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidateParticles();
                    }
                };
                this.invalidateRunnable = runnable;
                choreographer60FpsContent.addFrameCallback(runnable, 15);
            } else {
                Choreographer60FpsContent.getInstance().removeFrameCallback(this.invalidateRunnable);
            }
            invalidateSelf();
        }

        public void attach() {
            if (this.isAttached) {
                return;
            }
            this.isAttached = true;
            checkParticlesAllowed();
            Utilities.Callback<Boolean> callback = new Utilities.Callback() { // from class: org.telegram.ui.Gifts.GiftSheet$StarsBackground$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$attach$0((Boolean) obj);
                }
            };
            this.liteModeCallback = callback;
            LiteMode.addOnPowerSaverAppliedListener(callback);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$attach$0(Boolean bool) {
            checkParticlesAllowed();
        }

        public void detach() {
            if (this.isAttached) {
                this.isAttached = false;
                checkParticlesAllowed();
                LiteMode.removeOnPowerSaverAppliedListener(this.liteModeCallback);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            float fMin = Math.min(rect.width(), rect.height()) / 2.0f;
            this.rectF.set(rect);
            this.path.rewind();
            this.path.addRoundRect(this.rectF, fMin, fMin, Path.Direction.CW);
            StarsReactionsSheet.Particles particles = this.particles;
            if (particles != null) {
                particles.setBounds(this.rectF);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.backgroundPaint.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.backgroundPaint.setColorFilter(colorFilter);
        }
    }

    public static class SharedBackgroundDrawables {
        private Drawable filledNinePatch;
        private Drawable filledWithShadowNinePatch;
        private int lastFillingColor;
        private int lastFillingWithShadowFillingColor;
        private int lastFillingWithShadowShadowColor;
        private int lastShadowColor;
        private final float[] radii;
        private Drawable shadowNinePatch;
        private final Bitmap[] shadowNinePatchBitmap = new Bitmap[1];
        private final Bitmap[] filledNinePatchBitmap = new Bitmap[1];
        private final Bitmap[] filledWithShadowNinePatchBitmap = new Bitmap[1];

        public SharedBackgroundDrawables() {
            float[] fArr = new float[8];
            this.radii = fArr;
            Arrays.fill(fArr, AndroidUtilities.dp(11.0f));
        }

        public Drawable getOrCreateShadowNinePatch(int i) {
            if (this.shadowNinePatch == null || this.lastShadowColor != i) {
                this.lastShadowColor = i;
                this.shadowNinePatch = NinePatchBuilder.createNinePatch(this.shadowNinePatchBitmap, 0, this.radii, AndroidUtilities.dp(1.66f), i, 0.0f, AndroidUtilities.dp(0.33f), 0);
            }
            return this.shadowNinePatch;
        }

        public Drawable getOrCreateFilledNinePatch(int i) {
            if (this.filledNinePatch == null || this.lastFillingColor != i) {
                this.lastFillingColor = i;
                this.filledNinePatch = NinePatchBuilder.createNinePatch(this.filledNinePatchBitmap, i, this.radii, 0.0f, 0, 0.0f, 0.0f, i);
            }
            return this.filledNinePatch;
        }

        public Drawable getOrCreateFilledWithShadowNinePatch(int i, int i2) {
            if (this.filledWithShadowNinePatch == null || (this.lastFillingWithShadowFillingColor != i && this.lastFillingWithShadowShadowColor != i2)) {
                this.lastFillingWithShadowFillingColor = i;
                this.lastFillingWithShadowShadowColor = i2;
                this.filledWithShadowNinePatch = NinePatchBuilder.createNinePatch(this.filledWithShadowNinePatchBitmap, i, this.radii, AndroidUtilities.dp(1.66f), i2, 0.0f, AndroidUtilities.dp(0.33f), i);
            }
            return this.filledWithShadowNinePatch;
        }
    }

    public static class CardBackground extends Drawable {
        private static SharedBackgroundDrawables staticSharedBackgroundDrawables = new SharedBackgroundDrawables();
        private AnimatedFloat animatedSelected;
        private TL_stars.starGiftAttributeBackdrop backdrop;
        private final Path clipPath;
        private RadialGradient gradient;
        private final Matrix gradientMatrix;
        private int gradientRadius;
        private Bitmap lastDrawnBitmap;
        private Paint lastDrawnBitmapPaint;
        private int lastDrawnColor;
        private boolean lastNeedShadow;
        public final Paint paint;
        private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable pattern;
        public long patternDocumentId;

        /* JADX INFO: renamed from: r */
        private float f1036r;
        private final RectF rect;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean selected;
        public Integer selectedColor;
        public int selectedColorKey;
        private final Paint selectedPaint;
        public int selectionStyle;
        private final Path strokeClipPath;
        private int[] strokeColors;
        private LinearGradient strokeGradient;
        private final Matrix strokeGradientMatrix;
        public final Paint strokePaint;
        private final View view;
        public boolean withPadding;
        private final boolean withShadow;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void setRoundRadius(float f) {
            this.f1036r = f;
        }

        public CardBackground(View view, Theme.ResourcesProvider resourcesProvider, boolean z) {
            Paint paint = new Paint(1);
            this.paint = paint;
            Paint paint2 = new Paint(1);
            this.strokePaint = paint2;
            this.rect = new RectF();
            this.clipPath = new Path();
            this.gradientMatrix = new Matrix();
            this.strokeClipPath = new Path();
            this.strokeGradientMatrix = new Matrix();
            Paint paint3 = new Paint(1);
            this.selectedPaint = paint3;
            this.animatedSelected = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Gifts.GiftSheet$CardBackground$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.f1036r = AndroidUtilities.dp(11.0f);
            this.withPadding = true;
            this.selectionStyle = 0;
            int i = Theme.key_windowBackgroundWhite;
            this.selectedColorKey = i;
            this.view = view;
            this.resourcesProvider = resourcesProvider;
            this.pattern = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(view, AndroidUtilities.dp(28.0f)) { // from class: org.telegram.ui.Gifts.GiftSheet.CardBackground.1
                @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable, org.telegram.ui.Components.AnimatedEmojiSpan.InvalidateHolder
                public void invalidate() {
                    super.invalidate();
                    if (CardBackground.this.getCallback() != null) {
                        CardBackground.this.getCallback().invalidateDrawable(CardBackground.this);
                    }
                }
            };
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Gifts.GiftSheet.CardBackground.2
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    CardBackground.this.pattern.attach();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    CardBackground.this.pattern.detach();
                }
            });
            if (view.isAttachedToWindow()) {
                this.pattern.attach();
            }
            this.withShadow = z;
            paint.setColor(Theme.getColor(i, resourcesProvider));
            checkShadow(z);
            Paint.Style style = Paint.Style.STROKE;
            paint3.setStyle(style);
            paint2.setStyle(style);
        }

        private void checkShadow(boolean z) {
            if (this.lastNeedShadow != z) {
                this.lastNeedShadow = z;
                Paint paint = this.paint;
                if (z) {
                    paint.setShadowLayer(AndroidUtilities.dp(1.66f), 0.0f, AndroidUtilities.dp(0.33f), Theme.getColor(Theme.key_dialogCardShadow, this.resourcesProvider));
                } else {
                    paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                }
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            draw(canvas, 0.0f);
        }

        public void setPadding(boolean z) {
            this.withPadding = z;
        }

        public void draw(Canvas canvas, float f) {
            Bitmap stableBitmapFromPattern;
            Bitmap bitmap;
            Drawable orCreateFilledNinePatch;
            Canvas canvas2 = canvas;
            Rect bounds = getBounds();
            float f2 = this.animatedSelected.set(this.selected);
            this.rect.set(bounds);
            if (this.withPadding) {
                this.rect.inset(AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f));
            }
            if (this.backdrop != null) {
                int iLerp = AndroidUtilities.lerp(Math.min(bounds.width(), bounds.height()), Math.max(bounds.width(), bounds.height()), 0.35f) / 2;
                if (this.gradient == null || this.gradientRadius != iLerp) {
                    this.gradientRadius = iLerp;
                    float f3 = iLerp;
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = this.backdrop;
                    int i = stargiftattributebackdrop.center_color;
                    this.gradient = new RadialGradient(0.0f, 0.0f, f3, new int[]{i | (-16777216), i | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 0.0f, 1.0f}, Shader.TileMode.CLAMP);
                }
                this.gradientMatrix.reset();
                this.gradientMatrix.postTranslate(bounds.centerX(), Math.min(AndroidUtilities.dp(50.0f), bounds.centerY()));
                this.gradient.setLocalMatrix(this.gradientMatrix);
                this.paint.setShader(this.gradient);
            } else {
                this.paint.setShader(null);
            }
            int i2 = Theme.key_dialogCardShadow;
            int color = Theme.getColor(i2, this.resourcesProvider);
            int i3 = Theme.key_windowBackgroundWhite;
            int color2 = Theme.getColor(i3, this.resourcesProvider);
            boolean z = false;
            boolean z2 = this.f1036r == ((float) AndroidUtilities.dp(11.0f)) && color == Theme.getColor(i2) && color2 == Theme.getColor(i3);
            checkShadow(this.withShadow && !z2);
            if (z2) {
                if (staticSharedBackgroundDrawables == null) {
                    staticSharedBackgroundDrawables = new SharedBackgroundDrawables();
                }
                RectF rectF = this.rect;
                Rect rect = AndroidUtilities.rectTmp2;
                rectF.round(rect);
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop2 = this.backdrop;
                boolean z3 = this.withShadow;
                if (stargiftattributebackdrop2 != null) {
                    if (z3) {
                        Drawable orCreateShadowNinePatch = staticSharedBackgroundDrawables.getOrCreateShadowNinePatch(color);
                        DrawableUtils.setBoundsIncreasePadding(orCreateShadowNinePatch, rect);
                        orCreateShadowNinePatch.draw(canvas2);
                    }
                    RectF rectF2 = this.rect;
                    float f4 = this.f1036r;
                    canvas2.drawRoundRect(rectF2, f4, f4, this.paint);
                } else {
                    if (z3) {
                        orCreateFilledNinePatch = staticSharedBackgroundDrawables.getOrCreateFilledWithShadowNinePatch(color2, color);
                    } else {
                        orCreateFilledNinePatch = staticSharedBackgroundDrawables.getOrCreateFilledNinePatch(color2);
                    }
                    DrawableUtils.setBoundsIncreasePadding(orCreateFilledNinePatch, rect);
                    orCreateFilledNinePatch.draw(canvas2);
                }
            } else {
                RectF rectF3 = this.rect;
                float f5 = this.f1036r;
                canvas2.drawRoundRect(rectF3, f5, f5, this.paint);
            }
            boolean z4 = (this.strokeColors == null && (this.backdrop == null || this.pattern.isEmpty())) ? false : true;
            if (z4) {
                canvas2.save();
                this.clipPath.rewind();
                Path path = this.clipPath;
                RectF rectF4 = this.rect;
                float f6 = this.f1036r;
                path.addRoundRect(rectF4, f6, f6, Path.Direction.CW);
                canvas2.clipPath(this.clipPath);
            }
            if (this.strokeColors != null) {
                if (this.strokeGradient == null) {
                    this.strokeGradient = new LinearGradient(0.0f, 0.0f, 100.0f, 0.0f, this.strokeColors, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                }
                this.strokeGradientMatrix.reset();
                this.strokeGradientMatrix.postTranslate(bounds.left, bounds.top);
                this.strokeGradientMatrix.postRotate((float) ((Math.atan2(bounds.height(), bounds.width()) / 3.141592653589793d) * 180.0d));
                float fSqrt = ((float) Math.sqrt(Math.pow(bounds.width(), 2.0d) + Math.pow(bounds.height(), 2.0d))) / 100.0f;
                this.strokeGradientMatrix.postScale(fSqrt, fSqrt);
                this.strokeGradient.setLocalMatrix(this.strokeGradientMatrix);
                this.strokePaint.setShader(this.strokeGradient);
                this.strokePaint.setStrokeWidth(AndroidUtilities.dp(4.66f));
                RectF rectF5 = this.rect;
                float f7 = this.f1036r;
                canvas2.drawRoundRect(rectF5, f7, f7, this.strokePaint);
            }
            if (this.backdrop != null && !this.pattern.isEmpty()) {
                int i4 = this.backdrop.pattern_color | (-16777216);
                canvas2.save();
                canvas2.translate(bounds.centerX(), bounds.centerY());
                if (BatchParticlesDrawHelper.isAvailable() && (stableBitmapFromPattern = getStableBitmapFromPattern(this.pattern)) != null) {
                    if (this.lastDrawnBitmap != stableBitmapFromPattern || this.lastDrawnBitmapPaint == null) {
                        this.lastDrawnBitmap = stableBitmapFromPattern;
                        this.lastDrawnBitmapPaint = BatchParticlesDrawHelper.createBatchParticlesPaint(stableBitmapFromPattern);
                        z = true;
                    }
                    if (this.lastDrawnColor != i4 || z) {
                        this.lastDrawnColor = i4;
                        int i5 = Build.VERSION.SDK_INT;
                        Paint paint = this.lastDrawnBitmapPaint;
                        if (i5 >= 29) {
                            AbstractC4592x2078045b.m947m();
                            paint.setColorFilter(AbstractC4591x2078045a.m946m(i4, BlendMode.SRC_IN));
                        } else {
                            paint.setColorFilter(new PorterDuffColorFilter(i4, PorterDuff.Mode.SRC_IN));
                        }
                    }
                    if (f < 1.0f) {
                        bitmap = stableBitmapFromPattern;
                        StarGiftPatterns.drawPatternBatch(canvas2, 2, this.lastDrawnBitmapPaint, bitmap, bounds.width(), bounds.height(), 1.0f - f, 1.0f);
                    } else {
                        bitmap = stableBitmapFromPattern;
                    }
                    if (f > 0.0f) {
                        canvas2.translate(0.0f, AndroidUtilities.dp(-31.0f));
                        StarGiftPatterns.drawPatternBatch(canvas2, 0, this.lastDrawnBitmapPaint, bitmap, bounds.width(), bounds.height(), f, 1.0f);
                    }
                    canvas2 = canvas;
                } else {
                    this.pattern.setColor(Integer.valueOf(i4));
                    if (f < 1.0f) {
                        canvas2 = canvas;
                        StarGiftPatterns.drawPattern(canvas2, 2, this.pattern, bounds.width(), bounds.height(), 1.0f - f, 1.0f);
                    } else {
                        canvas2 = canvas;
                    }
                    if (f > 0.0f) {
                        canvas2.translate(0.0f, AndroidUtilities.dp(-31.0f));
                        StarGiftPatterns.drawPattern(canvas2, 0, this.pattern, bounds.width(), bounds.height(), f, 1.0f);
                    }
                }
                canvas2.restore();
            }
            if (z4) {
                canvas2.restore();
            }
            if (f2 > 0.0f) {
                int i6 = this.selectionStyle;
                if (i6 == 0) {
                    Paint paint2 = this.selectedPaint;
                    Integer num = this.selectedColor;
                    paint2.setColor(num != null ? num.intValue() : Theme.getColor(this.selectedColorKey, this.resourcesProvider));
                    this.selectedPaint.setStrokeWidth(AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(1.667f), f2));
                    RectF rectF6 = AndroidUtilities.rectTmp;
                    rectF6.set(this.rect);
                    float fLerp = AndroidUtilities.lerp(-AndroidUtilities.dpf2(2.33f), AndroidUtilities.dpf2(3.33f), f2);
                    rectF6.inset(fLerp, fLerp);
                    float fLerp2 = AndroidUtilities.lerp(this.f1036r, AndroidUtilities.dpf2(7.33f), f2);
                    canvas2.drawRoundRect(rectF6, fLerp2, fLerp2, this.selectedPaint);
                    return;
                }
                if (i6 == 1) {
                    Paint paint3 = this.selectedPaint;
                    Integer num2 = this.selectedColor;
                    paint3.setColor(num2 != null ? num2.intValue() : Theme.getColor(this.selectedColorKey, this.resourcesProvider));
                    this.selectedPaint.setStrokeWidth(AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(3.0f), f2));
                    RectF rectF7 = AndroidUtilities.rectTmp;
                    rectF7.set(this.rect);
                    float fLerp3 = AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(3.0f) / 2.0f, f2);
                    rectF7.inset(fLerp3, fLerp3);
                    float fLerp4 = AndroidUtilities.lerp(this.f1036r, AndroidUtilities.dpf2(10.0f), f2);
                    canvas2.drawRoundRect(rectF7, fLerp4, fLerp4, this.selectedPaint);
                }
            }
        }

        @Override // android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            rect.set(AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f));
            return true;
        }

        public void invalidate() {
            this.view.invalidate();
            if (getCallback() != null) {
                getCallback().invalidateDrawable(this);
            }
        }

        public void setBackdrop(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
            if (this.backdrop != stargiftattributebackdrop) {
                this.gradient = null;
            }
            this.backdrop = stargiftattributebackdrop;
            invalidate();
        }

        public void setPattern(TL_stars.starGiftAttributePattern stargiftattributepattern) {
            this.patternDocumentId = 0L;
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.pattern;
            if (stargiftattributepattern == null) {
                swapAnimatedEmojiDrawable.set((Drawable) null, false);
                return;
            }
            swapAnimatedEmojiDrawable.set(stargiftattributepattern.document, false);
            TLRPC.Document document = stargiftattributepattern.document;
            if (document != null) {
                this.patternDocumentId = document.id;
            }
        }

        public void setStrokeColors(int[] iArr) {
            if (this.strokeColors == iArr) {
                return;
            }
            this.strokeColors = iArr;
            this.strokeGradient = null;
            invalidate();
        }

        public void setSelected(boolean z, boolean z2) {
            if (this.selected == z) {
                return;
            }
            this.selected = z;
            if (!z2) {
                this.animatedSelected.force(z);
            }
            invalidate();
        }

        private Bitmap getStableBitmapFromPattern(AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable) {
            Bitmap bitmap;
            if (!swapAnimatedEmojiDrawable.isStable()) {
                return null;
            }
            Drawable drawable = swapAnimatedEmojiDrawable.getDrawable();
            if (drawable instanceof AnimatedEmojiDrawable) {
                AnimatedEmojiDrawable animatedEmojiDrawable = (AnimatedEmojiDrawable) drawable;
                ImageReceiver imageReceiver = animatedEmojiDrawable.getImageReceiver();
                long documentId = animatedEmojiDrawable.getDocumentId();
                if (imageReceiver != null && documentId == this.patternDocumentId && (bitmap = imageReceiver.getBitmap()) != null) {
                    return bitmap;
                }
            }
            return null;
        }
    }

    public static class Tabs extends FrameLayout {
        private AnimatedFloat animatedSelected;
        private final RectF ceiledRect;
        private final RectF flooredRect;
        private int lastId;
        private final LinearLayout layout;
        private final Theme.ResourcesProvider resourcesProvider;
        private final HorizontalScrollView scrollView;
        private int selected;
        private final Paint selectedPaint;
        private final RectF selectedRect;
        private final ArrayList<TextView> tabs;

        public Tabs(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.tabs = new ArrayList<>();
            this.flooredRect = new RectF();
            this.ceiledRect = new RectF();
            this.selectedRect = new RectF();
            this.selectedPaint = new Paint(1);
            this.lastId = Integer.MIN_VALUE;
            this.resourcesProvider = resourcesProvider;
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Gifts.GiftSheet.Tabs.1
                @Override // android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    Tabs.this.selectedPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_dialogGiftsTabText), 0.1f));
                    float f = Tabs.this.animatedSelected.set(Tabs.this.selected);
                    double d = f;
                    int iClamp = Utilities.clamp((int) Math.floor(d), Tabs.this.tabs.size() - 1, 0);
                    int iClamp2 = Utilities.clamp((int) Math.ceil(d), Tabs.this.tabs.size() - 1, 0);
                    int size = Tabs.this.tabs.size();
                    Tabs tabs = Tabs.this;
                    if (iClamp < size) {
                        setBounds(tabs.flooredRect, (View) Tabs.this.tabs.get(iClamp));
                    } else {
                        int size2 = tabs.tabs.size();
                        Tabs tabs2 = Tabs.this;
                        if (iClamp2 < size2) {
                            setBounds(tabs2.flooredRect, (View) Tabs.this.tabs.get(iClamp2));
                        } else {
                            tabs2.flooredRect.set(0.0f, 0.0f, 0.0f, 0.0f);
                        }
                    }
                    int size3 = Tabs.this.tabs.size();
                    Tabs tabs3 = Tabs.this;
                    if (iClamp2 < size3) {
                        setBounds(tabs3.ceiledRect, (View) Tabs.this.tabs.get(iClamp2));
                    } else {
                        int size4 = tabs3.tabs.size();
                        Tabs tabs4 = Tabs.this;
                        if (iClamp < size4) {
                            setBounds(tabs4.ceiledRect, (View) Tabs.this.tabs.get(iClamp));
                        } else {
                            tabs4.ceiledRect.set(0.0f, 0.0f, 0.0f, 0.0f);
                        }
                    }
                    AndroidUtilities.lerp(Tabs.this.flooredRect, Tabs.this.ceiledRect, f - iClamp, Tabs.this.selectedRect);
                    float fHeight = Tabs.this.selectedRect.height() / 2.0f;
                    canvas.drawRoundRect(Tabs.this.selectedRect, fHeight, fHeight, Tabs.this.selectedPaint);
                    super.dispatchDraw(canvas);
                }

                private final void setBounds(RectF rectF, View view) {
                    rectF.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                }
            };
            this.layout = linearLayout;
            linearLayout.setClipToPadding(false);
            linearLayout.setClipChildren(false);
            linearLayout.setOrientation(0);
            linearLayout.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f));
            if (z) {
                this.scrollView = null;
                addView(linearLayout, LayoutHelper.createFrame(-2, -1, 1));
            } else {
                linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(3.0f));
                HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
                this.scrollView = horizontalScrollView;
                horizontalScrollView.setHorizontalScrollBarEnabled(false);
                horizontalScrollView.setClipToPadding(false);
                horizontalScrollView.setClipChildren(false);
                horizontalScrollView.addView(linearLayout, LayoutHelper.createFrame(-2, -1, 119));
                addView(horizontalScrollView, LayoutHelper.createFrame(-1, -1, 119));
            }
            setHorizontalScrollBarEnabled(false);
            setClipToPadding(false);
            setClipChildren(false);
            this.animatedSelected = new AnimatedFloat(linearLayout, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }

        public void setSelected(int i, boolean z) {
            this.selected = i;
            if (!z) {
                this.animatedSelected.set(i, true);
            }
            this.layout.invalidate();
        }

        public void set(int i, ArrayList<CharSequence> arrayList, int i2, final Utilities.Callback<Integer> callback) {
            boolean z = this.lastId == i;
            this.lastId = i;
            if (this.tabs.size() != arrayList.size()) {
                int i3 = 0;
                int i4 = 0;
                while (i3 < this.tabs.size()) {
                    CharSequence charSequence = i4 < arrayList.size() ? arrayList.get(i4) : null;
                    if (charSequence == null) {
                        this.layout.removeView(this.tabs.remove(i3));
                        i3--;
                    } else {
                        this.tabs.get(i3).setText(charSequence);
                    }
                    i4++;
                    i3++;
                }
                while (i4 < arrayList.size()) {
                    LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getContext());
                    linksTextView.setGravity(17);
                    linksTextView.setText(arrayList.get(i4));
                    linksTextView.setTypeface(AndroidUtilities.bold());
                    linksTextView.setTextColor(Theme.blendOver(Theme.getColor(Theme.key_dialogGiftsBackground), Theme.getColor(Theme.key_dialogGiftsTabText)));
                    linksTextView.setTextSize(1, 14.0f);
                    linksTextView.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
                    linksTextView.setEllipsize(TextUtils.TruncateAt.END);
                    linksTextView.setSingleLine();
                    linksTextView.setMaxLines(1);
                    ScaleStateListAnimator.apply(linksTextView, 0.075f, 1.4f);
                    this.layout.addView(linksTextView, LayoutHelper.createLinear(-2, 26));
                    this.tabs.add(linksTextView);
                    i4++;
                }
            }
            this.selected = i2;
            if (!z) {
                this.animatedSelected.set(i2, true);
            }
            this.layout.invalidate();
            for (final int i5 = 0; i5 < this.tabs.size(); i5++) {
                this.tabs.get(i5).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftSheet$Tabs$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GiftSheet.Tabs.$r8$lambda$8LUCnuCXeW6XFid7k47_4mlXE7o(callback, i5, view);
                    }
                });
            }
        }

        public static /* synthetic */ void $r8$lambda$8LUCnuCXeW6XFid7k47_4mlXE7o(Utilities.Callback callback, int i, View view) {
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        public void updateColors() {
            for (int i = 0; i < this.tabs.size(); i++) {
                this.tabs.get(i).setTextColor(Theme.blendOver(Theme.getColor(Theme.key_dialogGiftsBackground), Theme.getColor(Theme.key_dialogGiftsTabText)));
            }
            this.layout.invalidate();
        }

        public static class Factory extends UItem.UItemFactory<Tabs> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public Tabs createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new Tabs(context, true, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((Tabs) view).set(uItem.id, (ArrayList) uItem.object, uItem.intValue, (Utilities.Callback) uItem.object2);
            }

            public static UItem asTabs(int i, ArrayList<CharSequence> arrayList, int i2, Utilities.Callback<Integer> callback) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.object = arrayList;
                uItemOfFactory.intValue = i2;
                uItemOfFactory.object2 = callback;
                return uItemOfFactory;
            }

            private static boolean eq(ArrayList<CharSequence> arrayList, ArrayList<CharSequence> arrayList2) {
                if (arrayList == arrayList2) {
                    return true;
                }
                if (arrayList == null && arrayList2 == null) {
                    return true;
                }
                if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                    return false;
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    if (!TextUtils.equals(arrayList.get(i), arrayList2.get(i))) {
                        return false;
                    }
                }
                return true;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                return uItem.id == uItem2.id && eq((ArrayList) uItem.object, (ArrayList) uItem2.object);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean contentsEquals(UItem uItem, UItem uItem2) {
                return uItem.intValue == uItem2.intValue && uItem.object2 == uItem2.object2 && equals(uItem, uItem2);
            }
        }
    }
}
