package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.GiftAuctionController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.utils.CountdownTimer;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Gifts.ActiveAuctionsSheet;
import org.telegram.p029ui.Gifts.AuctionBidSheet;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.p028tl.TL_stars;

/* JADX INFO: loaded from: classes3.dex */
public class ActiveGiftAuctionsHintCell extends FrameLayout implements GiftAuctionController.OnActiveAuctionsUpdateListeners {
    private List activeAuctions;
    private final int currentAccount;
    private boolean isOutbid;
    private final AnimatedTextView messageTextView;
    private final CountDown timerView;
    private final AnimatedTextView titleTextView;

    public ActiveGiftAuctionsHintCell(Context context, int i) {
        super(context);
        this.activeAuctions = new ArrayList();
        this.currentAccount = i;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        AnimatedTextView animatedTextView = new AnimatedTextView(context);
        this.titleTextView = animatedTextView;
        animatedTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.setTranslationY(-AndroidUtilities.m1124dp(1.0f));
        linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-1, 18));
        AnimatedTextView animatedTextView2 = new AnimatedTextView(context);
        this.messageTextView = animatedTextView2;
        animatedTextView2.setTextSize(AndroidUtilities.m1124dp(13.0f));
        linearLayout.addView(animatedTextView2, LayoutHelper.createLinear(-1, 17, 2.0f, 0.0f, 2.0f, 0.0f));
        CountDown countDown = new CountDown(context, i);
        this.timerView = countDown;
        countDown.updateTimer(299L);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 16, 14.0f, 0.0f, 90.0f, 0.0f));
        addView(countDown, LayoutHelper.createFrame(-2, -2.0f, 21, 0.0f, 0.0f, 11.0f, 0.0f));
        updateColors();
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.ActiveGiftAuctionsHintCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClick(view);
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
    }

    public void updateColors() {
        setBackground(Theme.getSelectorDrawable(false));
        this.titleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.messageTextView.setTextColor(Theme.getColor(this.isOutbid ? Theme.key_text_RedBold : Theme.key_windowBackgroundWhiteGrayText));
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        GiftAuctionController.getInstance(this.currentAccount).subscribeToActiveAuctionsUpdates(this);
        onActiveAuctionsUpdate(GiftAuctionController.getInstance(this.currentAccount).getActiveAuctions());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        GiftAuctionController.getInstance(this.currentAccount).unsubscribeFromActiveAuctionsUpdates(this);
    }

    @Override // org.telegram.messenger.GiftAuctionController.OnActiveAuctionsUpdateListeners
    public void onActiveAuctionsUpdate(List list) {
        ArrayList arrayList = new ArrayList(list);
        this.activeAuctions = arrayList;
        if (arrayList.size() == 1) {
            GiftAuctionController.Auction auction = (GiftAuctionController.Auction) this.activeAuctions.get(0);
            if (auction.isUpcoming()) {
                this.timerView.start(auction.gift.auction_start_date);
            } else {
                TL_stars.TL_starGiftAuctionState tL_starGiftAuctionState = auction.auctionStateActive;
                this.timerView.start(tL_starGiftAuctionState != null ? Math.max(0, tL_starGiftAuctionState.next_round_at) : 0);
            }
        } else {
            this.timerView.stop();
            this.timerView.textView.setText(LocaleController.getString(C2888R.string.Gift2AuctionPriceView), true);
        }
        update(true);
    }

    private void update(boolean z) {
        String string;
        String place;
        String string2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int size = this.activeAuctions.size();
        if (size == 0) {
            return;
        }
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        int i = 0;
        boolean zIsUpcoming = false;
        boolean z2 = false;
        while (true) {
            boolean z3 = true;
            if (i >= size) {
                break;
            }
            GiftAuctionController.Auction auction = (GiftAuctionController.Auction) this.activeAuctions.get(i);
            zIsUpcoming |= auction.isUpcoming(currentTime);
            if (auction.giftDocumentId != 0) {
                spannableStringBuilder.append((CharSequence) "*");
                spannableStringBuilder.setSpan(new AnimatedEmojiSpan(auction.giftDocumentId, this.titleTextView.getPaint().getFontMetricsInt()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
            }
            GiftAuctionController.Auction.BidStatus bidStatus = auction.getBidStatus();
            if (bidStatus != GiftAuctionController.Auction.BidStatus.OUTBID && bidStatus != GiftAuctionController.Auction.BidStatus.RETURNED) {
                z3 = false;
            }
            z2 |= z3;
            i++;
        }
        spannableStringBuilder.append(' ');
        if (zIsUpcoming) {
            if (size == 1) {
                string2 = LocaleController.getString(C2888R.string.Gift2ActiveAuctionsUpcomingAuctionTitle);
            } else {
                string2 = LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsUpcomingAuctionsTitle, Integer.valueOf(size));
            }
            spannableStringBuilder.append((CharSequence) string2);
        } else {
            if (size == 1) {
                string = LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveAuctionTitle);
            } else {
                string = LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveAuctionsTitle, Integer.valueOf(size));
            }
            spannableStringBuilder.append((CharSequence) string);
        }
        this.titleTextView.setText(spannableStringBuilder, z);
        this.isOutbid = false;
        if (zIsUpcoming) {
            this.messageTextView.setText(LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveStatusEarly));
        } else if (z2) {
            this.messageTextView.setText(LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveStatusOutbid));
            this.isOutbid = true;
        } else if (size > 1) {
            this.messageTextView.setText(LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinningAll));
        } else {
            int approximatedMyPlace = ((GiftAuctionController.Auction) this.activeAuctions.get(0)).getApproximatedMyPlace();
            if (approximatedMyPlace == 1) {
                place = LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinning1Place);
            } else if (approximatedMyPlace == 2) {
                place = LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinning2Place);
            } else if (approximatedMyPlace == 3) {
                place = LocaleController.getString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinning3Place);
            } else {
                place = formatPlace(approximatedMyPlace);
            }
            this.messageTextView.setText(LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinningOne, place));
        }
        updateColors();
    }

    private static String formatPlace(int i) {
        int i2 = i % 100;
        if (i2 >= 11 && i2 <= 13) {
            return LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinningOtherTh, Integer.valueOf(i));
        }
        int i3 = i % 10;
        return i3 != 1 ? i3 != 2 ? i3 != 3 ? LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinningOtherTh, Integer.valueOf(i)) : LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinningOtherRd, Integer.valueOf(i)) : LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinningOtherNd, Integer.valueOf(i)) : LocaleController.formatString(C2888R.string.Gift2ActiveAuctionsActiveStatusWinningOtherSt, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(View view) {
        if (this.activeAuctions.size() == 1) {
            new AuctionBidSheet(getContext(), null, null, (GiftAuctionController.Auction) this.activeAuctions.get(0)).show();
        } else {
            new ActiveAuctionsSheet(getContext(), null).show();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class CountDown extends FrameLayout {
        private final int currentAccount;
        private final Drawable drawable;
        private int endTime;
        private final Paint fillPaint;
        public final AnimatedTextView.AnimatedTextDrawable textView;
        private final CountdownTimer timer;

        public CountDown(Context context, int i) {
            super(context);
            Paint paint = new Paint(1);
            this.fillPaint = paint;
            this.timer = new CountdownTimer(new CountdownTimer.Callback() { // from class: org.telegram.ui.Cells.ActiveGiftAuctionsHintCell$CountDown$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.utils.CountdownTimer.Callback
                public final void onTimerUpdate(long j) {
                    this.f$0.updateTimer(j);
                }
            });
            this.currentAccount = i;
            this.drawable = context.getResources().getDrawable(C2888R.drawable.filled_gift_sell_24).mutate();
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
            this.textView = animatedTextDrawable;
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            animatedTextDrawable.setCallback(this);
            animatedTextDrawable.setTypeface(AndroidUtilities.bold());
            animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(14.0f));
            animatedTextDrawable.setTextColor(-1);
            animatedTextDrawable.setGravity(3);
            paint.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.m1124dp(72.0f), 0.0f, new int[]{-13460514, -10042885}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.textView || super.verifyDrawable(drawable);
        }

        public void start(int i) {
            this.endTime = i;
            if (isAttachedToWindow()) {
                long jMax = Math.max(0, i - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime());
                this.timer.start(jMax);
                updateTimer(jMax);
            }
        }

        public void stop() {
            this.endTime = 0;
            this.timer.stop();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateTimer(long j) {
            if (j == 0) {
                this.textView.setText(LocaleController.getString(C2888R.string.Gift2AuctionPriceView));
            } else {
                this.textView.setText(j > 3600 ? AndroidUtilities.formatDuration((int) j, false) : AndroidUtilities.formatDurationNoHours((int) j, false), isAttachedToWindow());
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            start(this.endTime);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.timer.stop();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int measuredWidth = (getMeasuredWidth() - AndroidUtilities.m1124dp(14.0f)) - ((int) this.textView.getCurrentWidth());
            int iM1124dp = measuredWidth - AndroidUtilities.m1124dp(30.0f);
            canvas.save();
            canvas.translate(iM1124dp, 0.0f);
            canvas.drawRoundRect(0.0f, 0.0f, getWidth() - iM1124dp, getHeight(), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(14.0f), this.fillPaint);
            canvas.restore();
            this.textView.setBounds(measuredWidth, 0, getMeasuredWidth() - AndroidUtilities.m1124dp(8.0f), getMeasuredHeight() - AndroidUtilities.m1124dp(1.0f));
            this.textView.draw(canvas);
            this.drawable.setBounds(AndroidUtilities.m1124dp(-22.0f) + measuredWidth, AndroidUtilities.m1124dp(5.0f), measuredWidth + AndroidUtilities.m1124dp(-4.0f), AndroidUtilities.m1124dp(23.0f));
            this.drawable.draw(canvas);
            super.dispatchDraw(canvas);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(LayoutHelper.measureSpecExactlyDp(172), LayoutHelper.measureSpecExactlyDp(28));
        }
    }
}
