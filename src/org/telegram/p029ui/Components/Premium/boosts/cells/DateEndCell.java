package org.telegram.p029ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class DateEndCell extends FrameLayout {
    private final Theme.ResourcesProvider resourcesProvider;
    private long selectedTime;
    private final SimpleTextView timeTextView;
    private final SimpleTextView titleTextView;

    public DateEndCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.titleTextView = simpleTextView;
        simpleTextView.setTextSize(16);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(simpleTextView);
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.timeTextView = simpleTextView2;
        simpleTextView2.setTextSize(16);
        simpleTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider));
        simpleTextView2.setGravity(LocaleController.isRTL ? 3 : 5);
        addView(simpleTextView2);
        simpleTextView.setText(LocaleController.formatString("BoostingDateAndTime", C2888R.string.BoostingDateAndTime, new Object[0]));
        boolean z = LocaleController.isRTL;
        simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2.0f, (z ? 5 : 3) | 16, z ? 0.0f : 21.0f, 0.0f, z ? 21.0f : 0.0f, 0.0f));
        boolean z2 = LocaleController.isRTL;
        simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2.0f, (z2 ? 3 : 5) | 16, z2 ? 21.0f : 0.0f, 0.0f, z2 ? 0.0f : 21.0f, 0.0f));
        setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
    }

    public void setDate(long j) {
        this.selectedTime = j;
        Date date = new Date(j);
        this.timeTextView.setText(LocaleController.formatString("formatDateAtTime", C2888R.string.formatDateAtTime, LocaleController.getInstance().getFormatterDayMonth().format(date), LocaleController.getInstance().getFormatterDay().format(date)));
    }

    public long getSelectedTime() {
        return this.selectedTime;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(50.0f), TLObject.FLAG_30));
    }
}
