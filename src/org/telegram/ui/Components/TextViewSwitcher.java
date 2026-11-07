package org.telegram.ui.Components;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes7.dex */
public class TextViewSwitcher extends ViewSwitcher {
    public TextViewSwitcher(Context context) {
        super(context);
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence, true);
    }

    public void setText(CharSequence charSequence, boolean z) {
        setText(charSequence, z, false);
    }

    public boolean setText(CharSequence charSequence, boolean z, boolean z2) {
        if (!z2 && TextUtils.equals(charSequence, getCurrentView().getText())) {
            return false;
        }
        if (z) {
            getNextView().setText(charSequence);
            showNext();
            return true;
        }
        getCurrentView().setText(charSequence);
        return false;
    }

    @Override // android.widget.ViewSwitcher, android.widget.ViewAnimator, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof TextView)) {
            Segment$$ExternalSyntheticBUOutline0.m924m();
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    @Override // android.widget.ViewAnimator
    public TextView getCurrentView() {
        return (TextView) super.getCurrentView();
    }

    @Override // android.widget.ViewSwitcher
    public TextView getNextView() {
        return (TextView) super.getNextView();
    }

    public void invalidateViews() {
        getCurrentView().invalidate();
        getNextView().invalidate();
    }
}
