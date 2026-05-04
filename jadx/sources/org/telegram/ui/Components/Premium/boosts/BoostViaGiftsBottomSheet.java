package org.telegram.ui.Components.Premium.boosts;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import de.robv.android.xposed.callbacks.XCallback;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FireworksOverlay;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet;
import org.telegram.ui.Components.Premium.boosts.adapters.BoostAdapter;
import org.telegram.ui.Components.Premium.boosts.cells.ActionBtnCell;
import org.telegram.ui.Components.Premium.boosts.cells.AddChannelCell;
import org.telegram.ui.Components.Premium.boosts.cells.BaseCell;
import org.telegram.ui.Components.Premium.boosts.cells.BoostTypeCell;
import org.telegram.ui.Components.Premium.boosts.cells.ChatCell;
import org.telegram.ui.Components.Premium.boosts.cells.DateEndCell;
import org.telegram.ui.Components.Premium.boosts.cells.DurationCell;
import org.telegram.ui.Components.Premium.boosts.cells.EnterPrizeCell;
import org.telegram.ui.Components.Premium.boosts.cells.ParticipantsTypeCell;
import org.telegram.ui.Components.Premium.boosts.cells.StarGiveawayOptionCell;
import org.telegram.ui.Components.Premium.boosts.cells.SwitcherCell;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SlideChooseView;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;

/* JADX INFO: loaded from: classes7.dex */
public class BoostViaGiftsBottomSheet extends BottomSheetWithRecyclerListView implements SelectorBottomSheet.SelectedObjectsListener, NotificationCenter.NotificationCenterDelegate {
    private ActionBtnCell actionBtn;
    private ActionListener actionListener;
    private BoostAdapter adapter;
    private String additionalPrize;
    private final TLRPC.Chat currentChat;
    private final List giftCodeOptions;
    private final Runnable hideKeyboardRunnable;
    private boolean isAdditionalPrizeSelected;
    private boolean isShowWinnersSelected;
    private final ArrayList items;
    private Runnable onCloseClick;
    private final TL_stories.PrepaidGiveaway prepaidGiveaway;
    private int selectedBoostSubType;
    private int selectedBoostType;
    private final List selectedChats;
    private final List selectedCountries;
    private long selectedEndDate;
    private int selectedMonths;
    private int selectedParticipantsType;
    private int selectedSliderIndex;
    private long selectedStars;
    private int selectedStarsSliderIndex;
    private final List selectedUsers;
    private final List sliderStarsValues;
    private final List sliderValues;
    private boolean starOptionsExpanded;
    private final List starsNotExtended;
    private int top;

    public interface ActionListener {
        void onAddChat(List list);

        void onSelectCountries(List list);

