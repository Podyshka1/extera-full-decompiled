package org.telegram.p029ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class AddChannelCell extends FrameLayout {
    private final ImageView imageView;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SimpleTextView textView;

    public AddChannelCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextSize(16);
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        int i = Theme.key_windowBackgroundWhiteBlueHeader;
        simpleTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        simpleTextView.setTag(Integer.valueOf(i));
        addView(simpleTextView);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(imageView);
        simpleTextView.setText(LocaleController.getString(C2888R.string.BoostingAddChannelOrGroup));
        Drawable drawable = getResources().getDrawable(C2888R.drawable.poll_add_circle);
        Drawable drawable2 = getResources().getDrawable(C2888R.drawable.poll_add_plus);
        int color = Theme.getColor(Theme.key_switchTrackChecked, resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawable.setColorFilter(new PorterDuffColorFilter(color, mode));
        drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck, resourcesProvider), mode));
        imageView.setImageDrawable(new CombinedDrawable(drawable, drawable2));
        setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(94.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), TLObject.FLAG_30));
        this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(50.0f), TLObject.FLAG_30));
        setMeasuredDimension(size, AndroidUtilities.m1124dp(50.0f));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iM1124dp;
        int i5 = i3 - i;
        int textHeight = ((i4 - i2) - this.textView.getTextHeight()) / 2;
        if (LocaleController.isRTL) {
            iM1124dp = (getMeasuredWidth() - this.textView.getMeasuredWidth()) - AndroidUtilities.m1124dp(this.imageView.getVisibility() == 0 ? 68.0f : 23.0f);
        } else {
            iM1124dp = AndroidUtilities.m1124dp(this.imageView.getVisibility() == 0 ? 68.0f : 23.0f);
        }
        SimpleTextView simpleTextView = this.textView;
        simpleTextView.layout(iM1124dp, textHeight, simpleTextView.getMeasuredWidth() + iM1124dp, this.textView.getMeasuredHeight() + textHeight);
        int iM1124dp2 = !LocaleController.isRTL ? AndroidUtilities.m1124dp(24.0f) : (i5 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m1124dp(24.0f);
        ImageView imageView = this.imageView;
        imageView.layout(iM1124dp2, 0, imageView.getMeasuredWidth() + iM1124dp2, this.imageView.getMeasuredHeight());
    }
}
