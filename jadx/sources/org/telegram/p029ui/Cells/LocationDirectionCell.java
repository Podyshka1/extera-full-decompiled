package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.BadWayToMakeButtonRound;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class LocationDirectionCell extends FrameLayout {
    private SimpleTextView buttonTextView;
    private FrameLayout frameLayout;
    private final Theme.ResourcesProvider resourcesProvider;

    public LocationDirectionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        frameLayout.setBackground(Theme.AdaptiveRipple.filledRect(getThemedColor(Theme.key_featuredStickers_addButton), 8.0f));
        addView(this.frameLayout, LayoutHelper.createFrame(-1, 48.0f, 51, 16.0f, 10.0f, 16.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.buttonTextView = simpleTextView;
        simpleTextView.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setDrawablePadding(AndroidUtilities.m1124dp(8.0f));
        this.buttonTextView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        this.buttonTextView.setTextSize(14);
        this.buttonTextView.setText(LocaleController.getString(C2888R.string.Directions));
        this.buttonTextView.setLeftDrawable(C2888R.drawable.filled_directions);
        if (Theme.isCurrentThemeMonet()) {
            this.buttonTextView.getLeftDrawable().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_actionIcon), PorterDuff.Mode.SRC_IN));
        }
        this.buttonTextView.setTypeface(AndroidUtilities.bold());
        this.frameLayout.addView(this.buttonTextView, LayoutHelper.createFrame(-1, -1.0f));
        BadWayToMakeButtonRound.round(this.frameLayout);
        ScaleStateListAnimator.apply(this.frameLayout, 0.02f, 1.2f);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(73.0f), TLObject.FLAG_30));
    }

    public void setOnButtonClick(View.OnClickListener onClickListener) {
        this.frameLayout.setOnClickListener(onClickListener);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
