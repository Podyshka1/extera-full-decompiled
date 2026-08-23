package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RadioButton;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class LanguageCell extends FrameLayout {
    private LocaleController.LocaleInfo currentLocale;
    private int marginEndDp;
    private int marginStartDp;
    private boolean needDivider;
    private RadioButton radioButton;
    private TextView textView;
    public TextView textView2;

    public LanguageCell(Context context) {
        super(context);
        this.marginStartDp = 62;
        this.marginEndDp = 23;
        if (Theme.dividerPaint == null) {
            Theme.createCommonResources(context);
        }
        setWillNotDraw(false);
        RadioButton radioButton = new RadioButton(context);
        this.radioButton = radioButton;
        radioButton.setSize(AndroidUtilities.m1124dp(20.0f));
        this.radioButton.setColor(Theme.getColor(Theme.key_dialogRadioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
        RadioButton radioButton2 = this.radioButton;
        boolean z = LocaleController.isRTL;
        addView(radioButton2, LayoutHelper.createFrame(22, 22.0f, (z ? 5 : 3) | 16, z ? 0 : 20, 0.0f, z ? 20 : 0, 0.0f));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.textView.setSingleLine(true);
        TextView textView2 = this.textView;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView2.setEllipsize(truncateAt);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        TextView textView3 = this.textView;
        boolean z2 = LocaleController.isRTL;
        addView(textView3, LayoutHelper.createFrame(-1, -1.0f, (z2 ? 5 : 3) | 48, z2 ? this.marginEndDp : this.marginStartDp, 0.0f, z2 ? this.marginStartDp : this.marginEndDp, 17.0f));
        TextView textView4 = new TextView(context);
        this.textView2 = textView4;
        textView4.setTextColor(Theme.getColor(Theme.key_dialogTextGray3));
        this.textView2.setTextSize(1, 13.0f);
        this.textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.textView2.setSingleLine(true);
        this.textView2.setEllipsize(truncateAt);
        this.textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        TextView textView5 = this.textView2;
        boolean z3 = LocaleController.isRTL;
        addView(textView5, LayoutHelper.createFrame(-1, -1.0f, (z3 ? 5 : 3) | 48, z3 ? this.marginEndDp : this.marginStartDp, 20.0f, z3 ? this.marginStartDp : this.marginEndDp, 0.0f));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(60.0f) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
    }

    public void setLanguage(LocaleController.LocaleInfo localeInfo, String str, boolean z) {
        TextView textView = this.textView;
        if (str == null) {
            str = localeInfo.name;
        }
        textView.setText(str);
        this.textView2.setText(localeInfo.nameEnglish);
        this.currentLocale = localeInfo;
        this.needDivider = z;
    }

    public void setValue(CharSequence charSequence, CharSequence charSequence2) {
        this.textView.setText(charSequence);
        this.textView2.setText(charSequence2);
        this.radioButton.setChecked(false, false);
        this.currentLocale = null;
        this.needDivider = false;
    }

    public LocaleController.LocaleInfo getCurrentLocale() {
        return this.currentLocale;
    }

    public void setLanguageSelected(boolean z, boolean z2) {
        this.radioButton.setChecked(z, z2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m1124dp(this.marginStartDp - 3), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m1124dp(this.marginStartDp - 3) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }
}
