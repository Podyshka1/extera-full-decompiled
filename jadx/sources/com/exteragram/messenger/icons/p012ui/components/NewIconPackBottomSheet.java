package com.exteragram.messenger.icons.p012ui.components;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.InputFilter;
import android.text.Spanned;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.icons.p012ui.IconPacksEditorActivity;
import com.exteragram.messenger.icons.p012ui.picker.IconPickerController;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.util.HashMap;
import java.util.UUID;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.OutlineEditText;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class NewIconPackBottomSheet extends BottomSheet {
    private OutlineEditText authorField;
    private ButtonWithCounterView doneButton;
    private OutlineEditText nameField;
    private final IconPack packToEdit;
    private final BaseFragment parentFragment;
    private OutlineEditText versionField;

    public NewIconPackBottomSheet(BaseFragment baseFragment, Context context) {
        this(baseFragment, context, null);
    }

    public NewIconPackBottomSheet(BaseFragment baseFragment, Context context, IconPack iconPack) {
        super(context, true);
        this.packToEdit = iconPack;
        fixNavigationBar();
        this.waitingKeyboard = true;
        this.smoothKeyboardAnimationEnabled = true;
        this.parentFragment = baseFragment;
        setCustomView(createView(getContext()));
        setTitle(LocaleController.getString(iconPack == null ? C2888R.string.NewIconPack : C2888R.string.EditIconPackInfo), true);
    }

    public View createView(Context context) {
        ScrollView scrollView = new ScrollView(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setPadding(AndroidUtilities.m1124dp(20.0f), 0, AndroidUtilities.m1124dp(20.0f), 0);
        linearLayout.setOrientation(1);
        scrollView.addView(linearLayout, LayoutHelper.createScroll(-1, -2, 51));
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return NewIconPackBottomSheet.$r8$lambda$BYtrHHfOrmFfWMznjkqv5h6qepQ(view, motionEvent);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        OutlineEditText outlineEditText = new OutlineEditText(context);
        this.nameField = outlineEditText;
        outlineEditText.getEditText().setInputType(49152);
        this.nameField.getEditText().setFilters(new InputFilter[]{new InputFilter() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda1
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return this.f$0.lambda$createView$1(charSequence, i, i2, spanned, i3, i4);
            }
        }});
        this.nameField.getEditText().setImeOptions(5);
        this.nameField.setHint(LocaleController.getString(C2888R.string.PackName));
        if (this.packToEdit != null) {
            this.nameField.getEditText().setText(this.packToEdit.getName());
        }
        frameLayout.addView(this.nameField, LayoutHelper.createFrame(-1, 58.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        this.nameField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView, i, keyEvent);
            }
        });
        OutlineEditText outlineEditText2 = new OutlineEditText(context);
        this.authorField = outlineEditText2;
        outlineEditText2.setBackground(null);
        this.authorField.getEditText().setInputType(49152);
        this.authorField.getEditText().setImeOptions(5);
        this.authorField.setHint(LocaleController.getString(C2888R.string.AuthorNameOptional));
        if (this.packToEdit != null) {
            this.authorField.getEditText().setText(this.packToEdit.getAuthor());
        }
        frameLayout.addView(this.authorField, LayoutHelper.createFrame(-1, 58.0f, 51, 0.0f, 68.0f, 0.0f, 0.0f));
        this.authorField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$3(textView, i, keyEvent);
            }
        });
        OutlineEditText outlineEditText3 = new OutlineEditText(context);
        this.versionField = outlineEditText3;
        outlineEditText3.setBackground(null);
        this.versionField.getEditText().setInputType(49152);
        this.versionField.getEditText().setImeOptions(6);
        this.versionField.setHint(LocaleController.getString(C2888R.string.Version));
        if (this.packToEdit != null) {
            this.versionField.getEditText().setText(this.packToEdit.getVersion());
        } else {
            this.versionField.getEditText().setText("1.0");
        }
        frameLayout.addView(this.versionField, LayoutHelper.createFrame(-1, 58.0f, 51, 0.0f, 136.0f, 0.0f, 0.0f));
        this.versionField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda4
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$4(textView, i, keyEvent);
            }
        });
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourcesProvider);
        this.doneButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        this.doneButton.setText(LocaleController.getString(this.packToEdit == null ? C2888R.string.Create : C2888R.string.Save), false);
        this.doneButton.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.doneButton.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$5(view);
            }
        });
        linearLayout.addView(this.doneButton, LayoutHelper.createLinear(-1, 48, 0.0f, 16.0f, 0.0f, 16.0f));
        return scrollView;
    }

    public static /* synthetic */ boolean $r8$lambda$BYtrHHfOrmFfWMznjkqv5h6qepQ(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ CharSequence lambda$createView$1(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int length = 64 - (spanned.length() - (i4 - i3));
        int i5 = i2 - i;
        if (length < i5) {
            VibratorUtils.vibrate();
            AndroidUtilities.shakeView(this.nameField);
        }
        if (length <= 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (length >= i5) {
            return null;
        }
        int i6 = length + i;
        if (Character.isHighSurrogate(charSequence.charAt(i6 - 1)) && i6 - 1 == i) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return charSequence.subSequence(i, i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.authorField.requestFocus();
        this.authorField.getEditText().setSelection(this.authorField.getEditText().length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$3(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.versionField.requestFocus();
        this.versionField.getEditText().setSelection(this.versionField.getEditText().length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$4(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        this.doneButton.callOnClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        doOnDone();
    }

    private void doOnDone() {
        if (this.nameField.getEditText().length() == 0) {
            VibratorUtils.vibrate();
            AndroidUtilities.shakeView(this.nameField);
            return;
        }
        final String strTrim = this.nameField.getEditText().getText().toString().trim();
        final String strTrim2 = this.authorField.getEditText().getText().toString().trim();
        final String strTrim3 = this.versionField.getEditText().getText().toString().trim();
        if (strTrim3.isEmpty()) {
            strTrim3 = "1.0";
        }
        if (strTrim.isEmpty()) {
            BulletinFactory.m1245of(this.topBulletinContainer, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C2888R.string.NameCannotBeEmpty)).show();
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doOnDone$8(strTrim, strTrim2, strTrim3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doOnDone$8(String str, String str2, String str3) {
        if (this.packToEdit != null) {
            String id = this.packToEdit.getId();
            if (str2.isEmpty()) {
                str2 = LocaleController.getString(C2888R.string.PluginNoAuthor);
            }
            IconManager.INSTANCE.saveIconPackMetadata(new IconPack(id, str, str2, str3, this.packToEdit.getIcons(), this.packToEdit.getPreinstalledMap(), null));
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doOnDone$6();
                }
            });
            return;
        }
        final String str4 = "custom." + UUID.randomUUID().toString();
        if (str2.isEmpty()) {
            str2 = LocaleController.getString(C2888R.string.PluginNoAuthor);
        }
        final IconPack iconPack = new IconPack(str4, str, str2, str3, new HashMap(), null, null);
        IconManager.INSTANCE.saveIconPackMetadata(iconPack);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$doOnDone$7(str4, iconPack);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doOnDone$6() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doOnDone$7(String str, IconPack iconPack) {
        IconManager.INSTANCE.setActiveCustomPack(str);
        lambda$new$0();
        SharedPreferences.Editor editor = ExteraConfig.editor;
        String id = iconPack.getId();
        ExteraConfig.editingIconPackId = id;
        editor.putString("editingIconPackId", id).apply();
        this.parentFragment.presentFragment(new IconPacksEditorActivity(iconPack) { // from class: com.exteragram.messenger.icons.ui.components.NewIconPackBottomSheet.1
            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public void onBecomeFullyVisible() {
                LaunchActivity launchActivity = LaunchActivity.instance;
                if (launchActivity != null) {
                    IconPickerController.setActive(launchActivity, true);
                }
                super.onBecomeFullyVisible();
            }
        });
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        super.onOpenAnimationEnd();
        OutlineEditText outlineEditText = this.nameField;
        if (outlineEditText == null || outlineEditText.getEditText() == null) {
            return;
        }
        this.nameField.getEditText().requestFocus();
        this.nameField.getEditText().setSelection(this.nameField.getEditText().length());
        AndroidUtilities.showKeyboard(this.nameField.getEditText());
    }
}
