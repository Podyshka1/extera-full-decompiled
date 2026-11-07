package org.telegram.ui.Wallet;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Gifts.GiftSheet;

/* JADX INFO: loaded from: classes8.dex */
class WalletGiftCell extends GiftSheet.GiftCell {
    WalletGiftStickers board;
    private float drawnScale;
    private ValueAnimator drawnScaleAnimator;
    TL_wallet.nftItem nft;
    private boolean wasPressed;

    public WalletGiftCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context, i, resourcesProvider);
        this.drawnScale = 1.0f;
        setStateListAnimator(null);
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (isPressed() == this.wasPressed) {
            return;
        }
        boolean zIsPressed = isPressed();
        this.wasPressed = zIsPressed;
        animateDrawnScale(zIsPressed ? 0.96f : 1.0f, zIsPressed ? 80L : 350L, zIsPressed ? null : new OvershootInterpolator(1.5f));
    }

    public void releaseIntoDrawnScale(long j) {
        animate().cancel();
        setDrawnScale(getScaleX() * this.drawnScale);
        setScaleX(1.0f);
        setScaleY(1.0f);
        animateDrawnScale(1.0f, j, null);
    }

    public void takeDrawnScale() {
        ValueAnimator valueAnimator = this.drawnScaleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.drawnScale == 1.0f) {
            return;
        }
        setScaleX(getScaleX() * this.drawnScale);
        setScaleY(getScaleY() * this.drawnScale);
        setDrawnScale(1.0f);
    }

    private void animateDrawnScale(float f, long j, TimeInterpolator timeInterpolator) {
        ValueAnimator valueAnimator = this.drawnScaleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.drawnScale, f);
        this.drawnScaleAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletGiftCell$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateDrawnScale$0(valueAnimator2);
            }
        });
        if (timeInterpolator != null) {
            this.drawnScaleAnimator.setInterpolator(timeInterpolator);
        }
        this.drawnScaleAnimator.setDuration(j);
        this.drawnScaleAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateDrawnScale$0(ValueAnimator valueAnimator) {
        setDrawnScale(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setDrawnScale(float f) {
        this.drawnScale = f;
        invalidate();
        if (getParent() instanceof View) {
            ((View) getParent()).invalidate();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.drawnScale == 1.0f) {
            super.draw(canvas);
            return;
        }
        canvas.save();
        float f = this.drawnScale;
        canvas.scale(f, f, getWidth() / 2.0f, getHeight() / 2.0f);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // org.telegram.ui.Gifts.GiftSheet.GiftCell
    public void customDraw(View view, Canvas canvas, float f, float f2, float f3) {
        if (this.drawnScale == 1.0f) {
            super.customDraw(view, canvas, f, f2, f3);
            return;
        }
        canvas.save();
        float f4 = this.drawnScale;
        canvas.scale(f4, f4, f / 2.0f, f2 / 2.0f);
        super.customDraw(view, canvas, f, f2, f3);
        canvas.restore();
    }

    public void setHintDemo(boolean z) {
        float f = z ? 0.0f : 1.0f;
        if (this.imageView.getAlpha() != f) {
            this.imageView.setAlpha(f);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        WalletGiftStickers walletGiftStickers;
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (view == this.card && (walletGiftStickers = this.board) != null) {
            walletGiftStickers.drawHintDemo(canvas, this);
        }
        return zDrawChild;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WalletGiftStickers walletGiftStickers = this.board;
        if (walletGiftStickers != null) {
            walletGiftStickers.bind(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        WalletGiftStickers walletGiftStickers = this.board;
        if (walletGiftStickers != null) {
            walletGiftStickers.unbind(this);
        }
        super.onDetachedFromWindow();
    }

    public static class Factory extends UItem.UItemFactory<WalletGiftCell> {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return true;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public WalletGiftCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new WalletGiftCell(context, i, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            WalletGiftCell walletGiftCell = (WalletGiftCell) view;
            WalletGiftStickers walletGiftStickers = walletGiftCell.board;
            if (walletGiftStickers != null) {
                walletGiftStickers.unbind(walletGiftCell);
            }
            if (walletGiftCell.drawnScaleAnimator != null) {
                walletGiftCell.drawnScaleAnimator.cancel();
            }
            walletGiftCell.drawnScale = 1.0f;
            walletGiftCell.imageView.setAlpha(1.0f);
            walletGiftCell.nft = (TL_wallet.nftItem) uItem.object;
            walletGiftCell.board = (WalletGiftStickers) uItem.object2;
            TL_stars.SavedStarGift savedStarGift = new TL_stars.SavedStarGift();
            savedStarGift.gift = walletGiftCell.nft.gift;
            walletGiftCell.setWalletStickerState(0.0f, false);
            walletGiftCell.setStarsGift(savedStarGift, true, false);
            WalletGiftStickers walletGiftStickers2 = walletGiftCell.board;
            if (walletGiftStickers2 != null) {
                walletGiftStickers2.bind(walletGiftCell);
            }
        }

        public static UItem of(TL_wallet.nftItem nftitem, WalletGiftStickers walletGiftStickers) {
            UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
            spanCount.object = nftitem;
            spanCount.object2 = walletGiftStickers;
            return spanCount;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            return TextUtils.equals(((TL_wallet.nftItem) uItem.object).address, ((TL_wallet.nftItem) uItem2.object).address);
        }
    }
}
