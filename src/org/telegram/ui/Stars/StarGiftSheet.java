package org.telegram.ui.Stars;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.RelativeSizeSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.GiftAuctionController;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.CountdownTimer;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.AccountFrozenAlert;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.theme.ThemeKey;
import org.telegram.ui.Cells.SessionCell;
import org.telegram.ui.Cells.ShareDialogCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BottomSheetLayouted;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ButtonSpan;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CompatDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.FireworksOverlay;
import org.telegram.ui.Components.HorizontalRoundTabsLayout;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingSpan;
import org.telegram.ui.Components.Premium.LimitPreviewView;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.Premium.boosts.UserSelectorBottomSheet;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.TableView;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.Gifts.ProfileGiftsContainer;
import org.telegram.ui.Gifts.ResaleGiftsFragment;
import org.telegram.ui.GradientClip;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.StarGiftPreviewSheet;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stars.StarsReactionsSheet;
import org.telegram.ui.StatisticActivity;
import org.telegram.ui.Stories.DarkThemeResourceProvider;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Stories.recorder.StoryEntry;
import org.telegram.ui.Stories.recorder.StoryRecorder;
import org.telegram.ui.TON.TONIntroActivity;
import org.telegram.ui.TopicsFragment;
import org.telegram.ui.TwoStepVerificationActivity;
import org.telegram.ui.TwoStepVerificationSetupActivity;
import org.telegram.ui.bots.AffiliateProgramFragment;
import org.telegram.ui.bots.BotWebViewSheet;

/* JADX INFO: loaded from: classes7.dex */
public class StarGiftSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private final ActionView actionView;
    private Adapter adapter;
    private final LinkSpanDrawable.LinksTextView afterTableTextView;
    private final LinkSpanDrawable.LinksTextView beforeTableTextView;
    private final FrameLayout bottomBulletinContainer;
    private final View bottomView;
    private Utilities.Callback2<TL_stars.TL_starGiftUnique, Long> boughtGift;
    private final ButtonWithCounterView button;
    private final FrameLayout buttonContainer;
    private final View buttonShadow;
    private final CheckBox2 checkbox;
    private final LinearLayout checkboxLayout;
    private final View checkboxSeparator;
    private final TextView checkboxTextView;
    private Runnable closeParentSheet;
    private ContainerView container;
    private final AffiliateProgramFragment.FeatureCell[] craftFeatureCells;
    private final LinearLayout craftLayout;
    private HintView2 currentHintView;
    private View currentHintViewTextView;
    private PageTransition currentPage;
    private final long dialogId;
    private FireworksOverlay fireworksOverlay;
    private boolean firstSet;
    private StarsController.IGiftsList giftsList;
    private ResaleGiftsFragment.SelectGiftSheet.State giftsToCraft;
    private final int[] heights;
    private final LinearLayout infoLayout;
    private boolean isLearnMore;
    private Float lastTop;
    private StarGiftSheet left;
    private ColoredImageSpan lockSpan;
    private MessageObject messageObject;
    private boolean messageObjectRepolled;
    private boolean messageObjectRepolling;
    private boolean myProfile;
    private boolean nextButtonCrafting;
    private ArrayList<TL_stars.StarGiftUpgradePrice> next_prices;
    private Runnable onGiftUpdatedListener;
    private boolean onlyWearInfo;
    private int overrideNextIndex;
    private View ownerTextView;
    private ArrayList<TL_stars.StarGiftUpgradePrice> prices;
    private boolean requesting_upgrade_form;
    private boolean resale;
    private StarGiftSheet right;
    private Roller roller;
    private boolean rolling;
    private ArrayList<TL_stars.StarGiftAttribute> sample_attributes;
    private TL_stars.SavedStarGift savedStarGift;
    private ShareAlert shareAlert;
    private boolean shownWearInfo;
    private String slug;
    private TL_stars.TL_starGiftUnique slugStarGift;
    private final ColoredImageSpan[] starCached;
    private ValueAnimator switchingPagesAnimator;
    private final TableView tableView;
    private final Runnable tickUpgradePriceRunnable;
    private String title;
    private final TopView topView;
    private final FrameLayout underButtonContainer;
    private final LinkSpanDrawable.LinksTextView underButtonLinkTextView;
    private Boolean unsavedFromSavedStarGift;
    private final AffiliateProgramFragment.FeatureCell[] upgradeFeatureCells;
    private ColoredImageSpan upgradeIconSpan;
    private final LinearLayout upgradeLayout;
    private UpgradePricesSheet upgradeSheet;
    private TLRPC.PaymentForm upgrade_form;
    private boolean upgradedOnce;
    private boolean userStarGiftRepolled;
    private boolean userStarGiftRepolling;
    private ViewPagerFixed viewPager;
    private final AffiliateProgramFragment.FeatureCell[] wearFeatureCells;
    private final LinearLayout wearLayout;
    private final TextView wearSubtitle;
    private final TextView wearTitle;

    public static /* synthetic */ void $r8$lambda$0r2fGn1ki4R1G_0UzOT8eZ4I05M(AlertDialog alertDialog, int i) {
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public boolean shouldDrawBackground() {
        return false;
    }

    public StarGiftSheet setOnBoughtGift(Utilities.Callback2<TL_stars.TL_starGiftUnique, Long> callback2) {
        this.boughtGift = callback2;
        return this;
    }

    public StarGiftSheet(Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, j, resourcesProvider, null);
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
    public StarGiftSheet(final Context context, int i, long j, Theme.ResourcesProvider resourcesProvider, View view) {
        super(context, null, false, false, false, resourcesProvider);
        this.upgradedOnce = false;
        this.heights = new int[2];
        this.overrideNextIndex = -1;
        this.title = _UrlKt.FRAGMENT_ENCODE_SET;
        this.currentPage = new PageTransition(0, 0, 1.0f);
        this.firstSet = true;
        this.starCached = new ColoredImageSpan[1];
        this.tickUpgradePriceRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.tickUpgradePrice();
            }
        };
        this.currentAccount = i;
        this.dialogId = j;
        this.topPadding = Math.max(0.05f, AndroidUtilities.dp(82.0f) / (AndroidUtilities.displaySize.y + AndroidUtilities.statusBarHeight));
        this.occupyNavigationBar = true;
        this.containerView = new FrameLayout(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.1
            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                if (StarGiftSheet.this.actionView == null || StarGiftSheet.this.actionView.getVisibility() != 0) {
                    return;
                }
                StarGiftSheet.this.actionView.invalidate();
            }
        };
        this.container = new ContainerView(context);
        C56882 c56882 = new C56882(context);
        this.viewPager = c56882;
        c56882.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.3
            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return (StarGiftSheet.this.hasNeighbour(false) ? 1 : 0) + 1 + (StarGiftSheet.this.hasNeighbour(true) ? 1 : 0);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public View createView(int i2) {
                ContainerView containerView;
                if (i2 == 0) {
                    StarGiftSheet.this.setupNeighbour(false, false);
                    if (StarGiftSheet.this.left == null) {
                        return null;
                    }
                    containerView = StarGiftSheet.this.left.container;
                } else if (i2 == 1) {
                    containerView = StarGiftSheet.this.container;
                } else {
                    if (i2 != 2) {
                        return null;
                    }
                    StarGiftSheet.this.setupNeighbour(true, false);
                    if (StarGiftSheet.this.right == null) {
                        return null;
                    }
                    containerView = StarGiftSheet.this.right.container;
                }
                AndroidUtilities.removeFromParent(containerView);
                FrameLayout frameLayout = new FrameLayout(context);
                frameLayout.addView(containerView, LayoutHelper.createFrame(-1, -1, 119));
                return frameLayout;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view2, int i2, int i3) {
                ContainerView containerView;
                if (i3 == 0) {
                    StarGiftSheet.this.setupNeighbour(false, true);
                    if (StarGiftSheet.this.left == null) {
                        return;
                    } else {
                        containerView = StarGiftSheet.this.left.container;
                    }
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    StarGiftSheet.this.setupNeighbour(true, true);
                    if (StarGiftSheet.this.right == null) {
                        return;
                    } else {
                        containerView = StarGiftSheet.this.right.container;
                    }
                }
                FrameLayout frameLayout = (FrameLayout) view2;
                frameLayout.removeAllViews();
                AndroidUtilities.removeFromParent(containerView);
                frameLayout.addView(containerView);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i2) {
                return (i2 - (StarGiftSheet.this.hasNeighbour(false) ? 1 : 0)) + 1;
            }
        });
        updateViewPager();
        View view2 = new View(context);
        this.bottomView = view2;
        int i2 = Theme.key_dialogBackground;
        view2.setBackgroundColor(getThemedColor(i2));
        this.containerView.addView(view2, LayoutHelper.createFrame(-1, 50, 80));
        this.containerView.addView(this.viewPager, LayoutHelper.createFrame(-1, -1, 119));
        fixNavigationBar(getThemedColor(i2));
        AndroidUtilities.removeFromParent(this.recyclerListView);
        this.container.addView(this.recyclerListView, LayoutHelper.createFrame(-1, -1, 119));
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.4
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (StarGiftSheet.this.currentPage.is(0)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.infoLayout = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setPadding(this.backgroundPaddingLeft + AndroidUtilities.dp(14.0f), AndroidUtilities.dp(16.0f), this.backgroundPaddingLeft + AndroidUtilities.dp(14.0f), AndroidUtilities.dp(68.0f));
        this.container.addView(linearLayout, LayoutHelper.createFrame(-1, -1, 55));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        this.beforeTableTextView = linksTextView;
        int i3 = Theme.key_dialogTextGray2;
        linksTextView.setTextColor(Theme.getColor(i3, resourcesProvider));
        linksTextView.setTextSize(1, 12.0f);
        linksTextView.setGravity(17);
        linksTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linksTextView.setDisablePaddingsOffsetY(true);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-2, -2, 1, 4, -2, 4, 16));
        linksTextView.setVisibility(8);
        TableView tableView = new TableView(context, resourcesProvider);
        this.tableView = tableView;
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 12.0f));
        LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        this.afterTableTextView = linksTextView2;
        linksTextView2.setTextColor(Theme.getColor(i3, resourcesProvider));
        linksTextView2.setTextSize(1, 12.0f);
        linksTextView2.setGravity(17);
        linksTextView2.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        int i4 = Theme.key_featuredStickers_addButton;
        linksTextView2.setLinkTextColor(Theme.getColor(i4, resourcesProvider));
        linksTextView2.setDisablePaddingsOffsetY(true);
        linksTextView2.setPadding(AndroidUtilities.dp(5.0f), 0, AndroidUtilities.dp(5.0f), 0);
        linearLayout.addView(linksTextView2, LayoutHelper.createLinear(-2, -2, 1, 4, 2, 4, 8));
        linksTextView2.setVisibility(8);
        LinearLayout linearLayout2 = new LinearLayout(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.5
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (StarGiftSheet.this.currentPage.is(1)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.upgradeLayout = linearLayout2;
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(AndroidUtilities.dp(4.0f) + this.backgroundPaddingLeft, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(4.0f) + this.backgroundPaddingLeft, AndroidUtilities.dp(66.0f));
        this.container.addView(linearLayout2, LayoutHelper.createFrame(-1, -1, 55));
        AffiliateProgramFragment.FeatureCell[] featureCellArr = {featureCell, featureCell, featureCell};
        this.upgradeFeatureCells = featureCellArr;
        AffiliateProgramFragment.FeatureCell featureCell = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell.set(C2573R.drawable.menu_feature_unique, LocaleController.getString(C2573R.string.Gift2UpgradeFeature1Title), LocaleController.getString(C2573R.string.GiftsFeature1Text));
        linearLayout2.addView(featureCellArr[0], LayoutHelper.createLinear(-1, -2));
        AffiliateProgramFragment.FeatureCell featureCell2 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell2.set(C2573R.drawable.menu_feature_tradable, LocaleController.getString(C2573R.string.Gift2UpgradeFeature3Title), LocaleController.getString(C2573R.string.GiftsFeature2Text));
        linearLayout2.addView(featureCellArr[1], LayoutHelper.createLinear(-1, -2));
        AffiliateProgramFragment.FeatureCell featureCell3 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell3.set(C2573R.drawable.menu_wear, LocaleController.getString(C2573R.string.GiftsFeature3Title), LocaleController.getString(C2573R.string.GiftsFeature3Text));
        linearLayout2.addView(featureCellArr[2], LayoutHelper.createLinear(-1, -2));
        View view3 = new View(context);
        this.checkboxSeparator = view3;
        int i5 = Theme.key_divider;
        view3.setBackgroundColor(Theme.getColor(i5, resourcesProvider));
        linearLayout2.addView(view3, LayoutHelper.createLinear(-2, 1.0f / AndroidUtilities.density, 7, 17, -4, 17, 6));
        LinearLayout linearLayout3 = new LinearLayout(context);
        this.checkboxLayout = linearLayout3;
        linearLayout3.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f));
        linearLayout3.setOrientation(0);
        linearLayout3.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 6, 6));
        CheckBox2 checkBox2 = new CheckBox2(context, 24, resourcesProvider);
        this.checkbox = checkBox2;
        checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
        checkBox2.setDrawUnchecked(true);
        checkBox2.setChecked(false, false);
        checkBox2.setDrawBackgroundAsArc(10);
        linearLayout3.addView(checkBox2, LayoutHelper.createLinear(26, 26, 16, 0, 0, 0, 0));
        TextView textView = new TextView(context);
        this.checkboxTextView = textView;
        int i6 = Theme.key_dialogTextBlack;
        textView.setTextColor(getThemedColor(i6));
        textView.setTextSize(1, 14.0f);
        textView.setText(LocaleController.getString(C2573R.string.Gift2AddSenderName));
        linearLayout3.addView(textView, LayoutHelper.createLinear(-2, -2, 16, 9, 0, 0, 0));
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 4));
        ScaleStateListAnimator.apply(linearLayout3, 0.025f, 1.5f);
        LinearLayout linearLayout4 = new LinearLayout(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.6
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (StarGiftSheet.this.currentPage.is(2)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.wearLayout = linearLayout4;
        linearLayout4.setOrientation(1);
        linearLayout4.setPadding(AndroidUtilities.dp(4.0f) + this.backgroundPaddingLeft, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(4.0f) + this.backgroundPaddingLeft, AndroidUtilities.dp(66.0f));
        this.container.addView(linearLayout4, LayoutHelper.createFrame(-1, -1, 55));
        TextView textView2 = new TextView(context);
        this.wearTitle = textView2;
        textView2.setTextColor(Theme.getColor(i6, resourcesProvider));
        textView2.setTextSize(1, 20.0f);
        textView2.setGravity(17);
        textView2.setTypeface(AndroidUtilities.bold());
        linearLayout4.addView(textView2, LayoutHelper.createLinear(-1, -2, 7, 20, 0, 20, 0));
        TextView textView3 = new TextView(context);
        this.wearSubtitle = textView3;
        textView3.setTextColor(Theme.getColor(i6, resourcesProvider));
        textView3.setTextSize(1, 14.0f);
        textView3.setGravity(17);
        textView3.setText(LocaleController.getString(C2573R.string.Gift2WearSubtitle));
        linearLayout4.addView(textView3, LayoutHelper.createLinear(-1, -2, 7, 20, 6, 20, 24));
        AffiliateProgramFragment.FeatureCell[] featureCellArr2 = {featureCell, featureCell, featureCell};
        this.wearFeatureCells = featureCellArr2;
        AffiliateProgramFragment.FeatureCell featureCell4 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell4.set(C2573R.drawable.menu_feature_unique, LocaleController.getString(C2573R.string.Gift2WearFeature1Title), LocaleController.getString(C2573R.string.Gift2WearFeature1Text));
        linearLayout4.addView(featureCellArr2[0], LayoutHelper.createLinear(-1, -2));
        AffiliateProgramFragment.FeatureCell featureCell5 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell5.set(C2573R.drawable.menu_feature_cover, LocaleController.getString(C2573R.string.Gift2WearFeature2Title), LocaleController.getString(C2573R.string.Gift2WearFeature2Text));
        linearLayout4.addView(featureCellArr2[1], LayoutHelper.createLinear(-1, -2));
        AffiliateProgramFragment.FeatureCell featureCell6 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell6.set(C2573R.drawable.menu_verification, LocaleController.getString(C2573R.string.Gift2WearFeature3Title), LocaleController.getString(C2573R.string.Gift2WearFeature3Text));
        linearLayout4.addView(featureCellArr2[2], LayoutHelper.createLinear(-1, -2));
        LinearLayout linearLayout5 = new LinearLayout(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.7
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (StarGiftSheet.this.currentPage.is(3)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.craftLayout = linearLayout5;
        linearLayout5.setOrientation(1);
        linearLayout5.setPadding(AndroidUtilities.dp(4.0f) + this.backgroundPaddingLeft, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(4.0f) + this.backgroundPaddingLeft, AndroidUtilities.dp(92.0f));
        this.container.addView(linearLayout5, LayoutHelper.createFrame(-1, -1, 55));
        AffiliateProgramFragment.FeatureCell[] featureCellArr3 = {featureCell, featureCell, featureCell};
        this.craftFeatureCells = featureCellArr3;
        AffiliateProgramFragment.FeatureCell featureCell7 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell7.set(C2573R.drawable.menu_feature_unique, LocaleController.getString(C2573R.string.GiftCraftInfoFeature1Title), LocaleController.getString(C2573R.string.GiftCraftInfoFeature1Text));
        linearLayout5.addView(featureCellArr3[0], LayoutHelper.createLinear(-1, -2));
        AffiliateProgramFragment.FeatureCell featureCell8 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell8.set(C2573R.drawable.menu_random, LocaleController.getString(C2573R.string.GiftCraftInfoFeature2Title), LocaleController.getString(C2573R.string.GiftCraftInfoFeature2Text));
        linearLayout5.addView(featureCellArr3[1], LayoutHelper.createLinear(-1, -2));
        AffiliateProgramFragment.FeatureCell featureCell9 = new AffiliateProgramFragment.FeatureCell(context, resourcesProvider);
        featureCell9.set(C2573R.drawable.menu_feature_affect, LocaleController.getString(C2573R.string.GiftCraftInfoFeature3Title), LocaleController.getString(C2573R.string.GiftCraftInfoFeature3Text));
        linearLayout5.addView(featureCellArr3[2], LayoutHelper.createLinear(-1, -2));
        linearLayout.setAlpha(1.0f);
        linearLayout2.setAlpha(0.0f);
        linearLayout4.setAlpha(0.0f);
        linearLayout5.setAlpha(0.0f);
        TopView topView = new TopView(context, resourcesProvider, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openCrafting$8();
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.onMenuPressed(view4);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.lambda$new$0(view4);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.onTransferClick(view4);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda34
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.onWearPressed(view4);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda35
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.onSharePressed(view4);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.onResellPressed(view4);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda37
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.onUpdatePriceClick(view4);
            }
        });
        this.topView = topView;
        topView.craftTopView.helpButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda38
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                this.f$0.lambda$new$1(view4);
            }
        });
        int i7 = this.backgroundPaddingLeft;
        topView.setPadding(i7, 0, i7, 0);
        this.container.addView(topView, LayoutHelper.createFrame(-1, -2, 55));
        LinearLayoutManager linearLayoutManager = this.layoutManager;
        this.reverseLayout = true;
        linearLayoutManager.setReverseLayout(true);
        FrameLayout frameLayout = new FrameLayout(context);
        this.buttonContainer = frameLayout;
        frameLayout.setBackgroundColor(getThemedColor(i2));
        View view4 = new View(context);
        this.buttonShadow = view4;
        view4.setBackgroundColor(getThemedColor(i5));
        view4.setAlpha(0.0f);
        frameLayout.addView(view4, LayoutHelper.createFrame(-1.0f, 1.0f / AndroidUtilities.density, 55));
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        this.button = round;
        round.setText(LocaleController.getString(C2573R.string.OK), false);
        round.setSubText(null, false);
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 48.0f, 119, 0.0f, 12.0f, 0.0f, 12.0f);
        layoutParamsCreateFrame.leftMargin = this.backgroundPaddingLeft + AndroidUtilities.dp(14.0f);
        layoutParamsCreateFrame.rightMargin = this.backgroundPaddingLeft + AndroidUtilities.dp(14.0f);
        frameLayout.addView(round, layoutParamsCreateFrame);
        this.container.addView(frameLayout, LayoutHelper.createFrame(-1, 72, 87));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.underButtonContainer = frameLayout2;
        frameLayout2.setBackgroundColor(getThemedColor(i2));
        LinkSpanDrawable.LinksTextView linksTextView3 = new LinkSpanDrawable.LinksTextView(context);
        this.underButtonLinkTextView = linksTextView3;
        linksTextView3.setTextSize(1, 12.0f);
        linksTextView3.setTextColor(Theme.getColor(i4, resourcesProvider));
        linksTextView3.setLinkTextColor(Theme.getColor(i4, resourcesProvider));
        linksTextView3.setGravity(17);
        frameLayout2.addView(linksTextView3, LayoutHelper.createFrame(-1, -2.0f, 17, 16.0f, 8.0f, 16.0f, 14.0f));
        this.container.addView(frameLayout2, LayoutHelper.createFrame(-1, -2, 87));
        frameLayout2.setVisibility(8);
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stars.StarGiftSheet.8
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i8, int i9) {
                StarGiftSheet.this.container.updateTranslations();
            }
        });
        linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view5) {
                this.f$0.lambda$new$2(view5);
            }
        });
        FireworksOverlay fireworksOverlay = new FireworksOverlay(context);
        this.fireworksOverlay = fireworksOverlay;
        this.container.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.bottomBulletinContainer = frameLayout3;
        frameLayout3.setPadding(this.backgroundPaddingLeft + AndroidUtilities.dp(6.0f), 0, this.backgroundPaddingLeft + AndroidUtilities.dp(6.0f), 0);
        this.container.addView(frameLayout3, LayoutHelper.createFrame(-1, 200.0f, 87, 0.0f, 0.0f, 0.0f, 60.0f));
        AndroidUtilities.removeFromParent(this.actionBar);
        this.container.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f, 0, 6.0f, 0.0f, 6.0f, 0.0f));
        ActionView actionView = new ActionView(context);
        this.actionView = actionView;
        this.container.addView(actionView, LayoutHelper.createFrame(-1, -2, 55));
        actionView.prepareBlur(view);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stars.StarGiftSheet$2 */
    public class C56882 extends ViewPagerFixed {
        public C56882(Context context) {
            super(context);
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
        @Override // org.telegram.ui.Components.ViewPagerFixed
        public void swapViews() {
            super.swapViews();
            if (this.currentPosition != StarGiftSheet.this.hasNeighbour(false)) {
                final boolean z = this.currentPosition > StarGiftSheet.this.hasNeighbour(false);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$swapViews$0(z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$swapViews$0(boolean z) {
            TL_stars.SavedStarGift neighbourSavedGift = StarGiftSheet.this.getNeighbourSavedGift(z);
            StarGiftSheet starGiftSheet = StarGiftSheet.this;
            if (neighbourSavedGift != null) {
                starGiftSheet.firstSet = true;
                StarGiftSheet starGiftSheet2 = StarGiftSheet.this;
                starGiftSheet2.set(neighbourSavedGift, starGiftSheet2.giftsList);
            } else {
                TL_stars.TL_starGiftUnique neighbourSlugGift = starGiftSheet.getNeighbourSlugGift(z);
                if (neighbourSlugGift != null) {
                    StarGiftSheet.this.firstSet = true;
                    StarGiftSheet starGiftSheet3 = StarGiftSheet.this;
                    starGiftSheet3.set(neighbourSlugGift.slug, neighbourSlugGift, starGiftSheet3.giftsList);
                }
            }
            StarGiftSheet.this.overrideNextIndex = -1;
            if (Bulletin.getVisibleBulletin() != null) {
                Bulletin.getVisibleBulletin().hide(false, 0L);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
        @Override // org.telegram.ui.Components.ViewPagerFixed
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void setTranslationX(View view, float f) {
            View childAt;
            if (getMeasuredWidth() <= 0) {
                view.setTranslationX(f);
                return;
            }
            float fClamp = Utilities.clamp(f / getMeasuredWidth(), 1.0f, -1.0f);
            view.setTranslationX(f + ((-fClamp) * 2.0f * ((BottomSheet) StarGiftSheet.this).backgroundPaddingLeft));
            view.setPivotX(fClamp <= 0.0f ? view.getMeasuredWidth() : 0.0f);
            view.setCameraDistance(view.getMeasuredHeight() * 3.4f);
            view.setScaleX(1.0f - Math.abs(0.25f * fClamp));
            view.setRotationY(fClamp * 10.0f);
            if (view instanceof FrameLayout) {
                FrameLayout frameLayout = (FrameLayout) view;
                childAt = frameLayout.getChildCount() > 0 ? frameLayout.getChildAt(0) : null;
            }
            if (StarGiftSheet.this.left != null && childAt == StarGiftSheet.this.left.container && StarGiftSheet.this.left.actionView != null) {
                StarGiftSheet.this.left.actionView.invalidate();
            }
            if (childAt == StarGiftSheet.this.container && StarGiftSheet.this.actionView != null) {
                StarGiftSheet.this.actionView.invalidate();
            }
            if (StarGiftSheet.this.right == null || childAt != StarGiftSheet.this.right.container || StarGiftSheet.this.right.actionView == null) {
                return;
            }
            StarGiftSheet.this.right.actionView.invalidate();
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed
        public boolean canScroll(MotionEvent motionEvent) {
            return StarGiftSheet.this.currentPage == null || StarGiftSheet.this.currentPage.is(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        openCrafting(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (view.getAlpha() < 1.0f) {
            return;
        }
        openCraftInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        if (this.button.isLoading()) {
            return;
        }
        this.checkbox.setChecked(!r1.isChecked(), true);
    }

    public class Adapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(new BottomSheetLayouted.SpaceView(StarGiftSheet.this.getContext()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int length = (StarGiftSheet.this.heights.length - 1) - i;
            ((BottomSheetLayouted.SpaceView) viewHolder.itemView).setHeight(StarGiftSheet.this.heights[length], length);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return StarGiftSheet.this.heights.length;
        }

        public void setHeights(int i, int i2) {
            if (StarGiftSheet.this.heights[0] == i && StarGiftSheet.this.heights[1] == i2) {
                return;
            }
            StarGiftSheet.this.heights[0] = i;
            StarGiftSheet.this.heights[1] = i2;
            notifyDataSetChanged();
        }
    }

    private int getListPosition() {
        int iIndexOf;
        StarsController.IGiftsList iGiftsList = this.giftsList;
        if (iGiftsList == null) {
            return -1;
        }
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        if (savedStarGift != null) {
            iIndexOf = iGiftsList.indexOf(savedStarGift);
        } else {
            TL_stars.TL_starGiftUnique tL_starGiftUnique = this.slugStarGift;
            if (tL_starGiftUnique != null) {
                iIndexOf = iGiftsList.indexOf(tL_starGiftUnique);
            }
            return -1;
        }
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        TL_stars.StarGift gift = getGift();
        for (int i = 0; i < this.giftsList.getLoadedCount(); i++) {
            Object obj = this.giftsList.get(i);
            if (obj instanceof TL_stars.SavedStarGift) {
                TL_stars.SavedStarGift savedStarGift2 = this.savedStarGift;
                if ((savedStarGift2 != null && eq(savedStarGift2, (TL_stars.SavedStarGift) obj)) || (gift != null && eq(gift, (TL_stars.SavedStarGift) obj))) {
                    return i;
                }
            } else {
                if ((obj instanceof TL_stars.TL_starGiftUnique) && eq(this.slugStarGift, (TL_stars.TL_starGiftUnique) obj)) {
                    return i;
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TL_stars.SavedStarGift getNeighbourSavedGift(boolean z) {
        int listPosition = getListPosition();
        if (listPosition < 0) {
            return null;
        }
        int i = (z ? 1 : -1) + listPosition;
        int i2 = this.overrideNextIndex;
        if (i2 >= 0 && (!z ? i2 < listPosition : i2 > listPosition)) {
            i = i2;
        }
        StarsController.IGiftsList iGiftsList = this.giftsList;
        Object obj = (iGiftsList == null || i < 0 || i >= iGiftsList.getLoadedCount()) ? null : this.giftsList.get(i);
        if (obj instanceof TL_stars.SavedStarGift) {
            return (TL_stars.SavedStarGift) obj;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TL_stars.TL_starGiftUnique getNeighbourSlugGift(boolean z) {
        int listPosition = getListPosition();
        if (listPosition < 0) {
            return null;
        }
        int i = (z ? 1 : -1) + listPosition;
        int i2 = this.overrideNextIndex;
        if (i2 >= 0 && (!z ? i2 < listPosition : i2 > listPosition)) {
            i = i2;
        }
        StarsController.IGiftsList iGiftsList = this.giftsList;
        Object obj = (iGiftsList == null || i < 0 || i >= iGiftsList.getLoadedCount()) ? null : this.giftsList.get(i);
        if (obj instanceof TL_stars.TL_starGiftUnique) {
            return (TL_stars.TL_starGiftUnique) obj;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasNeighbour(boolean z) {
        return (getNeighbourSavedGift(z) == null && getNeighbourSlugGift(z) == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupNeighbour(boolean z, boolean z2) {
        int listPosition = getListPosition();
        if (listPosition < 0) {
            return;
        }
        int i = (z ? 1 : -1) + listPosition;
        int i2 = this.overrideNextIndex;
        if (i2 >= 0 && (!z ? i2 < listPosition : i2 > listPosition)) {
            i = i2;
        }
        StarsController.IGiftsList iGiftsList = this.giftsList;
        Object obj = (iGiftsList == null || i < 0 || i >= iGiftsList.getLoadedCount()) ? null : this.giftsList.get(i);
        if (obj == null) {
            return;
        }
        if ((z ? this.right : this.left) != null) {
            if (obj instanceof TL_stars.SavedStarGift) {
                if (eq((z ? this.right : this.left).savedStarGift, (TL_stars.SavedStarGift) obj)) {
                    return;
                }
            }
            if (obj instanceof TL_stars.TL_starGiftUnique) {
                if (eq((z ? this.right : this.left).slugStarGift, (TL_stars.TL_starGiftUnique) obj)) {
                    return;
                }
            }
        }
        StarGiftSheet starGiftSheet = new StarGiftSheet(getContext(), this.currentAccount, this.dialogId, this.resourcesProvider, this.container.getRootView()) { // from class: org.telegram.ui.Stars.StarGiftSheet.9
            @Override // org.telegram.ui.ActionBar.BottomSheet
            public int getBottomInset() {
                return StarGiftSheet.this.getBottomInset();
            }
        };
        if (obj instanceof TL_stars.SavedStarGift) {
            starGiftSheet.set((TL_stars.SavedStarGift) obj, this.giftsList);
        } else if (obj instanceof TL_stars.TL_starGiftUnique) {
            TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) obj;
            starGiftSheet.set(tL_starGiftUnique.slug, tL_starGiftUnique, this.giftsList);
        }
        AndroidUtilities.removeFromParent(starGiftSheet.containerView);
        if (z) {
            this.right = starGiftSheet;
        } else {
            this.left = starGiftSheet;
        }
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
    private void updateViewPager() {
        this.viewPager.setPosition(hasNeighbour(false) ? 1 : 0);
        this.viewPager.rebuild(false);
        if (this.giftsList == null || hasNeighbour(true) || this.giftsList.getLoadedCount() >= this.giftsList.getTotalCount()) {
            return;
        }
        this.giftsList.load();
    }

    public boolean eq(TL_stars.TL_starGiftUnique tL_starGiftUnique, TL_stars.TL_starGiftUnique tL_starGiftUnique2) {
        if (tL_starGiftUnique == tL_starGiftUnique2) {
            return true;
        }
        if (tL_starGiftUnique == null || tL_starGiftUnique2 == null) {
            return false;
        }
        return tL_starGiftUnique.id == tL_starGiftUnique2.id || TextUtils.equals(tL_starGiftUnique.slug, tL_starGiftUnique2.slug);
    }

    public boolean eq(TL_stars.SavedStarGift savedStarGift, TL_stars.SavedStarGift savedStarGift2) {
        if (savedStarGift == savedStarGift2) {
            return true;
        }
        if (savedStarGift != null && savedStarGift2 != null) {
            TL_stars.StarGift starGift = savedStarGift.gift;
            TL_stars.StarGift starGift2 = savedStarGift2.gift;
            if (starGift == starGift2) {
                return true;
            }
            if ((starGift instanceof TL_stars.TL_starGiftUnique) && (starGift2 instanceof TL_stars.TL_starGiftUnique)) {
                return starGift.id == starGift2.id;
            }
            if ((starGift instanceof TL_stars.TL_starGift) && (starGift2 instanceof TL_stars.TL_starGift) && starGift.id == starGift2.id && savedStarGift.date == savedStarGift2.date) {
                return true;
            }
        }
        return false;
    }

    public boolean eq(TL_stars.SavedStarGift savedStarGift, TL_stars.InputSavedStarGift inputSavedStarGift) {
        TL_stars.StarGift starGift;
        if (savedStarGift == null) {
            return false;
        }
        return inputSavedStarGift instanceof TL_stars.TL_inputSavedStarGiftUser ? savedStarGift.msg_id == ((TL_stars.TL_inputSavedStarGiftUser) inputSavedStarGift).msg_id : inputSavedStarGift instanceof TL_stars.TL_inputSavedStarGiftChat ? savedStarGift.saved_id == ((TL_stars.TL_inputSavedStarGiftChat) inputSavedStarGift).saved_id : (inputSavedStarGift instanceof TL_stars.TL_inputSavedStarGiftSlug) && (starGift = savedStarGift.gift) != null && TextUtils.equals(starGift.slug, ((TL_stars.TL_inputSavedStarGiftSlug) inputSavedStarGift).slug);
    }

    public boolean eq(TL_stars.StarGift starGift, TL_stars.SavedStarGift savedStarGift) {
        if (starGift != null && savedStarGift != null) {
            TL_stars.StarGift starGift2 = savedStarGift.gift;
            if (starGift == starGift2) {
                return true;
            }
            if ((starGift instanceof TL_stars.TL_starGiftUnique) && (starGift2 instanceof TL_stars.TL_starGiftUnique) && starGift.id == starGift2.id) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starUserGiftsLoaded);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        return this.title;
    }

    public static boolean isMine(int i, long j) {
        if (j >= 0) {
            return UserConfig.getInstance(i).getClientUserId() == j;
        }
        return ChatObject.canUserDoAction(MessagesController.getInstance(i).getChat(Long.valueOf(-j)), 5);
    }

    public static boolean isMineWithActions(int i, long j) {
        if (j >= 0) {
            return UserConfig.getInstance(i).getClientUserId() == j;
        }
        TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
        return chat != null && chat.creator;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void openCrafting(boolean z) {
        int i;
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if (message != null) {
                TLRPC.MessageAction messageAction = message.action;
                i = messageAction instanceof TLRPC.TL_messageActionStarGiftUnique ? ((TLRPC.TL_messageActionStarGiftUnique) messageAction).can_craft_at : 0;
            }
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null) {
                i = savedStarGift.can_craft_at;
            }
        }
        if (i > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.GiftCraftLaterTitle)).setMessage(LocaleController.formatString(C2573R.string.GiftCraftLaterText, LocaleController.formatDateTime(i, true))).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
            return;
        }
        final TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null) {
            return;
        }
        if (!TextUtils.isEmpty(uniqueGift.gift_address)) {
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.GiftCraftCantChooseFirstTitle)).setMessage(LocaleController.getString(C2573R.string.GiftCraftCantChooseFirst)).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
            return;
        }
        if (z) {
            this.topView.craftTopView.setup(this.currentAccount, uniqueGift.gift_id, uniqueGift.getDocument(), uniqueGift.title);
            if (canCraft()) {
                this.topView.craftTopView.selectGift(getUniqueGift());
            }
        }
        this.topView.craftTopView.setOnCraft(new Utilities.Callback3() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda56
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                this.f$0.lambda$openCrafting$5((ArrayList) obj, (Utilities.Callback2) obj2, (Runnable) obj3);
            }
        });
        if (this.giftsToCraft == null) {
            ResaleGiftsFragment.SelectGiftSheet.State state = new ResaleGiftsFragment.SelectGiftSheet.State(this.currentAccount, uniqueGift.gift_id);
            this.giftsToCraft = state;
            state.attach();
        }
        this.topView.craftTopView.setOnAddGift(new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda57
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$openCrafting$7(uniqueGift, (Utilities.Callback) obj, (Boolean) obj2);
            }
        });
        this.topView.craftTopView.setOnClose(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openCrafting$8();
            }
        });
        switchPage(4, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCrafting$5(final ArrayList arrayList, final Utilities.Callback2 callback2, final Runnable runnable) {
        ResaleGiftsFragment.SelectGiftSheet.State state = this.giftsToCraft;
        if (state != null) {
            state.detach();
            this.giftsToCraft = null;
        }
        TL_stars.craftStarGift craftstargift = new TL_stars.craftStarGift();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TL_stars.TL_inputSavedStarGiftSlug tL_inputSavedStarGiftSlug = new TL_stars.TL_inputSavedStarGiftSlug();
            tL_inputSavedStarGiftSlug.slug = ((TL_stars.StarGift) obj).slug;
            craftstargift.stargift.add(tL_inputSavedStarGiftSlug);
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(craftstargift, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda111
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj2, Object obj3) {
                this.f$0.lambda$openCrafting$4(callback2, arrayList, runnable, (TLRPC.Updates) obj2, (TLRPC.TL_error) obj3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCrafting$4(Utilities.Callback2 callback2, final ArrayList arrayList, Runnable runnable, TLRPC.Updates updates, TLRPC.TL_error tL_error) {
        final MessageObject messageObject;
        if (updates == null) {
            if (tL_error != null) {
                if ("STARGIFT_CRAFT_UNAVAILABLE".equalsIgnoreCase(tL_error.text)) {
                    new AlertDialog.Builder(getContext(), new DarkThemeResourceProvider()).setTitle(LocaleController.getString(C2573R.string.GiftCraftUnavailableTitle)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.GiftCraftUnavailableText))).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
                } else {
                    String str = tL_error.text;
                    if (str != null && str.startsWith("STARGIFT_CRAFT_TOO_EARLY_")) {
                        new AlertDialog.Builder(getContext(), new DarkThemeResourceProvider()).setTitle(LocaleController.getString(C2573R.string.GiftCraftUnavailableTitle)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftCraftUnavailableTextTime, LocaleController.formatDateTime(((long) ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) + Long.parseLong(tL_error.text.substring(25)), true)))).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
                    } else {
                        getBulletinFactory().showForError(tL_error);
                    }
                }
                runnable.run();
                return;
            }
            return;
        }
        ArrayList arrayListFindUpdates = MessagesController.findUpdates(updates, TL_update.TL_updateNewMessage.class);
        int size = arrayListFindUpdates.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                messageObject = null;
                break;
            }
            Object obj = arrayListFindUpdates.get(i);
            i++;
            TL_update.TL_updateNewMessage tL_updateNewMessage = (TL_update.TL_updateNewMessage) obj;
            TLRPC.Message message = tL_updateNewMessage.message;
            if (message != null && (message.action instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                messageObject = new MessageObject(this.currentAccount, tL_updateNewMessage.message, false, false);
                break;
            }
        }
        MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
        if (messageObject != null) {
            final TL_stars.StarGift starGift = ((TLRPC.TL_messageActionStarGiftUnique) messageObject.messageOwner.action).gift;
            callback2.run(starGift, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda137
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openCrafting$3(messageObject, arrayList, starGift);
                }
            });
            return;
        }
        callback2.run(null, null);
        StarsController.getInstance(this.currentAccount).invalidateBalance();
        StarsController.GiftsList profileGiftsList = StarsController.getInstance(this.currentAccount).getProfileGiftsList(UserConfig.getInstance(this.currentAccount).getClientUserId(), false);
        if (profileGiftsList != null) {
            profileGiftsList.processCrafting(arrayList, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCrafting$3(MessageObject messageObject, ArrayList arrayList, TL_stars.StarGift starGift) {
        this.nextButtonCrafting = true;
        set(messageObject);
        switchPage(0, true);
        FireworksOverlay fireworksOverlay = this.fireworksOverlay;
        if (fireworksOverlay != null) {
            fireworksOverlay.start(true);
        }
        StarsController.getInstance(this.currentAccount).invalidateBalance();
        StarsController.GiftsList profileGiftsList = StarsController.getInstance(this.currentAccount).getProfileGiftsList(UserConfig.getInstance(this.currentAccount).getClientUserId(), false);
        if (profileGiftsList != null) {
            profileGiftsList.processCrafting(arrayList, starGift);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCrafting$7(TL_stars.TL_starGiftUnique tL_starGiftUnique, final Utilities.Callback callback, Boolean bool) {
        if (this.giftsToCraft == null) {
            ResaleGiftsFragment.SelectGiftSheet.State state = new ResaleGiftsFragment.SelectGiftSheet.State(this.currentAccount, tL_starGiftUnique.gift_id);
            this.giftsToCraft = state;
            state.attach();
        }
        HashSet<Long> hashSet = new HashSet<>();
        for (int i = 0; i < this.topView.craftTopView.gifts.length; i++) {
            CraftTopView.SelectGiftView selectGiftView = this.topView.craftTopView.gifts[i];
            if (selectGiftView.getGift() != null) {
                hashSet.add(Long.valueOf(selectGiftView.getGift().id));
            }
        }
        new ResaleGiftsFragment.SelectGiftSheet(getContext(), tL_starGiftUnique.title, this.giftsToCraft).without(hashSet).setWillBeFirst(bool.booleanValue()).setActionText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("GiftCraftSelect", 4 - hashSet.size(), new Object[0]))).setOnSelect(new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda97
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                callback.run((TL_stars.StarGift) obj);
            }
        }).show();
    }

    private void openCraftInfo() {
        this.button.setText(LocaleController.getString(C2573R.string.GiftCraftInfoButton), true);
        this.button.setSubText(null, true);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda77
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$openCraftInfo$9(view);
            }
        });
        this.topView.setText(3, LocaleController.getString(C2573R.string.GiftCraftInfoTitle), LocaleController.getString(C2573R.string.GiftCraftInfoText), null, null);
        switchPage(3, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCraftInfo$9(View view) {
        openCrafting(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMenuPressed(View view) {
        final String link = getLink();
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.container, this.resourcesProvider, view);
        boolean z = (getUniqueGift() == null || !isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(getUniqueGift().owner_id)) || !(this.giftsList instanceof StarsController.GiftsList) || this.savedStarGift == null || getInputStarGift() == null) ? false : true;
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        itemOptionsMakeOptions.addIf(z, (savedStarGift == null || !savedStarGift.pinned_to_top) ? C2573R.drawable.msg_pin : C2573R.drawable.msg_unpin, LocaleController.getString((savedStarGift == null || !savedStarGift.pinned_to_top) ? C2573R.string.Gift2Pin : C2573R.string.Gift2Unpin), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuPressed$10();
            }
        }).addIf(canCraft(), C2573R.drawable.outline_craft, LocaleController.getString(C2573R.string.GiftCraft), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuPressed$11();
            }
        }).addIf((getUniqueGift() == null || !isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(getUniqueGift().owner_id)) || getUniqueGift().resell_amount == null) ? false : true, C2573R.drawable.menu_edit_price, LocaleController.getString(C2573R.string.Gift2ChangePrice), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuPressed$12();
            }
        }).addIf(link != null, C2573R.drawable.msg_link, LocaleController.getString(C2573R.string.CopyLink), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuPressed$13(link);
            }
        }).addIf(link != null, C2573R.drawable.msg_share, LocaleController.getString(C2573R.string.ShareFile), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuPressed$14();
            }
        }).addIf(uniqueGift != null && uniqueGift.offer_min_stars > 0, C2573R.drawable.input_suggest_paid_24, LocaleController.getString(C2573R.string.GiftOfferToBuyMenu), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showGiftOfferSheet();
            }
        }).addIf(canSetAsTheme(), C2573R.drawable.msg_colors, LocaleController.getString(C2573R.string.GiftThemesSetIn), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openSetAsTheme();
            }
        }).addIf(canTransfer(), C2573R.drawable.menu_feature_transfer, LocaleController.getString(C2573R.string.Gift2TransferOption), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openTransfer();
            }
        }).addIf(this.savedStarGift == null && getDialogId() != 0, C2573R.drawable.msg_view_file, LocaleController.getString(C2573R.string.Gift2ViewInProfile), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openInProfile();
            }
        }).setDrawScrim(false).setOnTopOfScrim().setDimAlpha(0).translate(0.0f, -AndroidUtilities.dp(2.0f)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuPressed$10() {
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        if (savedStarGift.unsaved) {
            savedStarGift.unsaved = false;
            StarsController.GiftsCollections profileGiftCollectionsList = StarsController.getInstance(this.currentAccount).getProfileGiftCollectionsList(this.dialogId, false);
            if (profileGiftCollectionsList != null) {
                TL_stars.SavedStarGift savedStarGift2 = this.savedStarGift;
                profileGiftCollectionsList.updateGiftsUnsaved(savedStarGift2, savedStarGift2.unsaved);
            }
            TL_stars.saveStarGift savestargift = new TL_stars.saveStarGift();
            savestargift.stargift = getInputStarGift();
            savestargift.unsave = this.savedStarGift.unsaved;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(savestargift, null, 64);
        }
        TL_stars.SavedStarGift savedStarGift3 = this.savedStarGift;
        boolean z = savedStarGift3.pinned_to_top;
        if (((StarsController.GiftsList) this.giftsList).togglePinned(savedStarGift3, !z, false)) {
            new ProfileGiftsContainer.UnpinSheet(getContext(), this.dialogId, this.savedStarGift, this.resourcesProvider, new Utilities.Callback0Return() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda100
                @Override // org.telegram.messenger.Utilities.Callback0Return
                public final Object run() {
                    return this.f$0.getBulletinFactory();
                }
            }).show();
        } else if (!z) {
            getBulletinFactory().createSimpleBulletin(C2573R.raw.ic_pin, LocaleController.getString(C2573R.string.Gift2PinnedTitle), LocaleController.getString(C2573R.string.Gift2PinnedSubtitle)).show();
        } else {
            getBulletinFactory().createSimpleBulletin(C2573R.raw.ic_unpin, LocaleController.getString(C2573R.string.Gift2Unpinned)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuPressed$11() {
        openCrafting(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuPressed$12() {
        onUpdatePriceClick(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuPressed$13(String str) {
        AndroidUtilities.addToClipboard(str);
        getBulletinFactory().createCopyLinkBulletin(false).ignoreDetach().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuPressed$14() {
        onSharePressed(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showGiftOfferSheet() {
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        new GiftOfferSheet(getContext(), this.currentAccount, DialogObject.getPeerDialogId(uniqueGift.owner_id), uniqueGift, this.resourcesProvider, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda112
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showGiftOfferSheet$15();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGiftOfferSheet$15() {
        Runnable runnable = this.closeParentSheet;
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    private boolean canSetAsTheme() {
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift != null && uniqueGift.theme_available) {
            long peerDialogId = DialogObject.getPeerDialogId(uniqueGift.owner_id);
            long peerDialogId2 = DialogObject.getPeerDialogId(uniqueGift.host_id);
            if (peerDialogId > 0 && isMineWithActions(this.currentAccount, peerDialogId)) {
                return true;
            }
            if (peerDialogId2 > 0 && isMineWithActions(this.currentAccount, peerDialogId2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openSetAsTheme() {
        lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        final TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (safeLastFragment == null || uniqueGift == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 4);
        final DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda109
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
                return this.f$0.lambda$openSetAsTheme$17(uniqueGift, dialogsActivity, dialogsActivity2, arrayList, charSequence, z, z2, i, i2, topicsFragment);
            }
        });
        safeLastFragment.presentFragment(dialogsActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$openSetAsTheme$17(final TL_stars.TL_starGiftUnique tL_starGiftUnique, final DialogsActivity dialogsActivity, DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
        if (arrayList.isEmpty()) {
            return false;
        }
        final long j = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
        long giftThemeUser = ChatThemeController.getInstance(this.currentAccount).getGiftThemeUser(tL_starGiftUnique.slug);
        if (giftThemeUser != 0 && giftThemeUser != j) {
            AlertsCreator.showGiftThemeApplyConfirm(getContext(), this.resourcesProvider, this.currentAccount, tL_starGiftUnique, giftThemeUser, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda149
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSetAsTheme$16(j, tL_starGiftUnique, dialogsActivity);
                }
            });
            return true;
        }
        ChatThemeController.getInstance(this.currentAccount).setDialogTheme(j, ThemeKey.ofGiftSlug(tL_starGiftUnique.slug));
        dialogsActivity.presentFragment(ChatActivity.of(j), true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSetAsTheme$16(long j, TL_stars.TL_starGiftUnique tL_starGiftUnique, DialogsActivity dialogsActivity) {
        ChatThemeController.getInstance(this.currentAccount).setDialogTheme(j, ThemeKey.ofGiftSlug(tL_starGiftUnique.slug));
        dialogsActivity.presentFragment(ChatActivity.of(j), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWearPressed(View view) {
        if (UserConfig.getInstance(this.currentAccount).isPremium() && (isWorn(this.currentAccount, getUniqueGift()) || this.shownWearInfo)) {
            toggleWear();
            return;
        }
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null) {
            return;
        }
        TLRPC.Peer peer = uniqueGift.owner_id;
        if (peer == null) {
            peer = uniqueGift.host_id;
        }
        long peerDialogId = DialogObject.getPeerDialogId(peer);
        this.wearTitle.setText(LocaleController.formatString(C2573R.string.Gift2WearTitle, uniqueGift.title + " #" + LocaleController.formatNumber(uniqueGift.num, ',')));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2573R.string.Gift2WearStart));
        if (!UserConfig.getInstance(this.currentAccount).isPremium()) {
            spannableStringBuilder.append((CharSequence) " l");
            if (this.lockSpan == null) {
                this.lockSpan = new ColoredImageSpan(C2573R.drawable.msg_mini_lock3);
            }
            spannableStringBuilder.setSpan(this.lockSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        this.button.setText(spannableStringBuilder, true);
        this.button.setSubText(null, true);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda95
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onWearPressed$18(view2);
            }
        });
        this.topView.setWearPreview(MessagesController.getInstance(this.currentAccount).getUserOrChat(peerDialogId));
        switchPage(2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWearPressed$18(View view) {
        this.shownWearInfo = true;
        toggleWear();
    }

    public StarGiftSheet setupWearPage() {
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null) {
            return this;
        }
        TLRPC.Peer peer = uniqueGift.owner_id;
        if (peer == null) {
            peer = uniqueGift.host_id;
        }
        long peerDialogId = DialogObject.getPeerDialogId(peer);
        this.wearTitle.setText(LocaleController.formatString(C2573R.string.Gift2WearTitle, uniqueGift.title + " #" + LocaleController.formatNumber(uniqueGift.num, ',')));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2573R.string.Gift2WearStart));
        if (peerDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() && !UserConfig.getInstance(this.currentAccount).isPremium()) {
            spannableStringBuilder.append((CharSequence) " l");
            if (this.lockSpan == null) {
                this.lockSpan = new ColoredImageSpan(C2573R.drawable.msg_mini_lock3);
            }
            spannableStringBuilder.setSpan(this.lockSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        this.button.setText(spannableStringBuilder, true);
        this.button.setSubText(null, true);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda96
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setupWearPage$19(view);
            }
        });
        this.topView.setWearPreview(MessagesController.getInstance(this.currentAccount).getUserOrChat(peerDialogId));
        switchPage(2, false);
        this.onlyWearInfo = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupWearPage$19(View view) {
        this.shownWearInfo = true;
        toggleWear();
    }

    public static boolean isWorn(int i, TL_stars.TL_starGiftUnique tL_starGiftUnique) {
        if (tL_starGiftUnique == null) {
            return false;
        }
        TLRPC.Peer peer = tL_starGiftUnique.owner_id;
        if (peer == null) {
            peer = tL_starGiftUnique.host_id;
        }
        long peerDialogId = DialogObject.getPeerDialogId(peer);
        if (peerDialogId == 0) {
            return false;
        }
        if (peerDialogId > 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
            if (user != null) {
                TLRPC.EmojiStatus emojiStatus = user.emoji_status;
                return (emojiStatus instanceof TLRPC.TL_emojiStatusCollectible) && ((TLRPC.TL_emojiStatusCollectible) emojiStatus).collectible_id == tL_starGiftUnique.id;
            }
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
            if (chat != null) {
                TLRPC.EmojiStatus emojiStatus2 = chat.emoji_status;
                if ((emojiStatus2 instanceof TLRPC.TL_emojiStatusCollectible) && ((TLRPC.TL_emojiStatusCollectible) emojiStatus2).collectible_id == tL_starGiftUnique.id) {
                    return true;
                }
            }
        }
        return false;
    }

    public void toggleWear() {
        toggleWear(false);
    }

    public void toggleWear(boolean z) {
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null) {
            return;
        }
        MessagesController.getGlobalMainSettings().edit().putInt("statusgiftpage", 3).apply();
        boolean zIsWorn = isWorn(this.currentAccount, getUniqueGift());
        final boolean z2 = !zIsWorn;
        if (isWorn(this.currentAccount, getUniqueGift())) {
            MessagesController.getInstance(this.currentAccount).updateEmojiStatus(getDialogId(), new TLRPC.TL_emojiStatusEmpty(), null);
        } else {
            final long dialogId = getDialogId();
            if (dialogId >= 0) {
                if (!UserConfig.getInstance(this.currentAccount).isPremium()) {
                    getBulletinFactory().createSimpleBulletinDetail(C2573R.raw.star_premium_2, AndroidUtilities.premiumText(LocaleController.getString(C2573R.string.Gift2ActionWearNeededPremium), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda119
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$toggleWear$20();
                        }
                    })).ignoreDetach().show();
                    return;
                }
            } else if (!z) {
                final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                this.button.setLoading(true);
                MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(dialogId, new Consumer() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda120
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$toggleWear$23(messagesController, dialogId, (TL_stories.TL_premium_boostsStatus) obj);
                    }
                });
                return;
            }
            TLRPC.TL_inputEmojiStatusCollectible tL_inputEmojiStatusCollectible = new TLRPC.TL_inputEmojiStatusCollectible();
            tL_inputEmojiStatusCollectible.collectible_id = uniqueGift.id;
            MessagesController.getInstance(this.currentAccount).updateEmojiStatus(getDialogId(), tL_inputEmojiStatusCollectible, uniqueGift);
        }
        this.topView.buttons[1].set(!zIsWorn ? C2573R.drawable.filled_crown_off : C2573R.drawable.filled_crown_on, LocaleController.getString(!zIsWorn ? C2573R.string.Gift2ActionWearOff : C2573R.string.Gift2ActionWear), true);
        if (this.onlyWearInfo) {
            lambda$new$0();
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleWear$24(z2);
            }
        };
        if (this.currentPage.is(0)) {
            runnable.run();
        } else {
            switchPage(0, true, runnable);
        }
        this.button.setText(LocaleController.getString(C2573R.string.OK), !this.firstSet);
        this.button.setSubText(null, !this.firstSet);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda122
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$toggleWear$25(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleWear$20() {
        new PremiumFeatureBottomSheet(getDummyFragment(), 12, false).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleWear$23(final MessagesController messagesController, final long j, final TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        if (tL_premium_boostsStatus == null || tL_premium_boostsStatus.level >= messagesController.channelEmojiStatusLevelMin) {
            this.button.setLoading(false);
            toggleWear(true);
        } else {
            messagesController.getBoostsController().userCanBoostChannel(j, tL_premium_boostsStatus, new Consumer() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda142
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$toggleWear$22(tL_premium_boostsStatus, j, messagesController, (ChannelBoostsController.CanApplyBoost) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleWear$22(TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus, long j, MessagesController messagesController, ChannelBoostsController.CanApplyBoost canApplyBoost) {
        this.button.setLoading(false);
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(getDummyFragment(), getContext(), 26, this.currentAccount, this.resourcesProvider);
        limitReachedBottomSheet.setCanApplyBoost(canApplyBoost);
        limitReachedBottomSheet.setBoostsStats(tL_premium_boostsStatus, true);
        limitReachedBottomSheet.setDialogId(j);
        final TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-j));
        if (chat != null) {
            limitReachedBottomSheet.showStatisticButtonInLink(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda180
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$toggleWear$21(chat);
                }
            });
        }
        limitReachedBottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleWear$21(TLRPC.Chat chat) {
        presentFragment(StatisticActivity.create(chat));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleWear$24(boolean z) {
        showHint(AndroidUtilities.replaceTags(LocaleController.formatString(z ? C2573R.string.Gift2ActionWearDone : C2573R.string.Gift2ActionWearOffDone, getGiftName())), this.ownerTextView, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleWear$25(View view) {
        lambda$openCrafting$8();
    }

    private BaseFragment getDummyFragment() {
        return new BaseFragment() { // from class: org.telegram.ui.Stars.StarGiftSheet.10
            @Override // org.telegram.ui.ActionBar.BaseFragment
            public int getCurrentAccount() {
                return this.currentAccount;
            }

            @Override // org.telegram.ui.ActionBar.BaseFragment
            public Context getContext() {
                return StarGiftSheet.this.getContext();
            }

            @Override // org.telegram.ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                    if (context instanceof Activity) {
                        return (Activity) context;
                    }
                }
                return null;
            }

            @Override // org.telegram.ui.ActionBar.BaseFragment
            public Dialog showDialog(Dialog dialog) {
                dialog.show();
                return dialog;
            }
        };
    }

    public void onSharePressed(View view) {
        ShareAlert shareAlert = this.shareAlert;
        if (shareAlert != null && shareAlert.isShown()) {
            this.shareAlert.lambda$new$0();
        }
        String link = getLink();
        ShareAlert shareAlert2 = new ShareAlert(getContext(), null, null, null, link, null, false, link, null, false, false, true, null, this.resourcesProvider) { // from class: org.telegram.ui.Stars.StarGiftSheet.11
            {
                this.includeStoryFromMessage = true;
            }

            @Override // org.telegram.ui.Components.ShareAlert
            public void onShareStory(View view2) {
                StarGiftSheet.this.repostStory(view2);
            }

            @Override // org.telegram.ui.Components.ShareAlert
            public void onSend(LongSparseArray<TLRPC.Dialog> longSparseArray, int i, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
                if (z) {
                    super.onSend(longSparseArray, i, tL_forumTopic, z);
                    BulletinFactory bulletinFactory = getBulletinFactory();
                    if (bulletinFactory != null) {
                        if (longSparseArray.size() == 1) {
                            long jKeyAt = longSparseArray.keyAt(0);
                            if (jKeyAt == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                bulletinFactory.createSimpleBulletin(C2573R.raw.saved_messages, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.LinkSharedToSavedMessages, new Object[0])), 5000).hideAfterBottomSheet(false).ignoreDetach().show();
                            } else {
                                int i2 = this.currentAccount;
                                if (jKeyAt < 0) {
                                    bulletinFactory.createSimpleBulletin(C2573R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.LinkSharedTo, tL_forumTopic != null ? tL_forumTopic.title : MessagesController.getInstance(i2).getChat(Long.valueOf(-jKeyAt)).title)), 5000).hideAfterBottomSheet(false).ignoreDetach().show();
                                } else {
                                    bulletinFactory.createSimpleBulletin(C2573R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.LinkSharedTo, MessagesController.getInstance(i2).getUser(Long.valueOf(jKeyAt)).first_name)), 5000).hideAfterBottomSheet(false).ignoreDetach().show();
                                }
                            }
                        } else {
                            bulletinFactory.createSimpleBulletin(C2573R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatPluralString("LinkSharedToManyChats", longSparseArray.size(), Integer.valueOf(longSparseArray.size())))).hideAfterBottomSheet(false).ignoreDetach().show();
                        }
                        try {
                            this.container.performHapticFeedback(3);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        };
        this.shareAlert = shareAlert2;
        shareAlert2.setDelegate(new ShareAlert.ShareAlertDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet.12
            @Override // org.telegram.ui.Components.ShareAlert.ShareAlertDelegate
            public boolean didCopy() {
                StarGiftSheet.this.getBulletinFactory().createCopyLinkBulletin(false).ignoreDetach().show();
                return true;
            }
        });
        this.shareAlert.show();
    }

    public void onUpdatePriceClick(View view) {
        final TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null) {
            return;
        }
        StarsIntroActivity.showGiftResellPriceSheet(getContext(), this.currentAccount, uniqueGift, null, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda93
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$onUpdatePriceClick$29(uniqueGift, (AmountUtils$Amount) obj, (Runnable) obj2);
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdatePriceClick$29(final TL_stars.TL_starGiftUnique tL_starGiftUnique, final AmountUtils$Amount amountUtils$Amount, final Runnable runnable) {
        TL_stars.StarsAmount tl = amountUtils$Amount.toTl();
        TL_stars.updateStarGiftPrice updatestargiftprice = new TL_stars.updateStarGiftPrice();
        updatestargiftprice.stargift = getInputStarGift();
        updatestargiftprice.resell_amount = tl;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatestargiftprice, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda101
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onUpdatePriceClick$28(tL_starGiftUnique, amountUtils$Amount, runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdatePriceClick$28(final TL_stars.TL_starGiftUnique tL_starGiftUnique, final AmountUtils$Amount amountUtils$Amount, final Runnable runnable, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda145
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdatePriceClick$26(tL_starGiftUnique, amountUtils$Amount, runnable);
                }
            });
        } else if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda146
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdatePriceClick$27(tL_error, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdatePriceClick$26(TL_stars.TL_starGiftUnique tL_starGiftUnique, AmountUtils$Amount amountUtils$Amount, Runnable runnable) {
        tL_starGiftUnique.flags |= 16;
        AmountUtils$Currency amountUtils$Currency = amountUtils$Amount.currency;
        AmountUtils$Currency amountUtils$Currency2 = AmountUtils$Currency.TON;
        tL_starGiftUnique.resale_ton_only = amountUtils$Currency == amountUtils$Currency2;
        ArrayList<TL_stars.StarsAmount> arrayList = new ArrayList<>();
        tL_starGiftUnique.resell_amount = arrayList;
        arrayList.add(amountUtils$Amount.convertTo(AmountUtils$Currency.STARS).toTl());
        tL_starGiftUnique.resell_amount.add(amountUtils$Amount.convertTo(amountUtils$Currency2).toTl());
        this.topView.setResellPrice(amountUtils$Amount);
        Runnable runnable2 = this.onGiftUpdatedListener;
        if (runnable2 != null) {
            runnable2.run();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdatePriceClick$27(TLRPC.TL_error tL_error, Runnable runnable) {
        getBulletinFactory().showForError(tL_error);
        if (runnable != null) {
            runnable.run();
        }
    }

    public void onResellPressed(View view) {
        if (view.getAlpha() < 0.99f) {
            cantWithBlockchainGiftAlert(1);
            return;
        }
        final TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null) {
            return;
        }
        if (uniqueGift.resell_amount != null) {
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.formatString(C2573R.string.Gift2UnlistTitle, getGiftName())).setMessage(LocaleController.getString(C2573R.string.Gift2UnlistText)).setPositiveButton(LocaleController.getString(C2573R.string.Gift2ActionUnlist), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda50
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onResellPressed$34(uniqueGift, alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda51
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    StarGiftSheet.$r8$lambda$0r2fGn1ki4R1G_0UzOT8eZ4I05M(alertDialog, i);
                }
            }).show();
        } else if (canResellAt() > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
            showTimeoutAlertAt(getContext(), true, canResellAt());
        } else {
            StarsIntroActivity.showGiftResellPriceSheet(getContext(), this.currentAccount, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda52
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$onResellPressed$40(uniqueGift, (AmountUtils$Amount) obj, (Runnable) obj2);
                }
            }, this.resourcesProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$34(final TL_stars.TL_starGiftUnique tL_starGiftUnique, AlertDialog alertDialog, int i) {
        final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(-1);
        progressMakeButtonLoading.init();
        TL_stars.updateStarGiftPrice updatestargiftprice = new TL_stars.updateStarGiftPrice();
        updatestargiftprice.stargift = getInputStarGift();
        updatestargiftprice.resell_amount = TL_stars.StarsAmount.ofStars(0L);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatestargiftprice, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda117
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onResellPressed$33(progressMakeButtonLoading, tL_starGiftUnique, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$33(final Browser.Progress progress, final TL_stars.TL_starGiftUnique tL_starGiftUnique, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda155
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResellPressed$30(progress, tL_starGiftUnique);
                }
            });
        } else if (tL_error != null && tL_error.text.startsWith("STARGIFT_RESELL_TOO_EARLY_")) {
            final long j = Long.parseLong(tL_error.text.substring(26));
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda156
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResellPressed$31(progress, j);
                }
            });
        } else if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda157
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResellPressed$32(progress, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$30(Browser.Progress progress, TL_stars.TL_starGiftUnique tL_starGiftUnique) {
        progress.end();
        tL_starGiftUnique.flags &= -17;
        tL_starGiftUnique.resale_ton_only = false;
        tL_starGiftUnique.resell_amount = null;
        this.topView.setResellPrice(AmountUtils$Amount.fromNano(0L, AmountUtils$Currency.STARS));
        Runnable runnable = this.onGiftUpdatedListener;
        if (runnable != null) {
            runnable.run();
        }
        getBulletinFactory().createSimpleBulletin(C2573R.raw.contact_check, LocaleController.formatString(C2573R.string.Gift2ResaleDisable, getGiftName())).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$31(Browser.Progress progress, long j) {
        progress.end();
        showTimeoutAlert(getContext(), true, (int) j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$32(Browser.Progress progress, TLRPC.TL_error tL_error) {
        progress.end();
        getBulletinFactory().showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$40(final TL_stars.TL_starGiftUnique tL_starGiftUnique, final AmountUtils$Amount amountUtils$Amount, final Runnable runnable) {
        TL_stars.StarsAmount tl = amountUtils$Amount.toTl();
        TL_stars.updateStarGiftPrice updatestargiftprice = new TL_stars.updateStarGiftPrice();
        updatestargiftprice.stargift = getInputStarGift();
        updatestargiftprice.resell_amount = tl;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(updatestargiftprice, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda118
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onResellPressed$39(tL_starGiftUnique, amountUtils$Amount, runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$39(final TL_stars.TL_starGiftUnique tL_starGiftUnique, final AmountUtils$Amount amountUtils$Amount, final Runnable runnable, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda139
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResellPressed$36(tL_starGiftUnique, amountUtils$Amount, runnable);
                }
            });
        } else if (tL_error != null && tL_error.text.startsWith("STARGIFT_RESELL_TOO_EARLY_")) {
            final long j = Long.parseLong(tL_error.text.substring(26));
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda140
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResellPressed$37(j, runnable);
                }
            });
        } else if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda141
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onResellPressed$38(tL_error, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$36(TL_stars.TL_starGiftUnique tL_starGiftUnique, AmountUtils$Amount amountUtils$Amount, Runnable runnable) {
        tL_starGiftUnique.flags |= 16;
        AmountUtils$Currency amountUtils$Currency = amountUtils$Amount.currency;
        AmountUtils$Currency amountUtils$Currency2 = AmountUtils$Currency.TON;
        tL_starGiftUnique.resale_ton_only = amountUtils$Currency == amountUtils$Currency2;
        ArrayList<TL_stars.StarsAmount> arrayList = new ArrayList<>();
        tL_starGiftUnique.resell_amount = arrayList;
        arrayList.add(amountUtils$Amount.convertTo(AmountUtils$Currency.STARS).toTl());
        tL_starGiftUnique.resell_amount.add(amountUtils$Amount.convertTo(amountUtils$Currency2).toTl());
        this.topView.setResellPrice(amountUtils$Amount);
        Runnable runnable2 = this.onGiftUpdatedListener;
        if (runnable2 != null) {
            runnable2.run();
        }
        if (runnable != null) {
            runnable.run();
        }
        getBulletinFactory().createSimpleBulletin(C2573R.raw.contact_check, LocaleController.formatString(C2573R.string.Gift2ResaleEnable, getGiftName())).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$37(long j, Runnable runnable) {
        showTimeoutAlert(getContext(), true, (int) j);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResellPressed$38(TLRPC.TL_error tL_error, Runnable runnable) {
        getBulletinFactory().showForError(tL_error);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void repostStory(final View view) {
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity == null) {
            return;
        }
        StoryRecorder.SourceView sourceViewFromShareCell = view instanceof ShareDialogCell ? StoryRecorder.SourceView.fromShareCell((ShareDialogCell) view) : null;
        ArrayList arrayList = new ArrayList();
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            arrayList.add(messageObject);
        } else {
            if (!(getGift() instanceof TL_stars.TL_starGiftUnique)) {
                return;
            }
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) getGift();
            TLRPC.TL_messageService tL_messageService = new TLRPC.TL_messageService();
            tL_messageService.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(clientUserId);
            tL_messageService.from_id = MessagesController.getInstance(this.currentAccount).getPeer(clientUserId);
            tL_messageService.date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = new TLRPC.TL_messageActionStarGiftUnique();
            tL_messageActionStarGiftUnique.gift = tL_starGiftUnique;
            tL_messageActionStarGiftUnique.upgrade = true;
            tL_messageService.action = tL_messageActionStarGiftUnique;
            MessageObject messageObject2 = new MessageObject(this.currentAccount, tL_messageService, false, false);
            messageObject2.setType();
            arrayList.add(messageObject2);
        }
        final StoryRecorder storyRecorder = StoryRecorder.getInstance(launchActivity, this.currentAccount);
        storyRecorder.setOnPrepareCloseListener(new Utilities.Callback4() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda128
            @Override // org.telegram.messenger.Utilities.Callback4
            public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                this.f$0.lambda$repostStory$42(storyRecorder, view, (Long) obj, (Runnable) obj2, (Boolean) obj3, (Long) obj4);
            }
        });
        storyRecorder.openRepost(sourceViewFromShareCell, StoryEntry.repostMessage(arrayList));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repostStory$42(StoryRecorder storyRecorder, View view, Long l, Runnable runnable, Boolean bool, final Long l2) {
        boolean zBooleanValue = bool.booleanValue();
        StoryRecorder.SourceView sourceViewFromShareCell = null;
        if (zBooleanValue) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda154
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$repostStory$41(l2);
                }
            });
            storyRecorder.replaceSourceView(null);
            ShareAlert shareAlert = this.shareAlert;
            if (shareAlert != null) {
                shareAlert.lambda$new$0();
                this.shareAlert = null;
            }
        } else {
            if ((view instanceof ShareDialogCell) && view.isAttachedToWindow()) {
                sourceViewFromShareCell = StoryRecorder.SourceView.fromShareCell((ShareDialogCell) view);
            }
            storyRecorder.replaceSourceView(sourceViewFromShareCell);
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repostStory$41(Long l) {
        String str;
        String string;
        TLRPC.Chat chat;
        if (l.longValue() < 0 && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-l.longValue()))) != null) {
            str = chat.title;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        BulletinFactory bulletinFactory = getBulletinFactory();
        int i = C2573R.raw.contact_check;
        if (TextUtils.isEmpty(str)) {
            string = LocaleController.getString(C2573R.string.GiftRepostedToProfile);
        } else {
            string = LocaleController.formatString(C2573R.string.GiftRepostedToChannelProfile, str);
        }
        bulletinFactory.createSimpleBulletin(i, AndroidUtilities.replaceTags(string)).ignoreDetach().show();
    }

    private void showTimeoutAlertAt(Context context, boolean z, int i) {
        showTimeoutAlert(context, z, i - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime());
    }

    private void showTimeoutAlert(Context context, boolean z, int i) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(64.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(64, 64, 49, 0, 6, 0, 0));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        rLottieImageView.setAnimation(C2573R.raw.timer_3, 42, 42);
        frameLayout.addView(rLottieImageView, LayoutHelper.createLinear(64, 64, 17));
        rLottieImageView.playAnimation();
        TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, Theme.key_windowBackgroundWhiteBlackText, true);
        textViewMakeTextView.setGravity(17);
        textViewMakeTextView.setText(LocaleController.getString(z ? C2573R.string.Gift2ResellTimeoutTitle : C2573R.string.Gift2TransferTimeoutTitle));
        linearLayout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 48, 24, 14, 24, 0));
        TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, Theme.key_windowBackgroundWhiteGrayText8, false);
        textViewMakeTextView2.setGravity(17);
        textViewMakeTextView2.setText(LocaleController.formatString(z ? C2573R.string.Gift2ResellTimeout : C2573R.string.Gift2TransferTimeout, LocaleController.formatTTLString(Math.max(10, i))));
        linearLayout.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 48, 24, 6, 24, 6));
        new AlertDialog.Builder(context, this.resourcesProvider).setView(linearLayout).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public int getActionBarProgressHeight() {
        return AndroidUtilities.dp(12.0f);
    }

    public class ContainerView extends FrameLayout {
        private final Paint backgroundPaint;
        private float dimAlpha;
        private final Path path;
        private final RectF rect;

        public ContainerView(Context context) {
            super(context);
            this.rect = new RectF();
            this.backgroundPaint = new Paint(1);
            this.path = new Path();
            this.dimAlpha = 0.0f;
            setWillNotDraw(false);
            setClipChildren(false);
            setClipToPadding(false);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && motionEvent.getY() < top() && ((BottomSheet) StarGiftSheet.this).containerView.isAttachedToWindow()) {
                StarGiftSheet.this.lambda$new$0();
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            StarGiftSheet.this.preDrawInternal(canvas, this);
            canvas.save();
            float pVar = top();
            float fDp = AndroidUtilities.dp(12.0f);
            this.rect.set(((BottomSheet) StarGiftSheet.this).backgroundPaddingLeft, pVar, getWidth() - ((BottomSheet) StarGiftSheet.this).backgroundPaddingLeft, getHeight() + fDp);
            this.backgroundPaint.setColor(StarGiftSheet.this.getThemedColor(Theme.key_dialogBackground));
            this.path.rewind();
            this.path.addRoundRect(this.rect, fDp, fDp, Path.Direction.CW);
            canvas.drawPath(this.path, this.backgroundPaint);
            super.dispatchDraw(canvas);
            float f = this.dimAlpha;
            if (f != 0.0f) {
                canvas.drawColor(Theme.multAlpha(-16777216, f));
            }
            updateTranslations();
            canvas.restore();
            drawView(canvas, ((BottomSheetWithRecyclerListView) StarGiftSheet.this).actionBar);
            StarGiftSheet.this.postDrawInternal(canvas, this);
        }

        private void drawView(Canvas canvas, View view) {
            Canvas canvas2;
            if (view == null || view.getVisibility() != 0 || view.getAlpha() <= 0.0f) {
                return;
            }
            if (view.getAlpha() < 1.0f) {
                canvas2 = canvas;
                canvas2.saveLayerAlpha(view.getX(), view.getY(), view.getX() + view.getMeasuredWidth(), view.getY() + view.getMeasuredHeight(), (int) (((BottomSheetWithRecyclerListView) StarGiftSheet.this).actionBar.getAlpha() * 255.0f), 31);
            } else {
                canvas2 = canvas;
                canvas2.save();
                canvas2.clipRect(view.getX(), view.getY(), view.getX() + view.getMeasuredWidth(), view.getY() + ((BottomSheetWithRecyclerListView) StarGiftSheet.this).actionBar.getMeasuredHeight());
            }
            canvas2.translate(view.getX(), view.getY());
            view.draw(canvas2);
            canvas2.restore();
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (view == ((BottomSheetWithRecyclerListView) StarGiftSheet.this).actionBar) {
                return false;
            }
            if (view != StarGiftSheet.this.actionView) {
                canvas.save();
                canvas.clipPath(this.path);
                boolean zDrawChild = super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild;
            }
            return super.drawChild(canvas, view, j);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (StarGiftSheet.this.adapter != null) {
                StarGiftSheet.this.adapter.setHeights(StarGiftSheet.this.topView.getFinalHeight(), StarGiftSheet.this.getBottomHeight() + ((StarGiftSheet.this.currentPage.to(1) && StarGiftSheet.this.underButtonContainer.getVisibility() == 0) ? StarGiftSheet.this.underButtonContainer.getMeasuredHeight() : 0));
            }
            StarGiftSheet.this.onSwitchedPage();
        }

        public void updateTranslations() {
            float pVar = top();
            StarGiftSheet.this.actionView.setTranslationY(pVar - StarGiftSheet.this.actionView.getHeight());
            float fClamp01 = Utilities.clamp01(AndroidUtilities.ilerp(pVar - StarGiftSheet.this.actionView.getHeight(), 0.0f, AndroidUtilities.dp(32.0f)));
            StarGiftSheet.this.actionView.setAlpha(StarGiftSheet.this.currentPage.at(0) * fClamp01);
            StarGiftSheet.this.actionView.setScaleX(AndroidUtilities.lerp(0.5f, 1.0f, fClamp01));
            StarGiftSheet.this.actionView.setScaleY(AndroidUtilities.lerp(0.5f, 1.0f, fClamp01));
            StarGiftSheet.this.topView.setTranslationY(pVar);
            StarGiftSheet.this.infoLayout.setTranslationY(StarGiftSheet.this.topView.getRealHeight() + pVar);
            StarGiftSheet.this.upgradeLayout.setTranslationY(StarGiftSheet.this.topView.getRealHeight() + pVar);
            StarGiftSheet.this.wearLayout.setTranslationY(StarGiftSheet.this.topView.getRealHeight() + pVar);
            StarGiftSheet.this.craftLayout.setTranslationY(pVar + StarGiftSheet.this.topView.getRealHeight());
            FrameLayout frameLayout = StarGiftSheet.this.topBulletinContainer;
            if (frameLayout != null) {
                frameLayout.setTranslationY((getTranslationY() - height()) - AndroidUtilities.navigationBarHeight);
            }
            AndroidUtilities.updateViewVisibilityAnimated(StarGiftSheet.this.buttonShadow, ((BottomSheetWithRecyclerListView) StarGiftSheet.this).recyclerListView.canScrollVertically(1));
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            FrameLayout frameLayout = StarGiftSheet.this.topBulletinContainer;
            if (frameLayout != null) {
                frameLayout.setTranslationY((getTranslationY() - height()) - AndroidUtilities.navigationBarHeight);
            }
        }

        public float height() {
            return StarGiftSheet.this.topView.getRealHeight() + 0.0f + (StarGiftSheet.this.currentPage.at(0) * StarGiftSheet.this.infoLayout.getMeasuredHeight()) + (StarGiftSheet.this.currentPage.at(1) * StarGiftSheet.this.upgradeLayout.getMeasuredHeight()) + (StarGiftSheet.this.currentPage.at(2) * StarGiftSheet.this.wearLayout.getMeasuredHeight()) + (StarGiftSheet.this.currentPage.at(3) * StarGiftSheet.this.craftLayout.getMeasuredHeight());
        }

        public float top() {
            float fMax = Math.max(0.0f, getHeight() - height());
            int childCount = ((BottomSheetWithRecyclerListView) StarGiftSheet.this).recyclerListView.getChildCount() - 1;
            while (true) {
                if (childCount < 0) {
                    break;
                }
                View childAt = ((BottomSheetWithRecyclerListView) StarGiftSheet.this).recyclerListView.getChildAt(childCount);
                int childAdapterPosition = ((BottomSheetWithRecyclerListView) StarGiftSheet.this).recyclerListView.getChildAdapterPosition(childAt);
                if (childAdapterPosition >= 0) {
                    if (childAdapterPosition == 2) {
                        fMax = childAt.getTop() + childAt.getTranslationY() + childAt.getHeight();
                        break;
                    }
                    if (childAdapterPosition == 1) {
                        fMax = childAt.getY();
                        break;
                    }
                    if (childAdapterPosition == 0) {
                        fMax = childAt.getY() - StarGiftSheet.this.topView.getRealHeight();
                        break;
                    }
                }
                childCount--;
            }
            float bottomInset = fMax + (StarGiftSheet.this.getBottomInset() * StarGiftSheet.this.currentPage.at(4));
            return (StarGiftSheet.this.lastTop == null || StarGiftSheet.this.currentPage == null || StarGiftSheet.this.currentPage.progress >= 1.0f) ? bottomInset : AndroidUtilities.lerp(StarGiftSheet.this.lastTop.floatValue(), bottomInset, StarGiftSheet.this.currentPage.progress);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int bottomInset = StarGiftSheet.this.getBottomInset();
            int measuredHeight = 0;
            setPadding(0, 0, 0, bottomInset);
            StarGiftSheet.this.topView.craftTopView.setPadding(0, 0, 0, bottomInset);
            int size = View.MeasureSpec.getSize(i2);
            ((BottomSheetWithRecyclerListView) StarGiftSheet.this).contentHeight = size;
            int size2 = View.MeasureSpec.getSize(i);
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (!(childAt instanceof HintView2)) {
                    if (childAt == ((BottomSheetWithRecyclerListView) StarGiftSheet.this).recyclerListView) {
                        childAt.measure(i, View.MeasureSpec.makeMeasureSpec(size - bottomInset, TLObject.FLAG_30));
                    } else {
                        childAt.measure(i, View.MeasureSpec.makeMeasureSpec((childAt.getLayoutParams() == null || childAt.getLayoutParams().height != -1) ? 9999 : size, Integer.MIN_VALUE));
                    }
                } else {
                    childAt.measure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), TLObject.FLAG_30));
                }
            }
            setMeasuredDimension(size2, size);
            if (StarGiftSheet.this.adapter != null) {
                Adapter adapter = StarGiftSheet.this.adapter;
                int finalHeight = StarGiftSheet.this.topView.getFinalHeight();
                int bottomHeight = StarGiftSheet.this.getBottomHeight();
                if (StarGiftSheet.this.currentPage.to(1) && StarGiftSheet.this.underButtonContainer.getVisibility() == 0) {
                    measuredHeight = StarGiftSheet.this.underButtonContainer.getMeasuredHeight();
                }
                adapter.setHeights(finalHeight, bottomHeight + measuredHeight);
            }
        }
    }

    public static class StickersRollView extends View {

        /* JADX INFO: renamed from: a */
        private Roller.Sticker f1048a;
        private boolean aIsFinish;
        private float aT;

        /* JADX INFO: renamed from: b */
        private Roller.Sticker f1049b;
        private boolean bIsFinish;
        private float bT;
        private Roller.Background bgA;
        private boolean bgAIsFinish;
        private float bgAT;
        private Roller.Background bgB;
        private boolean bgBIsFinish;
        private float bgBT;
        private Roller.Background bgC;
        private boolean bgCIsFinish;
        private float bgCT;

        /* JADX INFO: renamed from: c */
        private Roller.Sticker f1050c;
        private boolean cIsFinish;
        private float cT;
        private final Camera camera;
        private final GradientClip clip;
        private int lastBlurRx;
        private final RectF rect;
        private final Theme.ResourcesProvider resourcesProvider;

        public StickersRollView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.lastBlurRx = 0;
            this.camera = new Camera();
            this.clip = new GradientClip();
            this.rect = new RectF();
            this.resourcesProvider = resourcesProvider;
        }

        @Override // android.view.View
        public void dispatchDraw(Canvas canvas) {
            drawSticker(canvas, this.f1048a, this.aT, this.aIsFinish);
            drawSticker(canvas, this.f1049b, this.bT, this.bIsFinish);
            drawSticker(canvas, this.f1050c, this.cT, this.cIsFinish);
        }

        public void resetDrawing() {
            boolean z = (this.f1048a == null && this.f1049b == null && this.f1050c == null && this.bgA == null && this.bgB == null && this.bgC == null) ? false : true;
            this.f1050c = null;
            this.f1049b = null;
            this.f1048a = null;
            this.cT = 0.0f;
            this.bT = 0.0f;
            this.aT = 0.0f;
            this.cIsFinish = false;
            this.bIsFinish = false;
            this.aIsFinish = false;
            this.bgC = null;
            this.bgB = null;
            this.bgA = null;
            this.bgCT = 0.0f;
            this.bgBT = 0.0f;
            this.bgAT = 0.0f;
            this.bgCIsFinish = false;
            this.bgBIsFinish = false;
            this.bgAIsFinish = false;
            if (z) {
                invalidate();
            }
        }

        public void setDrawing(Roller.Sticker sticker, float f, boolean z, Roller.Sticker sticker2, float f2, boolean z2, Roller.Sticker sticker3, float f3, boolean z3, Roller.Background background, float f4, boolean z4, Roller.Background background2, float f5, boolean z5, Roller.Background background3, float f6, boolean z6) {
            this.f1048a = sticker;
            this.f1049b = sticker2;
            this.f1050c = sticker3;
            this.aT = f;
            this.bT = f2;
            this.cT = f3;
            this.aIsFinish = z;
            this.bIsFinish = z2;
            this.cIsFinish = z3;
            this.bgA = background;
            this.bgB = background2;
            this.bgC = background3;
            this.bgAT = f4;
            this.bgBT = f5;
            this.bgCT = f6;
            this.bgAIsFinish = z4;
            this.bgBIsFinish = z5;
            this.bgCIsFinish = z6;
            invalidate();
        }

        public boolean hasBackgrounds() {
            return (this.bgA == null && this.bgB == null && this.bgC == null) ? false : true;
        }

        private void drawSticker(Canvas canvas, Roller.Sticker sticker, float f, boolean z) {
            if (sticker == null) {
                return;
            }
            float fMax = f;
            if (z) {
                fMax = Math.max(0.5f, fMax);
            }
            float imageX = sticker.imageReceiver.getImageX();
            float imageY = sticker.imageReceiver.getImageY();
            float imageWidth = sticker.imageReceiver.getImageWidth();
            float imageHeight = sticker.imageReceiver.getImageHeight();
            float alpha = sticker.imageReceiver.getAlpha();
            float f2 = (fMax - 0.5f) / 1.5f;
            float fClamp01 = Utilities.clamp01(1.0f - Math.abs(f2));
            float width = (getWidth() / 2.0f) - (AndroidUtilities.dp(220.0f) * f2);
            float fDp = AndroidUtilities.dp(80.0f);
            float fLerp = AndroidUtilities.lerp(0.85f, 1.0f, fClamp01);
            float fDp2 = AndroidUtilities.dp(160.0f);
            canvas.save();
            float f3 = ((fDp2 / 2.0f) * f2) + width;
            canvas.translate(f3, fDp);
            this.camera.save();
            this.camera.rotateY(f2 * (-30.0f));
            this.camera.applyToCanvas(canvas);
            this.camera.restore();
            canvas.translate(-f3, -fDp);
            float f4 = fDp2 * fLerp;
            float f5 = f4 / 2.0f;
            sticker.imageReceiver.setImageCoords(width - f5, fDp - f5, f4, f4);
            sticker.imageReceiver.setAlpha(fClamp01);
            sticker.imageReceiver.draw(canvas);
            sticker.imageReceiver.setImageCoords(imageX, imageY, imageWidth, imageHeight);
            sticker.imageReceiver.setAlpha(alpha);
            canvas.restore();
        }

        private void drawBackground(Canvas canvas, Roller.Background background, float f, float f2, float f3, int[] iArr, int[] iArr2, int[] iArr3) {
            if (background == null || background.backgroundPaint == null) {
                return;
            }
            float f4 = (f - 0.5f) / 1.5f;
            float fClamp01 = Utilities.clamp01(1.0f - Math.abs(f4));
            float fMax = Math.max(0.8f * f2, AndroidUtilities.dp(180.0f));
            float f5 = (f2 / 2.0f) - ((f4 * fMax) * 1.8f);
            float fMin = Math.min(AndroidUtilities.dp(176.0f), f3) / 2.0f;
            float f6 = f5 - fMax;
            float f7 = f5 + fMax;
            canvas.saveLayerAlpha(f6, 0.0f, f7, f3, 255, 31);
            background.backgroundMatrix.reset();
            background.backgroundMatrix.postTranslate(f5, fMin);
            background.backgroundGradient.setLocalMatrix(background.backgroundMatrix);
            background.backgroundPaint.setAlpha((int) (255.0f * fClamp01));
            canvas.drawRect(f6, 0.0f, f7, f3, background.backgroundPaint);
            canvas.save();
            float fDp = AndroidUtilities.dp(90.0f);
            this.rect.set(f6, 0.0f, f6 + fDp, f3);
            this.clip.draw(canvas, this.rect, 0, 1.0f);
            this.rect.set(f7 - fDp, 0.0f, f7, f3);
            this.clip.draw(canvas, this.rect, 2, 1.0f);
            canvas.restore();
            canvas.restore();
            for (int i = 0; i < iArr.length; i++) {
                float width = i * (getWidth() / (iArr.length - 1));
                iArr[i] = Theme.blendOver(iArr[i], Theme.multAlpha(background.textColor, ((width < f6 || width > f7) ? 0.0f : Math.min(Utilities.clamp01((width - f6) / fMax), Utilities.clamp01(1.0f - ((width - (f7 - fMax)) / fMax)))) * fClamp01));
            }
            for (int i2 = 0; i2 < iArr2.length; i2++) {
                float width2 = i2 * (getWidth() / (iArr2.length - 1));
                iArr2[i2] = Theme.blendOver(iArr2[i2], Theme.multAlpha(background.backgroundColor, ((width2 < f6 || width2 > f7) ? 0.0f : Math.min(Utilities.clamp01((width2 - f6) / fMax), Utilities.clamp01(1.0f - ((width2 - (f7 - fMax)) / fMax)))) * fClamp01));
            }
            for (int i3 = 0; i3 < iArr3.length; i3++) {
                float width3 = i3 * (getWidth() / (iArr2.length - 1));
                iArr3[i3] = Theme.blendOver(iArr3[i3], Theme.multAlpha(background.patternColor, ((width3 < f6 || width3 > f7) ? 0.0f : Math.min(Utilities.clamp01((width3 - f6) / fMax), Utilities.clamp01(1.0f - ((width3 - (f7 - fMax)) / fMax)))) * fClamp01));
            }
        }

        public void drawBackgrounds(Canvas canvas, float f, float f2, int[] iArr, int[] iArr2, int[] iArr3) {
            drawBackground(canvas, this.bgA, this.bgAT, f, f2, iArr, iArr2, iArr3);
            drawBackground(canvas, this.bgB, this.bgBT, f, f2, iArr, iArr2, iArr3);
            drawBackground(canvas, this.bgC, this.bgCT, f, f2, iArr, iArr2, iArr3);
        }
    }

    public static class TopView extends FrameLayout {
        private boolean attached;
        private BackupImageView avatarView;
        protected final TL_stars.starGiftAttributeBackdrop[] backdrop;
        private BagRandomizer<TL_stars.starGiftAttributeBackdrop> backdrops;
        protected final int[] backgroundColors;
        private final RadialGradient[] backgroundGradient;
        private final Matrix[] backgroundMatrix;
        private final Paint[] backgroundPaint;
        public final Button[] buttons;
        private final LinearLayout buttonsLayout;
        private final Runnable checkToRotateRunnable;
        private final ImageView closeView;
        private final TextView collectionReleasedView;
        private int collectionReleasedViewColor;
        private CraftTopView craftTopView;
        private final ImageView craftView;
        private int currentImageIndex;
        private PageTransition currentPage;
        private boolean hasLink;
        private boolean hasResellPrice;
        private boolean hasRibbon;
        public final FrameLayout imageLayout;
        private final BackupImageView[] imageView;
        private final TL_stars.starGiftAttributeModel[] imageViewAttributes;
        private final StickersRollView imagesRollView;
        private final LinearLayout[] layout;
        private final FrameLayout.LayoutParams[] layoutLayoutParams;
        private BagRandomizer<TL_stars.starGiftAttributeModel> models;
        private View.OnClickListener onResellClick;
        private View.OnClickListener onShareClick;
        private View.OnClickListener onUpdatePriceClick;
        public final ImageView optionsView;
        private StarsReactionsSheet.Particles particles;
        private final RectF particlesBounds;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] pattern;
        private final TL_stars.starGiftAttributePattern[] patternAttribute;
        private final int[] patternColors;
        private BagRandomizer<TL_stars.starGiftAttributePattern> patterns;
        private RadialGradient profileBackgroundGradient;
        private final Matrix profileBackgroundMatrix;
        private Paint profileBackgroundPaint;
        private final LinkSpanDrawable.LinksTextView releasedView;
        private final TextView resellPriceView;
        private boolean resellPriceViewInProgress;
        private final Theme.ResourcesProvider resourcesProvider;
        private final GiftSheet.Ribbon ribbon;
        private ValueAnimator rotationAnimator;
        private ArrayList<TL_stars.StarGiftAttribute> sampleAttributes;
        private final FrameLayout subtitleContainer;
        private final LinkSpanDrawable.LinksTextView[] subtitleView;
        private final LinearLayout.LayoutParams[] subtitleViewLayoutParams;
        private ValueAnimator switchAnimator;
        private float switchScale;
        private final int[] textColors;
        private final LinkSpanDrawable.LinksTextView[] titleView;
        private float toggleBackdrop;
        private int toggled;
        private FrameLayout userLayout;
        private float wearImageScale;
        private float wearImageTx;
        private float wearImageTy;
        private TLObject wearPreviewObject;

        public void updateButtonsBackgrounds(int i) {
        }

        public static class Button extends FrameLayout {
            public ImageView imageView;
            public TextView textView;

            public Button(Context context) {
                super(context);
                ImageView imageView = new ImageView(context);
                this.imageView = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                addView(this.imageView, LayoutHelper.createFrame(24, 24.0f, 49, 0.0f, 8.0f, 0.0f, 0.0f));
                TextView textView = new TextView(context);
                this.textView = textView;
                textView.setTypeface(AndroidUtilities.bold());
                this.textView.setTextSize(1, 12.0f);
                this.textView.setTextColor(-1);
                this.textView.setGravity(17);
                addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 49, 4.0f, 35.0f, 4.0f, 0.0f));
            }

            public void set(int i, CharSequence charSequence, boolean z) {
                ImageView imageView = this.imageView;
                if (z) {
                    AndroidUtilities.updateImageViewImageAnimated(imageView, i);
                } else {
                    imageView.setImageResource(i);
                }
                this.textView.setText(charSequence);
            }
        }

        public TopView(Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable, View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4, View.OnClickListener onClickListener5, View.OnClickListener onClickListener6, View.OnClickListener onClickListener7) {
            float f;
            float f2;
            int i;
            super(context);
            this.imageView = new BackupImageView[5];
            this.imageViewAttributes = new TL_stars.starGiftAttributeModel[3];
            int i2 = 0;
            this.currentImageIndex = 0;
            this.layout = new LinearLayout[5];
            this.layoutLayoutParams = new FrameLayout.LayoutParams[5];
            this.titleView = new LinkSpanDrawable.LinksTextView[5];
            this.subtitleView = new LinkSpanDrawable.LinksTextView[5];
            this.subtitleViewLayoutParams = new LinearLayout.LayoutParams[5];
            this.currentPage = new PageTransition(0, 0, 1.0f);
            this.backdrop = new TL_stars.starGiftAttributeBackdrop[3];
            this.checkToRotateRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$TopView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$3();
                }
            };
            this.backgroundPaint = new Paint[3];
            this.backgroundGradient = new RadialGradient[3];
            this.backgroundMatrix = new Matrix[3];
            this.profileBackgroundMatrix = new Matrix();
            this.profileBackgroundPaint = new Paint(1);
            this.patternAttribute = new TL_stars.starGiftAttributePattern[2];
            this.pattern = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[2];
            int i3 = 0;
            while (true) {
                Paint[] paintArr = this.backgroundPaint;
                if (i3 >= paintArr.length) {
                    break;
                }
                paintArr[i3] = new Paint(1);
                i3++;
            }
            int i4 = 0;
            while (true) {
                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.pattern;
                f = 28.0f;
                if (i4 >= swapAnimatedEmojiDrawableArr.length) {
                    break;
                }
                swapAnimatedEmojiDrawableArr[i4] = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(28.0f));
                i4++;
            }
            this.switchScale = 1.0f;
            this.particlesBounds = new RectF();
            this.backgroundColors = new int[12];
            this.textColors = new int[12];
            this.patternColors = new int[12];
            this.resourcesProvider = resourcesProvider;
            this.onShareClick = onClickListener5;
            this.onResellClick = onClickListener6;
            this.onUpdatePriceClick = onClickListener7;
            setWillNotDraw(false);
            this.imageLayout = new FrameLayout(context);
            int i5 = 0;
            while (true) {
                BackupImageView[] backupImageViewArr = this.imageView;
                float f3 = 0.0f;
                f2 = f;
                if (i5 >= backupImageViewArr.length) {
                    break;
                }
                backupImageViewArr[i5] = new BackupImageView(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.1
                    @Override // android.view.View
                    public void setAlpha(float f4) {
                        super.setAlpha(f4);
                        setVisibility(f4 > 0.0f ? 0 : 4);
                    }
                };
                this.imageView[i5].setLayerNum(6660);
                if (i5 > 0) {
                    this.imageView[i5].getImageReceiver().setCrossfadeDuration(1);
                }
                this.imageLayout.addView(this.imageView[i5], LayoutHelper.createFrame(-1, -1, 119));
                BackupImageView backupImageView = this.imageView[i5];
                if (i5 == this.currentImageIndex) {
                    f3 = 1.0f;
                }
                backupImageView.setAlpha(f3);
                i5++;
                f = f2;
            }
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            this.releasedView = linksTextView;
            linksTextView.setTextSize(1, 12.0f);
            linksTextView.setGravity(17);
            linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
            linksTextView.setPadding(AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f), 0);
            TextView textView = new TextView(context);
            this.collectionReleasedView = textView;
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$TopView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            ScaleStateListAnimator.apply(textView, 0.05f, 1.25f);
            textView.setTextSize(1, 13.0f);
            textView.setGravity(17);
            textView.setLinkTextColor(-1);
            textView.setPadding(AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f), 0);
            TextView textView2 = new TextView(context);
            this.resellPriceView = textView2;
            textView2.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
            textView2.setTextSize(1, 13.0f);
            textView2.setTextColor(-1);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setAlpha(0.0f);
            textView2.setScaleX(0.4f);
            textView2.setScaleY(0.4f);
            textView2.setVisibility(8);
            textView2.setGravity(17);
            ScaleStateListAnimator.apply(textView2);
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.2
                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (TopView.this.currentPage.is(0)) {
                        return super.dispatchTouchEvent(motionEvent);
                    }
                    return false;
                }
            };
            this.buttonsLayout = linearLayout;
            linearLayout.setOrientation(0);
            this.buttons = new Button[3];
            int i6 = 0;
            while (true) {
                Button[] buttonArr = this.buttons;
                if (i6 >= buttonArr.length) {
                    break;
                }
                buttonArr[i6] = new Button(context);
                if (i6 == 0) {
                    this.buttons[i6].set(C2573R.drawable.filled_gift_transfer, LocaleController.getString(C2573R.string.Gift2ActionTransfer), false);
                    this.buttons[i6].setOnClickListener(onClickListener3);
                } else if (i6 == 1) {
                    this.buttons[i6].set(C2573R.drawable.filled_crown_on, LocaleController.getString(C2573R.string.Gift2ActionWear), false);
                    this.buttons[i6].setOnClickListener(onClickListener4);
                } else if (i6 == 2) {
                    this.buttons[i6].set(C2573R.drawable.filled_share, LocaleController.getString(C2573R.string.Gift2ActionShare), false);
                    this.buttons[i6].setOnClickListener(onClickListener5);
                }
                this.buttons[i6].setBackground(Theme.createRadSelectorDrawable(0, 285212671, 16, 16));
                ScaleStateListAnimator.apply(this.buttons[i6], 0.075f, 1.5f);
                LinearLayout linearLayout2 = this.buttonsLayout;
                Button[] buttonArr2 = this.buttons;
                linearLayout2.addView(buttonArr2[i6], LayoutHelper.createLinear(0, 56, 1.0f, 119, 0, 0, i6 != buttonArr2.length - 1 ? 11 : 0, 0));
                i6++;
            }
            this.subtitleContainer = new FrameLayout(context);
            int i7 = 0;
            while (true) {
                LinearLayout[] linearLayoutArr = this.layout;
                if (i7 >= linearLayoutArr.length) {
                    break;
                }
                linearLayoutArr[i7] = new LinearLayout(context);
                this.layout[i7].setOrientation(1);
                if (i7 == 2) {
                    FrameLayout frameLayout = new FrameLayout(context);
                    this.userLayout = frameLayout;
                    i = i2;
                    this.layout[i7].addView(frameLayout, LayoutHelper.createLinear(-1, 144, 119));
                    BackupImageView backupImageView2 = new BackupImageView(context);
                    this.avatarView = backupImageView2;
                    backupImageView2.setRoundRadius(AndroidUtilities.dp(41.0f));
                    this.userLayout.addView(this.avatarView, LayoutHelper.createFrame(82, 82.0f, 49, 0.0f, 2.0f, 0.0f, 0.0f));
                    this.titleView[i7] = new LinkSpanDrawable.LinksTextView(context);
                    this.titleView[i7].setTextColor(-1);
                    this.titleView[i7].setTextSize(1, 20.0f);
                    this.titleView[i7].setTypeface(AndroidUtilities.bold());
                    this.titleView[i7].setSingleLine();
                    LinkSpanDrawable.LinksTextView linksTextView2 = this.titleView[i7];
                    TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                    linksTextView2.setEllipsize(truncateAt);
                    this.titleView[i7].setGravity(17);
                    this.userLayout.addView(this.titleView[i7], LayoutHelper.createFrame(-1, -2.0f, 49, 16.0f, 95.33f, 16.0f, 0.0f));
                    this.subtitleView[i7] = new LinkSpanDrawable.LinksTextView(context);
                    this.subtitleView[i7].setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                    this.subtitleView[i7].setTextSize(1, 14.0f);
                    this.subtitleView[i7].setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                    this.subtitleView[i7].setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                    this.subtitleView[i7].setDisablePaddingsOffsetY(true);
                    this.subtitleView[i7].setSingleLine();
                    this.subtitleView[i7].setGravity(17);
                    this.subtitleView[i7].setEllipsize(truncateAt);
                    this.userLayout.addView(this.subtitleView[i7], LayoutHelper.createFrame(-1, -2.0f, 49, 16.0f, 122.0f, 16.0f, 0.0f));
                } else {
                    i = i2;
                    if (i7 == 4) {
                        CraftTopView craftTopView = new CraftTopView(context, resourcesProvider);
                        this.craftTopView = craftTopView;
                        this.layout[i7].addView(craftTopView, LayoutHelper.createLinear(-1, -2));
                        View view = this.layout[i7];
                        FrameLayout.LayoutParams[] layoutParamsArr = this.layoutLayoutParams;
                        ViewGroup.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -2.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f);
                        layoutParamsArr[i7] = layoutParamsCreateFrame;
                        addView(view, layoutParamsCreateFrame);
                        i7++;
                        i2 = i;
                    } else {
                        this.titleView[i7] = new LinkSpanDrawable.LinksTextView(context);
                        this.titleView[i7].setTextColor(i7 == 3 ? -1 : Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                        this.titleView[i7].setTextSize(1, 20.0f);
                        this.titleView[i7].setTypeface(AndroidUtilities.bold());
                        this.titleView[i7].setGravity(17);
                        this.layout[i7].addView(this.titleView[i7], LayoutHelper.createLinear(-1, -2, 17, 24, i7 == 3 ? 10 : i, 24, 0));
                        if (i7 == 0) {
                            this.layout[i7].addView(this.releasedView, LayoutHelper.createLinear(-2, -2, 17, 0, 4, 0, 4));
                            this.layout[i7].addView(this.collectionReleasedView, LayoutHelper.createLinear(-2, 19.33f, 17, 0, 6, 0, 2));
                        }
                        LinkSpanDrawable.LinksTextView[] linksTextViewArr = this.subtitleView;
                        if (i7 == 0) {
                            linksTextViewArr[i7] = new LinkSpanDrawable.LinksTextView(context);
                            this.subtitleView[i7].setTextColor(i7 == 3 ? Theme.multAlpha(-1, 0.75f) : Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                            this.subtitleView[i7].setTextSize(1, 14.0f);
                            this.subtitleView[i7].setGravity(17);
                            this.subtitleView[i7].setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                            this.subtitleView[i7].setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                            this.subtitleView[i7].setDisablePaddingsOffsetY(true);
                            this.subtitleContainer.addView(this.subtitleView[i7], LayoutHelper.createFrame(-2, -2, 17));
                            this.subtitleContainer.addView(this.resellPriceView, LayoutHelper.createFrame(-2.0f, 20.33f, 17));
                            LinearLayout linearLayout3 = this.layout[i7];
                            FrameLayout frameLayout2 = this.subtitleContainer;
                            LinearLayout.LayoutParams[] layoutParamsArr2 = this.subtitleViewLayoutParams;
                            LinearLayout.LayoutParams layoutParamsCreateLinear = LayoutHelper.createLinear(-1, -2, 17, 24, 0, 24, i7 == 3 ? 6 : i);
                            layoutParamsArr2[i7] = layoutParamsCreateLinear;
                            linearLayout3.addView(frameLayout2, layoutParamsCreateLinear);
                        } else {
                            linksTextViewArr[i7] = new LinkSpanDrawable.LinksTextView(context);
                            this.subtitleView[i7].setTextColor(i7 == 3 ? Theme.multAlpha(-1, 0.75f) : Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
                            this.subtitleView[i7].setTextSize(1, 14.0f);
                            this.subtitleView[i7].setGravity(17);
                            this.subtitleView[i7].setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
                            this.subtitleView[i7].setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
                            this.subtitleView[i7].setDisablePaddingsOffsetY(true);
                            LinearLayout linearLayout4 = this.layout[i7];
                            LinkSpanDrawable.LinksTextView linksTextView3 = this.subtitleView[i7];
                            LinearLayout.LayoutParams[] layoutParamsArr3 = this.subtitleViewLayoutParams;
                            LinearLayout.LayoutParams layoutParamsCreateLinear2 = LayoutHelper.createLinear(-1, -2, 17, 24, 0, 24, i7 == 3 ? 6 : i);
                            layoutParamsArr3[i7] = layoutParamsCreateLinear2;
                            linearLayout4.addView(linksTextView3, layoutParamsCreateLinear2);
                        }
                        this.subtitleViewLayoutParams[i7].topMargin = AndroidUtilities.dp(i7 == 3 ? 6.0f : i7 == 1 ? 7.33f : this.backdrop[i] == null ? 9.0f : 5.66f);
                    }
                }
                if (i7 == 0) {
                    this.layout[i7].addView(this.buttonsLayout, LayoutHelper.createLinear(-1, -2, 7, 0, 15, 0, 0));
                }
                View view2 = this.layout[i7];
                FrameLayout.LayoutParams[] layoutParamsArr4 = this.layoutLayoutParams;
                ViewGroup.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, -2.0f, 119, 16.0f, i7 == 2 ? 32.0f : 170.0f, 16.0f, 0.0f);
                layoutParamsArr4[i7] = layoutParamsCreateFrame2;
                addView(view2, layoutParamsCreateFrame2);
                i7++;
                i2 = i;
            }
            addView(this.imageLayout, LayoutHelper.createFrame(160, 160.0f, 49, 0.0f, 8.0f, 0.0f, 0.0f));
            StickersRollView stickersRollView = new StickersRollView(context, resourcesProvider);
            this.imagesRollView = stickersRollView;
            addView(stickersRollView, LayoutHelper.createFrame(-1, 160.0f, 55, 0.0f, 8.0f, 0.0f, 0.0f));
            ImageView imageView = new ImageView(context);
            this.closeView = imageView;
            imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(f2), 620756991));
            imageView.setImageResource(C2573R.drawable.msg_close);
            ScaleStateListAnimator.apply(imageView);
            addView(imageView, LayoutHelper.createFrame(28, 28.0f, 53, 0.0f, 12.0f, 12.0f, 0.0f));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$TopView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    runnable.run();
                }
            });
            imageView.setVisibility(8);
            ImageView imageView2 = new ImageView(context);
            this.craftView = imageView2;
            imageView2.setImageResource(C2573R.drawable.filled_forge);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView2.setScaleType(scaleType);
            imageView2.setBackground(Theme.createSelectorDrawable(553648127, 1));
            ScaleStateListAnimator.apply(imageView2);
            if (onClickListener2 != null) {
                addView(imageView2, LayoutHelper.createFrame(42, 42.0f, 53, 0.0f, 5.0f, 47.0f, 0.0f));
                imageView2.setOnClickListener(onClickListener2);
            }
            imageView2.setVisibility(8);
            ImageView imageView3 = new ImageView(context);
            this.optionsView = imageView3;
            imageView3.setContentDescription(LocaleController.getString(C2573R.string.AccDescrGoBack));
            imageView3.setImageResource(C2573R.drawable.media_more);
            imageView3.setScaleType(scaleType);
            imageView3.setBackground(Theme.createSelectorDrawable(553648127, 1));
            ScaleStateListAnimator.apply(imageView3);
            addView(imageView3, LayoutHelper.createFrame(42, 42.0f, 53, 0.0f, 5.0f, 5.0f, 0.0f));
            imageView3.setOnClickListener(onClickListener);
            imageView3.setVisibility(8);
            GiftSheet.Ribbon ribbon = new GiftSheet.Ribbon(context);
            this.ribbon = ribbon;
            ribbon.setText(LocaleController.getString(C2573R.string.GiftCrafted), true);
            ribbon.drawable.setParticles(true);
            ribbon.drawable.setLeft(true);
            ribbon.setScaleX(1.2f);
            ribbon.setScaleY(1.2f);
            addView(ribbon, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
            ribbon.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            CharSequence text = this.collectionReleasedView.getText();
            if (text instanceof Spanned) {
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class);
                if (clickableSpanArr.length > 0) {
                    clickableSpanArr[0].onClick(view);
                }
            }
        }

        public void setText(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
            this.titleView[i].setText(charSequence);
            if (i == 0 && !TextUtils.isEmpty(charSequence3)) {
                this.collectionReleasedView.setText(charSequence3);
                this.collectionReleasedView.setVisibility(0);
                this.releasedView.setVisibility(8);
                if (i == 0) {
                    this.subtitleContainer.setVisibility(8);
                    return;
                } else {
                    this.subtitleView[i].setVisibility(8);
                    return;
                }
            }
            if (i == 0 && !TextUtils.isEmpty(charSequence4)) {
                this.releasedView.setText(charSequence4);
                this.releasedView.setVisibility(0);
                this.collectionReleasedView.setVisibility(8);
                if (i == 0) {
                    this.subtitleContainer.setVisibility(8);
                    return;
                } else {
                    this.subtitleView[i].setVisibility(8);
                    return;
                }
            }
            this.subtitleView[i].setText(charSequence2);
            if (i == 0) {
                this.subtitleContainer.setVisibility(TextUtils.isEmpty(charSequence2) ? 8 : 0);
            } else {
                this.subtitleView[i].setVisibility(TextUtils.isEmpty(charSequence2) ? 8 : 0);
            }
            this.releasedView.setVisibility(8);
            this.collectionReleasedView.setVisibility(8);
        }

        public void onSwitchPage(PageTransition pageTransition) {
            float fAt;
            int iBlendARGB;
            boolean z;
            this.currentPage = pageTransition;
            int i = 0;
            while (true) {
                int i2 = 4;
                if (i >= this.layout.length) {
                    break;
                }
                float fAt2 = pageTransition.at(i);
                this.layout[i].setAlpha(fAt2);
                LinearLayout linearLayout = this.layout[i];
                if (fAt2 > 0.0f) {
                    i2 = 0;
                }
                linearLayout.setVisibility(i2);
                i++;
            }
            this.closeView.setAlpha(Math.max(this.backdrop[0] != null ? pageTransition.at(2) : 0.0f, this.backdrop[1] != null ? pageTransition.at(1) : 0.0f));
            ImageView imageView = this.closeView;
            TL_stars.starGiftAttributeBackdrop[] stargiftattributebackdropArr = this.backdrop;
            imageView.setVisibility(((stargiftattributebackdropArr[0] == null || pageTransition.to != 2) && (stargiftattributebackdropArr[1] == null || pageTransition.to != 1)) ? 8 : 0);
            this.optionsView.setAlpha(AndroidUtilities.lerp(false, this.backdrop[0] != null, pageTransition.at(0)));
            this.optionsView.setVisibility((this.backdrop[0] == null || pageTransition.to != 0) ? 8 : 0);
            if (!this.resellPriceViewInProgress) {
                this.resellPriceView.setAlpha(AndroidUtilities.lerp(false, this.hasResellPrice, pageTransition.at(0)));
                this.resellPriceView.setScaleX(AndroidUtilities.lerp(0.4f, this.hasResellPrice ? 1.0f : 0.4f, pageTransition.at(0)));
                this.resellPriceView.setScaleY(AndroidUtilities.lerp(0.4f, this.hasResellPrice ? 1.0f : 0.4f, pageTransition.at(0)));
                this.resellPriceView.setVisibility((this.hasResellPrice && pageTransition.to == 0) ? 0 : 4);
            }
            int color = Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider);
            int i3 = 0;
            while (i3 < 2) {
                this.titleView[i3].setTextColor(this.backdrop[Math.min(1, i3)] == null ? color : -1);
                LinkSpanDrawable.LinksTextView linksTextView = this.subtitleView[i3];
                if (i3 == 0 || i3 == 2) {
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = this.backdrop[i3];
                    iBlendARGB = stargiftattributebackdrop == null ? color : (-16777216) | stargiftattributebackdrop.text_color;
                } else {
                    TL_stars.starGiftAttributeBackdrop[] stargiftattributebackdropArr2 = this.backdrop;
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop2 = stargiftattributebackdropArr2[1];
                    int i4 = stargiftattributebackdrop2 == null ? color : stargiftattributebackdrop2.text_color | (-16777216);
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop3 = stargiftattributebackdropArr2[2];
                    iBlendARGB = ColorUtils.blendARGB(i4, stargiftattributebackdrop3 == null ? color : (-16777216) | stargiftattributebackdrop3.text_color, this.toggleBackdrop);
                }
                linksTextView.setTextColor(iBlendARGB);
                if (this.backdrop[i3] != null) {
                    z = (AndroidUtilities.dp(184.0f) == this.layoutLayoutParams[i3].topMargin && this.layout[i3].getPaddingBottom() == AndroidUtilities.dp(18.0f)) ? false : true;
                    if (z) {
                        this.layout[i3].setPadding(0, 0, 0, AndroidUtilities.dp(18.0f));
                        this.layoutLayoutParams[i3].topMargin = AndroidUtilities.dp(184.0f);
                    }
                } else {
                    z = (AndroidUtilities.dp(170.0f) == this.layoutLayoutParams[i3].topMargin && this.layout[i3].getPaddingBottom() == AndroidUtilities.dp(3.0f)) ? false : true;
                    if (z) {
                        this.layout[i3].setPadding(0, 0, 0, AndroidUtilities.dp(3.0f));
                        this.layoutLayoutParams[i3].topMargin = AndroidUtilities.dp(170.0f);
                    }
                }
                this.subtitleViewLayoutParams[i3].topMargin = AndroidUtilities.dp(i3 == 1 ? 7.33f : this.backdrop[0] == null ? 9.0f : 5.66f);
                if (z) {
                    this.layout[i3].setLayoutParams(this.layoutLayoutParams[i3]);
                    if (i3 == 0) {
                        this.subtitleContainer.setLayoutParams(this.subtitleViewLayoutParams[i3]);
                    } else {
                        this.subtitleView[i3].setLayoutParams(this.subtitleViewLayoutParams[i3]);
                    }
                }
                i3++;
            }
            TextView textView = this.collectionReleasedView;
            int iDp = AndroidUtilities.dp(24.0f);
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop4 = this.backdrop[0];
            textView.setBackground(Theme.createRoundRectDrawable(iDp, stargiftattributebackdrop4 == null ? 553648127 : ColorUtils.blendARGB(stargiftattributebackdrop4.edge_color | (-16777216), stargiftattributebackdrop4.pattern_color | (-16777216), 0.25f)));
            LinkSpanDrawable.LinksTextView linksTextView2 = this.subtitleView[2];
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop5 = this.backdrop[0];
            if (stargiftattributebackdrop5 != null) {
                color = stargiftattributebackdrop5.text_color | (-16777216);
            }
            linksTextView2.setTextColor(color);
            this.imageView[0].setAlpha(Math.max(this.currentPage.at(0, 2), this.currentPage.at(3)));
            this.imageView[1].setAlpha(pageTransition.at(1) * (1.0f - this.toggleBackdrop));
            this.imageView[2].setAlpha(pageTransition.at(1) * this.toggleBackdrop);
            this.imageLayout.setScaleX(AndroidUtilities.lerp(1.0f, this.wearImageScale, pageTransition.at(2)));
            this.imageLayout.setScaleY(AndroidUtilities.lerp(1.0f, this.wearImageScale, pageTransition.at(2)));
            this.imageLayout.setTranslationX(this.wearImageTx * pageTransition.at(2));
            this.imageLayout.setTranslationY((AndroidUtilities.dp(16.0f) * pageTransition.at(1)) + (this.wearImageTy * pageTransition.at(2)));
            LinearLayout linearLayout2 = this.layout[2];
            int i5 = pageTransition.from;
            if (i5 == 2 && pageTransition.to == 2) {
                fAt = 0.0f;
            } else {
                if (i5 == 2) {
                    i5 = pageTransition.to;
                }
                fAt = (-(r1[i5].getMeasuredHeight() - this.layout[2].getMeasuredHeight())) * (1.0f - pageTransition.at(2));
            }
            linearLayout2.setTranslationY(fAt);
            this.ribbon.setVisibility((this.hasRibbon && this.currentPage.contains(0)) ? 0 : 8);
            this.ribbon.setAlpha(this.currentPage.at(0));
            this.craftTopView.setVisibility(pageTransition.at(4) <= 0.0f ? 8 : 0);
            this.craftTopView.setAlpha(pageTransition.at(4));
            invalidate();
        }

        public void hideCloseButton() {
            removeView(this.closeView);
        }

        public void prepareSwitchPage(PageTransition pageTransition) {
            int i = pageTransition.from;
            if (i != pageTransition.to) {
                RLottieDrawable lottieAnimation = this.imageView[i].getImageReceiver().getLottieAnimation();
                RLottieDrawable lottieAnimation2 = this.imageView[pageTransition.to].getImageReceiver().getLottieAnimation();
                if (lottieAnimation2 == null || lottieAnimation == null) {
                    return;
                }
                lottieAnimation2.setProgress(lottieAnimation.getProgress(), false);
            }
        }

        public void setGift(TL_stars.StarGift starGift, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            this.hasResellPrice = false;
            boolean z6 = z || z2;
            boolean z7 = starGift instanceof TL_stars.TL_starGiftUnique;
            TL_stars.starGiftAttributeBackdrop[] stargiftattributebackdropArr = this.backdrop;
            if (z7) {
                stargiftattributebackdropArr[0] = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeBackdrop.class);
                setPattern(0, (TL_stars.starGiftAttributePattern) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributePattern.class), false);
                this.subtitleView[0].setTextSize(1, 13.0f);
                this.buttonsLayout.setVisibility(z6 ? 0 : 8);
                if (z6) {
                    this.buttons[1].set(z3 ? C2573R.drawable.filled_crown_off : C2573R.drawable.filled_crown_on, LocaleController.getString(z3 ? C2573R.string.Gift2ActionWearOff : C2573R.string.Gift2ActionWear), false);
                }
                float f = 1.0f;
                if (starGift.resell_amount != null) {
                    this.hasResellPrice = true;
                    AmountUtils$Amount resellAmount = starGift.getResellAmount(starGift.resale_ton_only ? AmountUtils$Currency.TON : AmountUtils$Currency.STARS);
                    this.resellPriceView.setText(LocaleController.formatSpannable(C2573R.string.GiftOnSale, StarsIntroActivity.replaceStars(resellAmount.currency == AmountUtils$Currency.TON, "⭐️ " + ((Object) StarsIntroActivity.formatStarsAmount(resellAmount.toTl(), 1.0f, ','))), Float.valueOf(0.9f)));
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = this.backdrop[0];
                    this.resellPriceView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(12.0f), ColorUtils.blendARGB(stargiftattributebackdrop.edge_color | (-16777216), stargiftattributebackdrop.pattern_color | (-16777216), 0.25f)));
                    boolean zIsMine = StarGiftSheet.isMine(UserConfig.selectedAccount, DialogObject.getPeerDialogId(starGift.owner_id));
                    TextView textView = this.resellPriceView;
                    if (zIsMine) {
                        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$TopView$$ExternalSyntheticLambda4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$setGift$2(view);
                            }
                        });
                        ScaleStateListAnimator.apply(this.resellPriceView);
                    } else {
                        textView.setOnClickListener(null);
                        ScaleStateListAnimator.reset(this.resellPriceView);
                    }
                }
                Button[] buttonArr = this.buttons;
                if (z) {
                    buttonArr[0].setAlpha(1.0f);
                    this.buttons[0].set(C2573R.drawable.filled_gift_transfer, LocaleController.getString(C2573R.string.Gift2ActionTransfer), false);
                } else {
                    buttonArr[0].setAlpha(0.5f);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("L ");
                    spannableStringBuilder.setSpan(new ColoredImageSpan(C2573R.drawable.msg_mini_lock2), 0, 1, 33);
                    spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.Gift2ActionTransfer));
                    this.buttons[0].set(C2573R.drawable.filled_gift_transfer, spannableStringBuilder, false);
                }
                Button button = this.buttons[1];
                if (!z && !z2) {
                    f = 0.5f;
                }
                button.setAlpha(f);
                if (z) {
                    ArrayList<TL_stars.StarsAmount> arrayList = starGift.resell_amount;
                    Button[] buttonArr2 = this.buttons;
                    if (arrayList != null) {
                        buttonArr2[2].set(C2573R.drawable.filled_gift_sell_off, LocaleController.getString(C2573R.string.Gift2ActionUnlist), false);
                        this.buttons[2].setOnClickListener(this.onResellClick);
                    } else {
                        buttonArr2[2].set(C2573R.drawable.filled_gift_sell_on, LocaleController.getString(C2573R.string.Gift2ActionResell), false);
                        this.buttons[2].setOnClickListener(this.onResellClick);
                    }
                } else {
                    this.buttons[2].set(C2573R.drawable.filled_share, LocaleController.getString(C2573R.string.Gift2ActionShare), false);
                    this.buttons[2].setOnClickListener(this.onShareClick);
                }
                this.hasRibbon = starGift.crafted;
                this.ribbon.drawable.setBackdrop(this.backdrop[0], false, true);
            } else {
                stargiftattributebackdropArr[0] = null;
                setPattern(0, null, false);
                this.subtitleView[0].setTextSize(1, 14.0f);
                this.hasRibbon = false;
                this.buttonsLayout.setVisibility(8);
            }
            this.hasLink = z4;
            setBackdropPaint(0, this.backdrop[0]);
            StarsIntroActivity.setGiftImage(this.imageView[0].getImageReceiver(), starGift, 160);
            this.imageViewAttributes[0] = (TL_stars.starGiftAttributeModel) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeModel.class);
            onSwitchPage(this.currentPage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setGift$2(View view) {
            View.OnClickListener onClickListener;
            if (this.resellPriceView.getVisibility() == 0 && (onClickListener = this.onUpdatePriceClick) != null) {
                onClickListener.onClick(view);
            }
        }

        public BackupImageView getUpgradeImageView() {
            float f = this.toggleBackdrop;
            BackupImageView[] backupImageViewArr = this.imageView;
            return f > 0.5f ? backupImageViewArr[2] : backupImageViewArr[1];
        }

        public TL_stars.starGiftAttributeModel getUpgradeImageViewAttribute() {
            float f = this.toggleBackdrop;
            TL_stars.starGiftAttributeModel[] stargiftattributemodelArr = this.imageViewAttributes;
            return f > 0.5f ? stargiftattributemodelArr[2] : stargiftattributemodelArr[1];
        }

        public TL_stars.starGiftAttributeBackdrop getUpgradeBackdropAttribute() {
            float f = this.toggleBackdrop;
            TL_stars.starGiftAttributeBackdrop[] stargiftattributebackdropArr = this.backdrop;
            return f > 0.5f ? stargiftattributebackdropArr[2] : stargiftattributebackdropArr[1];
        }

        public TL_stars.starGiftAttributePattern getUpgradePatternAttribute() {
            return this.patternAttribute[1];
        }

        public void setResellPrice(AmountUtils$Amount amountUtils$Amount) {
            boolean zIsZero = amountUtils$Amount.isZero();
            this.hasResellPrice = !zIsZero;
            TextView textView = this.resellPriceView;
            if (!zIsZero) {
                textView.setText(LocaleController.formatSpannable(C2573R.string.GiftOnSale, StarsIntroActivity.replaceStars(amountUtils$Amount.currency == AmountUtils$Currency.TON, "⭐️ " + ((Object) StarsIntroActivity.formatStarsAmount(amountUtils$Amount.toTl(), 1.0f, ',')), 0.9f)));
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = this.backdrop[0];
                this.resellPriceView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(12.0f), ColorUtils.blendARGB(stargiftattributebackdrop.edge_color | (-16777216), stargiftattributebackdrop.pattern_color | (-16777216), 0.25f)));
                this.resellPriceView.setVisibility(0);
                this.resellPriceViewInProgress = true;
                ViewPropertyAnimator duration = this.resellPriceView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(420L);
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                duration.setInterpolator(cubicBezierInterpolator).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TopView.this.resellPriceViewInProgress = false;
                    }
                }).start();
                this.subtitleView[0].animate().alpha(0.0f).setDuration(420L).setInterpolator(cubicBezierInterpolator).start();
            } else {
                ViewPropertyAnimator duration2 = textView.animate().scaleX(0.4f).scaleY(0.4f).alpha(0.0f).setDuration(420L);
                CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_OUT_QUINT;
                duration2.setInterpolator(cubicBezierInterpolator2).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TopView.this.resellPriceView.setVisibility(4);
                    }
                }).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TopView.this.resellPriceViewInProgress = false;
                    }
                }).start();
                this.subtitleView[0].animate().alpha(1.0f).setDuration(420L).setInterpolator(cubicBezierInterpolator2).start();
            }
            boolean z = this.hasResellPrice;
            Button[] buttonArr = this.buttons;
            if (z) {
                buttonArr[2].set(C2573R.drawable.filled_gift_sell_off, LocaleController.getString(C2573R.string.Gift2ActionUnlist), true);
            } else {
                buttonArr[2].set(C2573R.drawable.filled_gift_sell_on, LocaleController.getString(C2573R.string.Gift2ActionResell), true);
            }
            this.buttons[2].setOnClickListener(this.onResellClick);
        }

        public void setPreviewingAttributes(ArrayList<TL_stars.StarGiftAttribute> arrayList) {
            this.sampleAttributes = arrayList;
            this.models = new BagRandomizer<>(StarsController.findAttributes(arrayList, TL_stars.starGiftAttributeModel.class));
            this.patterns = new BagRandomizer<>(StarsController.findAttributes(arrayList, TL_stars.starGiftAttributePattern.class));
            this.backdrops = new BagRandomizer<>(StarsController.findAttributes(arrayList, TL_stars.starGiftAttributeBackdrop.class));
            this.subtitleView[1].setTextSize(1, 14.0f);
            this.buttonsLayout.setVisibility(8);
            this.toggleBackdrop = 0.0f;
            this.toggled = 0;
            setPattern(1, this.patterns.next(), true);
            this.imageViewAttributes[1] = this.models.next();
            StarsIntroActivity.setGiftImage(this.imageView[1].getImageReceiver(), this.imageViewAttributes[1].document, 160);
            TL_stars.starGiftAttributeBackdrop[] stargiftattributebackdropArr = this.backdrop;
            TL_stars.starGiftAttributeBackdrop next = this.backdrops.next();
            stargiftattributebackdropArr[1] = next;
            setBackdropPaint(1, next);
            this.imageViewAttributes[2] = this.models.getNext();
            StarsIntroActivity.setGiftImage(this.imageView[2].getImageReceiver(), this.imageViewAttributes[2].document, 160);
            AndroidUtilities.cancelRunOnUIThread(this.checkToRotateRunnable);
            AndroidUtilities.runOnUIThread(this.checkToRotateRunnable, 2500L);
            invalidate();
        }

        public void setWearPreview(TLObject tLObject) {
            String lowerCase;
            String string;
            String userName;
            this.wearPreviewObject = tLObject;
            if (tLObject instanceof TLRPC.User) {
                userName = UserObject.getUserName((TLRPC.User) tLObject);
                string = LocaleController.getString(C2573R.string.Online);
            } else {
                if (!(tLObject instanceof TLRPC.Chat)) {
                    return;
                }
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                String str = chat.title;
                boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
                int i = chat.participants_count;
                if (zIsChannelAndNotMegaGroup) {
                    if (i > 1) {
                        lowerCase = LocaleController.formatPluralStringComma("Subscribers", i);
                    } else {
                        lowerCase = LocaleController.getString(C2573R.string.DiscussChannel);
                    }
                } else if (i > 1) {
                    lowerCase = LocaleController.formatPluralStringComma("Members", i);
                } else {
                    lowerCase = LocaleController.getString(C2573R.string.AccDescrGroup).toLowerCase();
                }
                string = lowerCase;
                userName = str;
            }
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(tLObject);
            this.avatarView.setForUserOrChat(tLObject, avatarDrawable);
            this.titleView[2].setText(userName);
            this.subtitleView[2].setText(string);
            updateWearImageTranslation();
            onSwitchPage(this.currentPage);
        }

        private void updateWearImageTranslation() {
            this.wearImageScale = AndroidUtilities.dpf2(33.33f) / AndroidUtilities.dpf2(160.0f);
            this.wearImageTx = ((((-this.imageLayout.getLeft()) + this.titleView[2].getX()) + ((this.titleView[2].getWidth() + Math.min(this.titleView[2].getPaint().measureText(this.titleView[2].getText().toString()), this.titleView[2].getWidth())) / 2.0f)) + AndroidUtilities.dp(24.0f)) - (AndroidUtilities.dp(126.67f) / 2.0f);
            this.wearImageTy = ((-this.imageLayout.getTop()) + AndroidUtilities.dp(124.0f)) - (AndroidUtilities.dp(126.67f) / 2.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3() {
            if (this.imageView[2 - this.toggled].getImageReceiver().hasImageLoaded()) {
                rotateAttributes();
            } else {
                AndroidUtilities.cancelRunOnUIThread(this.checkToRotateRunnable);
                AndroidUtilities.runOnUIThread(this.checkToRotateRunnable, 150L);
            }
        }

        public void setPreviewAttributes(StarGiftPreviewSheet.Attributes attributes) {
            PageTransition pageTransition = this.currentPage;
            if (pageTransition != null && pageTransition.to == 1 && isAttachedToWindow()) {
                AndroidUtilities.cancelRunOnUIThread(this.checkToRotateRunnable);
                ValueAnimator valueAnimator = this.rotationAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.rotationAnimator = null;
                }
                int i = 1 - this.toggled;
                this.toggled = i;
                RLottieDrawable lottieAnimation = this.imageView[2 - i].getImageReceiver().getLottieAnimation();
                RLottieDrawable lottieAnimation2 = this.imageView[this.toggled + 1].getImageReceiver().getLottieAnimation();
                if (lottieAnimation2 != null && lottieAnimation != null) {
                    lottieAnimation2.setProgress(lottieAnimation.getProgress(), false);
                }
                int i2 = this.toggled;
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = attributes.backdrop;
                this.backdrop[i2 + 1] = stargiftattributebackdrop;
                setBackdropPaint(i2 + 1, stargiftattributebackdrop);
                setPattern(1, attributes.pattern, true);
                TL_stars.starGiftAttributeModel[] stargiftattributemodelArr = this.imageViewAttributes;
                int i3 = this.toggled;
                stargiftattributemodelArr[i3 + 1] = attributes.model;
                StarsIntroActivity.setGiftImage(this.imageView[i3 + 1].getImageReceiver(), this.imageViewAttributes[this.toggled + 1].document, 160);
                animateSwitch();
                int i4 = this.toggled;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f - i4, i4);
                this.rotationAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$TopView$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setPreviewAttributes$4(valueAnimator2);
                    }
                });
                this.rotationAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TopView.this.toggleBackdrop = r2.toggled;
                        TopView topView = TopView.this;
                        topView.onSwitchPage(topView.currentPage);
                    }
                });
                this.rotationAnimator.setDuration(320L);
                this.rotationAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.rotationAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPreviewAttributes$4(ValueAnimator valueAnimator) {
            this.toggleBackdrop = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            onSwitchPage(this.currentPage);
        }

        private void rotateAttributes() {
            PageTransition pageTransition = this.currentPage;
            if (pageTransition != null && pageTransition.to == 1 && isAttachedToWindow()) {
                AndroidUtilities.cancelRunOnUIThread(this.checkToRotateRunnable);
                ValueAnimator valueAnimator = this.rotationAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.rotationAnimator = null;
                }
                int i = 1 - this.toggled;
                this.toggled = i;
                RLottieDrawable lottieAnimation = this.imageView[2 - i].getImageReceiver().getLottieAnimation();
                RLottieDrawable lottieAnimation2 = this.imageView[this.toggled + 1].getImageReceiver().getLottieAnimation();
                if (lottieAnimation2 != null && lottieAnimation != null) {
                    lottieAnimation2.setProgress(lottieAnimation.getProgress(), false);
                }
                this.models.next();
                int i2 = this.toggled;
                TL_stars.starGiftAttributeBackdrop next = this.backdrops.next();
                this.backdrop[i2 + 1] = next;
                setBackdropPaint(i2 + 1, next);
                setPattern(1, this.patterns.next(), true);
                animateSwitch();
                int i3 = this.toggled;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f - i3, i3);
                this.rotationAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$TopView$$ExternalSyntheticLambda6
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$rotateAttributes$5(valueAnimator2);
                    }
                });
                this.rotationAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TopView.this.toggleBackdrop = r3.toggled;
                        TopView topView = TopView.this;
                        topView.onSwitchPage(topView.currentPage);
                        TopView.this.imageViewAttributes[2 - TopView.this.toggled] = (TL_stars.starGiftAttributeModel) TopView.this.models.getNext();
                        StarsIntroActivity.setGiftImage(TopView.this.imageView[2 - TopView.this.toggled].getImageReceiver(), TopView.this.imageViewAttributes[2 - TopView.this.toggled].document, 160);
                        TopView topView2 = TopView.this;
                        topView2.preloadPattern((TL_stars.starGiftAttributePattern) topView2.patterns.getNext());
                        AndroidUtilities.cancelRunOnUIThread(TopView.this.checkToRotateRunnable);
                        AndroidUtilities.runOnUIThread(TopView.this.checkToRotateRunnable, 2500L);
                    }
                });
                this.rotationAnimator.setDuration(320L);
                this.rotationAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.rotationAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$rotateAttributes$5(ValueAnimator valueAnimator) {
            this.toggleBackdrop = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            onSwitchPage(this.currentPage);
        }

        private void setBackdropPaint(int i, TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
            if (stargiftattributebackdrop == null) {
                return;
            }
            RadialGradient[] radialGradientArr = this.backgroundGradient;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            radialGradientArr[i] = new RadialGradient(0.0f, 0.0f, AndroidUtilities.dp(200.0f), new int[]{stargiftattributebackdrop.center_color | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 1.0f}, tileMode);
            if (i == 0) {
                RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, AndroidUtilities.dp(168.0f), new int[]{stargiftattributebackdrop.center_color | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 1.0f}, tileMode);
                this.profileBackgroundGradient = radialGradient;
                this.profileBackgroundPaint.setShader(radialGradient);
            }
            Matrix[] matrixArr = this.backgroundMatrix;
            if (matrixArr[i] == null) {
                matrixArr[i] = new Matrix();
            }
            this.backgroundPaint[i].setShader(this.backgroundGradient[i]);
        }

        public void setPattern(int i, TL_stars.starGiftAttributePattern stargiftattributepattern, boolean z) {
            if (stargiftattributepattern != null) {
                TL_stars.starGiftAttributePattern[] stargiftattributepatternArr = this.patternAttribute;
                if (stargiftattributepatternArr[i] == stargiftattributepattern) {
                    return;
                }
                stargiftattributepatternArr[i] = stargiftattributepattern;
                this.pattern[i].set(stargiftattributepattern.document, z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void preloadPattern(TL_stars.starGiftAttributePattern stargiftattributepattern) {
            if (stargiftattributepattern == null) {
                return;
            }
            AnimatedEmojiDrawable.make(UserConfig.selectedAccount, 7, stargiftattributepattern.document).preload();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            this.attached = true;
            super.onAttachedToWindow();
            this.pattern[0].attach();
            this.pattern[1].attach();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            this.attached = false;
            super.onDetachedFromWindow();
            this.pattern[0].detach();
            this.pattern[1].detach();
            AndroidUtilities.cancelRunOnUIThread(this.checkToRotateRunnable);
        }

        private void animateSwitch() {
            ValueAnimator valueAnimator = this.switchAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.switchAnimator = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.switchAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$TopView$$ExternalSyntheticLambda5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateSwitch$6(valueAnimator2);
                }
            });
            this.switchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.TopView.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TopView.this.switchScale = 1.0f;
                    TopView topView = TopView.this;
                    topView.imageLayout.setScaleX(topView.switchScale);
                    TopView topView2 = TopView.this;
                    topView2.imageLayout.setScaleY(topView2.switchScale);
                    TopView.this.invalidate();
                }
            });
            this.switchAnimator.setDuration(320L);
            this.switchAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            this.switchAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateSwitch$6(ValueAnimator valueAnimator) {
            float fPow = (((float) Math.pow((r5 * 2.0f) - 2.0f, 2.0d)) * 0.075f * ((Float) valueAnimator.getAnimatedValue()).floatValue()) + 1.0f;
            this.switchScale = fPow;
            this.imageLayout.setScaleX(fPow);
            this.imageLayout.setScaleY(this.switchScale);
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            float f;
            float f2;
            TopView topView;
            Canvas canvas2;
            float f3;
            float f4;
            float realHeight = getRealHeight();
            canvas.save();
            canvas.clipRect(0.0f, 0.0f, getWidth(), realHeight);
            float width = getWidth() / 2.0f;
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(24.0f), this.currentPage.at(1)) + AndroidUtilities.dp(80.0f);
            float fAt = this.currentPage.at(0, 2, 3);
            if (fAt > 0.0f && this.backdrop[0] != null) {
                if (this.profileBackgroundGradient == null || this.currentPage.at(2) < 1.0f) {
                    this.backgroundPaint[0].setAlpha((int) (fAt * 255.0f));
                    this.backgroundMatrix[0].reset();
                    this.backgroundMatrix[0].postTranslate(width, fLerp);
                    this.backgroundGradient[0].setLocalMatrix(this.backgroundMatrix[0]);
                    canvas.drawRect(0.0f, 0.0f, getWidth(), realHeight, this.backgroundPaint[0]);
                }
                if (this.profileBackgroundGradient != null && this.currentPage.at(2) > 0.0f) {
                    this.profileBackgroundPaint.setAlpha((int) (this.currentPage.at(2) * 255.0f));
                    this.profileBackgroundMatrix.reset();
                    this.profileBackgroundMatrix.postTranslate(getWidth() / 2.0f, 0.4f * realHeight);
                    this.profileBackgroundGradient.setLocalMatrix(this.profileBackgroundMatrix);
                    canvas.drawRect(0.0f, 0.0f, getWidth(), realHeight, this.profileBackgroundPaint);
                }
            }
            if (this.currentPage.at(1) > 0.0f) {
                f = fLerp;
                int iDrawBackground = drawBackground(canvas, width, f, getWidth(), realHeight);
                topView = this;
                f2 = width;
                topView.updateButtonsBackgrounds(iDrawBackground);
            } else {
                f = fLerp;
                f2 = width;
                topView = this;
            }
            if (topView.backdrop[0] != null) {
                int i = 0;
                while (true) {
                    int[] iArr = topView.backgroundColors;
                    if (i >= iArr.length) {
                        break;
                    }
                    int[] iArr2 = topView.textColors;
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = topView.backdrop[0];
                    iArr2[i] = stargiftattributebackdrop.text_color | (-16777216);
                    iArr[i] = ColorUtils.blendARGB(stargiftattributebackdrop.edge_color | (-16777216), stargiftattributebackdrop.pattern_color | (-16777216), 0.25f);
                    topView.patternColors[i] = topView.backdrop[0].pattern_color | (-16777216);
                    i++;
                }
            }
            if (topView.imagesRollView.hasBackgrounds()) {
                f3 = 0.0f;
                f4 = f;
                canvas2 = canvas;
                topView.imagesRollView.drawBackgrounds(canvas2, topView.getWidth(), realHeight, topView.textColors, topView.backgroundColors, topView.patternColors);
                realHeight = realHeight;
                topView.invalidate();
            } else {
                canvas2 = canvas;
                f3 = 0.0f;
                f4 = f;
            }
            if (fAt > 0.0f && topView.backdrop[0] != null) {
                int[] iArr3 = topView.patternColors;
                int i2 = iArr3[iArr3.length / 2];
                float fAt2 = topView.currentPage.at(0, 3);
                if (fAt2 > f3) {
                    canvas2.save();
                    canvas2.translate(f2, f4);
                    topView.pattern[0].setColor(Integer.valueOf(i2));
                    float f5 = realHeight;
                    StarGiftPatterns.drawPattern(canvas2, topView.pattern[0], topView.getWidth(), f5, fAt2, 1.0f);
                    realHeight = f5;
                    canvas.restore();
                }
                if (topView.currentPage.at(2) > f3) {
                    canvas.save();
                    topView.pattern[0].setColor(Integer.valueOf(i2));
                    float f6 = realHeight;
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(topView.layout[2].getX() + topView.userLayout.getX() + topView.avatarView.getX(), topView.layout[2].getY() + topView.userLayout.getY() + topView.avatarView.getY(), topView.layout[2].getX() + topView.userLayout.getX() + topView.avatarView.getX() + topView.avatarView.getWidth(), topView.layout[2].getY() + topView.userLayout.getY() + topView.avatarView.getY() + topView.avatarView.getHeight());
                    StarGiftPatterns.drawProfileAnimatedPattern(canvas, topView.pattern[0], topView.getWidth(), f6 * 0.7f, 1.0f, rectF, topView.currentPage.at(2));
                    canvas2 = canvas;
                    canvas2.restore();
                } else {
                    canvas2 = canvas;
                }
                for (Button button : topView.buttons) {
                    if (Theme.setSelectorDrawableColor(button.getBackground(), topView.backgroundColors[Utilities.clamp(Math.round(((button.getX() + (button.getWidth() / 2.0f)) / topView.getWidth()) * (topView.backgroundColors.length - 1)), topView.backgroundColors.length - 1, 0)], false)) {
                        button.invalidate();
                    }
                }
                int[] iArr4 = topView.textColors;
                int i3 = iArr4[iArr4.length / 2];
                int[] iArr5 = topView.backgroundColors;
                int i4 = iArr5[iArr5.length / 2];
                TextView textView = topView.collectionReleasedView;
                if (textView != null && topView.collectionReleasedViewColor != i3) {
                    topView.collectionReleasedViewColor = i3;
                    textView.setTextColor(i3);
                    Theme.setSelectorDrawableColor(topView.collectionReleasedView.getBackground(), i4, false);
                }
                if (topView.imagesRollView.hasBackgrounds()) {
                    topView.subtitleView[0].setTextColor(i3);
                }
                if (topView.currentPage.at(2) > f3) {
                    if (topView.particles == null) {
                        topView.particles = new StarsReactionsSheet.Particles(1, 12);
                    }
                    float x = topView.imageLayout.getX() + (topView.imageLayout.getMeasuredWidth() / 2.0f);
                    float measuredWidth = (topView.imageLayout.getMeasuredWidth() * topView.imageLayout.getScaleX()) / 2.0f;
                    float y = topView.imageLayout.getY() + (topView.imageLayout.getMeasuredHeight() / 2.0f);
                    float measuredHeight = (topView.imageLayout.getMeasuredHeight() * topView.imageLayout.getScaleY()) / 2.0f;
                    topView.particlesBounds.set(x - measuredWidth, y - measuredHeight, x + measuredWidth, y + measuredHeight);
                    topView.particles.setBounds(topView.particlesBounds);
                    topView.particles.process();
                    topView.particles.draw(canvas2, Theme.multAlpha(-1, topView.currentPage.at(2)));
                    topView.invalidate();
                }
            }
            if (topView.currentPage.at(1) > f3) {
                topView.drawPattern(canvas2, f2, f4, topView.getWidth(), topView.getRealHeight());
            }
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        public void drawPattern(Canvas canvas, float f, float f2, float f3, float f4) {
            canvas.save();
            canvas.translate(f, f2);
            TL_stars.starGiftAttributeBackdrop[] stargiftattributebackdropArr = this.backdrop;
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = stargiftattributebackdropArr[1];
            int i = stargiftattributebackdrop == null ? 0 : stargiftattributebackdrop.pattern_color | (-16777216);
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop2 = stargiftattributebackdropArr[2];
            this.pattern[1].setColor(Integer.valueOf(ColorUtils.blendARGB(i, stargiftattributebackdrop2 != null ? stargiftattributebackdrop2.pattern_color | (-16777216) : 0, this.toggleBackdrop)));
            StarGiftPatterns.drawPattern(canvas, this.pattern[1], f3, f4, this.currentPage.at(1), this.switchScale);
            canvas.restore();
        }

        public int drawBackground(Canvas canvas, float f, float f2, float f3, float f4) {
            int i = this.toggled;
            float f5 = this.toggleBackdrop;
            int iCompositeColors = 0;
            if (i == 0) {
                if (f5 > 0.0f && this.backdrop[2] != null) {
                    this.backgroundPaint[2].setAlpha((int) (this.currentPage.at(1) * 255.0f));
                    this.backgroundMatrix[2].reset();
                    this.backgroundMatrix[2].postTranslate(f, f2);
                    this.backgroundGradient[2].setLocalMatrix(this.backgroundMatrix[2]);
                    canvas.drawRect(0.0f, 0.0f, f3, f4, this.backgroundPaint[2]);
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = this.backdrop[2];
                    iCompositeColors = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(stargiftattributebackdrop.edge_color | (-16777216), stargiftattributebackdrop.pattern_color | (-16777216), 0.25f), this.backgroundPaint[2].getAlpha()), 0);
                }
                if (this.toggleBackdrop >= 1.0f || this.backdrop[1] == null) {
                    return iCompositeColors;
                }
                this.backgroundPaint[1].setAlpha((int) (this.currentPage.at(1) * 255.0f * (1.0f - this.toggleBackdrop)));
                this.backgroundMatrix[1].reset();
                this.backgroundMatrix[1].postTranslate(f, f2);
                this.backgroundGradient[1].setLocalMatrix(this.backgroundMatrix[1]);
                canvas.drawRect(0.0f, 0.0f, f3, f4, this.backgroundPaint[1]);
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop2 = this.backdrop[1];
                return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(stargiftattributebackdrop2.edge_color | (-16777216), stargiftattributebackdrop2.pattern_color | (-16777216), 0.25f), this.backgroundPaint[1].getAlpha()), iCompositeColors);
            }
            if (f5 < 1.0f && this.backdrop[1] != null) {
                this.backgroundPaint[1].setAlpha((int) (this.currentPage.at(1) * 255.0f));
                this.backgroundMatrix[1].reset();
                this.backgroundMatrix[1].postTranslate(f, f2);
                this.backgroundGradient[1].setLocalMatrix(this.backgroundMatrix[1]);
                canvas.drawRect(0.0f, 0.0f, f3, f4, this.backgroundPaint[1]);
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop3 = this.backdrop[1];
                iCompositeColors = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(stargiftattributebackdrop3.edge_color | (-16777216), stargiftattributebackdrop3.pattern_color | (-16777216), 0.25f), this.backgroundPaint[1].getAlpha()), 0);
            }
            if (this.toggleBackdrop <= 0.0f || this.backdrop[2] == null) {
                return iCompositeColors;
            }
            this.backgroundPaint[2].setAlpha((int) (this.currentPage.at(1) * 255.0f * this.toggleBackdrop));
            this.backgroundMatrix[2].reset();
            this.backgroundMatrix[2].postTranslate(f, f2);
            this.backgroundGradient[2].setLocalMatrix(this.backgroundMatrix[2]);
            canvas.drawRect(0.0f, 0.0f, f3, f4, this.backgroundPaint[2]);
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop4 = this.backdrop[2];
            return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(stargiftattributebackdrop4.edge_color | (-16777216), stargiftattributebackdrop4.pattern_color | (-16777216), 0.25f), this.backgroundPaint[2].getAlpha()), iCompositeColors);
        }

        public float getRealHeight() {
            return ((AndroidUtilities.dp(this.backdrop[0] != null ? 24.0f : 10.0f) + AndroidUtilities.dp(160.0f) + this.layout[0].getMeasuredHeight()) * this.currentPage.at(0)) + 0.0f + ((AndroidUtilities.dp(this.backdrop[1] != null ? 24.0f : 10.0f) + AndroidUtilities.dp(160.0f) + this.layout[1].getMeasuredHeight()) * this.currentPage.at(1)) + ((AndroidUtilities.dp(64.0f) + this.layout[2].getMeasuredHeight()) * this.currentPage.at(2)) + ((AndroidUtilities.dp(this.backdrop[0] != null ? 24.0f : 10.0f) + AndroidUtilities.dp(160.0f) + this.layout[3].getMeasuredHeight()) * this.currentPage.at(3)) + ((this.craftTopView.getMeasuredHeight() > 0 ? this.craftTopView.getMeasuredHeight() : AndroidUtilities.dp(550.0f)) * this.currentPage.at(4));
        }

        public int getFinalHeight() {
            int iDp;
            int measuredHeight;
            if (this.currentPage.to(0)) {
                iDp = AndroidUtilities.dp(this.backdrop[0] != null ? 24.0f : 10.0f) + AndroidUtilities.dp(160.0f);
                measuredHeight = this.layout[0].getMeasuredHeight();
            } else if (this.currentPage.to(1)) {
                iDp = AndroidUtilities.dp(this.backdrop[1] != null ? 24.0f : 10.0f) + AndroidUtilities.dp(160.0f);
                measuredHeight = this.layout[1].getMeasuredHeight();
            } else if (this.currentPage.to(2)) {
                iDp = AndroidUtilities.dp(64.0f);
                measuredHeight = this.layout[2].getMeasuredHeight();
            } else if (this.currentPage.to(3)) {
                iDp = AndroidUtilities.dp(160.0f);
                measuredHeight = this.layout[3].getMeasuredHeight();
            } else {
                if (this.currentPage.to(4)) {
                    return this.craftTopView.getMeasuredHeight() > 0 ? this.craftTopView.getMeasuredHeight() : AndroidUtilities.dp(550.0f);
                }
                return 0;
            }
            return iDp + measuredHeight;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.currentPage.contains(2)) {
                updateWearImageTranslation();
                onSwitchPage(this.currentPage);
            }
        }
    }

    public void switchPage(int i, boolean z) {
        switchPage(i, z, null);
    }

    public void switchPage(final int i, boolean z, final Runnable runnable) {
        Roller roller;
        ValueAnimator valueAnimator = this.switchingPagesAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.switchingPagesAnimator = null;
        }
        if (i != 1) {
            AndroidUtilities.cancelRunOnUIThread(this.topView.checkToRotateRunnable);
        }
        if (!this.firstSet) {
            this.lastTop = Float.valueOf(this.container.top());
        }
        PageTransition pageTransition = this.currentPage;
        this.currentPage = new PageTransition(pageTransition == null ? 0 : pageTransition.to, i, 0.0f);
        this.adapter.setHeights(this.topView.getFinalHeight(), getBottomHeight() + ((this.currentPage.to(1) && this.underButtonContainer.getVisibility() == 0) ? this.underButtonContainer.getMeasuredHeight() : 0));
        if (this.currentPage.to == 0 && (roller = this.roller) != null) {
            roller.stopPreload();
        }
        if (z) {
            this.infoLayout.setVisibility(this.currentPage.contains(0) ? 0 : 8);
            this.upgradeLayout.setVisibility(this.currentPage.contains(1) ? 0 : 8);
            this.wearLayout.setVisibility(this.currentPage.contains(2) ? 0 : 8);
            this.craftLayout.setVisibility(this.currentPage.contains(3) ? 0 : 8);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.switchingPagesAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda67
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$switchPage$43(valueAnimator2);
                }
            });
            this.switchingPagesAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.13
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StarGiftSheet.this.onSwitchedPage();
                    StarGiftSheet.this.infoLayout.setVisibility(i == 0 ? 0 : 8);
                    StarGiftSheet.this.upgradeLayout.setVisibility(i == 1 ? 0 : 8);
                    StarGiftSheet.this.wearLayout.setVisibility(i == 2 ? 0 : 8);
                    StarGiftSheet.this.craftLayout.setVisibility(i == 3 ? 0 : 8);
                    StarGiftSheet.this.updateUnderButtonContainer();
                    StarGiftSheet.this.switchingPagesAnimator = null;
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
            this.switchingPagesAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.switchingPagesAnimator.setDuration(320L);
            this.switchingPagesAnimator.start();
            this.topView.prepareSwitchPage(this.currentPage);
        } else {
            this.currentPage.setProgress(1.0f);
            onSwitchedPage();
            this.infoLayout.setVisibility(i == 0 ? 0 : 8);
            this.upgradeLayout.setVisibility(i == 1 ? 0 : 8);
            this.wearLayout.setVisibility(i == 2 ? 0 : 8);
            this.craftLayout.setVisibility(i != 3 ? 8 : 0);
            updateUnderButtonContainer();
            if (runnable != null) {
                runnable.run();
            }
        }
        HintView2 hintView2 = this.currentHintView;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHintView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchPage$43(ValueAnimator valueAnimator) {
        this.currentPage.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        onSwitchedPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUnderButtonContainer() {
        int visibility = this.underButtonContainer.getVisibility();
        FrameLayout frameLayout = this.buttonContainer;
        if (visibility == 0) {
            frameLayout.setTranslationY((-this.underButtonContainer.getMeasuredHeight()) * this.currentPage.at(1));
            this.underButtonContainer.setTranslationY(r0.getMeasuredHeight() * (1.0f - this.currentPage.at(1)));
            this.bottomBulletinContainer.setTranslationY((-this.underButtonContainer.getMeasuredHeight()) * this.currentPage.at(1));
            return;
        }
        frameLayout.setTranslationY(0.0f);
        this.underButtonContainer.setTranslationY(0.0f);
        this.bottomBulletinContainer.setTranslationY(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomHeight() {
        if (this.currentPage.to(1)) {
            return this.upgradeLayout.getMeasuredHeight();
        }
        if (this.currentPage.to(2)) {
            return this.wearLayout.getMeasuredHeight();
        }
        if (this.currentPage.to(3)) {
            return this.craftLayout.getMeasuredHeight();
        }
        if (this.currentPage.to(4)) {
            return 0;
        }
        return this.infoLayout.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSwitchedPage() {
        this.infoLayout.setAlpha(this.currentPage.at(0));
        this.upgradeLayout.setAlpha(this.currentPage.at(1));
        this.wearLayout.setAlpha(this.currentPage.at(2));
        this.craftLayout.setAlpha(this.currentPage.at(3));
        this.buttonContainer.setAlpha(1.0f - this.currentPage.at(4));
        this.topView.onSwitchPage(this.currentPage);
        this.topView.craftView.setVisibility((this.currentPage.is(0) && showCraft()) ? 0 : 8);
        this.actionView.setAlpha(this.currentPage.at(0) * Utilities.clamp01(AndroidUtilities.ilerp(this.container.top() - this.actionView.getHeight(), 0.0f, AndroidUtilities.dp(32.0f))));
        this.container.updateTranslations();
        this.container.invalidate();
        this.buttonContainer.setVisibility(this.currentPage.is(4) ? 8 : 0);
        updateUnderButtonContainer();
    }

    public int canTransferAt() {
        TLRPC.Message message;
        MessageObject messageObject = this.messageObject;
        if (messageObject != null && (message = messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                return ((TLRPC.TL_messageActionStarGiftUnique) messageAction).can_transfer_at;
            }
        }
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        if (savedStarGift != null) {
            return savedStarGift.can_transfer_at;
        }
        return 0;
    }

    public int canResellAt() {
        TLRPC.Message message;
        MessageObject messageObject = this.messageObject;
        if (messageObject != null && (message = messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                return ((TLRPC.TL_messageActionStarGiftUnique) messageAction).can_resell_at;
            }
        }
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        if (savedStarGift != null) {
            return savedStarGift.can_resell_at;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean canTransfer() {
        TL_stars.TL_starGiftUnique tL_starGiftUnique;
        TLRPC.Message message;
        if (getInputStarGift() == null) {
            return false;
        }
        MessageObject messageObject = this.messageObject;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null) {
                TL_stars.StarGift starGift = savedStarGift.gift;
                if (starGift instanceof TL_stars.TL_starGiftUnique) {
                    tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift;
                } else {
                    tL_starGiftUnique = this.slugStarGift;
                    if (tL_starGiftUnique == null) {
                        return false;
                    }
                }
            }
        } else {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                if ((tL_messageActionStarGiftUnique.flags & 16) == 0) {
                    return false;
                }
                TL_stars.StarGift starGift2 = tL_messageActionStarGiftUnique.gift;
                if (!(starGift2 instanceof TL_stars.TL_starGiftUnique)) {
                    return false;
                }
                tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift2;
            }
        }
        return isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(tL_starGiftUnique.owner_id));
    }

    public static void addAttributeRow(TableView tableView, TL_stars.StarGiftAttribute starGiftAttribute) {
        String string;
        if (starGiftAttribute instanceof TL_stars.starGiftAttributeModel) {
            string = LocaleController.getString(C2573R.string.Gift2AttributeModel);
        } else if (starGiftAttribute instanceof TL_stars.starGiftAttributePattern) {
            string = LocaleController.getString(C2573R.string.Gift2AttributeSymbol);
        } else if (!(starGiftAttribute instanceof TL_stars.starGiftAttributeBackdrop)) {
            return;
        } else {
            string = LocaleController.getString(C2573R.string.Gift2AttributeBackdrop);
        }
        String str = string;
        Integer[] numArr = new Integer[1];
        tableView.addRow(str, starGiftAttribute.name, getRarityName(starGiftAttribute.rarity, numArr), null, numArr[0]);
    }

    public static CharSequence getRarityName(TL_stars.StarGiftAttributeRarity starGiftAttributeRarity, Integer[] numArr) {
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityUncommon) {
            if (numArr != null) {
                numArr[0] = -12539616;
            }
            return LocaleController.getString(C2573R.string.GiftRarityUncommon);
        }
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityRare) {
            if (numArr != null) {
                numArr[0] = -15619394;
            }
            return LocaleController.getString(C2573R.string.GiftRarityRare);
        }
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityEpic) {
            if (numArr != null) {
                numArr[0] = -6988581;
            }
            return LocaleController.getString(C2573R.string.GiftRarityEpic);
        }
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityLegendary) {
            if (numArr != null) {
                numArr[0] = -4229632;
            }
            return LocaleController.getString(C2573R.string.GiftRarityLegendary);
        }
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarity) {
            int i = ((TL_stars.TL_starGiftAttributeRarity) starGiftAttributeRarity).permille;
            if (i <= 0) {
                return "<0.1%";
            }
            return AffiliateProgramFragment.percents(i);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private void addAttributeRow(final TL_stars.StarGiftAttribute starGiftAttribute) {
        String string;
        char c2;
        Roller roller;
        if (starGiftAttribute instanceof TL_stars.starGiftAttributeModel) {
            string = LocaleController.getString(C2573R.string.Gift2AttributeModel);
            c2 = 2;
        } else if (starGiftAttribute instanceof TL_stars.starGiftAttributePattern) {
            string = LocaleController.getString(C2573R.string.Gift2AttributeSymbol);
            c2 = 1;
        } else {
            if (!(starGiftAttribute instanceof TL_stars.starGiftAttributeBackdrop)) {
                return;
            }
            string = LocaleController.getString(C2573R.string.Gift2AttributeBackdrop);
            c2 = 0;
        }
        if (this.rolling || ((roller = this.roller) != null && roller.isRolling())) {
            TextViewRoll textViewRoll = new TextViewRoll(getContext(), this.resourcesProvider, new Utilities.Callback3() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda98
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    this.f$0.showHint((CharSequence) obj, (View) obj2, ((Boolean) obj3).booleanValue());
                }
            });
            TableRow tableRow = new TableRow(getContext());
            tableRow.addView(new TableView.TableRowTitle(this.tableView, string), new TableRow.LayoutParams(-2, -1));
            tableRow.addView(new TableView.TableRowContent(this.tableView, textViewRoll, true), new TableRow.LayoutParams(0, -1, 1.0f));
            this.tableView.addView(tableRow);
            Roller roller2 = this.roller;
            if (roller2 != null) {
                if (c2 == 0) {
                    roller2.backdropText = textViewRoll;
                }
                if (c2 == 1) {
                    roller2.patternText = textViewRoll;
                }
                if (c2 == 2) {
                    roller2.modelText = textViewRoll;
                    return;
                }
                return;
            }
            return;
        }
        final boolean[] zArr = new boolean[1];
        final ButtonSpan.TextViewButtons[] textViewButtonsArr = new ButtonSpan.TextViewButtons[1];
        Integer[] numArr = new Integer[1];
        textViewButtonsArr[0] = (ButtonSpan.TextViewButtons) ((TableView.TableRowContent) this.tableView.addRow(string, starGiftAttribute.name, getRarityName(starGiftAttribute.rarity, numArr), starGiftAttribute.rarity instanceof TL_stars.TL_starGiftAttributeRarity ? new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda99
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addAttributeRow$45(zArr, starGiftAttribute, textViewButtonsArr);
            }
        } : null, numArr[0]).getChildAt(1)).getChildAt(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addAttributeRow$45(final boolean[] zArr, final TL_stars.StarGiftAttribute starGiftAttribute, final ButtonSpan.TextViewButtons[] textViewButtonsArr) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        final TL_stars.StarGift gift = getGift();
        GiftAuctionController.getInstance(this.currentAccount).requestAuctionUpgrades(gift.gift_id, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda136
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$addAttributeRow$44(gift, starGiftAttribute, textViewButtonsArr, zArr, (ArrayList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addAttributeRow$44(TL_stars.StarGift starGift, TL_stars.StarGiftAttribute starGiftAttribute, ButtonSpan.TextViewButtons[] textViewButtonsArr, boolean[] zArr, ArrayList arrayList) {
        if (arrayList != null) {
            new StarGiftPreviewSheet(getContext(), this.resourcesProvider, this.currentAccount, starGift.title, arrayList, false).show();
        } else {
            showHint(LocaleController.formatString(C2573R.string.Gift2RarityHint, AffiliateProgramFragment.percents(starGiftAttribute.getRarityPermille())), textViewButtonsArr[0], false);
        }
        zArr[0] = false;
    }

    public static class Roller {
        private AttrRoller<Background> backdropRoller;
        private AttrRoller<Background> backdropRoller2;
        TextViewRoll backdropText;
        private boolean drawing;
        private float durationT;
        private long lastFrameTime;
        private AttrRoller<Sticker> modelRoller;
        TextViewRoll modelText;
        TextViewRoll patternText;
        private boolean posted;
        private TL_stars.TL_starGiftUnique rollingGift;
        private AttrRoller<Symbol> symbolRoller;
        public final TopView topView;
        private Runnable whenDone;
        private Runnable whenDone2;
        private final ArrayList<Sticker> models = new ArrayList<>();
        private final ArrayList<Background> backgrounds = new ArrayList<>();
        private final ArrayList<Symbol> symbols = new ArrayList<>();
        private float realTime = 0.0f;
        private boolean rolling = false;
        private boolean sentDone = false;
        private boolean sentDone2 = false;

        public static class Attr {
            public String name;
            public int rarity_permille;

            public void detach() {
            }

            public boolean isLoaded() {
                return true;
            }
        }

        public static class AttrRoller<T extends Attr> {
            public final ArrayList<T> attributes;
            public T current;
            public int currentT;
            private final AnimatedFloat fast;
            public final T finish;
            private final Runnable invalidate;
            private int lastNextIndex = -1;
            public T next;
            public T prev;
            private int slowing;
            private final float speedMult;
            public final T start;
            public float time;
            private final int totalSlowing;

            public AttrRoller(Runnable runnable, ArrayList<T> arrayList, T t, T t2, float f, int i) {
                this.time = 0.0f;
                this.invalidate = runnable;
                this.attributes = arrayList;
                this.start = t;
                this.finish = t2;
                this.speedMult = f;
                this.totalSlowing = i;
                AnimatedFloat animatedFloat = new AnimatedFloat(runnable, 300L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.fast = animatedFloat;
                animatedFloat.force(true);
                this.time = -0.5f;
                this.currentT = 1;
                this.slowing = i;
                this.prev = t;
                this.current = (T) next(false);
                this.next = (T) next(false);
            }

            public void skip() {
                this.prev = this.current;
                this.current = this.finish;
                this.next = null;
                int i = this.currentT + 1;
                this.currentT = i;
                this.time = i + 0.5f;
            }

            public boolean isFinished() {
                return this.current == this.finish && this.time >= ((float) this.currentT) + 0.5f;
            }

            public boolean isAlmostFinished() {
                return isAlmostFinished(0.25f);
            }

            public boolean isAlmostFinished(float f) {
                return this.current == this.finish && this.time + f >= ((float) this.currentT) + 0.5f;
            }

            public float step(float f, boolean z) {
                long j;
                T t;
                T t2;
                AnimatedFloat animatedFloat = this.fast;
                int i = this.slowing;
                int i2 = this.totalSlowing;
                if (i >= i2) {
                    j = 450;
                } else {
                    j = i2 == 3 ? 4500 : 2500;
                }
                animatedFloat.setDuration(j);
                float fLerp = this.time + (f * AndroidUtilities.lerp(this.totalSlowing == 3 ? 0.75f : 2.0f, 7.5f, this.fast.set(this.slowing >= this.totalSlowing)) * this.speedMult);
                this.time = fLerp;
                if (fLerp >= 0.0f) {
                    double d = fLerp;
                    if (Math.floor(d) + 1.0d > this.currentT && (t = this.current) != (t2 = this.finish)) {
                        this.prev = t;
                        T t3 = this.next;
                        this.current = t3;
                        this.next = t3 == t2 ? null : (T) next(z);
                        this.currentT = ((int) Math.floor(d)) + 1;
                    }
                }
                return this.current == this.finish ? Math.min(fLerp, this.currentT + 0.5f) : fLerp;
            }

            public T next(boolean z) {
                if (z && this.finish.isLoaded()) {
                    int i = this.slowing;
                    if (i <= 0) {
                        return this.finish;
                    }
                    this.slowing = i - 1;
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < this.attributes.size(); i2++) {
                    if (i2 != this.lastNextIndex && this.attributes.get(i2).isLoaded()) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                }
                if (arrayList.isEmpty()) {
                    for (int i3 = 0; i3 < this.attributes.size(); i3++) {
                        if (this.attributes.get(i3).isLoaded()) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return this.start;
                    }
                }
                int iIntValue = ((Integer) AndroidUtilities.randomOf(arrayList)).intValue();
                this.lastNextIndex = iIntValue;
                return this.attributes.get(iIntValue);
            }

            public void detach() {
                T t = this.start;
                if (t != null) {
                    t.detach();
                }
                T t2 = this.finish;
                if (t2 != null) {
                    t2.detach();
                }
            }
        }

        public Roller(TopView topView) {
            this.topView = topView;
            topView.imagesRollView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Stars.StarGiftSheet.Roller.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    ArrayList arrayList = Roller.this.models;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((Sticker) obj).attach();
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    ArrayList arrayList = Roller.this.models;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((Sticker) obj).detach();
                    }
                }
            });
        }

        public void preload(ArrayList<TL_stars.StarGiftAttribute> arrayList) {
            ArrayList<Sticker> arrayList2 = this.models;
            int size = arrayList2.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Sticker sticker = arrayList2.get(i2);
                i2++;
                sticker.detach();
            }
            this.models.clear();
            this.backgrounds.clear();
            this.symbols.clear();
            ArrayList arrayListFindAttributes = StarsController.findAttributes(arrayList, TL_stars.starGiftAttributeModel.class);
            int size2 = arrayListFindAttributes.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj = arrayListFindAttributes.get(i3);
                i3++;
                Sticker sticker2 = new Sticker(this.topView.imagesRollView, (TL_stars.starGiftAttributeModel) obj);
                if (this.topView.isAttachedToWindow()) {
                    sticker2.attach();
                }
                this.models.add(sticker2);
            }
            ArrayList arrayListFindAttributes2 = StarsController.findAttributes(arrayList, TL_stars.starGiftAttributeBackdrop.class);
            int size3 = arrayListFindAttributes2.size();
            int i4 = 0;
            while (i4 < size3) {
                Object obj2 = arrayListFindAttributes2.get(i4);
                i4++;
                this.backgrounds.add(new Background((TL_stars.starGiftAttributeBackdrop) obj2));
            }
            ArrayList arrayListFindAttributes3 = StarsController.findAttributes(arrayList, TL_stars.starGiftAttributePattern.class);
            int size4 = arrayListFindAttributes3.size();
            while (i < size4) {
                Object obj3 = arrayListFindAttributes3.get(i);
                i++;
                this.symbols.add(new Symbol((TL_stars.starGiftAttributePattern) obj3));
            }
        }

        public void stopPreload() {
            if (this.rolling) {
                return;
            }
            ArrayList<Sticker> arrayList = this.models;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Sticker sticker = arrayList.get(i);
                i++;
                sticker.detach();
            }
            this.models.clear();
            this.backgrounds.clear();
            this.symbols.clear();
        }

        public void detach() {
            this.rolling = false;
            this.topView.imagesRollView.resetDrawing();
            AttrRoller<Sticker> attrRoller = this.modelRoller;
            if (attrRoller != null) {
                attrRoller.detach();
            }
            AttrRoller<Symbol> attrRoller2 = this.symbolRoller;
            if (attrRoller2 != null) {
                attrRoller2.detach();
            }
            AttrRoller<Background> attrRoller3 = this.backdropRoller;
            if (attrRoller3 != null) {
                attrRoller3.detach();
            }
            AttrRoller<Background> attrRoller4 = this.backdropRoller2;
            if (attrRoller4 != null) {
                attrRoller4.detach();
            }
            stopPreload();
        }

        public boolean set(TL_stars.TL_starGiftUnique tL_starGiftUnique, boolean z, Runnable runnable, Runnable runnable2) {
            boolean z2 = tL_starGiftUnique == null ? false : z;
            TL_stars.TL_starGiftUnique tL_starGiftUnique2 = this.rollingGift;
            if (tL_starGiftUnique2 != null && tL_starGiftUnique2.id == tL_starGiftUnique.id) {
                return this.rolling;
            }
            if (!z2) {
                return false;
            }
            BackupImageView upgradeImageView = this.topView.getUpgradeImageView();
            TL_stars.starGiftAttributeModel upgradeImageViewAttribute = this.topView.getUpgradeImageViewAttribute();
            TL_stars.starGiftAttributePattern upgradePatternAttribute = this.topView.getUpgradePatternAttribute();
            TL_stars.starGiftAttributeBackdrop upgradeBackdropAttribute = this.topView.getUpgradeBackdropAttribute();
            TL_stars.starGiftAttributeModel stargiftattributemodel = (TL_stars.starGiftAttributeModel) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeModel.class);
            TL_stars.starGiftAttributePattern stargiftattributepattern = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributePattern.class);
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class);
            this.rolling = true;
            this.rollingGift = tL_starGiftUnique;
            this.whenDone = runnable;
            this.whenDone2 = runnable2;
            this.durationT = (float) Math.random();
            this.lastFrameTime = System.currentTimeMillis();
            this.realTime = 0.0f;
            this.sentDone = false;
            this.sentDone2 = false;
            this.rolling = true;
            AttrRoller<Sticker> attrRoller = this.modelRoller;
            if (attrRoller != null) {
                attrRoller.detach();
            }
            Sticker sticker = new Sticker(this.topView.imagesRollView, stargiftattributemodel);
            if (this.topView.imagesRollView.isAttachedToWindow()) {
                sticker.attach();
            }
            this.modelRoller = new AttrRoller<>(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$Roller$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, this.models, new Sticker(upgradeImageView, upgradeImageViewAttribute), sticker, 0.9f, this.durationT > 0.5f ? 3 : 2);
            AttrRoller<Symbol> attrRoller2 = this.symbolRoller;
            if (attrRoller2 != null) {
                attrRoller2.detach();
            }
            this.symbolRoller = new AttrRoller<>(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$Roller$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, this.symbols, new Symbol(upgradePatternAttribute), new Symbol(stargiftattributepattern), 1.0f, this.durationT > 0.5f ? 2 : 1);
            AttrRoller<Background> attrRoller3 = this.backdropRoller;
            if (attrRoller3 != null) {
                attrRoller3.detach();
            }
            this.backdropRoller = new AttrRoller<>(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$Roller$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, this.backgrounds, new Background(upgradeBackdropAttribute), new Background(stargiftattributebackdrop), 0.5f, this.durationT > 0.5f ? 2 : 1);
            AttrRoller<Background> attrRoller4 = this.backdropRoller2;
            if (attrRoller4 != null) {
                attrRoller4.detach();
            }
            this.backdropRoller2 = new AttrRoller<>(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$Roller$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            }, this.backgrounds, new Background(upgradeBackdropAttribute), new Background(stargiftattributebackdrop), 1.25f, this.durationT > 0.5f ? 2 : 1);
            invalidate();
            return true;
        }

        public void skip() {
            this.modelRoller.skip();
            this.symbolRoller.skip();
            this.backdropRoller.skip();
            this.backdropRoller2.skip();
        }

        public boolean isRolling() {
            return this.rolling;
        }

        public void invalidate() {
            if (this.rolling && !this.posted) {
                this.posted = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$Roller$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.update();
                    }
                });
            }
        }

        public void update() {
            float f;
            if (this.drawing) {
                return;
            }
            this.posted = false;
            if (this.rolling) {
                this.drawing = true;
                long jCurrentTimeMillis = System.currentTimeMillis();
                float fMin = Math.min((jCurrentTimeMillis - this.lastFrameTime) / 1000.0f, 0.25f);
                float f2 = this.realTime + fMin;
                this.realTime = f2;
                float fStep = this.backdropRoller.step(fMin, f2 > AndroidUtilities.lerp(0.1f, 1.0f, this.durationT));
                float fStep2 = this.backdropRoller2.step(fMin, this.realTime > AndroidUtilities.lerp(0.1f, 1.0f, this.durationT));
                float fStep3 = this.symbolRoller.step(fMin, this.backdropRoller.isAlmostFinished(0.5f));
                float fStep4 = this.modelRoller.step(fMin, this.backdropRoller.isAlmostFinished(0.5f) && this.symbolRoller.isAlmostFinished(0.5f));
                this.lastFrameTime = jCurrentTimeMillis;
                if (this.backdropRoller.isFinished() && this.symbolRoller.isFinished() && this.modelRoller.isFinished() && !this.sentDone) {
                    this.sentDone = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$Roller$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$update$0();
                        }
                    });
                }
                if (this.backdropRoller.isFinished() && this.symbolRoller.isFinished() && this.modelRoller.isAlmostFinished() && !this.sentDone2) {
                    this.sentDone2 = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$Roller$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$update$1();
                        }
                    });
                }
                TextViewRoll textViewRoll = this.modelText;
                if (textViewRoll != null) {
                    AttrRoller<Sticker> attrRoller = this.modelRoller;
                    Attr attr = attrRoller.prev;
                    int i = attrRoller.currentT;
                    float f3 = (i - fStep4) - 1.0f;
                    Attr attr2 = attrRoller.finish;
                    boolean z = attr == attr2;
                    Attr attr3 = attrRoller.current;
                    f = 1.0f;
                    float f4 = i - fStep4;
                    boolean z2 = attr3 == attr2;
                    Attr attr4 = attrRoller.next;
                    textViewRoll.update(attr, f3, z, attr3, f4, z2, attr4, (i - fStep4) + 1.0f, attr4 == attr2);
                } else {
                    f = 1.0f;
                }
                TextViewRoll textViewRoll2 = this.patternText;
                if (textViewRoll2 != null) {
                    AttrRoller<Symbol> attrRoller2 = this.symbolRoller;
                    Attr attr5 = attrRoller2.prev;
                    int i2 = attrRoller2.currentT;
                    float f5 = (i2 - fStep3) - f;
                    Attr attr6 = attrRoller2.finish;
                    boolean z3 = attr5 == attr6;
                    Attr attr7 = attrRoller2.current;
                    float f6 = i2 - fStep3;
                    boolean z4 = attr7 == attr6;
                    Attr attr8 = attrRoller2.next;
                    textViewRoll2.update(attr5, f5, z3, attr7, f6, z4, attr8, (i2 - fStep3) + f, attr8 == attr6);
                }
                TextViewRoll textViewRoll3 = this.backdropText;
                if (textViewRoll3 != null) {
                    AttrRoller<Background> attrRoller3 = this.backdropRoller2;
                    Attr attr9 = attrRoller3.prev;
                    int i3 = attrRoller3.currentT;
                    float f7 = (i3 - fStep2) - f;
                    Attr attr10 = attrRoller3.finish;
                    boolean z5 = attr9 == attr10;
                    Attr attr11 = attrRoller3.current;
                    float f8 = i3 - fStep2;
                    boolean z6 = attr11 == attr10;
                    Attr attr12 = attrRoller3.next;
                    textViewRoll3.update(attr9, f7, z5, attr11, f8, z6, attr12, (i3 - fStep2) + f, attr12 == attr10);
                }
                this.topView.setPattern(0, ((Symbol) this.symbolRoller.current).attr, true);
                StickersRollView stickersRollView = this.topView.imagesRollView;
                AttrRoller<Sticker> attrRoller4 = this.modelRoller;
                T t = attrRoller4.prev;
                Sticker sticker = (Sticker) t;
                int i4 = attrRoller4.currentT;
                float f9 = (i4 - fStep4) - f;
                T t2 = attrRoller4.finish;
                boolean z7 = t == t2;
                T t3 = attrRoller4.current;
                Sticker sticker2 = (Sticker) t3;
                float f10 = i4 - fStep4;
                boolean z8 = t3 == t2;
                T t4 = attrRoller4.next;
                Sticker sticker3 = (Sticker) t4;
                float f11 = (i4 - fStep4) + f;
                boolean z9 = t4 == t2;
                AttrRoller<Background> attrRoller5 = this.backdropRoller;
                T t5 = attrRoller5.prev;
                Background background = (Background) t5;
                int i5 = attrRoller5.currentT;
                float f12 = (i5 - fStep) - f;
                T t6 = attrRoller5.finish;
                boolean z10 = t5 == t6;
                T t7 = attrRoller5.current;
                Background background2 = (Background) t7;
                float f13 = i5 - fStep;
                boolean z11 = t7 == t6;
                T t8 = attrRoller5.next;
                stickersRollView.setDrawing(sticker, f9, z7, sticker2, f10, z8, sticker3, f11, z9, background, f12, z10, background2, f13, z11, (Background) t8, (i5 - fStep) + f, t8 == t6);
                this.drawing = false;
                invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$update$0() {
            this.rolling = false;
            this.topView.imagesRollView.resetDrawing();
            Runnable runnable = this.whenDone;
            if (runnable != null) {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$update$1() {
            Runnable runnable = this.whenDone2;
            if (runnable != null) {
                runnable.run();
            }
        }

        public static class Sticker extends Attr {
            public final ImageReceiver imageReceiver;
            public final boolean mine;

            public Sticker(View view, TL_stars.starGiftAttributeModel stargiftattributemodel) {
                this.name = stargiftattributemodel.name;
                this.rarity_permille = stargiftattributemodel.getRarityPermille();
                this.mine = true;
                ImageReceiver imageReceiver = new ImageReceiver(view);
                this.imageReceiver = imageReceiver;
                StarsIntroActivity.setGiftImage(imageReceiver, stargiftattributemodel.document, 160);
            }

            public Sticker(BackupImageView backupImageView, TL_stars.starGiftAttributeModel stargiftattributemodel) {
                this.name = stargiftattributemodel.name;
                this.rarity_permille = stargiftattributemodel.getRarityPermille();
                this.mine = false;
                this.imageReceiver = backupImageView.getImageReceiver();
            }

            public void attach() {
                if (this.mine) {
                    this.imageReceiver.onAttachedToWindow();
                }
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.Roller.Attr
            public void detach() {
                if (this.mine) {
                    this.imageReceiver.onDetachedFromWindow();
                }
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.Roller.Attr
            public boolean isLoaded() {
                return this.imageReceiver.getLottieAnimation() != null;
            }
        }

        public static class Symbol extends Attr {
            public final TL_stars.starGiftAttributePattern attr;

            public Symbol(TL_stars.starGiftAttributePattern stargiftattributepattern) {
                this.name = stargiftattributepattern.name;
                this.rarity_permille = stargiftattributepattern.getRarityPermille();
                this.attr = stargiftattributepattern;
            }
        }

        public static class Background extends Attr {
            public final int backgroundColor;
            public final RadialGradient backgroundGradient;
            public final Matrix backgroundMatrix;
            public final Paint backgroundPaint;
            public final int patternColor;
            public final int textColor;

            public Background(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
                this.name = stargiftattributebackdrop.name;
                this.rarity_permille = stargiftattributebackdrop.getRarityPermille();
                Paint paint = new Paint(1);
                this.backgroundPaint = paint;
                this.backgroundMatrix = new Matrix();
                RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, AndroidUtilities.dp(200.0f), new int[]{stargiftattributebackdrop.center_color | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                this.backgroundGradient = radialGradient;
                paint.setShader(radialGradient);
                this.textColor = stargiftattributebackdrop.text_color | (-16777216);
                int i = stargiftattributebackdrop.pattern_color;
                this.patternColor = i | (-16777216);
                this.backgroundColor = ColorUtils.blendARGB(stargiftattributebackdrop.edge_color | (-16777216), i | (-16777216), 0.25f);
            }
        }
    }

    public static class TextViewRoll extends FrameLayout {
        private boolean bounced;
        private final GradientClip clip;
        private final TextView current;
        private final TextView next;
        private final TextView prev;
        private final RectF rect;
        private final Theme.ResourcesProvider resourcesProvider;
        private final Utilities.Callback3<CharSequence, View, Boolean> showHint;

        public TextViewRoll(Context context, Theme.ResourcesProvider resourcesProvider, Utilities.Callback3<CharSequence, View, Boolean> callback3) {
            super(context);
            this.clip = new GradientClip();
            this.rect = new RectF();
            this.showHint = callback3;
            this.resourcesProvider = resourcesProvider;
            TextView textView = new TextView(context, resourcesProvider);
            this.prev = textView;
            TextView textView2 = new TextView(context, resourcesProvider);
            this.current = textView2;
            TextView textView3 = new TextView(context, resourcesProvider);
            this.next = textView3;
            addView(textView, LayoutHelper.createFrame(-2, -2.0f, 51, 12.66f, 5.33f, 12.66f, 5.33f));
            addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 51, 12.66f, 5.33f, 12.66f, 5.33f));
            addView(textView3, LayoutHelper.createFrame(-2, -2.0f, 51, 12.66f, 5.33f, 12.66f, 5.33f));
        }

        private void bounce(final View view) {
            if (this.bounced || view == null) {
                return;
            }
            this.bounced = true;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$TextViewRoll$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StarGiftSheet.TextViewRoll.m20084$r8$lambda$iWC1ta3hFA7tVuFzO3Fxhu3ze8(view, valueAnimator);
                }
            });
            valueAnimatorOfFloat.setDuration(180L);
            valueAnimatorOfFloat.start();
        }

        /* JADX INFO: renamed from: $r8$lambda$iWC1ta3hFA-7tVuFzO3Fxhu3ze8, reason: not valid java name */
        public static /* synthetic */ void m20084$r8$lambda$iWC1ta3hFA7tVuFzO3Fxhu3ze8(View view, ValueAnimator valueAnimator) {
            float fSin = (((float) Math.sin(((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 3.141592653589793d)) * 0.03f) + 1.0f;
            view.setScaleX(fSin);
            view.setScaleY(fSin);
        }

        public static class TextView extends ButtonSpan.TextViewButtons {
            private String lastName;
            private int lastRarity;
            private final Theme.ResourcesProvider resourcesProvider;

            public TextView(Context context, Theme.ResourcesProvider resourcesProvider) {
                super(context);
                this.resourcesProvider = resourcesProvider;
                setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                setTextSize(1, 14.0f);
                setPadding(0, AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f));
            }

            public void set(String str, final int i, final Utilities.Callback3<CharSequence, View, Boolean> callback3) {
                if (str == this.lastName && this.lastRarity == i) {
                    return;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(Emoji.replaceEmoji(str, getPaint().getFontMetricsInt(), false));
                spannableStringBuilder.append((CharSequence) " ").append(ButtonSpan.make(AffiliateProgramFragment.percents(i), callback3 != null ? new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$TextViewRoll$TextView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$set$0(callback3, i);
                    }
                } : null, this.resourcesProvider));
                setText(spannableStringBuilder);
                this.lastName = str;
                this.lastRarity = i;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$set$0(Utilities.Callback3 callback3, int i) {
                callback3.run(LocaleController.formatString(C2573R.string.Gift2RarityHint, AffiliateProgramFragment.percents(i)), this, Boolean.FALSE);
            }
        }

        public void update(Roller.Attr attr, float f, boolean z, Roller.Attr attr2, float f2, boolean z2, Roller.Attr attr3, float f3, boolean z3) {
            if (attr != null) {
                if (z) {
                    f = Math.max(0.5f, f);
                }
                this.prev.setVisibility(0);
                this.prev.set(attr.name, attr.rarity_permille, this.showHint);
                this.prev.setTranslationY(AndroidUtilities.dp(36.0f) * ((f - 0.5f) / 1.5f));
            } else {
                this.prev.setVisibility(4);
            }
            if (attr2 != null) {
                float fMax = ((z2 ? Math.max(0.5f, f2) : f2) - 0.5f) / 1.5f;
                this.current.setVisibility(0);
                this.current.set(attr2.name, attr2.rarity_permille, this.showHint);
                this.current.setTranslationY(AndroidUtilities.dp(36.0f) * fMax);
                if (z2 && fMax <= 0.0f) {
                    bounce(this.current);
                }
            } else {
                this.current.setVisibility(4);
            }
            if (attr3 != null) {
                float fMax2 = f3;
                if (z3) {
                    fMax2 = Math.max(0.5f, fMax2);
                }
                this.next.setVisibility(0);
                this.next.set(attr3.name, attr3.rarity_permille, this.showHint);
                this.next.setTranslationY(AndroidUtilities.dp(36.0f) * ((fMax2 - 0.5f) / 1.5f));
                return;
            }
            this.next.setVisibility(4);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(37.66f), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
            super.dispatchDraw(canvas);
            canvas.save();
            this.rect.set(0.0f, 0.0f, getWidth(), AndroidUtilities.dp(8.0f));
            this.clip.draw(canvas, this.rect, 1, 1.0f);
            this.rect.set(0.0f, getHeight() - AndroidUtilities.dp(8.0f), getWidth(), getHeight());
            this.clip.draw(canvas, this.rect, 3, 1.0f);
            canvas.restore();
            canvas.restore();
        }
    }

    public StarGiftSheet set(String str, TL_stars.TL_starGiftUnique tL_starGiftUnique, StarsController.IGiftsList iGiftsList) {
        Roller roller;
        this.slug = str;
        this.slugStarGift = tL_starGiftUnique;
        this.giftsList = iGiftsList;
        this.resale = (tL_starGiftUnique.resell_amount == null || isMine(this.currentAccount, DialogObject.getPeerDialogId(tL_starGiftUnique.owner_id))) ? false : true;
        if (!this.rolling && (roller = this.roller) != null && roller.isRolling() && this.roller.rollingGift != null && this.roller.rollingGift.id != tL_starGiftUnique.id) {
            this.roller.detach();
            this.roller = null;
            this.topView.imageLayout.setAlpha(1.0f);
            this.topView.imagesRollView.setAlpha(0.0f);
        }
        this.actionView.set(this.currentAccount, this.savedStarGift);
        set(tL_starGiftUnique, false);
        String str2 = tL_starGiftUnique.owner_address;
        final String str3 = tL_starGiftUnique.gift_address;
        boolean z = tL_starGiftUnique.host_id != null;
        if (z && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.beforeTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2InBlockchain), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$set$46(str3);
                }
            }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
            this.beforeTableTextView.setVisibility(0);
            this.beforeTableTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, this.resourcesProvider));
        } else {
            this.beforeTableTextView.setVisibility(8);
        }
        if (!z && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.afterTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2InBlockchain), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$set$47(str3);
                }
            }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
            this.afterTableTextView.setVisibility(0);
        } else {
            this.afterTableTextView.setVisibility(8);
        }
        if (this.resale) {
            setButtonTextResale(tL_starGiftUnique);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$set$48(view);
                }
            });
        }
        if (this.firstSet) {
            switchPage(0, false);
            this.layoutManager.scrollToPosition(1);
            this.firstSet = false;
        }
        updateViewPager();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$46(String str) {
        Browser.openUrlInSystemBrowser(getContext(), MessagesController.getInstance(this.currentAccount).tonBlockchainExplorerUrl + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$47(String str) {
        Browser.openUrlInSystemBrowser(getContext(), MessagesController.getInstance(this.currentAccount).tonBlockchainExplorerUrl + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$48(View view) {
        onBuyPressed();
    }

    private CharSequence releasedByText(TL_stars.StarGift starGift) {
        if (starGift == null || (starGift instanceof TL_stars.TL_starGiftUnique)) {
            return null;
        }
        return releasedByText(starGift.released_by);
    }

    private CharSequence releasedByText(TLRPC.Peer peer) {
        if (peer == null) {
            return null;
        }
        final String publicUsername = DialogObject.getPublicUsername(MessagesController.getInstance(this.currentAccount).getUserOrChat(DialogObject.getPeerDialogId(peer)));
        if (TextUtils.isEmpty(publicUsername)) {
            return null;
        }
        return AndroidUtilities.replaceSingleTag(LocaleController.formatString(C2573R.string.Gift2ReleasedBy2, "@" + publicUsername), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$releasedByText$49(publicUsername);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releasedByText$49(String str) {
        lambda$new$0();
        Browser.openUrl(getContext(), "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + str);
    }

    public static SpannableStringBuilder replaceSingleTagToLink(String str, final Runnable runnable) {
        int i;
        int i2;
        int iIndexOf = str.indexOf("**");
        int iIndexOf2 = str.indexOf("**", iIndexOf + 1);
        String strReplace = str.replace("**", _UrlKt.FRAGMENT_ENCODE_SET);
        if (iIndexOf < 0 || iIndexOf2 < 0 || (i2 = iIndexOf2 - iIndexOf) <= 2) {
            iIndexOf = -1;
            i = 0;
        } else {
            i = i2 - 2;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strReplace);
        if (iIndexOf >= 0) {
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stars.StarGiftSheet.14
                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setUnderlineText(false);
                    textPaint.setColor(-1);
                }

                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, iIndexOf, i + iIndexOf, 0);
        }
        return spannableStringBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x017d  */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(final TL_stars.TL_starGiftUnique tL_starGiftUnique, boolean z) {
        boolean z2;
        boolean z3;
        Class cls;
        TL_stars.StarGift starGift;
        TLRPC.Document document;
        int i;
        SpannableString spannableString;
        Spannable spannableReplaceAnimatedEmoji;
        final CharSequence spannable;
        TLRPC.Message message;
        Roller roller;
        final long peerDialogId = DialogObject.getPeerDialogId(tL_starGiftUnique.owner_id);
        final long peerDialogId2 = DialogObject.getPeerDialogId(tL_starGiftUnique.host_id);
        this.title = tL_starGiftUnique.title + " #" + LocaleController.formatNumber(tL_starGiftUnique.num, ',');
        if (!this.rolling && (roller = this.roller) != null && roller.isRolling() && this.roller.rollingGift != null && this.roller.rollingGift.id != tL_starGiftUnique.id) {
            this.roller.detach();
            this.roller = null;
            this.topView.imageLayout.setAlpha(1.0f);
            this.topView.imagesRollView.setAlpha(0.0f);
        } else if (this.rolling && this.roller == null) {
            this.roller = new Roller(this.topView);
        }
        TopView topView = this.topView;
        boolean zIsMineWithActions = isMineWithActions(this.currentAccount, peerDialogId);
        boolean zIsMineWithActions2 = isMineWithActions(this.currentAccount, peerDialogId2);
        boolean zIsWorn = isWorn(this.currentAccount, getUniqueGift());
        if (getLink() != null) {
            z3 = false;
            z2 = true;
        } else {
            z2 = false;
            z3 = false;
        }
        topView.setGift(tL_starGiftUnique, zIsMineWithActions, zIsMineWithActions2, zIsWorn, z2, this.rolling);
        TL_stars.starGiftAttributeModel stargiftattributemodel = (TL_stars.starGiftAttributeModel) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeModel.class);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) tL_starGiftUnique.title);
        spannableStringBuilder.append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) ("#" + LocaleController.formatNumber(tL_starGiftUnique.num, ',')));
        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.85f), length, spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new EllipsizeSpanAnimator.TextAlphaSpan(190), length, spannableStringBuilder.length(), 33);
        TopView topView2 = this.topView;
        TLRPC.Peer peer = tL_starGiftUnique.released_by;
        topView2.setText(0, spannableStringBuilder, peer == null ? stargiftattributemodel != null ? stargiftattributemodel.name : _UrlKt.FRAGMENT_ENCODE_SET : null, releasedByText(peer), null);
        this.ownerTextView = null;
        this.tableView.clear();
        if (!z) {
            TLRPC.Peer peer2 = tL_starGiftUnique.host_id;
            String str = tL_starGiftUnique.owner_address;
            if (peer2 != null) {
                if (!TextUtils.isEmpty(str)) {
                    this.tableView.addWalletAddressRow(LocaleController.getString(C2573R.string.Gift2HostAddress), tL_starGiftUnique.owner_address, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda78
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$set$51();
                        }
                    });
                }
                if (peerDialogId2 != 0) {
                    TableView tableView = this.tableView;
                    String string = LocaleController.getString(C2573R.string.Gift2Host);
                    int i2 = this.currentAccount;
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda82
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$set$52(peerDialogId2);
                        }
                    };
                    cls = TL_stars.starGiftAttributeModel.class;
                    this.ownerTextView = ((TableView.TableRowContent) tableView.addRowUserWithEmojiStatus(string, i2, peerDialogId2, runnable).getChildAt(1)).getChildAt(0);
                } else {
                    cls = TL_stars.starGiftAttributeModel.class;
                }
            } else {
                cls = TL_stars.starGiftAttributeModel.class;
                if (!TextUtils.isEmpty(str)) {
                    this.tableView.addWalletAddressRow(LocaleController.getString(C2573R.string.Gift2Owner), tL_starGiftUnique.owner_address, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda83
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$set$53();
                        }
                    });
                } else if (peerDialogId == 0 && tL_starGiftUnique.owner_name != null) {
                    this.tableView.addRow(LocaleController.getString(C2573R.string.Gift2Owner), tL_starGiftUnique.owner_name);
                } else if (peerDialogId != 0) {
                    this.ownerTextView = ((TableView.TableRowContent) this.tableView.addRowUserWithEmojiStatus(LocaleController.getString(C2573R.string.Gift2Owner), this.currentAccount, peerDialogId, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda84
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$set$54(peerDialogId);
                        }
                    }).getChildAt(1)).getChildAt(0);
                }
            }
        }
        addAttributeRow(StarsController.findAttribute(tL_starGiftUnique.attributes, cls));
        addAttributeRow(StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributePattern.class));
        addAttributeRow(StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class));
        if (!z) {
            if (this.messageObject != null) {
                boolean z4 = this.messageObjectRepolled;
                TableView tableView2 = this.tableView;
                if (!z4) {
                    TextView textView = (TextView) ((TableView.TableRowContent) tableView2.addRow(LocaleController.getString(C2573R.string.Gift2Quantity), _UrlKt.FRAGMENT_ENCODE_SET).getChildAt(1)).getChildAt(0);
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("x ");
                    LoadingSpan loadingSpan = new LoadingSpan(textView, AndroidUtilities.dp(90.0f), 0, this.resourcesProvider);
                    int i3 = Theme.key_windowBackgroundWhiteBlackText;
                    loadingSpan.setColors(Theme.multAlpha(Theme.getColor(i3, this.resourcesProvider), 0.21f), Theme.multAlpha(Theme.getColor(i3, this.resourcesProvider), 0.08f));
                    spannableStringBuilder2.setSpan(loadingSpan, 0, 1, 33);
                    textView.setText(spannableStringBuilder2, TextView.BufferType.SPANNABLE);
                    repollMessage();
                } else {
                    tableView2.addRow(LocaleController.getString(C2573R.string.Gift2Quantity), LocaleController.formatPluralStringComma("Gift2QuantityIssued1", tL_starGiftUnique.availability_issued) + LocaleController.formatPluralStringComma("Gift2QuantityIssued2", tL_starGiftUnique.availability_total));
                }
            } else {
                this.tableView.addRow(LocaleController.getString(C2573R.string.Gift2Quantity), LocaleController.formatPluralStringComma("Gift2QuantityIssued1", tL_starGiftUnique.availability_issued) + LocaleController.formatPluralStringComma("Gift2QuantityIssued2", tL_starGiftUnique.availability_total));
            }
            if (!TextUtils.isEmpty(tL_starGiftUnique.slug) && (tL_starGiftUnique.flags & 256) != 0) {
                String currency = BillingController.getInstance().formatCurrency(tL_starGiftUnique.value_amount, tL_starGiftUnique.value_currency, BillingController.getInstance().getCurrencyExp(tL_starGiftUnique.value_currency), true);
                final String currency2 = BillingController.getInstance().formatCurrency(tL_starGiftUnique.value_amount, tL_starGiftUnique.value_currency);
                this.tableView.addRow(LocaleController.getString(C2573R.string.GiftValue2), "~" + currency, LocaleController.getString(C2573R.string.GiftValue2LearnMore), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda85
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$set$55(tL_starGiftUnique, currency2);
                    }
                });
            }
        }
        TL_stars.starGiftAttributeOriginalDetails stargiftattributeoriginaldetails = (TL_stars.starGiftAttributeOriginalDetails) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeOriginalDetails.class);
        if (stargiftattributeoriginaldetails != null) {
            if ((stargiftattributeoriginaldetails.flags & 1) != 0) {
                final long peerDialogId3 = DialogObject.getPeerDialogId(stargiftattributeoriginaldetails.sender_id);
                spannableString = new SpannableString(DialogObject.getName(peerDialogId3));
                i = 0;
                spannableString.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stars.StarGiftSheet.15
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        StarGiftSheet.this.lambda$set$87(peerDialogId3);
                    }

                    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                    public void updateDrawState(TextPaint textPaint) {
                        textPaint.setColor(textPaint.linkColor);
                    }
                }, 0, spannableString.length(), 33);
            } else {
                i = 0;
                spannableString = null;
            }
            final long peerDialogId4 = DialogObject.getPeerDialogId(stargiftattributeoriginaldetails.recipient_id);
            SpannableString spannableString2 = new SpannableString(DialogObject.getName(peerDialogId4));
            spannableString2.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stars.StarGiftSheet.16
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    StarGiftSheet.this.lambda$set$87(peerDialogId4);
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setColor(textPaint.linkColor);
                }
            }, i, spannableString2.length(), 33);
            if (stargiftattributeoriginaldetails.message != null) {
                TextPaint textPaint = new TextPaint(1);
                textPaint.setTextSize(AndroidUtilities.dp(14.0f));
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(stargiftattributeoriginaldetails.message.text);
                MessageObject.addEntitiesToText(spannableStringBuilder3, stargiftattributeoriginaldetails.message.entities, false, false, false, false);
                spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(spannableStringBuilder3, textPaint.getFontMetricsInt(), false), stargiftattributeoriginaldetails.message.entities, textPaint.getFontMetricsInt());
            } else {
                spannableReplaceAnimatedEmoji = null;
            }
            String strReplaceAll = LocaleController.getInstance().getFormatterYear().format(((long) stargiftattributeoriginaldetails.date) * 1000).replaceAll("\\.", "/");
            if (stargiftattributeoriginaldetails.sender_id == stargiftattributeoriginaldetails.recipient_id) {
                if (spannableReplaceAnimatedEmoji == null) {
                    spannable = LocaleController.formatSpannable(C2573R.string.Gift2AttributeOriginalDetailsSelf, spannableString, strReplaceAll);
                } else {
                    spannable = LocaleController.formatSpannable(C2573R.string.Gift2AttributeOriginalDetailsSelfComment, spannableString, strReplaceAll, spannableReplaceAnimatedEmoji);
                }
            } else if (spannableString != null) {
                if (spannableReplaceAnimatedEmoji == null) {
                    spannable = LocaleController.formatSpannable(C2573R.string.Gift2AttributeOriginalDetails, spannableString, spannableString2, strReplaceAll);
                } else {
                    spannable = LocaleController.formatSpannable(C2573R.string.Gift2AttributeOriginalDetailsComment, spannableString, spannableString2, strReplaceAll, spannableReplaceAnimatedEmoji);
                }
            } else if (spannableReplaceAnimatedEmoji == null) {
                spannable = LocaleController.formatSpannable(C2573R.string.Gift2AttributeOriginalDetailsNoSender, spannableString2, strReplaceAll);
            } else {
                spannable = LocaleController.formatSpannable(C2573R.string.Gift2AttributeOriginalDetailsNoSenderComment, spannableString2, strReplaceAll, spannableReplaceAnimatedEmoji);
            }
            if (isMine(this.currentAccount, DialogObject.getPeerDialogId(tL_starGiftUnique.owner_id))) {
                TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
                if (savedStarGift == null || savedStarGift.drop_original_details_stars < 0) {
                    MessageObject messageObject = this.messageObject;
                    if (messageObject != null && (message = messageObject.messageOwner) != null) {
                        TLRPC.MessageAction messageAction = message.action;
                        if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) || ((TLRPC.TL_messageActionStarGiftUnique) messageAction).drop_original_details_stars < 0) {
                        }
                    }
                    TableView.TableRowFullContent tableRowFullContentAddFullRow = this.tableView.addFullRow(spannable);
                    tableRowFullContentAddFullRow.setFilled(true);
                    SpoilersTextView spoilersTextView = (SpoilersTextView) tableRowFullContentAddFullRow.getChildAt(0);
                    spoilersTextView.setTextSize(1, 12.0f);
                    spoilersTextView.setGravity(17);
                }
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setPadding(AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f), AndroidUtilities.dp(12.66f), AndroidUtilities.dp(9.33f));
                linearLayout.setOrientation(0);
                SpoilersTextView spoilersTextView2 = new SpoilersTextView(getContext());
                spoilersTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
                spoilersTextView2.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, this.resourcesProvider));
                spoilersTextView2.setTextSize(1, 12.0f);
                spoilersTextView2.setGravity(3);
                spoilersTextView2.setText(spannable);
                linearLayout.addView(spoilersTextView2, LayoutHelper.createLinear(-1, -2, 1.0f, 19));
                ImageView imageView = new ImageView(getContext());
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                int i4 = Theme.key_featuredStickers_addButton;
                imageView.setBackground(Theme.createRadSelectorDrawable(Theme.multAlpha(Theme.getColor(i4, this.resourcesProvider), 0.1f), 6, 6));
                imageView.setImageResource(C2573R.drawable.menu_delete_old);
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i4, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
                ScaleStateListAnimator.apply(imageView);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda86
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$set$56(spannable, view);
                    }
                });
                linearLayout.addView(imageView, LayoutHelper.createLinear(32, 32, 0.0f, 21, 8, 0, 0, 0));
                TableRow tableRow = new TableRow(getContext());
                TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-2, -1);
                layoutParams.span = 2;
                tableRow.addView(new TableView.TableRowFullContent(this.tableView, linearLayout, true), layoutParams);
                this.tableView.addView(tableRow);
            } else {
                TableView.TableRowFullContent tableRowFullContentAddFullRow2 = this.tableView.addFullRow(spannable);
                tableRowFullContentAddFullRow2.setFilled(true);
                SpoilersTextView spoilersTextView3 = (SpoilersTextView) tableRowFullContentAddFullRow2.getChildAt(0);
                spoilersTextView3.setTextSize(1, 12.0f);
                spoilersTextView3.setGravity(17);
            }
        }
        Roller roller2 = this.roller;
        if (roller2 == null || !roller2.isRolling()) {
            if (!isMine(this.currentAccount, DialogObject.getPeerDialogId(tL_starGiftUnique.owner_id)) && tL_starGiftUnique.resell_amount != null) {
                this.button.setFilled(true);
                setButtonTextResale(tL_starGiftUnique);
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda87
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$set$57(view);
                    }
                });
            } else if (this.upgradedOnce && this.viewPager != null && this.giftsList != null && getListPosition() >= 0 && this.giftsList.findGiftToUpgrade(getListPosition()) >= 0) {
                this.button.setFilled(false);
                final int iFindGiftToUpgrade = this.giftsList.findGiftToUpgrade(getListPosition());
                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                spannableStringBuilder4.append((CharSequence) LocaleController.getString(C2573R.string.Gift2UpgradeNext));
                Object obj = this.giftsList.get(iFindGiftToUpgrade);
                if ((obj instanceof TL_stars.SavedStarGift) && (starGift = ((TL_stars.SavedStarGift) obj).gift) != null && (document = starGift.getDocument()) != null) {
                    spannableStringBuilder4.append((CharSequence) " e");
                    spannableStringBuilder4.setSpan(new AnimatedEmojiSpan(document, this.button.getTextPaint().getFontMetricsInt()), spannableStringBuilder4.length() - 1, spannableStringBuilder4.length(), 33);
                }
                this.button.setText(spannableStringBuilder4, !this.firstSet);
                this.button.setSubText(null, !this.firstSet);
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda88
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$set$58(iFindGiftToUpgrade, view);
                    }
                });
            } else {
                this.button.setFilled(true);
                this.button.setText(LocaleController.getString(C2573R.string.OK), !this.firstSet);
                this.button.setSubText(null, !this.firstSet);
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda89
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$set$59(view);
                    }
                });
            }
        }
        this.actionBar.setTitle(getTitle());
        Roller roller3 = this.roller;
        if (roller3 == null || !roller3.set(tL_starGiftUnique, this.rolling, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$set$62();
            }
        }, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$set$63();
            }
        })) {
            return;
        }
        this.topView.imageLayout.setAlpha(0.0f);
        this.topView.imagesRollView.setAlpha(1.0f);
        this.button.setText(LocaleController.getString(C2573R.string.GiftSkipAnimation), true);
        this.button.setFilled(true);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda80
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$set$64(view);
            }
        });
        this.recyclerListView.scrollToPosition(this.adapter.getItemCount() - 1);
        this.recyclerListView.post(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$set$65();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$51() {
        getBulletinFactory().createSimpleBulletin(C2573R.raw.copy, LocaleController.getString(C2573R.string.WalletAddressCopied)).show(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$53() {
        getBulletinFactory().createSimpleBulletin(C2573R.raw.copy, LocaleController.getString(C2573R.string.WalletAddressCopied)).show(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$55(TL_stars.TL_starGiftUnique tL_starGiftUnique, String str) {
        openValueStats(tL_starGiftUnique.gift_id, tL_starGiftUnique.title, getGiftName(), str, tL_starGiftUnique.getDocument(), tL_starGiftUnique.slug);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$56(CharSequence charSequence, View view) {
        lambda$showDeleteDescriptionAlert$67(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$57(View view) {
        onBuyPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$58(int i, View view) {
        this.overrideNextIndex = i;
        ViewPagerFixed viewPagerFixed = this.viewPager;
        viewPagerFixed.scrollToPosition(viewPagerFixed.getCurrentPosition() + (i > getListPosition() ? 1 : -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$59(View view) {
        lambda$openCrafting$8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$62() {
        TL_stars.StarGift starGift;
        TLRPC.Document document;
        ImageReceiver imageReceiver = (this.roller.modelRoller == null || this.roller.modelRoller.current == 0) ? null : ((Roller.Sticker) this.roller.modelRoller.current).imageReceiver;
        BackupImageView backupImageView = this.topView.imageView[0];
        if (imageReceiver != null && backupImageView != null && backupImageView.getImageReceiver() != null) {
            RLottieDrawable lottieAnimation = imageReceiver.getLottieAnimation();
            RLottieDrawable lottieAnimation2 = backupImageView.getImageReceiver().getLottieAnimation();
            if (lottieAnimation2 != null && lottieAnimation != null) {
                lottieAnimation2.setProgress(lottieAnimation.getProgress(), false);
            } else if (lottieAnimation2 == null && lottieAnimation != null) {
                imageReceiver.clearImage();
                backupImageView.setImageDrawable(lottieAnimation);
            }
        }
        this.topView.imageLayout.setAlpha(1.0f);
        this.topView.imagesRollView.setAlpha(0.0f);
        if (this.upgradedOnce && this.viewPager != null && this.giftsList != null && getListPosition() >= 0 && this.giftsList.findGiftToUpgrade(getListPosition()) >= 0) {
            this.button.setFilled(false);
            final int iFindGiftToUpgrade = this.giftsList.findGiftToUpgrade(getListPosition());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.Gift2UpgradeNext));
            Object obj = this.giftsList.get(iFindGiftToUpgrade);
            if ((obj instanceof TL_stars.SavedStarGift) && (starGift = ((TL_stars.SavedStarGift) obj).gift) != null && (document = starGift.getDocument()) != null) {
                spannableStringBuilder.append((CharSequence) " e");
                spannableStringBuilder.setSpan(new AnimatedEmojiSpan(document, this.button.getTextPaint().getFontMetricsInt()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
            }
            this.button.setText(spannableStringBuilder, true);
            this.button.setSubText(null, true);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda107
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$set$60(iFindGiftToUpgrade, view);
                }
            });
            return;
        }
        this.button.setFilled(true);
        this.button.setText(LocaleController.getString(C2573R.string.OK), true);
        this.button.setSubText(null, true);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda108
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$set$61(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$60(int i, View view) {
        this.overrideNextIndex = i;
        ViewPagerFixed viewPagerFixed = this.viewPager;
        viewPagerFixed.scrollToPosition(viewPagerFixed.getCurrentPosition() + (i > getListPosition() ? 1 : -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$61(View view) {
        lambda$openCrafting$8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$63() {
        String str;
        if (getGift() == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str = getGift().title + " #" + LocaleController.formatNumber(getGift().num, ',');
        }
        getBulletinFactory().createSimpleBulletin(C2573R.raw.gift_upgrade, LocaleController.getString(C2573R.string.Gift2UpgradedTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2UpgradedText, str))).setDuration(5000).ignoreDetach().show();
        FireworksOverlay fireworksOverlay = this.fireworksOverlay;
        if (fireworksOverlay != null) {
            fireworksOverlay.start(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$64(View view) {
        this.roller.skip();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$65() {
        this.recyclerListView.scrollToPosition(this.adapter.getItemCount() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showDeleteDescriptionAlert, reason: merged with bridge method [inline-methods] */
    public void lambda$showDeleteDescriptionAlert$67(final CharSequence charSequence) {
        final TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        TL_stars.InputSavedStarGift inputStarGift = getInputStarGift();
        if (inputStarGift == null || uniqueGift == null) {
            return;
        }
        final TLRPC.TL_inputInvoiceStarGiftDropOriginalDetails tL_inputInvoiceStarGiftDropOriginalDetails = new TLRPC.TL_inputInvoiceStarGiftDropOriginalDetails();
        tL_inputInvoiceStarGiftDropOriginalDetails.stargift = inputStarGift;
        TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
        tL_payments_getPaymentForm.invoice = tL_inputInvoiceStarGiftDropOriginalDetails;
        JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(this.resourcesProvider);
        if (jSONObjectMakeThemeParams != null) {
            TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
            tL_payments_getPaymentForm.theme_params = tL_dataJSON;
            tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
            tL_payments_getPaymentForm.flags |= 1;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda116
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$showDeleteDescriptionAlert$72(charSequence, uniqueGift, tL_inputInvoiceStarGiftDropOriginalDetails, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDeleteDescriptionAlert$72(final CharSequence charSequence, final TL_stars.TL_starGiftUnique tL_starGiftUnique, final TLRPC.TL_inputInvoiceStarGiftDropOriginalDetails tL_inputInvoiceStarGiftDropOriginalDetails, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda133
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showDeleteDescriptionAlert$71(tLObject, charSequence, tL_starGiftUnique, tL_inputInvoiceStarGiftDropOriginalDetails, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDeleteDescriptionAlert$71(TLObject tLObject, final CharSequence charSequence, final TL_stars.TL_starGiftUnique tL_starGiftUnique, final TLRPC.TL_inputInvoiceStarGiftDropOriginalDetails tL_inputInvoiceStarGiftDropOriginalDetails, TLRPC.TL_error tL_error) {
        if (!(tLObject instanceof TLRPC.PaymentForm)) {
            if (tL_error != null) {
                getBulletinFactory().showForError(tL_error);
                return;
            }
            return;
        }
        final TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
        ArrayList<TLRPC.TL_labeledPrice> arrayList = paymentForm.invoice.prices;
        int size = arrayList.size();
        final long j = 0;
        int i = 0;
        while (i < size) {
            TLRPC.TL_labeledPrice tL_labeledPrice = arrayList.get(i);
            i++;
            j += tL_labeledPrice.amount;
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(23.0f), 0, AndroidUtilities.dp(23.0f), 0);
        TextView textViewMakeTextView = TextHelper.makeTextView(getContext(), 16.0f, Theme.key_dialogTextBlack, false);
        textViewMakeTextView.setText(LocaleController.getString(C2573R.string.Gift2RemoveDescriptionText));
        linearLayout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 16.0f));
        TableView tableView = new TableView(getContext(), this.resourcesProvider);
        TableView.TableRowFullContent tableRowFullContentAddFullRow = tableView.addFullRow(charSequence);
        tableRowFullContentAddFullRow.setFilled(true);
        SpoilersTextView spoilersTextView = (SpoilersTextView) tableRowFullContentAddFullRow.getChildAt(0);
        spoilersTextView.setTextSize(1, 12.0f);
        spoilersTextView.setGravity(17);
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.Gift2RemoveDescriptionTitle)).setView(linearLayout).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).setPositiveButton(StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.Gift2RemoveDescriptionButton, Integer.valueOf((int) j))), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda173
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$showDeleteDescriptionAlert$70(tL_starGiftUnique, paymentForm, tL_inputInvoiceStarGiftDropOriginalDetails, j, charSequence, alertDialog, i2);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDeleteDescriptionAlert$70(final TL_stars.TL_starGiftUnique tL_starGiftUnique, TLRPC.PaymentForm paymentForm, TLRPC.TL_inputInvoiceStarGiftDropOriginalDetails tL_inputInvoiceStarGiftDropOriginalDetails, final long j, final CharSequence charSequence, final AlertDialog alertDialog, int i) {
        if (tL_starGiftUnique == null) {
            return;
        }
        final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(-1);
        progressMakeButtonLoading.init();
        TL_stars.TL_payments_sendStarsForm tL_payments_sendStarsForm = new TL_stars.TL_payments_sendStarsForm();
        tL_payments_sendStarsForm.form_id = paymentForm.form_id;
        tL_payments_sendStarsForm.invoice = tL_inputInvoiceStarGiftDropOriginalDetails;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_sendStarsForm, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda191
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$showDeleteDescriptionAlert$69(progressMakeButtonLoading, alertDialog, tL_starGiftUnique, j, charSequence, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDeleteDescriptionAlert$69(final Browser.Progress progress, final AlertDialog alertDialog, final TL_stars.TL_starGiftUnique tL_starGiftUnique, final long j, final CharSequence charSequence, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda200
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showDeleteDescriptionAlert$68(progress, alertDialog, tLObject, tL_starGiftUnique, tL_error, j, charSequence);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDeleteDescriptionAlert$68(Browser.Progress progress, AlertDialog alertDialog, TLObject tLObject, final TL_stars.TL_starGiftUnique tL_starGiftUnique, TLRPC.TL_error tL_error, long j, final CharSequence charSequence) {
        progress.end();
        alertDialog.dismiss();
        if (tLObject instanceof TLRPC.TL_payments_paymentResult) {
            int i = 0;
            while (i < tL_starGiftUnique.attributes.size()) {
                if (tL_starGiftUnique.attributes.get(i) instanceof TL_stars.starGiftAttributeOriginalDetails) {
                    tL_starGiftUnique.attributes.remove(i);
                    i--;
                }
                i++;
            }
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            set(tL_starGiftUnique, savedStarGift != null ? savedStarGift.refunded : false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showDeleteDescriptionAlert$66(tL_starGiftUnique);
                }
            });
            return;
        }
        if (tL_error != null && "BALANCE_TOO_LOW".equalsIgnoreCase(tL_error.text)) {
            new StarsIntroActivity.StarsNeededSheet(getContext(), this.resourcesProvider, j, 16, null, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showDeleteDescriptionAlert$67(charSequence);
                }
            }, 0L).show();
        } else if (tL_error != null) {
            getBulletinFactory().showForError(tL_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDeleteDescriptionAlert$66(TL_stars.TL_starGiftUnique tL_starGiftUnique) {
        getBulletinFactory().createSimpleBulletin(C2573R.raw.ic_delete, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftRemovedDescription, tL_starGiftUnique.title + " #" + tL_starGiftUnique.num))).show();
    }

    private void setButtonTextResale(TL_stars.StarGift starGift) {
        AmountUtils$Amount resellAmount = starGift.getResellAmount(AmountUtils$Currency.STARS);
        if (starGift.resale_ton_only) {
            this.button.setText(StarsIntroActivity.replaceStars(true, (CharSequence) LocaleController.formatString(C2573R.string.ResellGiftBuyTON, starGift.getResellAmount(AmountUtils$Currency.TON).asFormatString())), !this.firstSet);
            this.button.setSubText(StarsIntroActivity.replaceStars(LocaleController.formatPluralStringComma("ResellGiftBuyEq", (int) resellAmount.asDecimal())), !this.firstSet);
        } else {
            this.button.setText(StarsIntroActivity.replaceStars(LocaleController.formatPluralStringComma("ResellGiftBuy", (int) resellAmount.asDecimal())), !this.firstSet);
            this.button.setSubText(null, !this.firstSet);
        }
    }

    public StarGiftSheet setOnGiftUpdatedListener(Runnable runnable) {
        this.onGiftUpdatedListener = runnable;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0301 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x051b  */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v22, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v23 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StarGiftSheet set(TL_stars.SavedStarGift savedStarGift, StarsController.IGiftsList iGiftsList) {
        long j;
        boolean z;
        CharSequence charSequence;
        String string;
        CharSequence charSequenceConcat;
        String string2;
        boolean z2;
        CharSequence charSequenceReplaceArrows;
        String str;
        TL_stars.StarGift starGift;
        TL_stars.StarGift starGift2;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        boolean z3;
        String str2;
        TL_stars.StarGift starGift3;
        TLRPC.Document document;
        final String str3;
        boolean z4;
        String string3;
        String string4;
        CharSequence charSequenceReplaceTags;
        TL_stars.StarGift starGift4;
        ?? r6;
        Roller roller;
        if (savedStarGift == null) {
            return this;
        }
        this.myProfile = isMine(this.currentAccount, this.dialogId);
        this.savedStarGift = savedStarGift;
        this.giftsList = iGiftsList;
        this.messageObject = null;
        if (!this.rolling && (roller = this.roller) != null && roller.isRolling() && this.roller.rollingGift != null) {
            this.roller.detach();
            this.roller = null;
            this.topView.imageLayout.setVisibility(0);
            this.topView.imagesRollView.setVisibility(4);
        }
        this.actionView.set(this.currentAccount, savedStarGift);
        String shortName = DialogObject.getShortName(this.dialogId);
        final long peerDialogId = DialogObject.getPeerDialogId(savedStarGift.from_id);
        boolean zIsBot = UserObject.isBot(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId)));
        int currentTime = MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - savedStarGift.date);
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if ((savedStarGift.flags & 2) == 0) {
            peerDialogId = UserObject.ANONYMOUS;
        }
        long j2 = this.dialogId;
        boolean z5 = j2 < 0;
        TLRPC.TL_textWithEntities tL_textWithEntities2 = savedStarGift.message;
        boolean z6 = savedStarGift.refunded;
        TL_stars.StarGift starGift5 = savedStarGift.gift;
        if (starGift5 instanceof TL_stars.TL_starGiftUnique) {
            str2 = starGift5.owner_address;
            str3 = starGift5.gift_address;
            z4 = starGift5.host_id != null;
            set((TL_stars.TL_starGiftUnique) starGift5, z6);
        } else {
            boolean z7 = this.myProfile && clientUserId == peerDialogId && j2 >= 0;
            this.topView.setGift(starGift5, false, false, isWorn(this.currentAccount, getUniqueGift()), getLink() != null, false);
            this.tableView.clear();
            if (z7) {
                if (savedStarGift.gift_num == 0 || (starGift4 = savedStarGift.gift) == null || starGift4.title == null) {
                    j = clientUserId;
                    string4 = LocaleController.getString(C2573R.string.Gift2TitleSaved);
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(savedStarGift.gift.title);
                    sb.append(" #");
                    j = clientUserId;
                    sb.append(LocaleController.formatNumber(savedStarGift.gift_num, ','));
                    string4 = sb.toString();
                }
                this.title = string4;
                TopView topView = this.topView;
                if (z6) {
                    z = z6;
                    charSequenceReplaceTags = null;
                } else if (savedStarGift.can_upgrade) {
                    charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.Gift2SelfInfoUpgrade));
                    z = z6;
                } else {
                    z = z6;
                    long j3 = savedStarGift.convert_stars;
                    charSequenceReplaceTags = j3 > 0 ? AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2SelfInfoConvert", (int) j3)) : AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.Gift2SelfInfo));
                }
                topView.setText(0, string4, charSequenceReplaceTags, null, releasedByText(savedStarGift.gift));
            } else {
                j = clientUserId;
                z = z6;
                if (z5 && !this.myProfile) {
                    TopView topView2 = this.topView;
                    String string5 = LocaleController.getString(C2573R.string.Gift2TitleProfile);
                    this.title = string5;
                    topView2.setText(0, string5, null, null, releasedByText(savedStarGift.gift.released_by));
                } else {
                    boolean z8 = this.myProfile;
                    if (!z8 || savedStarGift.can_upgrade) {
                        charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                        if (savedStarGift.upgrade_stars > 0) {
                            TopView topView3 = this.topView;
                            String string6 = LocaleController.getString(z8 ? C2573R.string.Gift2TitleReceived : C2573R.string.Gift2TitleProfile);
                            this.title = string6;
                            topView3.setText(0, string6, (!z && this.myProfile) ? LocaleController.getString(C2573R.string.Gift2InfoInFreeUpgrade) : null, null, releasedByText(savedStarGift.gift));
                        }
                        if (j != peerDialogId || z5) {
                            this.tableView.addRowUser(LocaleController.getString(C2573R.string.Gift2From), this.currentAccount, peerDialogId, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda69
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$set$74(peerDialogId);
                                }
                            }, (peerDialogId != j || peerDialogId == UserObject.ANONYMOUS || zIsBot || UserObject.isDeleted(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId))) || z5) ? null : LocaleController.getString(C2573R.string.Gift2ButtonSendGift), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda70
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$set$75(peerDialogId);
                                }
                            });
                        }
                        this.tableView.addRow(LocaleController.getString(C2573R.string.StarsTransactionDate), LocaleController.formatString(C2573R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) savedStarGift.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) savedStarGift.date) * 1000))));
                        this.tableView.addRow(LocaleController.getString(C2573R.string.Gift2Value), StarsIntroActivity.replaceStarsWithPlain(TextUtils.concat("⭐️ " + LocaleController.formatNumber(savedStarGift.gift.stars + savedStarGift.upgrade_stars, ','), " ", (canConvert() || z) ? charSequence : ButtonSpan.make(LocaleController.formatPluralStringComma("Gift2ButtonSell", (int) savedStarGift.convert_stars), new StarGiftSheet$$ExternalSyntheticLambda25(this), this.resourcesProvider)), 0.8f));
                        starGift2 = savedStarGift.gift;
                        if (starGift2.limited && !z) {
                            StarsIntroActivity.addAvailabilityRow(this.tableView, this.currentAccount, starGift2, this.resourcesProvider);
                        }
                        tL_textWithEntities = savedStarGift.message;
                        if (tL_textWithEntities != null && !TextUtils.isEmpty(tL_textWithEntities.text) && !z) {
                            TableView tableView = this.tableView;
                            TLRPC.TL_textWithEntities tL_textWithEntities3 = savedStarGift.message;
                            tableView.addFullRow(tL_textWithEntities3.text, tL_textWithEntities3.entities);
                        }
                        z3 = this.myProfile;
                        if (!z3 && savedStarGift.can_upgrade) {
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("^  ");
                            if (this.upgradeIconSpan == null) {
                                this.upgradeIconSpan = new ColoredImageSpan(new UpgradeIcon(this.button, Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
                            }
                            spannableStringBuilder.setSpan(this.upgradeIconSpan, 0, 1, 33);
                            if (savedStarGift.upgrade_stars > 0) {
                                string3 = LocaleController.getString(C2573R.string.Gift2UpgradeButtonFree);
                            } else {
                                string3 = LocaleController.getString(C2573R.string.Gift2UpgradeButtonGift);
                            }
                            spannableStringBuilder.append((CharSequence) string3);
                            this.button.setFilled(true);
                            this.button.setText(spannableStringBuilder, !this.firstSet);
                            this.button.setSubText(null, !this.firstSet);
                            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda71
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$set$76(view);
                                }
                            });
                        } else if (!this.upgradedOnce && z3 && this.viewPager != null && this.giftsList != null && getListPosition() >= 0 && this.giftsList.findGiftToUpgrade(getListPosition()) >= 0) {
                            this.button.setFilled(false);
                            final int iFindGiftToUpgrade = this.giftsList.findGiftToUpgrade(getListPosition());
                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                            spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2573R.string.Gift2UpgradeNext));
                            Object obj = this.giftsList.get(iFindGiftToUpgrade);
                            if ((obj instanceof TL_stars.SavedStarGift) && (starGift3 = ((TL_stars.SavedStarGift) obj).gift) != null && (document = starGift3.getDocument()) != null) {
                                spannableStringBuilder2.append((CharSequence) " e");
                                spannableStringBuilder2.setSpan(new AnimatedEmojiSpan(document, this.button.getTextPaint().getFontMetricsInt()), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 33);
                            }
                            this.button.setText(spannableStringBuilder2, !this.firstSet);
                            this.button.setSubText(null, !this.firstSet);
                            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda72
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$set$77(iFindGiftToUpgrade, view);
                                }
                            });
                        } else if (!(savedStarGift.gift instanceof TL_stars.TL_starGift) && !TextUtils.isEmpty(savedStarGift.prepaid_upgrade_hash)) {
                            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder("^  ");
                            if (this.upgradeIconSpan == null) {
                                this.upgradeIconSpan = new ColoredImageSpan(new UpgradeIcon(this.button, Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
                            }
                            spannableStringBuilder3.setSpan(this.upgradeIconSpan, 0, 1, 33);
                            spannableStringBuilder3.append((CharSequence) LocaleController.getString(C2573R.string.Gift2GiftAnUpgrade));
                            this.button.setFilled(true);
                            this.button.setText(spannableStringBuilder3, !this.firstSet);
                            this.button.setSubText(null, !this.firstSet);
                            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda73
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$set$78(view);
                                }
                            });
                        } else {
                            this.button.setFilled(true);
                            this.button.setText(LocaleController.getString(C2573R.string.OK), !this.firstSet);
                            str2 = null;
                            this.button.setSubText(null, !this.firstSet);
                            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda74
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$set$79(view);
                                }
                            });
                            str3 = str2;
                            z4 = false;
                        }
                        str2 = null;
                        str3 = str2;
                        z4 = false;
                    } else {
                        charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    if (savedStarGift.gift_num == 0 || (starGift = savedStarGift.gift) == null || starGift.title == null) {
                        string = LocaleController.getString(z8 ? C2573R.string.Gift2TitleReceived : C2573R.string.Gift2TitleProfile);
                    } else {
                        string = savedStarGift.gift.title + " #" + LocaleController.formatNumber(savedStarGift.gift_num, ',');
                    }
                    this.title = string;
                    TopView topView4 = this.topView;
                    if (z || !this.myProfile) {
                        charSequenceConcat = null;
                    } else {
                        if (zIsBot || !canConvert()) {
                            if (this.myProfile) {
                                string2 = LocaleController.getString(savedStarGift.unsaved ? z5 ? C2573R.string.Gift2Info2ChannelKeep : C2573R.string.Gift2Info2BotKeep : z5 ? C2573R.string.Gift2Info2ChannelRemove : C2573R.string.Gift2Info2BotRemove);
                            } else {
                                string2 = LocaleController.formatString((!savedStarGift.can_upgrade || savedStarGift.upgrade_stars <= 0) ? C2573R.string.Gift2Info2OutExpired : C2573R.string.Gift2Info2OutUpgrade, shortName);
                            }
                        } else if (this.myProfile) {
                            if (currentTime <= 0) {
                                str = z5 ? "Gift2Info2ChannelExpired" : "Gift2Info2Expired";
                            } else {
                                str = z5 ? "Gift2Info3Channel" : "Gift2Info3";
                            }
                            string2 = LocaleController.formatPluralStringComma(str, (int) savedStarGift.convert_stars);
                        } else {
                            string2 = LocaleController.formatPluralStringComma("Gift2Info2Out", (int) savedStarGift.convert_stars, shortName);
                        }
                        SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(string2);
                        if (zIsBot || !canConvert()) {
                            z2 = true;
                            charSequenceReplaceArrows = charSequence;
                        } else {
                            z2 = true;
                            charSequenceReplaceArrows = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2More).replace(' ', Typography.nbsp), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda68
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$set$73();
                                }
                            }), true);
                        }
                        boolean z9 = z2;
                        CharSequence[] charSequenceArr = new CharSequence[3];
                        charSequenceArr[0] = spannableStringBuilderReplaceTags;
                        charSequenceArr[z9 ? 1 : 0] = " ";
                        charSequenceArr[2] = charSequenceReplaceArrows;
                        charSequenceConcat = TextUtils.concat(charSequenceArr);
                    }
                    topView4.setText(0, string, charSequenceConcat, null, releasedByText(savedStarGift.gift));
                    if (j != peerDialogId) {
                        if (peerDialogId != j) {
                            this.tableView.addRowUser(LocaleController.getString(C2573R.string.Gift2From), this.currentAccount, peerDialogId, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda69
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$set$74(peerDialogId);
                                }
                            }, (peerDialogId != j || peerDialogId == UserObject.ANONYMOUS || zIsBot || UserObject.isDeleted(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId))) || z5) ? null : LocaleController.getString(C2573R.string.Gift2ButtonSendGift), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda70
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$set$75(peerDialogId);
                                }
                            });
                            this.tableView.addRow(LocaleController.getString(C2573R.string.StarsTransactionDate), LocaleController.formatString(C2573R.string.formatDateAtTime, LocaleController.getInstance().getFormatterGiveawayCard().format(new Date(((long) savedStarGift.date) * 1000)), LocaleController.getInstance().getFormatterDay().format(new Date(((long) savedStarGift.date) * 1000))));
                            if (canConvert()) {
                                this.tableView.addRow(LocaleController.getString(C2573R.string.Gift2Value), StarsIntroActivity.replaceStarsWithPlain(TextUtils.concat("⭐️ " + LocaleController.formatNumber(savedStarGift.gift.stars + savedStarGift.upgrade_stars, ','), " ", (canConvert() || z) ? charSequence : ButtonSpan.make(LocaleController.formatPluralStringComma("Gift2ButtonSell", (int) savedStarGift.convert_stars), new StarGiftSheet$$ExternalSyntheticLambda25(this), this.resourcesProvider)), 0.8f));
                                starGift2 = savedStarGift.gift;
                                if (starGift2.limited) {
                                    StarsIntroActivity.addAvailabilityRow(this.tableView, this.currentAccount, starGift2, this.resourcesProvider);
                                }
                                tL_textWithEntities = savedStarGift.message;
                                if (tL_textWithEntities != null) {
                                    TableView tableView2 = this.tableView;
                                    TLRPC.TL_textWithEntities tL_textWithEntities32 = savedStarGift.message;
                                    tableView2.addFullRow(tL_textWithEntities32.text, tL_textWithEntities32.entities);
                                }
                                z3 = this.myProfile;
                                if (!z3) {
                                    if (!this.upgradedOnce) {
                                        if (!(savedStarGift.gift instanceof TL_stars.TL_starGift)) {
                                        }
                                        this.button.setFilled(true);
                                        this.button.setText(LocaleController.getString(C2573R.string.OK), !this.firstSet);
                                        str2 = null;
                                        this.button.setSubText(null, !this.firstSet);
                                        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda74
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                this.f$0.lambda$set$79(view);
                                            }
                                        });
                                        str3 = str2;
                                        z4 = false;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
            if (j != peerDialogId) {
            }
        }
        if (savedStarGift.refunded) {
            this.beforeTableTextView.setVisibility(0);
            this.beforeTableTextView.setText(LocaleController.getString(C2573R.string.Gift2Refunded));
            this.beforeTableTextView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
        } else if (z4 && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.beforeTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2InBlockchain), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$set$80(str3);
                }
            }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
            this.beforeTableTextView.setVisibility(0);
            this.beforeTableTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, this.resourcesProvider));
        } else if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && this.myProfile && (savedStarGift.gift instanceof TL_stars.TL_starGift) && savedStarGift.name_hidden) {
            this.beforeTableTextView.setVisibility(0);
            this.beforeTableTextView.setText(LocaleController.getString((tL_textWithEntities2 == null || TextUtils.isEmpty(tL_textWithEntities2.text)) ? C2573R.string.Gift2InSenderHidden2 : C2573R.string.Gift2InSenderMessageHidden2));
            this.beforeTableTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, this.resourcesProvider));
        } else {
            this.beforeTableTextView.setVisibility(8);
        }
        if (!z4 && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.afterTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2InBlockchain), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$set$81(str3);
                }
            }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
            r6 = 0;
            this.afterTableTextView.setVisibility(0);
        } else if (this.myProfile && isMine(this.currentAccount, this.dialogId)) {
            if (this.dialogId >= 0) {
                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                if (savedStarGift.unsaved) {
                    spannableStringBuilder4.append((CharSequence) ". ");
                    spannableStringBuilder4.setSpan(new ColoredImageSpan(C2573R.drawable.mini_gift_hidden), 0, 1, 33);
                }
                spannableStringBuilder4.append((CharSequence) AndroidUtilities.replaceSingleTag(LocaleController.getString(!savedStarGift.unsaved ? C2573R.string.Gift2ProfileVisible4 : C2573R.string.Gift2ProfileInvisible4), new StarGiftSheet$$ExternalSyntheticLambda18(this)));
                this.afterTableTextView.setText(AndroidUtilities.replaceArrows(spannableStringBuilder4, true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
            } else {
                this.afterTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(!savedStarGift.unsaved ? C2573R.string.Gift2ChannelProfileVisible3 : C2573R.string.Gift2ChannelProfileInvisible3), new StarGiftSheet$$ExternalSyntheticLambda18(this)), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
            }
            r6 = 0;
            this.afterTableTextView.setVisibility(0);
        } else {
            r6 = 0;
            this.afterTableTextView.setVisibility(8);
        }
        if (this.firstSet) {
            switchPage(r6, r6);
            this.layoutManager.scrollToPosition(1);
            this.firstSet = r6;
        }
        this.actionBar.setTitle(getTitle());
        updateViewPager();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$73() {
        new ExplainStarsSheet(getContext()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$75(long j) {
        new GiftSheet(getContext(), this.currentAccount, j, new StarGiftSheet$$ExternalSyntheticLambda64(this)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$76(View view) {
        openUpgrade();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$77(int i, View view) {
        this.overrideNextIndex = i;
        ViewPagerFixed viewPagerFixed = this.viewPager;
        viewPagerFixed.scrollToPosition(viewPagerFixed.getCurrentPosition() + (i > getListPosition() ? 1 : -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$78(View view) {
        openUpgrade();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$79(View view) {
        lambda$openCrafting$8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$80(String str) {
        Browser.openUrlInSystemBrowser(getContext(), MessagesController.getInstance(this.currentAccount).tonBlockchainExplorerUrl + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$81(String str) {
        Browser.openUrlInSystemBrowser(getContext(), MessagesController.getInstance(this.currentAccount).tonBlockchainExplorerUrl + str);
    }

    public TL_stars.TL_starGiftUnique getUniqueGift() {
        TL_stars.StarGift gift = getGift();
        if (gift instanceof TL_stars.TL_starGiftUnique) {
            return (TL_stars.TL_starGiftUnique) gift;
        }
        return null;
    }

    public String getGiftName() {
        TL_stars.StarGift gift = getGift();
        if (gift instanceof TL_stars.TL_starGiftUnique) {
            return ((TL_stars.TL_starGiftUnique) gift).title + " #" + LocaleController.formatNumber(r3.num, ',');
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static String getGiftName(TL_stars.StarGift starGift) {
        if (starGift instanceof TL_stars.TL_starGiftUnique) {
            return ((TL_stars.TL_starGiftUnique) starGift).title + " #" + LocaleController.formatNumber(r3.num, ',');
        }
        if ((starGift instanceof TL_stars.TL_starGift) && !TextUtils.isEmpty(starGift.title)) {
            return starGift.title;
        }
        return LocaleController.getString(C2573R.string.Gift2Gift);
    }

    public TL_stars.StarGift getGift() {
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if (message == null) {
                return null;
            }
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                return ((TLRPC.TL_messageActionStarGift) messageAction).gift;
            }
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                return ((TLRPC.TL_messageActionStarGiftUnique) messageAction).gift;
            }
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null) {
                return savedStarGift.gift;
            }
            TL_stars.TL_starGiftUnique tL_starGiftUnique = this.slugStarGift;
            if (tL_starGiftUnique != null) {
                return tL_starGiftUnique;
            }
        }
        return null;
    }

    public boolean showCraft() {
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null || uniqueGift.crafted || !isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(uniqueGift.owner_id))) {
            return false;
        }
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if (message == null) {
                return false;
            }
            TLRPC.MessageAction messageAction = message.action;
            return (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction).can_craft_at > 0;
        }
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        return savedStarGift != null && (savedStarGift.gift instanceof TL_stars.TL_starGiftUnique) && savedStarGift.can_craft_at > 0;
    }

    public boolean canCraft() {
        int i;
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null || uniqueGift.crafted || !isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(uniqueGift.owner_id))) {
            return false;
        }
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if (message == null) {
                return false;
            }
            TLRPC.MessageAction messageAction = message.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                return false;
            }
            i = ((TLRPC.TL_messageActionStarGiftUnique) messageAction).can_craft_at;
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null && (savedStarGift.gift instanceof TL_stars.TL_starGiftUnique)) {
                i = savedStarGift.can_craft_at;
            }
        }
        return i > 0 && ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() >= i;
    }

    public StarGiftSheet set(MessageObject messageObject) {
        return set(messageObject, (StarsController.IGiftsList) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x022d  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StarGiftSheet set(MessageObject messageObject, StarsController.IGiftsList iGiftsList) {
        int i;
        boolean z;
        int i2;
        long j;
        TLRPC.Peer peer;
        boolean z2;
        boolean z3;
        TL_stars.StarGift starGift;
        TLRPC.Peer peer2;
        long j2;
        long j3;
        int i3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        TLRPC.Peer peer3;
        String str;
        int i4;
        boolean z8;
        boolean z9;
        TLRPC.Peer peer4;
        char c2;
        String string;
        boolean z10;
        TLRPC.Peer peer5;
        String string2;
        int i5;
        String string3;
        String str2;
        boolean z11;
        CharSequence charSequenceReplaceArrows;
        CharSequence charSequenceConcat;
        String str3;
        boolean z12;
        final long peerDialogId;
        final long peerDialogId2;
        boolean z13;
        boolean z14;
        final String str4;
        TL_stars.StarGift starGift2;
        TLRPC.Document document;
        TL_stars.StarGift starGift3;
        TLRPC.Peer peer6;
        boolean z15;
        boolean z16;
        boolean z17;
        String string4;
        String string5;
        SpannableStringBuilder spannableStringBuilderReplaceTags;
        SpannableStringBuilder spannableStringBuilder;
        Roller roller;
        boolean z18;
        String string6;
        long j4;
        Roller roller2;
        if (messageObject != null && messageObject.messageOwner != null) {
            this.myProfile = false;
            TLRPC.TL_textWithEntities tL_textWithEntities = null;
            this.savedStarGift = null;
            this.messageObject = messageObject;
            this.giftsList = iGiftsList;
            this.actionView.set(messageObject);
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            boolean z19 = true;
            boolean z20 = messageObject.getDialogId() == clientUserId;
            TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
            if ((messageAction instanceof TLRPC.TL_messageActionStarGift) || ((messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) && (((TLRPC.TL_messageActionStarGiftUnique) messageAction).gift instanceof TL_stars.TL_starGift))) {
                if (!this.rolling && (roller = this.roller) != null && roller.isRolling() && this.roller.rollingGift != null) {
                    this.roller.detach();
                    this.roller = null;
                    this.topView.imageLayout.setVisibility(0);
                    this.topView.imagesRollView.setVisibility(4);
                }
                boolean zIsOutOwner = messageObject.isOutOwner();
                if (z20) {
                    zIsOutOwner = false;
                }
                TLRPC.Message message = messageObject.messageOwner;
                int i6 = message.date;
                TLRPC.MessageAction messageAction2 = message.action;
                if (messageAction2 instanceof TLRPC.TL_messageActionStarGift) {
                    TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction2;
                    boolean z21 = tL_messageActionStarGift.converted;
                    boolean z22 = tL_messageActionStarGift.saved;
                    boolean z23 = tL_messageActionStarGift.refunded;
                    j = 0;
                    boolean z24 = tL_messageActionStarGift.name_hidden;
                    TL_stars.StarGift starGift4 = tL_messageActionStarGift.gift;
                    i = 0;
                    boolean z25 = tL_messageActionStarGift.can_upgrade;
                    i2 = i6;
                    j2 = tL_messageActionStarGift.convert_stars;
                    z = zIsOutOwner;
                    long j5 = tL_messageActionStarGift.upgrade_stars;
                    TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageActionStarGift.message;
                    TLRPC.Peer peer7 = tL_messageActionStarGift.from_id;
                    TLRPC.Peer peer8 = tL_messageActionStarGift.peer;
                    boolean z26 = tL_messageActionStarGift.prepaid_upgrade;
                    String str5 = tL_messageActionStarGift.prepaid_upgrade_hash;
                    TLRPC.Peer peer9 = tL_messageActionStarGift.auction_acquired ? tL_messageActionStarGift.to_id : null;
                    int i7 = tL_messageActionStarGift.gift_num;
                    z6 = z25;
                    z7 = z26;
                    str = str5;
                    peer3 = peer9;
                    z3 = z23;
                    z5 = z24;
                    peer2 = peer8;
                    z4 = z21;
                    z2 = z22;
                    starGift = starGift4;
                    tL_textWithEntities = tL_textWithEntities2;
                    i3 = i7;
                    peer = peer7;
                    j3 = j5;
                } else {
                    i = 0;
                    z = zIsOutOwner;
                    i2 = i6;
                    j = 0;
                    TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction2;
                    boolean z27 = tL_messageActionStarGiftUnique.saved;
                    boolean z28 = tL_messageActionStarGiftUnique.refunded;
                    TL_stars.StarGift starGift5 = tL_messageActionStarGiftUnique.gift;
                    peer = tL_messageActionStarGiftUnique.from_id;
                    TLRPC.Peer peer10 = tL_messageActionStarGiftUnique.peer;
                    z2 = z27;
                    z3 = z28;
                    starGift = starGift5;
                    peer2 = peer10;
                    j2 = 0;
                    j3 = 0;
                    i3 = 0;
                    z4 = false;
                    z5 = false;
                    z6 = false;
                    z7 = false;
                    peer3 = null;
                    tL_textWithEntities = null;
                    str = null;
                }
                String shortName = DialogObject.getShortName(this.dialogId);
                boolean zIsBot = UserObject.isBot(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId)));
                int i8 = (peer2 == null || DialogObject.getPeerDialogId(peer2) >= j) ? i : 1;
                int i9 = i3;
                TopView topView = this.topView;
                boolean zIsWorn = isWorn(this.currentAccount, getUniqueGift());
                if (getLink() != null) {
                    i4 = i9;
                    z8 = zIsWorn;
                    z9 = 1;
                } else {
                    i4 = i9;
                    z8 = zIsWorn;
                    z9 = i;
                }
                long j6 = j2;
                TLRPC.Peer peer11 = peer2;
                int i10 = i4;
                topView.setGift(starGift, false, false, z8, z9, false);
                CharSequence charSequenceMake = _UrlKt.FRAGMENT_ENCODE_SET;
                if (z20) {
                    if (i10 == 0 || starGift == null) {
                        peer4 = peer3;
                        c2 = 2;
                    } else {
                        c2 = 2;
                        if (starGift.title != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(starGift.title);
                            sb.append(" #");
                            peer4 = peer3;
                            sb.append(LocaleController.formatNumber(i10, ','));
                            string5 = sb.toString();
                            this.title = string5;
                            TopView topView2 = this.topView;
                            if (z3) {
                                if (z6) {
                                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.Gift2SelfInfoUpgrade));
                                } else if (j6 > j) {
                                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(z4 ? "Gift2SelfInfoConverted" : "Gift2SelfInfoConvert", (int) j6));
                                } else {
                                    spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.Gift2SelfInfo));
                                }
                                spannableStringBuilder = spannableStringBuilderReplaceTags;
                            } else {
                                spannableStringBuilder = null;
                            }
                            topView2.setText(0, string5, spannableStringBuilder, null, releasedByText(starGift));
                        } else {
                            peer4 = peer3;
                        }
                    }
                    string5 = LocaleController.getString(C2573R.string.Gift2TitleSaved);
                    this.title = string5;
                    TopView topView22 = this.topView;
                    if (z3) {
                    }
                    topView22.setText(0, string5, spannableStringBuilder, null, releasedByText(starGift));
                } else {
                    peer4 = peer3;
                    c2 = 2;
                    if (i8 != 0 && !this.myProfile) {
                        this.topView.setText(0, LocaleController.getString(C2573R.string.Gift2TitleProfile), null, null, releasedByText(starGift));
                    } else if ((z || z6) && j3 > j) {
                        TopView topView3 = this.topView;
                        String string7 = LocaleController.getString(z ? C2573R.string.Gift2TitleSent : C2573R.string.Gift2TitleReceived);
                        this.title = string7;
                        if (z3) {
                            string = null;
                        } else {
                            string = !z ? LocaleController.getString(C2573R.string.Gift2InfoInFreeUpgrade) : LocaleController.formatString(C2573R.string.Gift2InfoFreeUpgrade, shortName);
                        }
                        topView3.setText(0, string7, string, null, releasedByText(starGift));
                    } else {
                        if (i10 == 0 || starGift == null || starGift.title == null) {
                            z10 = z20;
                            peer5 = peer;
                            string2 = LocaleController.getString(z ? C2573R.string.Gift2TitleSent : C2573R.string.Gift2TitleReceived);
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(starGift.title);
                            sb2.append(" #");
                            z10 = z20;
                            peer5 = peer;
                            sb2.append(LocaleController.formatNumber(i10, ','));
                            string2 = sb2.toString();
                        }
                        this.title = string2;
                        TopView topView4 = this.topView;
                        if (z3) {
                            str2 = string2;
                            charSequenceConcat = null;
                        } else {
                            if (zIsBot || !canSomeoneConvert()) {
                                if (z) {
                                    string3 = LocaleController.formatString((!z6 || j3 <= j) ? C2573R.string.Gift2Info2OutExpired : C2573R.string.Gift2Info2OutUpgrade, shortName);
                                } else {
                                    if (z2) {
                                        i5 = i8 != 0 ? C2573R.string.Gift2Info2ChannelRemove : C2573R.string.Gift2Info2BotRemove;
                                    } else {
                                        i5 = i8 != 0 ? C2573R.string.Gift2Info2ChannelKeep : C2573R.string.Gift2Info2BotKeep;
                                    }
                                    string3 = LocaleController.getString(i5);
                                }
                            } else if (!z) {
                                if (z4) {
                                    str3 = i8 != 0 ? "Gift2InfoChannelConverted" : "Gift2InfoConverted";
                                } else {
                                    str3 = i8 != 0 ? "Gift2Info3Channel" : "Gift2Info3";
                                }
                                string3 = LocaleController.formatPluralStringComma(str3, (int) j6);
                            } else if (z6 && j3 > j) {
                                string3 = LocaleController.formatString(C2573R.string.Gift2Info2OutUpgrade, shortName);
                            } else if (!z2 || z4) {
                                string3 = LocaleController.formatPluralStringComma(z4 ? "Gift2InfoOutConverted" : "Gift2InfoOut", (int) j6, shortName);
                            } else {
                                string3 = LocaleController.formatString(C2573R.string.Gift2InfoOutPinned, shortName);
                            }
                            SpannableStringBuilder spannableStringBuilderReplaceTags2 = AndroidUtilities.replaceTags(string3);
                            if (zIsBot || !canConvert()) {
                                str2 = string2;
                                z11 = true;
                                charSequenceReplaceArrows = _UrlKt.FRAGMENT_ENCODE_SET;
                            } else {
                                str2 = string2;
                                z11 = true;
                                charSequenceReplaceArrows = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2More).replace(' ', Typography.nbsp), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda12
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$set$82();
                                    }
                                }), true);
                            }
                            boolean z29 = z11;
                            CharSequence[] charSequenceArr = new CharSequence[3];
                            charSequenceArr[i] = spannableStringBuilderReplaceTags2;
                            charSequenceArr[z29 ? 1 : 0] = " ";
                            charSequenceArr[2] = charSequenceReplaceArrows;
                            charSequenceConcat = TextUtils.concat(charSequenceArr);
                        }
                        topView4.setText(0, str2, charSequenceConcat, null, releasedByText(starGift));
                        z12 = z10;
                        this.tableView.clear();
                        if (peer5 == null) {
                            peerDialogId = DialogObject.getPeerDialogId(peer5);
                        } else {
                            peerDialogId = z ? clientUserId : this.dialogId;
                        }
                        if (peer11 == null) {
                            peerDialogId2 = DialogObject.getPeerDialogId(peer11);
                        } else {
                            peerDialogId2 = z ? this.dialogId : clientUserId;
                        }
                        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                        if (peer4 == null) {
                            final long peerDialogId3 = DialogObject.getPeerDialogId(peer4);
                            this.tableView.addRowUser(LocaleController.getString(C2573R.string.Gift2To), this.currentAccount, peerDialogId3, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda19
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$set$83(peerDialogId3);
                                }
                            }, null, i8 != 0 ? null : new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda20
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$set$84(peerDialogId3);
                                }
                            });
                            z14 = z12;
                        } else {
                            if (peerDialogId == clientUserId && !z7 && i8 == 0) {
                                z13 = z12;
                            } else {
                                z13 = z12;
                                this.tableView.addRowUser(LocaleController.getString(C2573R.string.Gift2From), this.currentAccount, peerDialogId, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda21
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$set$85(peerDialogId);
                                    }
                                }, (peerDialogId == clientUserId || peerDialogId == UserObject.ANONYMOUS || UserObject.isDeleted(user) || zIsBot || i8 != 0) ? null : LocaleController.getString(C2573R.string.Gift2ButtonSendGift), i8 != 0 ? null : new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda22
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$set$86(peerDialogId);
                                    }
                                });
                            }
                            z14 = z13;
                            if (peerDialogId2 != clientUserId || i8 != 0) {
                                this.tableView.addRowUser(LocaleController.getString(C2573R.string.Gift2To), this.currentAccount, peerDialogId2, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda23
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$set$87(peerDialogId2);
                                    }
                                }, null, i8 != 0 ? null : new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda24
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$set$88(peerDialogId2);
                                    }
                                });
                                z14 = z13;
                            }
                        }
                        this.tableView.addRowDateTime(LocaleController.getString(C2573R.string.StarsTransactionDate), i2);
                        if (starGift.stars > j) {
                            TableView tableView = this.tableView;
                            String string8 = LocaleController.getString(C2573R.string.Gift2Value);
                            String str6 = "⭐️ " + LocaleController.formatNumber(starGift.stars + j3, ',');
                            if (canConvert() && !z3) {
                                charSequenceMake = ButtonSpan.make(LocaleController.formatPluralStringComma("Gift2ButtonSell", (int) j6), new StarGiftSheet$$ExternalSyntheticLambda25(this), this.resourcesProvider);
                            }
                            CharSequence[] charSequenceArr2 = new CharSequence[3];
                            charSequenceArr2[i] = str6;
                            charSequenceArr2[1] = " ";
                            charSequenceArr2[c2] = charSequenceMake;
                            tableView.addRow(string8, StarsIntroActivity.replaceStarsWithPlain(TextUtils.concat(charSequenceArr2), 0.8f));
                        }
                        if (starGift.limited && !z3) {
                            StarsIntroActivity.addAvailabilityRow(this.tableView, this.currentAccount, starGift, this.resourcesProvider);
                        }
                        if (tL_textWithEntities != null && !TextUtils.isEmpty(tL_textWithEntities.text) && !z3) {
                            this.tableView.addFullRow(tL_textWithEntities.text, tL_textWithEntities.entities);
                        }
                        if (z && z6 && !z3) {
                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("^  ");
                            if (this.upgradeIconSpan == null) {
                                this.upgradeIconSpan = new ColoredImageSpan(new UpgradeIcon(this.button, Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
                            }
                            spannableStringBuilder2.setSpan(this.upgradeIconSpan, i, 1, 33);
                            if (j3 > j) {
                                string4 = LocaleController.getString(C2573R.string.Gift2UpgradeButtonFree);
                            } else {
                                string4 = LocaleController.getString(C2573R.string.Gift2UpgradeButtonGift);
                            }
                            spannableStringBuilder2.append((CharSequence) string4);
                            this.button.setFilled(true);
                            this.button.setText(spannableStringBuilder2, !this.firstSet);
                            this.button.setSubText(null, !this.firstSet);
                            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda26
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$set$89(view);
                                }
                            });
                        } else if (!this.upgradedOnce && this.viewPager != null && this.giftsList != null && getListPosition() >= 0 && this.giftsList.findGiftToUpgrade(getListPosition()) >= 0) {
                            this.button.setFilled(false);
                            final int iFindGiftToUpgrade = this.giftsList.findGiftToUpgrade(getListPosition());
                            SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                            spannableStringBuilder3.append((CharSequence) LocaleController.getString(C2573R.string.Gift2UpgradeNext));
                            Object obj = this.giftsList.get(iFindGiftToUpgrade);
                            if ((obj instanceof TL_stars.SavedStarGift) && (starGift2 = ((TL_stars.SavedStarGift) obj).gift) != null && (document = starGift2.getDocument()) != null) {
                                spannableStringBuilder3.append((CharSequence) " e");
                                spannableStringBuilder3.setSpan(new AnimatedEmojiSpan(document, this.button.getTextPaint().getFontMetricsInt()), spannableStringBuilder3.length() - 1, spannableStringBuilder3.length(), 33);
                            }
                            this.button.setText(spannableStringBuilder3, !this.firstSet);
                            this.button.setSubText(null, !this.firstSet);
                            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda27
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$set$90(iFindGiftToUpgrade, view);
                                }
                            });
                        } else {
                            if (!(starGift instanceof TL_stars.TL_starGift) && !TextUtils.isEmpty(str)) {
                                SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder("^  ");
                                if (this.upgradeIconSpan == null) {
                                    this.upgradeIconSpan = new ColoredImageSpan(new UpgradeIcon(this.button, Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
                                }
                                z19 = true;
                                spannableStringBuilder4.setSpan(this.upgradeIconSpan, 0, 1, 33);
                                spannableStringBuilder4.append((CharSequence) LocaleController.getString(C2573R.string.Gift2GiftAnUpgrade));
                                this.button.setFilled(true);
                                this.button.setText(spannableStringBuilder4, !this.firstSet);
                                this.button.setSubText(null, !this.firstSet);
                                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda13
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        this.f$0.lambda$set$91(view);
                                    }
                                });
                                str4 = null;
                            } else {
                                z19 = true;
                                this.button.setFilled(true);
                                this.button.setText(LocaleController.getString(C2573R.string.OK), !this.firstSet);
                                str4 = null;
                                this.button.setSubText(null, !this.firstSet);
                                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda14
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        this.f$0.lambda$set$92(view);
                                    }
                                });
                            }
                            starGift3 = starGift;
                            peer6 = peer4;
                            z15 = z2;
                            z16 = z;
                            z17 = z3;
                            z18 = z14;
                        }
                        str4 = null;
                        z19 = true;
                        starGift3 = starGift;
                        peer6 = peer4;
                        z15 = z2;
                        z16 = z;
                        z17 = z3;
                        z18 = z14;
                    }
                }
                z12 = z20;
                peer5 = peer;
                this.tableView.clear();
                if (peer5 == null) {
                }
                if (peer11 == null) {
                }
                TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                if (peer4 == null) {
                }
                this.tableView.addRowDateTime(LocaleController.getString(C2573R.string.StarsTransactionDate), i2);
                if (starGift.stars > j) {
                }
                if (starGift.limited) {
                    StarsIntroActivity.addAvailabilityRow(this.tableView, this.currentAccount, starGift, this.resourcesProvider);
                }
                if (tL_textWithEntities != null) {
                    this.tableView.addFullRow(tL_textWithEntities.text, tL_textWithEntities.entities);
                }
                if (z) {
                    if (!this.upgradedOnce) {
                    }
                    if (!(starGift instanceof TL_stars.TL_starGift)) {
                        z19 = true;
                        this.button.setFilled(true);
                        this.button.setText(LocaleController.getString(C2573R.string.OK), !this.firstSet);
                        str4 = null;
                        this.button.setSubText(null, !this.firstSet);
                        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda14
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$set$92(view);
                            }
                        });
                        starGift3 = starGift;
                        peer6 = peer4;
                        z15 = z2;
                        z16 = z;
                        z17 = z3;
                        z18 = z14;
                    }
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique2 = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                TL_stars.StarGift starGift6 = tL_messageActionStarGiftUnique2.gift;
                if (starGift6 instanceof TL_stars.TL_starGiftUnique) {
                    z17 = tL_messageActionStarGiftUnique2.refunded;
                    set((TL_stars.TL_starGiftUnique) starGift6, z17);
                    z15 = tL_messageActionStarGiftUnique2.saved;
                    starGift3 = tL_messageActionStarGiftUnique2.gift;
                    z16 = (tL_messageActionStarGiftUnique2.upgrade ^ true) == messageObject.isOutOwner();
                    if (messageObject.getDialogId() == clientUserId) {
                        z16 = false;
                    }
                    repollSavedStarGift();
                    if (this.rolling || (roller2 = this.roller) == null || !roller2.isRolling() || this.roller.rollingGift == null) {
                        j4 = 0;
                    } else {
                        if (starGift3 != null) {
                            j4 = 0;
                            if (this.roller.rollingGift.id != starGift3.id) {
                            }
                        } else {
                            j4 = 0;
                        }
                        this.roller.detach();
                        this.roller = null;
                        this.topView.imageLayout.setAlpha(1.0f);
                        this.topView.imagesRollView.setAlpha(0.0f);
                    }
                    z4 = false;
                    z5 = false;
                    peer6 = null;
                    str4 = null;
                    z18 = z20;
                    j = j4;
                }
            }
            if (this.nextButtonCrafting) {
                this.button.setFilled(z19);
                this.button.setText(LocaleController.getString(C2573R.string.GiftCraftButtonNext), false);
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$set$93(view);
                    }
                });
            }
            String str7 = starGift3 == null ? str4 : starGift3.owner_address;
            if (starGift3 != null) {
                str4 = starGift3.gift_address;
            }
            boolean z30 = (starGift3 == null || starGift3.host_id == null) ? false : true;
            if (z17) {
                this.beforeTableTextView.setVisibility(0);
                this.beforeTableTextView.setText(LocaleController.getString(C2573R.string.Gift2Refunded));
                this.beforeTableTextView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
            } else if (z30 && !TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str4)) {
                this.beforeTableTextView.setVisibility(0);
                this.beforeTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2InBlockchain), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$set$94(str4);
                    }
                }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
                this.beforeTableTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, this.resourcesProvider));
            } else if (TextUtils.isEmpty(str7) && TextUtils.isEmpty(str4) && z5 && !z18) {
                this.beforeTableTextView.setVisibility(0);
                LinkSpanDrawable.LinksTextView linksTextView = this.beforeTableTextView;
                if (z16) {
                    string6 = LocaleController.formatString((tL_textWithEntities == null || TextUtils.isEmpty(tL_textWithEntities.text)) ? C2573R.string.Gift2OutSenderHidden2 : C2573R.string.Gift2OutSenderMessageHidden2, DialogObject.getShortName(messageObject.getDialogId()));
                } else {
                    string6 = LocaleController.getString((tL_textWithEntities == null || TextUtils.isEmpty(tL_textWithEntities.text)) ? C2573R.string.Gift2InSenderHidden2 : C2573R.string.Gift2InSenderMessageHidden2);
                }
                linksTextView.setText(string6);
                this.beforeTableTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, this.resourcesProvider));
            } else {
                this.beforeTableTextView.setVisibility(8);
            }
            if (!z30 && !TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str4)) {
                this.afterTableTextView.setVisibility(0);
                this.afterTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2InBlockchain), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$set$95(str4);
                    }
                }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
            } else if (!z4 && !z17 && starGift3 != null && isMine(this.currentAccount, getDialogId()) && peer6 == null) {
                this.afterTableTextView.setVisibility(0);
                if (getDialogId() >= j) {
                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
                    if (!z15) {
                        spannableStringBuilder5.append((CharSequence) ". ");
                        spannableStringBuilder5.setSpan(new ColoredImageSpan(C2573R.drawable.mini_gift_hidden), 0, 1, 33);
                    }
                    spannableStringBuilder5.append((CharSequence) AndroidUtilities.replaceSingleTag(LocaleController.getString(z15 ? C2573R.string.Gift2ProfileVisible4 : C2573R.string.Gift2ProfileInvisible4), new StarGiftSheet$$ExternalSyntheticLambda18(this)));
                    this.afterTableTextView.setText(AndroidUtilities.replaceArrows(spannableStringBuilder5, true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
                } else {
                    this.afterTableTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(z15 ? C2573R.string.Gift2ChannelProfileVisible3 : C2573R.string.Gift2ChannelProfileInvisible3), new StarGiftSheet$$ExternalSyntheticLambda18(this)), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(0.66f)));
                }
            } else {
                this.afterTableTextView.setVisibility(8);
            }
            if (this.firstSet) {
                switchPage(0, false);
                this.layoutManager.scrollToPosition(1);
                this.firstSet = false;
            }
            this.actionBar.setTitle(getTitle());
            updateViewPager();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$82() {
        new ExplainStarsSheet(getContext()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$84(long j) {
        new GiftSheet(getContext(), this.currentAccount, j, new StarGiftSheet$$ExternalSyntheticLambda64(this)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$86(long j) {
        new GiftSheet(getContext(), this.currentAccount, j, new StarGiftSheet$$ExternalSyntheticLambda64(this)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$88(long j) {
        new GiftSheet(getContext(), this.currentAccount, j, new StarGiftSheet$$ExternalSyntheticLambda64(this)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$89(View view) {
        openUpgrade();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$90(int i, View view) {
        this.overrideNextIndex = i;
        ViewPagerFixed viewPagerFixed = this.viewPager;
        viewPagerFixed.scrollToPosition(viewPagerFixed.getCurrentPosition() + (i > getListPosition() ? 1 : -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$91(View view) {
        openUpgrade();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$92(View view) {
        lambda$openCrafting$8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$93(View view) {
        openCrafting(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$94(String str) {
        Browser.openUrlInSystemBrowser(getContext(), MessagesController.getInstance(this.currentAccount).tonBlockchainExplorerUrl + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$95(String str) {
        Browser.openUrlInSystemBrowser(getContext(), MessagesController.getInstance(this.currentAccount).tonBlockchainExplorerUrl + str);
    }

    private void repollMessage() {
        MessageObject messageObject;
        if (this.messageObjectRepolling || this.messageObjectRepolled || (messageObject = this.messageObject) == null) {
            return;
        }
        this.messageObjectRepolling = true;
        final int id = messageObject.getId();
        TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
        tL_messages_getMessages.id.add(Integer.valueOf(id));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda102
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$repollMessage$97(id, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repollMessage$97(int i, final TLObject tLObject, TLRPC.TL_error tL_error) {
        final MessageObject messageObject;
        if (tLObject instanceof TLRPC.messages_Messages) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            for (int i2 = 0; i2 < messages_messages.messages.size(); i2++) {
                TLRPC.Message message = messages_messages.messages.get(i2);
                if (message != null && message.id == i) {
                    TLRPC.MessageAction messageAction = message.action;
                    if ((messageAction instanceof TLRPC.TL_messageActionStarGift) || (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                        messageObject = new MessageObject(this.currentAccount, message, false, false);
                        messageObject.setType();
                        break;
                    }
                }
            }
            messageObject = null;
        } else {
            messageObject = null;
        }
        if (messageObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda144
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$repollMessage$96(tLObject, messageObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repollMessage$96(TLObject tLObject, MessageObject messageObject) {
        TLRPC.Message message;
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
        this.messageObjectRepolled = true;
        this.messageObjectRepolling = false;
        Boolean bool = this.unsavedFromSavedStarGift;
        if (bool != null && messageObject != null && (message = messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                ((TLRPC.TL_messageActionStarGift) messageAction).saved = true ^ bool.booleanValue();
            } else if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                ((TLRPC.TL_messageActionStarGiftUnique) messageAction).saved = true ^ bool.booleanValue();
            }
        }
        set(messageObject);
    }

    private void repollSavedStarGift() {
        TL_stars.InputSavedStarGift inputStarGift;
        if (this.userStarGiftRepolling || this.userStarGiftRepolled || this.messageObject == null || (inputStarGift = getInputStarGift()) == null) {
            return;
        }
        this.userStarGiftRepolling = true;
        StarsController.getInstance(this.currentAccount).getUserStarGift(inputStarGift, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda65
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$repollSavedStarGift$98((TL_stars.SavedStarGift) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repollSavedStarGift$98(TL_stars.SavedStarGift savedStarGift) {
        TLRPC.Message message;
        this.userStarGiftRepolling = false;
        this.userStarGiftRepolled = true;
        if (savedStarGift != null) {
            this.unsavedFromSavedStarGift = Boolean.valueOf(savedStarGift.unsaved);
            MessageObject messageObject = this.messageObject;
            if (messageObject == null || (message = messageObject.messageOwner) == null) {
                return;
            }
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                boolean z = tL_messageActionStarGiftUnique.saved;
                boolean z2 = savedStarGift.unsaved;
                if (z == (!z2)) {
                    return;
                } else {
                    tL_messageActionStarGiftUnique.saved = !z2;
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                boolean z3 = tL_messageActionStarGift.saved;
                boolean z4 = savedStarGift.unsaved;
                if (z3 == (!z4)) {
                    return;
                } else {
                    tL_messageActionStarGift.saved = !z4;
                }
            }
            set(messageObject);
        }
    }

    public void openAsLearnMore(long j, final String str) {
        this.isLearnMore = true;
        StarsController.getInstance(this.currentAccount).getStarGiftPreview(j, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda143
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$openAsLearnMore$100(str, (TL_stars.starGiftUpgradePreview) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAsLearnMore$100(String str, TL_stars.starGiftUpgradePreview stargiftupgradepreview) {
        if (stargiftupgradepreview == null) {
            return;
        }
        this.topView.setPreviewingAttributes(stargiftupgradepreview.sample_attributes);
        switchPage(1, false);
        this.topView.setText(1, LocaleController.getString(C2573R.string.Gift2LearnMoreTitle), LocaleController.formatString(C2573R.string.Gift2LearnMoreText, str), null, null);
        this.upgradeFeatureCells[0].setText(LocaleController.getString(C2573R.string.Gift2UpgradeFeature1TextLearn));
        this.upgradeFeatureCells[1].setText(LocaleController.getString(C2573R.string.Gift2UpgradeFeature2TextLearn));
        this.upgradeFeatureCells[2].setText(LocaleController.getString(C2573R.string.Gift2UpgradeFeature3TextLearn));
        this.checkboxLayout.setVisibility(8);
        this.checkboxSeparator.setVisibility(8);
        this.button.setFilled(true);
        this.button.setText(LocaleController.getString(C2573R.string.OK), false);
        this.button.setSubText(null, false);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda164
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$openAsLearnMore$99(view);
            }
        });
        show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAsLearnMore$99(View view) {
        lambda$new$0();
    }

    private long getDialogId() {
        TLRPC.Peer peer;
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if (message == null) {
                return 0L;
            }
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                TLRPC.Peer peer2 = ((TLRPC.TL_messageActionStarGift) messageAction).peer;
                if (peer2 != null) {
                    return DialogObject.getPeerDialogId(peer2);
                }
                return messageObject.isOutOwner() ? this.messageObject.getDialogId() : UserConfig.getInstance(this.currentAccount).getClientUserId();
            }
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                TL_stars.StarGift starGift = tL_messageActionStarGiftUnique.gift;
                if ((starGift instanceof TL_stars.TL_starGiftUnique) && (peer = starGift.owner_id) != null) {
                    return DialogObject.getPeerDialogId(peer);
                }
                TLRPC.Peer peer3 = tL_messageActionStarGiftUnique.peer;
                if (peer3 != null) {
                    return DialogObject.getPeerDialogId(peer3);
                }
            }
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null) {
                TL_stars.StarGift starGift2 = savedStarGift.gift;
                if (starGift2 instanceof TL_stars.TL_starGiftUnique) {
                    return DialogObject.getPeerDialogId(((TL_stars.TL_starGiftUnique) starGift2).owner_id);
                }
                return this.dialogId;
            }
            TL_stars.TL_starGiftUnique tL_starGiftUnique = this.slugStarGift;
            if (tL_starGiftUnique != null && tL_starGiftUnique != null) {
                return DialogObject.getPeerDialogId(this.slugStarGift.owner_id);
            }
        }
        return 0L;
    }

    private String getLink() {
        TL_stars.StarGift gift = getGift();
        if (!(gift instanceof TL_stars.TL_starGiftUnique) || gift.slug == null) {
            return null;
        }
        return MessagesController.getInstance(this.currentAccount).linkPrefix + "/nft/" + gift.slug;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openInProfile() {
        long dialogId = getDialogId();
        if (dialogId == 0) {
            return;
        }
        lambda$set$87(dialogId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: openProfile, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$set$87(long j) {
        HintView2 hintView2 = this.currentHintView;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHintView = null;
        }
        lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null || UserObject.isService(j)) {
            return;
        }
        Bundle bundle = new Bundle();
        if (j > 0) {
            bundle.putLong("user_id", j);
            if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                bundle.putBoolean("my_profile", true);
            }
        } else {
            bundle.putLong("chat_id", -j);
        }
        bundle.putBoolean("open_gifts", true);
        safeLastFragment.presentFragment(new ProfileActivity(bundle));
    }

    private boolean canSomeoneConvert() {
        TLRPC.Peer peer;
        if (getInputStarGift() == null) {
            return false;
        }
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                boolean z = tL_messageActionStarGift.peer != null;
                messageObject.isOutOwner();
                this.messageObject.getDialogId();
                UserConfig.getInstance(this.currentAccount).getClientUserId();
                return (!z || ((peer = tL_messageActionStarGift.peer) != null && isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(peer)))) && !tL_messageActionStarGift.converted && tL_messageActionStarGift.convert_stars > 0 && MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - this.messageObject.messageOwner.date) > 0;
            }
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null) {
                int currentTime = MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - savedStarGift.date);
                if (isMineWithActions(this.currentAccount, this.dialogId)) {
                    int i = this.savedStarGift.flags;
                    if (((this.dialogId < 0 ? 2048 : 8) & i) != 0 && (i & 16) != 0 && (i & 2) != 0 && currentTime > 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean canConvert() {
        TLRPC.Peer peer;
        if (getInputStarGift() == null) {
            return false;
        }
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                return ((!(tL_messageActionStarGift.peer != null) && (!messageObject.isOutOwner() || ((this.messageObject.getDialogId() > UserConfig.getInstance(this.currentAccount).getClientUserId() ? 1 : (this.messageObject.getDialogId() == UserConfig.getInstance(this.currentAccount).getClientUserId() ? 0 : -1)) == 0))) || ((peer = tL_messageActionStarGift.peer) != null && isMineWithActions(this.currentAccount, DialogObject.getPeerDialogId(peer)))) && !tL_messageActionStarGift.converted && tL_messageActionStarGift.convert_stars > 0 && MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - this.messageObject.messageOwner.date) > 0;
            }
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null) {
                int currentTime = MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - savedStarGift.date);
                if (isMineWithActions(this.currentAccount, this.dialogId)) {
                    int i = this.savedStarGift.flags;
                    if (((this.dialogId < 0 ? 2048 : 8) & i) != 0 && (i & 16) != 0 && (i & 2) != 0 && currentTime > 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void convert() {
        int i;
        long peerDialogId;
        long j;
        long dialogId;
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final TL_stars.InputSavedStarGift inputStarGift = getInputStarGift();
        if (inputStarGift == null) {
            return;
        }
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            i = messageObject.messageOwner.date;
            boolean zIsOutOwner = messageObject.isOutOwner();
            MessageObject messageObject2 = this.messageObject;
            TLRPC.Message message = messageObject2.messageOwner;
            if (message == null) {
                return;
            }
            TLRPC.MessageAction messageAction = message.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionStarGift)) {
                return;
            }
            TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
            TLRPC.Peer peer = tL_messageActionStarGift.peer;
            if (peer != null) {
                dialogId = DialogObject.getPeerDialogId(peer);
            } else {
                dialogId = zIsOutOwner ? messageObject2.getDialogId() : clientUserId;
            }
            TLRPC.Peer peer2 = tL_messageActionStarGift.from_id;
            if (peer2 != null) {
                peerDialogId = DialogObject.getPeerDialogId(peer2);
            } else {
                peerDialogId = zIsOutOwner ? clientUserId : this.messageObject.getDialogId();
            }
            j = tL_messageActionStarGift.convert_stars;
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift == null) {
                return;
            }
            i = savedStarGift.date;
            peerDialogId = ((savedStarGift.flags & 2) == 0 || savedStarGift.name_hidden) ? 2666000L : DialogObject.getPeerDialogId(savedStarGift.from_id);
            j = this.savedStarGift.convert_stars;
            dialogId = this.dialogId;
        }
        int iMax = Math.max(1, (MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - i)) / 86400);
        final long j2 = dialogId;
        final long j3 = j;
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.Gift2ConvertTitle)).setMessage(AndroidUtilities.replaceTags(LocaleController.formatPluralString("Gift2ConvertText2", iMax, (UserObject.isService(peerDialogId) || peerDialogId == UserObject.ANONYMOUS) ? LocaleController.getString(C2573R.string.StarsTransactionHidden) : DialogObject.getShortName(peerDialogId), LocaleController.formatPluralStringComma("Gift2ConvertStars", (int) j)))).setPositiveButton(LocaleController.getString(C2573R.string.Gift2ConvertButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda55
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$convert$105(inputStarGift, j2, clientUserId, j3, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$convert$105(TL_stars.InputSavedStarGift inputSavedStarGift, final long j, final long j2, final long j3, AlertDialog alertDialog, int i) {
        final AlertDialog alertDialog2 = new AlertDialog(ApplicationLoader.applicationContext, 3);
        alertDialog2.showDelayed(500L);
        TL_stars.convertStarGift convertstargift = new TL_stars.convertStarGift();
        convertstargift.stargift = inputSavedStarGift;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(convertstargift, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda110
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$convert$104(alertDialog2, j, j2, j3, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$convert$104(final AlertDialog alertDialog, final long j, final long j2, final long j3, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda152
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$convert$103(alertDialog, tLObject, j, j2, j3, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$convert$103(AlertDialog alertDialog, TLObject tLObject, long j, long j2, final long j3, TLRPC.TL_error tL_error) {
        alertDialog.dismissUnless(400L);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        if (!(tLObject instanceof TLRPC.TL_boolTrue)) {
            if (tL_error != null) {
                getBulletinFactory().createErrorBulletin(LocaleController.formatString(C2573R.string.UnknownErrorCode, tL_error.text)).show(false);
                return;
            } else {
                getBulletinFactory().createErrorBulletin(LocaleController.getString(C2573R.string.UnknownError)).show(false);
                return;
            }
        }
        lambda$new$0();
        StarsController.getInstance(this.currentAccount).invalidateProfileGifts(j);
        if (j >= 0) {
            TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j2);
            if (userFull != null) {
                int iMax = Math.max(0, userFull.stargifts_count - 1);
                userFull.stargifts_count = iMax;
                if (iMax <= 0) {
                    userFull.flags2 &= -257;
                }
            }
            StarsController.getInstance(this.currentAccount).invalidateBalance();
            StarsController.getInstance(this.currentAccount).invalidateTransactions(true);
            if (!(safeLastFragment instanceof StarsIntroActivity)) {
                final StarsIntroActivity starsIntroActivity = new StarsIntroActivity();
                starsIntroActivity.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda176
                    @Override // java.lang.Runnable
                    public final void run() {
                        BulletinFactory.of(starsIntroActivity).createSimpleBulletin(C2573R.raw.stars_topup, LocaleController.getString(C2573R.string.Gift2ConvertedTitle), LocaleController.formatPluralStringComma("Gift2Converted", (int) j3)).show(true);
                    }
                });
                safeLastFragment.presentFragment(starsIntroActivity);
                return;
            }
            BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.stars_topup, LocaleController.getString(C2573R.string.Gift2ConvertedTitle), LocaleController.formatPluralStringComma("Gift2Converted", (int) j3)).show(true);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", -j);
        bundle.putBoolean("start_from_monetization", true);
        final StatisticActivity statisticActivity = new StatisticActivity(bundle);
        BotStarsController.getInstance(this.currentAccount).invalidateStarsBalance(j);
        BotStarsController.getInstance(this.currentAccount).invalidateTransactions(j, true);
        statisticActivity.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda177
            @Override // java.lang.Runnable
            public final void run() {
                BulletinFactory.of(statisticActivity).createSimpleBulletin(C2573R.raw.stars_topup, LocaleController.getString(C2573R.string.Gift2ConvertedTitle), LocaleController.formatPluralStringComma("Gift2ConvertedChannel", (int) j3)).show(true);
            }
        });
        safeLastFragment.presentFragment(statisticActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleShow() {
        boolean z;
        TLRPC.Document document;
        final boolean z2;
        StarsController.GiftsCollections profileGiftCollectionsList;
        TLRPC.Message message;
        if (this.button.isLoading()) {
            return;
        }
        TL_stars.InputSavedStarGift inputStarGift = getInputStarGift();
        MessageObject messageObject = this.messageObject;
        if (messageObject != null && (message = messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                z = tL_messageActionStarGift.saved;
                document = tL_messageActionStarGift.gift.getDocument();
            } else {
                if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                    return;
                }
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                z = tL_messageActionStarGiftUnique.saved;
                document = tL_messageActionStarGiftUnique.gift.getDocument();
            }
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift == null) {
                return;
            }
            z = !savedStarGift.unsaved;
            document = savedStarGift.gift.getDocument();
        }
        final TLRPC.Document document2 = document;
        final boolean z3 = z;
        this.button.setLoading(true);
        final TL_stars.saveStarGift savestargift = new TL_stars.saveStarGift();
        savestargift.unsave = z3;
        savestargift.stargift = inputStarGift;
        if (this.savedStarGift == null || (profileGiftCollectionsList = StarsController.getInstance(this.currentAccount).getProfileGiftCollectionsList(this.dialogId, false)) == null) {
            z2 = false;
        } else {
            profileGiftCollectionsList.updateGiftsUnsaved(this.savedStarGift, savestargift.unsave);
            z2 = true;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(savestargift, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda66
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$toggleShow$108(z2, document2, z3, savestargift, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleShow$108(final boolean z, final TLRPC.Document document, final boolean z2, final TL_stars.saveStarGift savestargift, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleShow$107(tLObject, z, document, z2, tL_error, savestargift);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleShow$107(TLObject tLObject, boolean z, TLRPC.Document document, boolean z2, TLRPC.TL_error tL_error, TL_stars.saveStarGift savestargift) {
        StarsController.GiftsCollections profileGiftCollectionsList;
        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        if (!(tLObject instanceof TLRPC.TL_boolTrue)) {
            if (tL_error != null) {
                if (z && this.savedStarGift != null && (profileGiftCollectionsList = StarsController.getInstance(this.currentAccount).getProfileGiftCollectionsList(this.dialogId, false)) != null) {
                    profileGiftCollectionsList.updateGiftsUnsaved(this.savedStarGift, !savestargift.unsave);
                }
                getBulletinFactory().createErrorBulletin(LocaleController.formatString(C2573R.string.UnknownErrorCode, tL_error.text)).show(false);
                return;
            }
            return;
        }
        lambda$new$0();
        final long dialogId = getDialogId();
        if (!z) {
            StarsController.getInstance(this.currentAccount).invalidateProfileGifts(dialogId);
        }
        if (dialogId >= 0) {
            BulletinFactory.of(safeLastFragment).createEmojiBulletin(document, LocaleController.getString(z2 ? C2573R.string.Gift2MadePrivateTitle : C2573R.string.Gift2MadePublicTitle), AndroidUtilities.replaceSingleTag(LocaleController.getString(z2 ? C2573R.string.Gift2MadePrivate : C2573R.string.Gift2MadePublic), safeLastFragment instanceof ProfileActivity ? null : new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda138
                @Override // java.lang.Runnable
                public final void run() {
                    StarGiftSheet.$r8$lambda$_GA3Otgo4e1rax6A4PxpmvnReYk(dialogId, safeLastFragment);
                }
            })).show(true);
        } else {
            BulletinFactory.of(safeLastFragment).createEmojiBulletin(document, LocaleController.getString(z2 ? C2573R.string.Gift2ChannelMadePrivateTitle : C2573R.string.Gift2ChannelMadePublicTitle), LocaleController.getString(z2 ? C2573R.string.Gift2ChannelMadePrivate : C2573R.string.Gift2ChannelMadePublic)).show();
        }
    }

    public static /* synthetic */ void $r8$lambda$_GA3Otgo4e1rax6A4PxpmvnReYk(long j, BaseFragment baseFragment) {
        Bundle bundle = new Bundle();
        if (j >= 0) {
            bundle.putLong("user_id", j);
        } else {
            bundle.putLong("chat_id", -j);
        }
        bundle.putBoolean("my_profile", true);
        bundle.putBoolean("open_gifts", true);
        baseFragment.presentFragment(new ProfileActivity(bundle));
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        if (this.currentPage.is(4) && this.topView.craftTopView.crafting) {
            return;
        }
        ResaleGiftsFragment.SelectGiftSheet.State state = this.giftsToCraft;
        if (state != null) {
            state.detach();
            this.giftsToCraft = null;
        }
        Roller roller = this.roller;
        if (roller != null) {
            roller.detach();
        }
        super.lambda$new$0();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        MessageObject messageObject;
        TLRPC.Message message;
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        if (this.slug != null && this.slugStarGift == null) {
            final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
            alertDialog.showDelayed(500L);
            TL_stars.getUniqueStarGift getuniquestargift = new TL_stars.getUniqueStarGift();
            getuniquestargift.slug = this.slug;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getuniquestargift, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$show$111(alertDialog, tLObject, tL_error);
                }
            });
        } else if (this.savedStarGift == null && (messageObject = this.messageObject) != null && (message = messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                final TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                if (tL_messageActionStarGift.upgraded) {
                    if (tL_messageActionStarGift.upgrade_msg_id != 0) {
                        final AlertDialog alertDialog2 = new AlertDialog(getContext(), 3);
                        alertDialog2.showDelayed(500L);
                        TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
                        tL_messages_getMessages.id.add(Integer.valueOf(tL_messageActionStarGift.upgrade_msg_id));
                        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda7
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$show$114(tL_messageActionStarGift, alertDialog2, tLObject, tL_error);
                            }
                        });
                        return;
                    }
                    if (getInputStarGift() != null) {
                        final AlertDialog alertDialog3 = new AlertDialog(getContext(), 3);
                        alertDialog3.showDelayed(500L);
                        StarsController.getInstance(this.currentAccount).getUserStarGift(getInputStarGift(), new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda8
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$show$115(alertDialog3, (TL_stars.SavedStarGift) obj);
                            }
                        });
                        return;
                    }
                }
            }
        }
        super.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$111(final AlertDialog alertDialog, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject instanceof TL_stars.TL_payments_uniqueStarGift) {
            final TL_stars.TL_payments_uniqueStarGift tL_payments_uniqueStarGift = (TL_stars.TL_payments_uniqueStarGift) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_payments_uniqueStarGift.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_payments_uniqueStarGift.chats, false);
            if (tL_payments_uniqueStarGift.gift instanceof TL_stars.TL_starGiftUnique) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda53
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$show$109(tL_payments_uniqueStarGift);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                StarGiftSheet.$r8$lambda$JG7RFCZaSsOXYRref3ZshUzPldg(alertDialog, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$109(TL_stars.TL_payments_uniqueStarGift tL_payments_uniqueStarGift) {
        TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) tL_payments_uniqueStarGift.gift;
        this.slugStarGift = tL_starGiftUnique;
        set(tL_starGiftUnique, false);
        super.show();
    }

    public static /* synthetic */ void $r8$lambda$JG7RFCZaSsOXYRref3ZshUzPldg(AlertDialog alertDialog, TLRPC.TL_error tL_error) {
        alertDialog.dismiss();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if (tL_error != null && "STARGIFT_ALREADY_BURNED".equalsIgnoreCase(tL_error.text)) {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.fire_on, LocaleController.getString(C2573R.string.UniqueGiftNotFoundBurned)).show();
            } else {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.error, LocaleController.getString(C2573R.string.UniqueGiftNotFound)).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$114(TLRPC.TL_messageActionStarGift tL_messageActionStarGift, final AlertDialog alertDialog, TLObject tLObject, TLRPC.TL_error tL_error) {
        final MessageObject messageObject;
        if (tLObject instanceof TLRPC.messages_Messages) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
            for (int i = 0; i < messages_messages.messages.size(); i++) {
                TLRPC.Message message = messages_messages.messages.get(i);
                if (message != null && !(message instanceof TLRPC.TL_messageEmpty) && message.id == tL_messageActionStarGift.upgrade_msg_id) {
                    messageObject = new MessageObject(this.currentAccount, message, false, false);
                    messageObject.setType();
                    break;
                }
            }
            messageObject = null;
        } else {
            messageObject = null;
        }
        if (messageObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$show$112(alertDialog, messageObject);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    StarGiftSheet.$r8$lambda$k2U2BH8w6mGev7q8bFv_16UwRhM(alertDialog);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$112(AlertDialog alertDialog, MessageObject messageObject) {
        alertDialog.dismiss();
        this.messageObjectRepolled = true;
        set(messageObject);
        super.show();
    }

    public static /* synthetic */ void $r8$lambda$k2U2BH8w6mGev7q8bFv_16UwRhM(AlertDialog alertDialog) {
        alertDialog.dismiss();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.error, LocaleController.getString(C2573R.string.MessageNotFound)).ignoreDetach().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$115(AlertDialog alertDialog, TL_stars.SavedStarGift savedStarGift) {
        if (savedStarGift != null) {
            alertDialog.dismiss();
            this.userStarGiftRepolled = true;
            set(savedStarGift, (StarsController.IGiftsList) null);
            super.show();
            return;
        }
        alertDialog.dismiss();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.error, LocaleController.getString(C2573R.string.MessageNotFound)).ignoreDetach().show();
        }
    }

    private void openUpgrade() {
        TL_stars.InputSavedStarGift inputStarGift;
        boolean z;
        boolean z2;
        String str;
        boolean z3;
        boolean z4;
        long j;
        long j2;
        HintView2 hintView2 = this.currentHintView;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHintView = null;
        }
        if (this.switchingPagesAnimator == null && (inputStarGift = getInputStarGift()) != null) {
            MessageObject messageObject = this.messageObject;
            if (messageObject != null) {
                TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                if (!(messageAction instanceof TLRPC.TL_messageActionStarGift)) {
                    return;
                }
                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                j = tL_messageActionStarGift.gift.id;
                j2 = tL_messageActionStarGift.upgrade_stars;
                z4 = tL_messageActionStarGift.name_hidden;
                TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageActionStarGift.message;
                z = (tL_textWithEntities == null || TextUtils.isEmpty(tL_textWithEntities.text)) ? false : true;
                z2 = tL_messageActionStarGift.peer instanceof TLRPC.TL_peerChannel;
                str = tL_messageActionStarGift.prepaid_upgrade_hash;
                if (tL_messageActionStarGift.prepaid_upgrade) {
                    z3 = DialogObject.getPeerDialogId(tL_messageActionStarGift.from_id) != this.messageObject.getFromChatId();
                } else {
                    z3 = tL_messageActionStarGift.upgrade_separate;
                }
            } else {
                TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
                if (savedStarGift == null) {
                    return;
                }
                TL_stars.StarGift starGift = savedStarGift.gift;
                long j3 = starGift.id;
                long j4 = savedStarGift.upgrade_stars;
                boolean z5 = (starGift instanceof TL_stars.TL_starGift) && savedStarGift.name_hidden;
                TLRPC.TL_textWithEntities tL_textWithEntities2 = savedStarGift.message;
                z = (tL_textWithEntities2 == null || TextUtils.isEmpty(tL_textWithEntities2.text)) ? false : true;
                z2 = this.dialogId < 0;
                TL_stars.SavedStarGift savedStarGift2 = this.savedStarGift;
                str = savedStarGift2.prepaid_upgrade_hash;
                z3 = savedStarGift2.upgrade_separate;
                z4 = z5;
                j = j3;
                j2 = j4;
            }
            if (z4) {
                this.checkboxTextView.setText(LocaleController.getString(z2 ? C2573R.string.Gift2AddMyNameNameChannel : C2573R.string.Gift2AddMyNameName));
            } else {
                TextView textView = this.checkboxTextView;
                if (z) {
                    textView.setText(LocaleController.getString(C2573R.string.Gift2AddSenderNameComment));
                } else {
                    textView.setText(LocaleController.getString(C2573R.string.Gift2AddSenderName));
                }
            }
            this.checkbox.setChecked((z4 || j2 <= 0 || z3) ? false : true, false);
            ArrayList<TL_stars.StarGiftAttribute> arrayList = this.sample_attributes;
            if (arrayList == null || (j2 <= 0 && this.upgrade_form == null)) {
                if (arrayList == null) {
                    StarsController.getInstance(this.currentAccount).getStarGiftPreview(j, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda59
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$openUpgrade$116((TL_stars.starGiftUpgradePreview) obj);
                        }
                    });
                }
                if (j2 > 0 || this.upgrade_form != null) {
                    return;
                }
                this.requesting_upgrade_form = true;
                TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
                if (!TextUtils.isEmpty(str)) {
                    TLRPC.TL_inputInvoiceStarGiftPrepaidUpgrade tL_inputInvoiceStarGiftPrepaidUpgrade = new TLRPC.TL_inputInvoiceStarGiftPrepaidUpgrade();
                    tL_inputInvoiceStarGiftPrepaidUpgrade.hash = str;
                    tL_inputInvoiceStarGiftPrepaidUpgrade.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                    tL_payments_getPaymentForm.invoice = tL_inputInvoiceStarGiftPrepaidUpgrade;
                } else {
                    TLRPC.TL_inputInvoiceStarGiftUpgrade tL_inputInvoiceStarGiftUpgrade = new TLRPC.TL_inputInvoiceStarGiftUpgrade();
                    tL_inputInvoiceStarGiftUpgrade.keep_original_details = this.checkbox.isChecked();
                    tL_inputInvoiceStarGiftUpgrade.stargift = inputStarGift;
                    tL_payments_getPaymentForm.invoice = tL_inputInvoiceStarGiftUpgrade;
                }
                JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(this.resourcesProvider);
                if (jSONObjectMakeThemeParams != null) {
                    TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                    tL_payments_getPaymentForm.theme_params = tL_dataJSON;
                    tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
                    tL_payments_getPaymentForm.flags |= 1;
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda60
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$openUpgrade$118(tLObject, tL_error);
                    }
                });
                return;
            }
            openUpgradeAfter();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openUpgrade$116(TL_stars.starGiftUpgradePreview stargiftupgradepreview) {
        if (stargiftupgradepreview == null) {
            return;
        }
        this.sample_attributes = stargiftupgradepreview.sample_attributes;
        this.prices = stargiftupgradepreview.prices;
        this.next_prices = stargiftupgradepreview.next_prices;
        openUpgradeAfter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openUpgrade$118(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda106
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openUpgrade$117(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openUpgrade$117(TLObject tLObject, TLRPC.TL_error tL_error) {
        this.requesting_upgrade_form = false;
        if (tLObject instanceof TLRPC.PaymentForm) {
            TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(paymentForm.users, false);
            this.upgrade_form = paymentForm;
            openUpgradeAfter();
            return;
        }
        getBulletinFactory().makeForError(tL_error).ignoreDetach().show();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020 A[PHI: r5
  0x0020: PHI (r5v42 long) = (r5v0 long), (r5v44 long) binds: [B:17:0x0036, B:9:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0022 A[PHI: r5
  0x0022: PHI (r5v1 long) = (r5v0 long), (r5v0 long), (r5v44 long), (r5v44 long) binds: [B:15:0x002e, B:17:0x0036, B:7:0x0016, B:9:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void openUpgradeAfter() {
        long j;
        boolean z;
        MessageObject messageObject = this.messageObject;
        if (messageObject != null) {
            TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionStarGift)) {
                return;
            }
            TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
            j = tL_messageActionStarGift.upgrade_stars;
            z = j <= 0 && !TextUtils.isEmpty(tL_messageActionStarGift.prepaid_upgrade_hash);
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift == null) {
                return;
            }
            j = savedStarGift.upgrade_stars;
            TL_stars.StarGift starGift = savedStarGift.gift;
            if (j > 0 || TextUtils.isEmpty(savedStarGift.prepaid_upgrade_hash)) {
            }
        }
        if (this.sample_attributes != null) {
            if (j > 0 || this.upgrade_form != null) {
                final long j2 = 0;
                if (this.upgrade_form != null) {
                    for (int i = 0; i < this.upgrade_form.invoice.prices.size(); i++) {
                        j2 += this.upgrade_form.invoice.prices.get(i).amount;
                    }
                }
                if (this.roller == null) {
                    this.roller = new Roller(this.topView);
                }
                this.roller.preload(this.sample_attributes);
                this.topView.setPreviewingAttributes(this.sample_attributes);
                TopView topView = this.topView;
                if (z) {
                    topView.setText(1, LocaleController.getString(C2573R.string.Gift2PrepayUpgradeTitle), LocaleController.formatString(C2573R.string.Gift2PrepayUpgradeText, DialogObject.getShortName(this.currentAccount, this.dialogId)), null, null);
                } else {
                    topView.setText(1, LocaleController.getString(C2573R.string.Gift2UpgradeTitle), LocaleController.getString(C2573R.string.Gift2UpgradeText), null, null);
                }
                this.button.setFilled(true);
                TL_stars.StarGiftUpgradePrice starGiftUpgradePrice = null;
                this.button.setSubText(null, true);
                if (j2 > 0) {
                    int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                    if (this.next_prices != null) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= this.next_prices.size()) {
                                break;
                            }
                            TL_stars.StarGiftUpgradePrice starGiftUpgradePrice2 = this.next_prices.get(i2);
                            if (starGiftUpgradePrice2.date >= currentTime) {
                                starGiftUpgradePrice = starGiftUpgradePrice2;
                                break;
                            }
                            i2++;
                        }
                    }
                    ArrayList<TL_stars.StarGiftUpgradePrice> arrayList = this.prices;
                    if (arrayList != null && starGiftUpgradePrice != null && !arrayList.isEmpty()) {
                        this.underButtonContainer.setVisibility(0);
                        this.underButtonLinkTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag("**" + LocaleController.getString(C2573R.string.Gift2UpgradeCostsInfo) + "**", new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda103
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.openUpgradePrices();
                            }
                        }), false, AndroidUtilities.dp(0.6666667f), AndroidUtilities.dp(0.66f)));
                    } else {
                        this.underButtonContainer.setVisibility(8);
                    }
                    updateUnderButtonContainer();
                    ButtonWithCounterView buttonWithCounterView = this.button;
                    if (z) {
                        buttonWithCounterView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.Gift2PrepayUpgradeButton, Long.valueOf(j2)), 1.13f, this.starCached), true);
                    } else {
                        buttonWithCounterView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.Gift2UpgradeButton, Long.valueOf(j2)), 1.13f, this.starCached), true);
                    }
                } else {
                    this.button.setText(LocaleController.getString(C2573R.string.Confirm), true);
                }
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda104
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$openUpgradeAfter$119(view);
                    }
                });
                LinearLayout linearLayout = this.checkboxLayout;
                if (z) {
                    linearLayout.setVisibility(8);
                    this.checkboxSeparator.setVisibility(8);
                } else {
                    linearLayout.setVisibility(0);
                    this.checkboxSeparator.setVisibility(0);
                }
                AffiliateProgramFragment.FeatureCell[] featureCellArr = this.upgradeFeatureCells;
                if (z) {
                    featureCellArr[0].set(C2573R.drawable.menu_feature_unique, LocaleController.getString(C2573R.string.Gift2UpgradeFeature1Title), z ? LocaleController.formatString(C2573R.string.Gift2PrepayUpgradeFeature1Text, DialogObject.getShortName(this.currentAccount, this.dialogId)) : LocaleController.getString(C2573R.string.Gift2UpgradeFeature1Text));
                    this.upgradeFeatureCells[1].set(C2573R.drawable.menu_feature_transfer, LocaleController.getString(C2573R.string.Gift2UpgradeFeature2Title), z ? LocaleController.formatString(C2573R.string.Gift2PrepayUpgradeFeature2Text, DialogObject.getShortName(this.currentAccount, this.dialogId)) : LocaleController.getString(C2573R.string.Gift2UpgradeFeature2Text));
                    this.upgradeFeatureCells[2].set(C2573R.drawable.menu_feature_tradable, LocaleController.getString(C2573R.string.Gift2UpgradeFeature3Title), z ? LocaleController.formatString(C2573R.string.Gift2PrepayUpgradeFeature3Text, DialogObject.getShortName(this.currentAccount, this.dialogId)) : LocaleController.getString(C2573R.string.Gift2UpgradeFeature3Text));
                } else {
                    featureCellArr[0].set(C2573R.drawable.menu_feature_unique, LocaleController.getString(C2573R.string.Gift2UpgradeFeature1Title), LocaleController.getString(C2573R.string.GiftsFeature1Text));
                    this.upgradeFeatureCells[1].set(C2573R.drawable.menu_feature_tradable, LocaleController.getString(C2573R.string.Gift2UpgradeFeature3Title), LocaleController.getString(C2573R.string.GiftsFeature2Text));
                    this.upgradeFeatureCells[2].set(C2573R.drawable.menu_wear, LocaleController.getString(C2573R.string.GiftsFeature3Title), LocaleController.getString(C2573R.string.GiftsFeature3Text));
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda105
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$openUpgradeAfter$120(j2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openUpgradeAfter$119(View view) {
        doUpgrade();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openUpgradeAfter$120(long j) {
        switchPage(1, true);
        if (j > 0) {
            AndroidUtilities.cancelRunOnUIThread(this.tickUpgradePriceRunnable);
            AndroidUtilities.runOnUIThread(this.tickUpgradePriceRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUpgradePrices() {
        if (this.upgrade_form == null) {
            return;
        }
        long j = 0;
        for (int i = 0; i < this.upgrade_form.invoice.prices.size(); i++) {
            j += this.upgrade_form.invoice.prices.get(i).amount;
        }
        UpgradePricesSheet upgradePricesSheet = new UpgradePricesSheet(getContext(), j, this.prices, this.resourcesProvider);
        this.upgradeSheet = upgradePricesSheet;
        upgradePricesSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034 A[PHI: r2
  0x0034: PHI (r2v19 java.lang.String) = (r2v2 java.lang.String), (r2v23 java.lang.String) binds: [B:23:0x0048, B:15:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036 A[PHI: r2
  0x0036: PHI (r2v3 java.lang.String) = (r2v2 java.lang.String), (r2v2 java.lang.String), (r2v23 java.lang.String), (r2v23 java.lang.String) binds: [B:21:0x0042, B:23:0x0048, B:13:0x002c, B:15:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void tickUpgradePrice() {
        String str;
        boolean z;
        int i;
        TL_stars.StarGiftUpgradePrice starGiftUpgradePrice;
        String pluralString;
        if (this.currentPage.to == 1 && !isDismissed()) {
            TL_stars.InputSavedStarGift inputStarGift = getInputStarGift();
            MessageObject messageObject = this.messageObject;
            long j = 0;
            if (messageObject != null) {
                TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
                if (!(messageAction instanceof TLRPC.TL_messageActionStarGift)) {
                    return;
                }
                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                long j2 = tL_messageActionStarGift.upgrade_stars;
                str = tL_messageActionStarGift.prepaid_upgrade_hash;
                z = j2 <= 0 && !TextUtils.isEmpty(str);
            } else {
                TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
                if (savedStarGift == null) {
                    return;
                }
                long j3 = savedStarGift.upgrade_stars;
                str = savedStarGift.prepaid_upgrade_hash;
                if (j3 > 0 || TextUtils.isEmpty(str)) {
                }
            }
            int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            if (this.next_prices != null) {
                i = 0;
                while (i < this.next_prices.size()) {
                    starGiftUpgradePrice = this.next_prices.get(i);
                    if (starGiftUpgradePrice.date >= currentTime) {
                        break;
                    } else {
                        i++;
                    }
                }
                i = -1;
                starGiftUpgradePrice = null;
            } else {
                i = -1;
                starGiftUpgradePrice = null;
            }
            if (this.upgrade_form != null) {
                for (int i2 = 0; i2 < this.upgrade_form.invoice.prices.size(); i2++) {
                    j += this.upgrade_form.invoice.prices.get(i2).amount;
                }
            }
            if (i > 0 && !this.requesting_upgrade_form) {
                this.requesting_upgrade_form = true;
                if (this.next_prices != null) {
                    for (int i3 = 0; i3 < i; i3++) {
                        this.next_prices.remove(0);
                    }
                }
                TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
                if (!TextUtils.isEmpty(str)) {
                    TLRPC.TL_inputInvoiceStarGiftPrepaidUpgrade tL_inputInvoiceStarGiftPrepaidUpgrade = new TLRPC.TL_inputInvoiceStarGiftPrepaidUpgrade();
                    tL_inputInvoiceStarGiftPrepaidUpgrade.hash = str;
                    tL_inputInvoiceStarGiftPrepaidUpgrade.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                    tL_payments_getPaymentForm.invoice = tL_inputInvoiceStarGiftPrepaidUpgrade;
                } else {
                    TLRPC.TL_inputInvoiceStarGiftUpgrade tL_inputInvoiceStarGiftUpgrade = new TLRPC.TL_inputInvoiceStarGiftUpgrade();
                    tL_inputInvoiceStarGiftUpgrade.keep_original_details = this.checkbox.isChecked();
                    tL_inputInvoiceStarGiftUpgrade.stargift = inputStarGift;
                    tL_payments_getPaymentForm.invoice = tL_inputInvoiceStarGiftUpgrade;
                }
                JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(this.resourcesProvider);
                if (jSONObjectMakeThemeParams != null) {
                    TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
                    tL_payments_getPaymentForm.theme_params = tL_dataJSON;
                    tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
                    tL_payments_getPaymentForm.flags |= 1;
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda61
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$tickUpgradePrice$122(tLObject, tL_error);
                    }
                });
            }
            ButtonWithCounterView buttonWithCounterView = this.button;
            if (z) {
                buttonWithCounterView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.Gift2PrepayUpgradeButton, Long.valueOf(j)), 1.13f, this.starCached), true);
            } else {
                buttonWithCounterView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.Gift2UpgradeButton, Long.valueOf(j)), 1.13f, this.starCached), true);
            }
            UpgradePricesSheet upgradePricesSheet = this.upgradeSheet;
            if (upgradePricesSheet != null) {
                upgradePricesSheet.setCurrentPrice(j);
            }
            if (starGiftUpgradePrice != null) {
                int i4 = starGiftUpgradePrice.date - currentTime;
                if (i4 < 86400) {
                    pluralString = AndroidUtilities.formatDuration(i4, false, true);
                } else {
                    pluralString = LocaleController.formatPluralString("Days", Math.round(i4 / 86400.0f), new Object[0]);
                }
                this.button.setSubTextHacks(false, true, true, false);
                this.button.setSubText(LocaleController.formatString(C2573R.string.Gift2UpgradeButtonDecreasesIn, pluralString), true);
                AndroidUtilities.runOnUIThread(this.tickUpgradePriceRunnable, 1000L);
                return;
            }
            this.button.setSubText(null, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tickUpgradePrice$122(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$tickUpgradePrice$121(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tickUpgradePrice$121(TLObject tLObject, TLRPC.TL_error tL_error) {
        this.requesting_upgrade_form = false;
        if (tLObject instanceof TLRPC.PaymentForm) {
            TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(paymentForm.users, false);
            this.upgrade_form = paymentForm;
            AndroidUtilities.cancelRunOnUIThread(this.tickUpgradePriceRunnable);
            AndroidUtilities.runOnUIThread(this.tickUpgradePriceRunnable);
            return;
        }
        getBulletinFactory().makeForError(tL_error).ignoreDetach().show();
    }

    private int applyNewGiftFromUpdates(TL_stars.InputSavedStarGift inputSavedStarGift, TLRPC.Updates updates, Runnable runnable) {
        TLRPC.Message message;
        if (updates == null) {
            StarsController.getInstance(this.currentAccount).invalidateProfileGifts(getDialogId());
            lambda$new$0();
            return 0;
        }
        TLRPC.Update update = updates.update;
        if (update instanceof TL_update.TL_updateNewMessage) {
            message = ((TL_update.TL_updateNewMessage) update).message;
        } else if (updates.updates != null) {
            for (int i = 0; i < updates.updates.size(); i++) {
                TLRPC.Update update2 = updates.updates.get(i);
                if (update2 instanceof TL_update.TL_updateNewMessage) {
                    message = ((TL_update.TL_updateNewMessage) update2).message;
                    break;
                }
            }
            message = null;
        } else {
            message = null;
        }
        if (message != null) {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null && inputSavedStarGift != null && eq(savedStarGift, inputSavedStarGift)) {
                TLRPC.MessageAction messageAction = message.action;
                if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                    this.rolling = true;
                    TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                    TL_stars.SavedStarGift savedStarGift2 = this.savedStarGift;
                    savedStarGift2.gift = tL_messageActionStarGiftUnique.gift;
                    int i2 = savedStarGift2.flags | 8;
                    savedStarGift2.flags = i2;
                    savedStarGift2.msg_id = message.id;
                    savedStarGift2.flags = i2 & (-2049);
                    savedStarGift2.saved_id = 0L;
                    savedStarGift2.unsaved = !tL_messageActionStarGiftUnique.saved;
                    savedStarGift2.refunded = tL_messageActionStarGiftUnique.refunded;
                    savedStarGift2.can_upgrade = false;
                    savedStarGift2.can_resell_at = tL_messageActionStarGiftUnique.can_resell_at;
                    savedStarGift2.can_transfer_at = tL_messageActionStarGiftUnique.can_transfer_at;
                    savedStarGift2.can_export_at = tL_messageActionStarGiftUnique.can_export_at;
                    set(savedStarGift2, this.giftsList);
                    this.sample_attributes = null;
                    this.rolling = false;
                    StarsController.IGiftsList iGiftsList = this.giftsList;
                    if (iGiftsList != null) {
                        iGiftsList.notifyUpdate();
                    } else {
                        StarsController.getInstance(this.currentAccount).invalidateProfileGifts(this.dialogId);
                    }
                    AndroidUtilities.runOnUIThread(runnable);
                    return 1;
                }
            }
            if (this.giftsList == null) {
                StarsController.getInstance(this.currentAccount).invalidateProfileGifts(getDialogId());
            }
            this.rolling = true;
            this.savedStarGift = null;
            this.myProfile = false;
            MessageObject messageObject = new MessageObject(this.currentAccount, message, false, false);
            messageObject.setType();
            set(messageObject, this.giftsList);
            this.sample_attributes = null;
            this.rolling = false;
            AndroidUtilities.runOnUIThread(runnable);
            return 1;
        }
        StarsController.getInstance(this.currentAccount).invalidateProfileGifts(getDialogId());
        lambda$new$0();
        return 0;
    }

    private void doUpgrade() {
        final TL_stars.InputSavedStarGift inputStarGift;
        long j;
        if (this.button.isLoading() || (inputStarGift = getInputStarGift()) == null) {
            return;
        }
        MessageObject messageObject = this.messageObject;
        String str = null;
        long j2 = 0;
        if (messageObject != null) {
            TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionStarGift)) {
                return;
            }
            TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
            j = tL_messageActionStarGift.upgrade_stars;
            if (j <= 0) {
                str = tL_messageActionStarGift.prepaid_upgrade_hash;
            }
        } else {
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift == null) {
                return;
            }
            j = savedStarGift.upgrade_stars;
            if (j <= 0) {
                str = savedStarGift.prepaid_upgrade_hash;
            }
        }
        if (j > 0 || this.upgrade_form != null) {
            this.button.setLoading(true);
            if (j > 0) {
                TL_stars.upgradeStarGift upgradestargift = new TL_stars.upgradeStarGift();
                upgradestargift.keep_original_details = this.checkbox.isChecked();
                upgradestargift.stargift = inputStarGift;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(upgradestargift, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda160
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$doUpgrade$126(inputStarGift, tLObject, tL_error);
                    }
                });
                return;
            }
            final StarsController starsController = StarsController.getInstance(this.currentAccount);
            if (!starsController.balanceAvailable()) {
                starsController.getBalance(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda161
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$doUpgrade$127(starsController);
                    }
                });
                return;
            }
            TL_stars.TL_payments_sendStarsForm tL_payments_sendStarsForm = new TL_stars.TL_payments_sendStarsForm();
            tL_payments_sendStarsForm.form_id = this.upgrade_form.form_id;
            if (!TextUtils.isEmpty(str)) {
                TLRPC.TL_inputInvoiceStarGiftPrepaidUpgrade tL_inputInvoiceStarGiftPrepaidUpgrade = new TLRPC.TL_inputInvoiceStarGiftPrepaidUpgrade();
                tL_inputInvoiceStarGiftPrepaidUpgrade.hash = str;
                tL_inputInvoiceStarGiftPrepaidUpgrade.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                tL_payments_sendStarsForm.invoice = tL_inputInvoiceStarGiftPrepaidUpgrade;
            } else {
                TLRPC.TL_inputInvoiceStarGiftUpgrade tL_inputInvoiceStarGiftUpgrade = new TLRPC.TL_inputInvoiceStarGiftUpgrade();
                tL_inputInvoiceStarGiftUpgrade.keep_original_details = this.checkbox.isChecked();
                tL_inputInvoiceStarGiftUpgrade.stargift = inputStarGift;
                tL_payments_sendStarsForm.invoice = tL_inputInvoiceStarGiftUpgrade;
            }
            ArrayList<TLRPC.TL_labeledPrice> arrayList = this.upgrade_form.invoice.prices;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.TL_labeledPrice tL_labeledPrice = arrayList.get(i);
                i++;
                j2 += tL_labeledPrice.amount;
            }
            final long j3 = j2;
            final String str2 = str;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_sendStarsForm, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda162
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$doUpgrade$136(str2, inputStarGift, j3, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$126(final TL_stars.InputSavedStarGift inputSavedStarGift, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(updates.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(updates.chats, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda178
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doUpgrade$125(tL_error, tLObject, inputSavedStarGift);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$125(TLRPC.TL_error tL_error, final TLObject tLObject, TL_stars.InputSavedStarGift inputSavedStarGift) {
        if (tL_error != null || !(tLObject instanceof TLRPC.Updates)) {
            getBulletinFactory().showForError(tL_error);
            return;
        }
        this.upgradedOnce = true;
        this.upgrade_form = null;
        applyNewGiftFromUpdates(inputSavedStarGift, (TLRPC.Updates) tLObject, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda188
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doUpgrade$123();
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda189
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doUpgrade$124(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$123() {
        this.button.setLoading(false);
        switchPage(0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$124(TLObject tLObject) {
        MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.Updates) tLObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$127(StarsController starsController) {
        if (!starsController.balanceAvailable()) {
            getBulletinFactory().createSimpleBulletin(C2573R.raw.error, LocaleController.formatString(C2573R.string.UnknownErrorCode, "NO_BALANCE")).ignoreDetach().show();
        } else {
            this.button.setLoading(false);
            doUpgrade();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$136(final String str, final TL_stars.InputSavedStarGift inputSavedStarGift, final long j, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda163
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doUpgrade$135(tLObject, str, inputSavedStarGift, tL_error, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$135(TLObject tLObject, final String str, TL_stars.InputSavedStarGift inputSavedStarGift, TLRPC.TL_error tL_error, final long j) {
        TL_stars.SavedStarGift savedStarGift;
        if (tLObject instanceof TLRPC.TL_payments_paymentResult) {
            final TLRPC.TL_payments_paymentResult tL_payments_paymentResult = (TLRPC.TL_payments_paymentResult) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_payments_paymentResult.updates.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_payments_paymentResult.updates.chats, false);
            StarsController.getInstance(this.currentAccount).invalidateTransactions(false);
            StarsController.getInstance(this.currentAccount).invalidateBalance();
            if (!TextUtils.isEmpty(str) && (savedStarGift = this.savedStarGift) != null) {
                savedStarGift.flags &= -65537;
                savedStarGift.prepaid_upgrade_hash = null;
            }
            this.upgradedOnce = true;
            this.upgrade_form = null;
            applyNewGiftFromUpdates(inputSavedStarGift, tL_payments_paymentResult.updates, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda184
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doUpgrade$130(str);
                }
            });
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda185
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doUpgrade$131(tL_payments_paymentResult);
                }
            });
            return;
        }
        if (tL_error != null && "BALANCE_TOO_LOW".equals(tL_error.text)) {
            if (!MessagesController.getInstance(this.currentAccount).starsPurchaseAvailable()) {
                this.button.setLoading(false);
                StarsController.showNoSupportDialog(getContext(), this.resourcesProvider);
                return;
            } else {
                StarsController.getInstance(this.currentAccount).invalidateBalance(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda186
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$doUpgrade$134(j);
                    }
                });
                return;
            }
        }
        getBulletinFactory().showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$130(String str) {
        this.button.setLoading(false);
        if (!TextUtils.isEmpty(str)) {
            lambda$new$0();
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment == null) {
                return;
            }
            if (lastFragment instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) lastFragment;
                if (chatActivity.getDialogId() == this.dialogId) {
                    BulletinFactory.of(chatActivity).createSimpleBulletin(C2573R.raw.gift, LocaleController.getString(C2573R.string.StarsGiftUpgradeCompleted), AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.StarsGiftUpgradeCompletedText, DialogObject.getShortName(this.dialogId)))).show(true);
                    return;
                }
            }
            NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
            int i = NotificationCenter.closeProfileActivity;
            Long lValueOf = Long.valueOf(this.dialogId);
            Boolean bool = Boolean.FALSE;
            notificationCenter.lambda$postNotificationNameOnUIThread$1(i, lValueOf, bool);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChatActivity, Long.valueOf(this.dialogId), bool);
            final ChatActivity chatActivityOf = ChatActivity.of(this.dialogId);
            chatActivityOf.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda199
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doUpgrade$129(chatActivityOf);
                }
            });
            lastFragment.presentFragment(chatActivityOf);
            return;
        }
        switchPage(0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$129(ChatActivity chatActivity) {
        BulletinFactory.of(chatActivity).createSimpleBulletin(C2573R.raw.gift, LocaleController.getString(C2573R.string.StarsGiftUpgradeCompleted), AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.StarsGiftUpgradeCompletedText, DialogObject.getShortName(this.dialogId))), LocaleController.getString(C2573R.string.StarsGiftUpgradeCompletedMoreButton), new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doUpgrade$128();
            }
        }).show(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$128() {
        Bundle bundle = new Bundle();
        long j = this.dialogId;
        if (j >= 0) {
            bundle.putLong("user_id", j);
        } else {
            bundle.putLong("chat_id", -j);
        }
        if (this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            bundle.putBoolean("my_profile", true);
        }
        bundle.putBoolean("open_gifts", true);
        bundle.putBoolean("open_gifts_upgradable", true);
        presentFragment(new ProfileActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$131(TLRPC.TL_payments_paymentResult tL_payments_paymentResult) {
        MessagesController.getInstance(this.currentAccount).processUpdates(tL_payments_paymentResult.updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$134(long j) {
        final boolean[] zArr = {false};
        StarsIntroActivity.StarsNeededSheet starsNeededSheet = new StarsIntroActivity.StarsNeededSheet(getContext(), this.resourcesProvider, j, 10, null, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda197
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doUpgrade$132(zArr);
            }
        }, 0L);
        starsNeededSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda198
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$doUpgrade$133(dialogInterface);
            }
        });
        starsNeededSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$132(boolean[] zArr) {
        zArr[0] = true;
        this.button.setLoading(false);
        doUpgrade();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doUpgrade$133(DialogInterface dialogInterface) {
        this.button.setLoading(false);
    }

    private void cantWithBlockchainGiftAlert(int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C2573R.string.Gift2CantDoTitle));
        builder.setMessage(LocaleController.getString(C2573R.string.Gift2CantDoText));
        final TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift != null && !TextUtils.isEmpty(uniqueGift.slug)) {
            builder.setPositiveButton(LocaleController.getString(C2573R.string.OpenFragment), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda92
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$cantWithBlockchainGiftAlert$137(uniqueGift, alertDialog, i2);
                }
            });
        }
        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cantWithBlockchainGiftAlert$137(TL_stars.TL_starGiftUnique tL_starGiftUnique, AlertDialog alertDialog, int i) {
        Browser.openUrlInSystemBrowser(getContext(), "https://fragment.com/gift/" + tL_starGiftUnique.slug);
    }

    public void onTransferClick(View view) {
        if (view.getAlpha() < 0.99f) {
            cantWithBlockchainGiftAlert(0);
        } else {
            openTransfer();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void openTransfer() {
        TLRPC.Message message;
        TL_stars.TL_starGiftUnique tL_starGiftUnique;
        final int i;
        HintView2 hintView2 = this.currentHintView;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHintView = null;
        }
        if (canTransferAt() > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
            showTimeoutAlertAt(getContext(), false, canTransferAt());
            return;
        }
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        if (savedStarGift != null) {
            TL_stars.StarGift starGift = savedStarGift.gift;
            if (starGift instanceof TL_stars.TL_starGiftUnique) {
                tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift;
                i = savedStarGift.can_export_at;
                long j = savedStarGift.transfer_stars;
            } else {
                MessageObject messageObject = this.messageObject;
                if (messageObject == null || (message = messageObject.messageOwner) == null) {
                    return;
                }
                TLRPC.MessageAction messageAction = message.action;
                if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                    return;
                }
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                TL_stars.StarGift starGift2 = tL_messageActionStarGiftUnique.gift;
                if (!(starGift2 instanceof TL_stars.TL_starGiftUnique)) {
                    return;
                }
                tL_starGiftUnique = (TL_stars.TL_starGiftUnique) starGift2;
                i = tL_messageActionStarGiftUnique.can_export_at;
            }
        }
        final TL_stars.TL_starGiftUnique tL_starGiftUnique2 = tL_starGiftUnique;
        final int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        Context context = getContext();
        int i2 = this.currentAccount;
        final UserSelectorBottomSheet[] userSelectorBottomSheetArr = {new UserSelectorBottomSheet(context, i2, 0L, BirthdayController.getInstance(i2).getState(), 3, true, this.resourcesProvider)};
        userSelectorBottomSheetArr[0].setTitle(LocaleController.getString(C2573R.string.Gift2TransferShort));
        final int iMax = currentTime > i ? 0 : Math.max(1, Math.round(Math.max(0, i - currentTime) / 86400.0f));
        userSelectorBottomSheetArr[0].addTONOption(iMax);
        userSelectorBottomSheetArr[0].setOnUserSelector(new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda94
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$openTransfer$149(currentTime, i, iMax, tL_starGiftUnique2, userSelectorBottomSheetArr, (Long) obj);
            }
        });
        userSelectorBottomSheetArr[0].show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$149(int i, int i2, int i3, TL_stars.TL_starGiftUnique tL_starGiftUnique, final UserSelectorBottomSheet[] userSelectorBottomSheetArr, final Long l) {
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        if (l.longValue() == -99) {
            if (i < i2) {
                new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.Gift2ExportTONUnlocksAlertTitle)).setMessage(LocaleController.formatPluralString("Gift2ExportTONUnlocksAlertText", Math.max(1, i3), new Object[0])).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
                return;
            }
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(1);
            linearLayout.addView(new GiftTransferTopView(getContext(), tL_starGiftUnique), LayoutHelper.createLinear(-1, -2, 48, 0, -4, 0, 0));
            TextView textView = new TextView(getContext());
            int i4 = Theme.key_dialogTextBlack;
            textView.setTextColor(Theme.getColor(i4, this.resourcesProvider));
            textView.setTextSize(1, 20.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setText(LocaleController.getString(C2573R.string.Gift2ExportTONFragmentTitle));
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 48, 24, 4, 24, 14));
            TextView textView2 = new TextView(getContext());
            textView2.setTextColor(Theme.getColor(i4, this.resourcesProvider));
            textView2.setTextSize(1, 16.0f);
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2ExportTONFragmentText, getGiftName())));
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 48, 24, 0, 24, 4));
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setView(linearLayout).setPositiveButton(LocaleController.getString(C2573R.string.Gift2ExportTONFragmentOpen), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda124
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    this.f$0.lambda$openTransfer$140(userSelectorBottomSheetArr, alertDialog, i5);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).show();
            return;
        }
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda125
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openTransfer$144(l, userSelectorBottomSheetArr);
            }
        };
        if (l.longValue() < 0) {
            TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-l.longValue());
            if (chatFull == null) {
                TLRPC.TL_channels_getFullChannel tL_channels_getFullChannel = new TLRPC.TL_channels_getFullChannel();
                tL_channels_getFullChannel.channel = MessagesController.getInstance(this.currentAccount).getInputChannel(-l.longValue());
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_getFullChannel, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda126
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$openTransfer$146(runnable, tLObject, tL_error);
                    }
                });
                return;
            } else if (!chatFull.stargifts_available) {
                new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.Gift2ChannelDoesntSupportGiftsTitle)).setMessage(LocaleController.getString(C2573R.string.Gift2ChannelDoesntSupportGiftsText)).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
                return;
            }
        } else if (l.longValue() >= 0) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(l);
            TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(l.longValue());
            if (userFull != null && (disallowedGiftsSettings = userFull.disallowed_stargifts) != null && disallowedGiftsSettings.disallow_unique_stargifts) {
                BulletinFactory.of(userSelectorBottomSheetArr[0].container, this.resourcesProvider).createSimpleBulletin(C2573R.raw.error, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.UserDisallowedGifts, DialogObject.getShortName(l.longValue())))).show();
                return;
            } else if (userFull == null && user != null) {
                TLRPC.TL_users_getFullUser tL_users_getFullUser = new TLRPC.TL_users_getFullUser();
                tL_users_getFullUser.id = MessagesController.getInstance(this.currentAccount).getInputUser(user);
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_users_getFullUser, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda127
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$openTransfer$148(userSelectorBottomSheetArr, l, runnable, tLObject, tL_error);
                    }
                });
                return;
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$140(final UserSelectorBottomSheet[] userSelectorBottomSheetArr, AlertDialog alertDialog, int i) {
        final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(i);
        final TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
        twoStepVerificationActivity.setDelegate(2, new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda158
            @Override // org.telegram.ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
            public final void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
                this.f$0.lambda$openTransfer$138(twoStepVerificationActivity, inputCheckPasswordSRP);
            }
        });
        twoStepVerificationActivity.setDelegateString(getGiftName());
        progressMakeButtonLoading.init();
        twoStepVerificationActivity.preload(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda159
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openTransfer$139(userSelectorBottomSheetArr, progressMakeButtonLoading, twoStepVerificationActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$139(UserSelectorBottomSheet[] userSelectorBottomSheetArr, Browser.Progress progress, TwoStepVerificationActivity twoStepVerificationActivity) {
        userSelectorBottomSheetArr[0].lambda$new$0();
        progress.end();
        presentFragment(twoStepVerificationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$144(final Long l, final UserSelectorBottomSheet[] userSelectorBottomSheetArr) {
        openTransferAlert(l.longValue(), new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda150
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$openTransfer$143(l, userSelectorBottomSheetArr, (Browser.Progress) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$143(Long l, final UserSelectorBottomSheet[] userSelectorBottomSheetArr, final Browser.Progress progress) {
        progress.init();
        doTransfer(l.longValue(), new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda175
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$openTransfer$142(progress, userSelectorBottomSheetArr, (TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$142(Browser.Progress progress, UserSelectorBottomSheet[] userSelectorBottomSheetArr, final TLRPC.TL_error tL_error) {
        progress.end();
        userSelectorBottomSheetArr[0].lambda$new$0();
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda183
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openTransfer$141(tL_error);
                }
            });
        } else {
            lambda$new$0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$141(TLRPC.TL_error tL_error) {
        getBulletinFactory().showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$146(final Runnable runnable, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda135
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openTransfer$145(tLObject, runnable, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$145(TLObject tLObject, Runnable runnable, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_messages_chatFull) {
            TLRPC.TL_messages_chatFull tL_messages_chatFull = (TLRPC.TL_messages_chatFull) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_messages_chatFull.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_messages_chatFull.chats, false);
            MessagesController.getInstance(this.currentAccount).putChatFull(tL_messages_chatFull.full_chat);
            if (!tL_messages_chatFull.full_chat.stargifts_available) {
                new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2573R.string.Gift2ChannelDoesntSupportGiftsTitle)).setMessage(LocaleController.getString(C2573R.string.Gift2ChannelDoesntSupportGiftsText)).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).show();
                return;
            } else {
                runnable.run();
                return;
            }
        }
        getBulletinFactory().makeForError(tL_error).ignoreDetach().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$148(final UserSelectorBottomSheet[] userSelectorBottomSheetArr, final Long l, final Runnable runnable, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda147
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openTransfer$147(tLObject, userSelectorBottomSheetArr, l, runnable, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openTransfer$147(TLObject tLObject, UserSelectorBottomSheet[] userSelectorBottomSheetArr, Long l, Runnable runnable, TLRPC.TL_error tL_error) {
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        if (tLObject instanceof TLRPC.TL_users_userFull) {
            TLRPC.TL_users_userFull tL_users_userFull = (TLRPC.TL_users_userFull) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_users_userFull.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_users_userFull.chats, false);
            TLRPC.UserFull userFull = tL_users_userFull.full_user;
            if (userFull != null && (disallowedGiftsSettings = userFull.disallowed_stargifts) != null && disallowedGiftsSettings.disallow_unique_stargifts) {
                BulletinFactory.of(userSelectorBottomSheetArr[0].container, this.resourcesProvider).createSimpleBulletin(C2573R.raw.error, AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.UserDisallowedGifts, DialogObject.getShortName(l.longValue())))).show();
                return;
            } else {
                runnable.run();
                return;
            }
        }
        getBulletinFactory().makeForError(tL_error).ignoreDetach().show();
    }

    public void openTransferAlert(long j, Utilities.Callback<Browser.Progress> callback) {
        TLRPC.Message message;
        long j2;
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        if (savedStarGift != null && (savedStarGift.gift instanceof TL_stars.TL_starGiftUnique)) {
            j2 = savedStarGift.transfer_stars;
        } else {
            MessageObject messageObject = this.messageObject;
            if (messageObject == null || (message = messageObject.messageOwner) == null) {
                return;
            }
            TLRPC.MessageAction messageAction = message.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                return;
            }
            TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
            if (!(tL_messageActionStarGiftUnique.gift instanceof TL_stars.TL_starGiftUnique)) {
                return;
            } else {
                j2 = tL_messageActionStarGiftUnique.transfer_stars;
            }
        }
        openTransferAlert(j, j2, callback);
    }

    private void openTransferAlert(long j, long j2, final Utilities.Callback<Browser.Progress> callback) {
        String forcedFirstName;
        TLObject tLObject;
        String string;
        TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (uniqueGift == null) {
            return;
        }
        int i = this.currentAccount;
        if (j >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            forcedFirstName = UserObject.getForcedFirstName(user);
            tLObject = user;
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            if (chat == null) {
                forcedFirstName = _UrlKt.FRAGMENT_ENCODE_SET;
                tLObject = chat;
            } else {
                forcedFirstName = chat.title;
                tLObject = chat;
            }
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(new GiftTransferTopView(getContext(), uniqueGift, tLObject), LayoutHelper.createLinear(-1, -2, 48, 0, -4, 0, 0));
        TextView textView = new TextView(getContext());
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        textView.setTextSize(1, 16.0f);
        if (j2 > 0) {
            string = LocaleController.formatPluralStringComma("Gift2TransferPriceText", (int) j2, getGiftName(), DialogObject.getShortName(j));
        } else {
            string = LocaleController.formatString(C2573R.string.Gift2TransferText, getGiftName(), forcedFirstName);
        }
        textView.setText(AndroidUtilities.replaceTags(string));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 48, 24, 4, 24, 4));
        TableView tableView = new TableView(getContext(), this.resourcesProvider);
        addAttributeRow(tableView, StarsController.findAttribute(uniqueGift.attributes, TL_stars.starGiftAttributeModel.class));
        addAttributeRow(tableView, StarsController.findAttribute(uniqueGift.attributes, TL_stars.starGiftAttributeBackdrop.class));
        addAttributeRow(tableView, StarsController.findAttribute(uniqueGift.attributes, TL_stars.starGiftAttributePattern.class));
        if (!TextUtils.isEmpty(uniqueGift.slug) && (uniqueGift.flags & 256) != 0) {
            String currency = BillingController.getInstance().formatCurrency(uniqueGift.value_amount, uniqueGift.value_currency, BillingController.getInstance().getCurrencyExp(uniqueGift.value_currency), true);
            tableView.addRow(LocaleController.getString(C2573R.string.GiftValue2), "~" + currency);
        }
        linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 48, 23, 16, 23, 4));
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setView(linearLayout).setPositiveButton(j2 > 0 ? StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.Gift2TransferDoPrice, Integer.valueOf((int) j2))) : LocaleController.getString(C2573R.string.Gift2TransferDo), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda91
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                callback.run(alertDialog.makeButtonLoading(i2));
            }
        }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).create().setShowStarsBalance(true).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initTONTransfer, reason: merged with bridge method [inline-methods] */
    public void lambda$openTransfer$138(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity) {
        TL_stars.getStarGiftWithdrawalUrl getstargiftwithdrawalurl = new TL_stars.getStarGiftWithdrawalUrl();
        TL_stars.InputSavedStarGift inputStarGift = getInputStarGift();
        getstargiftwithdrawalurl.stargift = inputStarGift;
        if (inputStarGift == null) {
            return;
        }
        getstargiftwithdrawalurl.password = inputCheckPasswordSRP;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(getstargiftwithdrawalurl, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda179
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$initTONTransfer$155(twoStepVerificationActivity, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTONTransfer$155(final TwoStepVerificationActivity twoStepVerificationActivity, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda182
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initTONTransfer$154(tL_error, twoStepVerificationActivity, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTONTransfer$154(TLRPC.TL_error tL_error, final TwoStepVerificationActivity twoStepVerificationActivity, TLObject tLObject) {
        int i;
        if (getContext() == null) {
            return;
        }
        if (tL_error != null) {
            if ("PASSWORD_MISSING".equals(tL_error.text) || tL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tL_error.text.startsWith("SESSION_TOO_FRESH_")) {
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.needHideProgress();
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle(LocaleController.getString(C2573R.string.Gift2TransferToTONAlertTitle));
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setPadding(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(24.0f), 0);
                linearLayout.setOrientation(1);
                builder.setView(linearLayout);
                TextView textView = new TextView(getContext());
                int i2 = Theme.key_dialogTextBlack;
                textView.setTextColor(Theme.getColor(i2));
                textView.setTextSize(1, 16.0f);
                textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.Gift2TransferToTONAlertText)));
                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
                LinearLayout linearLayout2 = new LinearLayout(getContext());
                linearLayout2.setOrientation(0);
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
                ImageView imageView = new ImageView(getContext());
                imageView.setImageResource(C2573R.drawable.list_circle);
                imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(11.0f) : 0, AndroidUtilities.dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(11.0f), 0);
                int color = Theme.getColor(i2);
                PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
                imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
                TextView textView2 = new TextView(getContext());
                textView2.setTextColor(Theme.getColor(i2));
                textView2.setTextSize(1, 16.0f);
                textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.Gift2TransferToTONAlertText1)));
                if (LocaleController.isRTL) {
                    linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                    linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
                } else {
                    linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
                    linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                }
                LinearLayout linearLayout3 = new LinearLayout(getContext());
                linearLayout3.setOrientation(0);
                linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
                ImageView imageView2 = new ImageView(getContext());
                imageView2.setImageResource(C2573R.drawable.list_circle);
                imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(11.0f) : 0, AndroidUtilities.dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.dp(11.0f), 0);
                imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), mode));
                TextView textView3 = new TextView(getContext());
                textView3.setTextColor(Theme.getColor(i2));
                textView3.setTextSize(1, 16.0f);
                textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.Gift2TransferToTONAlertText2)));
                if (LocaleController.isRTL) {
                    linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                    i = 5;
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
                } else {
                    i = 5;
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
                    linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                }
                if ("PASSWORD_MISSING".equals(tL_error.text)) {
                    builder.setPositiveButton(LocaleController.getString(C2573R.string.Gift2TransferToTONSetPassword), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda192
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i3) {
                            this.f$0.lambda$initTONTransfer$151(alertDialog, i3);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                } else {
                    TextView textView4 = new TextView(getContext());
                    textView4.setTextColor(Theme.getColor(i2));
                    textView4.setTextSize(1, 16.0f);
                    textView4.setGravity((LocaleController.isRTL ? i : 3) | 48);
                    textView4.setText(LocaleController.getString(C2573R.string.Gift2TransferToTONAlertText3));
                    linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
                    builder.setNegativeButton(LocaleController.getString(C2573R.string.OK), null);
                }
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.showDialog(builder.create());
                    return;
                } else {
                    builder.show();
                    return;
                }
            }
            if ("SRP_ID_INVALID".equals(tL_error.text)) {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda193
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                        this.f$0.lambda$initTONTransfer$153(twoStepVerificationActivity, tLObject2, tL_error2);
                    }
                }, 8);
                return;
            }
            if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
            }
            BulletinFactory.showError(tL_error);
            return;
        }
        twoStepVerificationActivity.needHideProgress();
        twoStepVerificationActivity.finishFragment();
        if (tLObject instanceof TL_stars.starGiftWithdrawalUrl) {
            Browser.openUrlInSystemBrowser(getContext(), ((TL_stars.starGiftWithdrawalUrl) tLObject).url);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTONTransfer$151(AlertDialog alertDialog, int i) {
        presentFragment(new TwoStepVerificationSetupActivity(6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTONTransfer$153(final TwoStepVerificationActivity twoStepVerificationActivity, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initTONTransfer$152(tL_error, tLObject, twoStepVerificationActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTONTransfer$152(TLRPC.TL_error tL_error, TLObject tLObject, TwoStepVerificationActivity twoStepVerificationActivity) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            twoStepVerificationActivity.setCurrentPasswordInfo(null, password);
            TwoStepVerificationActivity.initPasswordNewAlgo(password);
            lambda$openTransfer$138(twoStepVerificationActivity.getNewSrpPassword(), twoStepVerificationActivity);
        }
    }

    private void presentFragment(BaseFragment baseFragment) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        safeLastFragment.showAsSheet(baseFragment, bottomSheetParams);
    }

    private TL_stars.InputSavedStarGift getInputStarGift() {
        TLRPC.Message message;
        TLRPC.Message message2;
        TLRPC.Message message3;
        if (this.dialogId < 0) {
            TL_stars.TL_inputSavedStarGiftChat tL_inputSavedStarGiftChat = new TL_stars.TL_inputSavedStarGiftChat();
            tL_inputSavedStarGiftChat.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            MessageObject messageObject = this.messageObject;
            if (messageObject != null && (message3 = messageObject.messageOwner) != null) {
                TLRPC.MessageAction messageAction = message3.action;
                if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                    TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                    if ((tL_messageActionStarGift.flags & 4096) == 0) {
                        return null;
                    }
                    tL_inputSavedStarGiftChat.saved_id = tL_messageActionStarGift.saved_id;
                    return tL_inputSavedStarGiftChat;
                }
                if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                    return null;
                }
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                if ((tL_messageActionStarGiftUnique.flags & 128) == 0) {
                    return null;
                }
                tL_inputSavedStarGiftChat.saved_id = tL_messageActionStarGiftUnique.saved_id;
                return tL_inputSavedStarGiftChat;
            }
            TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
            if (savedStarGift != null) {
                if ((savedStarGift.flags & 2048) == 0) {
                    return null;
                }
                tL_inputSavedStarGiftChat.saved_id = savedStarGift.saved_id;
                return tL_inputSavedStarGiftChat;
            }
            if (this.slugStarGift == null || TextUtils.isEmpty(this.slug)) {
                return tL_inputSavedStarGiftChat;
            }
            TL_stars.TL_inputSavedStarGiftSlug tL_inputSavedStarGiftSlug = new TL_stars.TL_inputSavedStarGiftSlug();
            tL_inputSavedStarGiftSlug.slug = this.slug;
            return tL_inputSavedStarGiftSlug;
        }
        MessageObject messageObject2 = this.messageObject;
        if (messageObject2 != null && messageObject2.getDialogId() < 0 && (message2 = this.messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction2 = message2.action;
            if ((messageAction2 instanceof TLRPC.TL_messageActionStarGift) && (messageAction2.flags & 4096) != 0) {
                TL_stars.TL_inputSavedStarGiftChat tL_inputSavedStarGiftChat2 = new TL_stars.TL_inputSavedStarGiftChat();
                tL_inputSavedStarGiftChat2.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.messageObject.getDialogId());
                tL_inputSavedStarGiftChat2.saved_id = ((TLRPC.TL_messageActionStarGift) messageAction2).saved_id;
                return tL_inputSavedStarGiftChat2;
            }
        }
        MessageObject messageObject3 = this.messageObject;
        if (messageObject3 != null && messageObject3.getDialogId() < 0 && (message = this.messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction3 = message.action;
            if ((messageAction3 instanceof TLRPC.TL_messageActionStarGiftUnique) && (messageAction3.flags & 128) != 0) {
                TL_stars.TL_inputSavedStarGiftChat tL_inputSavedStarGiftChat3 = new TL_stars.TL_inputSavedStarGiftChat();
                tL_inputSavedStarGiftChat3.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.messageObject.getDialogId());
                tL_inputSavedStarGiftChat3.saved_id = ((TLRPC.TL_messageActionStarGiftUnique) messageAction3).saved_id;
                return tL_inputSavedStarGiftChat3;
            }
        }
        TL_stars.TL_inputSavedStarGiftUser tL_inputSavedStarGiftUser = new TL_stars.TL_inputSavedStarGiftUser();
        MessageObject messageObject4 = this.messageObject;
        if (messageObject4 != null) {
            TLRPC.Message message4 = messageObject4.messageOwner;
            if (message4 != null) {
                TLRPC.MessageAction messageAction4 = message4.action;
                if ((messageAction4 instanceof TLRPC.TL_messageActionStarGift) && (messageAction4.flags & 32768) != 0) {
                    tL_inputSavedStarGiftUser.msg_id = ((TLRPC.TL_messageActionStarGift) messageAction4).gift_msg_id;
                    return tL_inputSavedStarGiftUser;
                }
            }
            tL_inputSavedStarGiftUser.msg_id = messageObject4.getId();
            return tL_inputSavedStarGiftUser;
        }
        TL_stars.SavedStarGift savedStarGift2 = this.savedStarGift;
        if (savedStarGift2 != null) {
            tL_inputSavedStarGiftUser.msg_id = savedStarGift2.msg_id;
            return tL_inputSavedStarGiftUser;
        }
        if (this.slugStarGift == null || TextUtils.isEmpty(this.slug)) {
            return tL_inputSavedStarGiftUser;
        }
        TL_stars.TL_inputSavedStarGiftSlug tL_inputSavedStarGiftSlug2 = new TL_stars.TL_inputSavedStarGiftSlug();
        tL_inputSavedStarGiftSlug2.slug = this.slug;
        return tL_inputSavedStarGiftSlug2;
    }

    public void doTransfer(final long j, final Utilities.Callback<TLRPC.TL_error> callback) {
        TLRPC.Message message;
        final long peerDialogId;
        long j2;
        TL_stars.InputSavedStarGift inputStarGift = getInputStarGift();
        if (inputStarGift == null) {
            return;
        }
        TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
        if (savedStarGift != null && (savedStarGift.gift instanceof TL_stars.TL_starGiftUnique)) {
            peerDialogId = this.dialogId;
            j2 = savedStarGift.transfer_stars;
        } else {
            MessageObject messageObject = this.messageObject;
            if (messageObject == null || (message = messageObject.messageOwner) == null) {
                return;
            }
            TLRPC.MessageAction messageAction = message.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionStarGiftUnique)) {
                return;
            }
            TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
            peerDialogId = DialogObject.getPeerDialogId(tL_messageActionStarGiftUnique.gift.owner_id);
            j2 = tL_messageActionStarGiftUnique.transfer_stars;
        }
        if (j2 <= 0) {
            TL_stars.transferStarGift transferstargift = new TL_stars.transferStarGift();
            transferstargift.stargift = inputStarGift;
            transferstargift.to_id = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(transferstargift, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda129
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$doTransfer$158(callback, j, peerDialogId, tLObject, tL_error);
                }
            });
            return;
        }
        final StarsController starsController = StarsController.getInstance(this.currentAccount);
        if (!starsController.balanceAvailable()) {
            starsController.getBalance(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda130
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doTransfer$159(starsController, j, callback);
                }
            });
            return;
        }
        final TLRPC.TL_inputInvoiceStarGiftTransfer tL_inputInvoiceStarGiftTransfer = new TLRPC.TL_inputInvoiceStarGiftTransfer();
        tL_inputInvoiceStarGiftTransfer.stargift = inputStarGift;
        tL_inputInvoiceStarGiftTransfer.to_id = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        TLRPC.TL_payments_getPaymentForm tL_payments_getPaymentForm = new TLRPC.TL_payments_getPaymentForm();
        tL_payments_getPaymentForm.invoice = tL_inputInvoiceStarGiftTransfer;
        JSONObject jSONObjectMakeThemeParams = BotWebViewSheet.makeThemeParams(this.resourcesProvider);
        if (jSONObjectMakeThemeParams != null) {
            TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
            tL_payments_getPaymentForm.theme_params = tL_dataJSON;
            tL_dataJSON.data = jSONObjectMakeThemeParams.toString();
            tL_payments_getPaymentForm.flags |= 1;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_getPaymentForm, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda131
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$doTransfer$168(tL_inputInvoiceStarGiftTransfer, j, peerDialogId, callback, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$158(final Utilities.Callback callback, final long j, final long j2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.Updates) tLObject, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda151
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doTransfer$157(callback, tL_error, tLObject, j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$157(Utilities.Callback callback, TLRPC.TL_error tL_error, TLObject tLObject, final long j, long j2) {
        if (callback != null) {
            callback.run(tL_error);
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if (!(tLObject instanceof TLRPC.Updates)) {
                BulletinFactory.of(safeLastFragment).showForError(tL_error);
            } else if (j >= 0 && j2 >= 0) {
                final ChatActivity chatActivityOf = ChatActivity.of(j);
                chatActivityOf.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda174
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$doTransfer$156(chatActivityOf, j);
                    }
                });
                safeLastFragment.presentFragment(chatActivityOf);
            } else {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.forward, LocaleController.getString(C2573R.string.Gift2TransferredTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2TransferredText, getGiftName(), DialogObject.getShortName(j)))).ignoreDetach().show();
            }
        }
        StarsController.getInstance(this.currentAccount).invalidateProfileGifts(j);
        StarsController.getInstance(this.currentAccount).invalidateProfileGifts(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$156(ChatActivity chatActivity, long j) {
        BulletinFactory.of(chatActivity).createSimpleBulletin(C2573R.raw.forward, LocaleController.getString(C2573R.string.Gift2TransferredTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2TransferredText, getGiftName(), DialogObject.getShortName(j)))).ignoreDetach().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$159(StarsController starsController, long j, Utilities.Callback callback) {
        if (!starsController.balanceAvailable()) {
            getBulletinFactory().createSimpleBulletin(C2573R.raw.error, LocaleController.formatString(C2573R.string.UnknownErrorCode, "NO_BALANCE")).ignoreDetach().show();
        } else {
            doTransfer(j, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$168(final TLRPC.TL_inputInvoiceStarGiftTransfer tL_inputInvoiceStarGiftTransfer, final long j, final long j2, final Utilities.Callback callback, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda132
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doTransfer$167(tLObject, tL_inputInvoiceStarGiftTransfer, j, j2, callback, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$167(TLObject tLObject, TLRPC.TL_inputInvoiceStarGiftTransfer tL_inputInvoiceStarGiftTransfer, final long j, final long j2, final Utilities.Callback callback, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.PaymentForm) {
            TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
            int i = 0;
            MessagesController.getInstance(this.currentAccount).putUsers(paymentForm.users, false);
            TL_stars.TL_payments_sendStarsForm tL_payments_sendStarsForm = new TL_stars.TL_payments_sendStarsForm();
            tL_payments_sendStarsForm.form_id = paymentForm.form_id;
            tL_payments_sendStarsForm.invoice = tL_inputInvoiceStarGiftTransfer;
            ArrayList<TLRPC.TL_labeledPrice> arrayList = paymentForm.invoice.prices;
            int size = arrayList.size();
            final long j3 = 0;
            while (i < size) {
                TLRPC.TL_labeledPrice tL_labeledPrice = arrayList.get(i);
                i++;
                j3 += tL_labeledPrice.amount;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_payments_sendStarsForm, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda165
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$doTransfer$166(j, j2, callback, j3, tLObject2, tL_error2);
                }
            });
            return;
        }
        if (callback != null) {
            callback.run(tL_error);
        }
        getBulletinFactory().makeForError(tL_error).ignoreDetach().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$166(final long j, final long j2, final Utilities.Callback callback, final long j3, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda187
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doTransfer$165(tLObject, j, j2, callback, tL_error, j3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$165(TLObject tLObject, final long j, long j2, final Utilities.Callback callback, TLRPC.TL_error tL_error, final long j3) {
        if (tLObject instanceof TLRPC.TL_payments_paymentResult) {
            final TLRPC.TL_payments_paymentResult tL_payments_paymentResult = (TLRPC.TL_payments_paymentResult) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_payments_paymentResult.updates.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_payments_paymentResult.updates.chats, false);
            StarsController.getInstance(this.currentAccount).invalidateTransactions(false);
            StarsController.getInstance(this.currentAccount).invalidateProfileGifts(j);
            StarsController.getInstance(this.currentAccount).invalidateProfileGifts(j2);
            StarsController.getInstance(this.currentAccount).invalidateBalance();
            if (callback != null) {
                callback.run(null);
            }
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                if (j >= 0 && j2 >= 0) {
                    final ChatActivity chatActivityOf = ChatActivity.of(j);
                    chatActivityOf.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda194
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$doTransfer$160(chatActivityOf, j);
                        }
                    });
                    safeLastFragment.presentFragment(chatActivityOf);
                } else {
                    BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.forward, LocaleController.getString(C2573R.string.Gift2TransferredTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2TransferredText, getGiftName(), DialogObject.getShortName(j)))).ignoreDetach().show();
                }
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda195
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doTransfer$161(tL_payments_paymentResult);
                }
            });
            return;
        }
        if (tL_error != null && "BALANCE_TOO_LOW".equals(tL_error.text)) {
            if (!MessagesController.getInstance(this.currentAccount).starsPurchaseAvailable()) {
                this.button.setLoading(false);
                StarsController.showNoSupportDialog(getContext(), this.resourcesProvider);
                return;
            } else {
                StarsController.getInstance(this.currentAccount).invalidateBalance(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda196
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$doTransfer$164(j3, j, callback);
                    }
                });
                return;
            }
        }
        if (callback != null) {
            callback.run(tL_error);
        }
        getBulletinFactory().showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$160(ChatActivity chatActivity, long j) {
        BulletinFactory.of(chatActivity).createSimpleBulletin(C2573R.raw.forward, LocaleController.getString(C2573R.string.Gift2TransferredTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.Gift2TransferredText, getGiftName(), DialogObject.getShortName(j)))).ignoreDetach().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$161(TLRPC.TL_payments_paymentResult tL_payments_paymentResult) {
        MessagesController.getInstance(this.currentAccount).processUpdates(tL_payments_paymentResult.updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$164(long j, final long j2, final Utilities.Callback callback) {
        final boolean[] zArr = {false};
        StarsIntroActivity.StarsNeededSheet starsNeededSheet = new StarsIntroActivity.StarsNeededSheet(getContext(), this.resourcesProvider, j, 11, null, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doTransfer$162(zArr, j2, callback);
            }
        }, 0L);
        starsNeededSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$doTransfer$163(dialogInterface);
            }
        });
        starsNeededSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$162(boolean[] zArr, long j, Utilities.Callback callback) {
        zArr[0] = true;
        this.button.setLoading(false);
        doTransfer(j, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doTransfer$163(DialogInterface dialogInterface) {
        this.button.setLoading(false);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public BulletinFactory getBulletinFactory() {
        return BulletinFactory.of(this.bottomBulletinContainer, this.resourcesProvider);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBuyPressed() {
        long clientUserId;
        final TL_stars.TL_starGiftUnique uniqueGift = getUniqueGift();
        if (this.button.isLoading() || uniqueGift == null) {
            return;
        }
        this.button.setLoading(true);
        if (this.slugStarGift == null || !this.resale) {
            clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        } else {
            clientUserId = this.dialogId;
            if (clientUserId == 0) {
            }
        }
        final long j = clientUserId;
        final AmountUtils$Currency amountUtils$Currency = uniqueGift.resale_ton_only ? AmountUtils$Currency.TON : AmountUtils$Currency.STARS;
        StarsController.getInstance(this.currentAccount, amountUtils$Currency).getResellingGiftForm(uniqueGift, j, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda39
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onBuyPressed$171(amountUtils$Currency, uniqueGift, j, (TLRPC.TL_payments_paymentFormStarGift) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBuyPressed$171(AmountUtils$Currency amountUtils$Currency, final TL_stars.TL_starGiftUnique tL_starGiftUnique, final long j, TLRPC.TL_payments_paymentFormStarGift tL_payments_paymentFormStarGift) {
        this.button.setLoading(false);
        if (tL_payments_paymentFormStarGift == null) {
            return;
        }
        new ResaleBuyTransferAlert(getContext(), this.resourcesProvider, tL_starGiftUnique, new PaymentFormState(amountUtils$Currency, tL_payments_paymentFormStarGift), this.currentAccount, j, getGiftName(), false, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda114
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$onBuyPressed$170(tL_starGiftUnique, j, (StarGiftSheet.PaymentFormState) obj, (Browser.Progress) obj2);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBuyPressed$170(final TL_stars.TL_starGiftUnique tL_starGiftUnique, final long j, PaymentFormState paymentFormState, final Browser.Progress progress) {
        progress.init();
        StarsController.getInstance(this.currentAccount, paymentFormState.currency).buyResellingGift(paymentFormState.form, tL_starGiftUnique, j, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda148
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$onBuyPressed$169(progress, tL_starGiftUnique, j, (Boolean) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBuyPressed$169(Browser.Progress progress, TL_stars.TL_starGiftUnique tL_starGiftUnique, long j, Boolean bool, String str) {
        progress.end();
        if (bool.booleanValue()) {
            Utilities.Callback2<TL_stars.TL_starGiftUnique, Long> callback2 = this.boughtGift;
            if (callback2 != null) {
                callback2.run(tL_starGiftUnique, Long.valueOf(j));
            }
            lambda$new$0();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed, reason: merged with bridge method [inline-methods] */
    public void lambda$openCrafting$8() {
        TopView topView;
        if (this.currentPage.is(4) && (topView = this.topView) != null && topView.craftTopView != null) {
            if (this.topView.craftTopView.crafting) {
                return;
            }
            if (this.topView.craftTopView.crafted) {
                super.lambda$openCrafting$8();
                return;
            }
        }
        if (!this.onlyWearInfo && this.currentPage.to > 0 && !this.button.isLoading() && !this.isLearnMore) {
            MessageObject messageObject = this.messageObject;
            if (messageObject != null) {
                set(messageObject);
            } else {
                TL_stars.SavedStarGift savedStarGift = this.savedStarGift;
                if (savedStarGift != null) {
                    set(savedStarGift, this.giftsList);
                } else {
                    TL_stars.TL_starGiftUnique tL_starGiftUnique = this.slugStarGift;
                    if (tL_starGiftUnique != null) {
                        set(this.slug, tL_starGiftUnique, this.giftsList);
                    }
                }
            }
            switchPage(0, true);
            return;
        }
        super.lambda$openCrafting$8();
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView, org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        if (this.currentPage.is(4) && this.topView.craftTopView.crafting) {
            return false;
        }
        return super.canDismissWithSwipe();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithTouchOutside() {
        if (this.currentPage.is(4) && this.topView.craftTopView.crafting) {
            return false;
        }
        return super.canDismissWithTouchOutside();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canSwipeToBack(MotionEvent motionEvent) {
        if (this.currentPage.is(4) && this.topView.craftTopView.crafting) {
            return false;
        }
        return super.canSwipeToBack(motionEvent);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void onSwipeStarts() {
        HintView2 hintView2 = this.currentHintView;
        if (hintView2 != null) {
            hintView2.hide();
            this.currentHintView = null;
        }
    }

    public void showHint(CharSequence charSequence, View view, boolean z) {
        Layout layout;
        float paddingLeft;
        HintView2 hintView2 = this.currentHintView;
        if ((hintView2 != null && hintView2.shown() && this.currentHintViewTextView == view) || view == null) {
            return;
        }
        if (z) {
            if (!(view instanceof SimpleTextView)) {
                return;
            }
            SimpleTextView simpleTextView = (SimpleTextView) view;
            paddingLeft = simpleTextView.getRightDrawableX() + (simpleTextView.getRightDrawableWidth() / 2.0f);
        } else {
            if (view instanceof TextView) {
                layout = ((TextView) view).getLayout();
            } else if (!(view instanceof SimpleTextView)) {
                return;
            } else {
                layout = ((SimpleTextView) view).getLayout();
            }
            if (layout == null) {
                return;
            }
            CharSequence text = layout.getText();
            if (!(text instanceof Spanned)) {
                return;
            }
            Spanned spanned = (Spanned) text;
            ButtonSpan[] buttonSpanArr = (ButtonSpan[]) spanned.getSpans(0, spanned.length(), ButtonSpan.class);
            if (buttonSpanArr == null || buttonSpanArr.length <= 0) {
                return;
            }
            paddingLeft = view.getPaddingLeft() + layout.getPrimaryHorizontal(spanned.getSpanStart(buttonSpanArr[buttonSpanArr.length - 1])) + (r5.getSize() / 2.0f);
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr);
        this.container.getLocationOnScreen(iArr2);
        iArr[0] = iArr[0] - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        HintView2 hintView22 = this.currentHintView;
        if (hintView22 != null) {
            hintView22.hide();
            this.currentHintView = null;
        }
        final HintView2 hintView23 = new HintView2(getContext(), 3);
        hintView23.setMultilineText(!z);
        hintView23.setText(charSequence);
        hintView23.setJointPx(0.0f, (iArr[0] + paddingLeft) - (AndroidUtilities.dp(16.0f) + this.backgroundPaddingLeft));
        hintView23.setTranslationY(((iArr[1] - AndroidUtilities.dp(100.0f)) - (view.getHeight() / 2.0f)) + AndroidUtilities.dp((z ? 18 : 0) + 4.33f));
        hintView23.setDuration(3000L);
        hintView23.setPadding(AndroidUtilities.dp(16.0f) + this.backgroundPaddingLeft, 0, AndroidUtilities.dp(16.0f) + this.backgroundPaddingLeft, 0);
        hintView23.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda153
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.removeFromParent(hintView23);
            }
        });
        hintView23.show();
        this.container.addView(hintView23, LayoutHelper.createFrame(-1, 100.0f));
        this.currentHintView = hintView23;
        this.currentHintViewTextView = view;
    }

    public static class GiftTransferTopView extends View {
        private final Paint arrowPaint;
        private final Path arrowPath;
        private final StarGiftDrawableIcon giftDrawable;
        private final ImageReceiver userImageReceiver;

        public GiftTransferTopView(Context context, TL_stars.StarGift starGift, TLObject tLObject) {
            super(context);
            Path path = new Path();
            this.arrowPath = path;
            Paint paint = new Paint(1);
            this.arrowPaint = paint;
            StarGiftDrawableIcon starGiftDrawableIcon = new StarGiftDrawableIcon(this, starGift, 60, 0.27f);
            this.giftDrawable = starGiftDrawableIcon;
            starGiftDrawableIcon.setPatternsType(3);
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(tLObject);
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.userImageReceiver = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.dp(30.0f));
            imageReceiver.setForUserOrChat(tLObject, avatarDrawable);
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
            path.rewind();
            path.moveTo(0.0f, -AndroidUtilities.dp(8.0f));
            path.lineTo(AndroidUtilities.dp(6.166f), 0.0f);
            path.lineTo(0.0f, AndroidUtilities.dp(8.0f));
        }

        public GiftTransferTopView(Context context, TL_stars.StarGift starGift) {
            super(context);
            Path path = new Path();
            this.arrowPath = path;
            Paint paint = new Paint(1);
            this.arrowPaint = paint;
            StarGiftDrawableIcon starGiftDrawableIcon = new StarGiftDrawableIcon(this, starGift, 60, 0.27f);
            this.giftDrawable = starGiftDrawableIcon;
            starGiftDrawableIcon.setPatternsType(3);
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.userImageReceiver = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.dp(30.0f));
            imageReceiver.setImageBitmap(SessionCell.createDrawable(60, "fragment"));
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeWidth(AndroidUtilities.dp(2.33f));
            path.rewind();
            path.moveTo(0.0f, -AndroidUtilities.dp(8.0f));
            path.lineTo(AndroidUtilities.dp(6.166f), 0.0f);
            path.lineTo(0.0f, AndroidUtilities.dp(8.0f));
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            int width = (getWidth() / 2) - (AndroidUtilities.dp(156.0f) / 2);
            int height = (getHeight() / 2) - AndroidUtilities.dp(30.0f);
            this.giftDrawable.setBounds(width, height, AndroidUtilities.dp(60.0f) + width, AndroidUtilities.dp(60.0f) + height);
            this.giftDrawable.draw(canvas);
            canvas.save();
            canvas.translate((getWidth() / 2.0f) - (AndroidUtilities.dp(6.166f) / 2.0f), getHeight() / 2.0f);
            canvas.drawPath(this.arrowPath, this.arrowPaint);
            canvas.restore();
            this.userImageReceiver.setImageCoords(width + AndroidUtilities.dp(96.0f), height, AndroidUtilities.dp(60.0f), AndroidUtilities.dp(60.0f));
            this.userImageReceiver.draw(canvas);
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.userImageReceiver.onAttachedToWindow();
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.userImageReceiver.onDetachedFromWindow();
        }
    }

    public static class UserToUserTransferTopView extends View {
        private final Paint arrowPaint;
        private final Path arrowPath;
        private final ImageReceiver fromUserImageReceiver;
        private final ImageReceiver toUserImageReceiver;

        public UserToUserTransferTopView(Context context, TLObject tLObject, TLObject tLObject2) {
            super(context);
            Path path = new Path();
            this.arrowPath = path;
            Paint paint = new Paint(1);
            this.arrowPaint = paint;
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(tLObject);
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.fromUserImageReceiver = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.dp(30.0f));
            imageReceiver.setForUserOrChat(tLObject, avatarDrawable);
            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
            avatarDrawable2.setInfo(tLObject2);
            ImageReceiver imageReceiver2 = new ImageReceiver(this);
            this.toUserImageReceiver = imageReceiver2;
            imageReceiver2.setRoundRadius(AndroidUtilities.dp(30.0f));
            imageReceiver2.setForUserOrChat(tLObject2, avatarDrawable2);
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
            path.rewind();
            path.moveTo(0.0f, -AndroidUtilities.dp(8.0f));
            path.lineTo(AndroidUtilities.dp(6.166f), 0.0f);
            path.lineTo(0.0f, AndroidUtilities.dp(8.0f));
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            int width = (getWidth() / 2) - (AndroidUtilities.dp(156.0f) / 2);
            float height = (getHeight() / 2) - AndroidUtilities.dp(30.0f);
            this.fromUserImageReceiver.setImageCoords(width, height, AndroidUtilities.dp(60.0f), AndroidUtilities.dp(60.0f));
            this.fromUserImageReceiver.draw(canvas);
            canvas.save();
            canvas.translate((getWidth() / 2.0f) - (AndroidUtilities.dp(6.166f) / 2.0f), getHeight() / 2.0f);
            canvas.drawPath(this.arrowPath, this.arrowPaint);
            canvas.restore();
            this.toUserImageReceiver.setImageCoords(width + AndroidUtilities.dp(96.0f), height, AndroidUtilities.dp(60.0f), AndroidUtilities.dp(60.0f));
            this.toUserImageReceiver.draw(canvas);
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.fromUserImageReceiver.onAttachedToWindow();
            this.toUserImageReceiver.onAttachedToWindow();
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.fromUserImageReceiver.onDetachedFromWindow();
            this.toUserImageReceiver.onDetachedFromWindow();
        }
    }

    public static class GiftThemeReuseTopView extends View {
        private final Drawable drawable;
        private final StarGiftDrawableIcon giftDrawable;
        private final ImageReceiver userImageReceiver;

        public GiftThemeReuseTopView(Context context, TL_stars.StarGift starGift, TLObject tLObject) {
            super(context);
            StarGiftDrawableIcon starGiftDrawableIcon = new StarGiftDrawableIcon(this, starGift, 60, 0.27f);
            this.giftDrawable = starGiftDrawableIcon;
            starGiftDrawableIcon.setPatternsType(3);
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(tLObject);
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.userImageReceiver = imageReceiver;
            imageReceiver.setRoundRadius(AndroidUtilities.dp(30.0f));
            imageReceiver.setForUserOrChat(tLObject, avatarDrawable);
            Drawable drawableMutate = context.getDrawable(C2573R.drawable.chats_undo).mutate();
            this.drawable = drawableMutate;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), PorterDuff.Mode.MULTIPLY));
            drawableMutate.setBounds(AndroidUtilities.dp(-12.0f), AndroidUtilities.dp(-12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(100.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            int width = (getWidth() / 2) - (AndroidUtilities.dp(156.0f) / 2);
            int height = (getHeight() / 2) - AndroidUtilities.dp(30.0f);
            this.giftDrawable.setBounds(width, height, AndroidUtilities.dp(60.0f) + width, AndroidUtilities.dp(60.0f) + height);
            this.giftDrawable.draw(canvas);
            canvas.save();
            canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
            this.drawable.draw(canvas);
            canvas.restore();
            this.userImageReceiver.setImageCoords(width + AndroidUtilities.dp(96.0f), height, AndroidUtilities.dp(60.0f), AndroidUtilities.dp(60.0f));
            this.userImageReceiver.draw(canvas);
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.userImageReceiver.onAttachedToWindow();
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.userImageReceiver.onDetachedFromWindow();
        }
    }

    public static class StarGiftDrawableIcon extends CompatDrawable {
        private final Paint countdownPaint;
        private AnimatedTextView.AnimatedTextDrawable countdownText;
        private CountdownTimer countdownTimer;
        private int endTime;
        private Text giftName;
        private Text giftStatus;
        private RadialGradient gradient;
        private final ImageReceiver imageReceiver;
        private final Matrix matrix;
        private StarsReactionsSheet.Particles particles;
        private final Path path;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable pattern;
        private float patternsScale;
        private int patternsType;
        private final RectF rect;
        private int rounding;
        private final int sizeDp;
        private final TL_stars.StarGift starGift;
        private int startTime;
        private final View view;

        public StarGiftDrawableIcon(View view, TL_stars.StarGift starGift, int i, float f) {
            super(view);
            this.path = new Path();
            this.rect = new RectF();
            this.matrix = new Matrix();
            this.countdownPaint = new Paint(1);
            this.rounding = AndroidUtilities.dp(16.0f);
            this.patternsType = 0;
            this.starGift = starGift;
            this.view = view;
            this.patternsScale = f;
            ImageReceiver imageReceiver = new ImageReceiver(view);
            this.imageReceiver = imageReceiver;
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(view, false, AndroidUtilities.dp(i > 180 ? 24.0f : 18.0f));
            this.pattern = swapAnimatedEmojiDrawable;
            this.sizeDp = i;
            if (starGift instanceof TL_stars.TL_starGift) {
                float f2 = i;
                StarsIntroActivity.setGiftImage(imageReceiver, starGift.sticker, (int) (0.75f * f2));
                String str = starGift.title;
                Text text = new Text(str == null ? "Gift" : str, 16.0f, AndroidUtilities.bold());
                this.giftName = text;
                text.setColor(-1);
                float f3 = i - 30;
                this.giftName.setMaxWidth(AndroidUtilities.dp(f3));
                Text text2 = this.giftName;
                Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                text2.align(alignment);
                this.giftName.multiline(1);
                Text text3 = new Text(starGift.sold_out ? LocaleController.getString(C2573R.string.Gift2SoldOutTitle) : LocaleController.formatPluralString("Gift2SoldAuctionPreviewGifts", starGift.availability_total, new Object[0]), 13.0f);
                this.giftStatus = text3;
                text3.setMaxWidth(AndroidUtilities.dp(f3));
                this.giftStatus.align(alignment);
                this.giftStatus.multiline(1);
                StarsReactionsSheet.Particles particles = new StarsReactionsSheet.Particles(1, 40);
                this.particles = particles;
                float f4 = 0.45f * f2;
                particles.setBounds(-AndroidUtilities.dp(f4), -AndroidUtilities.dp(f4), AndroidUtilities.dp(f4), AndroidUtilities.dp(f2 * 0.25f));
                this.particles.generateGrid();
            } else if (starGift != null) {
                TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeBackdrop.class);
                TL_stars.starGiftAttributePattern stargiftattributepattern = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributePattern.class);
                TL_stars.starGiftAttributeModel stargiftattributemodel = (TL_stars.starGiftAttributeModel) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeModel.class);
                if (stargiftattributepattern != null) {
                    swapAnimatedEmojiDrawable.set(stargiftattributepattern.document, false);
                }
                if (stargiftattributebackdrop != null) {
                    this.gradient = new RadialGradient(0.0f, 0.0f, AndroidUtilities.dpf2(i) / 2.0f, new int[]{stargiftattributebackdrop.center_color | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                    swapAnimatedEmojiDrawable.setColor(Integer.valueOf(stargiftattributebackdrop.pattern_color | (-16777216)));
                }
                if (stargiftattributemodel != null) {
                    StarsIntroActivity.setGiftImage(imageReceiver, stargiftattributemodel.document, (int) (i * 0.75f));
                }
            }
            this.paint.setShader(this.gradient);
            if (view.isAttachedToWindow()) {
                onAttachedToWindow();
            }
        }

        public void setGradient(int i, int i2) {
            RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, AndroidUtilities.dpf2(this.sizeDp) / 2.0f, new int[]{i | (-16777216), i2 | (-16777216)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
            this.gradient = radialGradient;
            this.paint.setShader(radialGradient);
        }

        public void setAuctionStateTextColor(int i) {
            Text text = this.giftStatus;
            if (text != null) {
                text.setColor(i | (-16777216));
            }
        }

        public void setCountdownRemainingTime(int i, int i2) {
            this.startTime = i;
            this.endTime = i2;
            if (this.countdownTimer == null) {
                this.countdownTimer = new CountdownTimer(new CountdownTimer.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$StarGiftDrawableIcon$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.utils.CountdownTimer.Callback
                    public final void onTimerUpdate(long j) {
                        this.f$0.lambda$setCountdownRemainingTime$0(j);
                    }
                });
            }
            int currentTime = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
            long j = currentTime < i ? i - currentTime : i2 - currentTime;
            this.countdownTimer.start(j);
            if (this.countdownText == null) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
                this.countdownText = animatedTextDrawable;
                animatedTextDrawable.setTextColor(-1);
                this.countdownText.setTextSize(AndroidUtilities.dp(12.0f));
                this.countdownText.setCallback(new Drawable.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet.StarGiftDrawableIcon.1
                    @Override // android.graphics.drawable.Drawable.Callback
                    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
                    }

                    @Override // android.graphics.drawable.Drawable.Callback
                    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                    }

                    @Override // android.graphics.drawable.Drawable.Callback
                    public void invalidateDrawable(Drawable drawable) {
                        StarGiftDrawableIcon.this.view.invalidate();
                    }
                });
            }
            updateCountdownText(j, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setCountdownRemainingTime$0(long j) {
            updateCountdownText(j, true);
        }

        private void updateCountdownText(long j, boolean z) {
            Text text;
            int currentTime = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
            int i = this.endTime;
            if (currentTime > i) {
                this.countdownText.setText(LocaleController.getString(C2573R.string.Gift2AuctionCountdownFinished));
            } else {
                int i2 = this.startTime;
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.countdownText;
                if (currentTime < i2) {
                    animatedTextDrawable.setText(LocaleController.formatString(C2573R.string.Gift2AuctionCountdownStartsIn, AndroidUtilities.formatDuration(i2 - currentTime, true)));
                } else {
                    animatedTextDrawable.setText(AndroidUtilities.formatDuration(i - currentTime, true));
                }
            }
            if (currentTime <= this.endTime || (text = this.giftStatus) == null) {
                return;
            }
            text.setText(LocaleController.getString(C2573R.string.Gift2SoldOutTitle));
        }

        public StarGiftDrawableIcon setRounding(int i) {
            this.rounding = i;
            return this;
        }

        public StarGiftDrawableIcon setPatternsType(int i) {
            this.patternsType = i;
            return this;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.rect.set(getBounds());
            canvas.save();
            this.path.rewind();
            Path path = this.path;
            RectF rectF = this.rect;
            int i = this.rounding;
            path.addRoundRect(rectF, i, i, Path.Direction.CW);
            canvas.clipPath(this.path);
            if (this.gradient != null) {
                this.matrix.reset();
                this.matrix.postTranslate(this.rect.centerX(), this.rect.centerY());
                this.gradient.setLocalMatrix(this.matrix);
                this.paint.setShader(this.gradient);
            }
            canvas.drawPaint(this.paint);
            canvas.save();
            canvas.translate(this.rect.centerX(), this.rect.centerY());
            StarGiftPatterns.drawPattern(canvas, this.patternsType, this.pattern, this.rect.width(), this.rect.height(), 1.0f, this.patternsScale);
            StarsReactionsSheet.Particles particles = this.particles;
            if (particles != null) {
                particles.draw(canvas, -1, 1.0f);
            }
            canvas.restore();
            if (this.giftName != null && this.giftStatus != null) {
                if (this.countdownText != null) {
                    this.countdownPaint.setColor(1342177280);
                    canvas.drawRoundRect(this.rect.left + AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f) + this.rect.top, this.rect.left + AndroidUtilities.dp(20.0f) + Math.max(this.countdownText.getCurrentWidth(), AndroidUtilities.dp(3.0f)), this.rect.top + AndroidUtilities.dp(23.0f), AndroidUtilities.dp(8.5f), AndroidUtilities.dp(8.5f), this.countdownPaint);
                    canvas.save();
                    canvas.translate(this.rect.left + AndroidUtilities.dp(13.0f), this.rect.top + AndroidUtilities.dp(14.0f));
                    this.countdownText.draw(canvas);
                    canvas.restore();
                }
                float fMin = Math.min(this.rect.width(), this.rect.height()) * 0.6f;
                ImageReceiver imageReceiver = this.imageReceiver;
                float fCenterX = this.rect.centerX() - (fMin / 2.0f);
                RectF rectF2 = this.rect;
                imageReceiver.setImageCoords(fCenterX, rectF2.top + (rectF2.height() * 0.12f), fMin, fMin);
                this.imageReceiver.draw(canvas);
                this.giftName.draw(canvas, this.rect.centerX() - (this.giftName.getWidth() / 2.0f), this.rect.bottom - AndroidUtilities.dp(50.0f));
                this.giftStatus.draw(canvas, this.rect.centerX() - (this.giftStatus.getWidth() / 2.0f), this.rect.bottom - AndroidUtilities.dp(30.0f));
            } else {
                float fMin2 = Math.min(this.rect.width(), this.rect.height()) * 0.75f;
                float f = fMin2 / 2.0f;
                this.imageReceiver.setImageCoords(this.rect.centerX() - f, this.rect.centerY() - f, fMin2, fMin2);
                this.imageReceiver.draw(canvas);
            }
            canvas.restore();
        }

        @Override // org.telegram.ui.Components.CompatDrawable
        public void onAttachedToWindow() {
            this.pattern.attach();
            this.imageReceiver.onAttachedToWindow();
            if (this.countdownTimer != null) {
                int currentTime = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
                int i = this.startTime;
                if (currentTime >= i) {
                    i = this.endTime;
                }
                this.countdownTimer.start(i - currentTime);
            }
        }

        @Override // org.telegram.ui.Components.CompatDrawable
        public void onDetachedToWindow() {
            this.pattern.detach();
            this.imageReceiver.onDetachedFromWindow();
            CountdownTimer countdownTimer = this.countdownTimer;
            if (countdownTimer != null) {
                countdownTimer.stop();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.dp(this.sizeDp);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.dp(this.sizeDp);
        }
    }

    public static class UpgradeIcon extends CompatDrawable {
        private float alpha;
        private final Path arrow;
        private final long start;
        private final Paint strokePaint;
        private final View view;

        public UpgradeIcon(View view, int i) {
            super(view);
            Paint paint = new Paint(1);
            this.strokePaint = paint;
            Path path = new Path();
            this.arrow = path;
            this.start = System.currentTimeMillis();
            this.alpha = 1.0f;
            this.view = view;
            this.paint.setColor(-1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setColor(i);
            path.rewind();
            path.moveTo(-AndroidUtilities.dpf2(2.91f), AndroidUtilities.dpf2(1.08f));
            path.lineTo(0.0f, -AndroidUtilities.dpf2(1.08f));
            path.lineTo(AndroidUtilities.dpf2(2.91f), AndroidUtilities.dpf2(1.08f));
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.paint.setAlpha((int) (this.alpha * 255.0f));
            canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), getBounds().width() / 2.0f, this.paint);
            float fCurrentTimeMillis = ((System.currentTimeMillis() - this.start) % 400) / 400.0f;
            int alpha = this.strokePaint.getAlpha();
            this.strokePaint.setAlpha((int) (alpha * this.alpha));
            this.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.33f));
            canvas.save();
            canvas.translate(getBounds().centerX(), getBounds().centerY() - (((AndroidUtilities.dpf2(2.16f) * 3.0f) + (AndroidUtilities.dpf2(1.166f) * 2.0f)) / 2.0f));
            int i = 0;
            while (i < 4) {
                float f = i == 0 ? 1.0f - fCurrentTimeMillis : i == 3 ? fCurrentTimeMillis : 1.0f;
                this.strokePaint.setAlpha((int) (f * 255.0f * this.alpha));
                canvas.save();
                float fLerp = AndroidUtilities.lerp(0.5f, 1.0f, f);
                canvas.scale(fLerp, fLerp);
                canvas.drawPath(this.arrow, this.strokePaint);
                canvas.restore();
                canvas.translate(0.0f, AndroidUtilities.dpf2(3.3260002f) * f);
                i++;
            }
            canvas.restore();
            this.strokePaint.setAlpha(alpha);
            View view = this.view;
            if (view != null) {
                view.invalidate();
            }
        }

        @Override // org.telegram.ui.Components.CompatDrawable, android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i / 255.0f;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.dp(18.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.dp(18.0f);
        }
    }

    public static class PageTransition {
        public int from;
        public float progress;
        public int to;

        public PageTransition(int i, int i2, float f) {
            this.from = i;
            this.to = i2;
        }

        public void setProgress(float f) {
            this.progress = f;
        }

        public float at(int i) {
            int i2 = this.to;
            if (i2 == i && this.from == i) {
                return 1.0f;
            }
            if (i2 == i) {
                return this.progress;
            }
            if (this.from == i) {
                return 1.0f - this.progress;
            }
            return 0.0f;
        }

        public boolean to(int i) {
            return this.to == i;
        }

        public float at(int i, int i2) {
            if (contains(i) && contains(i2)) {
                return 1.0f;
            }
            return Math.max(at(i), at(i2));
        }

        public float at(int i, int i2, int i3) {
            if (contains(i) && contains(i2)) {
                return 1.0f;
            }
            if (contains(i2) && contains(i3)) {
                return 1.0f;
            }
            if (contains(i3) && contains(i)) {
                return 1.0f;
            }
            return Math.max(at(i), Math.max(at(i2), at(i3)));
        }

        public boolean contains(int i) {
            return this.from == i || this.to == i;
        }

        public boolean is(int i) {
            return this.to == i;
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.starUserGiftsLoaded) {
            if (this.giftsList == ((StarsController.GiftsList) objArr[1])) {
                if (this.topView.craftTopView == null || !this.topView.craftTopView.crafting) {
                    updateViewPager();
                }
            }
        }
    }

    public static class PaymentFormState {
        public final AmountUtils$Amount amount;
        public final AmountUtils$Currency currency;
        public final TLRPC.TL_payments_paymentFormStarGift form;

        public PaymentFormState(AmountUtils$Currency amountUtils$Currency, TLRPC.TL_payments_paymentFormStarGift tL_payments_paymentFormStarGift) {
            this.currency = amountUtils$Currency;
            this.form = tL_payments_paymentFormStarGift;
            long formStarsPrice = StarsController.getFormStarsPrice(tL_payments_paymentFormStarGift);
            AmountUtils$Currency amountUtils$Currency2 = AmountUtils$Currency.STARS;
            if (amountUtils$Currency == amountUtils$Currency2) {
                this.amount = AmountUtils$Amount.fromDecimal(formStarsPrice, amountUtils$Currency2);
                return;
            }
            AmountUtils$Currency amountUtils$Currency3 = AmountUtils$Currency.TON;
            if (amountUtils$Currency == amountUtils$Currency3) {
                this.amount = AmountUtils$Amount.fromNano(formStarsPrice, amountUtils$Currency3);
            } else {
                this.amount = AmountUtils$Amount.fromNano(0L, amountUtils$Currency2);
            }
        }
    }

    public static class ResaleBuyTransferAlert {
        public final AlertDialog alertDialog;
        private BalanceCloud balanceCloud;
        private final boolean canSwitchToTON;
        public final Context context;
        private final HorizontalRoundTabsLayout currencyTabsView;
        public final int currentAccount;
        public final long dialogId;
        private final HashMap<AmountUtils$Currency, PaymentFormState> forms;
        public final TL_stars.TL_starGiftUnique gift;
        private final String giftName;
        private Browser.Progress lastPositiveButtonProgress;
        private final HashSet<AmountUtils$Currency> loadingForms;
        private TextView positiveButton;
        private final Theme.ResourcesProvider resourcesProvider;
        private FrameLayout rootView;
        private AmountUtils$Currency selectedCurrency;
        private final TextView textInfoView;
        private HintView2 tonHint;

        /* JADX INFO: renamed from: $r8$lambda$Ir3-yo6P7HWmUPIq9zYFIETuXUY, reason: not valid java name */
        public static /* synthetic */ void m20073$r8$lambda$Ir3yo6P7HWmUPIq9zYFIETuXUY(View view) {
        }

        public ResaleBuyTransferAlert(final Context context, final Theme.ResourcesProvider resourcesProvider, TL_stars.TL_starGiftUnique tL_starGiftUnique, PaymentFormState paymentFormState, final int i, long j, String str, boolean z, final Utilities.Callback2<PaymentFormState, Browser.Progress> callback2) {
            TLObject chat;
            HashMap<AmountUtils$Currency, PaymentFormState> map = new HashMap<>();
            this.forms = map;
            this.loadingForms = new HashSet<>();
            this.context = context;
            this.gift = tL_starGiftUnique;
            this.dialogId = j;
            this.currentAccount = i;
            AmountUtils$Currency amountUtils$Currency = paymentFormState.currency;
            this.selectedCurrency = amountUtils$Currency;
            map.put(amountUtils$Currency, paymentFormState);
            this.resourcesProvider = resourcesProvider;
            this.giftName = str;
            boolean z2 = tL_starGiftUnique.resale_ton_only;
            this.canSwitchToTON = !z2;
            if (j >= 0) {
                chat = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            } else {
                chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            }
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Stars.StarGiftSheet.ResaleBuyTransferAlert.1

                /* JADX INFO: renamed from: c */
                private final int[] f1047c = new int[2];

                @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                public void onLayout(boolean z3, int i2, int i3, int i4, int i5) {
                    super.onLayout(z3, i2, i3, i4, i5);
                    if (ResaleBuyTransferAlert.this.currencyTabsView == null || ResaleBuyTransferAlert.this.currencyTabsView.linearLayout.getChildCount() < 2 || ResaleBuyTransferAlert.this.tonHint == null || ResaleBuyTransferAlert.this.rootView == null) {
                        return;
                    }
                    ResaleBuyTransferAlert.this.rootView.getLocationInWindow(this.f1047c);
                    float translationX = this.f1047c[0] - ResaleBuyTransferAlert.this.rootView.getTranslationX();
                    float translationY = this.f1047c[1] - ResaleBuyTransferAlert.this.rootView.getTranslationY();
                    View childAt = ResaleBuyTransferAlert.this.currencyTabsView.linearLayout.getChildAt(1);
                    childAt.getLocationInWindow(this.f1047c);
                    float translationX2 = this.f1047c[0] - childAt.getTranslationX();
                    ResaleBuyTransferAlert.this.tonHint.setTranslationY((((this.f1047c[1] - childAt.getTranslationY()) - translationY) - ResaleBuyTransferAlert.this.tonHint.getMeasuredHeight()) - ResaleBuyTransferAlert.this.currencyTabsView.getMeasuredHeight());
                    ResaleBuyTransferAlert.this.tonHint.setJointPx(0.0f, ((translationX2 - translationX) + (childAt.getMeasuredWidth() / 2.0f)) - AndroidUtilities.dp(12.0f));
                }
            };
            frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
            if (!z2) {
                HorizontalRoundTabsLayout horizontalRoundTabsLayout = new HorizontalRoundTabsLayout(context, resourcesProvider);
                this.currencyTabsView = horizontalRoundTabsLayout;
                ArrayList<CharSequence> arrayList = new ArrayList<>();
                arrayList.add(LocaleController.getString(C2573R.string.Gift2BuyInStars));
                arrayList.add(LocaleController.getString(C2573R.string.Gift2BuyInTON));
                horizontalRoundTabsLayout.setTabs(arrayList, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Stars.StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i2) {
                        this.f$0.lambda$new$0(i2);
                    }
                });
                linearLayout.addView(horizontalRoundTabsLayout, LayoutHelper.createLinear(-2, -2, 1, 18, 0, 18, 12));
            } else {
                this.currencyTabsView = null;
                TextView textView = new TextView(context);
                textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
                textView.setTextSize(1, 14.0f);
                textView.setText(LocaleController.getString(C2573R.string.Gift2BuyPriceOnlyTON));
                textView.setGravity(17);
                linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 17, 24, 4, 24, 4));
            }
            linearLayout.addView(new GiftTransferTopView(context, tL_starGiftUnique, chat), LayoutHelper.createLinear(-1, -2, 48, 0, -4, 0, 0));
            TextView textView2 = new TextView(context);
            this.textInfoView = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
            textView2.setTextSize(1, 16.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 48, 24, 4, 24, 4));
            if (z) {
                TableView tableView = new TableView(context, resourcesProvider);
                StarGiftSheet.addAttributeRow(tableView, StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeModel.class));
                StarGiftSheet.addAttributeRow(tableView, StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class));
                StarGiftSheet.addAttributeRow(tableView, StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributePattern.class));
                if (!TextUtils.isEmpty(tL_starGiftUnique.slug) && (tL_starGiftUnique.flags & 256) != 0) {
                    String currency = BillingController.getInstance().formatCurrency(tL_starGiftUnique.value_amount, tL_starGiftUnique.value_currency, BillingController.getInstance().getCurrencyExp(tL_starGiftUnique.value_currency), true);
                    tableView.addRow(LocaleController.getString(C2573R.string.GiftValue2), "~" + currency);
                }
                linearLayout.addView(tableView, LayoutHelper.createLinear(-1, -2, 48, 23, 16, 23, 4));
            }
            this.alertDialog = new AlertDialog.Builder(context, resourcesProvider).setView(frameLayout).setPositiveButton("_", new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$new$1(i, context, resourcesProvider, callback2, alertDialog, i2);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).create();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            AmountUtils$Currency amountUtils$Currency;
            if (i == 0) {
                amountUtils$Currency = AmountUtils$Currency.STARS;
            } else {
                amountUtils$Currency = AmountUtils$Currency.TON;
            }
            this.selectedCurrency = amountUtils$Currency;
            onUpdateCurrency(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(int i, Context context, Theme.ResourcesProvider resourcesProvider, Utilities.Callback2 callback2, AlertDialog alertDialog, int i2) {
            PaymentFormState paymentFormState = this.forms.get(this.selectedCurrency);
            if (paymentFormState == null) {
                return;
            }
            StarsController starsController = StarsController.getInstance(i, this.selectedCurrency);
            AmountUtils$Amount amountUtils$AmountOf = starsController.balanceAvailable() ? AmountUtils$Amount.of(starsController.getBalance()) : null;
            if (amountUtils$AmountOf != null && paymentFormState.amount.asNano() > amountUtils$AmountOf.asNano()) {
                AmountUtils$Currency amountUtils$Currency = this.selectedCurrency;
                if (amountUtils$Currency == AmountUtils$Currency.STARS) {
                    new StarsIntroActivity.StarsNeededSheet(context, resourcesProvider, paymentFormState.amount.asDecimal(), 14, null, null, 0L).show();
                    return;
                } else {
                    if (amountUtils$Currency == AmountUtils$Currency.TON) {
                        new TONIntroActivity.StarsNeededSheet(context, resourcesProvider, paymentFormState.amount, true, null).show();
                        return;
                    }
                    return;
                }
            }
            Browser.Progress progress = this.lastPositiveButtonProgress;
            if (progress != null) {
                progress.cancel();
                this.lastPositiveButtonProgress = null;
            }
            callback2.run(paymentFormState, alertDialog.makeButtonLoading(i2));
        }

        public void show() {
            this.alertDialog.setShowStarsBalance(true).show();
            this.positiveButton = (TextView) this.alertDialog.getButton(-1);
            this.balanceCloud = this.alertDialog.getStarsBalanceCloud();
            FrameLayout fullscreenContainerView = this.alertDialog.getFullscreenContainerView();
            this.rootView = fullscreenContainerView;
            if (fullscreenContainerView != null && this.canSwitchToTON) {
                HintView2 hintView2Show = new HintView2(this.context, 3).setMultilineText(true).setTextAlign(Layout.Alignment.ALIGN_NORMAL).setDuration(5000L).setText(LocaleController.getString(C2573R.string.Gift2BuyPricePayHintTON)).show();
                this.tonHint = hintView2Show;
                hintView2Show.setPadding(AndroidUtilities.dp(7.33f), 0, AndroidUtilities.dp(7.33f), 0);
                this.rootView.addView(this.tonHint, LayoutHelper.createFrame(-2, 100.0f, 48, 0.0f, 26.0f, 0.0f, 0.0f));
            }
            onUpdateCurrency(false);
        }

        private void onUpdateCurrency(boolean z) {
            String string;
            String pluralStringComma;
            HintView2 hintView2;
            final AmountUtils$Currency amountUtils$Currency = this.selectedCurrency;
            PaymentFormState paymentFormState = this.forms.get(amountUtils$Currency);
            this.textInfoView.animate().alpha(paymentFormState != null ? 1.0f : 0.25f).start();
            this.textInfoView.setEnabled(paymentFormState != null);
            this.positiveButton.setEnabled(paymentFormState != null);
            this.balanceCloud.setCurrency(amountUtils$Currency, z);
            HorizontalRoundTabsLayout horizontalRoundTabsLayout = this.currencyTabsView;
            if (horizontalRoundTabsLayout != null) {
                horizontalRoundTabsLayout.setSelectedIndex(amountUtils$Currency == AmountUtils$Currency.TON ? 1 : 0, z);
            }
            AmountUtils$Currency amountUtils$Currency2 = AmountUtils$Currency.TON;
            if (amountUtils$Currency == amountUtils$Currency2 && (hintView2 = this.tonHint) != null && hintView2.shown()) {
                this.tonHint.hide();
            }
            BalanceCloud balanceCloud = this.balanceCloud;
            if (balanceCloud != null) {
                if (amountUtils$Currency == AmountUtils$Currency.STARS) {
                    balanceCloud.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onUpdateCurrency$2(view);
                        }
                    });
                } else {
                    balanceCloud.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            StarGiftSheet.ResaleBuyTransferAlert.m20073$r8$lambda$Ir3yo6P7HWmUPIq9zYFIETuXUY(view);
                        }
                    });
                }
            }
            Browser.Progress progress = this.lastPositiveButtonProgress;
            if (progress != null) {
                progress.cancel();
                this.lastPositiveButtonProgress = null;
            }
            if (paymentFormState != null) {
                boolean z2 = this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
                if (paymentFormState.currency == AmountUtils$Currency.STARS) {
                    this.positiveButton.setText(StarsIntroActivity.replaceStars(LocaleController.formatPluralStringComma("Gift2BuyDoPrice2", (int) paymentFormState.amount.asDecimal())));
                    TextView textView = this.textInfoView;
                    AmountUtils$Amount amountUtils$Amount = paymentFormState.amount;
                    if (z2) {
                        pluralStringComma = LocaleController.formatPluralStringComma("Gift2BuyPriceSelfText", (int) amountUtils$Amount.asDecimal(), this.giftName);
                    } else {
                        pluralStringComma = LocaleController.formatPluralStringComma("Gift2BuyPriceText", (int) amountUtils$Amount.asDecimal(), this.giftName, DialogObject.getShortName(this.dialogId));
                    }
                    textView.setText(AndroidUtilities.replaceTags(pluralStringComma));
                }
                if (paymentFormState.currency == amountUtils$Currency2) {
                    this.positiveButton.setText(StarsIntroActivity.replaceStars(true, (CharSequence) LocaleController.formatString(C2573R.string.Gift2BuyDoPrice2TON, paymentFormState.amount.asFormatString())));
                    TextView textView2 = this.textInfoView;
                    AmountUtils$Amount amountUtils$Amount2 = paymentFormState.amount;
                    if (z2) {
                        string = LocaleController.formatString(C2573R.string.Gift2BuyPriceSelfTextTON, amountUtils$Amount2.asFormatString(), this.giftName);
                    } else {
                        string = LocaleController.formatString(C2573R.string.Gift2BuyPriceTextTON, amountUtils$Amount2.asFormatString(), this.giftName, DialogObject.getShortName(this.dialogId));
                    }
                    textView2.setText(AndroidUtilities.replaceTags(string));
                    return;
                }
                return;
            }
            Browser.Progress progressMakeButtonLoading = this.alertDialog.makeButtonLoading(-1, false, false);
            this.lastPositiveButtonProgress = progressMakeButtonLoading;
            progressMakeButtonLoading.init();
            if (this.loadingForms.add(amountUtils$Currency)) {
                StarsController.getInstance(this.currentAccount, amountUtils$Currency).getResellingGiftForm(this.gift, this.dialogId, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$ResaleBuyTransferAlert$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onUpdateCurrency$4(amountUtils$Currency, (TLRPC.TL_payments_paymentFormStarGift) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUpdateCurrency$2(View view) {
            new StarsIntroActivity.StarsOptionsSheet(this.context, this.resourcesProvider).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUpdateCurrency$4(AmountUtils$Currency amountUtils$Currency, TLRPC.TL_payments_paymentFormStarGift tL_payments_paymentFormStarGift) {
            Browser.Progress progress = this.lastPositiveButtonProgress;
            if (progress != null && amountUtils$Currency == this.selectedCurrency) {
                progress.end();
            }
            this.loadingForms.remove(amountUtils$Currency);
            if (tL_payments_paymentFormStarGift != null) {
                this.forms.put(amountUtils$Currency, new PaymentFormState(amountUtils$Currency, tL_payments_paymentFormStarGift));
                onUpdateCurrency(true);
            }
        }
    }

    private void openValueStats(final long j, final String str, final String str2, final String str3, final TLRPC.Document document, String str4) {
        final AlertDialog alertDialog = new AlertDialog(ApplicationLoader.applicationContext, 3);
        alertDialog.showDelayed(500L);
        TL_stars.getUniqueStarGiftValueInfo getuniquestargiftvalueinfo = new TL_stars.getUniqueStarGiftValueInfo();
        getuniquestargiftvalueinfo.slug = str4;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(getuniquestargiftvalueinfo, new RequestDelegate() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda113
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$openValueStats$183(alertDialog, document, str3, str, str2, j, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openValueStats$183(final AlertDialog alertDialog, final TLRPC.Document document, final String str, final String str2, final String str3, final long j, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openValueStats$182(alertDialog, tLObject, document, str, str2, str3, j, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openValueStats$182(AlertDialog alertDialog, TLObject tLObject, TLRPC.Document document, String str, final String str2, String str3, final long j, TLRPC.TL_error tL_error) {
        float f;
        alertDialog.dismiss();
        if (!(tLObject instanceof TL_stars.UniqueStarGiftValueInfo)) {
            if (tL_error != null) {
                getBulletinFactory().showForError(tL_error);
                return;
            }
            return;
        }
        final TL_stars.UniqueStarGiftValueInfo uniqueStarGiftValueInfo = (TL_stars.UniqueStarGiftValueInfo) tLObject;
        BottomSheet.Builder builder = new BottomSheet.Builder(getContext(), false, this.resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        BackupImageView backupImageView = new BackupImageView(getContext());
        StarsIntroActivity.setGiftImage(backupImageView.getImageReceiver(), document, 160);
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(160, 160, 1, 0, 0, 0, 0));
        TextView textView = new TextView(getContext());
        textView.setTextSize(1, 20.0f);
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, this.resourcesProvider));
        textView.setTypeface(AndroidUtilities.bold());
        textView.setPadding(AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(20.0f), 0);
        textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(21.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, 42, 1, 0, 12, 0, 15));
        textView.setText(str);
        TextView textView2 = new TextView(getContext());
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        textView2.setGravity(17);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 16, 0, 16, 19));
        if (uniqueStarGiftValueInfo.value_is_average) {
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftValueAverage, str2)));
        } else if (uniqueStarGiftValueInfo.last_sale_on_fragment) {
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftValueLastFragment, str3)));
        } else {
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftValueLastTelegram, str3)));
        }
        final FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        final HintView2[] hintView2Arr = new HintView2[1];
        final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda166
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$openValueStats$174(hintView2Arr, frameLayout, (View) obj, (CharSequence) obj2);
            }
        };
        TableView tableView = new TableView(getContext(), this.resourcesProvider);
        frameLayout.addView(tableView, LayoutHelper.createFrame(-1, -1, 119));
        tableView.addRow(LocaleController.getString(C2573R.string.GiftValueInitialSale), LocaleController.formatYearMonthDay(uniqueStarGiftValueInfo.initial_sale_date, true));
        tableView.addRow(LocaleController.getString(C2573R.string.GiftValueInitialPrice), StarsIntroActivity.replaceStarsWithPlain("⭐️" + uniqueStarGiftValueInfo.initial_sale_stars + " (~" + BillingController.getInstance().formatCurrency(uniqueStarGiftValueInfo.initial_sale_price, uniqueStarGiftValueInfo.currency) + ")", 0.8f));
        if (TLObject.hasFlag(uniqueStarGiftValueInfo.flags, 1)) {
            tableView.addRow(LocaleController.getString(C2573R.string.GiftValueLastSale), LocaleController.formatYearMonthDay(uniqueStarGiftValueInfo.last_sale_date, true));
            int iRound = ((int) (Math.round((uniqueStarGiftValueInfo.last_sale_price / uniqueStarGiftValueInfo.initial_sale_price) * 1000.0d) / 10)) - 100;
            if (iRound > 0) {
                tableView.addRow(LocaleController.getString(C2573R.string.GiftValueLastPrice), BillingController.getInstance().formatCurrency(uniqueStarGiftValueInfo.last_sale_price, uniqueStarGiftValueInfo.currency), "+" + LocaleController.formatNumber(iRound, ' ') + "%", (Runnable) null);
            } else {
                tableView.addRow(LocaleController.getString(C2573R.string.GiftValueLastPrice), BillingController.getInstance().formatCurrency(uniqueStarGiftValueInfo.last_sale_price, uniqueStarGiftValueInfo.currency));
            }
        }
        if (TLObject.hasFlag(uniqueStarGiftValueInfo.flags, 4)) {
            final ButtonSpan.TextViewButtons[] textViewButtonsArr = {(ButtonSpan.TextViewButtons) ((TableView.TableRowContent) tableRowAddRow.getChildAt(1)).getChildAt(0)};
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda167
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback2 callback22 = callback2;
                    ButtonSpan.TextViewButtons[] textViewButtonsArr2 = textViewButtonsArr;
                    TL_stars.UniqueStarGiftValueInfo uniqueStarGiftValueInfo2 = uniqueStarGiftValueInfo;
                    callback22.run(textViewButtonsArr2[0], LocaleController.formatString(C2573R.string.GiftValueMinPriceInfo, BillingController.getInstance().formatCurrency(uniqueStarGiftValueInfo2.floor_price, uniqueStarGiftValueInfo2.currency), str2));
                }
            };
            TableRow tableRowAddRow = tableView.addRow(LocaleController.getString(C2573R.string.GiftValueMinPrice), BillingController.getInstance().formatCurrency(uniqueStarGiftValueInfo.floor_price, uniqueStarGiftValueInfo.currency), "?", runnable);
            tableRowAddRow.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda168
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
        }
        if (TLObject.hasFlag(uniqueStarGiftValueInfo.flags, 8)) {
            final ButtonSpan.TextViewButtons[] textViewButtonsArr2 = {(ButtonSpan.TextViewButtons) ((TableView.TableRowContent) tableRowAddRow.getChildAt(1)).getChildAt(0)};
            final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda169
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback2 callback22 = callback2;
                    ButtonSpan.TextViewButtons[] textViewButtonsArr3 = textViewButtonsArr2;
                    TL_stars.UniqueStarGiftValueInfo uniqueStarGiftValueInfo2 = uniqueStarGiftValueInfo;
                    callback22.run(textViewButtonsArr3[0], LocaleController.formatString(C2573R.string.GiftValueAveragePriceInfo, BillingController.getInstance().formatCurrency(uniqueStarGiftValueInfo2.average_price, uniqueStarGiftValueInfo2.currency), str2));
                }
            };
            TableRow tableRowAddRow2 = tableView.addRow(LocaleController.getString(C2573R.string.GiftValueAveragePrice), BillingController.getInstance().formatCurrency(uniqueStarGiftValueInfo.average_price, uniqueStarGiftValueInfo.currency), "?", runnable2);
            tableRowAddRow2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda170
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable2.run();
                }
            });
        }
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 7, 0, 0, 0, 12));
        if (uniqueStarGiftValueInfo.listed_count > 0) {
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(getContext(), false, this.resourcesProvider);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            f = 1.0f;
            spannableStringBuilder.append((CharSequence) LocaleController.formatNumber(uniqueStarGiftValueInfo.listed_count, ' '));
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) "e");
            spannableStringBuilder.setSpan(new AnimatedEmojiSpan(document, 1.5f, buttonWithCounterView.getTextPaint().getFontMetricsInt()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.GiftValueOnSaleTelegram));
            buttonWithCounterView.setText(AndroidUtilities.replaceArrows(spannableStringBuilder, false, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(1.0f)), false);
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda171
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$openValueStats$180(str2, j, view);
                }
            });
            linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 42, 7, 0, 0, 0, 2));
        } else {
            f = 1.0f;
        }
        if (uniqueStarGiftValueInfo.fragment_listed_count > 0) {
            ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(getContext(), false, this.resourcesProvider);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) LocaleController.formatNumber(uniqueStarGiftValueInfo.fragment_listed_count, ' '));
            spannableStringBuilder2.append((CharSequence) "e");
            spannableStringBuilder2.setSpan(new AnimatedEmojiSpan(document, 1.5f, buttonWithCounterView2.getTextPaint().getFontMetricsInt()), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 33);
            spannableStringBuilder2.append((CharSequence) " ");
            spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2573R.string.GiftValueOnSaleFragment));
            buttonWithCounterView2.setText(AndroidUtilities.replaceArrows(spannableStringBuilder2, false, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(f)), false);
            buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda172
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$openValueStats$181(uniqueStarGiftValueInfo, view);
                }
            });
            linearLayout.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 42, 7, 0, 0, 0, 0));
        }
        builder.setCustomView(linearLayout);
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openValueStats$174(HintView2[] hintView2Arr, FrameLayout frameLayout, View view, CharSequence charSequence) {
        ButtonSpan buttonSpan;
        HintView2 hintView2 = hintView2Arr[0];
        if (hintView2 != null) {
            hintView2.hide();
        }
        CharSequence charSequenceReplaceTags = AndroidUtilities.replaceTags(charSequence);
        float x = view.getX() + ((View) view.getParent()).getX() + ((View) ((View) view.getParent()).getParent()).getX();
        float y = view.getY() + ((View) view.getParent()).getY() + ((View) ((View) view.getParent()).getParent()).getY();
        if (view instanceof ButtonSpan.TextViewButtons) {
            Layout layout = ((ButtonSpan.TextViewButtons) view).getLayout();
            CharSequence text = layout.getText();
            if (text instanceof Spanned) {
                Spanned spanned = (Spanned) text;
                ButtonSpan[] buttonSpanArr = (ButtonSpan[]) spanned.getSpans(0, text.length(), ButtonSpan.class);
                if (buttonSpanArr.length > 0 && (buttonSpan = buttonSpanArr[0]) != null) {
                    x += layout.getPrimaryHorizontal(spanned.getSpanStart(buttonSpan)) + (buttonSpanArr[0].getSize() / 2);
                    y += layout.getLineTop(layout.getLineForOffset(r4));
                }
            }
        }
        final HintView2 hintView22 = new HintView2(getContext(), 3);
        hintView2Arr[0] = hintView22;
        hintView22.setMultilineText(true);
        hintView22.setInnerPadding(11.0f, 8.0f, 11.0f, 7.0f);
        hintView22.setRounding(10.0f);
        hintView22.setText(charSequenceReplaceTags);
        hintView22.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda181
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.removeFromParent(hintView22);
            }
        });
        hintView22.setTranslationY((-AndroidUtilities.dp(100.0f)) + y);
        hintView22.setMaxWidthPx(AndroidUtilities.dp(300.0f));
        hintView22.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
        hintView22.setJointPx(0.0f, x - AndroidUtilities.dp(4.0f));
        frameLayout.addView(hintView22, LayoutHelper.createFrame(-1, 100, 55));
        hintView22.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openValueStats$180(String str, long j, View view) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        ResaleGiftsFragment resaleGiftsFragment = new ResaleGiftsFragment(this.dialogId, str, j, this.resourcesProvider);
        resaleGiftsFragment.setCloseParentSheet(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$$ExternalSyntheticLambda190
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openValueStats$179();
            }
        });
        lastFragment.showAsSheet(resaleGiftsFragment, bottomSheetParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openValueStats$179() {
        Runnable runnable = this.closeParentSheet;
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openValueStats$181(TL_stars.UniqueStarGiftValueInfo uniqueStarGiftValueInfo, View view) {
        Browser.openUrlInSystemBrowser(getContext(), uniqueStarGiftValueInfo.fragment_listed_url);
    }

    public static final class UpgradePricesSheet extends BottomSheetLayouted {
        private LimitPreviewView limitPreviewView;
        private ArrayList<TL_stars.StarGiftUpgradePrice> prices;

        public UpgradePricesSheet(Context context, long j, ArrayList<TL_stars.StarGiftUpgradePrice> arrayList, Theme.ResourcesProvider resourcesProvider) {
            int i;
            super(context, resourcesProvider);
            this.prices = arrayList;
            float f = this.backgroundPaddingLeft / AndroidUtilities.density;
            LimitPreviewView limitPreviewView = new LimitPreviewView(getContext(), C2573R.drawable.star, 0, 0, resourcesProvider);
            this.limitPreviewView = limitPreviewView;
            float f2 = 14.0f;
            limitPreviewView.setTranslationY(-AndroidUtilities.dp(14.0f));
            limitPreviewView.setIconScale(1.8f);
            this.layout.addView(limitPreviewView, LayoutHelper.createLinear(-1, -2, 17, f, 20.0f, f, 10.0f));
            setCurrentPrice(j);
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i2, true);
            textViewMakeTextView.setGravity(17);
            textViewMakeTextView.setText(LocaleController.getString(C2573R.string.Gift2UpgradeCostsTitle));
            setTitle(LocaleController.getString(C2573R.string.Gift2UpgradeCostsTitle));
            this.layout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 17, 32, 0, 32, 0));
            TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i2, false);
            textViewMakeTextView2.setGravity(17);
            textViewMakeTextView2.setText(LocaleController.getString(C2573R.string.Gift2UpgradeCostsText));
            this.layout.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 17, 32, 10, 32, 10));
            int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            TableView tableView = new TableView(context, resourcesProvider);
            int i3 = 0;
            boolean z = false;
            while (i3 < arrayList.size()) {
                TL_stars.StarGiftUpgradePrice starGiftUpgradePrice = arrayList.get(i3);
                float f3 = f2;
                if (currentTime <= starGiftUpgradePrice.date || ((i = i3 + 1) < arrayList.size() && currentTime <= arrayList.get(i).date)) {
                    Date date = new Date(((long) starGiftUpgradePrice.date) * 1000);
                    tableView.addRow(LocaleController.getInstance().getFormatterDay().format(date) + ", " + LocaleController.getInstance().getFormatterDayMonth().format(date), StarsIntroActivity.replaceStarsWithPlain("⭐️ " + LocaleController.formatNumber((int) starGiftUpgradePrice.upgrade_stars, ','), 0.8f));
                    z = true;
                }
                i3++;
                f2 = f3;
            }
            float f4 = f2;
            if (!z) {
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    TL_stars.StarGiftUpgradePrice starGiftUpgradePrice2 = arrayList.get(i4);
                    i4++;
                    Date date2 = new Date(((long) starGiftUpgradePrice2.date) * 1000);
                    tableView.addRow(LocaleController.getInstance().getFormatterDay().format(date2) + ", " + LocaleController.getInstance().getFormatterDayMonth().format(date2), StarsIntroActivity.replaceStarsWithPlain("⭐️ " + LocaleController.formatNumber((int) r7.upgrade_stars, ','), 0.8f));
                }
            }
            float f5 = f + f4;
            this.layout.addView(tableView, LayoutHelper.createLinear(-1, -2, 7, f5, 16.0f, f5, 15.0f));
            TextView textViewMakeTextView3 = TextHelper.makeTextView(context, 12.0f, Theme.key_windowBackgroundWhiteGrayText, false);
            textViewMakeTextView3.setGravity(17);
            textViewMakeTextView3.setText(LocaleController.getString(C2573R.string.Gift2UpgradeCostsFooter));
            this.layout.addView(textViewMakeTextView3, LayoutHelper.createLinear(-1, -2, 17, 32, 0, 32, 15));
            createButton();
            this.button.setText(StarGiftSheet.replaceUnderstood(LocaleController.getString(C2573R.string.Understood)), false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$UpgradePricesSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            lambda$new$0();
        }

        public void setCurrentPrice(long j) {
            ArrayList<TL_stars.StarGiftUpgradePrice> arrayList = this.prices;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            this.limitPreviewView.setStarsUpgradePrice(this.prices.get(0), j, this.prices.get(r1.size() - 1));
        }
    }

    public static CharSequence replaceUnderstood(CharSequence charSequence) {
        return replaceUnderstood(charSequence, null);
    }

    public static CharSequence replaceUnderstood(CharSequence charSequence, ColoredImageSpan[] coloredImageSpanArr) {
        SpannableStringBuilder spannableStringBuilder;
        if (charSequence == null) {
            return null;
        }
        if (!(charSequence instanceof SpannableStringBuilder)) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = (SpannableStringBuilder) charSequence;
        }
        SpannableString spannableString = new SpannableString("👌");
        spannableString.setSpan(new ColoredImageSpan(C2573R.drawable.filled_understood), 0, spannableString.length(), 33);
        SpannableString spannableString2 = new SpannableString("👍");
        spannableString2.setSpan(new ColoredImageSpan(C2573R.drawable.filled_reactions), 0, spannableString2.length(), 33);
        AndroidUtilities.replaceMultipleCharSequence("👌", spannableStringBuilder, spannableString);
        AndroidUtilities.replaceMultipleCharSequence("👍", spannableStringBuilder, spannableString2);
        return spannableStringBuilder;
    }

    public static class ActionView extends View {
        private final Paint bgDarkerPaint;
        private final Paint bgPaint;
        private BitmapShader blurBitmapShader;
        private Matrix blurInvertMatrix;
        private Matrix blurMatrix;
        private boolean fullRect;
        private StaticLayout layout;
        private final TextPaint paint;
        private final LinkPath path;
        private int px;
        private int py;
        private CharSequence textToSet;

        public ActionView(Context context) {
            super(context);
            this.px = AndroidUtilities.dp(6.0f);
            this.py = AndroidUtilities.dp(2.0f);
            TextPaint textPaint = new TextPaint(1);
            this.paint = textPaint;
            textPaint.setColor(-1);
            textPaint.setTextSize(AndroidUtilities.dp(13.0f));
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dp(9.66f)));
            Paint paint2 = new Paint(1);
            this.bgDarkerPaint = paint2;
            paint2.setPathEffect(new CornerPathEffect(AndroidUtilities.dp(9.66f)));
            this.path = new LinkPath(true);
        }

        public void setFullRect(boolean z) {
            this.fullRect = z;
        }

        public void setPadding(int i, int i2) {
            this.px = i;
            this.py = i2;
        }

        public void setRoundRadius(float f) {
            this.bgPaint.setPathEffect(new CornerPathEffect(f));
            this.bgDarkerPaint.setPathEffect(new CornerPathEffect(f));
        }

        public void prepareBlur(View view) {
            ArrayList arrayList = new ArrayList();
            if (view != null) {
                arrayList.add(view);
            }
            AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$ActionView$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$prepareBlur$0((Bitmap) obj);
                }
            }, 12.0f, 12, null, arrayList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$prepareBlur$0(Bitmap bitmap) {
            this.blurMatrix = new Matrix();
            this.blurInvertMatrix = new Matrix();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.blurBitmapShader = bitmapShader;
            this.bgPaint.setShader(bitmapShader);
            ColorMatrix colorMatrix = new ColorMatrix();
            AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.25f);
            this.bgPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            CharSequence charSequence = this.textToSet;
            if (charSequence != null) {
                set(charSequence, size);
            }
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30);
            StaticLayout staticLayout = this.layout;
            super.onMeasure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(staticLayout == null ? 0 : staticLayout.getHeight() + AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
            setPivotX(getMeasuredWidth() / 2.0f);
            setPivotY(getMeasuredHeight());
        }

        public void set(MessageObject messageObject) {
            TLRPC.Message message;
            if (messageObject == null || (message = messageObject.messageOwner) == null || message.action == null) {
                setVisibility(8);
                return;
            }
            int i = messageObject.currentAccount;
            long clientUserId = UserConfig.getInstance(i).getClientUserId();
            TLRPC.MessageAction messageAction = messageObject.messageOwner.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                setVisibility(8);
                return;
            }
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction;
                TLRPC.Peer peer = tL_messageActionStarGiftUnique.from_id;
                if (peer == null) {
                    setVisibility(8);
                    return;
                }
                long peerDialogId = DialogObject.getPeerDialogId(peer);
                if (clientUserId == peerDialogId) {
                    set(AndroidUtilities.replaceTags(LocaleController.formatString((tL_messageActionStarGiftUnique.craft || tL_messageActionStarGiftUnique.gift.crafted) ? C2573R.string.GiftSelfTopActionCrafted : C2573R.string.GiftSelfTopAction, LocaleController.formatDate(messageObject.messageOwner.date))));
                } else {
                    set(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftTopAction, DialogObject.getShortName(i, peerDialogId), LocaleController.formatDate(messageObject.messageOwner.date))));
                }
                setVisibility(0);
                return;
            }
            setVisibility(8);
        }

        public void set(int i, TL_stars.SavedStarGift savedStarGift) {
            if (savedStarGift == null || savedStarGift.from_id == null || !(savedStarGift.gift instanceof TL_stars.TL_starGiftUnique)) {
                setVisibility(8);
                return;
            }
            setVisibility(0);
            long clientUserId = UserConfig.getInstance(i).getClientUserId();
            long peerDialogId = DialogObject.getPeerDialogId(savedStarGift.from_id);
            if (clientUserId == peerDialogId) {
                set(AndroidUtilities.replaceTags(LocaleController.formatString(savedStarGift.gift.crafted ? C2573R.string.GiftSelfTopActionCrafted : C2573R.string.GiftSelfTopAction, LocaleController.formatDate(savedStarGift.date))));
            } else {
                set(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftTopAction, DialogObject.getShortName(i, peerDialogId), LocaleController.formatDate(savedStarGift.date))));
            }
        }

        public void set(CharSequence charSequence) {
            set(charSequence, getMeasuredWidth());
        }

        private void set(CharSequence charSequence, int i) {
            if (i <= 0) {
                this.textToSet = charSequence;
                return;
            }
            this.layout = new StaticLayout(charSequence, this.paint, i - AndroidUtilities.dp(18.0f), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            this.path.rewind();
            this.path.setPadding(this.px, this.py);
            boolean z = this.fullRect;
            LinkPath linkPath = this.path;
            if (z) {
                linkPath.setCurrentLayout(null, 0, 0.0f, 0.0f);
                float fMax = Float.MAX_VALUE;
                float width = this.layout.getWidth();
                float fMin = Float.MIN_VALUE;
                float fMax2 = 0.0f;
                for (int i2 = 0; i2 < this.layout.getLineCount(); i2++) {
                    width = Math.min(width, this.layout.getLineLeft(i2));
                    fMin = Math.min(fMin, this.layout.getLineTop(i2));
                    fMax2 = Math.max(fMax2, this.layout.getLineRight(i2));
                    fMax = Math.max(fMax, this.layout.getLineBottom(i2));
                }
                this.path.addRect(width, fMin, fMax2, this.layout.getHeight(), Path.Direction.CW);
            } else {
                linkPath.setCurrentLayout(this.layout, 0, 0.0f, 0.0f);
                StaticLayout staticLayout = this.layout;
                staticLayout.getSelectionPath(0, staticLayout.getText().length(), this.path);
                this.path.closeRects();
            }
            invalidate();
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            invalidate();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            Matrix matrix;
            super.onDraw(canvas);
            if (this.layout != null) {
                canvas.save();
                canvas.translate((getWidth() - this.layout.getWidth()) / 2.0f, AndroidUtilities.dp(16.0f));
                Matrix matrix2 = this.blurMatrix;
                if (matrix2 != null) {
                    matrix2.reset();
                    this.blurInvertMatrix.reset();
                    View view = this;
                    while (true) {
                        matrix = this.blurInvertMatrix;
                        if (view == null) {
                            break;
                        }
                        matrix.postConcat(view.getMatrix());
                        view = view.getParent() instanceof View ? (View) view.getParent() : null;
                    }
                    matrix.invert(this.blurMatrix);
                    this.blurMatrix.preTranslate((-this.px) / 2, -AndroidUtilities.dp(16.0f));
                    this.blurMatrix.preScale(12.0f, 12.0f);
                    this.blurBitmapShader.setLocalMatrix(this.blurMatrix);
                }
                canvas.drawPath(this.path, this.bgPaint);
                this.bgDarkerPaint.setColor(Theme.multAlpha(-16777216, 0.35f));
                canvas.drawPath(this.path, this.bgDarkerPaint);
                this.layout.draw(canvas);
                canvas.restore();
            }
        }
    }

    public static class CraftTopView extends FrameLayout {
        private final int[] BACKGROUND_COLORS;
        private final int[] COLORS;
        private final LinearLayout attributesLayoutLine1;
        private final LinearLayout attributesLayoutLine2;
        private boolean attributesTwoLines;
        private final AttributeView[] backdropAttributes;
        private final SwitchGradientDrawable bg;
        private RLottieImageView brokenGiftImage;
        private final LinearLayout button;
        private final ButtonBackground buttonBackground;
        private final AnimatedTextView buttonSubtitle;
        private final AnimatedTextView buttonTitle;
        private final FrameLayout buttonsLayout;
        private final ImageView closeButton;
        private String collectionTitle;
        public boolean crafted;
        private TL_stars.StarGift craftedGift;
        public boolean crafting;
        private final TextView craftingChanceView;
        private final TextView craftingFooterView;
        private final RLottieImageView craftingIconView;
        private final FrameLayout craftingLayout;
        private final TextView craftingSubtitleView;
        private final TextView craftingTitleView;
        private final Cube3D cube;
        private int currentAccount;
        private HintView2 currentHint;
        private TLRPC.Document document;
        private final Face[] faces;
        public boolean failed;
        private GiftSheet.GiftCell[] failedGifts;
        private final LinearLayout failedGiftsLayout;
        private final FrameLayout failedLayout;
        private final TextView failedSubtitle;
        private final TextView failedTitle;
        private final Face frontFace;
        private long giftId;
        private final SelectGiftView[] gifts;
        private final ImageView helpButton;
        private Utilities.Callback2<Utilities.Callback<TL_stars.StarGift>, Boolean> onAddGift;
        private Runnable onClose;
        private Utilities.Callback3<ArrayList<TL_stars.StarGift>, Utilities.Callback2<TL_stars.StarGift, Runnable>, Runnable> onCraft;
        private Runnable openCraftedGift;
        private final AttributeView[] patternAttributes;
        private CharSequence plus;
        private final FrameLayout precraftingLayout;
        private ArrayList<TL_stars.StarGiftAttribute> previewAttributes;
        private final RaysView rays;
        private final Theme.ResourcesProvider resourcesProvider;
        private final SpoilersTextView textView;
        private final TextView titleView;
        private final AnimatedEmojiSpan.TextViewEmojis variantsButton;

        public CraftTopView(Context context, final Theme.ResourcesProvider resourcesProvider) {
            Face[] faceArr;
            super(context);
            this.BACKGROUND_COLORS = new int[]{-14861233, -15787732, -11327734, -14742773, -14527649, -15920861};
            this.COLORS = new int[]{Theme.multAlpha(-1, 0.08f), Theme.multAlpha(-1, 0.08f), -294362, -3914963, -13519030, -12613223};
            this.resourcesProvider = resourcesProvider;
            SwitchGradientDrawable switchGradientDrawable = new SwitchGradientDrawable(1);
            this.bg = switchGradientDrawable;
            Drawable drawableMutate = context.getResources().getDrawable(C2573R.drawable.filled_forge).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.SRC_IN));
            switchGradientDrawable.setIcon(drawableMutate);
            setBackground(switchGradientDrawable);
            FrameLayout frameLayout = new FrameLayout(context);
            this.buttonsLayout = frameLayout;
            addView(frameLayout, LayoutHelper.createFrame(-1, 60, 55));
            ImageView imageView = new ImageView(context);
            this.helpButton = imageView;
            imageView.setImageResource(C2573R.drawable.outline_question_mark);
            imageView.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(24.0f), Theme.multAlpha(-1, 0.08f)));
            frameLayout.addView(imageView, LayoutHelper.createFrame(32, 32.0f, 51, 14.0f, 14.0f, 14.0f, 14.0f));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            ScaleStateListAnimator.apply(imageView);
            ImageView imageView2 = new ImageView(context);
            this.closeButton = imageView2;
            imageView2.setImageResource(C2573R.drawable.msg_close);
            imageView2.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(24.0f), Theme.multAlpha(-1, 0.08f)));
            frameLayout.addView(imageView2, LayoutHelper.createFrame(32, 32.0f, 53, 14.0f, 14.0f, 14.0f, 14.0f));
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
            ScaleStateListAnimator.apply(imageView2);
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTypeface(AndroidUtilities.bold());
            textView.setGravity(17);
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(-1);
            textView.setText(LocaleController.getString(C2573R.string.GiftCraftTitle));
            addView(textView, LayoutHelper.createFrame(-1, -2.0f, 49, 0.0f, 20.0f, 0.0f, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.precraftingLayout = frameLayout2;
            addView(frameLayout2, LayoutHelper.createFrame(-1, -1, 119));
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.craftingLayout = frameLayout3;
            frameLayout3.setAlpha(0.0f);
            addView(frameLayout3, LayoutHelper.createFrame(-1, -1, 119));
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.failedLayout = frameLayout4;
            frameLayout4.setAlpha(0.0f);
            addView(frameLayout4, LayoutHelper.createFrame(-1, -1, 119));
            SpoilersTextView spoilersTextView = new SpoilersTextView(context);
            this.textView = spoilersTextView;
            spoilersTextView.setGravity(17);
            spoilersTextView.setTextSize(1, 13.0f);
            spoilersTextView.setTextColor(-1);
            frameLayout2.addView(spoilersTextView, LayoutHelper.createFrame(-1, -2.0f, 49, 32.0f, 244.0f, 32.0f, 84.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            this.attributesLayoutLine1 = linearLayout;
            LayoutTransition layoutTransition = new LayoutTransition();
            layoutTransition.setDuration(2, 320L);
            layoutTransition.setDuration(3, 320L);
            layoutTransition.setDuration(0, 320L);
            layoutTransition.setDuration(1, 320L);
            layoutTransition.setDuration(4, 320L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            layoutTransition.setInterpolator(2, cubicBezierInterpolator);
            layoutTransition.setInterpolator(3, cubicBezierInterpolator);
            layoutTransition.setInterpolator(0, cubicBezierInterpolator);
            layoutTransition.setInterpolator(1, cubicBezierInterpolator);
            layoutTransition.setInterpolator(4, cubicBezierInterpolator);
            linearLayout.setLayoutTransition(layoutTransition);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(17);
            LinearLayout linearLayout2 = new LinearLayout(context);
            this.attributesLayoutLine2 = linearLayout2;
            LayoutTransition layoutTransition2 = new LayoutTransition();
            layoutTransition2.setDuration(2, 320L);
            layoutTransition2.setDuration(3, 320L);
            layoutTransition2.setDuration(0, 320L);
            layoutTransition2.setDuration(1, 320L);
            layoutTransition2.setDuration(4, 320L);
            layoutTransition2.setInterpolator(2, cubicBezierInterpolator);
            layoutTransition2.setInterpolator(3, cubicBezierInterpolator);
            layoutTransition2.setInterpolator(0, cubicBezierInterpolator);
            layoutTransition2.setInterpolator(1, cubicBezierInterpolator);
            layoutTransition2.setInterpolator(4, cubicBezierInterpolator);
            linearLayout2.setLayoutTransition(layoutTransition2);
            linearLayout2.setOrientation(0);
            linearLayout2.setAlpha(0.0f);
            linearLayout2.setGravity(17);
            this.backdropAttributes = new AttributeView[4];
            this.patternAttributes = new AttributeView[4];
            for (int i = 0; i < 4; i++) {
                LinearLayout linearLayout3 = this.attributesLayoutLine1;
                AttributeView[] attributeViewArr = this.backdropAttributes;
                AttributeView attributeView = new AttributeView(context);
                attributeViewArr[i] = attributeView;
                linearLayout3.addView(attributeView, LayoutHelper.createLinear(48, 54, 0.0f, 0.0f, 0.0f, 0.0f));
                this.backdropAttributes[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$2(view);
                    }
                });
            }
            for (int i2 = 0; i2 < 4; i2++) {
                LinearLayout linearLayout4 = this.attributesLayoutLine1;
                AttributeView[] attributeViewArr2 = this.patternAttributes;
                AttributeView attributeView2 = new AttributeView(context);
                attributeViewArr2[i2] = attributeView2;
                linearLayout4.addView(attributeView2, LayoutHelper.createLinear(48, 54, 0.0f, 0.0f, 0.0f, 0.0f));
                this.patternAttributes[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$3(view);
                    }
                });
            }
            this.gifts = new SelectGiftView[4];
            this.faces = new Face[6];
            int i3 = 0;
            while (true) {
                faceArr = this.faces;
                if (i3 >= 6) {
                    break;
                }
                faceArr[i3] = new Face(context, i3 == 5);
                i3++;
            }
            this.frontFace = faceArr[5];
            RaysView raysView = new RaysView(context);
            this.rays = raysView;
            raysView.setVisibility(8);
            raysView.setAlpha(0.0f);
            addView(raysView, LayoutHelper.createFrame(300, 300.0f, 49, 0.0f, 0.0f, 0.0f, 0.0f));
            Cube3D cube3D = new Cube3D(context, this.faces);
            this.cube = cube3D;
            addView(cube3D, LayoutHelper.createFrame(-1, 300.0f, 55, 0.0f, 0.0f, 0.0f, 0.0f));
            AnimatedEmojiSpan.TextViewEmojis textViewEmojis = new AnimatedEmojiSpan.TextViewEmojis(context);
            this.variantsButton = textViewEmojis;
            textViewEmojis.setTextSize(1, 12.0f);
            textViewEmojis.setTypeface(AndroidUtilities.bold());
            textViewEmojis.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2573R.string.GiftCraftViewAllVariants), false, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f)));
            textViewEmojis.setPadding(AndroidUtilities.dp(9.0f), 0, AndroidUtilities.dp(9.0f), 0);
            textViewEmojis.setGravity(17);
            textViewEmojis.setTextColor(-1);
            textViewEmojis.setAlpha(this.previewAttributes == null ? 0.25f : 1.0f);
            textViewEmojis.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(14.0f), Theme.multAlpha(-1, 0.08f)));
            ScaleStateListAnimator.apply(textViewEmojis, 0.02f, 1.2f);
            this.precraftingLayout.addView(textViewEmojis, LayoutHelper.createFrame(-2, 27.0f, 49, 32.0f, 412.0f, 32.0f, 84.0f));
            textViewEmojis.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$4(resourcesProvider, view);
                }
            });
            this.precraftingLayout.addView(this.attributesLayoutLine1, LayoutHelper.createFrame(-2, 54.0f, 49, 32.0f, 340.0f, 32.0f, 84.0f));
            this.precraftingLayout.addView(this.attributesLayoutLine2, LayoutHelper.createFrame(-2, 54.0f, 49, 32.0f, 394.0f, 32.0f, 84.0f));
            LinearLayout linearLayout5 = new LinearLayout(context);
            this.button = linearLayout5;
            linearLayout5.setOrientation(1);
            ButtonBackground buttonBackground = new ButtonBackground();
            this.buttonBackground = buttonBackground;
            linearLayout5.setBackground(buttonBackground);
            buttonBackground.setColor(Theme.multAlpha(-1, 0.08f), Theme.multAlpha(-1, 0.08f));
            ScaleStateListAnimator.apply(linearLayout5, 0.02f, 1.2f);
            addView(linearLayout5, LayoutHelper.createFrame(-1, -2.0f, 87, 20.0f, 0.0f, 20.0f, 18.0f));
            linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$5(view);
                }
            });
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.buttonTitle = animatedTextView;
            animatedTextView.setTypeface(AndroidUtilities.bold());
            animatedTextView.setGravity(17);
            animatedTextView.setTextColor(Theme.multAlpha(-1, 0.75f));
            animatedTextView.setText(LocaleController.getString(C2573R.string.GiftCraftButton));
            animatedTextView.setTextSize(AndroidUtilities.dp(14.0f));
            linearLayout5.addView(animatedTextView, LayoutHelper.createLinear(-1, 18, 55, 16.0f, 7.33f, 16.0f, 0.0f));
            AnimatedTextView animatedTextView2 = new AnimatedTextView(context);
            this.buttonSubtitle = animatedTextView2;
            animatedTextView2.getDrawable().setHacks(true, true, false);
            animatedTextView2.setGravity(17);
            animatedTextView2.setTextColor(Theme.multAlpha(-1, 0.75f));
            animatedTextView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftCraftSuccessChance, "0%")));
            animatedTextView2.setTextSize(AndroidUtilities.dp(12.0f));
            linearLayout5.addView(animatedTextView2, LayoutHelper.createLinear(-1, 14, 55, 16.0f, 2.66f, 16.0f, 7.66f));
            LinearLayout linearLayout6 = new LinearLayout(context);
            linearLayout6.setOrientation(0);
            linearLayout6.setGravity(17);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.craftingIconView = rLottieImageView;
            rLottieImageView.setAutoRepeat(true);
            rLottieImageView.setAnimation(C2573R.raw.gift_crafting, 30, 30);
            linearLayout6.addView(rLottieImageView, LayoutHelper.createLinear(30, 30, 17, 0, 0, 4, 0));
            TextView textView2 = new TextView(context);
            this.craftingTitleView = textView2;
            textView2.setTextSize(1, 20.0f);
            textView2.setTextColor(-1);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setGravity(17);
            textView2.setText(LocaleController.getString(C2573R.string.GiftCraftProgressTitle));
            linearLayout6.addView(textView2, LayoutHelper.createLinear(-2, -2, 17, 0, 0, 0, 0));
            this.craftingLayout.addView(linearLayout6, LayoutHelper.createFrame(-1, -2.0f, 49, 0.0f, 350.0f, 0.0f, 0.0f));
            TextView textView3 = new TextView(context);
            this.craftingSubtitleView = textView3;
            textView3.setTextSize(1, 13.0f);
            textView3.setTextColor(Theme.multAlpha(-1, 0.5f));
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setGravity(17);
            this.craftingLayout.addView(textView3, LayoutHelper.createFrame(-1, -2.0f, 49, 0.0f, 383.0f, 0.0f, 0.0f));
            TextView textView4 = new TextView(context);
            this.craftingChanceView = textView4;
            textView4.setTextSize(1, 13.0f);
            textView4.setTextColor(-1);
            textView4.setTypeface(AndroidUtilities.bold());
            textView4.setGravity(17);
            textView4.setPadding(AndroidUtilities.dp(9.0f), 0, AndroidUtilities.dp(9.0f), 0);
            textView4.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(14.0f), Theme.multAlpha(-1, 0.08f)));
            this.craftingLayout.addView(textView4, LayoutHelper.createFrame(-2, 27.0f, 81, 0.0f, 0.0f, 0.0f, 74.0f));
            TextView textView5 = new TextView(context);
            this.craftingFooterView = textView5;
            textView5.setTextSize(1, 13.0f);
            textView5.setTextColor(Theme.multAlpha(-1, 0.5f));
            textView5.setGravity(17);
            textView5.setText(LocaleController.getString(C2573R.string.GiftCraftProgressText));
            this.craftingLayout.addView(textView5, LayoutHelper.createFrame(-1, -2.0f, 81, 42.0f, 0.0f, 42.0f, 24.0f));
            TextView textView6 = new TextView(context);
            this.failedTitle = textView6;
            textView6.setText(LocaleController.getString(C2573R.string.GiftCraftFailedTitle));
            textView6.setTextColor(-505270);
            textView6.setTextSize(1, 20.0f);
            textView6.setTypeface(AndroidUtilities.bold());
            textView6.setGravity(17);
            this.failedLayout.addView(textView6, LayoutHelper.createFrame(-1, -2.0f, 55, 32.0f, 352.0f, 32.0f, 0.0f));
            TextView textView7 = new TextView(context);
            this.failedSubtitle = textView7;
            textView7.setTextColor(-17253);
            textView7.setTextSize(1, 13.0f);
            textView7.setGravity(17);
            this.failedLayout.addView(textView7, LayoutHelper.createFrame(-1, -2.0f, 55, 32.0f, 383.0f, 32.0f, 0.0f));
            LinearLayout linearLayout7 = new LinearLayout(context);
            this.failedGiftsLayout = linearLayout7;
            linearLayout7.setOrientation(0);
            this.failedLayout.addView(linearLayout7, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 250.0f, 0.0f, 0.0f));
            this.failedGifts = null;
            updateCounts();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.buttonsLayout.getAlpha() < 1.0f) {
                return;
            }
            this.onClose.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            if (this.buttonsLayout.getAlpha() < 1.0f) {
                return;
            }
            this.onClose.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(Theme.ResourcesProvider resourcesProvider, View view) {
            if (this.variantsButton.getAlpha() < 1.0f || this.crafting || this.failed || this.previewAttributes == null) {
                return;
            }
            new StarGiftPreviewSheet(getContext(), resourcesProvider, this.currentAccount, this.collectionTitle, this.previewAttributes, true).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(View view) {
            if (getAlpha() >= 1.0f && !this.crafting) {
                if (this.failed) {
                    setup();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (true) {
                    SelectGiftView[] selectGiftViewArr = this.gifts;
                    if (i >= selectGiftViewArr.length) {
                        break;
                    }
                    SelectGiftView selectGiftView = selectGiftViewArr[i];
                    if (selectGiftView != null && selectGiftView.getGift() != null) {
                        arrayList.add(this.gifts[i].getGift());
                    }
                    i++;
                }
                if (arrayList.isEmpty() || this.onCraft == null) {
                    AndroidUtilities.shakeViewSpring(this.button);
                } else {
                    playAnimation();
                }
            }
        }

        /* JADX INFO: renamed from: showHint, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void lambda$new$3(AttributeView attributeView) {
            if (attributeView.backdrop != null) {
                showHint(attributeView, AndroidUtilities.replaceTags(LocaleController.formatPluralString("GiftCraftBackdropChance", Math.round(attributeView.progress * 100.0f), attributeView.backdrop.name)));
            } else if (attributeView.pattern != null) {
                showHint(attributeView, AndroidUtilities.replaceTags(LocaleController.formatPluralString("GiftCraftSymbolChance", Math.round(attributeView.progress * 100.0f), attributeView.pattern.name)));
            }
        }

        public void showHint(View view, CharSequence charSequence) {
            HintView2 hintView2 = this.currentHint;
            if (hintView2 != null) {
                hintView2.hide();
                this.currentHint = null;
            }
            if (this.crafting || this.failed) {
                return;
            }
            View view2 = view.getParent() instanceof View ? (View) view.getParent() : null;
            float x = (view2 != null ? view2.getX() : 0.0f) + view.getX();
            float y = (view2 != null ? view2.getY() : 0.0f) + view.getY();
            HintView2 hintView22 = new HintView2(getContext(), 3);
            this.currentHint = hintView22;
            hintView22.setMultilineText(true);
            this.currentHint.setText(charSequence);
            HintView2 hintView23 = this.currentHint;
            hintView23.setMaxWidthPx(HintView2.cutInFancyHalf(hintView23.getText(), this.currentHint.getTextPaint()));
            this.currentHint.setTextAlign(Layout.Alignment.ALIGN_CENTER);
            this.currentHint.setPadding(AndroidUtilities.dp(2.0f), 0, AndroidUtilities.dp(2.0f), 0);
            addView(this.currentHint, LayoutHelper.createFrame(-1, 100.0f, 55, 0.0f, 0.0f, 0.0f, 0.0f));
            this.currentHint.setTranslationY(y - AndroidUtilities.dp(100.0f));
            this.currentHint.setJointPx(0.0f, (x + (view.getWidth() / 2.0f)) - AndroidUtilities.dp(2.0f));
            this.currentHint.show();
        }

        public void setup() {
            setup(this.currentAccount, this.giftId, this.document, this.collectionTitle);
        }

        public void setup(int i, final long j, TLRPC.Document document, String str) {
            this.currentAccount = i;
            this.giftId = j;
            this.document = document;
            this.collectionTitle = str;
            this.crafting = false;
            this.failed = false;
            int i2 = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i2 >= selectGiftViewArr.length) {
                    break;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i2];
                if (selectGiftView != null) {
                    AndroidUtilities.removeFromParent(selectGiftView);
                }
                i2++;
            }
            this.cube.reset();
            setupGiftButtons();
            updateCounts(false);
            this.crafting = false;
            this.precraftingLayout.animate().cancel();
            this.precraftingLayout.setAlpha(1.0f);
            this.button.animate().cancel();
            this.button.setAlpha(1.0f);
            this.craftingLayout.animate().cancel();
            this.craftingLayout.setAlpha(0.0f);
            this.failedLayout.animate().cancel();
            this.failedLayout.setAlpha(0.0f);
            this.buttonsLayout.animate().cancel();
            this.buttonsLayout.setAlpha(1.0f);
            this.variantsButton.setAlpha(this.attributesTwoLines ? 0.0f : this.previewAttributes != null ? 1.0f : 0.25f);
            this.rays.setVisibility(8);
            this.rays.setAlpha(0.0f);
            this.buttonTitle.setText(LocaleController.getString(C2573R.string.GiftCraftButton));
            this.buttonTitle.setTranslationY(0.0f);
            this.buttonSubtitle.setAlpha(1.0f);
            GiftAuctionController.getInstance(i).requestAuctionUpgrades(j, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setup$6(j, j, (ArrayList) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setup$6(long j, long j2, ArrayList arrayList) {
            if (j != j2) {
                return;
            }
            this.previewAttributes = arrayList;
            this.variantsButton.animate().alpha(this.attributesTwoLines ? 0.0f : this.previewAttributes != null ? 1.0f : 0.25f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(420L).start();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < arrayList.size(); i++) {
                if ((arrayList.get(i) instanceof TL_stars.starGiftAttributeModel) && !(((TL_stars.StarGiftAttribute) arrayList.get(i)).rarity instanceof TL_stars.TL_starGiftAttributeRarity)) {
                    arrayList2.add((TL_stars.starGiftAttributeModel) arrayList.get(i));
                    if (arrayList2.size() >= 3) {
                        break;
                    }
                }
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                spannableStringBuilder.append((CharSequence) "x");
                spannableStringBuilder.setSpan(new AnimatedEmojiSpan(((TL_stars.starGiftAttributeModel) obj).document, this.variantsButton.getPaint().getFontMetricsInt()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append((CharSequence) " ");
            }
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) " ");
            }
            spannableStringBuilder.append(AndroidUtilities.replaceArrows(LocaleController.getString(C2573R.string.GiftCraftViewAllVariants), false, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f)));
            this.variantsButton.setText(spannableStringBuilder);
        }

        private void setupGiftButtons() {
            SelectGiftView[] selectGiftViewArr = this.gifts;
            SelectGiftView selectGiftView = new SelectGiftView(getContext());
            int i = 0;
            selectGiftViewArr[0] = selectGiftView;
            addView(selectGiftView, LayoutHelper.createFrame(76, 76.0f, 49, -117.0f, 74.0f, 0.0f, 0.0f));
            SelectGiftView[] selectGiftViewArr2 = this.gifts;
            SelectGiftView selectGiftView2 = new SelectGiftView(getContext());
            selectGiftViewArr2[1] = selectGiftView2;
            addView(selectGiftView2, LayoutHelper.createFrame(76, 76.0f, 49, -117.0f, 149.0f, 0.0f, 0.0f));
            SelectGiftView[] selectGiftViewArr3 = this.gifts;
            SelectGiftView selectGiftView3 = new SelectGiftView(getContext());
            selectGiftViewArr3[2] = selectGiftView3;
            addView(selectGiftView3, LayoutHelper.createFrame(76, 76.0f, 49, 117.0f, 74.0f, 0.0f, 0.0f));
            SelectGiftView[] selectGiftViewArr4 = this.gifts;
            SelectGiftView selectGiftView4 = new SelectGiftView(getContext());
            selectGiftViewArr4[3] = selectGiftView4;
            addView(selectGiftView4, LayoutHelper.createFrame(76, 76.0f, 49, 117.0f, 149.0f, 0.0f, 0.0f));
            while (true) {
                SelectGiftView[] selectGiftViewArr5 = this.gifts;
                if (i >= selectGiftViewArr5.length) {
                    return;
                }
                ScaleStateListAnimator.apply(selectGiftViewArr5[i]);
                this.gifts[i].setClickable(true);
                this.gifts[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$setupGiftButtons$8(view);
                    }
                });
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setupGiftButtons$8(View view) {
            SelectGiftView selectGiftView;
            final SelectGiftView selectGiftView2 = (SelectGiftView) view;
            boolean z = true;
            if (selectGiftView2.getGift() != null && !selectGiftView2.isReplaceIcon) {
                selectGiftView2.setGift(null, true);
                updateCounts();
                return;
            }
            int i = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i < selectGiftViewArr.length && (selectGiftView = selectGiftViewArr[i]) != view) {
                    if (selectGiftView != null && selectGiftView.getGift() != null) {
                        z = false;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            this.onAddGift.run(new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$setupGiftButtons$7(selectGiftView2, (TL_stars.StarGift) obj);
                }
            }, Boolean.valueOf(z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setupGiftButtons$7(SelectGiftView selectGiftView, TL_stars.StarGift starGift) {
            selectGiftView.setGift(starGift, true);
            updateCounts();
        }

        private void updateGiftButtonIcons() {
            TL_stars.StarGift gift;
            if (this.gifts == null) {
                return;
            }
            int i = 0;
            boolean z = true;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i >= selectGiftViewArr.length) {
                    return;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i];
                if (selectGiftView != null && selectGiftView.getGift() != null) {
                    if (z) {
                        int i2 = i + 1;
                        while (true) {
                            SelectGiftView[] selectGiftViewArr2 = this.gifts;
                            if (i2 >= selectGiftViewArr2.length) {
                                gift = null;
                                break;
                            }
                            SelectGiftView selectGiftView2 = selectGiftViewArr2[i2];
                            if (selectGiftView2 != null && selectGiftView2.getGift() != null) {
                                gift = this.gifts[i2].getGift();
                                break;
                            }
                            i2++;
                        }
                        this.gifts[i].setReplaceIcon((gift == null || TextUtils.isEmpty(gift.gift_address)) ? false : true);
                    } else {
                        this.gifts[i].setReplaceIcon(false);
                    }
                    z = false;
                }
                i++;
            }
        }

        public void setOnAddGift(Utilities.Callback2<Utilities.Callback<TL_stars.StarGift>, Boolean> callback2) {
            this.onAddGift = callback2;
        }

        public void setOnCraft(Utilities.Callback3<ArrayList<TL_stars.StarGift>, Utilities.Callback2<TL_stars.StarGift, Runnable>, Runnable> callback3) {
            this.onCraft = callback3;
        }

        public void setOnClose(Runnable runnable) {
            this.onClose = runnable;
        }

        public void playAnimation() {
            this.crafting = true;
            int i = 0;
            this.failed = false;
            this.openCraftedGift = null;
            HintView2 hintView2 = this.currentHint;
            if (hintView2 != null) {
                hintView2.hide();
                this.currentHint = null;
            }
            this.craftingSubtitleView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.craftingChanceView.setText(LocaleController.formatString(C2573R.string.GiftCraftProgressSuccessChance, AffiliateProgramFragment.percents(getGiftsSuccessChance())));
            int i2 = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i2 >= selectGiftViewArr.length) {
                    break;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i2];
                if (selectGiftView != null) {
                    selectGiftView.setClickable(false);
                    if (this.gifts[i2].getGift() == null) {
                        this.gifts[i2].animate().alpha(0.0f).start();
                    }
                }
                i2++;
            }
            int i3 = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr2 = this.gifts;
                if (i3 < selectGiftViewArr2.length) {
                    SelectGiftView selectGiftView2 = selectGiftViewArr2[i3];
                    if (selectGiftView2 != null && selectGiftView2.getGift() != null) {
                        TL_stars.StarGift gift = this.gifts[i3].getGift();
                        this.craftingSubtitleView.setText(gift.title + " #" + LocaleController.formatNumber(gift.num, ','));
                        break;
                    }
                    i3++;
                } else {
                    break;
                }
            }
            this.precraftingLayout.animate().alpha(0.0f).start();
            this.button.animate().alpha(0.0f).start();
            this.craftingLayout.animate().alpha(1.0f).start();
            this.buttonsLayout.animate().alpha(0.25f).start();
            this.craftingIconView.playAnimation();
            final ArrayList<TL_stars.StarGift> arrayList = new ArrayList<>();
            while (true) {
                SelectGiftView[] selectGiftViewArr3 = this.gifts;
                if (i < selectGiftViewArr3.length) {
                    if (selectGiftViewArr3[i].getGift() != null) {
                        arrayList.add(this.gifts[i].getGift());
                    }
                    i++;
                } else {
                    this.onCraft.run(arrayList, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda8
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            this.f$0.lambda$playAnimation$12(arrayList, (TL_stars.StarGift) obj, (Runnable) obj2);
                        }
                    }, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$playAnimation$13();
                        }
                    });
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$playAnimation$12(final ArrayList arrayList, final TL_stars.StarGift starGift, final Runnable runnable) {
            int i;
            HintView2 hintView2 = this.currentHint;
            if (hintView2 != null) {
                hintView2.hide();
                this.currentHint = null;
            }
            this.crafted = true;
            this.failed = starGift == null;
            this.craftedGift = starGift;
            this.openCraftedGift = runnable;
            Cube3D.AnimSequence animSequence = new Cube3D.AnimSequence(this.cube);
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i2 >= selectGiftViewArr.length) {
                    break;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i2];
                if (selectGiftView != null && selectGiftView.getGift() != null) {
                    arrayList2.add(Integer.valueOf(i2));
                }
                i2++;
            }
            int size = arrayList2.size();
            SelectGiftView[] selectGiftViewArr2 = this.gifts;
            final int i3 = 4;
            int i4 = 40;
            if (size == 1) {
                animSequence.put(selectGiftViewArr2[((Integer) arrayList2.get(0)).intValue()], 5, 32).friction(false).fling(26.0f, -26.0f).delay(90).friction(true).delay(20);
            } else {
                int[] iArr = {5, 0, 2, 3, 4};
                SelectGiftView selectGiftView2 = selectGiftViewArr2[0];
                if (selectGiftView2 == null || selectGiftView2.getGift() == null) {
                    i = 0;
                } else {
                    animSequence.put(this.gifts[0], iArr[0], 32).fling(25.0f, -22.0f);
                    i = 1;
                }
                SelectGiftView selectGiftView3 = this.gifts[1];
                if (selectGiftView3 != null && selectGiftView3.getGift() != null) {
                    if (i > 0) {
                        animSequence.delay(42);
                    }
                    animSequence.put(this.gifts[1], iArr[i], 32).fling(25.0f, 31.0f);
                    i++;
                }
                SelectGiftView selectGiftView4 = this.gifts[2];
                if (selectGiftView4 != null && selectGiftView4.getGift() != null) {
                    if (i > 0) {
                        animSequence.delay(42);
                    }
                    animSequence.put(this.gifts[2], iArr[i], 32, 180.0f).fling(-36.0f, -36.0f);
                    i++;
                }
                SelectGiftView selectGiftView5 = this.gifts[3];
                if (selectGiftView5 != null && selectGiftView5.getGift() != null) {
                    if (i > 0) {
                        animSequence.delay(42);
                    }
                    animSequence.put(this.gifts[3], iArr[i], 32).fling(-31.0f, 31.0f);
                    i++;
                }
                animSequence.friction(false);
                animSequence.delay(40);
                animSequence.friction(true);
                animSequence.delay(40);
                i3 = iArr[i];
                i4 = 80;
            }
            animSequence.run(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$playAnimation$9(i3, starGift);
                }
            }).steerTo(i3, i4, -90.0f).start(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$playAnimation$11(starGift, arrayList, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$playAnimation$11(TL_stars.StarGift starGift, ArrayList arrayList, Runnable runnable) {
            this.crafting = false;
            if (starGift == null) {
                RLottieImageView rLottieImageView = this.brokenGiftImage;
                if (rLottieImageView != null) {
                    rLottieImageView.playAnimation();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            BotWebViewVibrationEffect.APP_ERROR.vibrate();
                        }
                    }, 750L);
                }
                this.precraftingLayout.animate().alpha(0.0f).start();
                this.failedLayout.animate().alpha(1.0f).start();
                this.button.animate().alpha(1.0f).start();
                this.craftingLayout.animate().alpha(0.0f).start();
                this.buttonsLayout.animate().alpha(1.0f).start();
                this.failedSubtitle.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("GiftCraftFailedText", arrayList.size(), new Object[0])));
                this.buttonTitle.setText(LocaleController.getString(C2573R.string.GiftCraftButtonFailed));
                this.buttonTitle.setTranslationY(AndroidUtilities.dp(6.0f));
                this.buttonSubtitle.setAlpha(0.0f);
                if (this.failedGifts != null) {
                    int i = 0;
                    while (true) {
                        GiftSheet.GiftCell[] giftCellArr = this.failedGifts;
                        if (i >= giftCellArr.length) {
                            break;
                        }
                        AndroidUtilities.removeFromParent(giftCellArr[i]);
                        i++;
                    }
                    this.failedGifts = null;
                }
                this.failedGifts = new GiftSheet.GiftCell[arrayList.size()];
                int i2 = 0;
                while (i2 < arrayList.size()) {
                    TL_stars.StarGift starGift2 = (TL_stars.StarGift) arrayList.get(i2);
                    GiftSheet.GiftCell giftCell = new GiftSheet.GiftCell(getContext(), this.currentAccount, this.resourcesProvider);
                    giftCell.setStarsGift(starGift2, false, false, false, false, true);
                    giftCell.chanceTextView.setVisibility(8);
                    giftCell.setRibbonColor(-3065286);
                    BackupImageView backupImageView = giftCell.imageView;
                    FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(42, 42, 17);
                    giftCell.imageViewLayoutParams = layoutParamsCreateFrame;
                    backupImageView.setLayoutParams(layoutParamsCreateFrame);
                    int i3 = i2 + 1;
                    boolean z = i3 >= arrayList.size();
                    LinearLayout linearLayout = this.failedGiftsLayout;
                    this.failedGifts[i2] = giftCell;
                    linearLayout.addView(giftCell, LayoutHelper.createLinear(74, 74, 0.0f, 51, 0, 0, z ? 0 : 6, 0));
                    i2 = i3;
                }
                return;
            }
            AndroidUtilities.runOnUIThread(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$playAnimation$13() {
            this.crafting = false;
            this.openCraftedGift = null;
            this.failed = false;
            setup();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX INFO: renamed from: setupFinishFace, reason: merged with bridge method [inline-methods] */
        public void lambda$playAnimation$9(int i, TL_stars.StarGift starGift) {
            if (starGift != null) {
                SelectGiftView selectGiftView = new SelectGiftView(getContext());
                selectGiftView.setGift(starGift, false);
                selectGiftView.setRotation(180.0f);
                this.cube.putView(i, selectGiftView);
                selectGiftView.setScaleX(0.5f);
                selectGiftView.setScaleY(0.5f);
                selectGiftView.setAlpha(0.0f);
                ViewPropertyAnimator duration = selectGiftView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(520L);
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                ViewPropertyAnimator interpolator = duration.setInterpolator(cubicBezierInterpolator);
                interpolator.setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$$ExternalSyntheticLambda13
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$setupFinishFace$14(valueAnimator);
                    }
                });
                interpolator.start();
                this.cube.faces[i].setVisibility(8);
                this.rays.setVisibility(0);
                this.rays.setAlpha(0.0f);
                this.rays.animate().alpha(0.5f).setDuration(820L).setInterpolator(cubicBezierInterpolator).start();
                return;
            }
            FrameLayout frameLayout = new FrameLayout(getContext());
            RLottieImageView rLottieImageView = new RLottieImageView(getContext());
            rLottieImageView.setAnimation(C2573R.raw.gift_broken, 32, 32);
            frameLayout.addView(rLottieImageView, LayoutHelper.createFrame(32, 32, 17));
            rLottieImageView.setScaleX(0.5f);
            rLottieImageView.setScaleY(0.5f);
            rLottieImageView.setAlpha(0.0f);
            rLottieImageView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).start();
            this.brokenGiftImage = rLottieImageView;
            frameLayout.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(12.0f), Theme.multAlpha(-1, 0.075f)));
            this.cube.faces[i].setVisibility(8);
            frameLayout.setRotation(180.0f);
            this.cube.putView(i, frameLayout);
            ButtonBackground buttonBackground = this.buttonBackground;
            int[] iArr = this.COLORS;
            buttonBackground.setColor(iArr[2], iArr[3]);
            SwitchGradientDrawable switchGradientDrawable = this.bg;
            int[] iArr2 = this.BACKGROUND_COLORS;
            switchGradientDrawable.setColors(iArr2[2], iArr2[3]);
            RaysView raysView = this.rays;
            int[] iArr3 = this.COLORS;
            raysView.setColor(iArr3[3], iArr3[2]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setupFinishFace$14(ValueAnimator valueAnimator) {
            this.cube.invalidate();
        }

        public void selectGift(TL_stars.StarGift starGift) {
            if (starGift == null) {
                return;
            }
            int i = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i >= selectGiftViewArr.length) {
                    break;
                }
                if (selectGiftViewArr[i].getGift() == null) {
                    this.gifts[i].setGift(starGift, true);
                    break;
                }
                i++;
            }
            updateCounts();
        }

        public void updateCounts() {
            updateCounts(true);
        }

        public void updateCounts(boolean z) {
            int giftsSelectedCount = getGiftsSelectedCount();
            this.frontFace.setChance(getGiftsSuccessChance() / 10.0f, z);
            if (giftsSelectedCount <= 0) {
                if (this.plus == null) {
                    this.plus = new SpannableStringBuilder("+");
                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2573R.drawable.filled_add_album);
                    coloredImageSpan.setScale(0.65f, 0.65f);
                    CharSequence charSequence = this.plus;
                    ((SpannableStringBuilder) charSequence).setSpan(coloredImageSpan, 0, charSequence.length(), 33);
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2573R.string.GiftCraftButtonEmpty));
                AndroidUtilities.replaceMultipleCharSequence("+", spannableStringBuilder, this.plus);
                this.buttonSubtitle.setText(spannableStringBuilder);
            } else {
                this.buttonSubtitle.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftCraftSuccessChance, AffiliateProgramFragment.percents(getGiftsSuccessChance()))));
            }
            int i = giftsSelectedCount == 0 ? 0 : giftsSelectedCount < 4 ? 1 : 2;
            ButtonBackground buttonBackground = this.buttonBackground;
            int[] iArr = this.COLORS;
            int i2 = i * 2;
            int i3 = i2 + 1;
            buttonBackground.setColor(iArr[i2], iArr[i3]);
            SwitchGradientDrawable switchGradientDrawable = this.bg;
            int[] iArr2 = this.BACKGROUND_COLORS;
            switchGradientDrawable.setColors(iArr2[i2], iArr2[i3]);
            RaysView raysView = this.rays;
            int[] iArr3 = this.COLORS;
            raysView.setColor(iArr3[i3], iArr3[i2]);
            if (this.document != null) {
                if (getFirstGift() != null) {
                    SpannableString spannableString = new SpannableString("x");
                    spannableString.setSpan(new AnimatedEmojiSpan(this.document, this.textView.getPaint().getFontMetricsInt()), 0, spannableString.length(), 33);
                    this.textView.setText(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.GiftCraftText1)), "\n", spannableString, " ", AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftCraftText2, this.collectionTitle, LocaleController.formatNumber(r1.num, ',')))));
                } else {
                    SpannableString spannableString2 = new SpannableString("x");
                    spannableString2.setSpan(new AnimatedEmojiSpan(this.document, this.textView.getPaint().getFontMetricsInt()), 0, spannableString2.length(), 33);
                    this.textView.setText(TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.GiftCraftTextEmpty1)), "\n", spannableString2, " ", AndroidUtilities.replaceTags(LocaleController.formatString(C2573R.string.GiftCraftTextEmpty2, this.collectionTitle))));
                }
            }
            updateAttributeFreq();
            updateGiftButtonIcons();
        }

        private void removeFromParent(View view) {
            if (view == null) {
                return;
            }
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
                boolean z = layoutTransition != null;
                if (z) {
                    layoutTransition.disableTransitionType(3);
                }
                viewGroup.removeView(view);
                if (z) {
                    layoutTransition.enableTransitionType(3);
                }
                view.animate().cancel();
                view.clearAnimation();
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                view.setTranslationZ(0.0f);
                view.setAlpha(0.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setRotation(0.0f);
                view.setRotationX(0.0f);
                view.setRotationY(0.0f);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void updateAttributeFreq() {
            int i;
            float f;
            TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop;
            boolean z;
            TL_stars.starGiftAttributePattern stargiftattributepattern;
            int[][] iArr = MessagesController.getInstance(this.currentAccount).stargiftsCraftAttributesPermilles;
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                i = 1;
                if (i3 >= selectGiftViewArr.length) {
                    break;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i3];
                if (selectGiftView != null && selectGiftView.getGift() != null) {
                    i4++;
                    TL_stars.StarGift gift = this.gifts[i3].getGift();
                    TL_stars.starGiftAttributePattern stargiftattributepattern2 = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(gift.attributes, TL_stars.starGiftAttributePattern.class);
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop2 = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(gift.attributes, TL_stars.starGiftAttributeBackdrop.class);
                    map.put(Integer.valueOf(stargiftattributebackdrop2.backdrop_id), Integer.valueOf(((Integer) map.getOrDefault(Integer.valueOf(stargiftattributebackdrop2.backdrop_id), 0)).intValue() + 1));
                    map2.put(Long.valueOf(stargiftattributepattern2.document.id), Integer.valueOf(((Integer) map2.getOrDefault(Long.valueOf(stargiftattributepattern2.document.id), 0)).intValue() + 1));
                }
                i3++;
            }
            int i5 = 4;
            if (map.isEmpty()) {
                AttributeView attributeView = this.backdropAttributes[0];
                attributeView.setBackdrop(null);
                attributeView.setProgress(0.0f, true);
                arrayList.add(attributeView);
                for (int i6 = 1; i6 < 4; i6++) {
                    this.backdropAttributes[i6].setVisibility(8);
                }
                f = 1000.0f;
            } else {
                ArrayList arrayList2 = new ArrayList(map.entrySet());
                Collections.sort(arrayList2, Map.Entry.comparingByValue());
                int size = arrayList2.size();
                int i7 = 0;
                int i8 = 0;
                f = 1000.0f;
                while (i7 < size) {
                    Object obj = arrayList2.get(i7);
                    i7++;
                    Map.Entry entry = (Map.Entry) obj;
                    int iIntValue = ((Integer) entry.getKey()).intValue();
                    int iIntValue2 = ((Integer) entry.getValue()).intValue();
                    int i9 = 0;
                    while (true) {
                        SelectGiftView[] selectGiftViewArr2 = this.gifts;
                        if (i9 >= selectGiftViewArr2.length) {
                            stargiftattributebackdrop = null;
                            break;
                        }
                        SelectGiftView selectGiftView2 = selectGiftViewArr2[i9];
                        if (selectGiftView2 != null && selectGiftView2.getGift() != null) {
                            stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(this.gifts[i9].getGift().attributes, TL_stars.starGiftAttributeBackdrop.class);
                            if (stargiftattributebackdrop.backdrop_id == iIntValue) {
                                break;
                            }
                        }
                        i9++;
                    }
                    if (stargiftattributebackdrop != null) {
                        AttributeView attributeView2 = this.backdropAttributes[i8];
                        attributeView2.setBackdrop(stargiftattributebackdrop);
                        int[] iArr2 = iArr[Utilities.clamp(i4 - 1, iArr.length - i, 0)];
                        attributeView2.setProgress(iArr2[Utilities.clamp(iIntValue2 - 1, iArr2.length - 1, 0)] / 1000.0f, i);
                        arrayList.add(attributeView2);
                        i8++;
                    }
                    i5 = 4;
                    i = 1;
                }
                int i10 = i8;
                for (int i11 = i5; i10 < i11; i11 = 4) {
                    this.backdropAttributes[i10].setVisibility(8);
                    i10++;
                }
            }
            if (map2.isEmpty()) {
                AttributeView attributeView3 = this.patternAttributes[0];
                attributeView3.setIcon(null);
                attributeView3.setProgress(0.0f, true);
                arrayList.add(attributeView3);
                for (int i12 = 1; i12 < 4; i12++) {
                    this.patternAttributes[i12].setVisibility(8);
                }
                z = true;
            } else {
                ArrayList arrayList3 = new ArrayList(map2.entrySet());
                Collections.sort(arrayList3, Map.Entry.comparingByValue());
                int size2 = arrayList3.size();
                int i13 = 0;
                int i14 = 0;
                while (i14 < size2) {
                    Object obj2 = arrayList3.get(i14);
                    i14++;
                    Map.Entry entry2 = (Map.Entry) obj2;
                    long jLongValue = ((Long) entry2.getKey()).longValue();
                    int iIntValue3 = ((Integer) entry2.getValue()).intValue();
                    int i15 = i2;
                    while (true) {
                        SelectGiftView[] selectGiftViewArr3 = this.gifts;
                        if (i15 >= selectGiftViewArr3.length) {
                            stargiftattributepattern = null;
                            break;
                        }
                        SelectGiftView selectGiftView3 = selectGiftViewArr3[i15];
                        if (selectGiftView3 != null && selectGiftView3.getGift() != null && (stargiftattributepattern = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(this.gifts[i15].getGift().attributes, TL_stars.starGiftAttributePattern.class)) != null && stargiftattributepattern.document.id == jLongValue) {
                            break;
                        } else {
                            i15++;
                        }
                    }
                    if (stargiftattributepattern != null) {
                        AttributeView attributeView4 = this.patternAttributes[i13];
                        attributeView4.setIcon(stargiftattributepattern);
                        int[] iArr3 = iArr[Utilities.clamp(i4 - 1, iArr.length - 1, 0)];
                        attributeView4.setProgress(iArr3[Utilities.clamp(iIntValue3 - 1, iArr3.length - 1, 0)] / f, true);
                        arrayList.add(attributeView4);
                        i13++;
                    }
                    i2 = 0;
                }
                z = true;
                while (i13 < 4) {
                    this.patternAttributes[i13].setVisibility(8);
                    i13++;
                }
            }
            if (arrayList.size() <= 5) {
                z = false;
            }
            this.attributesTwoLines = z;
            for (int i16 = 0; i16 < arrayList.size(); i16++) {
                AttributeView attributeView5 = (AttributeView) arrayList.get(i16);
                LinearLayout linearLayout = (!this.attributesTwoLines || ((float) i16) < ((float) arrayList.size()) / 2.0f) ? this.attributesLayoutLine1 : this.attributesLayoutLine2;
                if (attributeView5.getParent() != linearLayout) {
                    removeFromParent(attributeView5);
                    linearLayout.addView(attributeView5, LayoutHelper.createLinear(48, 54, 0.0f, 0.0f, 0.0f, 0.0f));
                }
                attributeView5.setVisibility(0);
            }
            this.attributesLayoutLine2.animate().alpha(this.attributesTwoLines ? 1.0f : 0.0f);
            this.variantsButton.animate().alpha(this.attributesTwoLines ? 0.0f : this.previewAttributes != null ? 1.0f : 0.25f);
        }

        public int getGiftsSelectedCount() {
            int i = 0;
            int i2 = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i >= selectGiftViewArr.length) {
                    return i2;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i];
                if (selectGiftView != null && selectGiftView.getGift() != null) {
                    i2++;
                }
                i++;
            }
        }

        public int getGiftsSuccessChance() {
            int i = 0;
            int i2 = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i >= selectGiftViewArr.length) {
                    return i2;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i];
                if (selectGiftView != null && selectGiftView.getGift() != null) {
                    i2 += this.gifts[i].getGift().craft_chance_permille;
                }
                i++;
            }
        }

        public TL_stars.StarGift getFirstGift() {
            int i = 0;
            while (true) {
                SelectGiftView[] selectGiftViewArr = this.gifts;
                if (i >= selectGiftViewArr.length) {
                    return null;
                }
                SelectGiftView selectGiftView = selectGiftViewArr[i];
                if (selectGiftView != null && selectGiftView.getGift() != null) {
                    return this.gifts[i].getGift();
                }
                i++;
            }
        }

        public final class SelectGiftView extends FrameLayout {
            private final TextView chance;
            private final ImageView closeIcon;
            private final FrameLayout closeLayout;
            public TL_stars.StarGift gift;
            private final GiftSheet.CardBackground giftBackground;
            private final BackupImageView giftImage;
            private final FrameLayout giftLayout;
            public boolean isReplaceIcon;
            private final FrameLayout layout;
            private final ImageView plus;
            public TL_stars.SavedStarGift savedGift;

            public SelectGiftView(Context context) {
                super(context);
                FrameLayout frameLayout = new FrameLayout(context);
                this.layout = frameLayout;
                addView(frameLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 6.0f, 6.0f, 6.0f, 6.0f));
                frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(18.0f), Theme.multAlpha(-4530177, 0.12f)));
                frameLayout.setForeground(new RoundRectStrokeDrawable(AndroidUtilities.dp(18.0f), 0));
                ImageView imageView = new ImageView(context);
                this.plus = imageView;
                imageView.setImageResource(C2573R.drawable.filled_add_album);
                imageView.setScaleX(1.25f);
                imageView.setScaleY(1.25f);
                frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 17));
                FrameLayout frameLayout2 = new FrameLayout(context);
                this.giftLayout = frameLayout2;
                GiftSheet.CardBackground cardBackground = new GiftSheet.CardBackground(frameLayout2, null, false);
                this.giftBackground = cardBackground;
                frameLayout2.setBackground(cardBackground);
                cardBackground.setRoundRadius(AndroidUtilities.dp(18.0f));
                cardBackground.setPadding(false);
                frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -1, 119));
                frameLayout2.setAlpha(0.0f);
                frameLayout2.setScaleX(0.6f);
                frameLayout2.setScaleY(0.6f);
                BackupImageView backupImageView = new BackupImageView(context);
                this.giftImage = backupImageView;
                frameLayout2.addView(backupImageView, LayoutHelper.createFrame(52, 52, 17));
                TextView textView = new TextView(context);
                this.chance = textView;
                textView.setPadding(AndroidUtilities.dp(5.0f), 0, AndroidUtilities.dp(5.0f), 0);
                textView.setGravity(17);
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextSize(1, 10.0f);
                textView.setTextColor(-1);
                textView.setAlpha(0.0f);
                addView(textView, LayoutHelper.createFrame(-2, 15.33f, 51, 2.0f, 0.0f, 2.0f, 0.0f));
                FrameLayout frameLayout3 = new FrameLayout(context);
                this.closeLayout = frameLayout3;
                frameLayout3.setAlpha(0.0f);
                addView(frameLayout3, LayoutHelper.createFrame(20, 20.0f, 53, 2.0f, 0.0f, 2.0f, 0.0f));
                ImageView imageView2 = new ImageView(context);
                this.closeIcon = imageView2;
                imageView2.setImageResource(C2573R.drawable.msg_close);
                imageView2.setScaleType(ImageView.ScaleType.CENTER);
                frameLayout3.addView(imageView2, LayoutHelper.createFrame(12, 12, 17));
                setGiftVisible(false, false);
            }

            public TL_stars.StarGift getGift() {
                TL_stars.StarGift starGift = this.gift;
                if (starGift != null) {
                    return starGift;
                }
                TL_stars.SavedStarGift savedStarGift = this.savedGift;
                if (savedStarGift != null) {
                    return savedStarGift.gift;
                }
                return null;
            }

            public void setReplaceIcon(boolean z) {
                this.closeIcon.setScaleX(0.8f);
                this.closeIcon.setScaleY(0.8f);
                ImageView imageView = this.closeIcon;
                this.isReplaceIcon = z;
                imageView.setImageResource(z ? C2573R.drawable.mini_replace2 : C2573R.drawable.msg_close);
            }

            public void setGift(TL_stars.StarGift starGift, boolean z) {
                this.gift = starGift;
                if (starGift != null) {
                    TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeBackdrop.class);
                    TL_stars.starGiftAttributePattern stargiftattributepattern = (TL_stars.starGiftAttributePattern) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributePattern.class);
                    TL_stars.starGiftAttributeModel stargiftattributemodel = (TL_stars.starGiftAttributeModel) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeModel.class);
                    this.giftBackground.setBackdrop(stargiftattributebackdrop);
                    this.giftBackground.setPattern(stargiftattributepattern);
                    StarsIntroActivity.setGiftImage(this.giftImage.getImageReceiver(), stargiftattributemodel.document, 52);
                    int iAdaptHSV = Theme.adaptHSV(Theme.multAlpha(stargiftattributebackdrop.edge_color | (-16777216), 0.88f), -0.05f, -0.15f);
                    this.chance.setText(AffiliateProgramFragment.percents(starGift.craft_chance_permille));
                    this.chance.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(10.0f), iAdaptHSV));
                    this.closeLayout.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(10.0f), iAdaptHSV));
                }
                setGiftVisible(starGift != null, z);
            }

            public void setHideButtons(float f) {
                float f2 = 1.0f - f;
                this.chance.setAlpha(f2);
                this.closeLayout.setAlpha(f2);
            }

            public void setGiftVisible(final boolean z, boolean z2) {
                this.giftLayout.animate().cancel();
                this.chance.animate().cancel();
                this.closeLayout.animate().cancel();
                FrameLayout frameLayout = this.giftLayout;
                if (!z2) {
                    frameLayout.setVisibility(z ? 0 : 8);
                    this.giftLayout.setScaleX(z ? 1.0f : 0.6f);
                    this.giftLayout.setScaleY(z ? 1.0f : 0.6f);
                    this.giftLayout.setAlpha(z ? 1.0f : 0.0f);
                    this.chance.setVisibility(z ? 0 : 8);
                    this.chance.setAlpha(z ? 1.0f : 0.0f);
                    this.closeLayout.setVisibility(z ? 0 : 8);
                    this.closeLayout.setAlpha(z ? 1.0f : 0.0f);
                    return;
                }
                frameLayout.setVisibility(0);
                ViewPropertyAnimator viewPropertyAnimatorAlpha = this.giftLayout.animate().scaleX(z ? 1.0f : 0.6f).scaleY(z ? 1.0f : 0.6f).alpha(z ? 1.0f : 0.0f);
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                viewPropertyAnimatorAlpha.setInterpolator(cubicBezierInterpolator).setDuration(420L).withEndAction(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$SelectGiftView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setGiftVisible$0(z);
                    }
                }).start();
                this.chance.setVisibility(0);
                this.chance.animate().alpha(z ? 1.0f : 0.0f).setInterpolator(cubicBezierInterpolator).setDuration(420L).withEndAction(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$SelectGiftView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setGiftVisible$1(z);
                    }
                }).start();
                this.closeLayout.setVisibility(0);
                this.closeLayout.animate().alpha(z ? 1.0f : 0.0f).setInterpolator(cubicBezierInterpolator).setDuration(420L).withEndAction(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$SelectGiftView$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setGiftVisible$2(z);
                    }
                }).start();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$setGiftVisible$0(boolean z) {
                if (z) {
                    return;
                }
                this.closeLayout.setVisibility(8);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$setGiftVisible$1(boolean z) {
                if (z) {
                    return;
                }
                this.closeLayout.setVisibility(8);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$setGiftVisible$2(boolean z) {
                if (z) {
                    return;
                }
                this.closeLayout.setVisibility(8);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(76.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(76.0f), TLObject.FLAG_30));
            }
        }

        public static class Face extends FrameLayout {
            private AnimatedTextView counter;
            private BackupImageView image;
            private FrameLayout layout;
            private ProgressView progress;

            public Face(Context context, boolean z) {
                super(context);
                FrameLayout frameLayout = new FrameLayout(context);
                this.layout = frameLayout;
                frameLayout.setBackground(new RoundRectStrokeDrawable(AndroidUtilities.dp(24.0f), Theme.multAlpha(-1, 0.08f)));
                addView(this.layout, LayoutHelper.createFrame(-1, -1.0f, 119, 2.0f, 2.0f, 2.0f, 2.0f));
                BackupImageView backupImageView = new BackupImageView(context);
                this.image = backupImageView;
                backupImageView.setImageResource(C2573R.drawable.large_forge);
                this.image.setAlpha(z ? 1.0f : 0.45f);
                this.layout.addView(this.image, LayoutHelper.createFrame(z ? 42 : 64, z ? 42 : 64, 17));
                if (z) {
                    this.image.setTranslationX(AndroidUtilities.dp(-4.0f));
                    ProgressView progressView = new ProgressView(context);
                    this.progress = progressView;
                    progressView.setRadius(AndroidUtilities.dp(37.0f));
                    this.progress.setStrokeWidth(AndroidUtilities.dpf2(4.66f));
                    this.layout.addView(this.progress, LayoutHelper.createFrame(90, 90, 17));
                    AnimatedTextView animatedTextView = new AnimatedTextView(context);
                    this.counter = animatedTextView;
                    animatedTextView.getDrawable().setHacks(false, true, true);
                    this.counter.setTypeface(AndroidUtilities.bold());
                    this.counter.setTextColor(-1);
                    this.counter.setTextSize(AndroidUtilities.dp(14.0f));
                    this.counter.setGravity(17);
                    this.counter.setText("0%");
                    this.layout.addView(this.counter, LayoutHelper.createFrame(-1, 16.0f, 55, 12.0f, 80.0f, 12.0f, 0.0f));
                }
            }

            public void setChance(float f, boolean z) {
                AnimatedTextView animatedTextView = this.counter;
                if (animatedTextView == null) {
                    return;
                }
                animatedTextView.setText(Math.round(f) + "%", z);
                this.progress.setProgress(f / 100.0f, z);
            }
        }

        public static class ProgressView extends View {
            private final AnimatedFloat animatedProgress;
            private final AnimatedFloat animatedProgressAlpha;
            private final Paint paint;
            private float progress;
            private float radius;

            public ProgressView(Context context) {
                super(context);
                Paint paint = new Paint(1);
                this.paint = paint;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$ProgressView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                };
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.animatedProgress = new AnimatedFloat(runnable, 0L, 420L, cubicBezierInterpolator);
                this.animatedProgressAlpha = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$ProgressView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidate();
                    }
                }, 0L, 420L, cubicBezierInterpolator);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeCap(Paint.Cap.ROUND);
                paint.setStrokeJoin(Paint.Join.ROUND);
            }

            public void setProgress(float f, boolean z) {
                this.progress = f;
                if (!z) {
                    this.animatedProgress.force(f);
                }
                invalidate();
            }

            public void setRadius(float f) {
                this.radius = f;
            }

            public void setStrokeWidth(float f) {
                this.paint.setStrokeWidth(f);
            }

            @Override // android.view.View
            public void dispatchDraw(Canvas canvas) {
                float f = this.animatedProgress.set(this.progress);
                float f2 = this.animatedProgressAlpha.set(this.progress > 0.0f);
                float width = getWidth() / 2.0f;
                float height = getHeight() / 2.0f;
                float f3 = this.radius;
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(width - f3, height - f3, width + f3, height + f3);
                this.paint.setColor(Theme.multAlpha(-1, 0.25f));
                canvas.drawArc(rectF, 135.0f, 270.0f, false, this.paint);
                if (f2 > 0.0f) {
                    this.paint.setColor(Theme.multAlpha(-1, f2));
                    canvas.drawArc(rectF, 135.0f, f * 270.0f, false, this.paint);
                }
            }
        }

        public static class RaysView extends View {
            private final Paint fillPaint;
            private RadialGradient[] gradient;
            private Matrix gradientMatrix;
            private int leftColor;
            private RadialGradient maskGradient;
            private final Paint maskPaint;
            private final Path path;
            private int rightColor;
            private final Paint strokePaint;
            private AnimatedFloat swapGradient;

            public RaysView(Context context) {
                super(context);
                this.fillPaint = new Paint(1);
                this.strokePaint = new Paint(1);
                Paint paint = new Paint(1);
                this.maskPaint = paint;
                this.gradient = new RadialGradient[2];
                this.gradientMatrix = new Matrix();
                this.swapGradient = new AnimatedFloat(1.0f, this, 0L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.maskGradient = new RadialGradient(0.0f, 0.0f, 100.0f, new int[]{0, -1, -1, 0}, new float[]{0.15f, 0.35f, 0.65f, 0.88f}, Shader.TileMode.CLAMP);
                this.path = new Path();
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            }

            public void setColor(int i, int i2) {
                if (this.leftColor == i && this.rightColor == i2) {
                    return;
                }
                RadialGradient[] radialGradientArr = this.gradient;
                radialGradientArr[0] = radialGradientArr[1];
                this.leftColor = i;
                this.rightColor = i2;
                radialGradientArr[1] = new RadialGradient(0.0f, 0.0f, 100.0f, new int[]{i, i2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                this.swapGradient.force(0.0f);
                invalidate();
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                float f = 1.0f;
                float f2 = this.swapGradient.set(1.0f);
                float fCurrentTimeMillis = ((System.currentTimeMillis() % 15000) / 15000.0f) * 360.0f;
                if (getAlpha() > 0.0f) {
                    invalidate();
                }
                this.strokePaint.setStyle(Paint.Style.STROKE);
                this.strokePaint.setStrokeWidth(AndroidUtilities.dp(2.0f));
                this.path.rewind();
                float width = getWidth() / 2.0f;
                float height = getHeight() / 2.0f;
                float fMin = Math.min(getWidth(), getHeight()) / 2.0f;
                int i = 0;
                int i2 = 0;
                while (i2 < 6) {
                    float f3 = (i2 * 60.0f) + 12.5f + fCurrentTimeMillis;
                    this.path.moveTo(width, height);
                    double d = ((double) ((f3 - 12.5f) / 180.0f)) * 3.141592653589793d;
                    this.path.lineTo((((float) Math.cos(d)) * fMin) + width, (((float) Math.sin(d)) * fMin) + height);
                    double d2 = ((double) ((f3 + 12.5f) / 180.0f)) * 3.141592653589793d;
                    this.path.lineTo((((float) Math.cos(d2)) * fMin) + width, (((float) Math.sin(d2)) * fMin) + height);
                    this.path.lineTo(width, height);
                    i2++;
                    f = f;
                }
                float f4 = f;
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                while (true) {
                    RadialGradient[] radialGradientArr = this.gradient;
                    if (i < radialGradientArr.length) {
                        if (radialGradientArr[i] != null) {
                            float fPow = (float) Math.pow(f4 - Math.abs(i - f2), 0.5d);
                            if (fPow > 0.0f) {
                                this.gradientMatrix.reset();
                                float f5 = fMin / 100.0f;
                                this.gradientMatrix.postScale(f5, f5);
                                this.gradientMatrix.postTranslate(width, height);
                                this.gradient[i].setLocalMatrix(this.gradientMatrix);
                                this.fillPaint.setShader(this.gradient[i]);
                                float f6 = fPow * 255.0f;
                                this.fillPaint.setAlpha((int) (0.3f * f6));
                                this.strokePaint.setShader(this.gradient[i]);
                                this.strokePaint.setAlpha((int) f6);
                                canvas.drawPath(this.path, this.fillPaint);
                                canvas.drawPath(this.path, this.strokePaint);
                            }
                        }
                        i++;
                    } else {
                        this.gradientMatrix.reset();
                        float f7 = fMin / 100.0f;
                        this.gradientMatrix.postScale(f7, f7);
                        this.gradientMatrix.postTranslate(width, height);
                        this.maskGradient.setLocalMatrix(this.gradientMatrix);
                        this.maskPaint.setShader(this.maskGradient);
                        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.maskPaint);
                        canvas.restore();
                        return;
                    }
                }
            }
        }

        public static class Cube3D extends FrameLayout {
            private final Matrix cameraMatrix;
            private final Integer[] drawOrder;
            private final float[] faceDepths;
            private final float[][] faceNormals;
            private final float[] faceRotations;
            private View[] faces;
            private final float friction;
            private boolean frictionEnabled;
            private final HashMap<Integer, RectF> index2Position;
            private final HashMap<Integer, Integer> index2face;
            private ValueAnimator pulling;
            private int pullingIndex;
            private float pullingT;
            private final float[] rotationMatrix;
            private AnimSequence sequence;
            private final float[] transformedNormal;
            private final Runnable updateRunnable;
            private final HashSet<Integer> usedFaces;
            private float vx;
            private float vy;

            public Cube3D(Context context, View[] viewArr) {
                super(context);
                this.cameraMatrix = new Matrix();
                float[] fArr = new float[16];
                this.rotationMatrix = fArr;
                this.vx = 0.0f;
                this.vy = 0.0f;
                this.friction = 0.96f;
                this.frictionEnabled = true;
                this.faceNormals = new float[][]{new float[]{-1.0f, 0.0f, 0.0f, 0.0f}, new float[]{1.0f, 0.0f, 0.0f, 0.0f}, new float[]{0.0f, 1.0f, 0.0f, 0.0f}, new float[]{0.0f, -1.0f, 0.0f, 0.0f}, new float[]{0.0f, 0.0f, -1.0f, 0.0f}, new float[]{0.0f, 0.0f, 1.0f, 0.0f}};
                this.transformedNormal = new float[4];
                this.faceDepths = new float[6];
                this.drawOrder = new Integer[]{0, 1, 2, 3, 4, 5};
                this.usedFaces = new HashSet<>();
                this.index2face = new HashMap<>();
                this.index2Position = new HashMap<>();
                this.faceRotations = new float[6];
                this.pullingIndex = -1;
                this.updateRunnable = new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$Cube3D$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$2();
                    }
                };
                setClipToOutline(false);
                setClipToPadding(false);
                android.opengl.Matrix.setIdentityM(fArr, 0);
                this.faces = viewArr;
                for (View view : viewArr) {
                    addView(view, LayoutHelper.createFrame(108, 108, 17));
                }
            }

            public int putView(int i, View view) {
                if (i == -1) {
                    i = 5;
                }
                AndroidUtilities.removeFromParent(view);
                int childCount = getChildCount();
                addView(view, LayoutHelper.createFrame(64, 64, 17));
                this.usedFaces.add(Integer.valueOf(i));
                this.index2face.put(Integer.valueOf(childCount), Integer.valueOf(i));
                return i;
            }

            public static class AnimSequence {
                private final Cube3D cube;
                private int framesRemaining;
                private Runnable onComplete;
                private float startVx;
                private float startVy;
                private int totalFrames;
                private final ArrayList<Cmd> commands = new ArrayList<>();
                private int currentIndex = 0;
                private boolean cancelled = false;
                private float[] startMatrix = new float[16];
                private float[] targetMatrix = new float[16];
                private boolean waitingForPull = false;

                public enum CmdType {
                    RUN,
                    FLING,
                    DELAY,
                    STEER,
                    PUT,
                    FRICTION
                }

                public AnimSequence(Cube3D cube3D) {
                    this.cube = cube3D;
                }

                public AnimSequence run(Runnable runnable) {
                    this.commands.add(new Cmd(CmdType.RUN, 0.0f, 0.0f, 0, -1, 0.0f, null, runnable));
                    return this;
                }

                public AnimSequence fling(float f, float f2) {
                    this.commands.add(new Cmd(CmdType.FLING, f, f2, 0, -1, 0.0f, null, null));
                    return this;
                }

                public AnimSequence delay(int i) {
                    this.commands.add(new Cmd(CmdType.DELAY, 0.0f, 0.0f, i, -1, 0.0f, null, null));
                    return this;
                }

                public AnimSequence steerTo(int i, int i2, float f) {
                    this.commands.add(new Cmd(CmdType.STEER, 0.0f, 0.0f, i2, i, f, null, null));
                    return this;
                }

                public AnimSequence put(View view, int i, int i2) {
                    return put(view, i, i2, 0.0f);
                }

                public AnimSequence put(View view, int i, int i2, float f) {
                    this.commands.add(new Cmd(CmdType.PUT, 0.0f, 0.0f, i2, i, f, view, null));
                    return this;
                }

                public AnimSequence friction(boolean z) {
                    this.commands.add(new Cmd(CmdType.FRICTION, z ? 1.0f : -1.0f, 0.0f, 0, -1, 0.0f, null, null));
                    return this;
                }

                public void start(Runnable runnable) {
                    this.onComplete = runnable;
                    int i = 0;
                    this.cancelled = false;
                    this.currentIndex = 0;
                    this.waitingForPull = false;
                    ArrayList<Cmd> arrayList = this.commands;
                    int size = arrayList.size();
                    while (i < size) {
                        Cmd cmd = arrayList.get(i);
                        i++;
                        Cmd cmd2 = cmd;
                        int i2 = cmd2.face;
                        if (i2 >= 0 && i2 < 6 && cmd2.rotation != 0.0f) {
                            this.cube.faceRotations[cmd2.face] = cmd2.rotation;
                        }
                    }
                    this.cube.sequence = this;
                    executeNext();
                }

                public void cancel() {
                    this.cancelled = true;
                    this.waitingForPull = false;
                    this.cube.sequence = null;
                }

                public void onPullComplete() {
                    if (this.waitingForPull) {
                        this.waitingForPull = false;
                        executeNext();
                    }
                }

                private void executeNext() {
                    Runnable runnable;
                    if (this.cancelled || this.currentIndex >= this.commands.size()) {
                        this.cube.sequence = null;
                        if (this.cancelled || (runnable = this.onComplete) == null) {
                            return;
                        }
                        runnable.run();
                        return;
                    }
                    Cmd cmd = this.commands.get(this.currentIndex);
                    this.currentIndex++;
                    switch (AnonymousClass17.f1043x1b3be5ed[cmd.type.ordinal()]) {
                        case 1:
                            Runnable runnable2 = cmd.runnable;
                            if (runnable2 != null) {
                                runnable2.run();
                            }
                            executeNext();
                            break;
                        case 2:
                            this.cube.fling(cmd.f1044x, cmd.f1045y);
                            this.framesRemaining = 1;
                            this.totalFrames = 1;
                            break;
                        case 3:
                            this.cube.frictionEnabled = cmd.f1044x > 0.0f;
                            executeNext();
                            break;
                        case 4:
                            int i = cmd.frames;
                            this.framesRemaining = i;
                            this.totalFrames = i;
                            break;
                        case 5:
                            System.arraycopy(this.cube.rotationMatrix, 0, this.startMatrix, 0, 16);
                            this.targetMatrix = this.cube.createFaceMatrix(cmd.face, cmd.rotation);
                            int i2 = cmd.frames;
                            this.totalFrames = i2;
                            this.framesRemaining = i2;
                            this.startVx = this.cube.vx;
                            this.startVy = this.cube.vy;
                            break;
                        case 6:
                            this.waitingForPull = true;
                            this.cube.doPull(cmd.view, cmd.face, cmd.frames);
                            break;
                    }
                }

                public void tick() {
                    int i;
                    if (this.cancelled || (i = this.currentIndex) == 0) {
                        return;
                    }
                    if (this.waitingForPull) {
                        this.cube.applyPhysics();
                        return;
                    }
                    int i2 = AnonymousClass17.f1043x1b3be5ed[this.commands.get(i - 1).type.ordinal()];
                    if (i2 == 2 || i2 == 4) {
                        this.cube.applyPhysics();
                        int i3 = this.framesRemaining - 1;
                        this.framesRemaining = i3;
                        if (i3 <= 0) {
                            executeNext();
                            return;
                        }
                        return;
                    }
                    if (i2 != 5) {
                        return;
                    }
                    float fEaseOutCubic = easeOutCubic(1.0f - (this.framesRemaining / this.totalFrames));
                    float f = 1.0f - fEaseOutCubic;
                    if (Math.abs(this.startVx * f) > 1.0E-4f || Math.abs(this.startVy * f) > 1.0E-4f) {
                        float[] fArr = new float[16];
                        Cube3D cube3D = this.cube;
                        float f2 = this.startVx * f;
                        Objects.requireNonNull(cube3D);
                        cube3D.axisAngleToMatrix(1.0f, 0.0f, 0.0f, f2 * 0.96f, fArr);
                        Cube3D cube3D2 = this.cube;
                        float[] fArr2 = this.startMatrix;
                        cube3D2.multiplyMatrix(fArr, fArr2, fArr2);
                        Cube3D cube3D3 = this.cube;
                        float f3 = this.startVy * f;
                        Objects.requireNonNull(cube3D3);
                        cube3D3.axisAngleToMatrix(0.0f, 1.0f, 0.0f, f3 * 0.96f, fArr);
                        Cube3D cube3D4 = this.cube;
                        float[] fArr3 = this.startMatrix;
                        cube3D4.multiplyMatrix(fArr, fArr3, fArr3);
                    }
                    Cube3D cube3D5 = this.cube;
                    cube3D5.lerpMatrix(this.startMatrix, this.targetMatrix, fEaseOutCubic, cube3D5.rotationMatrix);
                    int i4 = this.framesRemaining - 1;
                    this.framesRemaining = i4;
                    if (i4 <= 0) {
                        System.arraycopy(this.targetMatrix, 0, this.cube.rotationMatrix, 0, 16);
                        this.cube.vx = 0.0f;
                        this.cube.vy = 0.0f;
                        executeNext();
                    }
                }

                private float easeOutCubic(float f) {
                    return 1.0f - ((float) Math.pow(1.0f - f, 3.0d));
                }

                public static class Cmd {
                    final int face;
                    final int frames;
                    final float rotation;
                    final Runnable runnable;
                    final CmdType type;
                    final View view;

                    /* JADX INFO: renamed from: x */
                    final float f1044x;

                    /* JADX INFO: renamed from: y */
                    final float f1045y;

                    public Cmd(CmdType cmdType, float f, float f2, int i, int i2, float f3, View view, Runnable runnable) {
                        this.type = cmdType;
                        this.f1044x = f;
                        this.f1045y = f2;
                        this.frames = i;
                        this.face = i2;
                        this.rotation = f3;
                        this.view = view;
                        this.runnable = runnable;
                    }
                }
            }

            public void fling(float f, float f2) {
                this.vx += f2 * 0.01f;
                this.vy += f * 0.01f;
            }

            public void reset() {
                AnimSequence animSequence = this.sequence;
                if (animSequence != null) {
                    animSequence.cancel();
                    this.sequence = null;
                }
                ValueAnimator valueAnimator = this.pulling;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.pulling = null;
                }
                this.pullingIndex = -1;
                this.pullingT = 0.0f;
                this.usedFaces.clear();
                this.index2face.clear();
                this.index2Position.clear();
                for (int i = 0; i < 6; i++) {
                    this.faceRotations[i] = 0.0f;
                }
                removeAllViews();
                int i2 = 0;
                while (true) {
                    View[] viewArr = this.faces;
                    if (i2 < viewArr.length) {
                        viewArr[i2].setAlpha(1.0f);
                        this.faces[i2].setVisibility(0);
                        addView(this.faces[i2], LayoutHelper.createFrame(108, 108, 17));
                        i2++;
                    } else {
                        android.opengl.Matrix.setIdentityM(this.rotationMatrix, 0);
                        this.vy = 0.0f;
                        this.vx = 0.0f;
                        this.frictionEnabled = true;
                        return;
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void doPull(View view, int i, int i2) {
                ValueAnimator valueAnimator = this.pulling;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.pulling = null;
                }
                RectF rectF = new RectF();
                rectF.left = view.getX() - getX();
                rectF.top = view.getY() - getY();
                rectF.right = rectF.left + view.getWidth();
                rectF.bottom = rectF.top + view.getHeight();
                AndroidUtilities.removeFromParent(view);
                int childCount = getChildCount();
                addView(view, LayoutHelper.createFrame(64, 64, 17));
                this.usedFaces.add(Integer.valueOf(i));
                this.index2face.put(Integer.valueOf(childCount), Integer.valueOf(i));
                this.index2Position.put(Integer.valueOf(childCount), rectF);
                this.pullingIndex = childCount;
                this.pullingT = 0.0f;
                long j = ((long) i2) * 16;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.pulling = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$Cube3D$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$doPull$0(valueAnimator2);
                    }
                });
                this.pulling.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stars.StarGiftSheet.CraftTopView.Cube3D.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Cube3D.this.pullingT = 1.0f;
                        Cube3D.this.pullingIndex = -1;
                        if (Cube3D.this.sequence != null && Cube3D.this.sequence.waitingForPull) {
                            Cube3D.this.sequence.onPullComplete();
                        }
                        Cube3D.this.pulling = null;
                    }
                });
                this.pulling.setDuration(j);
                this.pulling.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.pulling.start();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$doPull$0(ValueAnimator valueAnimator) {
                AnimSequence animSequence;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                this.pullingT = fFloatValue;
                if (fFloatValue >= 0.8f && (animSequence = this.sequence) != null && animSequence.waitingForPull) {
                    this.sequence.onPullComplete();
                }
                invalidate();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public float[] createFaceMatrix(int i, float f) {
                float[] fArr = new float[16];
                android.opengl.Matrix.setIdentityM(fArr, 0);
                if (f != 0.0f) {
                    android.opengl.Matrix.rotateM(fArr, 0, -f, 0.0f, 0.0f, 1.0f);
                }
                if (i == 0) {
                    android.opengl.Matrix.rotateM(fArr, 0, 90.0f, 0.0f, 1.0f, 0.0f);
                    return fArr;
                }
                if (i == 1) {
                    android.opengl.Matrix.rotateM(fArr, 0, -90.0f, 0.0f, 1.0f, 0.0f);
                    return fArr;
                }
                if (i == 2) {
                    android.opengl.Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
                    return fArr;
                }
                if (i == 3) {
                    android.opengl.Matrix.rotateM(fArr, 0, -90.0f, 1.0f, 0.0f, 0.0f);
                    return fArr;
                }
                if (i != 4) {
                    return fArr;
                }
                android.opengl.Matrix.rotateM(fArr, 0, 180.0f, 0.0f, 1.0f, 0.0f);
                return fArr;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void axisAngleToMatrix(float f, float f2, float f3, float f4, float[] fArr) {
                double d = f4;
                float fCos = (float) Math.cos(d);
                float fSin = (float) Math.sin(d);
                float f5 = 1.0f - fCos;
                float f6 = f5 * f;
                fArr[0] = (f6 * f) + fCos;
                float f7 = f6 * f2;
                float f8 = fSin * f3;
                fArr[4] = f7 - f8;
                float f9 = f6 * f3;
                float f10 = fSin * f2;
                fArr[8] = f9 + f10;
                fArr[12] = 0.0f;
                fArr[1] = f7 + f8;
                float f11 = f5 * f2;
                fArr[5] = (f2 * f11) + fCos;
                float f12 = f11 * f3;
                float f13 = fSin * f;
                fArr[9] = f12 - f13;
                fArr[13] = 0.0f;
                fArr[2] = f9 - f10;
                fArr[6] = f12 + f13;
                fArr[10] = (f5 * f3 * f3) + fCos;
                fArr[14] = 0.0f;
                fArr[3] = 0.0f;
                fArr[7] = 0.0f;
                fArr[11] = 0.0f;
                fArr[15] = 1.0f;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void multiplyMatrix(float[] fArr, float[] fArr2, float[] fArr3) {
                float[] fArr4 = new float[16];
                android.opengl.Matrix.multiplyMM(fArr4, 0, fArr, 0, fArr2, 0);
                System.arraycopy(fArr4, 0, fArr3, 0, 16);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void lerpMatrix(float[] fArr, float[] fArr2, float f, float[] fArr3) {
                for (int i = 0; i < 16; i++) {
                    float f2 = fArr[i];
                    fArr3[i] = f2 + ((fArr2[i] - f2) * f);
                }
                orthonormalize(fArr3);
            }

            private void orthonormalize(float[] fArr) {
                float[] fArr2 = {fArr[0], fArr[1], fArr[2]};
                float[] fArr3 = {fArr[4], fArr[5], fArr[6]};
                float[] fArr4 = new float[3];
                normalize(fArr2);
                cross(fArr2, fArr3, fArr4);
                normalize(fArr4);
                cross(fArr4, fArr2, fArr3);
                fArr[0] = fArr2[0];
                fArr[1] = fArr2[1];
                fArr[2] = fArr2[2];
                fArr[4] = fArr3[0];
                fArr[5] = fArr3[1];
                fArr[6] = fArr3[2];
                fArr[8] = fArr4[0];
                fArr[9] = fArr4[1];
                fArr[10] = fArr4[2];
            }

            private void normalize(float[] fArr) {
                float f = fArr[0];
                float f2 = fArr[1];
                float f3 = fArr[2];
                float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3));
                if (fSqrt > 0.0f) {
                    fArr[0] = fArr[0] / fSqrt;
                    fArr[1] = fArr[1] / fSqrt;
                    fArr[2] = fArr[2] / fSqrt;
                }
            }

            private void cross(float[] fArr, float[] fArr2, float[] fArr3) {
                float f = fArr[1];
                float f2 = fArr2[2];
                float f3 = fArr[2];
                fArr3[0] = (f * f2) - (fArr2[1] * f3);
                float f4 = fArr2[0];
                float f5 = fArr[0];
                fArr3[1] = (f3 * f4) - (f2 * f5);
                fArr3[2] = (f5 * fArr2[1]) - (fArr[1] * f4);
            }

            private void getFaceBasis(int i, float[] fArr, float[] fArr2, float[] fArr3) {
                System.arraycopy(this.faceNormals[i], 0, fArr, 0, 4);
                if (i == 0) {
                    fArr2[0] = 0.0f;
                    fArr2[1] = 0.0f;
                    fArr2[2] = 1.0f;
                    fArr3[0] = 0.0f;
                    fArr3[1] = -1.0f;
                    fArr3[2] = 0.0f;
                } else if (i == 1) {
                    fArr2[0] = 0.0f;
                    fArr2[1] = 0.0f;
                    fArr2[2] = -1.0f;
                    fArr3[0] = 0.0f;
                    fArr3[1] = -1.0f;
                    fArr3[2] = 0.0f;
                } else if (i == 2) {
                    fArr2[0] = 1.0f;
                    fArr2[1] = 0.0f;
                    fArr2[2] = 0.0f;
                    fArr3[0] = 0.0f;
                    fArr3[1] = 0.0f;
                    fArr3[2] = 1.0f;
                } else if (i == 3) {
                    fArr2[0] = 1.0f;
                    fArr2[1] = 0.0f;
                    fArr2[2] = 0.0f;
                    fArr3[0] = 0.0f;
                    fArr3[1] = 0.0f;
                    fArr3[2] = -1.0f;
                } else if (i == 4) {
                    fArr2[0] = -1.0f;
                    fArr2[1] = 0.0f;
                    fArr2[2] = 0.0f;
                    fArr3[0] = 0.0f;
                    fArr3[1] = -1.0f;
                    fArr3[2] = 0.0f;
                } else if (i == 5) {
                    fArr2[0] = 1.0f;
                    fArr2[1] = 0.0f;
                    fArr2[2] = 0.0f;
                    fArr3[0] = 0.0f;
                    fArr3[1] = -1.0f;
                    fArr3[2] = 0.0f;
                }
                fArr2[3] = 0.0f;
                fArr3[3] = 0.0f;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void applyPhysics() {
                if (Math.abs(this.vx) > 1.0E-4f || Math.abs(this.vy) > 1.0E-4f) {
                    float[] fArr = new float[16];
                    axisAngleToMatrix(1.0f, 0.0f, 0.0f, this.vx, fArr);
                    float[] fArr2 = this.rotationMatrix;
                    multiplyMatrix(fArr, fArr2, fArr2);
                    axisAngleToMatrix(0.0f, 1.0f, 0.0f, this.vy, fArr);
                    float[] fArr3 = this.rotationMatrix;
                    multiplyMatrix(fArr, fArr3, fArr3);
                    if (this.frictionEnabled) {
                        this.vx *= 0.96f;
                        this.vy *= 0.96f;
                    }
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                AndroidUtilities.runOnUIThread(this.updateRunnable, 16L);
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0031 A[LOOP:0: B:18:0x0031->B:20:0x0034, LOOP_START, PHI: r2
  0x0031: PHI (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:17:0x002f, B:20:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0061  */
            /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
            /* JADX INFO: renamed from: update, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void lambda$new$2() {
                boolean z;
                AnimSequence animSequence = this.sequence;
                if (animSequence != null) {
                    animSequence.tick();
                } else if (Math.abs(this.vx) > 1.0E-4f || Math.abs(this.vy) > 1.0E-4f) {
                    applyPhysics();
                } else {
                    z = false;
                    if (this.pulling == null ? z : true) {
                        for (int i = 0; i < 6; i++) {
                            android.opengl.Matrix.multiplyMV(this.transformedNormal, 0, this.rotationMatrix, 0, this.faceNormals[i], 0);
                            this.faceDepths[i] = this.transformedNormal[2];
                        }
                        Arrays.sort(this.drawOrder, new Comparator() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$Cube3D$$ExternalSyntheticLambda2
                            @Override // java.util.Comparator
                            public final int compare(Object obj, Object obj2) {
                                return this.f$0.lambda$update$3((Integer) obj, (Integer) obj2);
                            }
                        });
                        invalidate();
                    }
                    if (isAttachedToWindow()) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(this.updateRunnable, 16L);
                    return;
                }
                z = true;
                if (this.pulling == null ? z : true) {
                }
                if (isAttachedToWindow()) {
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ int lambda$update$3(Integer num, Integer num2) {
                return Float.compare(this.faceDepths[num.intValue()], this.faceDepths[num2.intValue()]);
            }

            @Override // android.view.ViewGroup
            public int getChildDrawingOrder(int i, int i2) {
                if (i2 < 6) {
                    Integer[] numArr = this.drawOrder;
                    if (i2 < numArr.length) {
                        return numArr[i2].intValue();
                    }
                }
                return i2;
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                RectF rectF;
                boolean z;
                boolean z2;
                float fDp;
                float f;
                int i;
                int i2;
                int iIndexOfChild = indexOfChild(view);
                if (iIndexOfChild >= 6) {
                    z = this.pullingIndex == iIndexOfChild;
                    rectF = this.index2Position.get(Integer.valueOf(iIndexOfChild));
                    Integer num = this.index2face.get(Integer.valueOf(iIndexOfChild));
                    if (num != null) {
                        iIndexOfChild = num.intValue();
                    }
                    if (view instanceof SelectGiftView) {
                        ((SelectGiftView) view).setHideButtons(z ? this.pullingT : 1.0f);
                        if (!z || this.pullingT >= 1.0f) {
                            this.faces[iIndexOfChild].setVisibility(8);
                        }
                    }
                    z2 = true;
                } else {
                    rectF = null;
                    z = false;
                    z2 = false;
                }
                android.opengl.Matrix.multiplyMV(this.transformedNormal, 0, this.rotationMatrix, 0, this.faceNormals[iIndexOfChild], 0);
                float f2 = this.transformedNormal[2];
                if (f2 < 0.001f) {
                    return false;
                }
                view.setAlpha(Math.min(1.0f, f2 / 0.3f));
                float width = view.getWidth() / 2.0f;
                if (z2 && (view instanceof SelectGiftView)) {
                    fDp = AndroidUtilities.dp(-6.0f) + ((z ? this.pullingT : 1.0f) * AndroidUtilities.dp(2.0f));
                } else {
                    fDp = 0.0f;
                }
                float fDp2 = AndroidUtilities.dp(108.0f) / 2.0f;
                float width2 = getWidth() / 2.0f;
                float height = getHeight() / 2.0f;
                float[] fArr = new float[4];
                float[] fArr2 = new float[4];
                float[] fArr3 = new float[4];
                getFaceBasis(iIndexOfChild, fArr, fArr2, fArr3);
                int i3 = 1;
                float f3 = this.faceRotations[iIndexOfChild];
                if (f3 != 0.0f) {
                    double radians = (float) Math.toRadians(f3);
                    i = 2;
                    float fCos = (float) Math.cos(radians);
                    float fSin = (float) Math.sin(radians);
                    float f4 = fArr2[0];
                    float f5 = fArr3[0];
                    float f6 = fArr2[1];
                    float f7 = fArr3[1];
                    f = height;
                    float f8 = fArr2[2];
                    float f9 = fArr3[2];
                    fArr2[0] = (f4 * fCos) + (f5 * fSin);
                    fArr2[1] = (f6 * fCos) + (f7 * fSin);
                    fArr2[2] = (f8 * fCos) + (f9 * fSin);
                    fArr3[0] = ((-f4) * fSin) + (f5 * fCos);
                    fArr3[1] = ((-f6) * fSin) + (f7 * fCos);
                    fArr3[2] = ((-f8) * fSin) + (f9 * fCos);
                    i2 = 4;
                } else {
                    f = height;
                    i = 2;
                    i2 = 4;
                }
                float[] fArr4 = new float[i2];
                float[] fArr5 = new float[i2];
                float[] fArr6 = new float[i2];
                android.opengl.Matrix.multiplyMV(fArr4, 0, this.rotationMatrix, 0, fArr, 0);
                android.opengl.Matrix.multiplyMV(fArr5, 0, this.rotationMatrix, 0, fArr2, 0);
                android.opengl.Matrix.multiplyMV(fArr6, 0, this.rotationMatrix, 0, fArr3, 0);
                float f10 = 64.0f * fDp2;
                int i4 = i;
                int[] iArr = new int[i4];
                iArr[1] = 3;
                int i5 = 4;
                iArr[0] = 4;
                float[][] fArr7 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, iArr);
                int i6 = 0;
                while (i6 < i5) {
                    float f11 = -1.0f;
                    int i7 = i3;
                    float f12 = (i6 == i7 || i6 == i4) ? 1.0f : -1.0f;
                    if (i6 == 0 || i6 == i7) {
                        f11 = 1.0f;
                    }
                    float[] fArr8 = fArr7[i6];
                    fArr8[0] = (fArr4[0] + (fArr5[0] * f12) + (fArr6[0] * f11)) * fDp2;
                    fArr8[1] = (fArr4[1] + (fArr5[1] * f12) + (fArr6[1] * f11)) * fDp2;
                    i4 = 2;
                    fArr8[2] = (fArr4[2] + (fArr5[2] * f12) + (fArr6[2] * f11)) * fDp2;
                    i6++;
                    i5 = 4;
                    i3 = 1;
                }
                float[] fArr9 = new float[8];
                int i8 = 0;
                while (i8 < 4) {
                    float[] fArr10 = fArr7[i8];
                    float f13 = f10 / (f10 - fArr10[i4]);
                    int i9 = i8 * 2;
                    fArr9[i9] = (fArr10[0] * f13) + width2;
                    fArr9[i9 + 1] = f + (fArr10[1] * f13);
                    i8++;
                    i4 = 2;
                }
                float f14 = (width2 - width) - fDp;
                float f15 = (f - width) - fDp;
                float f16 = width2 + width + fDp;
                float f17 = f + width + fDp;
                float[] fArr11 = {f14, f15, f16, f15, f16, f17, f14, f17};
                if (z && rectF != null) {
                    float f18 = rectF.left;
                    float f19 = rectF.top;
                    float f20 = rectF.right;
                    float f21 = rectF.bottom;
                    AndroidUtilities.lerp(new float[]{f18, f19, f20, f19, f20, f21, f18, f21}, fArr9, this.pullingT, fArr9);
                }
                this.cameraMatrix.reset();
                this.cameraMatrix.setPolyToPoly(fArr11, 0, fArr9, 0, 4);
                canvas.save();
                canvas.concat(this.cameraMatrix);
                boolean zDrawChild = super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild;
            }
        }

        public static class AttributeView extends FrameLayout {
            public TL_stars.starGiftAttributeBackdrop backdrop;
            private final BackupImageView imageView;
            public TL_stars.starGiftAttributePattern pattern;
            public float progress;
            private final ProgressView progressView;
            private final AnimatedTextView textView;

            public AttributeView(Context context) {
                super(context);
                BackupImageView backupImageView = new BackupImageView(context);
                this.imageView = backupImageView;
                backupImageView.setRoundRadius(AndroidUtilities.dp(13.0f));
                addView(backupImageView, LayoutHelper.createFrame(26, 26.0f, 49, 0.0f, 11.33f, 0.0f, 0.0f));
                ProgressView progressView = new ProgressView(context);
                this.progressView = progressView;
                progressView.setRadius(AndroidUtilities.dp(18.0f));
                progressView.setStrokeWidth(AndroidUtilities.dp(3.0f));
                addView(progressView, LayoutHelper.createFrame(48, 48.0f, 49, 0.0f, 0.66f, 0.0f, 0.0f));
                AnimatedTextView animatedTextView = new AnimatedTextView(context);
                this.textView = animatedTextView;
                animatedTextView.setTypeface(AndroidUtilities.bold());
                animatedTextView.setGravity(17);
                animatedTextView.setTextSize(AndroidUtilities.dp(12.0f));
                animatedTextView.setTextColor(-1);
                addView(animatedTextView, LayoutHelper.createFrame(-1, 14.0f, 48, 0.0f, 39.0f, 0.0f, 0.0f));
                setProgress(0.0f, false);
                ScaleStateListAnimator.apply(this);
            }

            public void setBackdrop(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop) {
                this.backdrop = stargiftattributebackdrop;
                this.pattern = null;
                this.imageView.setScaleX(1.0f);
                this.imageView.setScaleY(1.0f);
                BackupImageView backupImageView = this.imageView;
                if (stargiftattributebackdrop != null) {
                    backupImageView.setAlpha(1.0f);
                    OvalShape ovalShape = new OvalShape();
                    ovalShape.resize(AndroidUtilities.dp(26.0f), AndroidUtilities.dp(26.0f));
                    ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
                    shapeDrawable.setIntrinsicWidth(AndroidUtilities.dp(26.0f));
                    shapeDrawable.setIntrinsicHeight(AndroidUtilities.dp(26.0f));
                    shapeDrawable.getPaint().setShader(new RadialGradient(AndroidUtilities.dp(13.0f), AndroidUtilities.dp(13.0f), AndroidUtilities.dp(13.0f), new int[]{stargiftattributebackdrop.center_color | (-16777216), stargiftattributebackdrop.edge_color | (-16777216)}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
                    this.imageView.setImageDrawable(shapeDrawable);
                    return;
                }
                backupImageView.setAlpha(1.0f);
                this.imageView.setImageDrawable(Theme.createCircleDrawable(AndroidUtilities.dp(26.0f), Theme.multAlpha(-1, 0.25f)));
            }

            public void setIcon(TL_stars.starGiftAttributePattern stargiftattributepattern) {
                this.backdrop = null;
                this.pattern = stargiftattributepattern;
                BackupImageView backupImageView = this.imageView;
                if (stargiftattributepattern == null) {
                    backupImageView.setAlpha(0.25f);
                    this.imageView.setScaleX(0.75f);
                    this.imageView.setScaleY(0.75f);
                    this.imageView.setTranslationY(0.0f);
                    this.imageView.setAnimatedEmojiDrawable(null);
                    this.imageView.setImageResource(C2573R.drawable.mini_roll);
                    return;
                }
                backupImageView.setAlpha(1.0f);
                this.imageView.setScaleX(0.95f);
                this.imageView.setScaleY(0.95f);
                this.imageView.setTranslationY(AndroidUtilities.dp(2.0f));
                AnimatedEmojiDrawable animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(UserConfig.selectedAccount, 9, stargiftattributepattern.document);
                animatedEmojiDrawableMake.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                this.imageView.setAnimatedEmojiDrawable(animatedEmojiDrawableMake);
            }

            public void setProgress(float f, boolean z) {
                this.progress = f;
                this.progressView.setProgress(f, z);
                this.textView.setText(Math.round(f * 100.0f) + "%", z);
            }
        }

        public static class SwitchGradientDrawable extends Drawable {
            private int color1;
            private int color2;
            private Drawable icon;
            private final int type;
            private final Paint paint = new Paint(1);
            private Shader[] gradient = new Shader[2];
            private Matrix gradientMatrix = new Matrix();
            private AnimatedFloat swapGradient = new AnimatedFloat(1.0f, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$SwitchGradientDrawable$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidateSelf();
                }
            }, 0, 420, CubicBezierInterpolator.EASE_OUT_QUINT);
            private final RectF rect = new RectF();

            /* JADX INFO: renamed from: r */
            private float f1046r = 0.0f;

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

            public SwitchGradientDrawable(int i) {
                this.type = i;
            }

            public void setColors(int i, int i2) {
                if (this.color1 == i && this.color2 == i2) {
                    return;
                }
                Shader[] shaderArr = this.gradient;
                shaderArr[0] = shaderArr[1];
                if (this.type == 0) {
                    this.color1 = i;
                    this.color2 = i2;
                    shaderArr[1] = new LinearGradient(0.0f, 0.0f, 100.0f, 0.0f, new int[]{i, i2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                } else {
                    float fDp = AndroidUtilities.dp(340.0f);
                    this.color1 = i;
                    this.color2 = i2;
                    shaderArr[1] = new RadialGradient(0.0f, 0.0f, fDp, new int[]{i, i2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                }
                this.swapGradient.force(0.0f);
                invalidateSelf();
            }

            public void setIcon(Drawable drawable) {
                this.icon = drawable;
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                this.rect.set(getBounds());
                RectF rectF = this.rect;
                rectF.right = rectF.left + rectF.width();
                float f = this.swapGradient.set(1.0f);
                int i = 0;
                while (true) {
                    Shader[] shaderArr = this.gradient;
                    if (i >= shaderArr.length) {
                        break;
                    }
                    if (shaderArr[i] != null) {
                        float fPow = (float) Math.pow(1.0f - Math.abs(i - f), 0.25d);
                        if (fPow > 0.0f) {
                            this.gradientMatrix.reset();
                            int i2 = this.type;
                            Matrix matrix = this.gradientMatrix;
                            if (i2 == 1) {
                                matrix.postTranslate(this.rect.centerX(), AndroidUtilities.dp(145.0f));
                            } else {
                                matrix.postScale(getBounds().width() / 100.0f, 1.0f);
                            }
                            this.gradient[i].setLocalMatrix(this.gradientMatrix);
                            this.paint.setShader(this.gradient[i]);
                            this.paint.setAlpha((int) (fPow * 255.0f));
                            RectF rectF2 = this.rect;
                            float f2 = this.f1046r;
                            canvas.drawRoundRect(rectF2, f2, f2, this.paint);
                        }
                    }
                    i++;
                }
                if (this.icon != null) {
                    canvas.save();
                    canvas.translate(this.rect.centerX(), AndroidUtilities.dp(145.0f));
                    StarGiftPatterns.drawPattern(canvas, 0, this.icon, this.rect.width(), AndroidUtilities.dp(290.0f), 2.0f, 1.0f);
                    canvas.restore();
                }
            }
        }

        public static class ButtonBackground extends Drawable {
            private final Paint backgroundPaint;
            private final Path clipPath;
            private LinearGradient[] gradient;
            private Matrix gradientMatrix;
            private int leftColor;
            private final Paint paintStrokeBottom;
            private final Paint paintStrokeTop;
            private StarsReactionsSheet.Particles particles;
            private int rightColor;
            private AnimatedFloat swapGradient;

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

            public ButtonBackground() {
                Paint paint = new Paint(1);
                this.paintStrokeTop = paint;
                Paint paint2 = new Paint(1);
                this.paintStrokeBottom = paint2;
                this.backgroundPaint = new Paint(1);
                this.gradient = new LinearGradient[2];
                this.gradientMatrix = new Matrix();
                this.swapGradient = new AnimatedFloat(1.0f, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftSheet$CraftTopView$ButtonBackground$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.invalidateSelf();
                    }
                }, 0L, 420L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.clipPath = new Path();
                this.particles = new StarsReactionsSheet.Particles(1, 45);
                Paint.Style style = Paint.Style.STROKE;
                paint.setStyle(style);
                paint.setColor(117440511);
                paint.setStrokeWidth(AndroidUtilities.dpf2(1.0f));
                paint2.setStyle(style);
                paint2.setColor(301989887);
                paint2.setStrokeWidth(AndroidUtilities.dpf2(0.6666667f));
            }

            public void setColor(int i, int i2) {
                if (this.leftColor == i && this.rightColor == i2) {
                    return;
                }
                LinearGradient[] linearGradientArr = this.gradient;
                linearGradientArr[0] = linearGradientArr[1];
                this.leftColor = i;
                this.rightColor = i2;
                linearGradientArr[1] = new LinearGradient(0.0f, 0.0f, 100.0f, 0.0f, new int[]{i, i2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                this.swapGradient.force(0.0f);
                invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                AndroidUtilities.rectTmp.set(getBounds());
                float fDp = AndroidUtilities.dp(24.0f);
                float f = this.swapGradient.set(1.0f);
                int i = 0;
                while (true) {
                    LinearGradient[] linearGradientArr = this.gradient;
                    if (i < linearGradientArr.length) {
                        if (linearGradientArr[i] != null) {
                            float fPow = (float) Math.pow(1.0f - Math.abs(i - f), 0.5d);
                            if (fPow > 0.0f) {
                                this.gradientMatrix.reset();
                                Matrix matrix = this.gradientMatrix;
                                RectF rectF = AndroidUtilities.rectTmp;
                                matrix.postScale(rectF.width() / 100.0f, 1.0f);
                                this.gradient[i].setLocalMatrix(this.gradientMatrix);
                                this.backgroundPaint.setShader(this.gradient[i]);
                                this.backgroundPaint.setAlpha((int) (fPow * 255.0f));
                                canvas.drawRoundRect(rectF, fDp, fDp, this.backgroundPaint);
                            }
                        }
                        i++;
                    } else {
                        this.clipPath.rewind();
                        Path path = this.clipPath;
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        path.addRoundRect(rectF2, fDp, fDp, Path.Direction.CW);
                        canvas.save();
                        canvas.clipPath(this.clipPath);
                        this.particles.setBounds(rectF2);
                        this.particles.setSpeed(30.0f);
                        this.particles.process();
                        this.particles.draw(canvas, Theme.multAlpha(-1, 0.6f));
                        invalidateSelf();
                        canvas.restore();
                        AndroidUtilities.drawStroke(canvas, rectF2, fDp);
                        return;
                    }
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stars.StarGiftSheet$17, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass17 {

        /* JADX INFO: renamed from: $SwitchMap$org$telegram$ui$Stars$StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType */
        static final /* synthetic */ int[] f1043x1b3be5ed;

        static {
            int[] iArr = new int[CraftTopView.Cube3D.AnimSequence.CmdType.values().length];
            f1043x1b3be5ed = iArr;
            try {
                iArr[CraftTopView.Cube3D.AnimSequence.CmdType.RUN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1043x1b3be5ed[CraftTopView.Cube3D.AnimSequence.CmdType.FLING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1043x1b3be5ed[CraftTopView.Cube3D.AnimSequence.CmdType.FRICTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1043x1b3be5ed[CraftTopView.Cube3D.AnimSequence.CmdType.DELAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1043x1b3be5ed[CraftTopView.Cube3D.AnimSequence.CmdType.STEER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1043x1b3be5ed[CraftTopView.Cube3D.AnimSequence.CmdType.PUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class RoundRectStrokeDrawable extends Drawable {
        private final Paint paint;
        private float radius;

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

        public RoundRectStrokeDrawable(float f, int i) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.radius = f;
            paint.setColor(i);
        }

        public void setColor(int i) {
            this.paint.setColor(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(getBounds());
            float f = this.radius;
            canvas.drawRoundRect(rectF, f, f, this.paint);
            AndroidUtilities.drawStroke(canvas, rectF, this.radius);
        }
    }
}
