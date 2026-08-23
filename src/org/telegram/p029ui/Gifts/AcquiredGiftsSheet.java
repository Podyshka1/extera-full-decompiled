package org.telegram.p029ui.Gifts;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.GiftAuctionController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.TableView;
import org.telegram.p029ui.Components.TypefaceSpan;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.p028tl.TL_stars;

/* JADX INFO: loaded from: classes7.dex */
public class AcquiredGiftsSheet extends BottomSheetWithRecyclerListView {
    private UniversalAdapter adapter;
    private final GiftAuctionController.Auction auction;
    private final List gifts;

    public static /* synthetic */ void $r8$lambda$HLA2HufTkWAEylodHDmfcb8x3Rs(View view, int i) {
    }

    public AcquiredGiftsSheet(Context context, Theme.ResourcesProvider resourcesProvider, GiftAuctionController.Auction auction, List list) {
        super(context, null, false, false, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
        this.auction = auction;
        this.gifts = list;
        this.topPadding = 0.2f;
        this.ignoreTouchActionBar = false;
        this.headerMoveTop = AndroidUtilities.m1124dp(12.0f);
        this.actionBar.setTitle(getTitle());
        fixNavigationBar();
        this.recyclerListView.setPadding(this.backgroundPaddingLeft, AndroidUtilities.m1124dp(9.0f), this.backgroundPaddingLeft, AndroidUtilities.m1124dp(64.0f));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Gifts.AcquiredGiftsSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                AcquiredGiftsSheet.$r8$lambda$HLA2HufTkWAEylodHDmfcb8x3Rs(view, i);
            }
        });
        this.recyclerListView.setOverScrollMode(2);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AcquiredGiftsSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.f1606OK), false);
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 16.0f, 16.0f, 16.0f);
        int i = layoutParamsCreateFrame.leftMargin;
        int i2 = this.backgroundPaddingLeft;
        layoutParamsCreateFrame.leftMargin = i + i2;
        layoutParamsCreateFrame.rightMargin += i2;
        this.containerView.addView(buttonWithCounterView, layoutParamsCreateFrame);
        this.adapter.update(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        lambda$new$0();
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        List list = this.gifts;
        if (list == null) {
            return null;
        }
        return LocaleController.formatPluralString("Gift2AuctionsAcquiredGifts", list.size(), new Object[0]);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.AcquiredGiftsSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        List<TL_stars.TL_StarGiftAuctionAcquiredGift> list = this.gifts;
        if (list == null) {
            return;
        }
        for (final TL_stars.TL_StarGiftAuctionAcquiredGift tL_StarGiftAuctionAcquiredGift : list) {
            arrayList.add(AcquiredGiftsCell.Factory.m1281as(tL_StarGiftAuctionAcquiredGift, this.auction, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AcquiredGiftsSheet$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$2(tL_StarGiftAuctionAcquiredGift, view);
                }
            }));
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(16.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$2(TL_stars.TL_StarGiftAuctionAcquiredGift tL_StarGiftAuctionAcquiredGift, View view) {
        openProfile(DialogObject.getPeerDialogId(tL_StarGiftAuctionAcquiredGift.peer));
    }

    private void openProfile(long j) {
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

    /* JADX INFO: Access modifiers changed from: private */
    static class AcquiredGiftsCell extends FrameLayout {
        private final int currentAccount;
        private final Theme.ResourcesProvider resourcesProvider;

        public AcquiredGiftsCell(Context context, Theme.ResourcesProvider resourcesProvider, int i) {
            super(context);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            setPadding(AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(9.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bind(GiftAuctionController.Auction auction, TL_stars.TL_StarGiftAuctionAcquiredGift tL_StarGiftAuctionAcquiredGift, final View.OnClickListener onClickListener) {
            removeAllViews();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("*");
            spannableStringBuilder.setSpan(new AnimatedEmojiSpan(auction.giftDocumentId, Theme.chat_actionTextPaint.getFontMetricsInt()), 0, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append(' ');
            spannableStringBuilder.append((CharSequence) LocaleController.formatString(C2888R.string.Gift2AuctionsAcquiredRound2, auction.gift.title, Integer.valueOf(tL_StarGiftAuctionAcquiredGift.gift_num), Integer.valueOf(tL_StarGiftAuctionAcquiredGift.round)));
            spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilder.length(), 33);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) StarsIntroActivity.replaceStarsWithPlain("⭐️" + LocaleController.formatNumber(tL_StarGiftAuctionAcquiredGift.bid_amount, ','), 0.75f));
            String string = LocaleController.formatString(C2888R.string.Gift2AuctionsAcquiredTop, Integer.valueOf(tL_StarGiftAuctionAcquiredGift.pos));
            TableView tableView = new TableView(getContext(), this.resourcesProvider);
            tableView.addFullRow(spannableStringBuilder).setFilled(true);
            tableView.addRowUser(LocaleController.getString(C2888R.string.Gift2AuctionsAcquiredRecipient), this.currentAccount, DialogObject.getPeerDialogId(tL_StarGiftAuctionAcquiredGift.peer), new Runnable() { // from class: org.telegram.ui.Gifts.AcquiredGiftsSheet$AcquiredGiftsCell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$bind$0(onClickListener);
                }
            });
            tableView.addRowDateTime(LocaleController.getString(C2888R.string.Gift2AuctionsAcquiredDate), tL_StarGiftAuctionAcquiredGift.date);
            tableView.addRow(LocaleController.getString(C2888R.string.Gift2AuctionsAcquiredAcceptedBid), spannableStringBuilder2, string, (Runnable) null);
            addView(tableView, LayoutHelper.createFrame(-1, -2.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$bind$0(View.OnClickListener onClickListener) {
            onClickListener.onClick(this);
        }

        private static class Factory extends UItem.UItemFactory {
            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean isClickable() {
                return false;
            }

            private Factory() {
            }

            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public AcquiredGiftsCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                AcquiredGiftsCell acquiredGiftsCell = new AcquiredGiftsCell(context, resourcesProvider, i);
                acquiredGiftsCell.setLayoutParams(LayoutHelper.createFrame(-1, -2.0f));
                return acquiredGiftsCell;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((AcquiredGiftsCell) view).bind((GiftAuctionController.Auction) uItem.object2, (TL_stars.TL_StarGiftAuctionAcquiredGift) uItem.object, uItem.clickCallback);
            }

            /* JADX INFO: renamed from: as */
            public static UItem m1281as(TL_stars.TL_StarGiftAuctionAcquiredGift tL_StarGiftAuctionAcquiredGift, GiftAuctionController.Auction auction, View.OnClickListener onClickListener) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = tL_StarGiftAuctionAcquiredGift;
                uItemOfFactory.object2 = auction;
                uItemOfFactory.clickCallback = onClickListener;
                return uItemOfFactory;
            }
        }
    }
}
