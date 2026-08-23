package org.telegram.p029ui.Cells;

import android.content.Context;
import android.text.Layout;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class ChatUnreadCell extends FrameLayout {
    private final Theme.ResourcesProvider resourcesProvider;
    private final SimpleTextView textView;

    public ChatUnreadCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(50.0f), getColor(Theme.key_chat_unreadMessagesStartBackground)));
        if (LocaleController.isRTL) {
            simpleTextView.setAlignment(Layout.Alignment.ALIGN_OPPOSITE);
        }
        simpleTextView.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(6.0f));
        simpleTextView.setTextSize(14);
        simpleTextView.setGravity(17);
        simpleTextView.setTextColor(getColor(Theme.key_chat_unreadMessagesStartText));
        simpleTextView.setTypeface(AndroidUtilities.bold());
        addView(simpleTextView, LayoutHelper.createFrame(-2, -2.0f, 17, 32.0f, 0.0f, 32.0f, 0.0f));
    }

    public void setText(String str) {
        this.textView.setText(str);
    }

    public SimpleTextView getTextView() {
        return this.textView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(46.0f), TLObject.FLAG_30));
    }

    private int getColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer numValueOf = resourcesProvider != null ? Integer.valueOf(resourcesProvider.getColor(i)) : null;
        return numValueOf != null ? numValueOf.intValue() : Theme.getColor(i);
    }
}
