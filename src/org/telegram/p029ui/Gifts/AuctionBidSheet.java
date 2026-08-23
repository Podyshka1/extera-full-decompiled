package org.telegram.p029ui.Gifts;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.android.p003dx.AppDataDirGuesser;
import de.robv.android.xposed.callbacks.XCallback;
import java.util.ArrayList;
import java.util.List;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.GiftAuctionController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.CountdownTimer;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextCaption;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stars.BalanceCloud;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stars.StarsReactionsSheet;
import org.telegram.p029ui.Stories.HighlightMessageSheet;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class AuctionBidSheet extends BottomSheetWithRecyclerListView implements GiftAuctionController.OnAuctionUpdateListener {
    private UniversalAdapter adapter;
    private AnimatedEmojiSpan animatedEmojiSpan;
    private GiftAuctionController.Auction auction;
    private final BalanceCloud balanceCloud;
    private boolean balanceCloudVisible;
    private boolean bidIsPending;
    private final FrameLayout bulletinContainer;
    private final ButtonWithCounterView buttonView;
    private Runnable closeParentSheet;
    private final long giftId;
    private final InfoCell giftsLeftCell;
    private final UItem headerItem;
    private boolean isFirstCheck;
    private boolean isOpenAnimationEnd;
    private long lastAcquiredCount;
    private long lastRecipientDialogId;
    private final InfoCell minimumBidCell;
    private final InfoCell nextRoundCell;
    private final BoolAnimator outbidColor;
    private final Params params;
    private final ColoredImageSpan[] refS;
    private final BidderCell selfBidderCell;
    private final AnimatedTextView selfBidderFutureGift;
    private final HeaderCell selfBidderHeader;
    private final StarsReactionsSheet.StarsSlider slider;
    private final ColoredImageSpan[] spanRefStars;
    private final CountdownTimer timer;
    private final BidderCell[] topBidderCells;
    private final BoolAnimator winningColor;

    /* JADX INFO: renamed from: $r8$lambda$G2Xuq_D6dRrzaq-7lKN44Yo7tEw, reason: not valid java name */
    public static /* synthetic */ void m14310$r8$lambda$G2Xuq_D6dRrzaq7lKN44Yo7tEw(View view, int i) {
    }

    public static /* synthetic */ void $r8$lambda$kEbIuDGYjHhgjjOWj68BRjfmH0Q(View view) {
    }

    public static class Params {
        public final long dialogId;
        public final boolean hideName;
        public final TLRPC.TL_textWithEntities message;

        public Params(long j, boolean z, TLRPC.TL_textWithEntities tL_textWithEntities) {
            this.dialogId = j;
            this.hideName = z;
            this.message = tL_textWithEntities;
        }
    }

    public AuctionBidSheet(final Context context, final Theme.ResourcesProvider resourcesProvider, Params params, GiftAuctionController.Auction auction) {
        super(context, null, false, false, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
        this.topBidderCells = new BidderCell[3];
        this.isFirstCheck = true;
        this.refS = new ColoredImageSpan[1];
        FactorAnimator.Target target = new FactorAnimator.Target() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
                FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
            }

            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                this.f$0.onColorFactorChanged(i, f, f2, factorAnimator);
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.winningColor = new BoolAnimator(0, target, cubicBezierInterpolator, 380L);
        this.outbidColor = new BoolAnimator(0, new FactorAnimator.Target() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
                FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
            }

            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
                this.f$0.onColorFactorChanged(i, f, f2, factorAnimator);
            }
        }, cubicBezierInterpolator, 380L);
        this.spanRefStars = new ColoredImageSpan[1];
        this.auction = auction;
        this.params = params;
        long j = auction.giftId;
        this.giftId = j;
        this.centerTitle = true;
        this.topPadding = 0.2f;
        GiftAuctionController.Auction auctionSubscribeToGiftAuction = GiftAuctionController.getInstance(this.currentAccount).subscribeToGiftAuction(j, this);
        this.timer = new CountdownTimer(new CountdownTimer.Callback() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.utils.CountdownTimer.Callback
            public final void onTimerUpdate(long j2) {
                this.f$0.updateCountdownCell(j2);
            }
        });
        this.ignoreTouchActionBar = false;
        this.headerMoveTop = AndroidUtilities.m1124dp(12.0f);
        fixNavigationBar();
        AuctionJoinSheet.initActionBar(this.actionBar, context, resourcesProvider, this.currentAccount, auctionSubscribeToGiftAuction.gift);
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setClickable(true);
        this.headerItem = UItem.asCustom(-1, linearLayout);
        StarsReactionsSheet.StarsSlider starsSlider = new StarsReactionsSheet.StarsSlider(context, resourcesProvider) { // from class: org.telegram.ui.Gifts.AuctionBidSheet.1
            @Override // org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider
            public void onValueChanged(int i) {
                super.onValueChanged(i);
                AuctionBidSheet.this.onSliderValueChanged(i);
            }

            @Override // org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider
            public void setValue(int i) {
                super.setValue(i);
                AuctionBidSheet.this.onSliderValueChanged(i);
            }

            @Override // org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider
            protected boolean onTapCustom(float f, float f2) {
                if (getProgress() <= 0.99d && f <= getMeasuredWidth() * 0.9f) {
                    return false;
                }
                AuctionBidSheet.this.showCustomPlaceABid();
                return true;
            }

            @Override // org.telegram.ui.Stars.StarsReactionsSheet.StarsSlider, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || motionEvent.getY() <= getMeasuredHeight() - AndroidUtilities.m1124dp(48.0f)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.slider = starsSlider;
        starsSlider.drawPlus = true;
        setSliderValues();
        linearLayout.addView(starsSlider, LayoutHelper.createLinear(-1, -2, 0, 0, -40, 0, -48));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        InfoCell infoCell = new InfoCell(context, resourcesProvider);
        this.minimumBidCell = infoCell;
        int iM1124dp = AndroidUtilities.m1124dp(12.0f);
        int i = Theme.key_windowBackgroundGray;
        infoCell.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iM1124dp, getThemedColor(i), ColorUtils.compositeColors(getThemedColor(Theme.key_listSelector), getThemedColor(i))));
        infoCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        infoCell.titleView.setText(LocaleController.getString(C2888R.string.Gift2AuctionBidInfoMinimumBid));
        InfoCell infoCell2 = new InfoCell(context, resourcesProvider);
        this.nextRoundCell = infoCell2;
        infoCell2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(12.0f), getThemedColor(i)));
        infoCell2.titleView.setText(LocaleController.getString(C2888R.string.Gift2AuctionBidInfoUntilNextRound));
        InfoCell infoCell3 = new InfoCell(context, resourcesProvider);
        this.giftsLeftCell = infoCell3;
        infoCell3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(12.0f), getThemedColor(i)));
        infoCell3.titleView.setText(LocaleController.getString(C2888R.string.Gift2AuctionBidInfoLeft));
        linearLayout2.addView(infoCell, LayoutHelper.createLinear(0, -1, 1.0f));
        linearLayout2.addView(new View(context), LayoutHelper.createLinear(10, -1, 0.0f));
        linearLayout2.addView(infoCell2, LayoutHelper.createLinear(0, -1, 1.0f));
        linearLayout2.addView(new View(context), LayoutHelper.createLinear(10, -1, 0.0f));
        linearLayout2.addView(infoCell3, LayoutHelper.createLinear(0, -1, 1.0f));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, 56, 16.0f, 0.0f, 16.0f, 15.0f));
        if (auctionSubscribeToGiftAuction.auctionUserState.acquired_count > 0) {
            final boolean[] zArr = new boolean[1];
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
            linksTextView.setGravity(17);
            linksTextView.setTextSize(1, 16.0f);
            int i2 = Theme.key_windowBackgroundWhiteLinkText;
            linksTextView.setTextColor(Theme.getColor(i2, resourcesProvider));
            linksTextView.setLinkTextColor(Theme.getColor(i2, resourcesProvider));
            linksTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(zArr, resourcesProvider, view);
                }
            });
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("*");
            spannableStringBuilder.setSpan(new AnimatedEmojiSpan(auctionSubscribeToGiftAuction.giftDocumentId, linksTextView.getPaint().getFontMetricsInt()), 0, spannableStringBuilder.length(), 33);
            linksTextView.setText(TextUtils.concat(AndroidUtilities.replaceArrows(LocaleController.formatPluralSpannable("Gift2AuctionsItemsBought2", auctionSubscribeToGiftAuction.auctionUserState.acquired_count, spannableStringBuilder), true, AndroidUtilities.m1124dp(2.6666667f), AndroidUtilities.m1124dp(1.0f))));
            ScaleStateListAnimator.apply(linksTextView, 0.02f, 1.5f);
            linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 16.0f, 4.0f, 16.0f, 4.0f));
        }
        int i3 = Theme.key_windowBackgroundWhiteBlueHeader;
        HeaderCell headerCell = new HeaderCell(context, i3, 21, 0, 0, false, true, resourcesProvider);
        this.selfBidderHeader = headerCell;
        linearLayout.addView(headerCell, LayoutHelper.createLinear(-1, -2, 0.0f, 5.0f, 0.0f, 0.0f));
        AnimatedTextView animatedTextView = new AnimatedTextView(context);
        this.selfBidderFutureGift = animatedTextView;
        animatedTextView.setTextSize(AndroidUtilities.m1124dp(12.5f));
        animatedTextView.setPadding(AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f), 0);
        animatedTextView.setSizeableBackground(Theme.createRadSelectorDrawable(0, 0, 9, 9));
        animatedTextView.setHideBackgroundIfEmpty(true);
        headerCell.setOnWidthUpdateListener(new Runnable() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3();
            }
        });
        headerCell.addView(animatedTextView, LayoutHelper.createFrame(-1, 17.0f, 51, 0.0f, 12.0f, 0.0f, 0.0f));
        BidderCell bidderCell = new BidderCell(context, resourcesProvider);
        this.selfBidderCell = bidderCell;
        bidderCell.placeTextView.setTextColor(getThemedColor(i3));
        bidderCell.setUser(user, false);
        linearLayout.addView(bidderCell, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, -7.0f));
        HeaderCell headerCell2 = new HeaderCell(context, i3, 21, 15, 0, false, resourcesProvider);
        headerCell2.setText(LocaleController.getString(C2888R.string.Gift2AuctionTop3Winners));
        linearLayout.addView(headerCell2, LayoutHelper.createLinear(-1, -2));
        int i4 = 0;
        while (true) {
            BidderCell[] bidderCellArr = this.topBidderCells;
            if (i4 >= bidderCellArr.length) {
                break;
            }
            bidderCellArr[i4] = new BidderCell(context, resourcesProvider);
            int i5 = i4 + 1;
            this.topBidderCells[i4].setPlace(i5, true, false);
            this.topBidderCells[i4].setBackground(Theme.getSelectorDrawable(false));
            this.topBidderCells[i4].drawDivider = i4 < 2;
            this.topBidderCells[i4].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AuctionBidSheet.$r8$lambda$kEbIuDGYjHhgjjOWj68BRjfmH0Q(view);
                }
            });
            linearLayout.addView(this.topBidderCells[i4], LayoutHelper.createLinear(-1, -2));
            i4 = i5;
        }
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider) { // from class: org.telegram.ui.Gifts.AuctionBidSheet.2
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (isEnabled()) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.buttonView = buttonWithCounterView;
        buttonWithCounterView.setRound();
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 16.0f, 16.0f, 16.0f);
        int i6 = layoutParamsCreateFrame.leftMargin;
        int i7 = this.backgroundPaddingLeft;
        layoutParamsCreateFrame.leftMargin = i6 + i7;
        layoutParamsCreateFrame.rightMargin += i7;
        this.containerView.addView(buttonWithCounterView, layoutParamsCreateFrame);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i8 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i8, 0, i8, AndroidUtilities.m1124dp(64.0f));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i9) {
                AuctionBidSheet.m14310$r8$lambda$G2Xuq_D6dRrzaq7lKN44Yo7tEw(view, i9);
            }
        });
        long j2 = auctionSubscribeToGiftAuction.auctionUserState.bid_amount;
        if (j2 > 0) {
            this.slider.setValue((int) j2);
        } else {
            this.slider.setValue((int) auctionSubscribeToGiftAuction.getMinimumBid());
        }
        updateTable(false);
        this.recyclerListView.setOverScrollMode(2);
        BalanceCloud balanceCloud = new BalanceCloud(context, this.currentAccount, resourcesProvider);
        this.balanceCloud = balanceCloud;
        balanceCloud.setScaleX(0.6f);
        balanceCloud.setScaleY(0.6f);
        balanceCloud.setAlpha(0.0f);
        balanceCloud.setEnabled(false);
        balanceCloud.setClickable(false);
        this.container.addView(balanceCloud, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 48.0f, 0.0f, 0.0f));
        ScaleStateListAnimator.apply(balanceCloud);
        balanceCloud.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                new StarsIntroActivity.StarsOptionsSheet(context, resourcesProvider).show();
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.bulletinContainer = frameLayout;
        this.container.addView(frameLayout, LayoutHelper.createFrame(-1, 100, 48));
        updateColors();
        this.adapter.update(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.slider.setValueAnimated((int) this.auction.getMinimumBid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(final boolean[] zArr, final Theme.ResourcesProvider resourcesProvider, View view) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        GiftAuctionController.getInstance(this.currentAccount).getOrRequestAcquiredGifts(this.giftId, new Utilities.Callback() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$1(zArr, resourcesProvider, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(boolean[] zArr, Theme.ResourcesProvider resourcesProvider, List list) {
        zArr[0] = false;
        new AcquiredGiftsSheet(getContext(), resourcesProvider, this.auction, list).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        this.selfBidderFutureGift.setTranslationX(this.selfBidderHeader.getAnimatedWidth() + AndroidUtilities.m1124dp(28.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSliderValueChanged(int i) {
        this.slider.setColor(HighlightMessageSheet.getTierOption(this.currentAccount, i, HighlightMessageSheet.TIER_COLOR1), HighlightMessageSheet.getTierOption(this.currentAccount, i, HighlightMessageSheet.TIER_COLOR2), true);
        updateSelfBidderCell(this.isOpenAnimationEnd);
        updateSelfBidderHeader(this.isOpenAnimationEnd);
        updateButtonText(this.isOpenAnimationEnd);
        checkSliderSubText();
    }

    private void checkSliderSubText() {
        int value = this.slider.getValue();
        if (this.slider.getProgress() > 0.99f) {
            this.slider.setCounterSubText(LocaleController.getString(C2888R.string.Gift2AuctionTapToBidMore), true);
            return;
        }
        long j = value;
        TL_stars.TL_StarGiftAuctionUserState tL_StarGiftAuctionUserState = this.auction.auctionUserState;
        long j2 = tL_StarGiftAuctionUserState.bid_amount;
        if (j == j2) {
            this.slider.setCounterSubText(LocaleController.getString(C2888R.string.Gift2AuctionYourBid), true);
            return;
        }
        if (j2 <= 0 || tL_StarGiftAuctionUserState.returned) {
            this.slider.setCounterSubText(null, true);
            return;
        }
        long j3 = j - j2;
        if (j3 > 0) {
            this.slider.setCounterSubText("+" + LocaleController.formatNumber(j3, ','), true);
            return;
        }
        this.slider.setCounterSubText(null, true);
    }

    private void setSliderValues() {
        int i;
        this.auction.getMinimumBid();
        this.auction.getCurrentMyBid();
        long currentTopBid = this.auction.getCurrentTopBid();
        if (currentTopBid > 100000) {
            i = ((((int) currentTopBid) * 3) / 2000) * MediaDataController.MAX_STYLE_RUNS_COUNT;
        } else {
            i = currentTopBid > 30000 ? AppDataDirGuesser.PER_USER_RANGE : 50000;
        }
        int[] iArr = {50, 100, 500, MediaDataController.MAX_STYLE_RUNS_COUNT, 2000, 5000, 7500, XCallback.PRIORITY_HIGHEST, 25000, 50000, AppDataDirGuesser.PER_USER_RANGE, 500000, 1000000, MediaController.VIDEO_BITRATE_480, 10000000};
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z = false;
        while (true) {
            if (i2 >= 15) {
                break;
            }
            int i3 = iArr[i2];
            if (i3 >= 50) {
                if (i3 == 50) {
                    z = false;
                }
                if (i3 > i) {
                    arrayList.add(Integer.valueOf(i));
                    break;
                } else {
                    arrayList.add(Integer.valueOf(i3));
                    if (iArr[i2] == i) {
                        break;
                    }
                }
            } else {
                z = true;
            }
            i2++;
        }
        if (z) {
            arrayList.add(0, 50);
        }
        if (arrayList.size() < 2) {
            arrayList.clear();
            arrayList.add(1);
            arrayList.add(Integer.valueOf(XCallback.PRIORITY_HIGHEST));
        }
        int[] iArr2 = new int[arrayList.size()];
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            iArr2[i4] = ((Integer) arrayList.get(i4)).intValue();
        }
        this.slider.setSteps(100, iArr2);
    }

    private void checkAuctionParams() {
        BaseFragment lastFragment;
        long peerDialogId = DialogObject.getPeerDialogId(this.auction.auctionUserState.peer);
        long j = this.auction.auctionUserState.acquired_count;
        if (this.lastAcquiredCount < j && !this.isFirstCheck && (lastFragment = LaunchActivity.getLastFragment()) != null) {
            long j2 = this.lastRecipientDialogId;
            if (j2 != 0) {
                final ChatActivity chatActivityM1239of = ChatActivity.m1239of(j2);
                Objects.requireNonNull(chatActivityM1239of);
                chatActivityM1239of.whenFullyVisible(new Runnable() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        chatActivityM1239of.startFireworks();
                    }
                });
                lastFragment.presentFragment(chatActivityM1239of);
                Runnable runnable = this.closeParentSheet;
                if (runnable != null) {
                    runnable.run();
                }
                lambda$new$0();
            }
        }
        if (peerDialogId != 0) {
            this.lastRecipientDialogId = peerDialogId;
        }
        this.lastAcquiredCount = j;
        this.isFirstCheck = false;
    }

    public void setCloseParentSheet(Runnable runnable) {
        this.closeParentSheet = runnable;
    }

    private void updateTable(boolean z) {
        int i;
        this.minimumBidCell.infoView.setText(StarsIntroActivity.replaceStarsWithPlain("⭐️" + LocaleController.formatNumberWithMillion((int) this.auction.getMinimumBid(), ','), 0.78f, this.refS), z);
        if (this.auction.auctionStateActive != null) {
            int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            if (this.auction.isUpcoming(currentTime)) {
                long jMax = Math.max(0, this.auction.auctionStateActive.start_date - currentTime);
                this.timer.start(jMax);
                updateCountdownCell(jMax, z);
            } else {
                long jMax2 = Math.max(0, this.auction.auctionStateActive.next_round_at - currentTime);
                this.timer.start(jMax2);
                updateCountdownCell(jMax2, z);
            }
            if (this.animatedEmojiSpan == null && this.auction.gift.sticker != null) {
                this.animatedEmojiSpan = new AnimatedEmojiSpan(this.auction.gift.sticker.f1668id, this.giftsLeftCell.infoView.getPaint().getFontMetricsInt());
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (this.animatedEmojiSpan != null) {
                spannableStringBuilder.append((CharSequence) "* ");
                spannableStringBuilder.setSpan(this.animatedEmojiSpan, 0, 1, 33);
            }
            spannableStringBuilder.append((CharSequence) LocaleController.formatNumber(this.auction.auctionStateActive.gifts_left, ','));
            this.giftsLeftCell.infoView.setText(spannableStringBuilder, z);
            TextView textView = this.nextRoundCell.titleView;
            if (this.auction.isUpcoming()) {
                i = C2888R.string.Gift2AuctionBidInfoUntilStart;
            } else {
                TL_stars.TL_starGiftAuctionState tL_starGiftAuctionState = this.auction.auctionStateActive;
                i = tL_starGiftAuctionState.current_round == tL_starGiftAuctionState.total_rounds ? C2888R.string.Gift2AuctionBidInfoUntilEndRound : C2888R.string.Gift2AuctionBidInfoUntilNextRound;
            }
            textView.setText(LocaleController.getString(i));
            int iMin = Math.min(this.topBidderCells.length, this.auction.auctionStateActive.top_bidders.size());
            if (iMin > 0) {
                int i2 = 0;
                while (i2 < iMin) {
                    int i3 = i2 + 1;
                    Long l = this.auction.auctionStateActive.top_bidders.get(i2);
                    final long jLongValue = l.longValue();
                    TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(l);
                    if (user != null) {
                        this.topBidderCells[i2].setUser(user, z);
                    }
                    this.topBidderCells[i2].setBid(this.auction.approximateBidAmountFromPlace(i3), z);
                    this.topBidderCells[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$updateTable$7(jLongValue, view);
                        }
                    });
                    i2 = i3;
                }
            }
        }
        StarsReactionsSheet.StarsSlider starsSlider = this.slider;
        GiftAuctionController.Auction auction = this.auction;
        starsSlider.setStarsTop(auction.approximateBidAmountFromPlace(auction.gift.gifts_per_round) + 1);
        this.slider.setTopText(LocaleController.formatPluralString("StarsReactionTopX", this.auction.gift.gifts_per_round, new Object[0]));
        updateSelfBidderCell(z);
        updateSelfBidderHeader(z);
        updateButtonText(z);
        checkSliderSubText();
        checkAuctionParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTable$7(long j, View view) {
        openProfile(j);
    }

    private void openProfile(long j) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            if (UserObject.isService(j)) {
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
        Runnable runnable = this.closeParentSheet;
        if (runnable != null) {
            runnable.run();
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onColorFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        updateColors();
    }

    private void updateColors() {
        int iBlendARGB = ColorUtils.blendARGB(ColorUtils.blendARGB(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader), getThemedColor(Theme.key_text_RedBold), this.outbidColor.getFloatValue()), getThemedColor(Theme.key_color_green), this.winningColor.getFloatValue());
        this.selfBidderHeader.setTextColor(iBlendARGB);
        this.selfBidderFutureGift.setTextColor(iBlendARGB);
        this.selfBidderCell.placeTextView.setTextColor(iBlendARGB);
        if (Theme.setSelectorDrawableColor(this.selfBidderFutureGift.getSizeableBackground(), Theme.multAlpha(iBlendARGB, 0.15f), false)) {
            this.selfBidderFutureGift.invalidate();
        }
    }

    private void updateSelfBidderHeader(boolean z) {
        boolean z2;
        GiftAuctionController.Auction.BidStatus bidStatus = this.auction.getBidStatus();
        boolean z3 = false;
        if (this.slider.getValue() > this.auction.auctionUserState.bid_amount) {
            this.selfBidderHeader.setText(LocaleController.getString(C2888R.string.Gift2AuctionBidStatusFuture), z);
        } else {
            z2 = true;
            if (bidStatus == GiftAuctionController.Auction.BidStatus.OUTBID || bidStatus == GiftAuctionController.Auction.BidStatus.RETURNED) {
                this.selfBidderHeader.setText(LocaleController.getString(C2888R.string.Gift2AuctionBidStatusOutbid), z);
            } else if (bidStatus == GiftAuctionController.Auction.BidStatus.WINNING) {
                this.selfBidderHeader.setText(LocaleController.getString(C2888R.string.Gift2AuctionBidStatusWinning), z);
                z2 = false;
                z3 = true;
            } else {
                this.selfBidderHeader.setText(LocaleController.getString(C2888R.string.Gift2AuctionBidStatusFuture), z);
            }
            this.winningColor.setValue(z3, z);
            this.outbidColor.setValue(z2, z);
        }
        z2 = false;
        this.winningColor.setValue(z3, z);
        this.outbidColor.setValue(z2, z);
    }

    private void updateSelfBidderCell(boolean z) {
        long value = this.slider.getValue();
        int approximatedMyPlace = this.auction.getApproximatedMyPlace();
        int iApproximatePlaceFromStars = this.auction.approximatePlaceFromStars(value);
        this.selfBidderCell.setBid(Math.max(value, this.auction.getCurrentMyBid()), false);
        if (approximatedMyPlace > 0) {
            iApproximatePlaceFromStars = Math.min(approximatedMyPlace, iApproximatePlaceFromStars);
        }
        this.selfBidderCell.setPlace(iApproximatePlaceFromStars, false, z);
        GiftAuctionController.Auction auction = this.auction;
        if (auction.auctionStateActive != null && iApproximatePlaceFromStars > 0 && auction.gift.title != null && auction.getBidStatus() == GiftAuctionController.Auction.BidStatus.WINNING && !this.auction.isUpcoming()) {
            GiftAuctionController.Auction auction2 = this.auction;
            int i = auction2.auctionStateActive.last_gift_num + iApproximatePlaceFromStars;
            if (i <= auction2.gift.availability_total) {
                this.selfBidderFutureGift.setText(this.auction.gift.title + " #" + LocaleController.formatNumber(i, ','));
                return;
            }
        }
        this.selfBidderFutureGift.setText(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCountdownCell(long j) {
        updateCountdownCell(j, this.isOpenAnimationEnd);
    }

    private void updateCountdownCell(long j, boolean z) {
        this.nextRoundCell.infoView.setText(formatDuration(j), z);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onDismissAnimationStart() {
        super.onDismissAnimationStart();
        this.isOpenAnimationEnd = false;
        checkBalanceCloudVisibility();
        Bulletin.removeDelegate(this.container);
    }

    private void updateButtonText(boolean z) {
        long value = this.slider.getValue();
        if (value == this.auction.getCurrentMyBid()) {
            this.buttonView.setText(LocaleController.getString(C2888R.string.f1606OK), z);
            this.buttonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateButtonText$8(view);
                }
            });
            return;
        }
        TL_stars.TL_StarGiftAuctionUserState tL_StarGiftAuctionUserState = this.auction.auctionUserState;
        long j = tL_StarGiftAuctionUserState.bid_amount;
        if (j < value && !tL_StarGiftAuctionUserState.returned) {
            this.buttonView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2888R.string.Gift2AuctionPlaceBidAdd, LocaleController.formatNumber(value - j, ',')), this.spanRefStars), z);
        } else {
            this.buttonView.setText(StarsIntroActivity.replaceStars(LocaleController.formatString(C2888R.string.Gift2AuctionPlaceBid, LocaleController.formatNumber(value, ',')), this.spanRefStars), z);
        }
        this.buttonView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$updateButtonText$9(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonText$8(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButtonText$9(View view) {
        int value = this.slider.getValue();
        int minimumBid = (int) this.auction.getMinimumBid();
        if (value < minimumBid) {
            AndroidUtilities.shakeView(this.buttonView);
            BulletinFactory.m1245of(this.container, this.resourcesProvider).createSimpleBulletin(C2888R.raw.info, AndroidUtilities.replaceTags(LocaleController.formatPluralString("Gift2AuctionMinimumBidIncreased", minimumBid, new Object[0]))).show();
        } else {
            sendBid(value);
        }
    }

    @Override // org.telegram.messenger.GiftAuctionController.OnAuctionUpdateListener
    public void onUpdate(GiftAuctionController.Auction auction) {
        this.auction = auction;
        updateTable(this.isOpenAnimationEnd);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        super.onOpenAnimationEnd();
        this.isOpenAnimationEnd = true;
        checkBalanceCloudVisibility();
        Bulletin.addDelegate(this.container, new Bulletin.Delegate() { // from class: org.telegram.ui.Gifts.AuctionBidSheet.3
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
                return AndroidUtilities.m1124dp(64.0f);
            }
        });
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        GiftAuctionController.getInstance(this.currentAccount).unsubscribeFromGiftAuction(this.giftId, this);
        this.timer.stop();
        super.lambda$new$0();
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.Gift2AuctionPlaceABidTitle);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda9
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
        arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(16.0f)));
    }

    public static String formatDuration(long j) {
        if (j >= 3600) {
            return AndroidUtilities.formatFullDuration((int) j);
        }
        return AndroidUtilities.formatDurationNoHours((int) j, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onContainerTranslationYChanged(float f) {
        super.onContainerTranslationYChanged(f);
        checkBalanceCloudVisibility();
    }

    private void checkBalanceCloudVisibility() {
        boolean z = this.isOpenAnimationEnd && !isDismissed();
        if (this.balanceCloudVisible != z) {
            this.balanceCloudVisible = z;
            BalanceCloud balanceCloud = this.balanceCloud;
            if (balanceCloud != null) {
                balanceCloud.setEnabled(z);
                this.balanceCloud.setClickable(z);
                this.balanceCloud.animate().scaleX(z ? 1.0f : 0.6f).scaleY(z ? 1.0f : 0.6f).alpha(z ? 1.0f : 0.0f).setDuration(180L).start();
            }
        }
    }

    private void sendBid(int i) {
        if (this.bidIsPending) {
            return;
        }
        final long j = this.auction.auctionUserState.bid_amount;
        long j2 = j > 0 ? ((long) i) - j : i;
        if (StarsController.getInstance(this.currentAccount).balanceAvailable() && StarsController.getInstance(this.currentAccount).getBalance(false) < j2) {
            new StarsIntroActivity.StarsNeededSheet(getContext(), this.resourcesProvider, j2, 14, null, null, 0L).show();
            return;
        }
        this.bidIsPending = true;
        this.buttonView.setLoading(true);
        GiftAuctionController.getInstance(this.currentAccount).sendBid(this.giftId, this.params, i, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$sendBid$10(j, (Boolean) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendBid$10(long j, Boolean bool, String str) {
        this.buttonView.setLoading(false);
        this.bidIsPending = false;
        if (bool != null) {
            showBidSuccessBulletin(j > 0);
            StarsController.getInstance(this.currentAccount).getBalance(false, null, true);
        }
        if (str != null) {
            updateBulletinContainerPosition();
            BulletinFactory.m1245of(this.bulletinContainer, this.resourcesProvider).createSimpleBulletin(C2888R.raw.error, LocaleController.formatString(C2888R.string.UnknownErrorCode, str)).show();
        }
    }

    private void showBidSuccessBulletin(boolean z) {
        Bulletin.TwoLineLayout twoLineLayout = new Bulletin.TwoLineLayout(getContext(), this.resourcesProvider);
        twoLineLayout.imageView.setImageResource(C2888R.drawable.filled_gift_sell_24);
        twoLineLayout.titleTextView.setText(LocaleController.getString(z ? C2888R.string.Gift2AuctionsBidHasBeenIncreased : C2888R.string.Gift2AuctionsBidHasBeenPlaced));
        twoLineLayout.titleTextView.setSingleLine(true);
        twoLineLayout.titleTextView.setTextSize(1, 15.0f);
        twoLineLayout.titleTextView.setMaxLines(1);
        twoLineLayout.titleTextView.setTypeface(AndroidUtilities.bold());
        twoLineLayout.subtitleTextView.setText(LocaleController.formatString(C2888R.string.Gift2AuctionPlaceACustomBidHint, Integer.valueOf(this.auction.gift.gifts_per_round)));
        twoLineLayout.subtitleTextView.setSingleLine(false);
        twoLineLayout.subtitleTextView.setMaxLines(5);
        updateBulletinContainerPosition();
        BulletinFactory.m1245of(this.bulletinContainer, this.resourcesProvider).create(twoLineLayout, 2750).show();
    }

    private void updateBulletinContainerPosition() {
        FrameLayout frameLayout;
        if (this.shadowDrawable == null || this.containerView == null || (frameLayout = this.bulletinContainer) == null) {
            return;
        }
        frameLayout.setTranslationY(Math.max(0.0f, ((r0.getBounds().top + this.containerView.getY()) - this.bulletinContainer.getMeasuredHeight()) + AndroidUtilities.m1124dp(10.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCustomPlaceABid() {
        Context context = getContext();
        final Activity activityFindActivity = AndroidUtilities.findActivity(context);
        final BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (activityFindActivity != null) {
            activityFindActivity.getCurrentFocus();
        }
        final View[] viewArr = new View[1];
        AlertDialog.Builder builder = new AlertDialog.Builder(context, this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.Gift2AuctionPlaceACustomBid));
        builder.setMessage(LocaleController.formatString(C2888R.string.Gift2AuctionPlaceACustomBidHint, Integer.valueOf(this.auction.gift.gifts_per_round)));
        final Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.star_small_inner).mutate();
        final EditTextCaption editTextCaption = new EditTextCaption(context, this.resourcesProvider) { // from class: org.telegram.ui.Gifts.AuctionBidSheet.4
            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                drawableMutate.setBounds(0, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(28.0f));
                drawableMutate.draw(canvas);
            }
        };
        editTextCaption.setTextSize(1, 18.0f);
        editTextCaption.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        editTextCaption.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, this.resourcesProvider));
        editTextCaption.setHintText(LocaleController.getString(C2888R.string.Gift2AuctionPlaceACustomBidHint2));
        editTextCaption.setFocusable(true);
        editTextCaption.setInputType(2);
        editTextCaption.setFilters(new InputFilter[]{new InputFilter.LengthFilter(9)});
        editTextCaption.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, this.resourcesProvider), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated, this.resourcesProvider), Theme.getColor(Theme.key_text_RedRegular, this.resourcesProvider));
        editTextCaption.setImeOptions(268435462);
        editTextCaption.setBackgroundDrawable(null);
        editTextCaption.hintLayoutOffset = AndroidUtilities.m1124dp(24.0f);
        editTextCaption.setPadding(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(6.0f), 0, AndroidUtilities.m1124dp(6.0f));
        editTextCaption.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Gifts.AuctionBidSheet.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                try {
                    boolean z = ((long) Integer.parseInt(editable.toString())) >= AuctionBidSheet.this.auction.getMinimumBid();
                    viewArr[0].animate().alpha(z ? 1.0f : 0.6f).setDuration(180L).start();
                    viewArr[0].setEnabled(z);
                    viewArr[0].setClickable(z);
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                }
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.addView(editTextCaption, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
        builder.makeCustomMaxHeight();
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.m1124dp(300.0f));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Gift2AuctionPlaceABid), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showCustomPlaceABid$11(editTextCaption, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda16
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        AlertDialog[] alertDialogArr = {builder.create()};
        if (lastFragment != null) {
            AndroidUtilities.requestAdjustNothing(activityFindActivity, lastFragment.getClassGuid());
        }
        alertDialogArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda17
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AuctionBidSheet.$r8$lambda$3H2sZSZ6p9m5W_7TQ96JI8Ydpjg(editTextCaption, lastFragment, activityFindActivity, dialogInterface);
            }
        });
        alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Gifts.AuctionBidSheet$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                AuctionBidSheet.$r8$lambda$Gjs5MOYaCq2CPw6S1guYlA55XXM(editTextCaption, dialogInterface);
            }
        });
        alertDialogArr[0].show();
        View button = alertDialogArr[0].getButton(-1);
        viewArr[0] = button;
        button.setAlpha(0.6f);
        alertDialogArr[0].setDismissDialogByButtons(false);
        editTextCaption.setSelection(editTextCaption.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCustomPlaceABid$11(EditTextCaption editTextCaption, AlertDialog alertDialog, int i) {
        try {
            int i2 = Integer.parseInt(editTextCaption.getText().toString().trim());
            sendBid(i2);
            this.slider.setValue(i2);
            alertDialog.dismiss();
        } catch (Throwable th) {
            AndroidUtilities.shakeView(editTextCaption);
            FileLog.m1136e(th);
        }
    }

    public static /* synthetic */ void $r8$lambda$3H2sZSZ6p9m5W_7TQ96JI8Ydpjg(EditTextCaption editTextCaption, BaseFragment baseFragment, Activity activity, DialogInterface dialogInterface) {
        AndroidUtilities.hideKeyboard(editTextCaption);
        if (baseFragment != null) {
            AndroidUtilities.requestAdjustResize(activity, baseFragment.getClassGuid());
        }
    }

    public static /* synthetic */ void $r8$lambda$Gjs5MOYaCq2CPw6S1guYlA55XXM(EditTextCaption editTextCaption, DialogInterface dialogInterface) {
        editTextCaption.requestFocus();
        AndroidUtilities.showKeyboard(editTextCaption);
    }

    private static class InfoCell extends FrameLayout {
        public final AnimatedTextView infoView;
        public final TextView titleView;

        public InfoCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.infoView = animatedTextView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            animatedTextView.setTextColor(Theme.getColor(i, resourcesProvider));
            animatedTextView.setTextSize(AndroidUtilities.m1124dp(17.0f));
            animatedTextView.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-2, 23, 1));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 11.0f);
            textView.setTextColor(Theme.getColor(i, resourcesProvider));
            textView.setSingleLine();
            textView.setMaxLines(1);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 1));
            addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
        }
    }

    private static class BidderCell extends LinearLayout implements NotificationCenter.NotificationCenterDelegate {
        private final BackupImageView backupImageView;
        private final AnimatedTextView bidTextView;
        private boolean drawDivider;
        private final AnimatedTextView nameTextView;
        private final AnimatedTextView placeTextView;
        private final ColoredImageSpan[] ref;

        public BidderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.ref = new ColoredImageSpan[1];
            setOrientation(0);
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.nameTextView = animatedTextView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            animatedTextView.setTextColor(Theme.getColor(i, resourcesProvider));
            animatedTextView.setTextSize(AndroidUtilities.m1124dp(15.0f));
            animatedTextView.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
            animatedTextView.setEllipsizeByGradient(true);
            AnimatedTextView animatedTextView2 = new AnimatedTextView(context);
            this.bidTextView = animatedTextView2;
            animatedTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
            animatedTextView2.setTextSize(AndroidUtilities.m1124dp(15.0f));
            BackupImageView backupImageView = new BackupImageView(context);
            this.backupImageView = backupImageView;
            AnimatedTextView animatedTextView3 = new AnimatedTextView(context);
            this.placeTextView = animatedTextView3;
            animatedTextView3.setTextSize(AndroidUtilities.m1124dp(15.0f));
            animatedTextView3.setPadding(AndroidUtilities.m1124dp(20.0f), 0, 0, 0);
            animatedTextView3.setTextColor(Theme.getColor(i, resourcesProvider));
            animatedTextView3.setTypeface(AndroidUtilities.bold());
            animatedTextView3.setGravity(17);
            addView(animatedTextView3, LayoutHelper.createLinear(66, -2, 0.0f, 16));
            addView(backupImageView, LayoutHelper.createLinear(32, 32, 0.0f, 16));
            addView(animatedTextView, LayoutHelper.createLinear(0, -2, 1.0f, 16));
            addView(animatedTextView2, LayoutHelper.createLinear(-2, -2, 0.0f, 16, 0, 0, 20, 0));
        }

        public void setUser(TLRPC.User user, boolean z) {
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(user);
            this.backupImageView.setForUserOrChat(user, avatarDrawable);
            this.backupImageView.setRoundRadius(AndroidUtilities.m1124dp(16.0f));
            this.nameTextView.setText(UserObject.getUserName(user));
        }

        public void setPlace(int i, boolean z, boolean z2) {
            if (!z || i > 3) {
                if (i >= 10000) {
                    this.placeTextView.setTextSize(AndroidUtilities.m1124dp(12.0f));
                } else if (i >= 1000) {
                    this.placeTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
                } else {
                    this.placeTextView.setTextSize(AndroidUtilities.m1124dp(15.0f));
                }
                this.placeTextView.setText(Integer.toString(i), z2);
                return;
            }
            if (i == 1) {
                AnimatedTextView animatedTextView = this.placeTextView;
                animatedTextView.setText(Emoji.replaceWithRestrictedEmoji("🥇", animatedTextView.getPaint().getFontMetricsInt(), (Runnable) null), z2);
            } else if (i == 2) {
                AnimatedTextView animatedTextView2 = this.placeTextView;
                animatedTextView2.setText(Emoji.replaceWithRestrictedEmoji("🥈", animatedTextView2.getPaint().getFontMetricsInt(), (Runnable) null), z2);
            } else if (i == 3) {
                AnimatedTextView animatedTextView3 = this.placeTextView;
                animatedTextView3.setText(Emoji.replaceWithRestrictedEmoji("🥉", animatedTextView3.getPaint().getFontMetricsInt(), (Runnable) null), z2);
            }
        }

        public void setBid(long j, boolean z) {
            this.bidTextView.setText(StarsIntroActivity.replaceStarsWithPlain("⭐️" + LocaleController.formatNumber((int) j, ','), 0.78f, this.ref), z);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.drawDivider) {
                canvas.drawLine(AndroidUtilities.m1124dp(112.0f), getMeasuredHeight() - 1, getMeasuredWidth() - AndroidUtilities.m1124dp(16.0f), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(52.0f), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            this.placeTextView.invalidate();
        }
    }
}