        void onSelectUser(List list);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected boolean needPaddingShadow() {
        return false;
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public /* synthetic */ void onShowToast(String str) {
        SelectorBottomSheet.SelectedObjectsListener.CC.$default$onShowToast(this, str);
    }

    public BoostViaGiftsBottomSheet(final BaseFragment baseFragment, boolean z, boolean z2, final long j, final TL_stories.PrepaidGiveaway prepaidGiveaway) {
        List listAsList;
        List listAsList2;
        super(baseFragment, z, z2);
        ArrayList arrayList = new ArrayList();
        this.items = arrayList;
        if (BoostRepository.isGoogleBillingAvailable()) {
            listAsList = Arrays.asList(1, 3, 5, 7, 10, 25, 50);
        } else {
            listAsList = Arrays.asList(1, 3, 5, 7, 10, 25, 50, 100);
        }
        this.sliderValues = listAsList;
        if (BoostRepository.isGoogleBillingAvailable()) {
            listAsList2 = Arrays.asList(1, 3, 5, 7, 10, 25, 50);
        } else {
            listAsList2 = Arrays.asList(1, 3, 5, 7, 10, 25, 50, 100);
        }
        this.sliderStarsValues = listAsList2;
        this.starsNotExtended = Arrays.asList(750, Integer.valueOf(XCallback.PRIORITY_HIGHEST), 50000);
        this.selectedChats = new ArrayList();
        this.selectedUsers = new ArrayList();
        this.selectedCountries = new ArrayList();
        this.giftCodeOptions = new ArrayList();
        this.selectedBoostType = BoostTypeCell.TYPE_PREMIUM;
        this.selectedBoostSubType = BoostTypeCell.TYPE_GIVEAWAY;
        this.selectedParticipantsType = ParticipantsTypeCell.TYPE_ALL;
        this.selectedMonths = 12;
        this.selectedEndDate = BoostDialogs.getThreeDaysAfterToday();
        this.selectedSliderIndex = 2;
        this.selectedStarsSliderIndex = 2;
        this.additionalPrize = _UrlKt.FRAGMENT_ENCODE_SET;
        this.isShowWinnersSelected = true;
        this.hideKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.prepaidGiveaway = prepaidGiveaway;
        this.topPadding = 0.15f;
        setApplyTopPadding(false);
        setApplyBottomPadding(false);
        this.useBackgroundTopPadding = false;
        this.backgroundPaddingLeft = 0;
        updateTitle();
        ((ViewGroup.MarginLayoutParams) this.actionBar.getLayoutParams()).leftMargin = 0;
        ((ViewGroup.MarginLayoutParams) this.actionBar.getLayoutParams()).rightMargin = 0;
        if (prepaidGiveaway instanceof TL_stories.TL_prepaidStarsGiveaway) {
            this.selectedBoostType = BoostTypeCell.TYPE_STARS;
        }
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, AndroidUtilities.dp(68.0f));
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (i2 == 1) {
                    AndroidUtilities.hideKeyboard(recyclerView);
                }
            }
        });
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$2(baseFragment, view, i2);
            }
        });
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
        this.currentChat = chat;
        this.adapter.setItems(chat, arrayList, this.recyclerListView, new SlideChooseView.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.SlideChooseView.Callback
            public final void onOptionSelected(int i2) {
                this.f$0.lambda$new$3(i2);
            }

            @Override // org.telegram.ui.Components.SlideChooseView.Callback
            public /* synthetic */ void onTouchEnd() {
                SlideChooseView.Callback.CC.$default$onTouchEnd(this);
            }
        }, new ChatCell.ChatDeleteListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.Premium.boosts.cells.ChatCell.ChatDeleteListener
            public final void onChatDeleted(TLRPC.Chat chat2) {
                this.f$0.lambda$new$4(chat2);
            }
        }, new EnterPrizeCell.AfterTextChangedListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.Premium.boosts.cells.EnterPrizeCell.AfterTextChangedListener
            public final void afterTextChanged(String str) {
                this.f$0.lambda$new$5(str);
            }
        });
        updateRows(false, false);
        ActionBtnCell actionBtnCell = new ActionBtnCell(getContext(), this.resourcesProvider);
        this.actionBtn = actionBtnCell;
        actionBtnCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$20(prepaidGiveaway, j, baseFragment, view);
            }
        });
        updateActionButton(false);
        this.containerView.addView(this.actionBtn, LayoutHelper.createFrame(-1, 68.0f, 80, 0.0f, 0.0f, 0.0f, 0.0f));
        loadOptions();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starGiveawayOptionsLoaded);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        AndroidUtilities.hideKeyboard(this.recyclerListView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(BaseFragment baseFragment, View view, int i) {
        ActionListener actionListener;
        if (view instanceof SwitcherCell) {
            SwitcherCell switcherCell = (SwitcherCell) view;
            int type = switcherCell.getType();
            boolean z = !switcherCell.isChecked();
            switcherCell.setChecked(z);
            if (type == SwitcherCell.TYPE_WINNERS) {
                this.isShowWinnersSelected = z;
                updateRows(false, false);
            } else if (type == SwitcherCell.TYPE_ADDITION_PRIZE) {
                switcherCell.setDivider(z);
                this.isAdditionalPrizeSelected = z;
                updateRows(false, false);
                this.adapter.notifyAdditionalPrizeItem(z);
                this.adapter.notifyAllVisibleTextDividers();
                if (!this.isAdditionalPrizeSelected) {
                    AndroidUtilities.runOnUIThread(this.hideKeyboardRunnable, 250L);
                } else {
                    AndroidUtilities.cancelRunOnUIThread(this.hideKeyboardRunnable);
                }
            }
        }
        if (view instanceof BaseCell) {
            if (view instanceof BoostTypeCell) {
                int selectedType = ((BoostTypeCell) view).getSelectedType();
                if (selectedType == BoostTypeCell.TYPE_PREMIUM || selectedType == BoostTypeCell.TYPE_STARS) {
                    if (selectedType == BoostTypeCell.TYPE_PREMIUM && this.selectedBoostType == selectedType) {
                        ActionListener actionListener2 = this.actionListener;
                        if (actionListener2 != null) {
                            actionListener2.onSelectUser(this.selectedUsers);
                            return;
                        }
                        return;
                    }
                    this.selectedBoostType = selectedType;
                    updateRows(true, true);
                    updateActionButton(true);
                    updateTitle();
                } else if (selectedType == BoostTypeCell.TYPE_SPECIFIC_USERS) {
                    ActionListener actionListener3 = this.actionListener;
                    if (actionListener3 != null) {
                        actionListener3.onSelectUser(this.selectedUsers);
                    }
                } else {
                    this.selectedBoostSubType = selectedType;
                    updateRows(true, true);
                    updateActionButton(true);
                    updateTitle();
                }
            } else {
                ((BaseCell) view).markChecked(this.recyclerListView);
            }
        }
        if (view instanceof ParticipantsTypeCell) {
            int selectedType2 = ((ParticipantsTypeCell) view).getSelectedType();
            if (this.selectedParticipantsType == selectedType2 && (actionListener = this.actionListener) != null) {
                actionListener.onSelectCountries(this.selectedCountries);
            }
            this.selectedParticipantsType = selectedType2;
            updateRows(false, false);
            return;
        }
        if (view instanceof DurationCell) {
            this.selectedMonths = ((TLRPC.TL_premiumGiftCodeOption) ((DurationCell) view).getGifCode()).months;
            updateRows(false, false);
            this.adapter.notifyAllVisibleTextDividers();
            return;
        }
        if (view instanceof DateEndCell) {
            BoostDialogs.showDatePicker(baseFragment.getContext(), this.selectedEndDate, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z2, int i2, int i3) {
                    this.f$0.lambda$new$1(z2, i2, i3);
                }
            }, this.resourcesProvider);
            return;
        }
        if (view instanceof AddChannelCell) {
            ActionListener actionListener4 = this.actionListener;
            if (actionListener4 != null) {
                actionListener4.onAddChat(this.selectedChats);
                return;
            }
            return;
        }
        if (view instanceof StarGiveawayOptionCell) {
            TL_stars.TL_starsGiveawayOption option = ((StarGiveawayOptionCell) view).getOption();
            if (option != null) {
                this.selectedStars = option.stars;
                updateRows(true, true);
                updateActionButton(true);
                updateTitle();
                return;
            }
            return;
        }
        if (view instanceof StarsIntroActivity.ExpandView) {
            this.starOptionsExpanded = true;
            updateRows(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(boolean z, int i, int i2) {
        this.selectedEndDate = ((long) i) * 1000;
        updateRows(false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(int i) {
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            this.selectedSliderIndex = i;
        } else {
            this.selectedStarsSliderIndex = i;
        }
        this.actionBtn.updateCounter(getSelectedSliderValueWithBoosts());
        if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
            updateRows(true, true);
        } else {
            updateRows(false, false);
        }
        this.adapter.updateBoostCounter(getSelectedSliderValueWithBoosts());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC.Chat chat) {
        this.selectedChats.remove(chat);
        updateRows(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(String str) {
        this.additionalPrize = str;
        updateRows(false, false);
        updateRows(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$20(final TL_stories.PrepaidGiveaway prepaidGiveaway, final long j, BaseFragment baseFragment, View view) {
        if (this.actionBtn.isLoading()) {
            return;
        }
        if (isPreparedGiveaway()) {
            final TL_stories.TL_prepaidStarsGiveaway tL_prepaidStarsGiveaway = prepaidGiveaway instanceof TL_stories.TL_prepaidStarsGiveaway ? (TL_stories.TL_prepaidStarsGiveaway) prepaidGiveaway : null;
            final long j2 = tL_prepaidStarsGiveaway != null ? tL_prepaidStarsGiveaway.stars : 0L;
            BoostDialogs.showStartGiveawayDialog(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$10(prepaidGiveaway, tL_prepaidStarsGiveaway, j, j2);
                }
            });
            return;
        }
        if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
            Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
            if (activityFindActivity == null) {
                activityFindActivity = LaunchActivity.instance;
            }
            Activity activity = activityFindActivity;
            if (activity == null || activity.isFinishing()) {
                return;
            }
            final TL_stars.TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption();
            int selectedSliderValue = getSelectedSliderValue();
            if (selectedStarsOption == null) {
                return;
            }
            this.actionBtn.button.setLoading(true);
            StarsController.getInstance(this.currentAccount).buyGiveaway(activity, this.currentChat, this.selectedChats, selectedStarsOption, selectedSliderValue, this.selectedCountries, BoostRepository.prepareServerDate(this.selectedEndDate), this.isShowWinnersSelected, this.selectedParticipantsType == ParticipantsTypeCell.TYPE_NEW, this.isAdditionalPrizeSelected, this.additionalPrize, new Utilities.Callback2() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$new$12(selectedStarsOption, (Boolean) obj, (String) obj2);
                }
            });
            return;
        }
        if (this.selectedBoostSubType == BoostTypeCell.TYPE_SPECIFIC_USERS) {
            List listFilterGiftOptions = BoostRepository.filterGiftOptions(this.giftCodeOptions, this.selectedUsers.size());
            for (int i = 0; i < listFilterGiftOptions.size(); i++) {
                TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption = (TLRPC.TL_premiumGiftCodeOption) listFilterGiftOptions.get(i);
                if (tL_premiumGiftCodeOption.months == this.selectedMonths && this.selectedUsers.size() > 0) {
                    if (BoostRepository.isGoogleBillingAvailable() && BoostDialogs.checkReduceUsers(getContext(), this.resourcesProvider, this.giftCodeOptions, tL_premiumGiftCodeOption)) {
                        return;
                    }
                    this.actionBtn.updateLoading(true);
                    BoostRepository.payGiftCode(this.selectedUsers, tL_premiumGiftCodeOption, this.currentChat, null, baseFragment, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$new$14((Void) obj);
                        }
                    }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$new$15((TLRPC.TL_error) obj);
                        }
                    });
                    return;
                }
            }
            return;
        }
        List listFilterGiftOptions2 = BoostRepository.filterGiftOptions(this.giftCodeOptions, getSelectedSliderValue());
        for (int i2 = 0; i2 < listFilterGiftOptions2.size(); i2++) {
            TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption2 = (TLRPC.TL_premiumGiftCodeOption) listFilterGiftOptions2.get(i2);
            if (tL_premiumGiftCodeOption2.months == this.selectedMonths) {
                if (BoostRepository.isGoogleBillingAvailable() && BoostDialogs.checkReduceQuantity(this.sliderValues, getContext(), this.resourcesProvider, this.giftCodeOptions, tL_premiumGiftCodeOption2, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$16((TLRPC.TL_premiumGiftCodeOption) obj);
                    }
                })) {
                    return;
                }
                boolean z = this.selectedParticipantsType == ParticipantsTypeCell.TYPE_NEW;
                int iPrepareServerDate = BoostRepository.prepareServerDate(this.selectedEndDate);
                this.actionBtn.updateLoading(true);
                BoostRepository.payGiveAway(this.selectedChats, this.selectedCountries, tL_premiumGiftCodeOption2, this.currentChat, iPrepareServerDate, z, baseFragment, this.isShowWinnersSelected, this.isAdditionalPrizeSelected, this.additionalPrize, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$18((Void) obj);
                    }
                }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$19((TLRPC.TL_error) obj);
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(final TL_stories.PrepaidGiveaway prepaidGiveaway, final TL_stories.TL_prepaidStarsGiveaway tL_prepaidStarsGiveaway, final long j, final long j2) {
        int iPrepareServerDate = BoostRepository.prepareServerDate(this.selectedEndDate);
        boolean z = this.selectedParticipantsType == ParticipantsTypeCell.TYPE_NEW;
        this.actionBtn.updateLoading(true);
        BoostRepository.launchPreparedGiveaway(prepaidGiveaway, this.selectedChats, this.selectedCountries, this.currentChat, iPrepareServerDate, z, this.isShowWinnersSelected, this.isAdditionalPrizeSelected, prepaidGiveaway.quantity, this.additionalPrize, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda21
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$8(tL_prepaidStarsGiveaway, j, j2, prepaidGiveaway, (Void) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$9((TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(TL_stories.TL_prepaidStarsGiveaway tL_prepaidStarsGiveaway, long j, final long j2, final TL_stories.PrepaidGiveaway prepaidGiveaway, Void r7) {
        lambda$new$0();
        if (tL_prepaidStarsGiveaway != null) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                final ChatActivity chatActivityOf = ChatActivity.of(j);
                chatActivityOf.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda26
                    @Override // java.lang.Runnable
                    public final void run() {
                        BulletinFactory.of(chatActivityOf).createSimpleBulletin(C2484R.raw.stars_topup, LocaleController.getString(C2484R.string.StarsGiveawaySentPopup), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsGiveawaySentPopupInfo", (int) j2))).show(true);
                    }
                });
                safeLastFragment.presentFragment(chatActivityOf);
                return;
            }
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$7(prepaidGiveaway);
            }
        }, 220L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(TL_stories.PrepaidGiveaway prepaidGiveaway) {
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostByChannelCreated, this.currentChat, Boolean.TRUE, prepaidGiveaway);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(TLRPC.TL_error tL_error) {
        this.actionBtn.updateLoading(false);
        BoostDialogs.showToastError(getContext(), tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(final TL_stars.TL_starsGiveawayOption tL_starsGiveawayOption, Boolean bool, String str) {
        this.actionBtn.button.setLoading(false);
        if (getContext() == null) {
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        FireworksOverlay fireworksOverlay = LaunchActivity.instance.getFireworksOverlay();
        if (safeLastFragment == null) {
            return;
        }
        if (!bool.booleanValue()) {
            if (str != null) {
                lambda$new$0();
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2484R.raw.error, LocaleController.formatString(C2484R.string.UnknownErrorCode, str)).show();
                return;
            }
            return;
        }
        lambda$new$0();
        final ChatActivity chatActivityOf = ChatActivity.of(-this.currentChat.id);
        safeLastFragment.presentFragment(chatActivityOf);
        safeLastFragment.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                BulletinFactory.of(chatActivityOf).createSimpleBulletin(C2484R.raw.stars_send, LocaleController.getString(C2484R.string.StarsGiveawaySentPopup), AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("StarsGiveawaySentPopupInfo", (int) tL_starsGiveawayOption.stars))).setDuration(5000).show(true);
            }
        });
        if (fireworksOverlay != null) {
            fireworksOverlay.start(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(Void r3) {
        lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$13();
            }
        }, 220L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13() {
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostByChannelCreated, this.currentChat, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15(TLRPC.TL_error tL_error) {
        this.actionBtn.updateLoading(false);
        BoostDialogs.showToastError(getContext(), tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption) {
        this.selectedSliderIndex = this.sliderValues.indexOf(Integer.valueOf(tL_premiumGiftCodeOption.users));
        updateRows(true, true);
        updateActionButton(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18(Void r3) {
        lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$17();
            }
        }, 220L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17() {
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostByChannelCreated, this.currentChat, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$19(TLRPC.TL_error tL_error) {
        this.actionBtn.updateLoading(false);
        BoostDialogs.showToastError(getContext(), tL_error);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        RecyclerListView recyclerListView;
        if (i == NotificationCenter.starGiveawayOptionsLoaded && (recyclerListView = this.recyclerListView) != null && recyclerListView.isAttachedToWindow()) {
            updateRows(true, true);
        }
    }

    public void setOnCloseClick(Runnable runnable) {
        this.onCloseClick = runnable;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        Runnable runnable = this.onCloseClick;
        if (runnable != null) {
            runnable.run();
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiveawayOptionsLoaded);
    }

    private void loadOptions() {
        BoostRepository.loadGiftOptions(this.currentAccount, this.currentChat, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$loadOptions$21((List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadOptions$21(List list) {
        this.giftCodeOptions.clear();
        this.giftCodeOptions.addAll(list);
        updateRows(true, true);
    }

    private void updateActionButton(boolean z) {
        if (isPreparedGiveaway()) {
            TL_stories.PrepaidGiveaway prepaidGiveaway = this.prepaidGiveaway;
            if (prepaidGiveaway instanceof TL_stories.TL_prepaidStarsGiveaway) {
                this.actionBtn.setStartGiveAwayStyle(prepaidGiveaway.quantity, z);
                return;
            } else {
                this.actionBtn.setStartGiveAwayStyle(prepaidGiveaway.quantity * BoostRepository.giveawayBoostsPerPremium(), z);
                return;
            }
        }
        if (this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY) {
            this.actionBtn.setStartGiveAwayStyle(getSelectedSliderValueWithBoosts(), z);
        } else {
            this.actionBtn.setGiftPremiumStyle(this.selectedUsers.size() * BoostRepository.giveawayBoostsPerPremium(), z, this.selectedUsers.size() > 0);
        }
    }

    private boolean isGiveaway() {
        return this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY;
    }

    public void setActionListener(ActionListener actionListener) {
        this.actionListener = actionListener;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected void onPreDraw(Canvas canvas, int i, float f) {
        this.top = i;
    }

    public int getTop() {
        return Math.max(-AndroidUtilities.dp(16.0f), this.top - (this.actionBar.getVisibility() == 0 ? AndroidUtilities.statusBarHeight + AndroidUtilities.dp(16.0f) : 0));
    }

    private int getSelectedSliderValue() {
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            return ((Integer) this.sliderValues.get(this.selectedSliderIndex)).intValue();
        }
        List sliderValues = getSliderValues();
        int i = this.selectedStarsSliderIndex;
        if (i < 0 || i >= sliderValues.size()) {
            this.selectedStarsSliderIndex = 0;
        }
        if (this.selectedStarsSliderIndex >= sliderValues.size()) {
            return 0;
        }
        return ((Integer) sliderValues.get(this.selectedStarsSliderIndex)).intValue();
    }

    private int getSelectedSliderValueWithBoosts() {
        int selectedSliderValue;
        int iGiveawayBoostsPerPremium;
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            selectedSliderValue = ((Integer) this.sliderValues.get(this.selectedSliderIndex)).intValue();
            iGiveawayBoostsPerPremium = BoostRepository.giveawayBoostsPerPremium();
        } else {
            TL_stars.TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption();
            if (selectedStarsOption != null) {
                return selectedStarsOption.yearly_boosts;
            }
            selectedSliderValue = getSelectedSliderValue();
            iGiveawayBoostsPerPremium = BoostRepository.giveawayBoostsPerPremium();
        }
        return selectedSliderValue * iGiveawayBoostsPerPremium;
    }

    private long getSelectedPerUserStars() {
        List perUserStarsValues = getPerUserStarsValues();
        int i = this.selectedStarsSliderIndex;
        if (i < 0 || i >= perUserStarsValues.size()) {
            this.selectedStarsSliderIndex = 0;
        }
        if (this.selectedStarsSliderIndex >= perUserStarsValues.size()) {
            return 1L;
        }
        return ((Long) perUserStarsValues.get(this.selectedStarsSliderIndex)).longValue();
    }

    private long getSelectedPerUserStars(long j) {
        List perUserStarsValues = getPerUserStarsValues(j);
        if (perUserStarsValues.isEmpty()) {
            return Math.round(j / getSelectedPerUserStars());
        }
        return ((Long) perUserStarsValues.get(Utilities.clamp(this.selectedStarsSliderIndex, perUserStarsValues.size() - 1, 0))).longValue();
    }

    public TL_stars.TL_starsGiveawayOption getSelectedStarsOption() {
        return getSelectedStarsOption(this.selectedStars);
    }

    public TL_stars.TL_starsGiveawayOption getSelectedStarsOption(long j) {
        ArrayList giveawayOptions = StarsController.getInstance(this.currentAccount).getGiveawayOptions();
        if (giveawayOptions == null) {
            return null;
        }
        for (int i = 0; i < giveawayOptions.size(); i++) {
            TL_stars.TL_starsGiveawayOption tL_starsGiveawayOption = (TL_stars.TL_starsGiveawayOption) giveawayOptions.get(i);
            if (tL_starsGiveawayOption != null && tL_starsGiveawayOption.stars == j) {
                return tL_starsGiveawayOption;
            }
        }
        return null;
    }

    private List getSliderValues() {
        if (this.selectedBoostType == BoostTypeCell.TYPE_PREMIUM) {
            return this.sliderValues;
        }
        ArrayList arrayList = new ArrayList();
        TL_stars.TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption();
        if (selectedStarsOption != null) {
            for (int i = 0; i < selectedStarsOption.winners.size(); i++) {
                TL_stars.TL_starsGiveawayWinnersOption tL_starsGiveawayWinnersOption = selectedStarsOption.winners.get(i);
                if (!arrayList.contains(Integer.valueOf(tL_starsGiveawayWinnersOption.users))) {
                    arrayList.add(Integer.valueOf(tL_starsGiveawayWinnersOption.users));
                }
            }
        }
        return arrayList;
    }

    private List getPerUserStarsValues() {
        return getPerUserStarsValues(this.selectedStars);
    }

    private List getPerUserStarsValues(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TL_stars.TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption(j);
        if (selectedStarsOption != null) {
            for (int i = 0; i < selectedStarsOption.winners.size(); i++) {
                TL_stars.TL_starsGiveawayWinnersOption tL_starsGiveawayWinnersOption = selectedStarsOption.winners.get(i);
                if (!arrayList.contains(Integer.valueOf(tL_starsGiveawayWinnersOption.users))) {
                    arrayList.add(Integer.valueOf(tL_starsGiveawayWinnersOption.users));
                    arrayList2.add(Long.valueOf(tL_starsGiveawayWinnersOption.per_user_stars));
                }
            }
        }
        return arrayList2;
    }

    private List getStarsOptions() {
        ArrayList giveawayOptions = StarsController.getInstance(this.currentAccount).getGiveawayOptions();
        ArrayList arrayList = new ArrayList();
        if (giveawayOptions != null) {
            for (int i = 0; i < giveawayOptions.size(); i++) {
                TL_stars.TL_starsGiveawayOption tL_starsGiveawayOption = (TL_stars.TL_starsGiveawayOption) giveawayOptions.get(i);
                if (tL_starsGiveawayOption != null && !arrayList.contains(Long.valueOf(tL_starsGiveawayOption.stars))) {
                    arrayList.add(Long.valueOf(tL_starsGiveawayOption.stars));
                }
            }
        }
        return arrayList;
    }

    private boolean isPreparedGiveaway() {
        return this.prepaidGiveaway != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateRows(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        List list;
        ArrayList arrayList = new ArrayList(this.items);
        this.items.clear();
        this.items.add(BoostAdapter.Item.asHeader(this.selectedBoostType == BoostTypeCell.TYPE_STARS));
        if (isPreparedGiveaway()) {
            this.items.add(BoostAdapter.Item.asSingleBoost(this.prepaidGiveaway));
        } else {
            this.items.add(BoostAdapter.Item.asBoost(BoostTypeCell.TYPE_PREMIUM, this.selectedUsers.size(), null, this.selectedBoostType));
            this.items.add(BoostAdapter.Item.asBoost(BoostTypeCell.TYPE_STARS, this.selectedUsers.size(), null, this.selectedBoostType));
        }
        this.items.add(BoostAdapter.Item.asDivider());
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(this.currentChat);
        if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
            if (!isPreparedGiveaway()) {
                BoostAdapter.Item itemAsSubTitleWithCounter = BoostAdapter.Item.asSubTitleWithCounter(LocaleController.getString(C2484R.string.BoostingStarsOptions), getSelectedSliderValueWithBoosts());
                this.items.add(itemAsSubTitleWithCounter);
                List starsOptions = getStarsOptions();
                int i = 0;
                int i2 = 0;
                while (i < starsOptions.size()) {
                    TL_stars.TL_starsGiveawayOption selectedStarsOption = getSelectedStarsOption(((Long) starsOptions.get(i)).longValue());
                    if (!selectedStarsOption.missingStorePrice) {
                        if (this.selectedStars == 0 && selectedStarsOption.isDefault) {
                            this.selectedStars = selectedStarsOption.stars;
                        }
                        if (!selectedStarsOption.extended || this.starOptionsExpanded) {
                            i2++;
                            list = starsOptions;
                            this.items.add(BoostAdapter.Item.asOption(selectedStarsOption, this.starOptionsExpanded ? i : i + 2, getSelectedPerUserStars(selectedStarsOption.stars), this.selectedStars == selectedStarsOption.stars, true));
                        } else {
                            list = starsOptions;
                        }
                    }
                    i++;
                    starsOptions = list;
                }
                List list2 = starsOptions;
                if (!this.starOptionsExpanded && i2 < list2.size()) {
                    this.items.add(BoostAdapter.Item.asExpandOptions());
                }
                if (i2 <= 0) {
                    this.items.add(BoostAdapter.Item.asOption(null, 0, 1L, false, true));
                    this.items.add(BoostAdapter.Item.asOption(null, 1, 1L, false, true));
                    this.items.add(BoostAdapter.Item.asOption(null, 2, 1L, false, false));
                }
                itemAsSubTitleWithCounter.intValue = getSelectedSliderValueWithBoosts();
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(C2484R.string.BoostingStarsOptionsInfo), false));
                List sliderValues = getSliderValues();
                int i3 = this.selectedStarsSliderIndex;
                if (i3 < 0 || i3 >= sliderValues.size()) {
                    this.selectedStarsSliderIndex = 0;
                }
                if (sliderValues.size() > 1) {
                    this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(C2484R.string.BoostingStarsQuantityPrizes)));
                    this.items.add(BoostAdapter.Item.asSlider(getSliderValues(), this.selectedStarsSliderIndex));
                    this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(C2484R.string.BoostingStarsQuantityPrizesInfo), false));
                }
            } else {
                TL_stories.PrepaidGiveaway prepaidGiveaway = this.prepaidGiveaway;
                if (prepaidGiveaway instanceof TL_stories.TL_prepaidStarsGiveaway) {
                    this.selectedStars = ((TL_stories.TL_prepaidStarsGiveaway) prepaidGiveaway).stars;
                }
            }
            this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(C2484R.string.BoostingChannelsGroupsIncludedGiveaway)));
            if (isPreparedGiveaway()) {
                TL_stories.PrepaidGiveaway prepaidGiveaway2 = this.prepaidGiveaway;
                if (prepaidGiveaway2 instanceof TL_stories.TL_prepaidStarsGiveaway) {
                    this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, prepaidGiveaway2.quantity));
                } else {
                    this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, prepaidGiveaway2.quantity * BoostRepository.giveawayBoostsPerPremium()));
                }
            } else {
                this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, getSelectedSliderValueWithBoosts()));
            }
            for (TLObject tLObject : this.selectedChats) {
                if (tLObject instanceof TLRPC.Chat) {
                    z5 = true;
                    this.items.add(BoostAdapter.Item.asChat((TLRPC.Chat) tLObject, true, getSelectedSliderValueWithBoosts()));
                } else {
                    z5 = true;
                }
                if (tLObject instanceof TLRPC.InputPeer) {
                    this.items.add(BoostAdapter.Item.asPeer((TLRPC.InputPeer) tLObject, z5, getSelectedSliderValueWithBoosts()));
                }
            }
            if (this.selectedChats.size() < BoostRepository.giveawayAddPeersMax()) {
                this.items.add(BoostAdapter.Item.asAddChannel());
            }
            this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(C2484R.string.BoostingChooseChannelsGroupsNeedToJoin), false));
            this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(C2484R.string.BoostingEligibleUsers)));
            this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_ALL, this.selectedParticipantsType, true, this.selectedCountries));
            this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_NEW, this.selectedParticipantsType, false, this.selectedCountries));
            this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2484R.string.BoostingChooseLimitGiveaway : C2484R.string.BoostingChooseLimitGiveawayGroups), false));
        } else {
            if (this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY) {
                if (!isPreparedGiveaway()) {
                    this.items.add(BoostAdapter.Item.asSubTitleWithCounter(LocaleController.getString(C2484R.string.BoostingQuantityPrizes), getSelectedSliderValueWithBoosts()));
                    this.items.add(BoostAdapter.Item.asSlider(this.sliderValues, this.selectedSliderIndex));
                    this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(C2484R.string.BoostingChooseHowMany), false));
                }
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(C2484R.string.BoostingChannelsGroupsIncludedGiveaway)));
                if (isPreparedGiveaway()) {
                    TL_stories.PrepaidGiveaway prepaidGiveaway3 = this.prepaidGiveaway;
                    if (prepaidGiveaway3 instanceof TL_stories.TL_prepaidStarsGiveaway) {
                        this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, prepaidGiveaway3.quantity));
                    } else {
                        this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, prepaidGiveaway3.quantity * BoostRepository.giveawayBoostsPerPremium()));
                    }
                } else {
                    this.items.add(BoostAdapter.Item.asChat(this.currentChat, false, getSelectedSliderValueWithBoosts()));
                }
                for (TLObject tLObject2 : this.selectedChats) {
                    if (tLObject2 instanceof TLRPC.Chat) {
                        z3 = true;
                        this.items.add(BoostAdapter.Item.asChat((TLRPC.Chat) tLObject2, true, getSelectedSliderValueWithBoosts()));
                    } else {
                        z3 = true;
                    }
                    if (tLObject2 instanceof TLRPC.InputPeer) {
                        this.items.add(BoostAdapter.Item.asPeer((TLRPC.InputPeer) tLObject2, z3, getSelectedSliderValueWithBoosts()));
                    }
                }
                if (this.selectedChats.size() < BoostRepository.giveawayAddPeersMax()) {
                    this.items.add(BoostAdapter.Item.asAddChannel());
                }
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(C2484R.string.BoostingChooseChannelsGroupsNeedToJoin), false));
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(C2484R.string.BoostingEligibleUsers)));
                this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_ALL, this.selectedParticipantsType, true, this.selectedCountries));
                this.items.add(BoostAdapter.Item.asParticipants(ParticipantsTypeCell.TYPE_NEW, this.selectedParticipantsType, false, this.selectedCountries));
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(zIsChannelAndNotMegaGroup ? C2484R.string.BoostingChooseLimitGiveaway : C2484R.string.BoostingChooseLimitGiveawayGroups), false));
            }
            if (!isPreparedGiveaway()) {
                this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(C2484R.string.BoostingDurationOfPremium)));
                List listFilterGiftOptions = BoostRepository.filterGiftOptions(this.giftCodeOptions, isGiveaway() ? getSelectedSliderValue() : this.selectedUsers.size());
                int i4 = 0;
                while (i4 < listFilterGiftOptions.size()) {
                    TLRPC.TL_premiumGiftCodeOption tL_premiumGiftCodeOption = (TLRPC.TL_premiumGiftCodeOption) listFilterGiftOptions.get(i4);
                    this.items.add(BoostAdapter.Item.asDuration(tL_premiumGiftCodeOption, tL_premiumGiftCodeOption.months, isGiveaway() ? getSelectedSliderValue() : this.selectedUsers.size(), tL_premiumGiftCodeOption.amount, this.selectedMonths, tL_premiumGiftCodeOption.currency, i4 != listFilterGiftOptions.size() - 1));
                    i4++;
                }
            }
            if (!isPreparedGiveaway()) {
                this.items.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2484R.string.BoostingStoriesFeaturesAndTerms), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateRows$24();
                    }
                }, this.resourcesProvider), true));
            }
        }
        if (this.selectedBoostType == BoostTypeCell.TYPE_STARS || this.selectedBoostSubType == BoostTypeCell.TYPE_GIVEAWAY) {
            ArrayList arrayList2 = this.items;
            String string = LocaleController.getString(C2484R.string.BoostingGiveawayAdditionalPrizes);
            boolean z6 = this.isAdditionalPrizeSelected;
            arrayList2.add(BoostAdapter.Item.asSwitcher(string, z6, z6, SwitcherCell.TYPE_ADDITION_PRIZE));
            if (this.isAdditionalPrizeSelected) {
                int selectedSliderValue = isPreparedGiveaway() ? this.prepaidGiveaway.quantity : getSelectedSliderValue();
                this.items.add(BoostAdapter.Item.asEnterPrize(selectedSliderValue));
                String pluralString = LocaleController.formatPluralString("BoldMonths", this.selectedMonths, new Object[0]);
                if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
                    if (this.additionalPrize.isEmpty()) {
                        this.items.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingStarsGiveawayAdditionPrizeCountHint", (int) this.selectedStars, new Object[0])), false));
                    } else {
                        this.items.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingStarsGiveawayAdditionPrizeCountNameHint", (int) this.selectedStars, Integer.valueOf(selectedSliderValue), this.additionalPrize)), false));
                    }
                } else if (this.additionalPrize.isEmpty()) {
                    this.items.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayAdditionPrizeCountHint", selectedSliderValue, pluralString)), false));
                } else {
                    this.items.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingGiveawayAdditionPrizeCountNameHint", selectedSliderValue, this.additionalPrize, pluralString)), false));
                }
            } else {
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(this.selectedBoostType == BoostTypeCell.TYPE_STARS ? C2484R.string.BoostingStarsGiveawayAdditionPrizeHint : C2484R.string.BoostingGiveawayAdditionPrizeHint), false));
            }
            this.items.add(BoostAdapter.Item.asSubTitle(LocaleController.getString(C2484R.string.BoostingDateWhenGiveawayEnds)));
            this.items.add(BoostAdapter.Item.asDateEnd(this.selectedEndDate));
            if (this.selectedBoostType == BoostTypeCell.TYPE_STARS) {
                if (!isPreparedGiveaway()) {
                    z4 = false;
                    this.items.add(BoostAdapter.Item.asDivider(LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingStarsChooseRandom" : "BoostingStarsChooseRandomGroup", getSelectedSliderValue(), LocaleController.formatPluralString("BoostingStarsChooseRandomStars", (int) this.selectedStars, new Object[0])), false));
                } else {
                    this.items.add(BoostAdapter.Item.asDivider(LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingStarsChooseRandom" : "BoostingStarsChooseRandomGroup", this.prepaidGiveaway.quantity, LocaleController.formatPluralString("BoostingStarsChooseRandomStars", (int) this.selectedStars, new Object[0])), false));
                    z4 = false;
                }
            } else {
                if (!isPreparedGiveaway()) {
                    z4 = false;
                    this.items.add(BoostAdapter.Item.asDivider(LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChooseRandom" : "BoostingChooseRandomGroup", getSelectedSliderValue(), new Object[0]), false));
                } else {
                    z4 = false;
                    this.items.add(BoostAdapter.Item.asDivider(LocaleController.formatPluralString(zIsChannelAndNotMegaGroup ? "BoostingChooseRandom" : "BoostingChooseRandomGroup", this.prepaidGiveaway.quantity, new Object[0]), false));
                }
            }
            this.items.add(BoostAdapter.Item.asSwitcher(LocaleController.getString(C2484R.string.BoostingGiveawayShowWinners), this.isShowWinnersSelected, z4, SwitcherCell.TYPE_WINNERS));
            if (!isPreparedGiveaway()) {
                this.items.add(BoostAdapter.Item.asDivider(LocaleController.getString(C2484R.string.BoostingGiveawayShowWinnersHint), z4));
            } else {
                ArrayList arrayList3 = this.items;
                StringBuilder sb = new StringBuilder();
                sb.append(LocaleController.getString(C2484R.string.BoostingGiveawayShowWinnersHint));
                sb.append(this.selectedBoostType != BoostTypeCell.TYPE_STARS ? "\n\n" + LocaleController.getString(C2484R.string.BoostingStoriesFeaturesAndTerms) : _UrlKt.FRAGMENT_ENCODE_SET);
                arrayList3.add(BoostAdapter.Item.asDivider(AndroidUtilities.replaceSingleTag(sb.toString(), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateRows$27();
                    }
                }, this.resourcesProvider), true));
            }
        }
        BoostAdapter boostAdapter = this.adapter;
        if (boostAdapter != null && z2) {
            if (z) {
                boostAdapter.setItems(arrayList, this.items);
            } else {
                boostAdapter.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$24() {
        PremiumPreviewBottomSheet premiumPreviewBottomSheet = new PremiumPreviewBottomSheet(getBaseFragment(), this.currentAccount, null, this.resourcesProvider);
        premiumPreviewBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$22(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$23(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$22(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$23(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$27() {
        PremiumPreviewBottomSheet premiumPreviewBottomSheet = new PremiumPreviewBottomSheet(getBaseFragment(), this.currentAccount, null, this.resourcesProvider);
        premiumPreviewBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$25(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Components.Premium.boosts.BoostViaGiftsBottomSheet$$ExternalSyntheticLambda20
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$updateRows$26(dialogInterface);
            }
        });
        premiumPreviewBottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$25(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRows$26(DialogInterface dialogInterface) {
        this.adapter.setPausedStars(true);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        if (this.selectedBoostSubType == BoostTypeCell.TYPE_SPECIFIC_USERS) {
            return LocaleController.getString(C2484R.string.GiftPremium);
        }
        return LocaleController.formatString("BoostingStartGiveaway", C2484R.string.BoostingStartGiveaway, new Object[0]);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        BoostAdapter boostAdapter = new BoostAdapter(this.resourcesProvider);
        this.adapter = boostAdapter;
        return boostAdapter;
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public void onChatsSelected(List list, boolean z) {
        this.selectedChats.clear();
        this.selectedChats.addAll(list);
        updateRows(z, true);
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public void onUsersSelected(List list) {
        this.selectedUsers.clear();
        this.selectedUsers.addAll(list);
        if (list.isEmpty()) {
            this.selectedBoostSubType = BoostTypeCell.TYPE_GIVEAWAY;
        } else {
            this.selectedBoostSubType = BoostTypeCell.TYPE_SPECIFIC_USERS;
        }
        this.selectedSliderIndex = 0;
        updateRows(false, true);
        updateActionButton(true);
        updateTitle();
    }

    @Override // org.telegram.ui.Components.Premium.boosts.SelectorBottomSheet.SelectedObjectsListener
    public void onCountrySelected(List list) {
        this.selectedCountries.clear();
        this.selectedCountries.addAll(list);
        updateRows(false, true);
    }
}
