package com.exteragram.messenger.p008ai.p009ui.activities;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.p008ai.AiController;
import com.exteragram.messenger.p008ai.data.Role;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CodepointsLengthInputFilter;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.OutlineTextContainerView;

/* JADX INFO: loaded from: classes4.dex */
public class EditRoleActivity extends BaseFragment {
    private static Role currentRole;
    private View doneButton;
    private EditTextBoldCursor nameField;
    private OutlineTextContainerView nameFieldContainer;
    private EditTextBoldCursor promptField;
    private OutlineTextContainerView promptFieldContainer;

    public EditRoleActivity(Role role) {
        currentRole = role;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(currentRole != null ? C2888R.string.EditRole : C2888R.string.NewRole));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    EditRoleActivity.this.finishFragment();
                } else if (i == 1) {
                    EditRoleActivity.this.saveName();
                }
            }
        });
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth = this.actionBar.createMenu().addItemWithWidth(1, C2888R.drawable.ic_ab_done, AndroidUtilities.m1124dp(56.0f));
        this.doneButton = actionBarMenuItemAddItemWithWidth;
        actionBarMenuItemAddItemWithWidth.setContentDescription(LocaleController.getString(C2888R.string.Done));
        LinearLayout linearLayout = new LinearLayout(context);
        this.fragmentView = linearLayout;
        linearLayout.setOrientation(1);
        this.fragmentView.setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return EditRoleActivity.m2264$r8$lambda$RZDlYB1sSHOgTj7naL0qxxe3nw(view, motionEvent);
            }
        });
        OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        this.nameFieldContainer = outlineTextContainerView;
        linearLayout.addView(outlineTextContainerView, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.nameField = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 18.0f);
        EditTextBoldCursor editTextBoldCursor2 = this.nameField;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor2.setTextColor(Theme.getColor(i));
        this.nameField.setBackground(null);
        this.nameField.setSingleLine(true);
        this.nameField.setMaxLines(1);
        this.nameField.setInputType(147457);
        this.nameField.setImeOptions(268435456);
        this.nameField.setImeOptions(6);
        EditTextBoldCursor editTextBoldCursor3 = this.nameField;
        int i2 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        editTextBoldCursor3.setCursorColor(Theme.getColor(i2));
        this.nameField.setCursorWidth(1.5f);
        this.nameField.setGravity(LocaleController.isRTL ? 5 : 3);
        this.nameField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.lambda$createView$1(view, z);
            }
        });
        int iM1124dp = AndroidUtilities.m1124dp(16.0f);
        this.nameField.setPadding(0, iM1124dp, 0, iM1124dp);
        this.nameField.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        this.nameFieldContainer.addView(this.nameField, LayoutHelper.createFrame(-1, -2.0f, 0, 16.0f, 0.0f, 16.0f, 0.0f));
        this.nameFieldContainer.attachEditText(this.nameField);
        this.nameField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView, i3, keyEvent);
            }
        });
        this.nameField.setFilters(new InputFilter[]{new CodepointsLengthInputFilter(64) { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity.2
            @Override // org.telegram.p029ui.Components.CodepointsLengthInputFilter, android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i3, int i4, Spanned spanned, int i5, int i6) {
                CharSequence charSequenceFilter = super.filter(charSequence, i3, i4, spanned, i5, i6);
                if (charSequenceFilter != null && charSequence != null && charSequenceFilter.length() != charSequence.length()) {
                    EditRoleActivity.this.nameFieldContainer.performHapticFeedback(3, 2);
                    AndroidUtilities.shakeView(EditRoleActivity.this.nameFieldContainer);
                }
                return charSequenceFilter;
            }
        }});
        this.nameField.setMinHeight(AndroidUtilities.m1124dp(36.0f));
        this.nameField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$3(textView, i3, keyEvent);
            }
        });
        this.nameField.addTextChangedListener(new TextWatcher() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                EditRoleActivity.this.nameFieldContainer.setText(String.format("%s • %d", LocaleController.getString(C2888R.string.RoleName), Integer.valueOf(64 - Character.codePointCount(editable, 0, editable.length()))));
            }
        });
        this.nameFieldContainer.setText(String.format("%s • %d", LocaleController.getString(C2888R.string.RoleName), 64));
        OutlineTextContainerView outlineTextContainerView2 = new OutlineTextContainerView(context);
        this.promptFieldContainer = outlineTextContainerView2;
        linearLayout.addView(outlineTextContainerView2, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        EditTextBoldCursor editTextBoldCursor4 = new EditTextBoldCursor(context);
        this.promptField = editTextBoldCursor4;
        editTextBoldCursor4.setTextSize(1, 16.0f);
        this.promptField.setTextColor(Theme.getColor(i));
        this.promptField.setBackground(null);
        this.promptField.setInputType(147457);
        this.promptField.setImeOptions(268435456);
        this.promptField.setImeOptions(6);
        this.promptField.setCursorColor(Theme.getColor(i2));
        this.promptField.setCursorWidth(1.5f);
        this.promptField.setGravity(LocaleController.isRTL ? 5 : 3);
        this.promptField.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.lambda$createView$4(view, z);
            }
        });
        this.promptField.setPadding(0, iM1124dp, 0, iM1124dp);
        this.promptField.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        this.promptFieldContainer.addView(this.promptField, LayoutHelper.createFrame(-1, -2.0f, 0, 16.0f, 0.0f, 16.0f, 0.0f));
        this.promptFieldContainer.attachEditText(this.promptField);
        this.promptField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity$$ExternalSyntheticLambda5
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$5(textView, i3, keyEvent);
            }
        });
        this.promptField.setFilters(new InputFilter[]{new CodepointsLengthInputFilter(1024) { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity.4
            @Override // org.telegram.p029ui.Components.CodepointsLengthInputFilter, android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i3, int i4, Spanned spanned, int i5, int i6) {
                CharSequence charSequenceFilter = super.filter(charSequence, i3, i4, spanned, i5, i6);
                if (charSequenceFilter != null && charSequence != null && charSequenceFilter.length() != charSequence.length()) {
                    EditRoleActivity.this.promptFieldContainer.performHapticFeedback(3, 2);
                    AndroidUtilities.shakeView(EditRoleActivity.this.promptFieldContainer);
                }
                return charSequenceFilter;
            }
        }});
        this.promptField.setMinHeight(AndroidUtilities.m1124dp(36.0f));
        this.promptField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity$$ExternalSyntheticLambda6
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$6(textView, i3, keyEvent);
            }
        });
        this.promptField.addTextChangedListener(new TextWatcher() { // from class: com.exteragram.messenger.ai.ui.activities.EditRoleActivity.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                EditRoleActivity.this.promptFieldContainer.setText(String.format("%s • %d", LocaleController.getString(C2888R.string.RolePrompt), Integer.valueOf(1024 - Character.codePointCount(editable, 0, editable.length()))));
            }
        });
        this.promptFieldContainer.setText(String.format("%s • %d", LocaleController.getString(C2888R.string.RolePrompt), 1024));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        linksTextView.setFocusable(true);
        linksTextView.setTextSize(1, 15.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText8));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
        linksTextView.setHighlightColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkSelection));
        linksTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        linksTextView.setText(LocaleController.getString(C2888R.string.PromptInfo));
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 24, 12, 24, 0));
        Role role = currentRole;
        if (role != null) {
            this.nameField.setText(role.getName());
            this.nameField.setSelection(currentRole.getName().length());
            this.promptField.setText(currentRole.getPrompt());
        } else {
            this.nameField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.promptField.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        return this.fragmentView;
    }

    /* JADX INFO: renamed from: $r8$lambda$RZDlYB1-sSHOgTj7naL0qxxe3nw, reason: not valid java name */
    public static /* synthetic */ boolean m2264$r8$lambda$RZDlYB1sSHOgTj7naL0qxxe3nw(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, boolean z) {
        this.nameFieldContainer.animateSelection(z ? 1.0f : 0.0f);
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
    public /* synthetic */ boolean lambda$createView$3(TextView textView, int i, KeyEvent keyEvent) {
        View view;
        if (i != 6 || (view = this.doneButton) == null) {
            return false;
        }
        view.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view, boolean z) {
        this.promptFieldContainer.animateSelection(z ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$5(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 && i != 6) {
            return false;
        }
        this.doneButton.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$6(TextView textView, int i, KeyEvent keyEvent) {
        View view;
        if (i != 6 || (view = this.doneButton) == null) {
            return false;
        }
        view.performClick();
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        if (MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            return;
        }
        this.nameField.requestFocus();
        AndroidUtilities.showKeyboard(this.nameField);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        currentRole = null;
        super.onFragmentDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveName() {
        Role role = new Role(this.nameField.getText().toString(), this.promptField.getText().toString());
        boolean zIsEmpty = TextUtils.isEmpty(role.getName());
        boolean zIsEmpty2 = TextUtils.isEmpty(role.getPrompt());
        if (zIsEmpty || zIsEmpty2) {
            this.nameFieldContainer.performHapticFeedback(3, 2);
            if (zIsEmpty) {
                AndroidUtilities.shakeView(this.nameFieldContainer);
            }
            if (zIsEmpty2) {
                AndroidUtilities.shakeView(this.promptFieldContainer);
                return;
            }
            return;
        }
        if (currentRole != null ? AiController.getInstance().updateRole(currentRole, role) : AiController.getInstance().addRole(role)) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.rolesUpdated, new Object[0]);
            finishFragment();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            this.nameField.requestFocus();
            AndroidUtilities.showKeyboard(this.nameField);
        }
    }
}
