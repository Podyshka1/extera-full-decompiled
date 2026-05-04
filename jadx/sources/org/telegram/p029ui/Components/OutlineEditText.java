package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class OutlineEditText extends OutlineTextContainerView {
    EditTextBoldCursor editText;

    public OutlineEditText(Context context) {
        super(context);
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Components.OutlineEditText.1
            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            protected void onFocusChanged(boolean z, int i, Rect rect) {
                super.onFocusChanged(z, i, rect);
                OutlineEditText.this.animateSelection((z || isFocused()) ? 1.0f : 0.0f);
            }
        };
        this.editText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 18.0f);
        this.editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.editText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        this.editText.setBackground(null);
        this.editText.setSingleLine(true);
        this.editText.setInputType(1);
        this.editText.setTypeface(Typeface.DEFAULT);
        this.editText.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated));
        this.editText.setCursorWidth(1.5f);
        this.editText.setPadding(AndroidUtilities.m1124dp(15.0f), 0, AndroidUtilities.m1124dp(15.0f), 0);
        attachEditText(this.editText);
        addView(this.editText, LayoutHelper.createFrame(-1, -2, 16));
    }

    public void setHint(String str) {
        setText(str);
    }

    public EditTextBoldCursor getEditText() {
        return this.editText;
    }
}
