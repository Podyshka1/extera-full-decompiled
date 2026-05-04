package org.telegram.p029ui.Components.Premium.boosts;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.GiftPremiumBottomSheet$GiftTier;
import org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p029ui.Components.Premium.boosts.cells.ActionBtnCell;
import org.telegram.p029ui.Components.Premium.boosts.cells.LinkCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.TopicsFragment;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class PremiumPreviewGiftLinkBottomSheet extends PremiumPreviewBottomSheet {
    private static PremiumPreviewGiftLinkBottomSheet instance;
    private ActionBtnCell actionBtn;
    private final boolean isUsed;
    private final String slug;

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected int getAdditionItemViewType(int i) {
        return 6;
    }

    public static void show(String str, Browser.Progress progress) {
        GiftInfoBottomSheet.show(LaunchActivity.getLastFragment(), str, progress);
    }

    public static void show(String str, TLRPC.TL_premiumGiftOption tL_premiumGiftOption, TLRPC.User user, boolean z) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null || instance != null) {
            return;
        }
        PremiumPreviewGiftLinkBottomSheet premiumPreviewGiftLinkBottomSheet = new PremiumPreviewGiftLinkBottomSheet(lastFragment, UserConfig.selectedAccount, user, new GiftPremiumBottomSheet$GiftTier(tL_premiumGiftOption, (Object) null), str, z, lastFragment.getResourceProvider());
        premiumPreviewGiftLinkBottomSheet.show();
        instance = premiumPreviewGiftLinkBottomSheet;
    }

    public PremiumPreviewGiftLinkBottomSheet(BaseFragment baseFragment, int i, TLRPC.User user, GiftPremiumBottomSheet$GiftTier giftPremiumBottomSheet$GiftTier, String str, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment, i, user, giftPremiumBottomSheet$GiftTier, null, resourcesProvider);
        this.slug = str;
        this.isUsed = z;
        init();
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected void updateRows() {
        int i = this.rowCount;
        this.paddingRow = i;
        this.additionStartRow = i + 1;
        int i2 = i + 2;
        this.rowCount = i2;
        this.additionEndRow = i2;
        this.featuresStartRow = i2;
        int size = i2 + this.premiumFeatures.size();
        this.featuresEndRow = size;
        this.rowCount = size + 1;
        this.sectionRow = size;
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    public void setTitle(boolean z) {
        super.setTitle(z);
        this.subtitleView.setLineSpacing(AndroidUtilities.m1124dp(2.0f), 1.0f);
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(14.0f);
        ((ViewGroup.MarginLayoutParams) this.subtitleView.getLayoutParams()).topMargin = AndroidUtilities.m1124dp(12.0f);
        this.subtitleView.setText(AndroidUtilities.replaceCharSequence("%1$s", AndroidUtilities.replaceSingleTag(LocaleController.getString("GiftPremiumAboutThisLink", C2888R.string.GiftPremiumAboutThisLink), Theme.key_chat_messageLinkIn, 0, new PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda1(this)), AndroidUtilities.replaceTags(LocaleController.getString("GiftPremiumAboutThisLinkEnd", C2888R.string.GiftPremiumAboutThisLinkEnd))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void share() {
        final String str = "https://t.me/giftcode/" + this.slug;
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 3);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public /* synthetic */ boolean canSelectStories() {
                return DialogsActivity.DialogsActivityDelegate.CC.$default$canSelectStories(this);
            }

            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
                return this.f$0.lambda$share$0(str, dialogsActivity2, arrayList, charSequence, z, z2, i, i2, topicsFragment);
            }

            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public /* synthetic */ boolean didSelectStories(DialogsActivity dialogsActivity2) {
                return DialogsActivity.DialogsActivityDelegate.CC.$default$didSelectStories(this, dialogsActivity2);
            }
        });
        getBaseFragment().presentFragment(dialogsActivity);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$share$0(String str, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
        long j = 0;
        int i3 = 0;
        while (i3 < arrayList.size()) {
            long j2 = ((MessagesStorage.TopicKey) arrayList.get(i3)).dialogId;
            getBaseFragment().getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m1175of(str, j2, null, null, null, true, null, null, null, true, 0, 0, null, false));
            i3++;
            j = j2;
        }
        dialogsActivity.finishFragment();
        BoostDialogs.showGiftLinkForwardedBulletin(j);
        return true;
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected View onCreateAdditionCell(int i, Context context) {
        if (i != 6) {
            return null;
        }
        LinkCell linkCell = new LinkCell(context, getBaseFragment(), this.resourcesProvider);
        linkCell.setPadding(0, 0, 0, AndroidUtilities.m1124dp(8.0f));
        return linkCell;
    }

    @Override // org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet
    protected void onBindAdditionCell(View view, int i) {
        ((LinkCell) view).setSlug(this.slug);
    }

    private void init() {
        Bulletin.addDelegate((FrameLayout) this.containerView, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftLinkBottomSheet.1
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean bottomOffsetAnimated() {
                return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return AndroidUtilities.m1124dp(68.0f);
            }
        });
        if (!this.isUsed) {
            RecyclerListView recyclerListView = this.recyclerListView;
            int i = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i, 0, i, AndroidUtilities.m1124dp(68.0f));
            ActionBtnCell actionBtnCell = new ActionBtnCell(getContext(), this.resourcesProvider);
            this.actionBtn = actionBtnCell;
            actionBtnCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$init$4(view);
                }
            });
            this.actionBtn.setActivateForFreeStyle();
            this.containerView.addView(this.actionBtn, LayoutHelper.createFrame(-1, 68.0f, 80, 0.0f, 0.0f, 0.0f, 0.0f));
        }
        fixNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$4(View view) {
        if (this.actionBtn.isLoading()) {
            return;
        }
        this.actionBtn.updateLoading(true);
        BoostRepository.applyGiftCode(this.slug, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$init$2((Void) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$init$3((TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$2(Void r3) {
        this.actionBtn.updateLoading(false);
        lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$init$1();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$1() {
        getBaseFragment().showDialog(new PremiumPreviewBottomSheet(getBaseFragment(), UserConfig.selectedAccount, null, null, null, this.resourcesProvider).setAnimateConfetti(true).setAnimateConfettiWithStars(true).setOutboundGift(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$3(TLRPC.TL_error tL_error) {
        this.actionBtn.updateLoading(false);
        BoostDialogs.processApplyGiftCodeError(tL_error, (FrameLayout) this.containerView, this.resourcesProvider, new PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda1(this));
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        Bulletin.removeDelegate(this.container);
        instance = null;
    }
}
