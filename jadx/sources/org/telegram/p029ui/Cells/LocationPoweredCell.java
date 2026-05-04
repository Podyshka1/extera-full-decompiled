package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class LocationPoweredCell extends FrameLayout {
    private ImageView imageView;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private TextView textView2;

    public LocationPoweredCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        LinearLayout linearLayout = new LinearLayout(context);
        addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextSize(1, 16.0f);
        TextView textView2 = this.textView;
        int i = Theme.key_windowBackgroundWhiteGrayText3;
        textView2.setTextColor(getThemedColor(i));
        this.textView.setText("Powered by");
        linearLayout.addView(this.textView, LayoutHelper.createLinear(-2, -2));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setImageResource(C2888R.drawable.foursquare);
        this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
        this.imageView.setPadding(0, AndroidUtilities.m1124dp(2.0f), 0, 0);
        linearLayout.addView(this.imageView, LayoutHelper.createLinear(35, -2));
        TextView textView3 = new TextView(context);
        this.textView2 = textView3;
        textView3.setTextSize(1, 16.0f);
        this.textView2.setTextColor(getThemedColor(i));
        this.textView2.setText("Foursquare");
        linearLayout.addView(this.textView2, LayoutHelper.createLinear(-2, -2));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(56.0f), TLObject.FLAG_30));
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
