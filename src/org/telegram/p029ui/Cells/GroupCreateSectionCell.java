package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class GroupCreateSectionCell extends FrameLayout {
    private Drawable drawable;
    private TextView textView;

    public GroupCreateSectionCell(Context context) {
        super(context);
        setBackgroundColor(Theme.getColor(Theme.key_graySection));
        Drawable drawable = getResources().getDrawable(C2888R.drawable.shadowdown);
        this.drawable = drawable;
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_groupcreate_sectionShadow), PorterDuff.Mode.MULTIPLY));
        TextView textView = new TextView(getContext());
        this.textView = textView;
        textView.setTextSize(1, 14.0f);
        this.textView.setTypeface(AndroidUtilities.bold());
        this.textView.setTextColor(Theme.getColor(Theme.key_groupcreate_sectionText));
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        addView(this.textView, LayoutHelper.createFrame(-1, -1.0f, (LocaleController.isRTL ? 5 : 3) | 48, 16.0f, 0.0f, 16.0f, 0.0f));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(40.0f), TLObject.FLAG_30));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.drawable.setBounds(0, getMeasuredHeight() - AndroidUtilities.m1124dp(3.0f), getMeasuredWidth(), getMeasuredHeight());
        this.drawable.draw(canvas);
    }

    public void setText(String str) {
        this.textView.setText(str);
    }
}
