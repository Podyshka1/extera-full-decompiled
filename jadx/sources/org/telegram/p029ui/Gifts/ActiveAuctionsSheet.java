package org.telegram.p029ui.Gifts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.util.LongSparseArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.GiftAuctionController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.CountdownTimer;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;

/* JADX INFO: loaded from: classes7.dex */
public class ActiveAuctionsSheet extends BottomSheetWithRecyclerListView implements GiftAuctionController.OnActiveAuctionsUpdateListeners {
    private final LongSparseArray activeAuctionCells;
    private List activeAuctions;
    private UniversalAdapter adapter;
    private final UItem headerItem;
    private boolean isOpenAnimationEnd;

    public ActiveAuctionsSheet(final Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(context, null, false, false, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
        this.activeAuctionCells = new LongSparseArray();
        this.activeAuctions = new ArrayList();
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        GiftAuctionController.getInstance(this.currentAccount).subscribeToActiveAuctionsUpdates(this);
        int i = 0;
        this.ignoreTouchActionBar = false;
        this.headerMoveTop = AndroidUtilities.m1124dp(12.0f);
        fixNavigationBar();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setClickable(true);
        this.headerItem = UItem.asCustom(-1, linearLayout);
        this.recyclerListView.setPadding(this.backgroundPaddingLeft, AndroidUtilities.m1124dp(9.0f), this.backgroundPaddingLeft, AndroidUtilities.m1124dp(9.0f));
        this.recyclerListView.setOverScrollMode(2);
        this.adapter.update(false);
        ArrayList<GiftAuctionController.Auction> activeAuctions = GiftAuctionController.getInstance(this.currentAccount).getActiveAuctions();
        int size = activeAuctions.size();
        while (i < size) {
            GiftAuctionController.Auction auction = activeAuctions.get(i);
            i++;
            final GiftAuctionController.Auction auction2 = auction;
            ActiveAuctionCell activeAuctionCell = new ActiveAuctionCell(context, resourcesProvider, auction2);
            activeAuctionCell.buttonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.ActiveAuctionsSheet$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(context, resourcesProvider, auction2, view);
                }
            });
            linearLayout.addView(activeAuctionCell, LayoutHelper.createLinear(-1, -2));
            this.activeAuctionCells.put(auction2.giftId, activeAuctionCell);
        }
        onActiveAuctionsUpdate(activeAuctions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Context context, Theme.ResourcesProvider resourcesProvider, GiftAuctionController.Auction auction, View view) {
        new AuctionBidSheet(context, resourcesProvider, null, auction).show();
        lambda$new$0();
    }

    @Override // org.telegram.messenger.GiftAuctionController.OnActiveAuctionsUpdateListeners
    public void onActiveAuctionsUpdate(List list) {
        this.activeAuctions = new ArrayList(list);
        this.actionBar.setTitle(getTitle());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            GiftAuctionController.Auction auction = (GiftAuctionController.Auction) it.next();
            TL_stars.TL_starGiftAuctionState tL_starGiftAuctionState = auction.auctionStateActive;
            int i = tL_starGiftAuctionState != null ? tL_starGiftAuctionState.next_round_at : 0;
            ActiveAuctionCell activeAuctionCell = (ActiveAuctionCell) this.activeAuctionCells.get(auction.giftId);
            if (activeAuctionCell != null) {
                activeAuctionCell.updateStatus(this.isOpenAnimationEnd);
                long jMax = Math.max(0, i - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime());
                activeAuctionCell.updateButton(jMax, this.isOpenAnimationEnd);
                activeAuctionCell.timer.start(jMax);
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        super.onOpenAnimationEnd();
        this.isOpenAnimationEnd = true;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        GiftAuctionController.getInstance(this.currentAccount).unsubscribeFromActiveAuctionsUpdates(this);
        super.lambda$new$0();
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        List list = this.activeAuctions;
        if (list == null) {
            return null;
        }
        return LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveAuctionsTitle, Integer.valueOf(list.size()));
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.ActiveAuctionsSheet$$ExternalSyntheticLambda0
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
        arrayList.add(this.headerItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ActiveAuctionCell extends FrameLayout {
        private final GiftAuctionController.Auction auction;
        private final ButtonWithCounterView buttonView;

        /* JADX INFO: renamed from: cs */
        private final ColoredImageSpan f2118cs;
        private final AnimatedTextView messageView;
        private final Paint paint;
        private final ColoredImageSpan[] spanRefStars;
        private final CountdownTimer timer;
        private final AnimatedTextView titleView;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(long j) {
            updateButton(j, true);
        }

        public ActiveAuctionCell(Context context, Theme.ResourcesProvider resourcesProvider, GiftAuctionController.Auction auction) {
            super(context);
            Paint paint = new Paint(1);
            this.paint = paint;
            this.timer = new CountdownTimer(new CountdownTimer.Callback() { // from class: org.telegram.ui.Gifts.ActiveAuctionsSheet$ActiveAuctionCell$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.utils.CountdownTimer.Callback
                public final void onTimerUpdate(long j) {
                    this.f$0.lambda$new$0(j);
                }
            });
            this.f2118cs = new ColoredImageSpan(C2888R.drawable.filled_gift_sell_24);
            this.spanRefStars = new ColoredImageSpan[1];
            this.auction = auction;
            setPadding(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(9.0f));
            paint.setShadowLayer(AndroidUtilities.m1124dp(1.0f), 0.0f, 0.0f, 536870912);
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
            this.buttonView = buttonWithCounterView;
            buttonWithCounterView.setTextHacks(false, true, true, true);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.titleView = animatedTextView;
            animatedTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
            animatedTextView.setTypeface(AndroidUtilities.bold());
            animatedTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            AnimatedTextView animatedTextView2 = new AnimatedTextView(context);
            this.messageView = animatedTextView2;
            animatedTextView2.setTextSize(AndroidUtilities.m1124dp(12.0f));
            TLRPC.Document document = auction.gift.sticker;
            if (document != null) {
                rLottieImageView.setAnimation(document, 44, 44);
            }
            addView(animatedTextView, LayoutHelper.createFrame(-1, 18.0f, 51, 64.0f, 15.0f, 15.0f, 0.0f));
            addView(animatedTextView2, LayoutHelper.createFrame(-1, 17.0f, 51, 64.0f, 34.0f, 15.0f, 0.0f));
            addView(rLottieImageView, LayoutHelper.createFrame(44, 44.0f, 51, 14.0f, 11.0f, 0.0f, 0.0f));
            addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 44.0f, 80, 15.0f, 0.0f, 15.0f, 15.0f));
            updateStatus(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateButton(long j, boolean z) {
            String durationNoHours = AndroidUtilities.formatDurationNoHours((int) j, false);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("*");
            spannableStringBuilder.setSpan(this.f2118cs, 0, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ");
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveRaiseBid));
            spannableStringBuilder.append((CharSequence) "  ");
            spannableStringBuilder.append((CharSequence) durationNoHours);
            this.buttonView.setText(spannableStringBuilder, z);
        }

        public void updateStatus(boolean z) {
            if (this.auction.auctionStateActive != null) {
                this.titleView.setText(LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveRound, LocaleController.formatNumber(r0.current_round, ','), LocaleController.formatNumber(this.auction.auctionStateActive.total_rounds, ',')), z);
            }
            String str = "⭐️" + LocaleController.formatNumber(this.auction.auctionUserState.bid_amount, ',');
            if (this.auction.getBidStatus().isOutbid()) {
                this.messageView.setText(StarsIntroActivity.replaceStarsWithPlain(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveBidOutbid, str)), 0.66f, this.spanRefStars), z);
                this.messageView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            } else {
                this.messageView.setText(StarsIntroActivity.replaceStarsWithPlain(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveBidActive, str, Integer.valueOf(this.auction.getApproximatedMyPlace()))), 0.66f, this.spanRefStars), z);
                this.messageView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.timer.stop();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, LayoutHelper.measureSpecExactlyDp(146));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            canvas.drawRoundRect(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(9.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(14.0f), getMeasuredHeight() - AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), this.paint);
            super.dispatchDraw(canvas);
        }
    }
}
