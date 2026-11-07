package org.telegram.ui.Cells;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.navigation.NavigationBarView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"ViewConstructor"})
public class CollapseTextCell extends FrameLayout {
    private View collapsedArrow;
    private Theme.ResourcesProvider resourcesProvider;
    public final AnimatedTextView textView;

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public CollapseTextCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        AnimatedTextView animatedTextView = new AnimatedTextView(context);
        this.textView = animatedTextView;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        animatedTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        animatedTextView.setTextSize(AndroidUtilities.dp(14.0f));
        animatedTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        animatedTextView.setImportantForAccessibility(2);
        animatedTextView.setOnWidthUpdatedListener(new Runnable() { // from class: org.telegram.ui.Cells.CollapseTextCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateCollapseArrowTranslation();
            }
        });
        addView(animatedTextView, LayoutHelper.createFrameRelatively(-2.0f, -2.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 21.0f, 0.0f, 38.0f, 3.0f));
        this.collapsedArrow = new View(context);
        Drawable drawableMutate = getContext().getResources().getDrawable(C2665R.drawable.arrow_more).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        this.collapsedArrow.setBackground(drawableMutate);
        addView(this.collapsedArrow, LayoutHelper.createFrameRelatively(14.0f, 14.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 21.0f, 1.0f, 0.0f, 3.0f));
    }

    public void set(CharSequence charSequence, boolean z) {
        this.textView.setText(charSequence);
        this.collapsedArrow.animate().cancel();
        this.collapsedArrow.animate().rotation(z ? 0.0f : 180.0f).setDuration(340L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
    }

    public void setColor(int i) {
        int color = Theme.getColor(i, this.resourcesProvider);
        this.textView.setTextColor(color);
        this.collapsedArrow.getBackground().setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(46.0f), TLObject.FLAG_30));
        updateCollapseArrowTranslation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCollapseArrowTranslation() {
        float currentWidth = this.textView.getDrawable().getCurrentWidth() + AndroidUtilities.dp(1.0f);
        boolean z = LocaleController.isRTL;
        View view = this.collapsedArrow;
        if (z) {
            view.setTranslationX(-currentWidth);
        } else {
            view.setTranslationX(currentWidth);
        }
    }
}
