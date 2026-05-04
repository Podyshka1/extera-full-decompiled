package com.exteragram.messenger.plugins.p015ui.components;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.EffectsTextView;
import org.telegram.p029ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes4.dex */
public class EmptyPluginsView extends FrameLayout {
    private final BackupImageView backupImageView;
    private final EffectsTextView textView;

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public EmptyPluginsView(Context context) {
        this(context, null);
    }

    public EmptyPluginsView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setPadding(AndroidUtilities.m1124dp(20.0f), 0, AndroidUtilities.m1124dp(20.0f), 0);
        linearLayout.setGravity(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setOrientation(1);
        BackupImageView backupImageView = new BackupImageView(context);
        this.backupImageView = backupImageView;
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(100, 100, 17, 0, 0, 0, 20));
        EffectsTextView effectsTextView = new EffectsTextView(context);
        this.textView = effectsTextView;
        effectsTextView.setTextSize(1, 14.0f);
        effectsTextView.setTextColor(Theme.getColor(Theme.key_emptyListPlaceholder, resourcesProvider));
        effectsTextView.setGravity(1);
        effectsTextView.setText(LocaleController.getString(C2888R.string.NoResult));
        effectsTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
        linearLayout.addView(effectsTextView, LayoutHelper.createLinear(-2, -2, 17));
        addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
        setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.plugins.ui.components.EmptyPluginsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return EmptyPluginsView.$r8$lambda$07L1gigTkav2UobgVQn1pnoQEts(view, motionEvent);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$07L1gigTkav2UobgVQn1pnoQEts(View view, MotionEvent motionEvent) {
        return true;
    }

    public void setText(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public BackupImageView getBackupImageView() {
        return this.backupImageView;
    }
}
