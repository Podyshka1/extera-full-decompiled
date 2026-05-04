package org.telegram.p029ui.Components.Premium.boosts;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.FrameLayout;
import java.util.concurrent.atomic.AtomicBoolean;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p029ui.Components.Premium.boosts.adapters.GiftInfoAdapter;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class GiftInfoBottomSheet extends BottomSheetWithRecyclerListView {
    private GiftInfoAdapter adapter;
    private final TLRPC.TL_payments_checkedGiftCode giftCode;
    private final boolean isUnused;
    private String slug;

    public static void show(final BaseFragment baseFragment, final String str, final Browser.Progress progress) {
        if (baseFragment == null) {
            return;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        if (progress != null) {
            progress.init();
            progress.onCancel(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.GiftInfoBottomSheet$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    atomicBoolean.set(true);
                }
            });
        }
        BoostRepository.checkGiftCode(str, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.GiftInfoBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GiftInfoBottomSheet.$r8$lambda$YUYLW_38Gm6o4KeCIm9DBgReAdw(atomicBoolean, baseFragment, str, progress, (TLRPC.TL_payments_checkedGiftCode) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.GiftInfoBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GiftInfoBottomSheet.$r8$lambda$Y7glcthtbPhwh6Sao6m83JvUN7w(atomicBoolean, progress, (TLRPC.TL_error) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$YUYLW_38Gm6o4KeCIm9DBgReAdw(AtomicBoolean atomicBoolean, BaseFragment baseFragment, String str, Browser.Progress progress, TLRPC.TL_payments_checkedGiftCode tL_payments_checkedGiftCode) {
        if (atomicBoolean.get() || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tL_payments_checkedGiftCode.from_id == null) {
            TLRPC.TL_premiumGiftOption tL_premiumGiftOption = new TLRPC.TL_premiumGiftOption();
            tL_premiumGiftOption.months = tL_payments_checkedGiftCode.months;
            TLRPC.User currentUser = baseFragment instanceof ChatActivity ? ((ChatActivity) baseFragment).getCurrentUser() : null;
            if (currentUser == null || currentUser.self) {
                currentUser = new TLRPC.TL_user();
            }
            PremiumPreviewGiftLinkBottomSheet.show(str, tL_premiumGiftOption, currentUser, tL_payments_checkedGiftCode.used_date != 0);
        } else {
            baseFragment.showDialog(new GiftInfoBottomSheet(baseFragment, false, true, tL_payments_checkedGiftCode, str));
        }
        if (progress != null) {
            progress.end();
        }
    }

    public static /* synthetic */ void $r8$lambda$Y7glcthtbPhwh6Sao6m83JvUN7w(AtomicBoolean atomicBoolean, Browser.Progress progress, TLRPC.TL_error tL_error) {
        if (atomicBoolean.get() || progress == null) {
            return;
        }
        progress.end();
    }

    public static void show(BaseFragment baseFragment, String str) {
        show(baseFragment, str, null);
    }

    public static boolean handleIntent(Intent intent, Browser.Progress progress) {
        String scheme;
        String path;
        Uri data = intent.getData();
        if (data == null || (scheme = data.getScheme()) == null) {
            return false;
        }
        if (scheme.equals("http") || scheme.equals("https")) {
            String lowerCase = data.getHost().toLowerCase();
            if ((!lowerCase.equals("telegram.me") && !lowerCase.equals("t.me") && !lowerCase.equals("telegram.dog")) || (path = data.getPath()) == null) {
                return false;
            }
            String lastPathSegment = data.getLastPathSegment();
            if (!path.startsWith("/giftcode") || lastPathSegment == null) {
                return false;
            }
            show(LaunchActivity.getLastFragment(), lastPathSegment, progress);
            return true;
        }
        if (!scheme.equals("tg")) {
            return false;
        }
        String string = data.toString();
        String lastPathSegment2 = data.getLastPathSegment();
        if ((!string.startsWith("tg:giftcode") && !string.startsWith("tg://giftcode")) || lastPathSegment2 == null) {
            return false;
        }
        show(LaunchActivity.getLastFragment(), lastPathSegment2, progress);
        return true;
    }

    public GiftInfoBottomSheet(BaseFragment baseFragment, boolean z, boolean z2, TLRPC.TL_payments_checkedGiftCode tL_payments_checkedGiftCode, String str) {
        super(baseFragment, z, z2);
        this.isUnused = tL_payments_checkedGiftCode.used_date == 0;
        this.giftCode = tL_payments_checkedGiftCode;
        this.slug = str;
        setApplyTopPadding(false);
        setApplyBottomPadding(false);
        fixNavigationBar();
        updateTitle();
        this.adapter.init(baseFragment, tL_payments_checkedGiftCode, str, this.container);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout frameLayout) {
        super.onViewCreated(frameLayout);
        Bulletin.addDelegate(this.container, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.Premium.boosts.GiftInfoBottomSheet.1
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
            public /* synthetic */ int getBottomOffset(int i) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i);
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
            public int getTopOffset(int i) {
                return AndroidUtilities.statusBarHeight;
            }
        });
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        Bulletin.removeDelegate(this.container);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return this.isUnused ? LocaleController.getString(C2888R.string.BoostingGiftLink) : LocaleController.getString(C2888R.string.BoostingUsedGiftLink);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Premium.boosts.GiftInfoBottomSheet$2 */
    /* JADX INFO: loaded from: classes7.dex */
    class C48082 extends GiftInfoAdapter {
        C48082(Theme.ResourcesProvider resourcesProvider) {
            super(resourcesProvider);
        }

        @Override // org.telegram.p029ui.Components.Premium.boosts.adapters.GiftInfoAdapter
        protected void dismiss() {
            GiftInfoBottomSheet.this.lambda$new$0();
        }

        @Override // org.telegram.p029ui.Components.Premium.boosts.adapters.GiftInfoAdapter
        protected void afterCodeApplied() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.GiftInfoBottomSheet$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$afterCodeApplied$0();
                }
            }, 200L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$afterCodeApplied$0() {
            GiftInfoBottomSheet.this.getBaseFragment().showDialog(new PremiumPreviewBottomSheet(GiftInfoBottomSheet.this.getBaseFragment(), ((BottomSheet) GiftInfoBottomSheet.this).currentAccount, null, null, null, ((BottomSheet) GiftInfoBottomSheet.this).resourcesProvider).setAnimateConfetti(true).setOutboundGift(true));
        }

        @Override // org.telegram.p029ui.Components.Premium.boosts.adapters.GiftInfoAdapter
        protected void onObjectClicked(TLObject tLObject) {
            dismiss();
            if (tLObject instanceof TLRPC.Chat) {
                GiftInfoBottomSheet.this.getBaseFragment().presentFragment(ChatActivity.m1239of(-((TLRPC.Chat) tLObject).f1660id));
                return;
            }
            if (tLObject instanceof TLRPC.User) {
                GiftInfoBottomSheet.this.getBaseFragment().presentFragment(ChatActivity.m1239of(((TLRPC.User) tLObject).f1825id));
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", -DialogObject.getPeerDialogId(GiftInfoBottomSheet.this.giftCode.from_id));
            bundle.putInt("message_id", GiftInfoBottomSheet.this.giftCode.giveaway_msg_id);
            GiftInfoBottomSheet.this.getBaseFragment().presentFragment(new ChatActivity(bundle));
        }

        @Override // org.telegram.p029ui.Components.Premium.boosts.adapters.GiftInfoAdapter
        protected void onHiddenLinkClicked() {
            String string;
            if ((GiftInfoBottomSheet.this.slug == null || GiftInfoBottomSheet.this.slug.isEmpty()) && GiftInfoBottomSheet.this.giftCode.to_id == -1) {
                string = LocaleController.getString(C2888R.string.BoostingOnlyGiveawayCreatorSeeLink);
            } else {
                string = LocaleController.getString(C2888R.string.BoostingOnlyRecipientCode);
            }
            GiftInfoBottomSheet giftInfoBottomSheet = GiftInfoBottomSheet.this;
            BulletinFactory.m1245of(giftInfoBottomSheet.container, ((BottomSheet) giftInfoBottomSheet).resourcesProvider).createSimpleBulletin(C2888R.raw.chats_infotip, string).show(true);
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        C48082 c48082 = new C48082(this.resourcesProvider);
        this.adapter = c48082;
        return c48082;
    }
}
