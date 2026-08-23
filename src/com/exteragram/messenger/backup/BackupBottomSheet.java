package com.exteragram.messenger.backup;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.StickerImageView;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class BackupBottomSheet extends BottomSheet {
    private final int difference;
    private final BaseFragment fragment;

    public BackupBottomSheet(final BaseFragment baseFragment, final MessageObject messageObject) {
        super(baseFragment.getParentActivity(), false, baseFragment.getResourceProvider());
        this.fragment = baseFragment;
        Activity parentActivity = baseFragment.getParentActivity();
        int diff = PreferencesUtils.getInstance().getDiff(messageObject);
        this.difference = diff;
        fixNavigationBar();
        FrameLayout frameLayout = new FrameLayout(parentActivity);
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout);
        StickerImageView stickerImageView = new StickerImageView(parentActivity, this.currentAccount);
        stickerImageView.setStickerPackName("exteraGramPlaceholders");
        stickerImageView.setStickerNum(6);
        stickerImageView.getImageReceiver().setAutoRepeat(1);
        stickerImageView.getImageReceiver().setAutoRepeatCount(1);
        linearLayout.addView(stickerImageView, LayoutHelper.createLinear(144, 144, 1, 0, 16, 0, 0));
        TextView textView = new TextView(parentActivity);
        textView.setGravity(1);
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getString(C2888R.string.ImportTitle));
        linearLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 0, 40.0f, 20.0f, 40.0f, 0.0f));
        TextView textView2 = new TextView(parentActivity);
        textView2.setGravity(1);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatPluralString("ImportChanges", diff, new Object[0])));
        linearLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 0, 21.0f, 15.0f, 21.0f, 8.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(parentActivity, true, this.resourcesProvider);
        buttonWithCounterView.setRound();
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.ImportConfirm), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.backup.BackupBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(messageObject, baseFragment, view);
            }
        });
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 0, 16.0f, 15.0f, 16.0f, 8.0f));
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(parentActivity, false, this.resourcesProvider);
        buttonWithCounterView2.setRound();
        buttonWithCounterView2.setNeutral();
        buttonWithCounterView2.setText(LocaleController.getString(C2888R.string.CancelConfirm), false);
        buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.backup.BackupBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        linearLayout.addView(buttonWithCounterView2, LayoutHelper.createFrame(-1, 48.0f, 0, 16.0f, 0.0f, 16.0f, 0.0f));
        ScrollView scrollView = new ScrollView(parentActivity);
        scrollView.addView(frameLayout);
        setCustomView(scrollView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(MessageObject messageObject, BaseFragment baseFragment, View view) {
        lambda$new$0();
        PreferencesUtils.getInstance().importSettings(messageObject, baseFragment.getParentActivity(), baseFragment.getParentLayout());
        BulletinFactory.m1246of(baseFragment).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.SettingsImported)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        lambda$new$0();
    }

    public void showIfPossible() {
        if (this.difference > 0) {
            show();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.backup.BackupBottomSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showIfPossible$2();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showIfPossible$2() {
        BulletinFactory.m1246of(this.fragment).createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.SameSettings)).show();
    }
}
