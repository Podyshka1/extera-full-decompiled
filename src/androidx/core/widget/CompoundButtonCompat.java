package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CompoundButtonCompat {
    public static void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
        compoundButton.setButtonTintList(colorStateList);
    }

    public static ColorStateList getButtonTintList(CompoundButton compoundButton) {
        return compoundButton.getButtonTintList();
    }

    public static void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode) {
        compoundButton.setButtonTintMode(mode);
    }

    public static PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
        return compoundButton.getButtonTintMode();
    }

    public static Drawable getButtonDrawable(CompoundButton compoundButton) {
        return compoundButton.getButtonDrawable();
    }
}
