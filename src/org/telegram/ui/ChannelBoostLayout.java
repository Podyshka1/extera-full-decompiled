package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stats;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.FixedHeightEmptyCell;
import org.telegram.ui.Cells.ManageChatTextCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Charts.view_data.ChartHeaderView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkActionView;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.ui.Components.Premium.LimitPreviewView;
import org.telegram.ui.Components.Premium.boosts.BoostPagerBottomSheet;
import org.telegram.ui.Components.Premium.boosts.GiftInfoBottomSheet;
import org.telegram.ui.Components.Premium.boosts.cells.statistics.GiftedUserCell;
import org.telegram.ui.Components.Premium.boosts.cells.statistics.GiveawayCell;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScrollSlidingTextTabStrip;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.StatisticActivity;

/* JADX INFO: loaded from: classes6.dex */
public class ChannelBoostLayout extends FrameLayout {
    AdapterWithDiffUtils adapter;
    private final ArrayList<TL_stories.Boost> boosters;
    TL_stories.TL_premium_boostsStatus boostsStatus;
    private ScrollSlidingTextTabStrip boostsTabs;
    int currentAccount;
    private TLRPC.Chat currentChat;
    private final long dialogId;
    BaseFragment fragment;
    private final ArrayList<TL_stories.Boost> gifts;
    private boolean hasBoostsNext;
    private boolean hasGiftsNext;
    public IBlur3Capture iBlur3Capture;
    private final ArrayList<ItemInternal> items;
    private String lastBoostsOffset;
    private String lastGiftsOffset;
    private int limitBoosts;
    private int limitGifts;
    public final RecyclerListView listView;
    private int nextBoostRemaining;
    private int nextGiftsRemaining;
    private LinearLayout progressLayout;
    private final Theme.ResourcesProvider resourcesProvider;
    private int selectedTab;
    private int totalBoosts;
    private int totalGifts;
    boolean usersLoading;

