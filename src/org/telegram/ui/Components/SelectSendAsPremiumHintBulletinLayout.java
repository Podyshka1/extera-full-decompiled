package org.telegram.ui.Components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import androidx.core.content.ContextCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.Bulletin;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class SelectSendAsPremiumHintBulletinLayout extends Bulletin.MultiLineLayout {
    public SelectSendAsPremiumHintBulletinLayout(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, Runnable runnable) {
        super(context, resourcesProvider);
        this.imageView.setImageDrawable(ContextCompat.getDrawable(context, C2665R.drawable.msg_premium_prolfilestar));
        this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_undo_infoColor), PorterDuff.Mode.SRC_IN));
        this.textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.SelectSendAsPeerPremiumHint)));
        Bulletin.UndoButton undoButton = new Bulletin.UndoButton(context, true, resourcesProvider);
        undoButton.setText(LocaleController.getString(C2665R.string.SelectSendAsPeerPremiumOpen));
        undoButton.setUndoAction(runnable);
        setButton(undoButton);
    }
}
