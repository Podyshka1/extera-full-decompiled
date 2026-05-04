package org.telegram.p029ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.AdminedChannelCell;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Cells.GroupCreateUserCell;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.ShadowSectionCell;
import org.telegram.p029ui.ChannelColorActivity;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.ChatEditActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.AvatarsImageView;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.FireworksOverlay;
import org.telegram.p029ui.Components.FlickerLoadingView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.Loadable;
import org.telegram.p029ui.Components.LoginOrView;
import org.telegram.p029ui.Components.Premium.PremiumGradient;
import org.telegram.p029ui.Components.Premium.boosts.BoostCounterView;
import org.telegram.p029ui.Components.Premium.boosts.BoostDialogs;
import org.telegram.p029ui.Components.Premium.boosts.BoostPagerBottomSheet;
import org.telegram.p029ui.Components.Premium.boosts.BoostRepository;
import org.telegram.p029ui.Components.Premium.boosts.ReassignBoostBottomSheet;
import org.telegram.p029ui.Components.Reactions.ChatCustomReactionsEditActivity;
import org.telegram.p029ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.TypefaceSpan;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.p029ui.GroupColorActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.PremiumPreviewFragment;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.StatisticActivity;
import org.telegram.p029ui.Stories.ChannelBoostUtilities;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.Stories.recorder.StoryRecorder;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes7.dex */
public class LimitReachedBottomSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    TextView actionBtn;
    ArrayList boostFeatures;
    int boostFeaturesStartRow;
    ButtonWithCounterView boostMiniBtn;
    private ButtonWithCounterView boostToUnlockGroupBtn;
    private TL_stories.TL_premium_boostsStatus boostsStatus;
    int bottomRow;
    private ChannelBoostsController.CanApplyBoost canApplyBoost;
    private boolean canSendLink;
    int chatEndRow;
    private ChatMessageCell chatMessageCell;
    int chatStartRow;
    ArrayList chats;
    int chatsTitleRow;
    private int currentValue;
    private long dialogId;
    View divider;
    int dividerRow;
    int emptyViewDividerRow;
    RecyclerItemsEnterAnimator enterAnimator;
    FireworksOverlay fireworksOverlay;
    private String forceLink;
    private TLRPC.Chat fromChat;
    int headerRow;
    private HeaderView headerView;
    private ArrayList inactiveChats;
    private ArrayList inactiveChatsSignatures;
    private boolean isCurrentChat;
    private boolean isVeryLargeFile;
    LimitParams limitParams;
    LimitPreviewView limitPreviewView;
    private int linkRow;
    private boolean loading;
    boolean loadingAdminedChannels;
    int loadingRow;
    private boolean lockInvalidation;
    public Runnable onShowPremiumScreenRunnable;
    public Runnable onSuccessRunnable;
    BaseFragment parentFragment;
    public boolean parentIsChannel;
    boolean premiumButtonSetSubscribe;
    PremiumButtonView premiumButtonView;
    private ArrayList premiumInviteBlockedUsers;
    private ArrayList premiumMessagingBlockedUsers;
    private int requiredLvl;
    private ArrayList restrictedUsers;
    int rowCount;
    HashSet selectedChats;
    private int shiftDp;
    Runnable statisticClickRunnable;
    protected int storiesCount;
    final int type;

    public static class LimitParams {
        int icon = 0;
        String descriptionStr = null;
        String descriptionStrPremium = null;
        String descriptionStrLocked = null;
        int defaultLimit = 0;
        int premiumLimit = 0;
    }

    private static boolean hasFixedSize(int i) {
        return i == 0 || i == 33 || i == 3 || i == 4 || i == 6 || i == 7 || i == 12 || i == 13 || i == 14 || i == 15 || i == 16;
    }

    protected int channelColorLevelMin() {
        return 0;
    }

    public static String limitTypeToServerString(int i) {
        switch (i) {
            case 0:
                return "double_limits__dialog_pinned";
            case 1:
            case 7:
            case 11:
            default:
                return null;
            case 2:
                return "double_limits__channels_public";
            case 3:
                return "double_limits__dialog_filters";
            case 4:
                return "double_limits__dialog_filters_chats";
            case 5:
                return "double_limits__channels";
            case 6:
                return "double_limits__upload_max_fileparts";
            case 8:
                return "double_limits__caption_length";
            case 9:
                return "double_limits__saved_gifs";
            case 10:
                return "double_limits__stickers_faved";
            case 12:
                return "double_limits__chatlist_invites";
            case 13:
                return "double_limits__chatlists_joined";
        }
    }

    private static class BoostFeature {
        public final int countPlural;
        public final String countValue;
        public final int iconResId;
        public boolean incremental;
        public final int textKey;
        public final String textKeyPlural;

        private BoostFeature(int i, int i2, String str, String str2, int i3) {
            this.iconResId = i;
            this.textKey = i2;
            this.countValue = str;
            this.textKeyPlural = str2;
            this.countPlural = i3;
        }

        /* JADX INFO: renamed from: of */
        public static BoostFeature m1263of(int i, int i2) {
            return new BoostFeature(i, i2, null, null, -1);
        }

        /* JADX INFO: renamed from: of */
        public static BoostFeature m1264of(int i, int i2, String str) {
            return new BoostFeature(i, i2, str, null, -1);
        }

        /* JADX INFO: renamed from: of */
        public static BoostFeature m1265of(int i, String str, int i2) {
            return new BoostFeature(i, -1, null, str, i2);
        }

        public boolean equals(BoostFeature boostFeature) {
            if (boostFeature == null) {
                return false;
            }
            if (!this.incremental || this.countPlural <= 2) {
                return this.iconResId == boostFeature.iconResId && this.textKey == boostFeature.textKey && TextUtils.equals(this.countValue, boostFeature.countValue) && TextUtils.equals(this.textKeyPlural, boostFeature.textKeyPlural) && this.countPlural == boostFeature.countPlural;
            }
            return true;
        }

        public BoostFeature asIncremental() {
            this.incremental = true;
            return this;
        }

        public static boolean arraysEqual(ArrayList arrayList, ArrayList arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if ((arrayList != null && arrayList2 == null) || ((arrayList == null && arrayList2 != null) || arrayList.size() != arrayList2.size())) {
                return false;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                if (!((BoostFeature) arrayList.get(i)).equals((BoostFeature) arrayList2.get(i))) {
                    return false;
                }
            }
            return true;
        }

        public static class BoostFeatureLevel extends BoostFeature {
            public final boolean isFirst;
            public final int lvl;

            @Override // org.telegram.ui.Components.Premium.LimitReachedBottomSheet.BoostFeature
            public /* bridge */ /* synthetic */ BoostFeature asIncremental() {
                return super.asIncremental();
            }

            @Override // org.telegram.ui.Components.Premium.LimitReachedBottomSheet.BoostFeature
            public /* bridge */ /* synthetic */ boolean equals(BoostFeature boostFeature) {
                return super.equals(boostFeature);
            }

            public BoostFeatureLevel(int i, boolean z) {
                super(-1, -1, null, null, -1);
                this.lvl = i;
                this.isFirst = z;
            }
        }
    }

    public LimitReachedBottomSheet(BaseFragment baseFragment, Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        super(context, baseFragment, false, hasFixedSize(i), false, resourcesProvider);
        this.linkRow = -1;
        this.lockInvalidation = false;
        this.chats = new ArrayList();
        this.headerRow = -1;
        this.dividerRow = -1;
        this.chatsTitleRow = -1;
        this.chatStartRow = -1;
        this.chatEndRow = -1;
        this.loadingRow = -1;
        this.emptyViewDividerRow = -1;
        this.bottomRow = -1;
        this.boostFeaturesStartRow = -1;
        this.currentValue = -1;
        this.selectedChats = new HashSet();
        this.inactiveChats = new ArrayList();
        this.inactiveChatsSignatures = new ArrayList();
        this.restrictedUsers = new ArrayList();
        this.premiumMessagingBlockedUsers = new ArrayList();
        this.premiumInviteBlockedUsers = new ArrayList();
        this.loading = false;
        this.requiredLvl = 0;
        this.shiftDp = -4;
        fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        this.parentFragment = baseFragment;
        this.currentAccount = i2;
        this.type = i;
        updateTitle();
        updateRows();
        if (i == 2) {
            loadAdminedChannels();
        } else if (i == 5) {
            loadInactiveChannels();
        }
        updatePremiumButtonText();
        if (i == 32 || isBoostingForAdminPossible()) {
            FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
            this.fireworksOverlay = fireworksOverlay;
            this.container.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
        }
        if (i == 18 || i == 20 || i == 24 || i == 25 || i == 26 || i == 29 || i == 22 || i == 23 || i == 21 || i == 27 || i == 28 || i == 30 || i == 35 || i == 31) {
            ((ViewGroup) this.premiumButtonView.getParent()).removeView(this.premiumButtonView);
            View view = this.divider;
            if (view != null) {
                ((ViewGroup) view.getParent()).removeView(this.divider);
            }
            this.recyclerListView.setPadding(0, 0, 0, 0);
            TextView textView = new TextView(context);
            this.actionBtn = textView;
            textView.setGravity(17);
            this.actionBtn.setEllipsize(TextUtils.TruncateAt.END);
            this.actionBtn.setSingleLine(true);
            this.actionBtn.setTextSize(1, 14.0f);
            this.actionBtn.setTypeface(AndroidUtilities.bold());
            this.actionBtn.setText(this.premiumButtonView.getTextView().getText());
            this.actionBtn.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
            this.actionBtn.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$0(view2);
                }
            });
            this.actionBtn.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider), 120)));
        }
        if (i == 32) {
            ((ViewGroup) this.premiumButtonView.getParent()).removeView(this.premiumButtonView);
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
            this.boostToUnlockGroupBtn = buttonWithCounterView;
            buttonWithCounterView.withCounterIcon();
            this.boostToUnlockGroupBtn.setText(LocaleController.getString(C2888R.string.BoostGroup), false);
            this.boostToUnlockGroupBtn.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$1(view2);
                }
            });
            this.containerView.addView(this.boostToUnlockGroupBtn, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 2.0f, 16.0f, 12.0f));
            this.containerView.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$2();
                }
            });
        }
        if (i == 19 || i == 18) {
            this.containerView.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$3();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        AndroidUtilities.addToClipboard(getBoostLink());
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (this.premiumButtonView.isShowOverlay()) {
            this.premiumButtonView.overlayTextView.performClick();
        } else {
            this.premiumButtonView.buttonLayout.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        this.boostToUnlockGroupBtn.setCount(getNeededBoostsForUnlockGroup(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        if (ChatObject.hasAdminRights(getChat())) {
            if (this.premiumButtonView.getParent() != null) {
                ((ViewGroup) this.premiumButtonView.getParent()).removeView(this.premiumButtonView);
            }
            View view = this.divider;
            if (view != null && view.getParent() != null) {
                ((ViewGroup) this.divider.getParent()).removeView(this.divider);
            }
            this.recyclerListView.setPadding(0, 0, 0, 0);
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout frameLayout) {
        int i;
        super.onViewCreated(frameLayout);
        final Context context = frameLayout.getContext();
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourcesProvider);
        this.boostMiniBtn = buttonWithCounterView;
        buttonWithCounterView.setFlickeringLoading(true);
        this.boostMiniBtn.setText(LocaleController.getString(C2888R.string.BoostBtn), false);
        this.boostMiniBtn.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onViewCreated$4(view);
            }
        });
        PremiumButtonView premiumButtonView = new PremiumButtonView(context, true, this.resourcesProvider) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.1
            @Override // android.view.View
            public void invalidate() {
                if (LimitReachedBottomSheet.this.lockInvalidation) {
                    return;
                }
                super.invalidate();
            }
        };
        this.premiumButtonView = premiumButtonView;
        ScaleStateListAnimator.apply(premiumButtonView, 0.02f, 1.2f);
        if (!this.hasFixedSize && (i = this.type) != 18 && i != 20 && i != 24 && i != 25 && i != 26 && i != 29 && i != 22 && i != 23 && i != 21 && i != 27 && i != 28 && i != 30 && i != 35) {
            View view = new View(context) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.2
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
                    if (limitReachedBottomSheet.chatEndRow - limitReachedBottomSheet.chatStartRow > 1) {
                        Paint themePaint = Theme.getThemePaint("paintDivider", ((BottomSheet) limitReachedBottomSheet).resourcesProvider);
                        if (themePaint == null) {
                            themePaint = Theme.dividerPaint;
                        }
                        canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), 1.0f, themePaint);
                    }
                }
            };
            this.divider = view;
            view.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
            frameLayout.addView(this.divider, LayoutHelper.createFrame(-1, 72.0f, 80, 0.0f, 0.0f, 0.0f, 0.0f));
        }
        PremiumButtonView premiumButtonView2 = this.premiumButtonView;
        int i2 = this.backgroundPaddingLeft;
        float f = AndroidUtilities.density;
        frameLayout.addView(premiumButtonView2, LayoutHelper.createFrame(-1, 48.0f, 80, (i2 / f) + 16.0f, 0.0f, (i2 / f) + 16.0f, 12.0f));
        this.recyclerListView.setPadding(0, 0, 0, AndroidUtilities.m1124dp(72.0f));
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setClipChildren(false);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i3) {
                this.f$0.lambda$onViewCreated$5(view2, i3);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view2, int i3) {
                return this.f$0.lambda$onViewCreated$6(view2, i3);
            }
        });
        this.premiumButtonView.buttonLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$12(context, view2);
            }
        });
        this.premiumButtonView.overlayTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$14(view2);
            }
        });
        this.enterAnimator = new RecyclerItemsEnterAnimator(this.recyclerListView, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$4(View view) {
        if (this.premiumButtonView.isShowOverlay()) {
            this.premiumButtonView.overlayTextView.performClick();
        } else {
            this.premiumButtonView.buttonLayout.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$5(View view, int i) {
        int i2;
        if (view instanceof AdminedChannelCell) {
            AdminedChannelCell adminedChannelCell = (AdminedChannelCell) view;
            TLRPC.Chat currentChannel = adminedChannelCell.getCurrentChannel();
            if (this.selectedChats.contains(currentChannel)) {
                this.selectedChats.remove(currentChannel);
            } else {
                this.selectedChats.add(currentChannel);
            }
            adminedChannelCell.setChecked(this.selectedChats.contains(currentChannel), true);
            updateButton();
            return;
        }
        if (view instanceof GroupCreateUserCell) {
            if (this.canSendLink || !((i2 = this.type) == 11 || i2 == 34)) {
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) view;
                Object object = groupCreateUserCell.getObject();
                if (groupCreateUserCell.isBlocked()) {
                    if (object instanceof TLRPC.User) {
                        showPremiumBlockedToast(groupCreateUserCell, ((TLRPC.User) object).f1825id);
                    }
                } else {
                    if (this.selectedChats.contains(object)) {
                        this.selectedChats.remove(object);
                    } else {
                        this.selectedChats.add(object);
                    }
                    groupCreateUserCell.setChecked(this.selectedChats.contains(object), true);
                    updateButton();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onViewCreated$6(View view, int i) {
        this.recyclerListView.getOnItemClickListener().onItemClick(view, i);
        if (this.type != 19) {
            try {
                view.performHapticFeedback(0);
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$12(Context context, View view) {
        int i = this.type;
        if (i == 11 || i == 34) {
            return;
        }
        if (i == 19 || i == 32 || isMiniBoostBtnForAdminAvailable()) {
            ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
            if (canApplyBoost.empty) {
                if (UserConfig.getInstance(this.currentAccount).isPremium() && BoostRepository.isMultiBoostsAvailable()) {
                    BoostDialogs.showMoreBoostsNeeded(this.dialogId, this);
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(context, this.resourcesProvider);
                builder.setTitle(LocaleController.getString(C2888R.string.PremiumNeeded));
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(isGroup() ? C2888R.string.PremiumNeededForBoostingGroup : C2888R.string.PremiumNeededForBoosting)));
                builder.setPositiveButton(LocaleController.getString(C2888R.string.CheckPhoneNumberYes), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda14
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onViewCreated$7(alertDialog, i2);
                    }
                });
                builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda15
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        alertDialog.dismiss();
                    }
                });
                builder.show();
                return;
            }
            boolean z = canApplyBoost.canApply;
            if (z && canApplyBoost.replaceDialogId == 0) {
                if (canApplyBoost.needSelector && BoostRepository.isMultiBoostsAvailable()) {
                    this.lockInvalidation = true;
                    this.limitPreviewView.invalidationEnabled = false;
                    BaseFragment baseFragment = getBaseFragment();
                    ChannelBoostsController.CanApplyBoost canApplyBoost2 = this.canApplyBoost;
                    ReassignBoostBottomSheet.show(baseFragment, canApplyBoost2.myBoosts, canApplyBoost2.currentChat).setOnHideListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda16
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.f$0.lambda$onViewCreated$9(dialogInterface);
                        }
                    });
                    return;
                }
                boostChannel();
                return;
            }
            if (z) {
                FrameLayout frameLayout = new FrameLayout(getContext());
                BackupImageView backupImageView = new BackupImageView(getContext());
                backupImageView.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
                frameLayout.addView(backupImageView, LayoutHelper.createFrame(60, 60.0f));
                frameLayout.setClipChildren(false);
                final Paint paint = new Paint(1);
                paint.setColor(Theme.getColor(Theme.key_dialogBackground));
                final Drawable drawable = ContextCompat.getDrawable(getContext(), C2888R.drawable.filled_limit_boost);
                frameLayout.addView(new View(getContext()) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.3
                    @Override // android.view.View
                    protected void onDraw(Canvas canvas) {
                        float measuredWidth = getMeasuredWidth() / 2.0f;
                        float measuredHeight = getMeasuredHeight() / 2.0f;
                        canvas.drawCircle(measuredWidth, measuredHeight, getMeasuredWidth() / 2.0f, paint);
                        PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), -AndroidUtilities.m1124dp(10.0f), 0.0f);
                        canvas.drawCircle(measuredWidth, measuredHeight, (getMeasuredWidth() / 2.0f) - AndroidUtilities.m1124dp(2.0f), PremiumGradient.getInstance().getMainGradientPaint());
                        float fM1124dp = AndroidUtilities.m1124dp(18.0f) / 2.0f;
                        drawable.setBounds((int) (measuredWidth - fM1124dp), (int) (measuredHeight - fM1124dp), (int) (measuredWidth + fM1124dp), (int) (measuredHeight + fM1124dp));
                        drawable.draw(canvas);
                    }
                }, LayoutHelper.createFrame(28, 28.0f, 0, 34.0f, 34.0f, 0.0f, 0.0f));
                ImageView imageView = new ImageView(getContext());
                imageView.setImageResource(C2888R.drawable.msg_arrow_avatar);
                imageView.setColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
                frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 17));
                BackupImageView backupImageView2 = new BackupImageView(getContext());
                backupImageView2.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
                frameLayout.addView(backupImageView2, LayoutHelper.createFrame(60, 60.0f, 0, 96.0f, 0.0f, 0.0f, 0.0f));
                FrameLayout frameLayout2 = new FrameLayout(getContext());
                frameLayout2.addView(frameLayout, LayoutHelper.createFrame(-2, 60, 1));
                frameLayout2.setClipChildren(false);
                TextView textView = new TextView(context);
                textView.setLetterSpacing(0.025f);
                textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                textView.setTextSize(1, 16.0f);
                frameLayout2.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 24, 80, 24, 0));
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.canApplyBoost.replaceDialogId));
                avatarDrawable.setInfo(this.currentAccount, chat);
                backupImageView.setForUserOrChat(chat, avatarDrawable);
                AvatarDrawable avatarDrawable2 = new AvatarDrawable();
                TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
                avatarDrawable2.setInfo(this.currentAccount, chat2);
                backupImageView2.setForUserOrChat(chat2, avatarDrawable2);
                AlertDialog.Builder builder2 = new AlertDialog.Builder(context);
                builder2.setView(frameLayout2);
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("ReplaceBoostChannelDescription", C2888R.string.ReplaceBoostChannelDescription, chat.title, chat2.title)));
                builder2.setPositiveButton(LocaleController.getString(C2888R.string.Replace), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda17
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onViewCreated$10(alertDialog, i2);
                    }
                });
                builder2.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda18
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        alertDialog.dismiss();
                    }
                });
                builder2.show();
                return;
            }
            int i2 = canApplyBoost.floodWait;
            if (i2 != 0) {
                BoostDialogs.showFloodWait(i2);
                return;
            }
            return;
        }
        int i3 = this.type;
        if (i3 == 18 || i3 == 20 || i3 == 24 || i3 == 25 || i3 == 26 || i3 == 29 || i3 == 22 || i3 == 23 || i3 == 21 || i3 == 27 || i3 == 28 || i3 == 30 || i3 == 35) {
            AndroidUtilities.addToClipboard(getBoostLink());
            lambda$new$0();
            return;
        }
        if (UserConfig.getInstance(this.currentAccount).isPremium() || MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() || this.isVeryLargeFile) {
            lambda$new$0();
            return;
        }
        BaseFragment baseFragment2 = this.parentFragment;
        if (baseFragment2 == null) {
            return;
        }
        if (baseFragment2.getVisibleDialog() != null) {
            this.parentFragment.getVisibleDialog().dismiss();
        }
        this.parentFragment.presentFragment(new PremiumPreviewFragment(limitTypeToServerString(this.type)));
        Runnable runnable = this.onShowPremiumScreenRunnable;
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$7(AlertDialog alertDialog, int i) {
        this.parentFragment.presentFragment(new PremiumPreviewFragment(null));
        lambda$new$0();
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$9(DialogInterface dialogInterface) {
        this.lockInvalidation = false;
        this.limitPreviewView.invalidationEnabled = true;
        this.premiumButtonView.invalidate();
        this.limitPreviewView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$10(AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        boostChannel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$14(View view) {
        if (this.premiumButtonSetSubscribe) {
            if (this.parentFragment == null) {
                return;
            }
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            this.parentFragment.showAsSheet(new PremiumPreviewFragment("invite_privacy"), bottomSheetParams);
        } else {
            int i = this.type;
            if (i == 19 || i == 32 || isMiniBoostBtnForAdminAvailable()) {
                ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
                if (canApplyBoost.canApply) {
                    this.premiumButtonView.buttonLayout.callOnClick();
                    ChannelBoostsController.CanApplyBoost canApplyBoost2 = this.canApplyBoost;
                    if (canApplyBoost2.alreadyActive && canApplyBoost2.boostedNow) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda12
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onViewCreated$13();
                            }
                        }, this.canApplyBoost.needSelector ? 300L : 0L);
                        return;
                    }
                    return;
                }
                if (canApplyBoost.alreadyActive && BoostRepository.isMultiBoostsAvailable() && !this.canApplyBoost.isMaxLvl) {
                    BoostDialogs.showMoreBoostsNeeded(this.dialogId, this);
                    return;
                } else {
                    lambda$new$0();
                    return;
                }
            }
        }
        int i2 = this.type;
        if (i2 == 11 || i2 == 34) {
            if (this.selectedChats.isEmpty()) {
                lambda$new$0();
                return;
            } else {
                sendInviteMessages(null);
                return;
            }
        }
        if (this.selectedChats.isEmpty()) {
            return;
        }
        int i3 = this.type;
        if (i3 == 2) {
            revokeSelectedLinks();
        } else if (i3 == 5) {
            leaveFromSelectedGroups();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$13() {
        this.limitPreviewView.setBoosts(this.boostsStatus, false);
        limitPreviewIncreaseCurrentValue();
    }

    private void limitPreviewIncreaseCurrentValue() {
        LimitPreviewView limitPreviewView = this.limitPreviewView;
        TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = this.boostsStatus;
        int i = tL_premium_boostsStatus.boosts;
        int i2 = tL_premium_boostsStatus.current_level_boosts;
        limitPreviewView.increaseCurrentValue(i, i - i2, tL_premium_boostsStatus.next_level_boosts - i2);
    }

    private void showPremiumBlockedToast(View view, long j) {
        String forcedFirstName;
        Bulletin bulletinCreateSimpleBulletin;
        int i = -this.shiftDp;
        this.shiftDp = i;
        AndroidUtilities.shakeViewSpring(view, i);
        BotWebViewVibrationEffect.APP_ERROR.vibrate();
        if (j < 0) {
            forcedFirstName = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            forcedFirstName = UserObject.getForcedFirstName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
        }
        if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
            bulletinCreateSimpleBulletin = BulletinFactory.m1245of((FrameLayout) this.containerView, this.resourcesProvider).createSimpleBulletin(C2888R.raw.star_premium_2, AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.UserBlockedNonPremium, forcedFirstName)));
        } else {
            bulletinCreateSimpleBulletin = BulletinFactory.m1245of((FrameLayout) this.containerView, this.resourcesProvider).createSimpleBulletin(C2888R.raw.star_premium_2, AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.UserBlockedNonPremium, forcedFirstName)), LocaleController.getString(C2888R.string.UserBlockedNonPremiumButton), new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showPremiumBlockedToast$15();
                }
            });
        }
        bulletinCreateSimpleBulletin.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumBlockedToast$15() {
        if (LaunchActivity.getLastFragment() == null) {
            return;
        }
        BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
        bottomSheetParams.transitionFromLeft = true;
        bottomSheetParams.allowNestedScroll = false;
        this.parentFragment.showAsSheet(new PremiumPreviewFragment("noncontacts"), bottomSheetParams);
    }

    private void boostChannel(Loadable loadable) {
        boostChannel(loadable, false);
    }

    private void boostChannel(final Loadable loadable, boolean z) {
        if (!loadable.isLoading() || z) {
            loadable.setLoading(true);
            MessagesController.getInstance(this.currentAccount).getBoostsController().applyBoost(this.dialogId, this.canApplyBoost.slot, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda22
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$boostChannel$17(loadable, (TL_stories.TL_premium_myBoosts) obj);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda23
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$boostChannel$19(loadable, (TLRPC.TL_error) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$boostChannel$17(final Loadable loadable, final TL_stories.TL_premium_myBoosts tL_premium_myBoosts) {
        MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(this.dialogId, new Consumer() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda27
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$boostChannel$16(loadable, tL_premium_myBoosts, (TL_stories.TL_premium_boostsStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$boostChannel$16(Loadable loadable, TL_stories.TL_premium_myBoosts tL_premium_myBoosts, TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        TLRPC.ChatFull chatFull;
        loadable.setLoading(false);
        if (tL_premium_boostsStatus == null) {
            return;
        }
        this.boostsStatus.boosts++;
        if (this.type == 32 && (chatFull = getChatFull()) != null) {
            chatFull.boosts_applied++;
        }
        limitPreviewIncreaseCurrentValue();
        setBoostsStats(tL_premium_boostsStatus, this.isCurrentChat);
        ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
        canApplyBoost.isMaxLvl = this.boostsStatus.next_level_boosts <= 0;
        canApplyBoost.boostedNow = true;
        canApplyBoost.setMyBoosts(tL_premium_myBoosts);
        onBoostSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$boostChannel$19(final Loadable loadable, TLRPC.TL_error tL_error) {
        if (tL_error.text.startsWith("FLOOD_WAIT")) {
            int iIntValue = Utilities.parseInt((CharSequence) tL_error.text).intValue();
            if (iIntValue <= 5) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda26
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$boostChannel$18(loadable);
                    }
                }, ((long) iIntValue) * 1000);
                return;
            }
            BoostDialogs.showFloodWait(iIntValue);
        }
        loadable.setLoading(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$boostChannel$18(Loadable loadable) {
        boostChannel(loadable, true);
    }

    private void boostChannel() {
        if (this.boostMiniBtn.isAttachedToWindow()) {
            boostChannel(this.boostMiniBtn);
            return;
        }
        ButtonWithCounterView buttonWithCounterView = this.boostToUnlockGroupBtn;
        if (buttonWithCounterView != null && buttonWithCounterView.isAttachedToWindow()) {
            boostChannel(this.boostToUnlockGroupBtn);
        } else {
            boostChannel(this.premiumButtonView);
        }
    }

    private boolean onBoostSuccess() {
        NotificationCenter.getInstance(this.currentAccount).postNotificationNameOnUIThread(NotificationCenter.chatWasBoostedByUser, this.boostsStatus, this.canApplyBoost.copy(), Long.valueOf(this.dialogId));
        if (this.boostToUnlockGroupBtn != null) {
            int neededBoostsForUnlockGroup = getNeededBoostsForUnlockGroup();
            if (neededBoostsForUnlockGroup == 0) {
                NotificationCenter.getInstance(this.currentAccount).postNotificationNameOnUIThread(NotificationCenter.groupRestrictionsUnlockedByBoosts, new Object[0]);
                lambda$new$0();
                return false;
            }
            this.boostToUnlockGroupBtn.setCount(neededBoostsForUnlockGroup, true);
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(new Visibility() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.4
            @Override // android.transition.Visibility
            public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, AndroidUtilities.m1124dp(20.0f), 0.0f));
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                return animatorSet;
            }

            @Override // android.transition.Visibility
            public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 0.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, -AndroidUtilities.m1124dp(20.0f)));
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                return animatorSet;
            }
        });
        transitionSet.setOrdering(0);
        TransitionManager.beginDelayedTransition(this.headerView, transitionSet);
        this.headerView.recreateTitleAndDescription();
        this.headerView.title.setText(getBoostsTitleString());
        this.headerView.description.setText(AndroidUtilities.replaceTags(getBoostDescriptionStringAfterBoost()));
        updateButton();
        this.fireworksOverlay.start();
        try {
            this.fireworksOverlay.performHapticFeedback(3);
        } catch (Exception unused) {
        }
        this.headerView.boostCounterView.setCount(this.canApplyBoost.boostCount, true);
        this.recyclerListView.smoothScrollToPosition(0);
        if (this.type == 32) {
            this.headerView.boostCounterView.setVisibility(8);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendInviteMessages(HashMap map) {
        String str;
        HashMap map2 = map;
        if (!TextUtils.isEmpty(this.forceLink)) {
            str = this.forceLink;
        } else {
            TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.fromChat.f1660id);
            if (chatFull == null) {
                lambda$new$0();
                return;
            }
            if (this.fromChat.username != null) {
                str = "@" + this.fromChat.username;
            } else {
                TLRPC.TL_chatInviteExported tL_chatInviteExported = chatFull.exported_invite;
                if (tL_chatInviteExported != null) {
                    str = tL_chatInviteExported.link;
                } else {
                    lambda$new$0();
                    return;
                }
            }
        }
        String str2 = str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (TLRPC.User user : this.selectedChats) {
            long sendPaidMessagesStars = MessagesController.getInstance(this.currentAccount).getSendPaidMessagesStars(user.f1825id);
            if (sendPaidMessagesStars <= 0) {
                sendPaidMessagesStars = DialogObject.getMessagesStarsPrice(MessagesController.getInstance(this.currentAccount).isUserContactBlocked(user.f1825id));
            }
            (sendPaidMessagesStars >= 0 ? arrayList : arrayList2).add(user);
        }
        int i = 0;
        boolean z = true;
        if (map2 == null && !arrayList.isEmpty()) {
            ArrayList arrayList3 = new ArrayList();
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                arrayList3.add(Long.valueOf(((TLRPC.User) obj).f1825id));
            }
            AlertsCreator.ensurePaidMessagesMultiConfirmation(this.currentAccount, arrayList3, 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj2) {
                    this.f$0.sendInviteMessages((HashMap) obj2);
                }
            });
            return;
        }
        Iterator it = this.selectedChats.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            TLRPC.User user2 = (TLRPC.User) it.next();
            long jLongValue = map2 == null ? 0L : ((Long) map2.get(Long.valueOf(user2.f1825id))).longValue();
            boolean z3 = z;
            Iterator it2 = it;
            SendMessagesHelper.SendMessageParams sendMessageParamsM1175of = SendMessagesHelper.SendMessageParams.m1175of(str2, user2.f1825id, null, null, null, true, null, null, null, false, 0, 0, null, false);
            sendMessageParamsM1175of.payStars = jLongValue;
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(sendMessageParamsM1175of);
            if (sendMessageParamsM1175of.payStars > 0) {
                z2 = z3;
            }
            map2 = map;
            z = z3;
            it = it2;
        }
        if (!z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendInviteMessages$20();
                }
            });
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendInviteMessages$20() {
        BulletinFactory bulletinFactoryGlobal = BulletinFactory.global();
        if (bulletinFactoryGlobal != null) {
            if (this.selectedChats.size() == 1) {
                bulletinFactoryGlobal.createSimpleBulletin(C2888R.raw.voip_invite, AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.InviteLinkSentSingle, ContactsController.formatName((TLRPC.User) this.selectedChats.iterator().next())))).show();
            } else {
                bulletinFactoryGlobal.createSimpleBulletin(C2888R.raw.voip_invite, AndroidUtilities.replaceTags(LocaleController.formatPluralString("InviteLinkSent", this.selectedChats.size(), Integer.valueOf(this.selectedChats.size())))).show();
            }
        }
    }

    public void setRequiredLvl(int i) {
        this.requiredLvl = i;
    }

    public void updatePremiumButtonText() {
        String string;
        if (this.premiumButtonSetSubscribe) {
            this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.InvitePremiumBlockedSubscribe), false, false);
            return;
        }
        int i = this.type;
        if (i == 19 || i == 32 || isMiniBoostBtnForAdminAvailable()) {
            if (BoostRepository.isMultiBoostsAvailable()) {
                AnimatedTextView animatedTextView = this.premiumButtonView.buttonTextView;
                ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
                if (canApplyBoost != null && canApplyBoost.alreadyActive) {
                    string = LocaleController.getString(C2888R.string.BoostingBoostAgain);
                } else {
                    string = LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel);
                }
                animatedTextView.setText(string);
                ChannelBoostsController.CanApplyBoost canApplyBoost2 = this.canApplyBoost;
                if (canApplyBoost2 == null || !canApplyBoost2.isMaxLvl) {
                    return;
                }
                this.premiumButtonView.buttonTextView.setText(LocaleController.getString(C2888R.string.f1606OK));
                return;
            }
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel));
            return;
        }
        int i2 = this.type;
        if (i2 == 18 || i2 == 20 || i2 == 24 || i2 == 25 || i2 == 26 || i2 == 29 || i2 == 22 || i2 == 23 || i2 == 21 || i2 == 27 || i2 == 28 || i2 == 30 || i2 == 35) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("d ");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C2888R.drawable.msg_copy_filled), 0, 1, 0);
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.CopyLink));
            this.premiumButtonView.buttonTextView.setText(spannableStringBuilder);
            return;
        }
        if (UserConfig.getInstance(this.currentAccount).isPremium() || MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() || this.isVeryLargeFile) {
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString(C2888R.string.f1606OK));
            this.premiumButtonView.hideIcon();
            return;
        }
        this.premiumButtonView.buttonTextView.setText(LocaleController.getString(C2888R.string.IncreaseLimit));
        LimitParams limitParams = this.limitParams;
        if (limitParams != null) {
            int i3 = limitParams.defaultLimit;
            int i4 = i3 + 1;
            int i5 = limitParams.premiumLimit;
            if (i4 == i5) {
                this.premiumButtonView.setIcon(C2888R.raw.addone_icon);
                return;
            }
            if (i3 != 0 && i5 != 0 && i5 / i3 >= 1.6f && i5 / i3 <= 2.5f) {
                this.premiumButtonView.setIcon(C2888R.raw.double_icon);
                return;
            } else {
                this.premiumButtonView.hideIcon();
                return;
            }
        }
        this.premiumButtonView.hideIcon();
    }

    private void leaveFromSelectedGroups() {
        final TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        final ArrayList arrayList = new ArrayList();
        Iterator it = this.selectedChats.iterator();
        while (it.hasNext()) {
            arrayList.add((TLRPC.Chat) it.next());
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.formatPluralString("LeaveCommunities", arrayList.size(), new Object[0]));
        if (arrayList.size() == 1) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChannelLeaveAlertWithName", C2888R.string.ChannelLeaveAlertWithName, ((TLRPC.Chat) arrayList.get(0)).title)));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChatsLeaveAlert", C2888R.string.ChatsLeaveAlert, new Object[0])));
        }
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.VoipGroupLeave), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda21
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$leaveFromSelectedGroups$21(arrayList, user, alertDialog, i);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$leaveFromSelectedGroups$21(ArrayList arrayList, TLRPC.User user, AlertDialog alertDialog, int i) {
        lambda$new$0();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC.Chat chat = (TLRPC.Chat) arrayList.get(i2);
            MessagesController.getInstance(this.currentAccount).putChat(chat, false);
            MessagesController.getInstance(this.currentAccount).deleteParticipantFromChat(chat.f1660id, user);
        }
    }

    private void updateButton() {
        String pluralString;
        if (this.premiumButtonSetSubscribe) {
            this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.InvitePremiumBlockedSubscribe), false, false);
            return;
        }
        int i = this.type;
        if (i == 19 || i == 32 || isMiniBoostBtnForAdminAvailable()) {
            ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
            boolean z = canApplyBoost.canApply;
            if ((z || canApplyBoost.empty) && !canApplyBoost.boostedNow && !canApplyBoost.alreadyActive) {
                if (canApplyBoost.isMaxLvl) {
                    this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.f1606OK), true, true);
                    return;
                } else {
                    this.premiumButtonView.clearOverlayText();
                    return;
                }
            }
            if (z) {
                if (BoostRepository.isMultiBoostsAvailable()) {
                    this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.BoostingBoostAgain), true, true);
                } else {
                    this.premiumButtonView.setOverlayText(LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel), true, true);
                }
                this.boostMiniBtn.setText(LocaleController.getString(C2888R.string.BoostBtn), true);
                ButtonWithCounterView buttonWithCounterView = this.boostToUnlockGroupBtn;
                if (buttonWithCounterView != null) {
                    buttonWithCounterView.setText(LocaleController.getString(C2888R.string.BoostGroup), true);
                    return;
                }
                return;
            }
            if (canApplyBoost.isMaxLvl) {
                this.boostMiniBtn.setText(LocaleController.getString(C2888R.string.f1606OK), true);
                ButtonWithCounterView buttonWithCounterView2 = this.boostToUnlockGroupBtn;
                if (buttonWithCounterView2 != null) {
                    buttonWithCounterView2.setText(LocaleController.getString(C2888R.string.f1606OK), true);
                }
                this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.f1606OK), true, true);
                return;
            }
            if (BoostRepository.isMultiBoostsAvailable()) {
                ButtonWithCounterView buttonWithCounterView3 = this.boostToUnlockGroupBtn;
                if (buttonWithCounterView3 != null) {
                    buttonWithCounterView3.setText(LocaleController.getString(C2888R.string.BoostGroup), true);
                }
                this.boostMiniBtn.setText(LocaleController.getString(C2888R.string.BoostBtn), true);
                this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.BoostingBoostAgain), true, true);
                return;
            }
            ButtonWithCounterView buttonWithCounterView4 = this.boostToUnlockGroupBtn;
            if (buttonWithCounterView4 != null) {
                buttonWithCounterView4.setText(LocaleController.getString(C2888R.string.f1606OK), true);
            }
            this.boostMiniBtn.setText(LocaleController.getString(C2888R.string.f1606OK), true);
            this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.f1606OK), true, true);
            return;
        }
        int i2 = this.type;
        if (i2 == 11 || i2 == 34) {
            this.premiumButtonView.checkCounterView();
            if (!this.canSendLink) {
                this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.Close), true, true);
            } else if (this.selectedChats.size() > 0) {
                this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.SendInviteLink), true, true);
            } else {
                this.premiumButtonView.setOverlayText(LocaleController.getString(C2888R.string.ActionSkip), true, true);
            }
            this.premiumButtonView.counterView.setCount(this.selectedChats.size(), true);
            this.premiumButtonView.invalidate();
            return;
        }
        if (this.selectedChats.size() > 0) {
            int i3 = this.type;
            if (i3 == 2) {
                pluralString = LocaleController.formatPluralString("RevokeLinks", this.selectedChats.size(), new Object[0]);
            } else {
                pluralString = i3 == 5 ? LocaleController.formatPluralString("LeaveCommunities", this.selectedChats.size(), new Object[0]) : null;
            }
            this.premiumButtonView.setOverlayText(pluralString, true, true);
            return;
        }
        this.premiumButtonView.clearOverlayText();
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        int i = this.type;
        if (i == 11) {
            return LocaleController.getString(C2888R.string.ChannelInviteViaLink2);
        }
        if (i == 34) {
            return LocaleController.getString(C2888R.string.CallInviteViaLink);
        }
        if (i != 35) {
            switch (i) {
                case 18:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    return LocaleController.getString(C2888R.string.UnlockBoostChannelFeatures);
                case 19:
                case 30:
                    return LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel);
                case 31:
                    return LocaleController.getString(C2888R.string.BoostingAdditionalFeaturesTitle);
                case 32:
                    return LocaleController.getString(C2888R.string.BoostGroup);
                default:
                    return LocaleController.getString(C2888R.string.LimitReached);
            }
        }
        return LocaleController.getString(C2888R.string.UnlockBoostChannelFeatures);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.boostByChannelCreated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.boostedChannelByUser);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didStartedMultiGiftsSelector);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.boostByChannelCreated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.boostedChannelByUser);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didStartedMultiGiftsSelector);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC.ChatFull chatFull;
        int i3 = 0;
        if (i == NotificationCenter.boostByChannelCreated) {
            TLRPC.Chat chat = (TLRPC.Chat) objArr[0];
            boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
            BaseFragment lastFragment = getBaseFragment().getParentLayout().getLastFragment();
            if (lastFragment instanceof ChatCustomReactionsEditActivity) {
                List fragmentStack = getBaseFragment().getParentLayout().getFragmentStack();
                BaseFragment baseFragment = fragmentStack.size() >= 2 ? (BaseFragment) fragmentStack.get(fragmentStack.size() - 2) : null;
                BaseFragment baseFragment2 = fragmentStack.size() >= 3 ? (BaseFragment) fragmentStack.get(fragmentStack.size() - 3) : null;
                baseFragment = fragmentStack.size() >= 4 ? (BaseFragment) fragmentStack.get(fragmentStack.size() - 4) : null;
                if (baseFragment instanceof ChatEditActivity) {
                    getBaseFragment().getParentLayout().removeFragmentFromStack(baseFragment);
                }
                lambda$new$0();
                if (zBooleanValue) {
                    if (baseFragment2 instanceof ProfileActivity) {
                        getBaseFragment().getParentLayout().removeFragmentFromStack(baseFragment2);
                    }
                    lastFragment.finishFragment();
                    BoostDialogs.showBulletin(baseFragment, chat, true);
                    return;
                }
                lastFragment.finishFragment();
                BoostDialogs.showBulletin(baseFragment2, chat, false);
                return;
            }
            if ((lastFragment instanceof ChatActivity) && zBooleanValue) {
                BoostDialogs.showBulletin(lastFragment, chat, true);
                return;
            }
            if ((lastFragment instanceof ChannelColorActivity) && zBooleanValue) {
                List fragmentStack2 = getBaseFragment().getParentLayout().getFragmentStack();
                ArrayList arrayList = new ArrayList();
                for (int size = fragmentStack2.size() - 2; size >= 0; size--) {
                    BaseFragment baseFragment3 = (BaseFragment) fragmentStack2.get(size);
                    if ((baseFragment3 instanceof ChatActivity) || (baseFragment3 instanceof DialogsActivity)) {
                        baseFragment = baseFragment3;
                        break;
                    }
                    arrayList.add(baseFragment3);
                }
                if (baseFragment == null) {
                    return;
                }
                int size2 = arrayList.size();
                while (i3 < size2) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    getBaseFragment().getParentLayout().removeFragmentFromStack((BaseFragment) obj);
                }
                getBaseFragment().finishFragment();
                lambda$new$0();
                BoostDialogs.showBulletin(baseFragment, chat, true);
                return;
            }
            if (zBooleanValue) {
                if (StoryRecorder.isVisible()) {
                    ChatActivity chatActivityM1239of = ChatActivity.m1239of(-chat.f1660id);
                    LaunchActivity.getLastFragment().presentFragment(chatActivityM1239of, false, false);
                    StoryRecorder.destroyInstance();
                    lambda$new$0();
                    BoostDialogs.showBulletin(chatActivityM1239of, chat, true);
                    return;
                }
                List fragmentStack3 = getBaseFragment().getParentLayout().getFragmentStack();
                baseFragment = fragmentStack3.size() >= 2 ? (BaseFragment) fragmentStack3.get(fragmentStack3.size() - 2) : null;
                getBaseFragment().finishFragment();
                lambda$new$0();
                if (baseFragment instanceof ChatActivity) {
                    BoostDialogs.showBulletin(baseFragment, chat, true);
                    return;
                }
                return;
            }
            if (StoryRecorder.isVisible()) {
                ChatActivity chatActivityM1239of2 = ChatActivity.m1239of(-chat.f1660id);
                LaunchActivity.getLastFragment().presentFragment(chatActivityM1239of2, false, false);
                StoryRecorder.destroyInstance();
                lambda$new$0();
                BoostDialogs.showBulletin(chatActivityM1239of2, chat, false);
                return;
            }
            lambda$new$0();
            BoostDialogs.showBulletin(LaunchActivity.getLastFragment(), chat, false);
            return;
        }
        if (i == NotificationCenter.boostedChannelByUser) {
            TL_stories.TL_premium_myBoosts tL_premium_myBoosts = (TL_stories.TL_premium_myBoosts) objArr[0];
            int iIntValue = ((Integer) objArr[1]).intValue();
            int iIntValue2 = ((Integer) objArr[2]).intValue();
            TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = (TL_stories.TL_premium_boostsStatus) objArr[3];
            if (tL_premium_boostsStatus == null || this.canApplyBoost == null) {
                return;
            }
            this.boostsStatus.boosts += iIntValue;
            if (this.type == 32 && (chatFull = getChatFull()) != null) {
                chatFull.boosts_applied += iIntValue;
            }
            limitPreviewIncreaseCurrentValue();
            setBoostsStats(tL_premium_boostsStatus, this.isCurrentChat);
            ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
            canApplyBoost.isMaxLvl = this.boostsStatus.next_level_boosts <= 0;
            canApplyBoost.boostedNow = true;
            canApplyBoost.setMyBoosts(tL_premium_myBoosts);
            if (onBoostSuccess()) {
                BulletinFactory.m1245of(this.container, this.resourcesProvider).createSimpleBulletinWithIconSize(C2888R.raw.ic_boosts_replace, LocaleController.formatPluralString("BoostingReassignedFromPlural", iIntValue, LocaleController.formatPluralString("BoostingFromOtherChannel", iIntValue2, new Object[0])), 30).setDuration(4000).show(true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.didStartedMultiGiftsSelector) {
            lambda$new$0();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5 */
    class C47575 extends RecyclerListView.SelectionAdapter {
        C47575() {
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
            int i = limitReachedBottomSheet.type;
            if ((i == 11 || i == 34) && !limitReachedBottomSheet.canSendLink) {
                return false;
            }
            return viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View adminedChannelCell;
            Context context = viewGroup.getContext();
            switch (i) {
                case 1:
                    adminedChannelCell = new AdminedChannelCell(context, new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.5.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AdminedChannelCell adminedChannelCell2 = (AdminedChannelCell) view.getParent();
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(adminedChannelCell2.getCurrentChannel());
                            LimitReachedBottomSheet.this.revokeLinks(arrayList);
                        }
                    }, true, 9);
                    break;
                case 2:
                    adminedChannelCell = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    break;
                case 3:
                    HeaderCell headerCell = new HeaderCell(context);
                    headerCell.setPadding(0, 0, 0, AndroidUtilities.m1124dp(8.0f));
                    adminedChannelCell = headerCell;
                    break;
                case 4:
                    GroupCreateUserCell groupCreateUserCell = new GroupCreateUserCell(context, 1, 0, false, false, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                    groupCreateUserCell.setPadding(((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft, 0, ((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft, 0);
                    adminedChannelCell = groupCreateUserCell;
                    break;
                case 5:
                    FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, null);
                    flickerLoadingView.setViewType(LimitReachedBottomSheet.this.type == 2 ? 22 : 21);
                    flickerLoadingView.setIsSingleCell(true);
                    flickerLoadingView.setIgnoreHeightCheck(true);
                    flickerLoadingView.setItemsCount(10);
                    adminedChannelCell = flickerLoadingView;
                    break;
                case 6:
                    adminedChannelCell = new View(LimitReachedBottomSheet.this.getContext()) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.5.3
                        @Override // android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(16.0f), TLObject.FLAG_30));
                        }
                    };
                    break;
                case 7:
                    FrameLayout frameLayout = new FrameLayout(LimitReachedBottomSheet.this.getContext());
                    frameLayout.setPadding(((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m1124dp(6.0f), 0, ((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m1124dp(6.0f), 0);
                    TextView textView = new TextView(context);
                    LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
                    if (limitReachedBottomSheet.statisticClickRunnable == null && ChatObject.hasAdminRights(limitReachedBottomSheet.getChat())) {
                        LimitReachedBottomSheet.this.statisticClickRunnable = new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onCreateViewHolder$3();
                            }
                        };
                    }
                    textView.setPadding(AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(LimitReachedBottomSheet.this.statisticClickRunnable == null ? 18.0f : 50.0f), AndroidUtilities.m1124dp(13.0f));
                    textView.setTextSize(1, 16.0f);
                    textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                    textView.setSingleLine(true);
                    frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 0, 11.0f, 0.0f, 11.0f, 0.0f));
                    int iM1124dp = AndroidUtilities.m1124dp(8.0f);
                    int color = Theme.getColor(Theme.key_graySection, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                    int i2 = Theme.key_listSelector;
                    textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iM1124dp, color, ColorUtils.setAlphaComponent(Theme.getColor(i2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider), 76)));
                    textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onCreateViewHolder$4(view);
                        }
                    });
                    if (LimitReachedBottomSheet.this.statisticClickRunnable != null) {
                        ImageView imageView = new ImageView(LimitReachedBottomSheet.this.getContext());
                        imageView.setImageResource(C2888R.drawable.msg_stats);
                        imageView.setColorFilter(Theme.getColor(Theme.key_dialogTextBlack, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        imageView.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
                        imageView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(20.0f), 0, ColorUtils.setAlphaComponent(Theme.getColor(i2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider), 76)));
                        frameLayout.addView(imageView, LayoutHelper.createFrame(40, 40.0f, 21, 15.0f, 0.0f, 15.0f, 0.0f));
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$onCreateViewHolder$5(view);
                            }
                        });
                    }
                    textView.setText(LimitReachedBottomSheet.this.getBoostLink());
                    textView.setGravity(17);
                    adminedChannelCell = frameLayout;
                    break;
                case 8:
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setPadding(((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m1124dp(6.0f), 0, ((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m1124dp(6.0f), 0);
                    linearLayout.setOrientation(1);
                    LoginOrView loginOrView = new LoginOrView(context);
                    final LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
                    SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(LimitReachedBottomSheet.this.isGroup() ? C2888R.string.BoostingStoriesByGiftingGroup2 : C2888R.string.BoostingStoriesByGiftingChannel2));
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2888R.string.BoostingStoriesByGiftingLink));
                    spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.5.1
                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            textPaint.setUnderlineText(false);
                            textPaint.setColor(Theme.getColor(Theme.key_chat_messageLinkIn, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        }

                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            BoostPagerBottomSheet.show(LimitReachedBottomSheet.this.getBaseFragment(), LimitReachedBottomSheet.this.dialogId, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                        }
                    }, 0, spannableStringBuilder.length(), 33);
                    SpannableString spannableString = new SpannableString(">");
                    Drawable drawableMutate = LimitReachedBottomSheet.this.getContext().getResources().getDrawable(C2888R.drawable.msg_arrowright).mutate();
                    int i3 = Theme.key_chat_messageLinkIn;
                    drawableMutate.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(drawableMutate);
                    coloredImageSpan.setColorKey(i3);
                    coloredImageSpan.setSize(AndroidUtilities.m1124dp(18.0f));
                    coloredImageSpan.setWidth(AndroidUtilities.m1124dp(11.0f));
                    coloredImageSpan.setTranslateX(-AndroidUtilities.m1124dp(5.0f));
                    spannableString.setSpan(coloredImageSpan, 0, spannableString.length(), 33);
                    linksTextView.setText(TextUtils.concat(spannableStringBuilderReplaceTags, " ", AndroidUtilities.replaceCharSequence(">", spannableStringBuilder, spannableString)));
                    linksTextView.setTextSize(1, 14.0f);
                    linksTextView.setLineSpacing(AndroidUtilities.m1124dp(3.0f), 1.0f);
                    if (((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider instanceof DarkThemeResourceProvider) {
                        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    } else {
                        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    }
                    linksTextView.setGravity(1);
                    linksTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onCreateViewHolder$0(view);
                        }
                    });
                    loginOrView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            linksTextView.performClick();
                        }
                    });
                    if (LimitReachedBottomSheet.this.isMiniBoostBtnForAdminAvailable()) {
                        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.Copy), false);
                        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$onCreateViewHolder$2(view);
                            }
                        });
                        LinearLayout linearLayout2 = new LinearLayout(context);
                        linearLayout2.addView(LimitReachedBottomSheet.this.boostMiniBtn, LayoutHelper.createLinear(-1, 44, 1.0f, 0, 0, 0, 4, 0));
                        linearLayout2.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 44, 1.0f, 0, 4, 0, 0, 0));
                        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, 44, 12.0f, 12.0f, 12.0f, 8.0f));
                    } else {
                        linearLayout.addView(LimitReachedBottomSheet.this.actionBtn, LayoutHelper.createLinear(-1, 48, 12.0f, 12.0f, 12.0f, 8.0f));
                    }
                    linearLayout.addView(loginOrView, LayoutHelper.createLinear(-1, 48, 0.0f, -5.0f, 0.0f, 0.0f));
                    linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 12.0f, -6.0f, 12.0f, 17.0f));
                    adminedChannelCell = linearLayout;
                    break;
                case 9:
                    LimitReachedBottomSheet limitReachedBottomSheet2 = LimitReachedBottomSheet.this;
                    adminedChannelCell = limitReachedBottomSheet2.new BoostFeatureCell(context, ((BottomSheet) limitReachedBottomSheet2).resourcesProvider);
                    break;
                default:
                    LimitReachedBottomSheet limitReachedBottomSheet3 = LimitReachedBottomSheet.this;
                    HeaderView headerView = LimitReachedBottomSheet.this.new HeaderView(context);
                    limitReachedBottomSheet3.headerView = headerView;
                    adminedChannelCell = headerView;
                    break;
            }
            adminedChannelCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(adminedChannelCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            BoostPagerBottomSheet.show(LimitReachedBottomSheet.this.getBaseFragment(), LimitReachedBottomSheet.this.dialogId, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$2(View view) {
            AndroidUtilities.addToClipboard(LimitReachedBottomSheet.this.getBoostLink());
            LimitReachedBottomSheet.this.lambda$new$0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$3() {
            LimitReachedBottomSheet.this.getBaseFragment().presentFragment(StatisticActivity.create(LimitReachedBottomSheet.this.getChat()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$4(View view) {
            AndroidUtilities.addToClipboard(LimitReachedBottomSheet.this.getBoostLink());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$5(View view) {
            LimitReachedBottomSheet.this.statisticClickRunnable.run();
            LimitReachedBottomSheet.this.lambda$new$0();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String userStatus;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 1) {
                LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
                TLRPC.Chat chat = (TLRPC.Chat) limitReachedBottomSheet.chats.get(i - limitReachedBottomSheet.chatStartRow);
                AdminedChannelCell adminedChannelCell = (AdminedChannelCell) viewHolder.itemView;
                TLRPC.Chat currentChannel = adminedChannelCell.getCurrentChannel();
                adminedChannelCell.setChannel(chat, false);
                adminedChannelCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(chat), currentChannel == chat);
                return;
            }
            if (itemViewType == 9) {
                LimitReachedBottomSheet limitReachedBottomSheet2 = LimitReachedBottomSheet.this;
                int i2 = i - limitReachedBottomSheet2.boostFeaturesStartRow;
                ArrayList arrayList = limitReachedBottomSheet2.boostFeatures;
                if (arrayList == null || i2 < 0 || i2 >= arrayList.size()) {
                    return;
                }
                ((BoostFeatureCell) viewHolder.itemView).set((BoostFeature) LimitReachedBottomSheet.this.boostFeatures.get(i2));
                return;
            }
            if (itemViewType == 3) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                LimitReachedBottomSheet limitReachedBottomSheet3 = LimitReachedBottomSheet.this;
                int i3 = limitReachedBottomSheet3.type;
                if (i3 != 11 && i3 != 34) {
                    if (i3 == 2) {
                        headerCell.setText(LocaleController.getString(C2888R.string.YourPublicCommunities));
                        return;
                    } else {
                        headerCell.setText(LocaleController.getString(C2888R.string.LastActiveCommunities));
                        return;
                    }
                }
                if (limitReachedBottomSheet3.canSendLink) {
                    headerCell.setText(LocaleController.getString(C2888R.string.ChannelInviteViaLink));
                    return;
                } else if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                    headerCell.setText(LocaleController.getString(C2888R.string.ChannelInviteViaLinkRestricted2));
                    return;
                } else {
                    headerCell.setText(LocaleController.getString(C2888R.string.ChannelInviteViaLinkRestricted3));
                    return;
                }
            }
            if (itemViewType != 4) {
                return;
            }
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
            LimitReachedBottomSheet limitReachedBottomSheet4 = LimitReachedBottomSheet.this;
            int i4 = limitReachedBottomSheet4.type;
            if (i4 == 5) {
                TLRPC.Chat chat2 = (TLRPC.Chat) limitReachedBottomSheet4.inactiveChats.get(i - LimitReachedBottomSheet.this.chatStartRow);
                groupCreateUserCell.setObject(chat2, chat2.title, (String) LimitReachedBottomSheet.this.inactiveChatsSignatures.get(i - LimitReachedBottomSheet.this.chatStartRow), ((float) i) != ((float) LimitReachedBottomSheet.this.chatEndRow) - 1.0f);
                groupCreateUserCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(chat2), false);
            } else if (i4 == 11 || i4 == 34) {
                TLRPC.User user = (TLRPC.User) limitReachedBottomSheet4.restrictedUsers.get(i - LimitReachedBottomSheet.this.chatStartRow);
                boolean z = LimitReachedBottomSheet.this.premiumMessagingBlockedUsers != null && LimitReachedBottomSheet.this.premiumMessagingBlockedUsers.contains(Long.valueOf(user.f1825id));
                groupCreateUserCell.overridePremiumBlocked(z ? new TL_account.requirementToContactPremium() : null, false);
                if (!z) {
                    userStatus = LocaleController.formatUserStatus(((BottomSheet) LimitReachedBottomSheet.this).currentAccount, user, null, null);
                } else {
                    userStatus = LocaleController.getString(C2888R.string.InvitePremiumBlockedUser);
                }
                groupCreateUserCell.setObject(user, ContactsController.formatName(user.first_name, user.last_name), userStatus, ((float) i) != ((float) LimitReachedBottomSheet.this.chatEndRow) - 1.0f);
                groupCreateUserCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(user), false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int i2;
            LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
            if (limitReachedBottomSheet.headerRow == i) {
                return 0;
            }
            if (limitReachedBottomSheet.dividerRow == i) {
                return 2;
            }
            if (limitReachedBottomSheet.chatsTitleRow == i) {
                return 3;
            }
            if (limitReachedBottomSheet.loadingRow == i) {
                return 5;
            }
            if (limitReachedBottomSheet.emptyViewDividerRow == i) {
                return 6;
            }
            if (limitReachedBottomSheet.linkRow == i) {
                return 7;
            }
            LimitReachedBottomSheet limitReachedBottomSheet2 = LimitReachedBottomSheet.this;
            if (limitReachedBottomSheet2.bottomRow == i) {
                return 8;
            }
            ArrayList arrayList = limitReachedBottomSheet2.boostFeatures;
            if (arrayList != null && i >= (i2 = limitReachedBottomSheet2.boostFeaturesStartRow) && i <= i2 + arrayList.size()) {
                return 9;
            }
            int i3 = LimitReachedBottomSheet.this.type;
            return (i3 == 5 || i3 == 11 || i3 == 34) ? 4 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LimitReachedBottomSheet.this.rowCount;
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        return new C47575();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMiniBoostBtnForAdminAvailable() {
        return isBoostingForAdminPossible() && ChatObject.hasAdminRights(getChat());
    }

    private boolean isBoostingForAdminPossible() {
        int i = this.type;
        return i == 19 || i == 18 || i == 20 || i == 24 || i == 25 || i == 26 || i == 29 || i == 22 || i == 27 || i == 28 || i == 23 || i == 30 || i == 35;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostLink() {
        TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = this.boostsStatus;
        if (tL_premium_boostsStatus != null && !TextUtils.isEmpty(tL_premium_boostsStatus.boost_url)) {
            return this.boostsStatus.boost_url;
        }
        return ChannelBoostUtilities.createLink(this.currentAccount, this.dialogId);
    }

    public void setCurrentValue(int i) {
        this.currentValue = i;
    }

    public void setVeryLargeFile(boolean z) {
        this.isVeryLargeFile = z;
        updatePremiumButtonText();
    }

    public void setRestrictedUsers(TLRPC.Chat chat, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, String str) {
        this.fromChat = chat;
        this.forceLink = str;
        this.canSendLink = !TextUtils.isEmpty(str) || ChatObject.canUserDoAdminAction(chat, 3);
        this.restrictedUsers = new ArrayList(arrayList);
        this.premiumMessagingBlockedUsers = arrayList2;
        this.premiumInviteBlockedUsers = arrayList3;
        this.selectedChats.clear();
        if (this.canSendLink) {
            ArrayList arrayList4 = this.restrictedUsers;
            int size = arrayList4.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList4.get(i);
                i++;
                TLRPC.User user = (TLRPC.User) obj;
                if (arrayList2 == null || !arrayList2.contains(Long.valueOf(user.f1825id))) {
                    this.selectedChats.add(user);
                }
            }
        }
        updateRows();
        updateButton();
        int i2 = this.type;
        if ((i2 == 11 || i2 == 34) && !MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
            if (((arrayList3 == null || arrayList3.isEmpty()) && (arrayList2 == null || arrayList2.size() < this.restrictedUsers.size())) || arrayList3 == null || arrayList2 == null) {
                return;
            }
            if (!(arrayList3.size() == 1 && arrayList2.size() == 1) && arrayList2.size() < arrayList3.size()) {
                return;
            }
            PremiumButtonView premiumButtonView = this.premiumButtonView;
            if (premiumButtonView != null && premiumButtonView.getParent() != null) {
                ((ViewGroup) this.premiumButtonView.getParent()).removeView(this.premiumButtonView);
            }
            View view = this.divider;
            if (view != null && view.getParent() != null) {
                ((ViewGroup) this.divider.getParent()).removeView(this.divider);
            }
            RecyclerListView recyclerListView = this.recyclerListView;
            if (recyclerListView != null) {
                recyclerListView.setPadding(0, 0, 0, 0);
            }
        }
    }

    public void setDialogId(long j) {
        this.dialogId = j;
        updateRows();
    }

    public void setChatMessageCell(ChatMessageCell chatMessageCell) {
        this.chatMessageCell = chatMessageCell;
    }

    public void setBoostsStats(TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus, boolean z) {
        this.boostsStatus = tL_premium_boostsStatus;
        this.isCurrentChat = z;
        updateRows();
    }

    public void setCanApplyBoost(ChannelBoostsController.CanApplyBoost canApplyBoost) {
        this.canApplyBoost = canApplyBoost;
        updateButton();
        updatePremiumButtonText();
    }

    public void showStatisticButtonInLink(Runnable runnable) {
        this.statisticClickRunnable = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class HeaderView extends LinearLayout {
        BoostCounterView boostCounterView;
        TextView description;
        TextView title;
        LinearLayout titleLinearLayout;

        /* JADX WARN: Removed duplicated region for block: B:155:0x047b  */
        /* JADX WARN: Removed duplicated region for block: B:156:0x048c  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x04f2  */
        /* JADX WARN: Removed duplicated region for block: B:217:0x0537  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x053b  */
        /* JADX WARN: Removed duplicated region for block: B:238:0x058d  */
        /* JADX WARN: Removed duplicated region for block: B:239:0x0592  */
        /* JADX WARN: Removed duplicated region for block: B:242:0x05c5 A[LOOP:0: B:241:0x05c3->B:242:0x05c5, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:245:0x0667  */
        /* JADX WARN: Removed duplicated region for block: B:246:0x0669  */
        /* JADX WARN: Removed duplicated region for block: B:249:0x0670  */
        /* JADX WARN: Removed duplicated region for block: B:252:0x0684  */
        /* JADX WARN: Removed duplicated region for block: B:255:0x068c  */
        /* JADX WARN: Removed duplicated region for block: B:261:0x06ba  */
        /* JADX WARN: Removed duplicated region for block: B:285:0x07dd  */
        /* JADX WARN: Removed duplicated region for block: B:286:0x07df  */
        /* JADX WARN: Removed duplicated region for block: B:289:0x07ed  */
        /* JADX WARN: Removed duplicated region for block: B:290:0x07ef  */
        /* JADX WARN: Removed duplicated region for block: B:293:0x07fb  */
        /* JADX WARN: Removed duplicated region for block: B:303:0x0911  */
        /* JADX WARN: Removed duplicated region for block: B:312:0x0943  */
        /* JADX WARN: Removed duplicated region for block: B:321:0x0964  */
        /* JADX WARN: Removed duplicated region for block: B:337:0x09c1  */
        /* JADX WARN: Removed duplicated region for block: B:341:0x09e6  */
        /* JADX WARN: Removed duplicated region for block: B:344:0x0a42  */
        /* JADX WARN: Removed duplicated region for block: B:346:0x0a53  */
        /* JADX WARN: Removed duplicated region for block: B:417:0x0be5  */
        /* JADX WARN: Removed duplicated region for block: B:427:0x0c0e  */
        /* JADX WARN: Removed duplicated region for block: B:429:0x0c29  */
        /* JADX WARN: Removed duplicated region for block: B:432:0x0c34  */
        /* JADX WARN: Removed duplicated region for block: B:437:0x0c88  */
        /* JADX WARN: Removed duplicated region for block: B:447:0x0dd9  */
        /* JADX WARN: Removed duplicated region for block: B:451:0x0dff A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Removed duplicated region for block: B:454:0x0e12  */
        /* JADX WARN: Removed duplicated region for block: B:455:0x0e26  */
        /* JADX WARN: Removed duplicated region for block: B:458:0x0e3f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public HeaderView(Context context) {
            String pluralString;
            String pluralString2;
            String str;
            boolean z;
            int i;
            int activatedAccountsCount;
            int i2;
            float f;
            float f2;
            int i3;
            boolean z2;
            ArrayList arrayList;
            int iMin;
            int i4;
            TextView textView;
            String str2;
            String string;
            int i5;
            int i6;
            int size;
            int size2;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            float f3;
            float f4;
            float f5;
            super(context);
            setOrientation(1);
            setPadding(((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m1124dp(6.0f), 0, ((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m1124dp(6.0f), 0);
            LimitParams limitParams = LimitReachedBottomSheet.getLimitParams(LimitReachedBottomSheet.this.type, ((BottomSheet) LimitReachedBottomSheet.this).currentAccount);
            LimitReachedBottomSheet.this.limitParams = limitParams;
            int i15 = limitParams.icon;
            MessagesController messagesController = MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount);
            boolean zPremiumFeaturesBlocked = messagesController.premiumFeaturesBlocked();
            boolean zIsGroup = LimitReachedBottomSheet.this.isGroup();
            int i16 = LimitReachedBottomSheet.this.type;
            if (i16 == 31) {
                pluralString = LocaleController.getString(zIsGroup ? C2888R.string.BoostingAdditionalFeaturesSubtitle : C2888R.string.BoostingAdditionalFeaturesSubtitleChannel);
            } else if (i16 == 32) {
                pluralString = LimitReachedBottomSheet.this.getBoostsDescriptionString(true);
            } else if (i16 == 19) {
                if (LimitReachedBottomSheet.this.chatMessageCell != null) {
                    int i17 = LimitReachedBottomSheet.this.chatMessageCell.getMessageObject().messageOwner.from_boosts_applied;
                    TLRPC.Chat chat = LimitReachedBottomSheet.this.getChat();
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("GroupBoostedByUserWithTimes", i17, UserObject.getFirstName(LimitReachedBottomSheet.this.chatMessageCell.getCurrentUser())));
                    spannableStringBuilder.append((CharSequence) " ");
                    spannableStringBuilder.append((CharSequence) LocaleController.formatString(C2888R.string.GroupBoostedByUserWithDescription, chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title));
                    pluralString = spannableStringBuilder.toString();
                } else if (LimitReachedBottomSheet.this.getBaseFragment() instanceof GroupColorActivity) {
                    pluralString = LocaleController.formatPluralString("BoostingGroupBoostWhatAreBoostsDescription", BoostRepository.giveawayBoostsPerPremium(), new Object[0]);
                } else {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(LimitReachedBottomSheet.this.getBoostsDescriptionString(true));
                    if (ChatObject.hasAdminRights(LimitReachedBottomSheet.this.getChat()) && zIsGroup) {
                        spannableStringBuilder2.append((CharSequence) " ").append((CharSequence) LocaleController.getString(C2888R.string.BoostingPremiumUserCanBoostGroupWithLink));
                    }
                    pluralString = spannableStringBuilder2.toString();
                }
            } else if (i16 == 18) {
                if (LimitReachedBottomSheet.this.boostsStatus.level == 0) {
                    pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsDescription : C2888R.string.ChannelNeedBoostsDescription, LocaleController.formatPluralString("MoreBoosts", LimitReachedBottomSheet.this.boostsStatus.next_level_boosts, Integer.valueOf(LimitReachedBottomSheet.this.boostsStatus.next_level_boosts)));
                } else {
                    pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsDescriptionNextLevel : C2888R.string.ChannelNeedBoostsDescriptionNextLevel, LocaleController.formatPluralString("MoreBoosts", LimitReachedBottomSheet.this.boostsStatus.next_level_boosts - LimitReachedBottomSheet.this.boostsStatus.boosts, Integer.valueOf(LimitReachedBottomSheet.this.boostsStatus.next_level_boosts - LimitReachedBottomSheet.this.boostsStatus.boosts)), LocaleController.formatPluralString("BoostStories", LimitReachedBottomSheet.this.boostsStatus.level + 1, new Object[0]));
                }
            } else if (i16 == 20) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForColorDescription : C2888R.string.ChannelNeedBoostsForColorDescription, Integer.valueOf(LimitReachedBottomSheet.this.channelColorLevelMin()));
            } else if (i16 == 24) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForProfileColorDescription : C2888R.string.ChannelNeedBoostsForProfileColorDescription, Integer.valueOf(LimitReachedBottomSheet.this.channelColorLevelMin()));
            } else if (i16 == 29) {
                pluralString = LocaleController.formatString(C2888R.string.GroupNeedBoostsForCustomEmojiPackDescription, Integer.valueOf(messagesController.groupEmojiStickersLevelMin));
            } else if (i16 == 30) {
                pluralString = LocaleController.formatString(C2888R.string.ChannelNeedBoostsForSwitchOffAdsDescription, Integer.valueOf(messagesController.channelRestrictSponsoredLevelMin));
            } else if (i16 == 35) {
                pluralString = LocaleController.formatString(C2888R.string.ChannelNeedBoostsForAutotranslationDescription, Integer.valueOf(messagesController.channelAutotranslationLevelMin));
            } else if (i16 == 25) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForEmojiStatusDescription : C2888R.string.ChannelNeedBoostsForEmojiStatusDescription, Integer.valueOf(zIsGroup ? messagesController.groupEmojiStatusLevelMin : messagesController.channelEmojiStatusLevelMin));
            } else if (i16 == 26) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForWearCollectiblesDescription : C2888R.string.ChannelNeedBoostsForWearCollectiblesDescription, Integer.valueOf(zIsGroup ? messagesController.groupEmojiStatusLevelMin : messagesController.channelEmojiStatusLevelMin));
            } else if (i16 == 27) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForReplyIconDescription : C2888R.string.ChannelNeedBoostsForReplyIconDescription, Integer.valueOf(messagesController.channelBgIconLevelMin));
            } else if (i16 == 28) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForProfileIconDescription : C2888R.string.ChannelNeedBoostsForProfileIconDescription, Integer.valueOf(zIsGroup ? messagesController.groupProfileBgIconLevelMin : messagesController.channelProfileIconLevelMin));
            } else if (i16 == 22) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForWallpaperDescription : C2888R.string.ChannelNeedBoostsForWallpaperDescription, Integer.valueOf(zIsGroup ? messagesController.groupWallpaperLevelMin : messagesController.channelWallpaperLevelMin));
            } else if (i16 == 23) {
                pluralString = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForCustomWallpaperDescription : C2888R.string.ChannelNeedBoostsForCustomWallpaperDescription, Integer.valueOf(zIsGroup ? messagesController.groupCustomWallpaperLevelMin : messagesController.channelCustomWallpaperLevelMin));
            } else if (i16 == 21) {
                pluralString = LocaleController.formatPluralString("ReactionReachLvlForReaction", LimitReachedBottomSheet.this.requiredLvl, Integer.valueOf(LimitReachedBottomSheet.this.requiredLvl));
            } else {
                if (i16 == 11) {
                    if (!LimitReachedBottomSheet.this.canSendLink) {
                        if (ChatObject.isChannelAndNotMegaGroup(LimitReachedBottomSheet.this.fromChat)) {
                            if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                                pluralString2 = LocaleController.formatString(C2888R.string.InviteChannelRestrictedUsers2One, ContactsController.formatName((TLRPC.User) LimitReachedBottomSheet.this.restrictedUsers.get(0)));
                            } else {
                                pluralString2 = LocaleController.formatPluralString("InviteChannelRestrictedUsers2", LimitReachedBottomSheet.this.restrictedUsers.size(), Integer.valueOf(LimitReachedBottomSheet.this.restrictedUsers.size()));
                            }
                        } else if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                            pluralString2 = LocaleController.formatString(C2888R.string.InviteRestrictedUsers2One, ContactsController.formatName((TLRPC.User) LimitReachedBottomSheet.this.restrictedUsers.get(0)));
                        } else {
                            pluralString2 = LocaleController.formatPluralString("InviteRestrictedUsers2", LimitReachedBottomSheet.this.restrictedUsers.size(), Integer.valueOf(LimitReachedBottomSheet.this.restrictedUsers.size()));
                        }
                    } else if (ChatObject.isChannelAndNotMegaGroup(LimitReachedBottomSheet.this.fromChat)) {
                        if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                            pluralString2 = LocaleController.formatString(C2888R.string.InviteChannelRestrictedUsersOne, ContactsController.formatName((TLRPC.User) LimitReachedBottomSheet.this.restrictedUsers.get(0)));
                        } else {
                            pluralString2 = LocaleController.formatPluralString("InviteChannelRestrictedUsers", LimitReachedBottomSheet.this.restrictedUsers.size(), Integer.valueOf(LimitReachedBottomSheet.this.restrictedUsers.size()));
                        }
                    } else if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                        pluralString2 = LocaleController.formatString(C2888R.string.InviteRestrictedUsersOne, ContactsController.formatName((TLRPC.User) LimitReachedBottomSheet.this.restrictedUsers.get(0)));
                    } else {
                        pluralString2 = LocaleController.formatPluralString("InviteRestrictedUsers", LimitReachedBottomSheet.this.restrictedUsers.size(), Integer.valueOf(LimitReachedBottomSheet.this.restrictedUsers.size()));
                    }
                    str = pluralString2;
                    z = true;
                    LimitParams limitParams2 = LimitReachedBottomSheet.this.limitParams;
                    int i18 = limitParams2.defaultLimit;
                    i = limitParams2.premiumLimit;
                    activatedAccountsCount = LimitReachedBottomSheet.this.currentValue;
                    i2 = LimitReachedBottomSheet.this.type;
                    if (i2 != 3) {
                        activatedAccountsCount = MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).dialogFilters.size() - 1;
                    } else if (i2 == 7) {
                        activatedAccountsCount = UserConfig.getActivatedAccountsCount();
                    } else if (i2 == 0) {
                        ArrayList<TLRPC.Dialog> dialogs = MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getDialogs(0);
                        int size3 = dialogs.size();
                        int i19 = 0;
                        for (int i20 = 0; i20 < size3; i20++) {
                            TLRPC.Dialog dialog = dialogs.get(i20);
                            if (!(dialog instanceof TLRPC.TL_dialogFolder) && dialog.pinned) {
                                i19++;
                            }
                        }
                        activatedAccountsCount = i19;
                    }
                    if (!UserConfig.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).isPremium() || LimitReachedBottomSheet.this.isVeryLargeFile) {
                        activatedAccountsCount = i;
                        f = 1.0f;
                    } else {
                        activatedAccountsCount = activatedAccountsCount < 0 ? i18 : activatedAccountsCount;
                        if (LimitReachedBottomSheet.this.type != 7) {
                            f3 = activatedAccountsCount;
                            f4 = i;
                        } else if (activatedAccountsCount > i18) {
                            f3 = activatedAccountsCount - i18;
                            f4 = i - i18;
                        } else {
                            f5 = 0.5f;
                            f = f5;
                        }
                        f5 = f3 / f4;
                        f = f5;
                    }
                    f2 = i18 / i;
                    i3 = LimitReachedBottomSheet.this.type;
                    z2 = i3 != 18 || i3 == 20 || i3 == 24 || i3 == 25 || i3 == 26 || i3 == 29 || i3 == 22 || i3 == 23 || i3 == 19 || i3 == 30 || i3 == 35 || i3 == 21 || i3 == 27 || i3 == 28 || i3 == 32;
                    activatedAccountsCount = z2 ? 0 : activatedAccountsCount;
                    if ((i3 != 11 || i3 == 34) && !MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).premiumFeaturesBlocked() && ((LimitReachedBottomSheet.this.premiumInviteBlockedUsers != null && !LimitReachedBottomSheet.this.premiumInviteBlockedUsers.isEmpty()) || (LimitReachedBottomSheet.this.premiumMessagingBlockedUsers != null && LimitReachedBottomSheet.this.premiumMessagingBlockedUsers.size() >= LimitReachedBottomSheet.this.restrictedUsers.size()))) {
                        arrayList = LimitReachedBottomSheet.this.premiumInviteBlockedUsers.isEmpty() ? LimitReachedBottomSheet.this.premiumMessagingBlockedUsers : LimitReachedBottomSheet.this.premiumInviteBlockedUsers;
                        AvatarsImageView avatarsImageView = new AvatarsImageView(context, false);
                        avatarsImageView.avatarsDrawable.strokeWidth = AndroidUtilities.m1124dp(3.33f);
                        avatarsImageView.setSize(AndroidUtilities.m1124dp(72.0f));
                        avatarsImageView.setStepFactor(0.4f);
                        iMin = Math.min(arrayList.size(), 3);
                        avatarsImageView.setCount(iMin);
                        for (i4 = 0; i4 < iMin; i4++) {
                            Long l = (Long) arrayList.get(i4);
                            l.longValue();
                            avatarsImageView.setObject(i4, ((BottomSheet) LimitReachedBottomSheet.this).currentAccount, MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser(l));
                        }
                        avatarsImageView.commitTransition(false);
                        addView(avatarsImageView, LayoutHelper.createLinear(((iMin - 1) * 30) + 72, 72, 1, 0, 16, 0, 13));
                        TextView textView2 = new TextView(context);
                        textView2.setGravity(17);
                        textView2.setTypeface(AndroidUtilities.bold());
                        textView2.setTextSize(1, 20.0f);
                        int i21 = Theme.key_dialogTextBlack;
                        textView2.setTextColor(Theme.getColor(i21, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        textView2.setText(LocaleController.getString(C2888R.string.InvitePremiumBlockedTitle));
                        addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 9));
                        textView = new TextView(context);
                        textView.setGravity(17);
                        textView.setTextSize(1, 14.0f);
                        textView.setTextColor(Theme.getColor(i21, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 19));
                        boolean z3 = LimitReachedBottomSheet.this.type == 34;
                        boolean z4 = LimitReachedBottomSheet.this.premiumMessagingBlockedUsers != null && LimitReachedBottomSheet.this.premiumMessagingBlockedUsers.size() >= LimitReachedBottomSheet.this.premiumInviteBlockedUsers.size();
                        if (arrayList.size() == 1) {
                            if (z3) {
                                i7 = C2888R.string.InviteCallMessagePremiumBlockedOne;
                            } else {
                                i7 = z4 ? C2888R.string.InviteMessagePremiumBlockedOne : C2888R.string.InvitePremiumBlockedOne;
                            }
                            string = LocaleController.formatString(i7, UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(0))));
                        } else if (arrayList.size() == 2) {
                            if (z3) {
                                i6 = C2888R.string.InviteCallMessagePremiumBlockedTwo;
                            } else {
                                i6 = z4 ? C2888R.string.InviteMessagePremiumBlockedTwo : C2888R.string.InvitePremiumBlockedTwo;
                            }
                            string = LocaleController.formatString(i6, UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(0))), UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(1))));
                        } else if (arrayList.size() == 3) {
                            if (z3) {
                                i5 = C2888R.string.InviteCallMessagePremiumBlockedThree;
                            } else {
                                i5 = z4 ? C2888R.string.InviteMessagePremiumBlockedThree : C2888R.string.InvitePremiumBlockedThree;
                            }
                            string = LocaleController.formatString(i5, UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(0))), UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(1))), UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(2))));
                        } else {
                            if (z3) {
                                str2 = "InviteCallMessagePremiumBlockedMany";
                            } else {
                                str2 = z4 ? "InviteMessagePremiumBlockedMany" : "InvitePremiumBlockedMany";
                            }
                            String pluralString3 = LocaleController.formatPluralString(str2, arrayList.size() - 2, UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(0))), UserObject.getForcedFirstName(MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getUser((Long) arrayList.get(1))));
                            avatarsImageView.setPlus(arrayList.size() - 2, LimitReachedBottomSheet.this.getThemedColor(Theme.key_dialogBackground));
                            string = pluralString3;
                        }
                        textView.setText(AndroidUtilities.replaceTags(string));
                        size = LimitReachedBottomSheet.this.premiumInviteBlockedUsers == null ? 0 : LimitReachedBottomSheet.this.premiumInviteBlockedUsers.size();
                        size2 = LimitReachedBottomSheet.this.premiumMessagingBlockedUsers == null ? 0 : LimitReachedBottomSheet.this.premiumMessagingBlockedUsers.size();
                        if (size - size2 > 0 && ((size != 1 || size2 != 1) && LimitReachedBottomSheet.this.canSendLink)) {
                            PremiumButtonView premiumButtonView = new PremiumButtonView(context, false, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                            ScaleStateListAnimator.apply(premiumButtonView, 0.02f, 1.2f);
                            premiumButtonView.setButton(LocaleController.getString(C2888R.string.InvitePremiumBlockedSubscribe), new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda0
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$new$0(view);
                                }
                            });
                            addView(premiumButtonView, LayoutHelper.createLinear(-1, 48, (((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft / AndroidUtilities.density) + 4.0f, 0.0f, (((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft / AndroidUtilities.density) + 4.0f, 18.0f));
                            TextView textView3 = new TextView(context) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.HeaderView.1
                                private final Paint paint = new Paint(1);

                                @Override // android.view.View
                                protected void dispatchDraw(Canvas canvas) {
                                    this.paint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider), 0.8f));
                                    this.paint.setStyle(Paint.Style.STROKE);
                                    this.paint.setStrokeWidth(1.0f);
                                    float height = getHeight() / 2.0f;
                                    Layout layout = getLayout();
                                    int iMax = 0;
                                    for (int i22 = 0; i22 < layout.getLineCount(); i22++) {
                                        iMax = Math.max(iMax, (int) layout.getLineWidth(i22));
                                    }
                                    float f6 = iMax / 2.0f;
                                    canvas.drawLine(0.0f, height, ((getWidth() / 2.0f) - f6) - AndroidUtilities.m1124dp(8.0f), height, this.paint);
                                    canvas.drawLine((getWidth() / 2.0f) + f6 + AndroidUtilities.m1124dp(8.0f), height, getWidth(), height, this.paint);
                                    super.dispatchDraw(canvas);
                                }
                            };
                            textView3.setGravity(17);
                            textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                            textView3.setText(" " + LocaleController.getString(C2888R.string.InvitePremiumBlockedOr) + " ");
                            textView3.setTextSize(14.0f);
                            addView(textView3, LayoutHelper.createLinear(190, -2, 1, 12, 0, 12, 20));
                            TextView textView4 = new TextView(context);
                            textView4.setGravity(17);
                            textView4.setTypeface(AndroidUtilities.bold());
                            textView4.setTextSize(1, 20.0f);
                            textView4.setTextColor(Theme.getColor(i21, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                            textView4.setText(LocaleController.getString(C2888R.string.InviteBlockedTitle));
                            addView(textView4, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 9));
                            TextView textView5 = new TextView(context);
                            textView5.setGravity(17);
                            textView5.setTextSize(1, 14.0f);
                            textView5.setTextColor(Theme.getColor(i21, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                            if (LimitReachedBottomSheet.this.premiumInviteBlockedUsers.size() <= 1) {
                                textView5.setText(LocaleController.getString(C2888R.string.InviteBlockedOneMessage));
                            } else {
                                textView5.setText(LocaleController.getString(C2888R.string.InviteBlockedManyMessage));
                            }
                            addView(textView5, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 19));
                        } else {
                            ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(8.0f);
                            LimitReachedBottomSheet.this.premiumButtonSetSubscribe = true;
                        }
                        LimitReachedBottomSheet.this.updatePremiumButtonText();
                        return;
                    }
                    i8 = LimitReachedBottomSheet.this.type;
                    if (i8 != 31 && i8 != 34) {
                        LimitPreviewView limitPreviewView = new LimitPreviewView(context, i15, activatedAccountsCount, i, f2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.HeaderView.2
                            @Override // android.view.View
                            public void invalidate() {
                                if (LimitReachedBottomSheet.this.lockInvalidation) {
                                    return;
                                }
                                super.invalidate();
                            }
                        };
                        LimitReachedBottomSheet.this.limitPreviewView = limitPreviewView;
                        if (!z2) {
                            if (LimitReachedBottomSheet.this.boostsStatus != null) {
                                LimitReachedBottomSheet.this.limitPreviewView.setBoosts(LimitReachedBottomSheet.this.boostsStatus, LimitReachedBottomSheet.this.canApplyBoost != null && LimitReachedBottomSheet.this.canApplyBoost.boostedNow);
                            }
                        } else {
                            limitPreviewView.setBagePosition(f);
                            LimitReachedBottomSheet.this.limitPreviewView.setType(LimitReachedBottomSheet.this.type);
                            LimitReachedBottomSheet.this.limitPreviewView.defaultCount.setVisibility(8);
                            if (!z) {
                                if (UserConfig.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).isPremium() || LimitReachedBottomSheet.this.isVeryLargeFile) {
                                    LimitReachedBottomSheet.this.limitPreviewView.premiumCount.setVisibility(8);
                                    if (LimitReachedBottomSheet.this.type == 6) {
                                        LimitReachedBottomSheet.this.limitPreviewView.defaultCount.setText("2 GB");
                                    } else {
                                        LimitReachedBottomSheet.this.limitPreviewView.defaultCount.setText(Integer.toString(i18));
                                    }
                                    LimitReachedBottomSheet.this.limitPreviewView.defaultCount.setVisibility(0);
                                }
                            } else {
                                LimitReachedBottomSheet.this.limitPreviewView.setPremiumLocked();
                            }
                        }
                        i14 = LimitReachedBottomSheet.this.type;
                        if (i14 != 2 || i14 == 5) {
                            LimitReachedBottomSheet.this.limitPreviewView.setDelayedAnimation();
                        }
                        addView(LimitReachedBottomSheet.this.limitPreviewView, LayoutHelper.createLinear(-1, -2, 0.0f, 0, -4, 0, -4, 0));
                    }
                    if (LimitReachedBottomSheet.this.type == 31) {
                        FrameLayout frameLayout = new FrameLayout(context);
                        ImageView imageView = new ImageView(context);
                        imageView.setImageDrawable(ContextCompat.getDrawable(getContext(), C2888R.drawable.large_boosts));
                        frameLayout.addView(imageView, LayoutHelper.createFrame(-2, -2, 17));
                        frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(79.0f), Theme.getColor(Theme.key_featuredStickers_addButton)));
                        addView(frameLayout, LayoutHelper.createLinear(79, 79, 1, 0, 23, 0, 0));
                    }
                    TextView textView6 = new TextView(context);
                    this.title = textView6;
                    textView6.setTypeface(AndroidUtilities.bold());
                    i9 = LimitReachedBottomSheet.this.type;
                    if (i9 != 31) {
                        this.title.setText(LocaleController.getString(C2888R.string.BoostingAdditionalFeaturesTitle));
                    } else if (i9 == 32) {
                        this.title.setText(LimitReachedBottomSheet.this.getBoostsTitleString());
                    } else if (i9 == 19) {
                        if (LimitReachedBottomSheet.this.getBaseFragment() instanceof GroupColorActivity) {
                            this.title.setText(LocaleController.getString(C2888R.string.BoostingGroupBoostWhatAreBoosts));
                        } else {
                            this.title.setText(LimitReachedBottomSheet.this.getBoostsTitleString());
                        }
                    } else if (i9 == 30) {
                        this.title.setText(LimitReachedBottomSheet.this.getBoostsTitleString());
                    } else if (i9 == 35) {
                        this.title.setText(LocaleController.getString(C2888R.string.UnlockBoostChannelAutotranslation));
                    } else if (i9 == 18) {
                        if (LimitReachedBottomSheet.this.boostsStatus.level == 0) {
                            this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableStories));
                        } else {
                            this.title.setText(LocaleController.getString(C2888R.string.BoostingIncreaseLevel));
                        }
                    } else if (i9 == 21) {
                        this.title.setText(LocaleController.getString(C2888R.string.ReactionCustomReactions));
                    } else if (i9 == 20) {
                        this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableColor));
                    } else if (i9 == 24) {
                        this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableProfileColor));
                    } else if (i9 == 27) {
                        this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableLinkIcon));
                    } else {
                        i10 = 28;
                        if (i9 == 28) {
                            this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableProfileIcon));
                        } else if (i9 == 25) {
                            this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableEmojiStatus));
                        } else if (i9 == 26) {
                            this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableWearCollectibles));
                        } else if (i9 == 29) {
                            this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableGroupEmojiPack));
                        } else {
                            i11 = 22;
                            if (i9 == 22 || i9 == 23) {
                                this.title.setText(LocaleController.getString(C2888R.string.BoostingEnableWallpaper));
                            } else if (i9 == 11) {
                                if (LimitReachedBottomSheet.this.canSendLink) {
                                    this.title.setText(LocaleController.getString(C2888R.string.ChannelInviteViaLink));
                                } else {
                                    this.title.setText(LocaleController.getString(C2888R.string.ChannelInviteViaLinkRestricted));
                                }
                            } else if (i9 == 34) {
                                this.title.setText(LocaleController.getString(C2888R.string.CallInviteViaLinkTitle));
                            } else if (i9 == 6) {
                                this.title.setText(LocaleController.getString(C2888R.string.FileTooLarge));
                            } else if (i9 == 14 && LimitReachedBottomSheet.this.storiesCount > 1) {
                                this.title.setText(LocaleController.getString(C2888R.string.CreateMultipleStories));
                            } else {
                                this.title.setText(LocaleController.getString(C2888R.string.LimitReached));
                            }
                            this.title.setTextSize(1, 20.0f);
                            TextView textView7 = this.title;
                            i12 = Theme.key_windowBackgroundWhiteBlackText;
                            textView7.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                            this.title.setGravity(17);
                            i13 = LimitReachedBottomSheet.this.type;
                            if (i13 != 19 || i13 == 32 || LimitReachedBottomSheet.this.isMiniBoostBtnForAdminAvailable()) {
                                BoostCounterView boostCounterView = new BoostCounterView(context, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                                this.boostCounterView = boostCounterView;
                                boostCounterView.setCount(LimitReachedBottomSheet.this.canApplyBoost.boostCount, false);
                                if (LimitReachedBottomSheet.this.type == 32) {
                                    this.boostCounterView.setVisibility(8);
                                }
                                if (!LimitReachedBottomSheet.this.isCurrentChat) {
                                    LinearLayout linearLayout = new LinearLayout(context);
                                    this.titleLinearLayout = linearLayout;
                                    linearLayout.setOrientation(0);
                                    this.titleLinearLayout.setWeightSum(1.0f);
                                    this.titleLinearLayout.addView(this.title, LayoutHelper.createLinear(-2, -2, 1.0f, 0));
                                    this.titleLinearLayout.addView(this.boostCounterView, LayoutHelper.createLinear(-2, -2, 48, 0, 2, 0, 0));
                                    addView(this.titleLinearLayout, LayoutHelper.createLinear(-2, -2, 1, 12, z ? 8 : i11, 12, 9));
                                } else {
                                    addView(this.title, LayoutHelper.createLinear(-2, -2, 1, 0, z ? 8 : i11, 0, 0));
                                    LinearLayout linearLayout2 = new LinearLayout(getContext());
                                    linearLayout2.setOrientation(0);
                                    linearLayout2.setClipChildren(false);
                                    FrameLayout frameLayout2 = new FrameLayout(getContext());
                                    frameLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(14.0f), Theme.getColor(Theme.key_windowBackgroundGray, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider)));
                                    BackupImageView backupImageView = new BackupImageView(getContext());
                                    backupImageView.setRoundRadius(AndroidUtilities.m1124dp(14.0f));
                                    TLRPC.Chat chat2 = MessagesController.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).getChat(Long.valueOf(-LimitReachedBottomSheet.this.dialogId));
                                    AvatarDrawable avatarDrawable = new AvatarDrawable();
                                    avatarDrawable.setInfo(((BottomSheet) LimitReachedBottomSheet.this).currentAccount, chat2);
                                    backupImageView.setForUserOrChat(chat2, avatarDrawable);
                                    frameLayout2.addView(backupImageView, LayoutHelper.createFrame(i10, 28.0f));
                                    TextView textView8 = new TextView(getContext());
                                    if (chat2 != null) {
                                        textView8.setText(chat2.title);
                                    }
                                    textView8.setSingleLine(true);
                                    textView8.setMaxLines(1);
                                    textView8.setEllipsize(TextUtils.TruncateAt.END);
                                    textView8.setTextSize(1, 13.0f);
                                    textView8.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                                    frameLayout2.addView(textView8, LayoutHelper.createFrame(-2, -2.0f, 16, 36.0f, 0.0f, 12.0f, 0.0f));
                                    linearLayout2.addView(frameLayout2, LayoutHelper.createLinear(-2, 28, 80, 18, 0, 18, 0));
                                    LayoutTransition layoutTransition = new LayoutTransition();
                                    layoutTransition.setDuration(100L);
                                    layoutTransition.enableTransitionType(4);
                                    linearLayout2.setLayoutTransition(layoutTransition);
                                    linearLayout2.addView(this.boostCounterView, LayoutHelper.createLinear(-2, -2, 48, -30, 2, 18, 0));
                                    addView(linearLayout2, LayoutHelper.createLinear(-2, 38, 17, 0, -4, 0, 12));
                                    ScaleStateListAnimator.apply(linearLayout2);
                                    linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$HeaderView$$ExternalSyntheticLambda1
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            this.f$0.lambda$new$1(view);
                                        }
                                    });
                                }
                            } else {
                                addView(this.title, LayoutHelper.createLinear(-2, -2, 1, 0, z ? 8 : i11, 0, 10));
                            }
                            TextView textView9 = new TextView(context);
                            this.description = textView9;
                            textView9.setText(AndroidUtilities.replaceTags(str));
                            this.description.setTextSize(1, 14.0f);
                            this.description.setGravity(1);
                            TextView textView10 = this.description;
                            textView10.setLineSpacing(textView10.getLineSpacingExtra(), this.description.getLineSpacingMultiplier() * 1.1f);
                            if (LimitReachedBottomSheet.this.type == 18 || !(((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider instanceof DarkThemeResourceProvider)) {
                                this.description.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                            } else {
                                this.description.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                            }
                            if (LimitReachedBottomSheet.this.type != 19) {
                                addView(this.description, LayoutHelper.createLinear(-2, -2, 1, 24, -2, 24, 17));
                            } else {
                                addView(this.description, LayoutHelper.createLinear(-2, -2, 1, 24, 0, 24, 24));
                            }
                            if (LimitReachedBottomSheet.this.type == 31) {
                                ((ViewGroup.MarginLayoutParams) this.description.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(15.0f);
                                ((ViewGroup.MarginLayoutParams) this.title.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(6.0f);
                                ((ViewGroup.MarginLayoutParams) this.title.getLayoutParams()).topMargin = AndroidUtilities.m1124dp(12.0f);
                            }
                            LimitReachedBottomSheet.this.updatePremiumButtonText();
                        }
                        i11 = 22;
                        this.title.setTextSize(1, 20.0f);
                        TextView textView72 = this.title;
                        i12 = Theme.key_windowBackgroundWhiteBlackText;
                        textView72.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        this.title.setGravity(17);
                        i13 = LimitReachedBottomSheet.this.type;
                        if (i13 != 19) {
                            BoostCounterView boostCounterView2 = new BoostCounterView(context, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                            this.boostCounterView = boostCounterView2;
                            boostCounterView2.setCount(LimitReachedBottomSheet.this.canApplyBoost.boostCount, false);
                            if (LimitReachedBottomSheet.this.type == 32) {
                            }
                            if (!LimitReachedBottomSheet.this.isCurrentChat) {
                            }
                        }
                        TextView textView92 = new TextView(context);
                        this.description = textView92;
                        textView92.setText(AndroidUtilities.replaceTags(str));
                        this.description.setTextSize(1, 14.0f);
                        this.description.setGravity(1);
                        TextView textView102 = this.description;
                        textView102.setLineSpacing(textView102.getLineSpacingExtra(), this.description.getLineSpacingMultiplier() * 1.1f);
                        if (LimitReachedBottomSheet.this.type == 18) {
                            this.description.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        } else {
                            this.description.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        }
                        if (LimitReachedBottomSheet.this.type != 19) {
                        }
                        if (LimitReachedBottomSheet.this.type == 31) {
                        }
                        LimitReachedBottomSheet.this.updatePremiumButtonText();
                    }
                    i11 = 22;
                    i10 = 28;
                    this.title.setTextSize(1, 20.0f);
                    TextView textView722 = this.title;
                    i12 = Theme.key_windowBackgroundWhiteBlackText;
                    textView722.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    this.title.setGravity(17);
                    i13 = LimitReachedBottomSheet.this.type;
                    if (i13 != 19) {
                    }
                    TextView textView922 = new TextView(context);
                    this.description = textView922;
                    textView922.setText(AndroidUtilities.replaceTags(str));
                    this.description.setTextSize(1, 14.0f);
                    this.description.setGravity(1);
                    TextView textView1022 = this.description;
                    textView1022.setLineSpacing(textView1022.getLineSpacingExtra(), this.description.getLineSpacingMultiplier() * 1.1f);
                    if (LimitReachedBottomSheet.this.type == 18) {
                    }
                    if (LimitReachedBottomSheet.this.type != 19) {
                    }
                    if (LimitReachedBottomSheet.this.type == 31) {
                    }
                    LimitReachedBottomSheet.this.updatePremiumButtonText();
                }
                if (i16 == 34) {
                    if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                        pluralString = LocaleController.formatString(C2888R.string.InviteCallRestrictedUsersOne, ContactsController.formatName((TLRPC.User) LimitReachedBottomSheet.this.restrictedUsers.get(0)));
                    } else {
                        pluralString = LocaleController.formatPluralString("InviteCallRestrictedUsers", LimitReachedBottomSheet.this.restrictedUsers.size(), Integer.valueOf(LimitReachedBottomSheet.this.restrictedUsers.size()));
                    }
                } else if (!zPremiumFeaturesBlocked) {
                    pluralString = (UserConfig.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).isPremium() || LimitReachedBottomSheet.this.isVeryLargeFile) ? LimitReachedBottomSheet.this.limitParams.descriptionStrPremium : LimitReachedBottomSheet.this.limitParams.descriptionStr;
                } else {
                    pluralString = LimitReachedBottomSheet.this.limitParams.descriptionStrLocked;
                }
            }
            str = pluralString;
            z = zPremiumFeaturesBlocked;
            LimitParams limitParams22 = LimitReachedBottomSheet.this.limitParams;
            int i182 = limitParams22.defaultLimit;
            i = limitParams22.premiumLimit;
            activatedAccountsCount = LimitReachedBottomSheet.this.currentValue;
            i2 = LimitReachedBottomSheet.this.type;
            if (i2 != 3) {
            }
            if (UserConfig.getInstance(((BottomSheet) LimitReachedBottomSheet.this).currentAccount).isPremium()) {
                activatedAccountsCount = i;
                f = 1.0f;
            }
            f2 = i182 / i;
            i3 = LimitReachedBottomSheet.this.type;
            if (i3 != 18) {
            }
            if (z2) {
            }
            if (i3 != 11) {
                if (LimitReachedBottomSheet.this.premiumInviteBlockedUsers.isEmpty()) {
                }
                AvatarsImageView avatarsImageView2 = new AvatarsImageView(context, false);
                avatarsImageView2.avatarsDrawable.strokeWidth = AndroidUtilities.m1124dp(3.33f);
                avatarsImageView2.setSize(AndroidUtilities.m1124dp(72.0f));
                avatarsImageView2.setStepFactor(0.4f);
                iMin = Math.min(arrayList.size(), 3);
                avatarsImageView2.setCount(iMin);
                while (i4 < iMin) {
                }
                avatarsImageView2.commitTransition(false);
                addView(avatarsImageView2, LayoutHelper.createLinear(((iMin - 1) * 30) + 72, 72, 1, 0, 16, 0, 13));
                TextView textView22 = new TextView(context);
                textView22.setGravity(17);
                textView22.setTypeface(AndroidUtilities.bold());
                textView22.setTextSize(1, 20.0f);
                int i212 = Theme.key_dialogTextBlack;
                textView22.setTextColor(Theme.getColor(i212, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                textView22.setText(LocaleController.getString(C2888R.string.InvitePremiumBlockedTitle));
                addView(textView22, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 9));
                textView = new TextView(context);
                textView.setGravity(17);
                textView.setTextSize(1, 14.0f);
                textView.setTextColor(Theme.getColor(i212, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 19));
                if (LimitReachedBottomSheet.this.type == 34) {
                }
                if (LimitReachedBottomSheet.this.premiumMessagingBlockedUsers != null) {
                }
                if (arrayList.size() == 1) {
                }
                textView.setText(AndroidUtilities.replaceTags(string));
                if (LimitReachedBottomSheet.this.premiumInviteBlockedUsers == null) {
                }
                if (LimitReachedBottomSheet.this.premiumMessagingBlockedUsers == null) {
                }
                if (size - size2 > 0) {
                    ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(8.0f);
                    LimitReachedBottomSheet.this.premiumButtonSetSubscribe = true;
                }
                LimitReachedBottomSheet.this.updatePremiumButtonText();
                return;
            }
            if (LimitReachedBottomSheet.this.premiumInviteBlockedUsers.isEmpty()) {
            }
            AvatarsImageView avatarsImageView22 = new AvatarsImageView(context, false);
            avatarsImageView22.avatarsDrawable.strokeWidth = AndroidUtilities.m1124dp(3.33f);
            avatarsImageView22.setSize(AndroidUtilities.m1124dp(72.0f));
            avatarsImageView22.setStepFactor(0.4f);
            iMin = Math.min(arrayList.size(), 3);
            avatarsImageView22.setCount(iMin);
            while (i4 < iMin) {
            }
            avatarsImageView22.commitTransition(false);
            addView(avatarsImageView22, LayoutHelper.createLinear(((iMin - 1) * 30) + 72, 72, 1, 0, 16, 0, 13));
            TextView textView222 = new TextView(context);
            textView222.setGravity(17);
            textView222.setTypeface(AndroidUtilities.bold());
            textView222.setTextSize(1, 20.0f);
            int i2122 = Theme.key_dialogTextBlack;
            textView222.setTextColor(Theme.getColor(i2122, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
            textView222.setText(LocaleController.getString(C2888R.string.InvitePremiumBlockedTitle));
            addView(textView222, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 9));
            textView = new TextView(context);
            textView.setGravity(17);
            textView.setTextSize(1, 14.0f);
            textView.setTextColor(Theme.getColor(i2122, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
            addView(textView, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 19));
            if (LimitReachedBottomSheet.this.type == 34) {
            }
            if (LimitReachedBottomSheet.this.premiumMessagingBlockedUsers != null) {
            }
            if (arrayList.size() == 1) {
            }
            textView.setText(AndroidUtilities.replaceTags(string));
            if (LimitReachedBottomSheet.this.premiumInviteBlockedUsers == null) {
            }
            if (LimitReachedBottomSheet.this.premiumMessagingBlockedUsers == null) {
            }
            if (size - size2 > 0) {
            }
            LimitReachedBottomSheet.this.updatePremiumButtonText();
            return;
            i8 = LimitReachedBottomSheet.this.type;
            if (i8 != 31) {
                LimitPreviewView limitPreviewView2 = new LimitPreviewView(context, i15, activatedAccountsCount, i, f2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.HeaderView.2
                    @Override // android.view.View
                    public void invalidate() {
                        if (LimitReachedBottomSheet.this.lockInvalidation) {
                            return;
                        }
                        super.invalidate();
                    }
                };
                LimitReachedBottomSheet.this.limitPreviewView = limitPreviewView2;
                if (!z2) {
                }
                i14 = LimitReachedBottomSheet.this.type;
                if (i14 != 2) {
                    LimitReachedBottomSheet.this.limitPreviewView.setDelayedAnimation();
                    addView(LimitReachedBottomSheet.this.limitPreviewView, LayoutHelper.createLinear(-1, -2, 0.0f, 0, -4, 0, -4, 0));
                }
            }
            if (LimitReachedBottomSheet.this.type == 31) {
            }
            TextView textView62 = new TextView(context);
            this.title = textView62;
            textView62.setTypeface(AndroidUtilities.bold());
            i9 = LimitReachedBottomSheet.this.type;
            if (i9 != 31) {
            }
            i11 = 22;
            i10 = 28;
            this.title.setTextSize(1, 20.0f);
            TextView textView7222 = this.title;
            i12 = Theme.key_windowBackgroundWhiteBlackText;
            textView7222.setTextColor(Theme.getColor(i12, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
            this.title.setGravity(17);
            i13 = LimitReachedBottomSheet.this.type;
            if (i13 != 19) {
            }
            TextView textView9222 = new TextView(context);
            this.description = textView9222;
            textView9222.setText(AndroidUtilities.replaceTags(str));
            this.description.setTextSize(1, 14.0f);
            this.description.setGravity(1);
            TextView textView10222 = this.description;
            textView10222.setLineSpacing(textView10222.getLineSpacingExtra(), this.description.getLineSpacingMultiplier() * 1.1f);
            if (LimitReachedBottomSheet.this.type == 18) {
            }
            if (LimitReachedBottomSheet.this.type != 19) {
            }
            if (LimitReachedBottomSheet.this.type == 31) {
            }
            LimitReachedBottomSheet.this.updatePremiumButtonText();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (LimitReachedBottomSheet.this.parentFragment == null) {
                return;
            }
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            LimitReachedBottomSheet.this.parentFragment.showAsSheet(new PremiumPreviewFragment("invite_privacy"), bottomSheetParams);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            LimitReachedBottomSheet.this.getBaseFragment().presentFragment(ChatActivity.m1239of(LimitReachedBottomSheet.this.dialogId));
            LimitReachedBottomSheet.this.lambda$new$0();
        }

        public void recreateTitleAndDescription() {
            int iIndexOfChild = indexOfChild(this.description);
            if (LimitReachedBottomSheet.this.isCurrentChat) {
                int iIndexOfChild2 = indexOfChild(this.titleLinearLayout);
                removeView(this.titleLinearLayout);
                this.titleLinearLayout.removeView(this.title);
                this.titleLinearLayout.removeView(this.boostCounterView);
                LinearLayout linearLayout = new LinearLayout(getContext());
                this.titleLinearLayout = linearLayout;
                linearLayout.setOrientation(0);
                this.titleLinearLayout.setWeightSum(1.0f);
                this.titleLinearLayout.addView(this.title, LayoutHelper.createLinear(-2, -2, 1.0f, 0));
                this.titleLinearLayout.addView(this.boostCounterView, LayoutHelper.createLinear(-2, -2, 48, 0, 2, 0, 0));
                addView(this.titleLinearLayout, iIndexOfChild2, LayoutHelper.createLinear(-2, -2, 1, 25, 22, 12, 9));
            } else {
                int iIndexOfChild3 = indexOfChild(this.title);
                removeView(this.title);
                TextView textView = new TextView(getContext());
                this.title = textView;
                textView.setTypeface(AndroidUtilities.bold());
                this.title.setTextSize(1, 20.0f);
                this.title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                this.title.setGravity(17);
                addView(this.title, iIndexOfChild3, LayoutHelper.createLinear(-2, -2, 1, 0, 22, 0, 0));
            }
            removeView(this.description);
            TextView textView2 = new TextView(getContext());
            this.description = textView2;
            textView2.setTextSize(1, 14.0f);
            TextView textView3 = this.description;
            textView3.setLineSpacing(textView3.getLineSpacingExtra(), this.description.getLineSpacingMultiplier() * 1.1f);
            this.description.setGravity(1);
            this.description.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
            addView(this.description, iIndexOfChild, LayoutHelper.createLinear(-2, -2, 1, 24, -2, 24, 17));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostsTitleString() {
        TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = this.boostsStatus;
        if (tL_premium_boostsStatus.next_level_boosts == 0) {
            return LocaleController.formatString("BoostsMaxLevelReached", C2888R.string.BoostsMaxLevelReached, new Object[0]);
        }
        if (tL_premium_boostsStatus.level > 0 && !this.canApplyBoost.alreadyActive) {
            return LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel);
        }
        if (this.isCurrentChat) {
            if (this.type == 32) {
                return LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel);
            }
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
            if (this.canApplyBoost.alreadyActive) {
                return LocaleController.formatString("YouBoostedChannel2", C2888R.string.YouBoostedChannel2, chat.title);
            }
            return LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel);
        }
        if (this.type == 32) {
            return LocaleController.getString(isGroup() ? C2888R.string.BoostGroup : C2888R.string.BoostChannel);
        }
        if (this.canApplyBoost.alreadyActive) {
            return LocaleController.getString(isGroup() ? C2888R.string.YouBoostedGroup : C2888R.string.YouBoostedChannel);
        }
        return LocaleController.getString(isGroup() ? C2888R.string.BoostingEnableStoriesForGroup : C2888R.string.BoostingEnableStoriesForChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC.Chat getChat() {
        return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
    }

    private TLRPC.ChatFull getChatFull() {
        return MessagesController.getInstance(this.currentAccount).getChatFull(-this.dialogId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGroup() {
        return !ChatObject.isChannelAndNotMegaGroup(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId)));
    }

    private String getDescriptionForRemoveRestrictions() {
        TLRPC.Chat chat = getChat();
        return LocaleController.formatPluralString("BoostingRemoveRestrictionsSubtitle", getNeededBoostsForUnlockGroup(), chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title);
    }

    private int getNeededBoostsForUnlockGroup() {
        TLRPC.ChatFull chatFull = getChatFull();
        return Math.max(chatFull.boosts_unrestrict - chatFull.boosts_applied, 0);
    }

    private String getBoostDescriptionStringAfterBoost() {
        String string;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        boolean zIsGroup = isGroup();
        int i = this.type;
        if (i == 20) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForColorDescription : C2888R.string.ChannelNeedBoostsForColorDescription, Integer.valueOf(channelColorLevelMin()));
        } else if (i == 24) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForProfileColorDescription : C2888R.string.ChannelNeedBoostsForProfileColorDescription, Integer.valueOf(channelColorLevelMin()));
        } else if (i == 29) {
            string = LocaleController.formatString(C2888R.string.GroupNeedBoostsForCustomEmojiPackDescription, Integer.valueOf(messagesController.groupEmojiStickersLevelMin));
        } else if (i == 30) {
            string = LocaleController.formatString(C2888R.string.ChannelNeedBoostsForSwitchOffAdsDescription, Integer.valueOf(messagesController.channelRestrictSponsoredLevelMin));
        } else if (i == 35) {
            string = LocaleController.formatString(C2888R.string.ChannelNeedBoostsForAutotranslationDescription, Integer.valueOf(messagesController.channelAutotranslationLevelMin));
        } else if (i == 25) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForEmojiStatusDescription : C2888R.string.ChannelNeedBoostsForEmojiStatusDescription, Integer.valueOf(zIsGroup ? messagesController.groupEmojiStatusLevelMin : messagesController.channelEmojiStatusLevelMin));
        } else if (i == 26) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForWearCollectiblesDescription : C2888R.string.ChannelNeedBoostsForWearCollectiblesDescription, Integer.valueOf(zIsGroup ? messagesController.groupEmojiStatusLevelMin : messagesController.channelEmojiStatusLevelMin));
        } else if (i == 27) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForReplyIconDescription : C2888R.string.ChannelNeedBoostsForReplyIconDescription, Integer.valueOf(messagesController.channelBgIconLevelMin));
        } else if (i == 28) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForProfileIconDescription : C2888R.string.ChannelNeedBoostsForProfileIconDescription, Integer.valueOf(zIsGroup ? messagesController.groupProfileBgIconLevelMin : messagesController.channelProfileIconLevelMin));
        } else if (i == 22) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForWallpaperDescription : C2888R.string.ChannelNeedBoostsForWallpaperDescription, Integer.valueOf(zIsGroup ? messagesController.groupWallpaperLevelMin : messagesController.channelWallpaperLevelMin));
        } else if (i == 23) {
            string = LocaleController.formatString(zIsGroup ? C2888R.string.GroupNeedBoostsForCustomWallpaperDescription : C2888R.string.ChannelNeedBoostsForCustomWallpaperDescription, Integer.valueOf(zIsGroup ? messagesController.groupCustomWallpaperLevelMin : messagesController.channelCustomWallpaperLevelMin));
        } else {
            string = null;
        }
        return string != null ? string : getBoostsDescriptionString(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostsDescriptionString(boolean z) {
        String string;
        if (this.type == 32) {
            return getDescriptionForRemoveRestrictions();
        }
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        if (chat == null) {
            string = LocaleController.getString(isGroup() ? C2888R.string.AccDescrGroup : C2888R.string.AccDescrChannel);
        } else {
            string = chat.title;
        }
        TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = this.boostsStatus;
        boolean z2 = tL_premium_boostsStatus.boosts == tL_premium_boostsStatus.current_level_boosts;
        if (isMiniBoostBtnForAdminAvailable() && this.boostsStatus.next_level_boosts != 0 && z) {
            int i = isGroup() ? C2888R.string.GroupNeedBoostsDescriptionForNewFeatures : C2888R.string.ChannelNeedBoostsDescriptionForNewFeatures;
            TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus2 = this.boostsStatus;
            int i2 = tL_premium_boostsStatus2.next_level_boosts;
            int i3 = tL_premium_boostsStatus2.boosts;
            return LocaleController.formatString(i, string, LocaleController.formatPluralString("MoreBoosts", i2 - i3, Integer.valueOf(i2 - i3)));
        }
        if (z2 && this.canApplyBoost.alreadyActive) {
            if (this.boostsStatus.level == 1) {
                return LocaleController.formatString(isGroup() ? C2888R.string.GroupBoostsJustReachedLevel1 : C2888R.string.ChannelBoostsJustReachedLevel1, new Object[0]);
            }
            return LocaleController.formatString(isGroup() ? C2888R.string.GroupBoostsJustReachedLevelNext : C2888R.string.ChannelBoostsJustReachedLevelNext, Integer.valueOf(this.boostsStatus.level), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level, new Object[0]));
        }
        if (this.canApplyBoost.alreadyActive) {
            TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus3 = this.boostsStatus;
            if (tL_premium_boostsStatus3.level == 0) {
                int i4 = isGroup() ? C2888R.string.GroupNeedBoostsDescriptionForNewFeatures : C2888R.string.ChannelNeedBoostsDescriptionForNewFeatures;
                TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus4 = this.boostsStatus;
                int i5 = tL_premium_boostsStatus4.next_level_boosts;
                int i6 = tL_premium_boostsStatus4.boosts;
                return LocaleController.formatString(i4, string, LocaleController.formatPluralString("MoreBoosts", i5 - i6, Integer.valueOf(i5 - i6)));
            }
            if (tL_premium_boostsStatus3.next_level_boosts == 0) {
                return LocaleController.formatString(isGroup() ? C2888R.string.GroupBoostsJustReachedLevelNext : C2888R.string.ChannelBoostsJustReachedLevelNext, Integer.valueOf(this.boostsStatus.level), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level + 1, new Object[0]));
            }
            int i7 = isGroup() ? C2888R.string.GroupNeedBoostsDescriptionForNewFeatures : C2888R.string.ChannelNeedBoostsDescriptionForNewFeatures;
            TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus5 = this.boostsStatus;
            int i8 = tL_premium_boostsStatus5.next_level_boosts;
            int i9 = tL_premium_boostsStatus5.boosts;
            return LocaleController.formatString(i7, string, LocaleController.formatPluralString("MoreBoosts", i8 - i9, Integer.valueOf(i8 - i9)));
        }
        TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus6 = this.boostsStatus;
        if (tL_premium_boostsStatus6.level == 0) {
            int i10 = isGroup() ? C2888R.string.GroupNeedBoostsDescriptionForNewFeatures : C2888R.string.ChannelNeedBoostsDescriptionForNewFeatures;
            TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus7 = this.boostsStatus;
            int i11 = tL_premium_boostsStatus7.next_level_boosts;
            int i12 = tL_premium_boostsStatus7.boosts;
            return LocaleController.formatString(i10, string, LocaleController.formatPluralString("MoreBoosts", i11 - i12, Integer.valueOf(i11 - i12)));
        }
        if (tL_premium_boostsStatus6.next_level_boosts == 0) {
            return LocaleController.formatString(isGroup() ? C2888R.string.GroupBoostsJustReachedLevelNext : C2888R.string.ChannelBoostsJustReachedLevelNext, Integer.valueOf(this.boostsStatus.level), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level + 1, new Object[0]));
        }
        int i13 = isGroup() ? C2888R.string.GroupNeedBoostsDescriptionForNewFeatures : C2888R.string.ChannelNeedBoostsDescriptionForNewFeatures;
        TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus8 = this.boostsStatus;
        int i14 = tL_premium_boostsStatus8.next_level_boosts;
        int i15 = tL_premium_boostsStatus8.boosts;
        return LocaleController.formatString(i13, string, LocaleController.formatPluralString("MoreBoosts", i14 - i15, Integer.valueOf(i14 - i15)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LimitParams getLimitParams(int i, int i2) {
        LimitParams limitParams = new LimitParams();
        if (i == 0) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersPinnedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersPinnedLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_pin;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedPinDialogs", C2888R.string.LimitReachedPinDialogs, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedPinDialogsPremium", C2888R.string.LimitReachedPinDialogsPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedPinDialogsLocked", C2888R.string.LimitReachedPinDialogsLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 33) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).savedDialogsPinnedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).savedDialogsPinnedLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_pin;
            limitParams.descriptionStr = LocaleController.formatString(C2888R.string.LimitReachedPinSavedDialogs, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString(C2888R.string.LimitReachedPinSavedDialogsPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString(C2888R.string.LimitReachedPinSavedDialogsLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 2) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).publicLinksLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).publicLinksLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedPublicLinks", C2888R.string.LimitReachedPublicLinks, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedPublicLinksPremium", C2888R.string.LimitReachedPublicLinksPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedPublicLinksLocked", C2888R.string.LimitReachedPublicLinksLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 12) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).chatlistInvitesLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).chatlistInvitesLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFolderLinks", C2888R.string.LimitReachedFolderLinks, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFolderLinksPremium", C2888R.string.LimitReachedFolderLinksPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFolderLinksLocked", C2888R.string.LimitReachedFolderLinksLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 13) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).chatlistJoinedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).chatlistJoinedLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedSharedFolders", C2888R.string.LimitReachedSharedFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedSharedFoldersPremium", C2888R.string.LimitReachedSharedFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedSharedFoldersLocked", C2888R.string.LimitReachedSharedFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 3) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFolders", C2888R.string.LimitReachedFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFoldersPremium", C2888R.string.LimitReachedFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFoldersLocked", C2888R.string.LimitReachedFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 4) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersChatsLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersChatsLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_chats;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedChatInFolders", C2888R.string.LimitReachedChatInFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedChatInFoldersPremium", C2888R.string.LimitReachedChatInFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedChatInFoldersLocked", C2888R.string.LimitReachedChatInFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 5) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).channelsLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).channelsLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_groups;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedCommunities", C2888R.string.LimitReachedCommunities, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedCommunitiesPremium", C2888R.string.LimitReachedCommunitiesPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedCommunitiesLocked", C2888R.string.LimitReachedCommunitiesLocked, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 6) {
            limitParams.defaultLimit = 100;
            limitParams.premiumLimit = 200;
            limitParams.icon = C2888R.drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFileSize", C2888R.string.LimitReachedFileSize, "2 GB", "4 GB");
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFileSizePremium", C2888R.string.LimitReachedFileSizePremium, "4 GB");
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFileSizeLocked", C2888R.string.LimitReachedFileSizeLocked, "2 GB");
            return limitParams;
        }
        if (i == 7) {
            limitParams.defaultLimit = 8;
            limitParams.premiumLimit = 16;
            limitParams.icon = C2888R.drawable.msg_limit_accounts;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedAccounts", C2888R.string.LimitReachedAccounts, 8, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedAccountsPremium", C2888R.string.LimitReachedAccountsPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedAccountsPremium", C2888R.string.LimitReachedAccountsPremium, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 11) {
            limitParams.defaultLimit = 0;
            limitParams.premiumLimit = 0;
            limitParams.icon = C2888R.drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedAccounts", C2888R.string.LimitReachedAccounts, 0, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = _UrlKt.FRAGMENT_ENCODE_SET;
            limitParams.descriptionStrLocked = _UrlKt.FRAGMENT_ENCODE_SET;
            return limitParams;
        }
        if (i == 14) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storyExpiringLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storyExpiringLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatPluralStringComma("LimitReachedStoriesCount2First", limitParams.defaultLimit) + "\n" + LocaleController.formatPluralStringComma("LimitReachedStoriesCount2Second", limitParams.premiumLimit);
            limitParams.descriptionStrPremium = LocaleController.formatPluralStringComma("LimitReachedStoriesCount2Premium", limitParams.premiumLimit);
            limitParams.descriptionStrLocked = LocaleController.formatPluralStringComma("LimitReachedStoriesCount2Premium", limitParams.defaultLimit);
            return limitParams;
        }
        if (i == 15) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentWeeklyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentWeeklyLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesWeekly", C2888R.string.LimitReachedStoriesWeekly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesWeeklyPremium", C2888R.string.LimitReachedStoriesWeeklyPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesWeeklyPremium", C2888R.string.LimitReachedStoriesWeeklyPremium, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i == 16) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitPremium;
            limitParams.icon = C2888R.drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesMonthly", C2888R.string.LimitReachedStoriesMonthly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", C2888R.string.LimitReachedStoriesMonthlyPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", C2888R.string.LimitReachedStoriesMonthlyPremium, Integer.valueOf(limitParams.defaultLimit));
            return limitParams;
        }
        if (i != 18 && i != 32 && i != 20 && i != 24 && i != 27 && i != 28 && i != 25 && i != 30 && i != 35 && i != 29 && i != 22 && i != 23 && i != 19 && i != 21 && i != 26) {
            return limitParams;
        }
        limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitDefault;
        limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitPremium;
        limitParams.icon = C2888R.drawable.filled_limit_boost;
        limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesMonthly", C2888R.string.LimitReachedStoriesMonthly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
        limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", C2888R.string.LimitReachedStoriesMonthlyPremium, Integer.valueOf(limitParams.premiumLimit));
        limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", C2888R.string.LimitReachedStoriesMonthlyPremium, Integer.valueOf(limitParams.defaultLimit));
        return limitParams;
    }

    private void loadAdminedChannels() {
        this.loadingAdminedChannels = true;
        this.loading = true;
        updateRows();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC.TL_channels_getAdminedPublicChannels(), new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAdminedChannels$23(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$23(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAdminedChannels$22(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$22(TLObject tLObject) {
        int top;
        this.loadingAdminedChannels = false;
        if (tLObject != null) {
            this.chats.clear();
            this.chats.addAll(((TLRPC.TL_messages_chats) tLObject).chats);
            this.loading = false;
            this.enterAnimator.showItemsAnimated(this.chatsTitleRow + 4);
            int i = 0;
            while (true) {
                if (i >= this.recyclerListView.getChildCount()) {
                    top = 0;
                    break;
                } else {
                    if (this.recyclerListView.getChildAt(i) instanceof HeaderView) {
                        top = this.recyclerListView.getChildAt(i).getTop();
                        break;
                    }
                    i++;
                }
            }
            updateRows();
            if (this.headerRow >= 0 && top != 0) {
                ((LinearLayoutManager) this.recyclerListView.getLayoutManager()).scrollToPositionWithOffset(this.headerRow + 1, top);
            }
        }
        int iMax = Math.max(this.chats.size(), this.limitParams.defaultLimit);
        this.limitPreviewView.setIconValue(iMax, false);
        this.limitPreviewView.setBagePosition(iMax / this.limitParams.premiumLimit);
        this.limitPreviewView.startDelayedAnimation();
    }

    private void updateRows() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        this.dividerRow = -1;
        this.chatStartRow = -1;
        this.chatEndRow = -1;
        this.loadingRow = -1;
        this.linkRow = -1;
        this.emptyViewDividerRow = -1;
        this.boostFeaturesStartRow = -1;
        this.rowCount = 1;
        this.headerRow = 0;
        int i = this.type;
        if (i == 19 || i == 18 || i == 20 || i == 24 || i == 27 || i == 28 || i == 22 || i == 23 || i == 25 || i == 26 || i == 29 || i == 21 || i == 30 || i == 35) {
            if (i != 19 || ChatObject.hasAdminRights(getChat())) {
                this.topPadding = 0.24f;
                int i2 = this.rowCount;
                this.rowCount = i2 + 1;
                this.linkRow = i2;
                if (MessagesController.getInstance(this.currentAccount).giveawayGiftsPurchaseAvailable) {
                    int i3 = this.rowCount;
                    this.rowCount = i3 + 1;
                    this.bottomRow = i3;
                }
            }
            setupBoostFeatures();
            int i4 = this.rowCount;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.boostFeaturesStartRow = i4;
            this.rowCount = i5 + (this.boostFeatures.size() - 1);
        } else if (i == 31 || i == 32) {
            this.topPadding = 0.24f;
            setupBoostFeatures();
            int i6 = this.rowCount;
            this.chatStartRow = i6;
            int i7 = i6 + 1;
            this.rowCount = i7;
            this.boostFeaturesStartRow = i6;
            int size = i7 + (this.boostFeatures.size() - 1);
            this.rowCount = size;
            this.chatEndRow = size;
        } else if (!hasFixedSize(i)) {
            int i8 = this.type;
            if (i8 != 11 && i8 != 34) {
                int i9 = this.rowCount;
                this.dividerRow = i9;
                this.rowCount = i9 + 2;
                this.chatsTitleRow = i9 + 1;
            } else {
                this.topPadding = 0.24f;
            }
            if (this.loading) {
                int i10 = this.rowCount;
                this.rowCount = i10 + 1;
                this.loadingRow = i10;
            } else if (i8 != 11 || this.canSendLink) {
                if (i8 != 11 || MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() || ((((arrayList = this.premiumInviteBlockedUsers) == null || arrayList.isEmpty()) && ((arrayList2 = this.premiumMessagingBlockedUsers) == null || arrayList2.size() < this.restrictedUsers.size())) || (arrayList3 = this.premiumInviteBlockedUsers) == null || arrayList3.size() != 1 || (arrayList4 = this.premiumMessagingBlockedUsers) == null || arrayList4.size() != 1 || !this.canSendLink)) {
                    int i11 = this.rowCount;
                    this.chatStartRow = i11;
                    int i12 = this.type;
                    if (i12 == 11 || i12 == 34) {
                        this.rowCount = i11 + this.restrictedUsers.size();
                    } else if (i12 == 5) {
                        this.rowCount = i11 + this.inactiveChats.size();
                    } else {
                        this.rowCount = i11 + this.chats.size();
                    }
                    this.chatEndRow = this.rowCount;
                }
                if (this.chatEndRow - this.chatStartRow > 1) {
                    int i13 = this.rowCount;
                    this.rowCount = i13 + 1;
                    this.emptyViewDividerRow = i13;
                }
            }
        }
        notifyDataSetChanged();
    }

    private void revokeSelectedLinks() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.selectedChats.iterator();
        while (it.hasNext()) {
            this.chats.add((TLRPC.Chat) it.next());
        }
        revokeLinks(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokeLinks(final ArrayList arrayList) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.formatPluralString("RevokeLinks", arrayList.size(), new Object[0]));
        if (arrayList.size() == 1) {
            TLRPC.Chat chat = (TLRPC.Chat) arrayList.get(0);
            if (this.parentIsChannel) {
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlertChannel", C2888R.string.RevokeLinkAlertChannel, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(chat), chat.title)));
            } else {
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlert", C2888R.string.RevokeLinkAlert, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(chat), chat.title)));
            }
        } else if (this.parentIsChannel) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinksAlertChannel", C2888R.string.RevokeLinksAlertChannel, new Object[0])));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinksAlert", C2888R.string.RevokeLinksAlert, new Object[0])));
        }
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.RevokeButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda20
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$revokeLinks$25(arrayList, alertDialog, i);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLinks$25(ArrayList arrayList, AlertDialog alertDialog, int i) {
        lambda$new$0();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC.TL_channels_updateUsername tL_channels_updateUsername = new TLRPC.TL_channels_updateUsername();
            tL_channels_updateUsername.channel = MessagesController.getInputChannel((TLRPC.Chat) arrayList.get(i2));
            tL_channels_updateUsername.username = _UrlKt.FRAGMENT_ENCODE_SET;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_updateUsername, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda28
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$revokeLinks$24(tLObject, tL_error);
                }
            }, 64);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLinks$24(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            AndroidUtilities.runOnUIThread(this.onSuccessRunnable);
        }
    }

    private void loadInactiveChannels() {
        this.loading = true;
        updateRows();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC.TL_channels_getInactiveChannels(), new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadInactiveChannels$27(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadInactiveChannels$27(TLObject tLObject, TLRPC.TL_error tL_error) {
        String pluralString;
        if (tL_error == null) {
            final TLRPC.TL_messages_inactiveChats tL_messages_inactiveChats = (TLRPC.TL_messages_inactiveChats) tLObject;
            final ArrayList arrayList = new ArrayList();
            final int iMin = Math.min(tL_messages_inactiveChats.chats.size(), tL_messages_inactiveChats.dates.size());
            for (int i = 0; i < iMin; i++) {
                TLRPC.Chat chat = (TLRPC.Chat) tL_messages_inactiveChats.chats.get(i);
                int currentTime = (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - ((Integer) tL_messages_inactiveChats.dates.get(i)).intValue()) / 86400;
                if (currentTime < 30) {
                    pluralString = LocaleController.formatPluralString("Days", currentTime, new Object[0]);
                } else if (currentTime < 365) {
                    pluralString = LocaleController.formatPluralString("Months", currentTime / 30, new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Years", currentTime / 365, new Object[0]);
                }
                if (ChatObject.isMegagroup(chat)) {
                    arrayList.add(LocaleController.formatString("InactiveChatSignature", C2888R.string.InactiveChatSignature, LocaleController.formatPluralString("Members", chat.participants_count, new Object[0]), pluralString));
                } else if (ChatObject.isChannel(chat)) {
                    arrayList.add(LocaleController.formatString("InactiveChannelSignature", C2888R.string.InactiveChannelSignature, pluralString));
                } else {
                    arrayList.add(LocaleController.formatString("InactiveChatSignature", C2888R.string.InactiveChatSignature, LocaleController.formatPluralString("Members", chat.participants_count, new Object[0]), pluralString));
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadInactiveChannels$26(arrayList, iMin, tL_messages_inactiveChats);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadInactiveChannels$26(ArrayList arrayList, int i, TLRPC.TL_messages_inactiveChats tL_messages_inactiveChats) {
        int top;
        this.inactiveChatsSignatures.clear();
        this.inactiveChats.clear();
        this.inactiveChatsSignatures.addAll(arrayList);
        for (int i2 = 0; i2 < i; i2++) {
            this.inactiveChats.add((TLRPC.Chat) tL_messages_inactiveChats.chats.get(i2));
        }
        this.loading = false;
        this.enterAnimator.showItemsAnimated(this.chatsTitleRow + 4);
        int i3 = 0;
        while (true) {
            if (i3 >= this.recyclerListView.getChildCount()) {
                top = 0;
                break;
            } else {
                if (this.recyclerListView.getChildAt(i3) instanceof HeaderView) {
                    top = this.recyclerListView.getChildAt(i3).getTop();
                    break;
                }
                i3++;
            }
        }
        updateRows();
        if (this.headerRow >= 0 && top != 0) {
            ((LinearLayoutManager) this.recyclerListView.getLayoutManager()).scrollToPositionWithOffset(this.headerRow + 1, top);
        }
        if (this.limitParams == null) {
            this.limitParams = getLimitParams(this.type, this.currentAccount);
        }
        int iMax = Math.max(this.inactiveChats.size(), this.limitParams.defaultLimit);
        LimitPreviewView limitPreviewView = this.limitPreviewView;
        if (limitPreviewView != null) {
            limitPreviewView.setIconValue(iMax, false);
            this.limitPreviewView.setBagePosition(iMax / this.limitParams.premiumLimit);
            this.limitPreviewView.startDelayedAnimation();
        }
    }

    private void setupBoostFeatures() {
        this.boostFeatures = new ArrayList();
        TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = this.boostsStatus;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        int iMax = 10;
        if (messagesController != null) {
            MessagesController.PeerColors peerColors = messagesController.peerColors;
            int iMax2 = Math.max(10, peerColors != null ? peerColors.maxLevel(isGroup()) : 0);
            MessagesController.PeerColors peerColors2 = messagesController.profilePeerColors;
            int iMax3 = Math.max(iMax2, peerColors2 != null ? peerColors2.maxLevel(isGroup()) : 0);
            if (isGroup()) {
                iMax = Math.max(Math.max(Math.max(Math.max(Math.max(iMax3, messagesController.groupTranscribeLevelMin), messagesController.groupWallpaperLevelMin), messagesController.groupCustomWallpaperLevelMin), messagesController.groupEmojiStatusLevelMin), messagesController.groupProfileBgIconLevelMin);
            } else {
                iMax = Math.max(Math.max(Math.max(Math.max(Math.max(Math.max(Math.max(iMax3, messagesController.channelBgIconLevelMin), messagesController.channelProfileIconLevelMin), messagesController.channelEmojiStatusLevelMin), messagesController.channelWallpaperLevelMin), messagesController.channelCustomWallpaperLevelMin), messagesController.channelRestrictSponsoredLevelMin), messagesController.channelAutotranslationLevelMin);
            }
        }
        ArrayList arrayList = null;
        for (int i = this.type != 31 ? tL_premium_boostsStatus != null ? tL_premium_boostsStatus.level + 1 : 1 : 1; i <= iMax; i++) {
            ArrayList arrayListBoostFeaturesForLevel = boostFeaturesForLevel(i);
            if (arrayList == null || !BoostFeature.arraysEqual(arrayList, arrayListBoostFeaturesForLevel)) {
                ArrayList arrayList2 = this.boostFeatures;
                arrayList2.add(new BoostFeature.BoostFeatureLevel(i, arrayList2.isEmpty()));
                this.boostFeatures.addAll(arrayListBoostFeaturesForLevel);
                arrayList = arrayListBoostFeaturesForLevel;
            }
        }
    }

    private ArrayList boostFeaturesForLevel(int i) {
        boolean zIsGroup = isGroup();
        ArrayList arrayList = new ArrayList();
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        if (messagesController == null) {
            return arrayList;
        }
        if (!zIsGroup && i >= messagesController.channelAutotranslationLevelMin) {
            arrayList.add(BoostFeature.m1263of(C2888R.drawable.menu_feature_translate, C2888R.string.BoostFeatureAutotranslation));
        }
        arrayList.add(BoostFeature.m1265of(C2888R.drawable.menu_feature_stories, "BoostFeatureStoriesPerDay", i).asIncremental());
        if (!zIsGroup) {
            arrayList.add(BoostFeature.m1265of(C2888R.drawable.menu_feature_reactions, "BoostFeatureCustomReaction", i).asIncremental());
        }
        MessagesController.PeerColors peerColors = messagesController.peerColors;
        int iColorsAvailable = peerColors != null ? peerColors.colorsAvailable(i, false) : 0;
        MessagesController.PeerColors peerColors2 = messagesController.profilePeerColors;
        int iColorsAvailable2 = peerColors2 != null ? peerColors2.colorsAvailable(i, zIsGroup) : 0;
        if (!zIsGroup && iColorsAvailable > 0) {
            arrayList.add(BoostFeature.m1265of(C2888R.drawable.menu_feature_color_name, "BoostFeatureNameColor", 7));
        }
        if (!zIsGroup && iColorsAvailable > 0) {
            arrayList.add(BoostFeature.m1265of(C2888R.drawable.menu_feature_links, "BoostFeatureReplyColor", iColorsAvailable));
        }
        if (!zIsGroup && i >= messagesController.channelBgIconLevelMin) {
            arrayList.add(BoostFeature.m1263of(C2888R.drawable.menu_feature_links2, C2888R.string.BoostFeatureReplyIcon));
        }
        if (iColorsAvailable2 > 0) {
            arrayList.add(BoostFeature.m1265of(C2888R.drawable.menu_feature_color_profile, zIsGroup ? "BoostFeatureProfileColorGroup" : "BoostFeatureProfileColor", iColorsAvailable2));
        }
        if (zIsGroup && i >= messagesController.groupEmojiStickersLevelMin) {
            arrayList.add(BoostFeature.m1263of(C2888R.drawable.menu_feature_pack, C2888R.string.BoostFeatureCustomEmojiPack));
        }
        if ((!zIsGroup && i >= messagesController.channelProfileIconLevelMin) || (zIsGroup && i >= messagesController.groupProfileBgIconLevelMin)) {
            arrayList.add(BoostFeature.m1263of(C2888R.drawable.menu_feature_cover, zIsGroup ? C2888R.string.BoostFeatureProfileIconGroup : C2888R.string.BoostFeatureProfileIcon));
        }
        if (zIsGroup && i >= messagesController.groupTranscribeLevelMin) {
            arrayList.add(BoostFeature.m1263of(C2888R.drawable.menu_feature_voice, C2888R.string.BoostFeatureVoiceToTextConversion));
        }
        if ((!zIsGroup && i >= messagesController.channelEmojiStatusLevelMin) || (zIsGroup && i >= messagesController.groupEmojiStatusLevelMin)) {
            arrayList.add(BoostFeature.m1264of(C2888R.drawable.menu_feature_status, C2888R.string.BoostFeatureEmojiStatuses, "1000+"));
        }
        if ((!zIsGroup && i >= messagesController.channelWallpaperLevelMin) || (zIsGroup && i >= messagesController.groupWallpaperLevelMin)) {
            arrayList.add(BoostFeature.m1265of(C2888R.drawable.menu_feature_wallpaper, zIsGroup ? "BoostFeatureBackgroundGroup" : "BoostFeatureBackground", 8));
        }
        if ((!zIsGroup && i >= messagesController.channelCustomWallpaperLevelMin) || (zIsGroup && i >= messagesController.groupCustomWallpaperLevelMin)) {
            arrayList.add(BoostFeature.m1263of(C2888R.drawable.menu_feature_custombg, zIsGroup ? C2888R.string.BoostFeatureCustomBackgroundGroup : C2888R.string.BoostFeatureCustomBackground));
        }
        if (!zIsGroup && i >= messagesController.channelRestrictSponsoredLevelMin) {
            arrayList.add(BoostFeature.m1263of(C2888R.drawable.menu_feature_noads, C2888R.string.BoostFeatureSwitchOffAds));
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    private class BoostFeatureCell extends FrameLayout {
        public BoostFeature feature;
        private final ImageView imageView;
        public BoostFeature.BoostFeatureLevel level;
        private final FrameLayout levelLayout;
        private final SimpleTextView levelTextView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final SimpleTextView textView;

        public BoostFeatureCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setPadding(((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft, 0, ((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft, 0);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_premiumGradient1, resourcesProvider), PorterDuff.Mode.SRC_IN));
            addView(imageView, LayoutHelper.createFrame(24, 24.0f, (LocaleController.isRTL ? 5 : 3) | 16, 24.0f, 0.0f, 24.0f, 0.0f));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setWidthWrapContent(true);
            simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
            simpleTextView.setTextSize(14);
            boolean z = LocaleController.isRTL;
            addView(simpleTextView, LayoutHelper.createFrame(-2, -2.0f, (z ? 5 : 3) | 16, z ? 30.0f : 60.0f, 0.0f, z ? 60.0f : 30.0f, 0.0f));
            SimpleTextView simpleTextView2 = new SimpleTextView(context);
            this.levelTextView = simpleTextView2;
            simpleTextView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            simpleTextView2.setWidthWrapContent(true);
            simpleTextView2.setTypeface(AndroidUtilities.bold());
            simpleTextView2.setTextSize(14);
            FrameLayout frameLayout = new FrameLayout(context, LimitReachedBottomSheet.this, resourcesProvider) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.BoostFeatureCell.1
                private final Paint dividerPaint;
                private final PremiumGradient.PremiumGradientTools gradientTools;
                final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;
                final /* synthetic */ LimitReachedBottomSheet val$this$0;

                {
                    this.val$resourcesProvider = resourcesProvider;
                    this.gradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, resourcesProvider);
                    Paint paint = new Paint(1);
                    this.dividerPaint = paint;
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeWidth(1.0f);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    this.dividerPaint.setColor(Theme.getColor(Theme.key_sheet_scrollUp, this.val$resourcesProvider));
                    canvas.drawLine(AndroidUtilities.m1124dp(18.0f), getHeight() / 2.0f, BoostFeatureCell.this.levelTextView.getLeft() - AndroidUtilities.m1124dp(20.0f), getHeight() / 2.0f, this.dividerPaint);
                    canvas.drawLine(BoostFeatureCell.this.levelTextView.getRight() + AndroidUtilities.m1124dp(20.0f), getHeight() / 2.0f, getWidth() - AndroidUtilities.m1124dp(18.0f), getHeight() / 2.0f, this.dividerPaint);
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BoostFeatureCell.this.levelTextView.getLeft() - AndroidUtilities.m1124dp(15.0f), ((BoostFeatureCell.this.levelTextView.getTop() + BoostFeatureCell.this.levelTextView.getBottom()) - AndroidUtilities.m1124dp(30.0f)) / 2.0f, BoostFeatureCell.this.levelTextView.getRight() + AndroidUtilities.m1124dp(15.0f), ((BoostFeatureCell.this.levelTextView.getTop() + BoostFeatureCell.this.levelTextView.getBottom()) + AndroidUtilities.m1124dp(30.0f)) / 2.0f);
                    canvas.save();
                    canvas.translate(rectF.left, rectF.top);
                    rectF.set(0.0f, 0.0f, rectF.width(), rectF.height());
                    this.gradientTools.gradientMatrix(rectF);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(15.0f), AndroidUtilities.m1124dp(15.0f), this.gradientTools.paint);
                    canvas.restore();
                    super.dispatchDraw(canvas);
                }
            };
            this.levelLayout = frameLayout;
            frameLayout.setWillNotDraw(false);
            frameLayout.addView(simpleTextView2, LayoutHelper.createFrame(-2, -2, 17));
            addView(frameLayout, LayoutHelper.createFrame(-1, -1.0f));
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
        public void set(BoostFeature boostFeature) {
            if (boostFeature instanceof BoostFeature.BoostFeatureLevel) {
                this.level = (BoostFeature.BoostFeatureLevel) boostFeature;
                this.feature = null;
                this.imageView.setVisibility(8);
                this.textView.setVisibility(8);
                this.levelLayout.setVisibility(0);
                SimpleTextView simpleTextView = this.levelTextView;
                BoostFeature.BoostFeatureLevel boostFeatureLevel = this.level;
                simpleTextView.setText(LocaleController.formatPluralString(boostFeatureLevel.isFirst ? "BoostLevelUnlocks" : "BoostLevel", boostFeatureLevel.lvl, new Object[0]));
                return;
            }
            if (boostFeature != null) {
                this.level = null;
                this.feature = boostFeature;
                this.imageView.setVisibility(0);
                this.imageView.setImageResource(this.feature.iconResId);
                this.textView.setVisibility(0);
                BoostFeature boostFeature2 = this.feature;
                String str = boostFeature2.textKeyPlural;
                String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                if (str != null) {
                    String string = LocaleController.getString(this.feature.textKeyPlural + "_" + LocaleController.getStringParamForNumber(this.feature.countPlural));
                    if (string == null || string.startsWith("LOC_ERR")) {
                        string = LocaleController.getString(this.feature.textKeyPlural + "_other");
                    }
                    if (string == null) {
                        string = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                    int iIndexOf = string.indexOf(TimeModel.NUMBER_FORMAT);
                    if (iIndexOf >= 0) {
                        spannableStringBuilder = new SpannableStringBuilder(string);
                        SpannableString spannableString = new SpannableString(this.feature.countPlural + _UrlKt.FRAGMENT_ENCODE_SET);
                        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString.length(), 33);
                        spannableStringBuilder.replace(iIndexOf, iIndexOf + 2, (CharSequence) spannableString);
                    }
                    this.textView.setText(spannableStringBuilder);
                } else {
                    String string2 = LocaleController.getString(boostFeature2.textKey);
                    if (string2 != null) {
                        str2 = string2;
                    }
                    if (this.feature.countValue != null) {
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(str2);
                        int iIndexOf2 = str2.indexOf("%s");
                        if (iIndexOf2 >= 0) {
                            spannableStringBuilder2 = new SpannableStringBuilder(str2);
                            SpannableString spannableString2 = new SpannableString(this.feature.countValue);
                            spannableString2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString2.length(), 33);
                            spannableStringBuilder2.replace(iIndexOf2, iIndexOf2 + 2, (CharSequence) spannableString2);
                        }
                        this.textView.setText(spannableStringBuilder2);
                    } else {
                        this.textView.setText(str2);
                    }
                }
                this.levelLayout.setVisibility(8);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(this.level != null ? 49.0f : 36.0f), TLObject.FLAG_30));
        }
    }

    public static LimitReachedBottomSheet openBoostsForRemoveRestrictions(BaseFragment baseFragment, TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus, ChannelBoostsController.CanApplyBoost canApplyBoost, long j, boolean z) {
        if (baseFragment == null || tL_premium_boostsStatus == null || canApplyBoost == null || baseFragment.getContext() == null) {
            return null;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 32, baseFragment.getCurrentAccount(), baseFragment.getResourceProvider());
        limitReachedBottomSheet.setCanApplyBoost(canApplyBoost);
        limitReachedBottomSheet.setBoostsStats(tL_premium_boostsStatus, true);
        limitReachedBottomSheet.setDialogId(j);
        if (z) {
            baseFragment.showDialog(limitReachedBottomSheet);
            return limitReachedBottomSheet;
        }
        limitReachedBottomSheet.show();
        return limitReachedBottomSheet;
    }

    public static void openBoostsForUsers(BaseFragment baseFragment, boolean z, long j, ChannelBoostsController.CanApplyBoost canApplyBoost, TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus, ChatMessageCell chatMessageCell) {
        if (baseFragment == null || canApplyBoost == null || tL_premium_boostsStatus == null || baseFragment.getContext() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 19, baseFragment.getCurrentAccount(), baseFragment.getResourceProvider());
        limitReachedBottomSheet.setCanApplyBoost(canApplyBoost);
        limitReachedBottomSheet.setBoostsStats(tL_premium_boostsStatus, z);
        limitReachedBottomSheet.setDialogId(j);
        limitReachedBottomSheet.setChatMessageCell(chatMessageCell);
        baseFragment.showDialog(limitReachedBottomSheet);
    }

    public static void openBoostsForPostingStories(BaseFragment baseFragment, long j, ChannelBoostsController.CanApplyBoost canApplyBoost, TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus, Runnable runnable) {
        if (baseFragment == null || canApplyBoost == null || tL_premium_boostsStatus == null || baseFragment.getContext() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 18, baseFragment.getCurrentAccount(), baseFragment.getResourceProvider());
        limitReachedBottomSheet.setCanApplyBoost(canApplyBoost);
        limitReachedBottomSheet.setBoostsStats(tL_premium_boostsStatus, true);
        limitReachedBottomSheet.setDialogId(j);
        limitReachedBottomSheet.showStatisticButtonInLink(runnable);
        limitReachedBottomSheet.show();
    }
}
