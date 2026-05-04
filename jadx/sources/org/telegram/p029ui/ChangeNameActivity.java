package org.telegram.p029ui;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.OutlineTextContainerView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class ChangeNameActivity extends BaseFragment {
    private View doneButton;
    private EditTextBoldCursor firstNameField;
    private OutlineTextContainerView firstNameFieldContainer;
    private EditTextBoldCursor lastNameField;
    private OutlineTextContainerView lastNameFieldContainer;
    private Theme.ResourcesProvider resourcesProvider;

    /* JADX INFO: renamed from: $r8$lambda$pS9F0lhhmHWlSakvmJ-EiwSRYtQ, reason: not valid java name */
    public static /* synthetic */ void m7053$r8$lambda$pS9F0lhhmHWlSakvmJEiwSRYtQ(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public ChangeNameActivity(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_avatar_actionBarSelectorBlue, this.resourcesProvider), false);
        this.actionBar.setItemsColor(Theme.getColor(Theme.key_actionBarDefaultIcon, this.resourcesProvider), false);
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.EditName));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChangeNameActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ChangeNameActivity.this.finishFragment();
                } else {
                    if (i != 1 || ChangeNameActivity.this.firstNameField.getText().length() == 0) {
                        return;
                    }
                    ChangeNameActivity.this.saveName();
                    ChangeNameActivity.this.finishFragment();
                }
            }
        });
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, C2888R.drawable.ic_ab_done, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        if (user == null) {
            user = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        }
        LinearLayout linearLayout = new LinearLayout(context);
        this.fragmentView = linearLayout;
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ((LinearLayout) this.fragmentView).setOrientation(1);
        this.fragmentView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ChangeNameActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ChangeNameActivity.$r8$lambda$gcnxyxS84kCDz_EqMdnOhnbbsJo(view, motionEvent);
            }
        });
        OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        this.firstNameFieldContainer = outlineTextContainerView;
        outlineTextContainerView.setText(LocaleController.getString(C2888R.string.FirstName));
        linearLayout.addView(this.firstNameFieldContainer, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.ChangeNameActivity.2
            @Override // org.telegram.p029ui.Components.EditTextBoldCursor
            protected Theme.ResourcesProvider getResourcesProvider() {
                return ChangeNameActivity.this.resourcesProvider;
            }
        };
        this.firstNameField = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 18.0f);
        EditTextBoldCursor editTextBoldCursor2 = this.firstNameField;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor2.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.firstNameField.setBackground(null);
        this.firstNameField.setMaxLines(1);
        this.firstNameField.setLines(1);
        this.firstNameField.setSingleLine(true);
        this.firstNameField.setInputType(49152);
        this.firstNameField.setImeOptions(5);
        EditTextBoldCursor editTextBoldCursor3 = this.firstNameField;
        int i2 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        editTextBoldCursor3.setCursorColor(Theme.getColor(i2, this.resourcesProvider));
        this.firstNameField.setCursorWidth(1.5f);
        this.firstNameField.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        this.firstNameField.setGravity(LocaleController.isRTL ? 5 : 3);
        this.firstNameField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.ChangeNameActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.lambda$createView$1(view, z);
            }
        });
        int iM1124dp = AndroidUtilities.m1124dp(16.0f);
        this.firstNameField.setPadding(iM1124dp, iM1124dp, iM1124dp, iM1124dp);
        this.firstNameFieldContainer.addView(this.firstNameField, LayoutHelper.createFrame(-1, -2.0f));
        this.firstNameFieldContainer.attachEditText(this.firstNameField);
        this.firstNameField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ChangeNameActivity$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView, i3, keyEvent);
            }
        });
        OutlineTextContainerView outlineTextContainerView2 = new OutlineTextContainerView(context);
        this.lastNameFieldContainer = outlineTextContainerView2;
        outlineTextContainerView2.setText(LocaleController.getString(C2888R.string.LastName));
        linearLayout.addView(this.lastNameFieldContainer, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        EditTextBoldCursor editTextBoldCursor4 = new EditTextBoldCursor(context) { // from class: org.telegram.ui.ChangeNameActivity.3
            @Override // org.telegram.p029ui.Components.EditTextBoldCursor
            protected Theme.ResourcesProvider getResourcesProvider() {
                return ChangeNameActivity.this.resourcesProvider;
            }
        };
        this.lastNameField = editTextBoldCursor4;
        editTextBoldCursor4.setTextSize(1, 18.0f);
        this.lastNameField.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.lastNameField.setBackground(null);
        this.lastNameField.setMaxLines(1);
        this.lastNameField.setLines(1);
        this.lastNameField.setSingleLine(true);
        this.lastNameField.setInputType(49152);
        this.lastNameField.setImeOptions(5);
        this.lastNameField.setCursorColor(Theme.getColor(i2, this.resourcesProvider));
        this.lastNameField.setCursorWidth(1.5f);
        this.lastNameField.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        this.lastNameField.setGravity(LocaleController.isRTL ? 5 : 3);
        this.lastNameField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.ChangeNameActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.lambda$createView$3(view, z);
            }
        });
        this.lastNameField.setPadding(iM1124dp, iM1124dp, iM1124dp, iM1124dp);
        this.lastNameFieldContainer.addView(this.lastNameField, LayoutHelper.createFrame(-1, -2.0f));
        this.lastNameFieldContainer.attachEditText(this.lastNameField);
        this.lastNameField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ChangeNameActivity$$ExternalSyntheticLambda5
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$4(textView, i3, keyEvent);
            }
        });
        if (user != null) {
            this.firstNameField.setText(user.first_name);
            EditTextBoldCursor editTextBoldCursor5 = this.firstNameField;
            editTextBoldCursor5.setSelection(editTextBoldCursor5.length());
            this.lastNameField.setText(user.last_name);
        }
        return this.fragmentView;
    }

    public static /* synthetic */ boolean $r8$lambda$gcnxyxS84kCDz_EqMdnOhnbbsJo(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, boolean z) {
        this.firstNameFieldContainer.animateSelection(z ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 && i != 6) {
            return false;
        }
        this.doneButton.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view, boolean z) {
        this.lastNameFieldContainer.animateSelection(z ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$4(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        this.doneButton.performClick();
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        if (MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            return;
        }
        this.firstNameField.requestFocus();
        AndroidUtilities.showKeyboard(this.firstNameField);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveName() {
        String str;
        TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        if (currentUser == null || this.lastNameField.getText() == null || this.firstNameField.getText() == null) {
            return;
        }
        String string = this.firstNameField.getText().toString();
        String string2 = this.lastNameField.getText().toString();
        String str2 = currentUser.first_name;
        if (str2 == null || !str2.equals(string) || (str = currentUser.last_name) == null || !str.equals(string2)) {
            TL_account.updateProfile updateprofile = new TL_account.updateProfile();
            updateprofile.flags = 3;
            updateprofile.first_name = string;
            currentUser.first_name = string;
            updateprofile.last_name = string2;
            currentUser.last_name = string2;
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
            if (user != null) {
                user.first_name = updateprofile.first_name;
                user.last_name = updateprofile.last_name;
            }
            UserConfig.getInstance(this.currentAccount).saveConfig(true);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(updateprofile, new RequestDelegate() { // from class: org.telegram.ui.ChangeNameActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    ChangeNameActivity.m7053$r8$lambda$pS9F0lhhmHWlSakvmJEiwSRYtQ(tLObject, tL_error);
                }
            });
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChangeNameActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTransitionAnimationEnd$6();
                }
            }, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTransitionAnimationEnd$6() {
        EditTextBoldCursor editTextBoldCursor = this.firstNameField;
        if (editTextBoldCursor != null) {
            editTextBoldCursor.requestFocus();
            AndroidUtilities.showKeyboard(this.firstNameField);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        EditTextBoldCursor editTextBoldCursor = this.firstNameField;
        int i = ThemeDescription.FLAG_TEXTCOLOR;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(editTextBoldCursor, i, null, null, null, null, i2));
        EditTextBoldCursor editTextBoldCursor2 = this.firstNameField;
        int i3 = ThemeDescription.FLAG_HINTTEXTCOLOR;
        int i4 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(editTextBoldCursor2, i3, null, null, null, null, i4));
        EditTextBoldCursor editTextBoldCursor3 = this.firstNameField;
        int i5 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i6 = Theme.key_windowBackgroundWhiteInputField;
        arrayList.add(new ThemeDescription(editTextBoldCursor3, i5, null, null, null, null, i6));
        EditTextBoldCursor editTextBoldCursor4 = this.firstNameField;
        int i7 = ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE;
        int i8 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        arrayList.add(new ThemeDescription(editTextBoldCursor4, i7, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        return arrayList;
    }
}
