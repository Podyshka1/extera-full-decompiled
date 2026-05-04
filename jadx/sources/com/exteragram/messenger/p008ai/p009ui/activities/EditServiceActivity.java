package com.exteragram.messenger.p008ai.p009ui.activities;

import android.R;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.p008ai.AiConfig;
import com.exteragram.messenger.p008ai.AiController;
import com.exteragram.messenger.p008ai.data.Service;
import com.exteragram.messenger.p008ai.data.Suggestions;
import com.exteragram.messenger.p008ai.network.Client;
import com.exteragram.messenger.p008ai.network.GenerationCallback;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.DialogCell;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.OutlineTextContainerView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;

/* JADX INFO: loaded from: classes4.dex */
public class EditServiceActivity extends BaseFragment {
    private static Service currentService;
    private LinearLayout buttons;
    private ClipboardManager clipboardManager;
    private TextView deleteView;
    private View doneButton;
    private String initialKey;
    private String initialModel;
    private String initialUrl;
    private EditTextBoldCursor keyField;
    private OutlineTextContainerView keyFieldContainer;
    private EditTextBoldCursor modelField;
    private OutlineTextContainerView modelFieldContainer;
    private String pasteString;
    private TextView pasteView;
    private View separator;
    private EditTextBoldCursor urlField;
    private OutlineTextContainerView urlFieldContainer;
    private final ClipboardManager.OnPrimaryClipChangedListener clipChangedListener = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda6
        @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
        public final void onPrimaryClipChanged() {
            this.f$0.updateButtons();
        }
    };
    private boolean hasChanges = false;

    public EditServiceActivity() {
    }

    public EditServiceActivity(Service service) {
        currentService = service;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(currentService != null ? C2888R.string.EditService : C2888R.string.NewService));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    EditServiceActivity.this.finishFragment();
                } else if (i == 1) {
                    EditServiceActivity.this.saveConfig();
                }
            }
        });
        this.clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth = this.actionBar.createMenu().addItemWithWidth(1, C2888R.drawable.ic_ab_done, AndroidUtilities.m1124dp(56.0f));
        this.doneButton = actionBarMenuItemAddItemWithWidth;
        actionBarMenuItemAddItemWithWidth.setContentDescription(LocaleController.getString(C2888R.string.Done));
        LinearLayout linearLayout = new LinearLayout(context);
        this.fragmentView = linearLayout;
        linearLayout.setOrientation(1);
        this.fragmentView.setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return EditServiceActivity.$r8$lambda$SKvhWVW9nlaz4lmaKZuVmrVH41U(view, motionEvent);
            }
        });
        Pair pairCreateField = createField(context, LocaleController.getString(C2888R.string.ServiceURL), new InputFilter[]{new InputFilter.LengthFilter(128)});
        EditTextBoldCursor editTextBoldCursor = (EditTextBoldCursor) pairCreateField.first;
        this.urlField = editTextBoldCursor;
        editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EditServiceActivity.this.hasChanges = !TextUtils.equals(charSequence, r2.initialUrl);
                EditServiceActivity.this.updateDoneButton();
            }
        });
        this.urlField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$1(textView, i, keyEvent);
            }
        });
        OutlineTextContainerView outlineTextContainerView = (OutlineTextContainerView) pairCreateField.second;
        this.urlFieldContainer = outlineTextContainerView;
        linearLayout.addView(outlineTextContainerView, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        Pair pairCreateField2 = createField(context, LocaleController.getString(C2888R.string.ServiceModel), new InputFilter[]{new InputFilter.LengthFilter(64)});
        EditTextBoldCursor editTextBoldCursor2 = (EditTextBoldCursor) pairCreateField2.first;
        this.modelField = editTextBoldCursor2;
        editTextBoldCursor2.addTextChangedListener(new TextWatcher() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EditServiceActivity.this.hasChanges = !TextUtils.equals(charSequence, r2.initialModel);
                EditServiceActivity.this.updateDoneButton();
            }
        });
        this.modelField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView, i, keyEvent);
            }
        });
        OutlineTextContainerView outlineTextContainerView2 = (OutlineTextContainerView) pairCreateField2.second;
        this.modelFieldContainer = outlineTextContainerView2;
        linearLayout.addView(outlineTextContainerView2, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        Pair pairCreateField3 = createField(context, LocaleController.getString(C2888R.string.ServiceKey), new InputFilter[]{new InputFilter.LengthFilter(256)});
        EditTextBoldCursor editTextBoldCursor3 = (EditTextBoldCursor) pairCreateField3.first;
        this.keyField = editTextBoldCursor3;
        editTextBoldCursor3.addTextChangedListener(new TextWatcher() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EditServiceActivity.this.hasChanges = !TextUtils.equals(charSequence, r2.initialKey);
                EditServiceActivity.this.updateDoneButton();
            }
        });
        this.keyField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$3(textView, i, keyEvent);
            }
        });
        OutlineTextContainerView outlineTextContainerView3 = (OutlineTextContainerView) pairCreateField3.second;
        this.keyFieldContainer = outlineTextContainerView3;
        linearLayout.addView(outlineTextContainerView3, LayoutHelper.createLinear(-1, -2, 1, 24, 24, 24, 0));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.buttons = linearLayout2;
        linearLayout2.setOrientation(0);
        TextView textView = new TextView(context);
        this.pasteView = textView;
        ScaleStateListAnimator.apply(textView, 0.02f, 1.5f);
        this.pasteView.setGravity(1);
        TextView textView2 = this.pasteView;
        int i = Theme.key_featuredStickers_buttonText;
        textView2.setTextColor(Theme.getColor(i));
        TextView textView3 = this.pasteView;
        int iM1124dp = AndroidUtilities.m1124dp(8.0f);
        int i2 = Theme.key_featuredStickers_addButton;
        int color = Theme.getColor(i2);
        int i3 = Theme.key_featuredStickers_addButtonPressed;
        textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iM1124dp, color, Theme.getColor(i3)));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "..").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C2888R.drawable.msg_copy_filled)), 0, 1, 0);
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(4.0f)), 1, 2, 0);
        spannableStringBuilder.append((CharSequence) LocaleController.getString(R.string.paste));
        spannableStringBuilder.append((CharSequence) ".").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(3.0f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        this.pasteView.setText(spannableStringBuilder);
        this.pasteView.setPadding(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f));
        this.pasteView.setTextSize(1, 14.0f);
        this.pasteView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.pasteView.setSingleLine(true);
        this.pasteView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$4(view);
            }
        });
        this.buttons.addView(this.pasteView, LayoutHelper.createLinear(0, -1, 1.0f));
        View view = new View(context);
        this.separator = view;
        this.buttons.addView(view, LayoutHelper.createLinear(0, -1, 0.06f));
        TextView textView4 = new TextView(context);
        this.deleteView = textView4;
        ScaleStateListAnimator.apply(textView4, 0.02f, 1.5f);
        this.deleteView.setGravity(1);
        this.deleteView.setTextColor(Theme.getColor(i));
        this.deleteView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(8.0f), Theme.getColor(i2), Theme.getColor(i3)));
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        spannableStringBuilder2.append((CharSequence) "..").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C2888R.drawable.msg_delete_filled)), 0, 1, 0);
        spannableStringBuilder2.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(4.0f)), 1, 2, 0);
        spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2888R.string.Delete));
        spannableStringBuilder2.append((CharSequence) ".").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(3.0f)), spannableStringBuilder2.length() - 1, spannableStringBuilder2.length(), 0);
        this.deleteView.setText(spannableStringBuilder2);
        this.deleteView.setPadding(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f));
        this.deleteView.setTextSize(1, 14.0f);
        this.deleteView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.deleteView.setSingleLine(true);
        this.deleteView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$5(view2);
            }
        });
        this.buttons.addView(this.deleteView, LayoutHelper.createLinear(0, -1, 1.0f));
        linearLayout.addView(this.buttons, LayoutHelper.createLinear(-1, 48, 24.0f, 18.0f, 24.0f, 0.0f));
        Service service = currentService;
        if (service != null) {
            this.initialUrl = service.getUrl();
            this.initialModel = currentService.getModel();
            this.initialKey = currentService.getKey();
            updateDoneButton();
        } else {
            Service service2 = AiConfig.DEFAULT_SERVICE;
            this.initialUrl = service2.getUrl();
            this.initialModel = service2.getModel();
            this.initialKey = service2.getKey();
        }
        this.urlField.setText(this.initialUrl);
        this.modelField.setText(this.initialModel);
        this.keyField.setText(this.initialKey);
        EditTextBoldCursor editTextBoldCursor4 = this.keyField;
        editTextBoldCursor4.setSelection(editTextBoldCursor4.length());
        updateButtons();
        return this.fragmentView;
    }

    public static /* synthetic */ boolean $r8$lambda$SKvhWVW9nlaz4lmaKZuVmrVH41U(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$1(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 && i != 6) {
            return false;
        }
        this.modelField.requestFocus();
        AndroidUtilities.showKeyboard(this.keyField);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 && i != 6) {
            return false;
        }
        this.keyField.requestFocus();
        AndroidUtilities.showKeyboard(this.keyField);
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
    public /* synthetic */ void lambda$createView$4(View view) {
        if (TextUtils.isEmpty(this.pasteString)) {
            return;
        }
        this.keyField.setText(this.pasteString);
        this.keyField.setSelection(this.pasteString.length());
        this.hasChanges = true;
        updateDoneButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        if (currentService == null || !AiController.getInstance().removeService(currentService)) {
            return;
        }
        AiConfig.clearSelectedService();
        finishFragment();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        currentService = null;
        super.onFragmentDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDoneButton() {
        View view = this.doneButton;
        if (view != null) {
            view.setEnabled(this.hasChanges);
            this.doneButton.animate().alpha(this.hasChanges ? 1.0f : 0.5f).setDuration(150L).start();
        }
    }

    private Pair createField(Context context, String str, InputFilter[] inputFilterArr) {
        final OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        outlineTextContainerView.setText(str);
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        editTextBoldCursor.setTextSize(1, 16.0f);
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setMaxLines(1);
        editTextBoldCursor.setLines(1);
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setInputType(1);
        editTextBoldCursor.setImeOptions(268435456);
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated));
        editTextBoldCursor.setCursorWidth(1.5f);
        editTextBoldCursor.setGravity(LocaleController.isRTL ? 5 : 3);
        editTextBoldCursor.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                outlineTextContainerView.animateSelection(z ? 1.0f : 0.0f);
            }
        });
        int iM1124dp = AndroidUtilities.m1124dp(16.0f);
        editTextBoldCursor.setPadding(0, iM1124dp, 0, iM1124dp);
        editTextBoldCursor.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        outlineTextContainerView.addView(editTextBoldCursor, LayoutHelper.createFrame(-1, -2.0f, 0, 16.0f, 0.0f, 16.0f, 0.0f));
        outlineTextContainerView.attachEditText(editTextBoldCursor);
        editTextBoldCursor.setFilters(inputFilterArr);
        editTextBoldCursor.setMinHeight(AndroidUtilities.m1124dp(36.0f));
        return new Pair(editTextBoldCursor, outlineTextContainerView);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        this.clipboardManager.removePrimaryClipChangedListener(this.clipChangedListener);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        if (!MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            this.keyField.requestFocus();
            AndroidUtilities.showKeyboard(this.keyField);
        }
        this.clipboardManager.addPrimaryClipChangedListener(this.clipChangedListener);
        updateButtons();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveConfig() {
        final Service service = new Service(this.urlField.getText().toString().trim(), this.modelField.getText().toString().trim(), this.keyField.getText().toString().trim());
        if (!AiController.getInstance().contains(service)) {
            final Client clientBuild = new Client.Builder().serviceOverride(service).roleOverride(Suggestions.ASSISTANT.getRole()).build();
            final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
            final String response = clientBuild.getResponse("Say 'hi'.", new GenerationCallback() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.5
                @Override // com.exteragram.messenger.p008ai.network.GenerationCallback
                public void onChunk(String str) {
                }

                @Override // com.exteragram.messenger.p008ai.network.GenerationCallback
                public void onResponse(String str) {
                    if (alertDialog.isShowing()) {
                        try {
                            alertDialog.dismiss();
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                    }
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    if (EditServiceActivity.currentService != null) {
                        AiController.getInstance().updateService(EditServiceActivity.currentService, service);
                    } else {
                        AiController.getInstance().addService(service);
                    }
                    AiConfig.setSelectedServices(service);
                    EditServiceActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.servicesUpdated, new Object[0]);
                    EditServiceActivity.this.finishFragment();
                }

                @Override // com.exteragram.messenger.p008ai.network.GenerationCallback
                public void onError(int i, String str) {
                    if (alertDialog.isShowing()) {
                        try {
                            alertDialog.dismiss();
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                    }
                    AiController.showErrorBulletin(EditServiceActivity.this, i);
                    EditServiceActivity.this.keyFieldContainer.performHapticFeedback(3, 2);
                    AndroidUtilities.shakeView(EditServiceActivity.this.urlFieldContainer);
                    AndroidUtilities.shakeView(EditServiceActivity.this.modelFieldContainer);
                    AndroidUtilities.shakeView(EditServiceActivity.this.keyFieldContainer);
                }
            });
            alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    clientBuild.stopRequest(response);
                }
            });
            alertDialog.show();
            return;
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtons() {
        ClipData primaryClip = this.clipboardManager.getPrimaryClip();
        String string = null;
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            try {
                string = primaryClip.getItemAt(0).coerceToText(this.fragmentView.getContext()).toString();
            } catch (Exception unused) {
            }
        }
        String strTrim = this.keyField.getText().toString().trim();
        if (currentService == null) {
            this.deleteView.setVisibility(8);
            this.separator.setVisibility(8);
        }
        if (!TextUtils.isEmpty(string) && !strTrim.equals(string)) {
            this.buttons.setVisibility(0);
            this.pasteView.setVisibility(0);
            if (this.deleteView.getVisibility() == 0) {
                this.separator.setVisibility(0);
            }
            this.pasteString = string;
            return;
        }
        this.pasteView.setVisibility(8);
        this.separator.setVisibility(8);
        if (this.deleteView.getVisibility() == 8) {
            this.buttons.setVisibility(8);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            this.keyField.requestFocus();
            AndroidUtilities.showKeyboard(this.keyField);
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
        EditTextBoldCursor editTextBoldCursor = this.urlField;
        int i = ThemeDescription.FLAG_TEXTCOLOR;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(editTextBoldCursor, i, null, null, null, null, i2));
        EditTextBoldCursor editTextBoldCursor2 = this.urlField;
        int i3 = ThemeDescription.FLAG_HINTTEXTCOLOR;
        int i4 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(editTextBoldCursor2, i3, null, null, null, null, i4));
        EditTextBoldCursor editTextBoldCursor3 = this.urlField;
        int i5 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i6 = Theme.key_windowBackgroundWhiteInputField;
        arrayList.add(new ThemeDescription(editTextBoldCursor3, i5, null, null, null, null, i6));
        EditTextBoldCursor editTextBoldCursor4 = this.urlField;
        int i7 = ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE;
        int i8 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        arrayList.add(new ThemeDescription(editTextBoldCursor4, i7, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.keyField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.keyField, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.keyField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.keyField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        return arrayList;
    }
}