    public ChannelBoostLayout(final BaseFragment baseFragment, final long j, final Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment.getContext());
        this.currentAccount = UserConfig.selectedAccount;
        this.boosters = new ArrayList<>();
        this.gifts = new ArrayList<>();
        this.items = new ArrayList<>();
        this.selectedTab = 0;
        this.adapter = new AdapterWithDiffUtils() { // from class: org.telegram.ui.ChannelBoostLayout.1
            private int remTotalBoosts = -1;
            private int remTotalGifts = -1;

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return ((ItemInternal) ChannelBoostLayout.this.items.get(viewHolder.getAdapterPosition())).selectable;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View shadowSectionCell;
                switch (i) {
                    case 0:
                        shadowSectionCell = new StatisticActivity.OverviewCell(ChannelBoostLayout.this.getContext());
                        break;
                    case 1:
                        ChartHeaderView chartHeaderView = new ChartHeaderView(ChannelBoostLayout.this.getContext());
                        chartHeaderView.setPadding(chartHeaderView.getPaddingLeft(), AndroidUtilities.dp(16.0f), chartHeaderView.getRight(), AndroidUtilities.dp(16.0f));
                        shadowSectionCell = chartHeaderView;
                        break;
                    case 2:
                        shadowSectionCell = new ShadowSectionCell(viewGroup.getContext(), 12, Theme.getColor(Theme.key_windowBackgroundGray));
                        break;
                    case 3:
                        LinkActionView linkActionView = new LinkActionView(ChannelBoostLayout.this.getContext(), ChannelBoostLayout.this.fragment, null, 0L, false, false);
                        linkActionView.hideOptions();
                        linkActionView.setPadding(AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(11.0f), AndroidUtilities.dp(24.0f));
                        shadowSectionCell = linkActionView;
                        break;
                    case 4:
                        LimitPreviewView limitPreviewView = new LimitPreviewView(ChannelBoostLayout.this.getContext(), C2665R.drawable.filled_limit_boost, 0, 0, ChannelBoostLayout.this.resourcesProvider);
                        limitPreviewView.isStatistic = true;
                        limitPreviewView.setTag(-33024);
                        limitPreviewView.setPadding(0, AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(20.0f));
                        limitPreviewView.setBoosts(ChannelBoostLayout.this.boostsStatus, false);
                        shadowSectionCell = limitPreviewView;
                        break;
                    case 5:
                        shadowSectionCell = new GiftedUserCell(ChannelBoostLayout.this.getContext(), 0, 0, false);
                        break;
                    case 6:
                        shadowSectionCell = new TextInfoPrivacyCell(viewGroup.getContext(), 20, ChannelBoostLayout.this.resourcesProvider);
                        break;
                    case 7:
                        shadowSectionCell = new FixedHeightEmptyCell(ChannelBoostLayout.this.getContext(), 8);
                        break;
                    case 8:
                        FrameLayout frameLayout = new FrameLayout(ChannelBoostLayout.this.getContext()) { // from class: org.telegram.ui.ChannelBoostLayout.1.3
                            @Override // android.widget.FrameLayout, android.view.View
                            public void onMeasure(int i2, int i3) {
                                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(50.0f), TLObject.FLAG_30));
                            }
                        };
                        TextView textView = new TextView(ChannelBoostLayout.this.getContext());
                        textView.setText(LocaleController.getString(ChannelBoostLayout.this.isChannel() ? C2665R.string.NoBoostersHint : C2665R.string.NoBoostersGroupHint));
                        textView.setTextSize(1, 14.0f);
                        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
                        textView.setGravity(17);
                        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 0, 0.0f, 16.0f, 0.0f, 0.0f));
                        shadowSectionCell = frameLayout;
                        break;
                    case 9:
                        ManageChatTextCell manageChatTextCell = new ManageChatTextCell(ChannelBoostLayout.this.getContext()) { // from class: org.telegram.ui.ChannelBoostLayout.1.4
                            @Override // org.telegram.ui.Cells.ManageChatTextCell
                            public int getFullHeight() {
                                return AndroidUtilities.dp(50.0f);
                            }
                        };
                        manageChatTextCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                        shadowSectionCell = manageChatTextCell;
                        break;
                    case 10:
                        TextCell textCell = new TextCell(ChannelBoostLayout.this.getContext());
                        textCell.setTextAndIcon((CharSequence) LocaleController.formatString("BoostingGetBoostsViaGifts", C2665R.string.BoostingGetBoostsViaGifts, new Object[0]), C2665R.drawable.msg_gift_premium, false);
                        textCell.offsetFromImage = 64;
                        int i2 = Theme.key_windowBackgroundWhiteBlueText4;
                        textCell.setColors(i2, i2);
                        shadowSectionCell = textCell;
                        break;
                    case 11:
                        shadowSectionCell = new GiveawayCell(ChannelBoostLayout.this.getContext(), 0, 0, false);
                        break;
                    case 12:
                        ChartHeaderView chartHeaderView2 = new ChartHeaderView(ChannelBoostLayout.this.getContext());
                        chartHeaderView2.setPadding(chartHeaderView2.getPaddingLeft(), AndroidUtilities.dp(16.0f), chartHeaderView2.getRight(), AndroidUtilities.dp(8.0f));
                        shadowSectionCell = chartHeaderView2;
                        break;
                    case 13:
                        ChannelBoostLayout.this.boostsTabs = new ScrollSlidingTextTabStrip(ChannelBoostLayout.this.fragment.getContext(), ChannelBoostLayout.this.resourcesProvider);
                        ChannelBoostLayout.this.boostsTabs.setColors(Theme.key_profile_tabSelectedLine, Theme.key_profile_tabSelectedText, Theme.key_profile_tabText, Theme.key_profile_tabSelector);
                        FrameLayout frameLayout2 = new FrameLayout(ChannelBoostLayout.this.fragment.getContext()) { // from class: org.telegram.ui.ChannelBoostLayout.1.1
                            private final Paint dividerPaint = new Paint(1);

                            @Override // android.view.ViewGroup, android.view.View
                            public void dispatchDraw(Canvas canvas) {
                                super.dispatchDraw(canvas);
                                this.dividerPaint.setColor(Theme.getColor(Theme.key_windowBackgroundGray, ChannelBoostLayout.this.resourcesProvider));
                                canvas.drawRect(0.0f, getHeight() - 2, getWidth(), getHeight(), this.dividerPaint);
                            }
                        };
                        ChannelBoostLayout.this.boostsTabs.setDelegate(new ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate() { // from class: org.telegram.ui.ChannelBoostLayout.1.2
                            @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
                            public void onPageScrolled(float f) {
                            }

                            @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
                            public void onSamePageSelected() {
                            }

                            @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
                            public void onPageSelected(int i3, boolean z) {
                                ChannelBoostLayout.this.selectedTab = i3;
                                ChannelBoostLayout.this.updateRows(true);
                            }
                        });
                        frameLayout2.addView(ChannelBoostLayout.this.boostsTabs, LayoutHelper.createFrame(-2, 48.0f));
                        shadowSectionCell = frameLayout2;
                        break;
                    default:
                        Type$$ExternalSyntheticBUOutline0.m960m();
                        return null;
                }
                shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(shadowSectionCell);
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                String string;
                if (viewHolder.getItemViewType() == 4) {
                    return;
                }
                if (viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 12) {
                    ChartHeaderView chartHeaderView = (ChartHeaderView) viewHolder.itemView;
                    chartHeaderView.setTitle(((ItemInternal) ChannelBoostLayout.this.items.get(i)).title);
                    chartHeaderView.showDate(false);
                    if (viewHolder.getItemViewType() == 12) {
                        chartHeaderView.setPadding(AndroidUtilities.dp(3.0f), chartHeaderView.getPaddingTop(), chartHeaderView.getPaddingRight(), chartHeaderView.getPaddingBottom());
                        return;
                    }
                    return;
                }
                if (viewHolder.getItemViewType() == 0) {
                    StatisticActivity.OverviewCell overviewCell = (StatisticActivity.OverviewCell) viewHolder.itemView;
                    overviewCell.setData(0, Integer.toString(ChannelBoostLayout.this.boostsStatus.level), null, LocaleController.getString(C2665R.string.BoostsLevel2));
                    ChannelBoostLayout channelBoostLayout = ChannelBoostLayout.this;
                    TL_stats.TL_statsPercentValue tL_statsPercentValue = channelBoostLayout.boostsStatus.premium_audience;
                    if (tL_statsPercentValue != null) {
                        double d = tL_statsPercentValue.total;
                        if (d != 0.0d) {
                            overviewCell.setData(1, "≈" + ((int) ChannelBoostLayout.this.boostsStatus.premium_audience.part), String.format(Locale.US, "%.1f", Float.valueOf((((float) tL_statsPercentValue.part) / ((float) d)) * 100.0f)).concat("%"), LocaleController.getString(ChannelBoostLayout.this.isChannel() ? C2665R.string.PremiumSubscribers : C2665R.string.PremiumMembers));
                        } else {
                            overviewCell.setData(1, "≈0", "0%", LocaleController.getString(channelBoostLayout.isChannel() ? C2665R.string.PremiumSubscribers : C2665R.string.PremiumMembers));
                        }
                    }
                    overviewCell.setData(2, String.valueOf(ChannelBoostLayout.this.boostsStatus.boosts), null, LocaleController.getString(C2665R.string.BoostsExisting));
                    TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus = ChannelBoostLayout.this.boostsStatus;
                    overviewCell.setData(3, String.valueOf(Math.max(0, tL_premium_boostsStatus.next_level_boosts - tL_premium_boostsStatus.boosts)), null, LocaleController.getString(C2665R.string.BoostsToLevel));
                    return;
                }
                if (viewHolder.getItemViewType() == 5) {
                    TL_stories.Boost boost = ((ItemInternal) ChannelBoostLayout.this.items.get(i)).booster;
                    TLRPC.User user = MessagesController.getInstance(ChannelBoostLayout.this.currentAccount).getUser(Long.valueOf(boost.user_id));
                    GiftedUserCell giftedUserCell = (GiftedUserCell) viewHolder.itemView;
                    int i2 = boost.multiplier;
                    int i3 = boost.expires;
                    if (i2 > 1) {
                        string = LocaleController.formatString("BoostsExpireOn", C2665R.string.BoostsExpireOn, LocaleController.formatDate(i3));
                    } else {
                        string = LocaleController.formatString("BoostExpireOn", C2665R.string.BoostExpireOn, LocaleController.formatDate(i3));
                    }
                    giftedUserCell.setData(user, ContactsController.formatName(user), string, 0, !((ItemInternal) ChannelBoostLayout.this.items.get(i)).isLast);
                    giftedUserCell.setStatus(boost);
                    giftedUserCell.setAvatarPadding(5);
                    return;
                }
                if (viewHolder.getItemViewType() == 6) {
                    ((TextInfoPrivacyCell) viewHolder.itemView).setText(((ItemInternal) ChannelBoostLayout.this.items.get(i)).title);
                    return;
                }
                if (viewHolder.getItemViewType() == 9) {
                    ManageChatTextCell manageChatTextCell = (ManageChatTextCell) viewHolder.itemView;
                    int i4 = ChannelBoostLayout.this.selectedTab;
                    ChannelBoostLayout channelBoostLayout2 = ChannelBoostLayout.this;
                    if (i4 == 0) {
                        manageChatTextCell.setText(LocaleController.formatPluralString("BoostingShowMoreBoosts", channelBoostLayout2.nextBoostRemaining, new Object[0]), null, C2665R.drawable.arrow_more, false);
                        return;
                    } else {
                        manageChatTextCell.setText(LocaleController.formatPluralString("BoostingShowMoreGifts", channelBoostLayout2.nextGiftsRemaining, new Object[0]), null, C2665R.drawable.arrow_more, false);
                        return;
                    }
                }
                if (viewHolder.getItemViewType() == 3) {
                    ((LinkActionView) viewHolder.itemView).setLink(((ItemInternal) ChannelBoostLayout.this.items.get(i)).title);
                    return;
                }
                if (viewHolder.getItemViewType() == 11) {
                    TL_stories.PrepaidGiveaway prepaidGiveaway = ((ItemInternal) ChannelBoostLayout.this.items.get(i)).prepaidGiveaway;
                    GiveawayCell giveawayCell = (GiveawayCell) viewHolder.itemView;
                    if (prepaidGiveaway instanceof TL_stories.TL_prepaidGiveaway) {
                        giveawayCell.setData(prepaidGiveaway, LocaleController.formatPluralString("BoostingTelegramPremiumCountPlural", prepaidGiveaway.quantity, new Object[0]), LocaleController.formatPluralString("BoostingSubscriptionsCountPlural", prepaidGiveaway.quantity, LocaleController.formatPluralString("PrepaidGiveawayMonths", ((TL_stories.TL_prepaidGiveaway) prepaidGiveaway).months, new Object[0])), 0, !r12.isLast);
                    } else if (prepaidGiveaway instanceof TL_stories.TL_prepaidStarsGiveaway) {
                        TL_stories.TL_prepaidStarsGiveaway tL_prepaidStarsGiveaway = (TL_stories.TL_prepaidStarsGiveaway) prepaidGiveaway;
                        giveawayCell.setData(prepaidGiveaway, LocaleController.formatPluralStringComma("BoostingStarsCountPlural", (int) tL_prepaidStarsGiveaway.stars), LocaleController.formatPluralString("AmongWinners", tL_prepaidStarsGiveaway.quantity, new Object[0]), 0, !r12.isLast);
                    }
                    giveawayCell.setImage(prepaidGiveaway);
                    giveawayCell.setAvatarPadding(5);
                    return;
                }
                if (viewHolder.getItemViewType() == 13) {
                    if (this.remTotalBoosts == ChannelBoostLayout.this.totalBoosts && this.remTotalGifts == ChannelBoostLayout.this.totalGifts) {
                        return;
                    }
                    this.remTotalBoosts = ChannelBoostLayout.this.totalBoosts;
                    this.remTotalGifts = ChannelBoostLayout.this.totalGifts;
                    ChannelBoostLayout.this.boostsTabs.removeTabs();
                    ChannelBoostLayout.this.boostsTabs.addTextTab(0, LocaleController.formatPluralString("BoostingBoostsCount", ChannelBoostLayout.this.totalBoosts, new Object[0]));
                    if (MessagesController.getInstance(ChannelBoostLayout.this.currentAccount).giveawayGiftsPurchaseAvailable && ChannelBoostLayout.this.totalGifts > 0 && ChannelBoostLayout.this.totalGifts != ChannelBoostLayout.this.totalBoosts) {
                        ChannelBoostLayout.this.boostsTabs.addTextTab(1, LocaleController.formatPluralString("BoostingGiftsCount", ChannelBoostLayout.this.totalGifts, new Object[0]));
                    }
                    ChannelBoostLayout.this.boostsTabs.setInitialTabId(ChannelBoostLayout.this.selectedTab);
                    ChannelBoostLayout.this.boostsTabs.finishAddingTabs();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return ChannelBoostLayout.this.items.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return ((ItemInternal) ChannelBoostLayout.this.items.get(i)).viewType;
            }
        };
        this.lastBoostsOffset = _UrlKt.FRAGMENT_ENCODE_SET;
        this.lastGiftsOffset = _UrlKt.FRAGMENT_ENCODE_SET;
        this.limitGifts = 5;
        this.limitBoosts = 5;
        this.fragment = baseFragment;
        final Context context = baseFragment.getContext();
        this.resourcesProvider = resourcesProvider;
        this.dialogId = j;
        this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSegmentedSectionsEnabled(false);
        recyclerListView.setSections(true);
        recyclerListView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider));
        recyclerListView.setLayoutManager(new LinearLayoutManager(context));
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        recyclerListView.setItemAnimator(defaultItemAnimator);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$new$0(context, j, resourcesProvider, baseFragment, view, i);
            }
        });
        addView(recyclerListView);
        loadStatistic();
        recyclerListView.setAdapter(this.adapter);
        updateRows(false);
        createEmptyView(getContext());
        this.progressLayout.setAlpha(0.0f);
        this.progressLayout.animate().alpha(1.0f).setDuration(200L).setStartDelay(500L).start();
        StarsController.getInstance(this.currentAccount).getGiveawayOptions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$0(Context context, long j, Theme.ResourcesProvider resourcesProvider, BaseFragment baseFragment, View view, int i) {
        long j2;
        Theme.ResourcesProvider resourcesProvider2;
        BaseFragment baseFragment2;
        if (view instanceof GiftedUserCell) {
            GiftedUserCell giftedUserCell = (GiftedUserCell) view;
            TL_stories.Boost boost = giftedUserCell.getBoost();
            boolean z = boost.giveaway;
            if (z && boost.stars > 0) {
                StarsIntroActivity.showBoostsSheet(context, this.currentAccount, j, boost, resourcesProvider);
                j2 = j;
                resourcesProvider2 = resourcesProvider;
            } else {
                j2 = j;
                resourcesProvider2 = resourcesProvider;
                boolean z2 = boost.gift;
                if (((z2 || z) && boost.user_id >= 0) || boost.unclaimed) {
                    TLRPC.TL_payments_checkedGiftCode tL_payments_checkedGiftCode = new TLRPC.TL_payments_checkedGiftCode();
                    tL_payments_checkedGiftCode.giveaway_msg_id = boost.giveaway_msg_id;
                    tL_payments_checkedGiftCode.to_id = boost.user_id;
                    tL_payments_checkedGiftCode.from_id = MessagesController.getInstance(UserConfig.selectedAccount).getPeer(-this.currentChat.id);
                    int i2 = boost.date;
                    tL_payments_checkedGiftCode.date = i2;
                    tL_payments_checkedGiftCode.via_giveaway = boost.giveaway;
                    int i3 = boost.expires;
                    tL_payments_checkedGiftCode.days = (i3 - i2) / 86400;
                    tL_payments_checkedGiftCode.months = ((i3 - i2) / 30) / 86400;
                    if (boost.unclaimed) {
                        tL_payments_checkedGiftCode.to_id = -1L;
                        tL_payments_checkedGiftCode.flags = -1;
                    } else {
                        tL_payments_checkedGiftCode.boost = boost;
                    }
                    baseFragment2 = baseFragment;
                    new GiftInfoBottomSheet(baseFragment2, false, true, tL_payments_checkedGiftCode, boost.used_gift_slug).show();
                    if (view instanceof TextCell) {
                        BoostPagerBottomSheet.show(baseFragment2, j2, resourcesProvider2);
                    }
                    if (view instanceof GiveawayCell) {
                        BoostPagerBottomSheet.show(baseFragment2, resourcesProvider2, j2, ((GiveawayCell) view).getPrepaidGiveaway());
                    }
                    if (this.items.get(i).viewType != 9) {
                        loadUsers(Boolean.valueOf(this.selectedTab == 1));
                        return;
                    }
                    return;
                }
                if (z && boost.user_id == -1) {
                    Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(baseFragment.getParentActivity(), baseFragment.getResourceProvider());
                    lottieLayout.setAnimation(C2665R.raw.chats_infotip, 36, 36, new String[0]);
                    lottieLayout.textView.setText(LocaleController.getString(C2665R.string.BoostingRecipientWillBeSelected));
                    lottieLayout.textView.setSingleLine(false);
                    lottieLayout.textView.setMaxLines(2);
                    Bulletin.make(baseFragment, lottieLayout, 2750).show();
                } else if (!z2 && !z) {
                    baseFragment.presentFragment(ProfileActivity.of(giftedUserCell.getDialogId()));
                }
            }
        } else {
            j2 = j;
            resourcesProvider2 = resourcesProvider;
        }
        baseFragment2 = baseFragment;
        if (view instanceof TextCell) {
        }
        if (view instanceof GiveawayCell) {
        }
        if (this.items.get(i).viewType != 9) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isChannel() {
        return ChatObject.isChannelAndNotMegaGroup(this.currentChat);
    }

    public void updateRows(boolean z) {
        ArrayList<? extends AdapterWithDiffUtils.Item> arrayList = new ArrayList<>(this.items);
        this.items.clear();
        if (this.boostsStatus != null) {
            this.items.add(new ItemInternal(4, false));
            this.items.add(new ItemInternal(1, LocaleController.getString(C2665R.string.StatisticOverview)));
            this.items.add(new ItemInternal(0, false));
            this.items.add(new ItemInternal(2, false));
            if (this.boostsStatus.prepaid_giveaways.size() > 0) {
                this.items.add(new ItemInternal(12, LocaleController.getString(C2665R.string.BoostingPreparedGiveaways)));
                int i = 0;
                while (i < this.boostsStatus.prepaid_giveaways.size()) {
                    this.items.add(new ItemInternal(11, this.boostsStatus.prepaid_giveaways.get(i), i == this.boostsStatus.prepaid_giveaways.size() - 1));
                    i++;
                }
                this.items.add(new ItemInternal(6, LocaleController.getString(C2665R.string.BoostingSelectPaidGiveaway)));
            }
            this.items.add(new ItemInternal(13, LocaleController.getString(C2665R.string.Boosters)));
            if (this.selectedTab == 0) {
                if (this.boosters.isEmpty()) {
                    this.items.add(new ItemInternal(8, false));
                    this.items.add(new ItemInternal(2, false));
                } else {
                    int i2 = 0;
                    while (i2 < this.boosters.size()) {
                        this.items.add(new ItemInternal(5, this.boosters.get(i2), i2 == this.boosters.size() - 1 && !this.hasBoostsNext, this.selectedTab));
                        i2++;
                    }
                    boolean z2 = this.hasBoostsNext;
                    ArrayList<ItemInternal> arrayList2 = this.items;
                    if (z2) {
                        arrayList2.add(new ItemInternal(9, true));
                    } else {
                        arrayList2.add(new ItemInternal(7, false));
                    }
                    this.items.add(new ItemInternal(6, LocaleController.getString(isChannel() ? C2665R.string.BoostersInfoDescription : C2665R.string.BoostersInfoGroupDescription)));
                }
            } else if (this.gifts.isEmpty()) {
                this.items.add(new ItemInternal(8, false));
                this.items.add(new ItemInternal(2, false));
            } else {
                int i3 = 0;
                while (i3 < this.gifts.size()) {
                    this.items.add(new ItemInternal(5, this.gifts.get(i3), i3 == this.gifts.size() - 1 && !this.hasGiftsNext, this.selectedTab));
                    i3++;
                }
                boolean z3 = this.hasGiftsNext;
                ArrayList<ItemInternal> arrayList3 = this.items;
                if (z3) {
                    arrayList3.add(new ItemInternal(9, true));
                } else {
                    arrayList3.add(new ItemInternal(7, false));
                }
                this.items.add(new ItemInternal(6, LocaleController.getString(isChannel() ? C2665R.string.BoostersInfoDescription : C2665R.string.BoostersInfoGroupDescription)));
            }
            this.items.add(new ItemInternal(1, LocaleController.getString(C2665R.string.LinkForBoosting)));
            this.items.add(new ItemInternal(3, this.boostsStatus.boost_url));
            if (MessagesController.getInstance(this.currentAccount).giveawayGiftsPurchaseAvailable && ChatObject.hasAdminRights(this.currentChat)) {
                this.items.add(new ItemInternal(6, LocaleController.getString(isChannel() ? C2665R.string.BoostingShareThisLink : C2665R.string.BoostingShareThisLinkGroup)));
                this.items.add(new ItemInternal(10, true));
                this.items.add(new ItemInternal(6, LocaleController.getString(isChannel() ? C2665R.string.BoostingGetMoreBoosts2 : C2665R.string.BoostingGetMoreBoostsGroup)));
            }
        }
        AdapterWithDiffUtils adapterWithDiffUtils = this.adapter;
        if (z) {
            adapterWithDiffUtils.setItems(arrayList, this.items);
        } else {
            adapterWithDiffUtils.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStatistic$2(final TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadStatistic$1(tL_premium_boostsStatus);
            }
        });
    }

    private void loadStatistic() {
        MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(this.dialogId, new Utilities.Callback() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$loadStatistic$2((TL_stories.TL_premium_boostsStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStatistic$1(TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        this.boostsStatus = tL_premium_boostsStatus;
        this.progressLayout.animate().cancel();
        this.progressLayout.animate().alpha(0.0f).setDuration(100L).setStartDelay(0L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChannelBoostLayout.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChannelBoostLayout.this.progressLayout.setVisibility(8);
            }
        });
        updateRows(true);
        loadUsers(null);
    }

    private void loadUsers(Boolean bool) {
        if (this.usersLoading) {
            return;
        }
        this.usersLoading = true;
        if (bool == null) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadUsers$4();
                }
            });
        } else if (bool.booleanValue()) {
            loadOnlyGifts(null, new Runnable() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadUsers$5();
                }
            });
        } else {
            loadOnlyBoosts(null, new Runnable() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadUsers$6();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUsers$4() {
        CountDownLatch countDownLatch = new CountDownLatch(2);
        loadOnlyBoosts(countDownLatch, null);
        loadOnlyGifts(countDownLatch, null);
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadUsers$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUsers$3() {
        this.usersLoading = false;
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUsers$5() {
        this.usersLoading = false;
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUsers$6() {
        this.usersLoading = false;
        updateRows(true);
    }

    private void loadOnlyBoosts(final CountDownLatch countDownLatch, final Runnable runnable) {
        TL_stories.TL_premium_getBoostsList tL_premium_getBoostsList = new TL_stories.TL_premium_getBoostsList();
        tL_premium_getBoostsList.limit = this.limitBoosts;
        tL_premium_getBoostsList.offset = this.lastBoostsOffset;
        tL_premium_getBoostsList.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_premium_getBoostsList, new RequestDelegate() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadOnlyBoosts$8(countDownLatch, runnable, tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadOnlyBoosts$8(final CountDownLatch countDownLatch, final Runnable runnable, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadOnlyBoosts$7(countDownLatch, tLObject, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadOnlyBoosts$7(CountDownLatch countDownLatch, TLObject tLObject, Runnable runnable) {
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        if (tLObject != null) {
            this.limitBoosts = 20;
            TL_stories.TL_premium_boostsList tL_premium_boostsList = (TL_stories.TL_premium_boostsList) tLObject;
            boolean z = false;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_premium_boostsList.users, false);
            this.lastBoostsOffset = tL_premium_boostsList.next_offset;
            this.boosters.addAll(tL_premium_boostsList.boosts);
            ArrayList<TL_stories.Boost> arrayList = this.boosters;
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= size) {
                    break;
                }
                TL_stories.Boost boost = arrayList.get(i2);
                i2++;
                int i4 = boost.multiplier;
                if (i4 > 0) {
                    i3 = i4;
                }
                i += i3;
            }
            this.nextBoostRemaining = Math.max(0, tL_premium_boostsList.count - i);
            if (!TextUtils.isEmpty(tL_premium_boostsList.next_offset) && this.nextBoostRemaining > 0) {
                z = true;
            }
            this.hasBoostsNext = z;
            this.totalBoosts = tL_premium_boostsList.count;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    private void loadOnlyGifts(final CountDownLatch countDownLatch, final Runnable runnable) {
        TL_stories.TL_premium_getBoostsList tL_premium_getBoostsList = new TL_stories.TL_premium_getBoostsList();
        tL_premium_getBoostsList.limit = this.limitGifts;
        tL_premium_getBoostsList.gifts = true;
        tL_premium_getBoostsList.offset = this.lastGiftsOffset;
        tL_premium_getBoostsList.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_premium_getBoostsList, new RequestDelegate() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadOnlyGifts$10(countDownLatch, runnable, tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadOnlyGifts$10(final CountDownLatch countDownLatch, final Runnable runnable, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelBoostLayout$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadOnlyGifts$9(countDownLatch, tLObject, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadOnlyGifts$9(CountDownLatch countDownLatch, TLObject tLObject, Runnable runnable) {
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        if (tLObject != null) {
            this.limitGifts = 20;
            TL_stories.TL_premium_boostsList tL_premium_boostsList = (TL_stories.TL_premium_boostsList) tLObject;
            boolean z = false;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_premium_boostsList.users, false);
            this.lastGiftsOffset = tL_premium_boostsList.next_offset;
            this.gifts.addAll(tL_premium_boostsList.boosts);
            ArrayList<TL_stories.Boost> arrayList = this.gifts;
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= size) {
                    break;
                }
                TL_stories.Boost boost = arrayList.get(i2);
                i2++;
                int i4 = boost.multiplier;
                if (i4 > 0) {
                    i3 = i4;
                }
                i += i3;
            }
            this.nextGiftsRemaining = Math.max(0, tL_premium_boostsList.count - i);
            if (!TextUtils.isEmpty(tL_premium_boostsList.next_offset) && this.nextGiftsRemaining > 0) {
                z = true;
            }
            this.hasGiftsNext = z;
            this.totalGifts = tL_premium_boostsList.count;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public class ItemInternal extends AdapterWithDiffUtils.Item {
        TL_stories.Boost booster;
        boolean isLast;
        TL_stories.PrepaidGiveaway prepaidGiveaway;
        int tab;
        String title;

        public ItemInternal(int i, String str) {
            super(i, false);
            this.title = str;
        }

        public ItemInternal(int i, TL_stories.Boost boost, boolean z, int i2) {
            super(i, true);
            this.booster = boost;
            this.isLast = z;
            this.tab = i2;
        }

        public ItemInternal(int i, TL_stories.PrepaidGiveaway prepaidGiveaway, boolean z) {
            super(i, true);
            this.prepaidGiveaway = prepaidGiveaway;
            this.isLast = z;
        }

        public ItemInternal(int i, boolean z) {
            super(i, z);
        }

        public boolean equals(Object obj) {
            TL_stories.PrepaidGiveaway prepaidGiveaway;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ItemInternal itemInternal = (ItemInternal) obj;
            TL_stories.PrepaidGiveaway prepaidGiveaway2 = this.prepaidGiveaway;
            if (prepaidGiveaway2 != null && (prepaidGiveaway = itemInternal.prepaidGiveaway) != null) {
                return prepaidGiveaway2.id == prepaidGiveaway.id && this.isLast == itemInternal.isLast;
            }
            TL_stories.Boost boost = this.booster;
            if (boost == null || itemInternal.booster == null) {
                return true;
            }
            return boost.id.hashCode() == itemInternal.booster.id.hashCode() && this.isLast == itemInternal.isLast && this.tab == itemInternal.tab;
        }

        public int hashCode() {
            return Objects.hash(this.title, this.booster, this.prepaidGiveaway, Boolean.valueOf(this.isLast), Integer.valueOf(this.tab));
        }
    }

    public void createEmptyView(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.progressLayout = linearLayout;
        linearLayout.setOrientation(1);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C2665R.raw.statistic_preload, 120, 120);
        rLottieImageView.playAnimation();
        TextView textView = new TextView(context);
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.bold());
        int i = Theme.key_player_actionBarTitle;
        textView.setTextColor(Theme.getColor(i));
        textView.setTag(Integer.valueOf(i));
        textView.setText(LocaleController.getString(C2665R.string.LoadingStats));
        textView.setGravity(1);
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 15.0f);
        int i2 = Theme.key_player_actionBarSubtitle;
        textView2.setTextColor(Theme.getColor(i2));
        textView2.setTag(Integer.valueOf(i2));
        textView2.setText(LocaleController.getString(C2665R.string.LoadingStatsDescription));
        textView2.setGravity(1);
        this.progressLayout.addView(rLottieImageView, LayoutHelper.createLinear(120, 120, 1, 0, 0, 0, 20));
        this.progressLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 10));
        this.progressLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 1));
        addView(this.progressLayout, LayoutHelper.createFrame(240, -2.0f, 17, 0.0f, 0.0f, 0.0f, 30.0f));
    }
}
