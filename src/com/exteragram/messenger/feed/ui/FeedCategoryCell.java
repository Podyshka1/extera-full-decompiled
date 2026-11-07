package com.exteragram.messenger.feed.ui;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.feed.FeedConfig;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class FeedCategoryCell extends TextCell {
    private int boundCategoryId;
    private final Drawable hiddenDrawable;
    private float hiddenProgress;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable iconDrawable;
    private final Drawable placeholderDrawable;
    private final Drawable reorderDrawable;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Drawable shownDrawable;
    private ValueAnimator visibilityAnimator;
    private final ImageView visibilityView;

    public FeedCategoryCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.resourcesProvider = resourcesProvider;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.imageView, AndroidUtilities.dp(24.0f));
        this.iconDrawable = swapAnimatedEmojiDrawable;
        swapAnimatedEmojiDrawable.setCurrentAccount(i);
        this.placeholderDrawable = tinted(context, C2807R.drawable.msg_folders);
        this.reorderDrawable = tinted(context, C2807R.drawable.list_reorder);
        Drawable drawableTinted = tinted(context, C2807R.drawable.msg_view_file);
        this.shownDrawable = drawableTinted;
        Drawable drawableTinted2 = tinted(context, C2807R.drawable.menu_hide_gift);
        this.hiddenDrawable = drawableTinted2;
        ImageView imageView = new ImageView(context);
        this.visibilityView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageDrawable(new LayerDrawable(new Drawable[]{drawableTinted, drawableTinted2}));
        setHiddenProgress(0.0f);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 1));
        addView(imageView);
    }

    private Drawable tinted(Context context, int i) {
        Drawable drawableMutate = ContextCompat.getDrawable(context, i).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
        return drawableMutate;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(FeedConfig.Category category, boolean z, View.OnClickListener onClickListener) {
        boolean z2 = this.boundCategoryId == category.getId();
        this.boundCategoryId = category.getId();
        long emojiId = category.getEmojiId();
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.iconDrawable;
        if (emojiId != 0) {
            swapAnimatedEmojiDrawable.set(category.getEmojiId(), 3, false);
            this.iconDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider)));
        } else {
            swapAnimatedEmojiDrawable.set(this.placeholderDrawable, false);
            this.iconDrawable.setColor(null);
        }
        setTextAndIconAndValueDrawable(category.getTitle(), this.iconDrawable, this.reorderDrawable, z);
        this.imageView.setPadding(0, AndroidUtilities.dp(7.0f), 0, 0);
        boolean isHidden = category.getIsHidden();
        float f = isHidden ? 1.0f : 0.0f;
        ValueAnimator valueAnimator = this.visibilityAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.visibilityAnimator = null;
        }
        if (z2) {
            float f2 = this.hiddenProgress;
            if (f2 != f) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
                this.visibilityAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryCell$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$set$0(valueAnimator2);
                    }
                });
                this.visibilityAnimator.setDuration(200L);
                this.visibilityAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.visibilityAnimator.start();
            } else {
                setHiddenProgress(f);
            }
        }
        this.visibilityView.setContentDescription(LocaleController.getString(isHidden ? C2807R.string.FeedCategoryShow : C2807R.string.FeedCategoryHide));
        this.visibilityView.setOnClickListener(onClickListener);
        float f3 = isHidden ? 0.5f : 1.0f;
        View[] viewArr = {this.textView, this.imageView, this.visibilityView};
        for (int i = 0; i < 3; i++) {
            View view = viewArr[i];
            view.animate().cancel();
            if (z2) {
                view.animate().alpha(f3).setDuration(200L).start();
            } else {
                view.setAlpha(f3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$0(ValueAnimator valueAnimator) {
        setHiddenProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setHiddenProgress(float f) {
        this.hiddenProgress = f;
        this.shownDrawable.setAlpha((int) ((1.0f - f) * 255.0f));
        this.hiddenDrawable.setAlpha((int) (f * 255.0f));
        this.visibilityView.invalidate();
    }

    @Override // org.telegram.ui.Cells.TextCell, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.visibilityView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(40.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(40.0f), TLObject.FLAG_30));
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (getMeasuredWidth() - AndroidUtilities.dp(this.offsetFromImage)) - AndroidUtilities.dp(this.valueImageRight + 80)), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(20.0f), TLObject.FLAG_30));
    }

    @Override // org.telegram.ui.Cells.TextCell, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int measuredWidth = this.visibilityView.getMeasuredWidth();
        int i6 = ((i4 - i2) - measuredWidth) / 2;
        int iDp = AndroidUtilities.dp(this.valueImageRight + 32);
        if (!LocaleController.isRTL) {
            iDp = (i5 - iDp) - measuredWidth;
        }
        this.visibilityView.layout(iDp, i6, iDp + measuredWidth, measuredWidth + i6);
    }

    @Override // org.telegram.ui.Cells.TextCell, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.iconDrawable.attach();
    }

    @Override // org.telegram.ui.Cells.TextCell, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.iconDrawable.detach();
    }

    public static class Factory extends UItem.UItemFactory<FeedCategoryCell> {
        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public FeedCategoryCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new FeedCategoryCell(context, i, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            if (view instanceof FeedCategoryCell) {
                FeedCategoryCell feedCategoryCell = (FeedCategoryCell) view;
                Object obj = uItem.object;
                if (obj instanceof FeedConfig.Category) {
                    feedCategoryCell.set((FeedConfig.Category) obj, z, uItem.clickCallback);
                }
            }
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            return uItem.id == uItem2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            return Objects.equals(uItem.object, uItem2.object);
        }

        public static UItem of(int i, FeedConfig.Category category, View.OnClickListener onClickListener) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.id = i;
            uItemOfFactory.object = category;
            uItemOfFactory.clickCallback = onClickListener;
            return uItemOfFactory;
        }
    }
}
