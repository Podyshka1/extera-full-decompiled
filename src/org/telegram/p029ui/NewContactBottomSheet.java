package org.telegram.p029ui;

import android.app.Activity;
import android.content.ContentProviderOperation;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.exteragram.messenger.utils.system.VibratorUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.Function;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.CameraScanActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedPhoneNumberEditText;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CheckBox2;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.ContextProgressView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.OutlineEditText;
import org.telegram.p029ui.Components.OutlineTextContainerView;
import org.telegram.p029ui.Components.PermissionRequest;
import org.telegram.p029ui.Components.RadialProgressView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.CountrySelectActivity;
import org.telegram.p029ui.NewContactBottomSheet;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Comparator;
import p022j$.util.Objects;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes6.dex */
public class NewContactBottomSheet extends BottomSheet implements AdapterView.OnItemSelectedListener {
    private CheckBox2 checkBox;
    private LinearLayout checkLayout;
    private TextView checkTextView;
    int classGuid;
    private View codeDividerView;
    private AnimatedPhoneNumberEditText codeField;
    private HashMap codesMap;
    private LinearLayout contentLayout;
    private ArrayList countriesArray;
    private String countryCodeForHint;
    private TextView countryFlag;
    private TextView doneButton;
    private FrameLayout doneButtonContainer;
    private boolean donePressed;
    private ContextProgressView editDoneItemProgress;
    private OutlineEditText firstNameField;
    private boolean ignoreOnPhoneChange;
    private boolean ignoreOnTextChange;
    private boolean ignoreSelection;
    private String initialFirstName;
    private String initialLastName;
    private String initialPhoneNumber;
    private boolean initialPhoneNumberWithCountryCode;
    private OutlineEditText lastNameField;
    private String lastPhone;
    private OutlineEditText notesField;
    BaseFragment parentFragment;
    private AnimatedPhoneNumberEditText phoneField;
    private HashMap phoneFormatMap;
    private OutlineTextContainerView phoneOutlineView;
    private ImageView phoneStatusView;
    private TextView plusTextView;
    private RadialProgressView progressView;
    private ButtonWithCounterView qrButton;
    private FrameLayout qrButtonContainer;
    private View qrButtonSeparator;
    private int requestingPhoneId;
    private TextView underPhoneTextView;
    private int wasCountryHintIndex;

    public static class AccountInfo {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView adapterView) {
    }

    public NewContactBottomSheet(BaseFragment baseFragment, Context context) {
        super(context, true);
        this.countriesArray = new ArrayList();
        this.codesMap = new HashMap();
        this.phoneFormatMap = new HashMap();
        this.requestingPhoneId = -1;
        fixNavigationBar();
        this.waitingKeyboard = true;
        this.smoothKeyboardAnimationEnabled = true;
        this.classGuid = ConnectionsManager.generateClassGuid();
        this.parentFragment = baseFragment;
        setCustomView(createView(getContext()));
        setTitle(LocaleController.getString(C2888R.string.NewContactTitle), true);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x05b1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x060c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        String str;
        CountrySelectActivity.Country country;
        TelephonyManager telephonyManager;
        BufferedReader bufferedReader;
        ContextProgressView contextProgressView = new ContextProgressView(context, 1);
        this.editDoneItemProgress = contextProgressView;
        contextProgressView.setVisibility(4);
        ScrollView scrollView = new ScrollView(context);
        LinearLayout linearLayout = new LinearLayout(context);
        this.contentLayout = linearLayout;
        linearLayout.setPadding(AndroidUtilities.m1124dp(20.0f), 0, AndroidUtilities.m1124dp(20.0f), 0);
        this.contentLayout.setOrientation(1);
        scrollView.addView(this.contentLayout, LayoutHelper.createScroll(-1, -2, 51));
        this.contentLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return NewContactBottomSheet.$r8$lambda$5Cd9lGyGI5QTt7YvIi2qRk8Wpg4(view, motionEvent);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.contentLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
        OutlineEditText outlineEditText = new OutlineEditText(context);
        this.firstNameField = outlineEditText;
        outlineEditText.getEditText().setInputType(49152);
        this.firstNameField.getEditText().setImeOptions(5);
        this.firstNameField.setHint(LocaleController.getString(C2888R.string.FirstName));
        if (this.initialFirstName != null) {
            this.firstNameField.getEditText().setText(this.initialFirstName);
            this.initialFirstName = null;
        }
        frameLayout.addView(this.firstNameField, LayoutHelper.createFrame(-1, 58.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
        this.firstNameField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda4
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$1(textView, i, keyEvent);
            }
        });
        OutlineEditText outlineEditText2 = new OutlineEditText(context);
        this.lastNameField = outlineEditText2;
        outlineEditText2.setBackground(null);
        this.lastNameField.getEditText().setInputType(49152);
        this.lastNameField.getEditText().setImeOptions(5);
        this.lastNameField.setHint(LocaleController.getString(C2888R.string.LastName));
        if (this.initialLastName != null) {
            this.lastNameField.getEditText().setText(this.initialLastName);
            this.initialLastName = null;
        }
        frameLayout.addView(this.lastNameField, LayoutHelper.createFrame(-1, 58.0f, 51, 0.0f, 68.0f, 0.0f, 0.0f));
        this.lastNameField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda5
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$2(textView, i, keyEvent);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        this.phoneOutlineView = outlineTextContainerView;
        outlineTextContainerView.addView(linearLayout2, LayoutHelper.createFrame(-1, -2.0f, 16, 4.0f, 8.0f, 16.0f, 8.0f));
        this.phoneOutlineView.setText(LocaleController.getString(C2888R.string.PhoneNumber));
        this.contentLayout.addView(this.phoneOutlineView, LayoutHelper.createLinear(-1, 58, 0.0f, 12.0f, 0.0f, 6.0f));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.underPhoneTextView = linksTextView;
        linksTextView.setTextSize(1, 12.0f);
        this.underPhoneTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        this.underPhoneTextView.setLinkTextColor(getThemedColor(Theme.key_chat_messageLinkIn));
        this.contentLayout.addView(this.underPhoneTextView, LayoutHelper.createLinear(-1, -2, 12.0f, 0.0f, 12.0f, 0.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        C61361 c61361 = new C61361(context);
        this.countryFlag = c61361;
        c61361.setTextSize(1, 16.0f);
        this.countryFlag.setFocusable(false);
        this.countryFlag.setGravity(17);
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$3(view);
            }
        });
        int iM1124dp = AndroidUtilities.m1124dp(6.0f);
        int i = Theme.key_listSelector;
        frameLayout2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iM1124dp, 0, Theme.getColor(i)));
        frameLayout2.addView(this.countryFlag, LayoutHelper.createFrame(-1, -2, 16));
        linearLayout2.addView(frameLayout2, LayoutHelper.createLinear(42, -1));
        TextView textView = new TextView(context);
        this.plusTextView = textView;
        textView.setText("+");
        this.plusTextView.setTextSize(1, 16.0f);
        this.plusTextView.setFocusable(false);
        linearLayout2.addView(this.plusTextView, LayoutHelper.createLinear(-2, -2));
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText = new AnimatedPhoneNumberEditText(context) { // from class: org.telegram.ui.NewContactBottomSheet.3
            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            protected void onFocusChanged(boolean z, int i2, Rect rect) {
                super.onFocusChanged(z, i2, rect);
                NewContactBottomSheet.this.phoneOutlineView.animateSelection((z || NewContactBottomSheet.this.phoneField.isFocused()) ? 1.0f : 0.0f);
            }
        };
        this.codeField = animatedPhoneNumberEditText;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        animatedPhoneNumberEditText.setTextColor(Theme.getColor(i2));
        this.codeField.setInputType(3);
        this.codeField.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        this.codeField.setCursorWidth(1.5f);
        this.codeField.setPadding(AndroidUtilities.m1124dp(10.0f), 0, 0, 0);
        this.codeField.setTextSize(1, 16.0f);
        this.codeField.setMaxLines(1);
        this.codeField.setGravity(19);
        this.codeField.setImeOptions(268435461);
        this.codeField.setBackground(null);
        this.codeField.setContentDescription(LocaleController.getString(C2888R.string.LoginAccessibilityCountryCode));
        linearLayout2.addView(this.codeField, LayoutHelper.createLinear(55, 36, -9.0f, 0.0f, 0.0f, 0.0f));
        this.codeField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.NewContactBottomSheet.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                boolean z;
                String str2;
                CountrySelectActivity.Country country2;
                CountrySelectActivity.Country country3;
                if (NewContactBottomSheet.this.ignoreOnTextChange) {
                    return;
                }
                NewContactBottomSheet.this.ignoreOnTextChange = true;
                String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(NewContactBottomSheet.this.codeField.getText().toString());
                NewContactBottomSheet.this.codeField.setText(strStripExceptNumbers);
                if (strStripExceptNumbers.length() == 0) {
                    NewContactBottomSheet.this.setCountryButtonText(null);
                    NewContactBottomSheet.this.phoneField.setHintText((String) null);
                } else {
                    int i3 = 4;
                    if (strStripExceptNumbers.length() > 4) {
                        while (true) {
                            if (i3 < 1) {
                                z = false;
                                str2 = null;
                                break;
                            }
                            String strSubstring = strStripExceptNumbers.substring(0, i3);
                            List list = (List) NewContactBottomSheet.this.codesMap.get(strSubstring);
                            if (list == null) {
                                country3 = null;
                            } else if (list.size() > 1) {
                                String string = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_" + strSubstring, null);
                                country3 = (CountrySelectActivity.Country) list.get(list.size() - 1);
                                if (string != null) {
                                    ArrayList arrayList = NewContactBottomSheet.this.countriesArray;
                                    int size = arrayList.size();
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= size) {
                                            break;
                                        }
                                        Object obj = arrayList.get(i4);
                                        i4++;
                                        CountrySelectActivity.Country country4 = (CountrySelectActivity.Country) obj;
                                        if (Objects.equals(country4.shortname, string)) {
                                            country3 = country4;
                                            break;
                                        }
                                    }
                                }
                            } else {
                                country3 = (CountrySelectActivity.Country) list.get(0);
                            }
                            if (country3 != null) {
                                String str3 = strStripExceptNumbers.substring(i3) + NewContactBottomSheet.this.phoneField.getText().toString();
                                NewContactBottomSheet.this.codeField.setText(strSubstring);
                                str2 = str3;
                                strStripExceptNumbers = strSubstring;
                                z = true;
                                break;
                            }
                            i3--;
                        }
                        if (!z) {
                            str2 = strStripExceptNumbers.substring(1) + NewContactBottomSheet.this.phoneField.getText().toString();
                            AnimatedPhoneNumberEditText animatedPhoneNumberEditText2 = NewContactBottomSheet.this.codeField;
                            strStripExceptNumbers = strStripExceptNumbers.substring(0, 1);
                            animatedPhoneNumberEditText2.setText(strStripExceptNumbers);
                        }
                    } else {
                        z = false;
                        str2 = null;
                    }
                    ArrayList arrayList2 = NewContactBottomSheet.this.countriesArray;
                    int size2 = arrayList2.size();
                    int i5 = 0;
                    int i6 = 0;
                    CountrySelectActivity.Country country5 = null;
                    while (i6 < size2) {
                        Object obj2 = arrayList2.get(i6);
                        i6++;
                        CountrySelectActivity.Country country6 = (CountrySelectActivity.Country) obj2;
                        if (country6.code.startsWith(strStripExceptNumbers)) {
                            i5++;
                            if (country6.code.equals(strStripExceptNumbers)) {
                                country5 = country6;
                            }
                        }
                    }
                    if (i5 == 1 && country5 != null && str2 == null) {
                        str2 = strStripExceptNumbers.substring(country5.code.length()) + NewContactBottomSheet.this.phoneField.getText().toString();
                        AnimatedPhoneNumberEditText animatedPhoneNumberEditText3 = NewContactBottomSheet.this.codeField;
                        String str4 = country5.code;
                        animatedPhoneNumberEditText3.setText(str4);
                        strStripExceptNumbers = str4;
                    }
                    List list2 = (List) NewContactBottomSheet.this.codesMap.get(strStripExceptNumbers);
                    if (list2 == null) {
                        country2 = null;
                    } else if (list2.size() > 1) {
                        String string2 = MessagesController.getGlobalMainSettings().getString("phone_code_last_matched_" + strStripExceptNumbers, null);
                        country2 = (CountrySelectActivity.Country) list2.get(list2.size() - 1);
                        if (string2 != null) {
                            ArrayList arrayList3 = NewContactBottomSheet.this.countriesArray;
                            int size3 = arrayList3.size();
                            int i7 = 0;
                            while (true) {
                                if (i7 >= size3) {
                                    break;
                                }
                                Object obj3 = arrayList3.get(i7);
                                i7++;
                                CountrySelectActivity.Country country7 = (CountrySelectActivity.Country) obj3;
                                if (Objects.equals(country7.shortname, string2)) {
                                    country2 = country7;
                                    break;
                                }
                            }
                        }
                    } else {
                        country2 = (CountrySelectActivity.Country) list2.get(0);
                    }
                    if (country2 != null) {
                        NewContactBottomSheet.this.ignoreSelection = true;
                        NewContactBottomSheet.this.setCountryHint(strStripExceptNumbers, country2);
                    } else {
                        NewContactBottomSheet.this.setCountryButtonText(null);
                        NewContactBottomSheet.this.phoneField.setHintText((String) null);
                    }
                    if (!z) {
                        NewContactBottomSheet.this.codeField.setSelection(NewContactBottomSheet.this.codeField.getText().length());
                    }
                    if (str2 != null && str2.length() != 0) {
                        NewContactBottomSheet.this.phoneField.requestFocus();
                        NewContactBottomSheet.this.phoneField.setText(str2);
                        NewContactBottomSheet.this.phoneField.setSelection(NewContactBottomSheet.this.phoneField.length());
                    }
                }
                NewContactBottomSheet.this.ignoreOnTextChange = false;
                NewContactBottomSheet.this.updatedTextPhone();
            }
        });
        this.codeField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda7
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$4(textView2, i3, keyEvent);
            }
        });
        this.codeDividerView = new View(context);
        LinearLayout.LayoutParams layoutParamsCreateLinear = LayoutHelper.createLinear(0, -1, 4.0f, 8.0f, 12.0f, 8.0f);
        layoutParamsCreateLinear.width = Math.max(2, AndroidUtilities.m1124dp(0.5f));
        linearLayout2.addView(this.codeDividerView, layoutParamsCreateLinear);
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText2 = new AnimatedPhoneNumberEditText(context) { // from class: org.telegram.ui.NewContactBottomSheet.5
            @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
            public boolean onKeyDown(int i3, KeyEvent keyEvent) {
                if (i3 == 67 && NewContactBottomSheet.this.phoneField.length() == 0) {
                    NewContactBottomSheet.this.codeField.requestFocus();
                    NewContactBottomSheet.this.codeField.setSelection(NewContactBottomSheet.this.codeField.length());
                    NewContactBottomSheet.this.codeField.dispatchKeyEvent(keyEvent);
                }
                return super.onKeyDown(i3, keyEvent);
            }

            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            protected void onFocusChanged(boolean z, int i3, Rect rect) {
                super.onFocusChanged(z, i3, rect);
                NewContactBottomSheet.this.phoneOutlineView.animateSelection((z || NewContactBottomSheet.this.codeField.isFocused()) ? 1.0f : 0.0f);
            }
        };
        this.phoneField = animatedPhoneNumberEditText2;
        animatedPhoneNumberEditText2.setTextColor(Theme.getColor(i2));
        this.phoneField.setInputType(3);
        this.phoneField.setPadding(0, 0, 0, 0);
        this.phoneField.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        this.phoneField.setCursorWidth(1.5f);
        this.phoneField.setTextSize(1, 16.0f);
        this.phoneField.setMaxLines(1);
        this.phoneField.setGravity(19);
        this.phoneField.setImeOptions(268435461);
        this.phoneField.setBackground(null);
        this.phoneField.setContentDescription(LocaleController.getString(C2888R.string.PhoneNumber));
        linearLayout2.addView(this.phoneField, LayoutHelper.createLinear(-1, 36));
        this.phoneField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.NewContactBottomSheet.6
            private int actionPosition;
            private int characterAction = -1;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                if (i4 == 0 && i5 == 1) {
                    this.characterAction = 1;
                    return;
                }
                if (i4 == 1 && i5 == 0) {
                    if (charSequence.charAt(i3) == ' ' && i3 > 0) {
                        this.characterAction = 3;
                        this.actionPosition = i3 - 1;
                        return;
                    } else {
                        this.characterAction = 2;
                        return;
                    }
                }
                this.characterAction = -1;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int i3;
                int i4;
                if (NewContactBottomSheet.this.ignoreOnPhoneChange) {
                    return;
                }
                int selectionStart = NewContactBottomSheet.this.phoneField.getSelectionStart();
                String string = NewContactBottomSheet.this.phoneField.getText().toString();
                if (this.characterAction == 3) {
                    string = string.substring(0, this.actionPosition) + string.substring(this.actionPosition + 1);
                    selectionStart--;
                }
                StringBuilder sb = new StringBuilder(string.length());
                int i5 = 0;
                while (i5 < string.length()) {
                    int i6 = i5 + 1;
                    String strSubstring = string.substring(i5, i6);
                    if ("0123456789".contains(strSubstring)) {
                        sb.append(strSubstring);
                    }
                    i5 = i6;
                }
                NewContactBottomSheet.this.ignoreOnPhoneChange = true;
                String hintText = NewContactBottomSheet.this.phoneField.getHintText();
                if (hintText != null) {
                    int i7 = 0;
                    while (true) {
                        if (i7 >= sb.length()) {
                            break;
                        }
                        if (i7 < hintText.length()) {
                            if (hintText.charAt(i7) == ' ') {
                                sb.insert(i7, ' ');
                                i7++;
                                if (selectionStart == i7 && (i4 = this.characterAction) != 2 && i4 != 3) {
                                    selectionStart++;
                                }
                            }
                            i7++;
                        } else {
                            sb.insert(i7, ' ');
                            if (selectionStart == i7 + 1 && (i3 = this.characterAction) != 2 && i3 != 3) {
                                selectionStart++;
                            }
                        }
                    }
                }
                editable.replace(0, editable.length(), sb);
                if (selectionStart >= 0) {
                    NewContactBottomSheet.this.phoneField.setSelection(Math.min(selectionStart, NewContactBottomSheet.this.phoneField.length()));
                }
                NewContactBottomSheet.this.phoneField.onTextChange();
                NewContactBottomSheet.this.ignoreOnPhoneChange = false;
                NewContactBottomSheet.this.updatedTextPhone();
            }
        });
        this.phoneField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda8
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$5(textView2, i3, keyEvent);
            }
        });
        ImageView imageView = new ImageView(context);
        this.phoneStatusView = imageView;
        imageView.setScaleX(0.5f);
        this.phoneStatusView.setScaleY(0.5f);
        this.phoneStatusView.setAlpha(0.0f);
        this.phoneOutlineView.addView(this.phoneStatusView, LayoutHelper.createFrame(24, 24.0f, 21, 0.0f, 0.0f, 12.0f, 0.0f));
        CheckBox2 checkBox2 = new CheckBox2(context, 21, this.resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
        this.checkBox.setDrawUnchecked(true);
        this.checkBox.setChecked(false, false);
        this.checkBox.setDrawBackgroundAsArc(10);
        TextView textView2 = new TextView(context);
        this.checkTextView = textView2;
        textView2.setTextColor(Theme.getColor(i2, this.resourcesProvider));
        this.checkTextView.setTextSize(1, 14.0f);
        this.checkTextView.setText(LocaleController.getString(C2888R.string.AddContactSync));
        LinearLayout linearLayout3 = new LinearLayout(context);
        this.checkLayout = linearLayout3;
        linearLayout3.setOrientation(0);
        this.checkLayout.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(8.0f));
        this.checkLayout.addView(this.checkBox, LayoutHelper.createLinear(21, 21, 16, 0, 0, 9, 0));
        this.checkLayout.addView(this.checkTextView, LayoutHelper.createLinear(-2, -2, 16));
        this.checkLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$6(view);
            }
        });
        this.checkLayout.setTranslationY(AndroidUtilities.m1124dp(-21.33f));
        this.checkLayout.setPivotX(0.0f);
        ScaleStateListAnimator.apply(this.checkLayout, 0.0125f, 1.2f);
        this.checkLayout.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(i, this.resourcesProvider), 6, 6));
        this.contentLayout.addView(this.checkLayout, LayoutHelper.createLinear(-2, -2, 0.0f, 5.0f, 0.0f, 0.0f));
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.qrButtonContainer = frameLayout3;
        frameLayout3.setTranslationY(AndroidUtilities.m1124dp(-10.665f));
        this.contentLayout.addView(this.qrButtonContainer, LayoutHelper.createLinear(-1, -2, 0.0f, 6.0f, 0.0f, -6.0f));
        View view = new View(context);
        this.qrButtonSeparator = view;
        view.setBackgroundColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
        this.qrButtonContainer.addView(this.qrButtonSeparator, LayoutHelper.createFrame(-1, 1.0f / AndroidUtilities.density, 48, 0.0f, 6.0f, 0.0f, 0.0f));
        this.qrButton = new ButtonWithCounterView(context, false, this.resourcesProvider);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("QR");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2888R.drawable.header_qr_24), 0, spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) "  ");
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.AddContactQr));
        this.qrButton.setText(spannableStringBuilder, false);
        this.qrButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$7(view2);
            }
        });
        this.qrButtonContainer.addView(this.qrButton, LayoutHelper.createFrame(-1, 48.0f, 48, 0.0f, 12.0f, 0.0f, 0.0f));
        OutlineEditText outlineEditText3 = new OutlineEditText(context);
        this.notesField = outlineEditText3;
        outlineEditText3.setBackground(null);
        this.notesField.getEditText().setInputType(49152);
        this.notesField.getEditText().setImeOptions(5);
        this.notesField.setHint("Notes");
        this.qrButtonContainer.addView(this.notesField, LayoutHelper.createFrame(-1, 58.0f, 48, 0.0f, 0.0f, 0.0f, 0.0f));
        this.notesField.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda11
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView3, int i3, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$8(textView3, i3, keyEvent);
            }
        });
        updateQrButtonVisible(false);
        HashMap map = new HashMap();
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(ApplicationLoader.applicationContext.getResources().getAssets().open("countries.txt")));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            String[] strArrSplit = line.split(";");
            CountrySelectActivity.Country country2 = new CountrySelectActivity.Country();
            country2.name = strArrSplit[2];
            country2.code = strArrSplit[0];
            country2.shortname = strArrSplit[1];
            this.countriesArray.add(0, country2);
            List list = (List) this.codesMap.get(strArrSplit[0]);
            if (list == null) {
                HashMap map2 = this.codesMap;
                String str2 = strArrSplit[0];
                ArrayList arrayList = new ArrayList();
                map2.put(str2, arrayList);
                list = arrayList;
            }
            list.add(country2);
            if (strArrSplit.length > 3) {
                this.phoneFormatMap.put(strArrSplit[0], Collections.singletonList(strArrSplit[3]));
            }
            map.put(strArrSplit[1], strArrSplit[2]);
            Collections.sort(this.countriesArray, Comparator.CC.comparing(new Function() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda12
                public /* synthetic */ Function andThen(Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((CountrySelectActivity.Country) obj).name;
                }

                public /* synthetic */ Function compose(Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            }));
            if (TextUtils.isEmpty(this.initialPhoneNumber)) {
                TLRPC.User currentUser = this.parentFragment.getUserConfig().getCurrentUser();
                if (this.initialPhoneNumber.startsWith("+")) {
                    this.codeField.setText(this.initialPhoneNumber.substring(1));
                } else if (this.initialPhoneNumberWithCountryCode || currentUser == null || TextUtils.isEmpty(currentUser.phone)) {
                    this.codeField.setText(this.initialPhoneNumber);
                } else {
                    String str3 = currentUser.phone;
                    int i3 = 4;
                    while (true) {
                        if (i3 < 1) {
                            break;
                        }
                        String strSubstring = str3.substring(0, i3);
                        if (((List) this.codesMap.get(strSubstring)) != null) {
                            this.codeField.setText(strSubstring);
                            break;
                        }
                        i3--;
                    }
                    this.phoneField.setText(this.initialPhoneNumber);
                }
                this.initialPhoneNumber = null;
            } else {
                try {
                    telephonyManager = (TelephonyManager) ApplicationLoader.applicationContext.getSystemService("phone");
                } catch (Exception e2) {
                    FileLog.m1136e(e2);
                }
                String upperCase = telephonyManager != null ? telephonyManager.getSimCountryIso().toUpperCase() : null;
                if (upperCase != null && (str = (String) map.get(upperCase)) != null) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= this.countriesArray.size()) {
                            country = null;
                            break;
                        }
                        if (Objects.equals(((CountrySelectActivity.Country) this.countriesArray.get(i4)).name, str)) {
                            country = (CountrySelectActivity.Country) this.countriesArray.get(i4);
                            break;
                        }
                        i4++;
                    }
                    if (country != null) {
                        this.codeField.setText(country.code);
                    }
                }
                if (this.codeField.length() == 0) {
                    this.phoneField.setHintText((String) null);
                }
            }
            this.doneButtonContainer = new FrameLayout(getContext());
            TextView textView3 = new TextView(context);
            this.doneButton = textView3;
            textView3.setEllipsize(TextUtils.TruncateAt.END);
            this.doneButton.setGravity(17);
            this.doneButton.setLines(1);
            this.doneButton.setSingleLine(true);
            this.doneButton.setText(LocaleController.getString(C2888R.string.CreateContact));
            TextView textView4 = this.doneButton;
            BaseFragment baseFragment = this.parentFragment;
            int i5 = Theme.key_featuredStickers_buttonText;
            textView4.setTextColor(baseFragment.getThemedColor(i5));
            this.doneButton.setTextSize(1, 15.0f);
            this.doneButton.setTypeface(AndroidUtilities.bold());
            RadialProgressView radialProgressView = new RadialProgressView(context);
            this.progressView = radialProgressView;
            radialProgressView.setSize(AndroidUtilities.m1124dp(20.0f));
            this.progressView.setProgressColor(this.parentFragment.getThemedColor(i5));
            this.doneButtonContainer.addView(this.doneButton, LayoutHelper.createFrame(-1, -1.0f));
            this.doneButtonContainer.addView(this.progressView, LayoutHelper.createFrame(40, 40, 17));
            this.contentLayout.addView(this.doneButtonContainer, LayoutHelper.createLinear(-1, 48, 0, 0, 16, 0, 16));
            AndroidUtilities.updateViewVisibilityAnimated(this.doneButton, true, 1.0f, false);
            AndroidUtilities.updateViewVisibilityAnimated(this.progressView, false, 1.0f, false);
            this.doneButtonContainer.setBackground(Theme.AdaptiveRipple.filledRect(this.parentFragment.getThemedColor(Theme.key_featuredStickers_addButton), 6.0f));
            this.doneButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$10(view2);
                }
            });
            this.plusTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.codeDividerView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputField));
            return scrollView;
        }
        bufferedReader.close();
        Collections.sort(this.countriesArray, Comparator.CC.comparing(new Function() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda12
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((CountrySelectActivity.Country) obj).name;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }));
        if (TextUtils.isEmpty(this.initialPhoneNumber)) {
        }
        this.doneButtonContainer = new FrameLayout(getContext());
        TextView textView32 = new TextView(context);
        this.doneButton = textView32;
        textView32.setEllipsize(TextUtils.TruncateAt.END);
        this.doneButton.setGravity(17);
        this.doneButton.setLines(1);
        this.doneButton.setSingleLine(true);
        this.doneButton.setText(LocaleController.getString(C2888R.string.CreateContact));
        TextView textView42 = this.doneButton;
        BaseFragment baseFragment2 = this.parentFragment;
        int i52 = Theme.key_featuredStickers_buttonText;
        textView42.setTextColor(baseFragment2.getThemedColor(i52));
        this.doneButton.setTextSize(1, 15.0f);
        this.doneButton.setTypeface(AndroidUtilities.bold());
        RadialProgressView radialProgressView2 = new RadialProgressView(context);
        this.progressView = radialProgressView2;
        radialProgressView2.setSize(AndroidUtilities.m1124dp(20.0f));
        this.progressView.setProgressColor(this.parentFragment.getThemedColor(i52));
        this.doneButtonContainer.addView(this.doneButton, LayoutHelper.createFrame(-1, -1.0f));
        this.doneButtonContainer.addView(this.progressView, LayoutHelper.createFrame(40, 40, 17));
        this.contentLayout.addView(this.doneButtonContainer, LayoutHelper.createLinear(-1, 48, 0, 0, 16, 0, 16));
        AndroidUtilities.updateViewVisibilityAnimated(this.doneButton, true, 1.0f, false);
        AndroidUtilities.updateViewVisibilityAnimated(this.progressView, false, 1.0f, false);
        this.doneButtonContainer.setBackground(Theme.AdaptiveRipple.filledRect(this.parentFragment.getThemedColor(Theme.key_featuredStickers_addButton), 6.0f));
        this.doneButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$10(view2);
            }
        });
        this.plusTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.codeDividerView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhiteInputField));
        return scrollView;
    }

    public static /* synthetic */ boolean $r8$lambda$5Cd9lGyGI5QTt7YvIi2qRk8Wpg4(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$1(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.lastNameField.requestFocus();
        this.lastNameField.getEditText().setSelection(this.lastNameField.getEditText().length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.codeField.requestFocus();
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.codeField;
        animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.NewContactBottomSheet$1 */
    class C61361 extends TextView {
        final NotificationCenter.NotificationCenterDelegate delegate;

        C61361(Context context) {
            super(context);
            this.delegate = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.NewContactBottomSheet$1$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
                public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                    this.f$0.lambda$$0(i, i2, objArr);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$$0(int i, int i2, Object[] objArr) {
            invalidate();
        }

        @Override // android.widget.TextView, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getGlobalInstance().addObserver(this.delegate, NotificationCenter.emojiLoaded);
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getGlobalInstance().removeObserver(this.delegate, NotificationCenter.emojiLoaded);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.NewContactBottomSheet$2 */
    class C61372 implements CountrySelectActivity.CountrySelectActivityDelegate {
        C61372() {
        }

        @Override // org.telegram.ui.CountrySelectActivity.CountrySelectActivityDelegate
        public void didSelectCountry(CountrySelectActivity.Country country) {
            NewContactBottomSheet.this.selectCountry(country);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didSelectCountry$0();
                }
            }, 300L);
            NewContactBottomSheet.this.phoneField.requestFocus();
            NewContactBottomSheet.this.phoneField.setSelection(NewContactBottomSheet.this.phoneField.length());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didSelectCountry$0() {
            AndroidUtilities.showKeyboard(NewContactBottomSheet.this.phoneField);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        CountrySelectActivity countrySelectActivity = new CountrySelectActivity(true);
        countrySelectActivity.setCountrySelectActivityDelegate(new C61372());
        this.parentFragment.showAsSheet(countrySelectActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$4(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.phoneField.requestFocus();
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.phoneField;
        animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$5(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.doneButtonContainer.callOnClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        this.checkBox.setChecked(!r3.isChecked(), true);
        updateQrButtonVisible(true);
    }

    /* JADX INFO: renamed from: org.telegram.ui.NewContactBottomSheet$7 */
    class C61427 implements CameraScanActivity.CameraScanActivityDelegate {
        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
            CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public /* synthetic */ String getSubtitleText() {
            return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public /* synthetic */ void onDismiss() {
            CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public /* synthetic */ boolean processQr(String str, Runnable runnable) {
            return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
        }

        C61427() {
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public void didFindQr(String str) {
            String strExtractUsername = Browser.extractUsername(str);
            if (!TextUtils.isEmpty(strExtractUsername)) {
                MessagesController.getInstance(((BottomSheet) NewContactBottomSheet.this).currentAccount).getUserNameResolver().resolve(strExtractUsername, new Consumer() { // from class: org.telegram.ui.NewContactBottomSheet$7$$ExternalSyntheticLambda0
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        NewContactBottomSheet.C61427.$r8$lambda$4nrx_iyoUVtNgJufmkiURVgZ3Mk((Long) obj);
                    }
                });
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$7$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BulletinFactory.global().createSimpleBulletin(LocaleController.getString(C2888R.string.ScanQrCode), LocaleController.getString(C2888R.string.ErrorOccurred)).show();
                    }
                });
            }
        }

        public static /* synthetic */ void $r8$lambda$4nrx_iyoUVtNgJufmkiURVgZ3Mk(Long l) {
            if (l == null || l.longValue() == Long.MAX_VALUE) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$7$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        BulletinFactory.global().createSimpleBulletin(LocaleController.getString(C2888R.string.ScanQrCode), LocaleController.getString(C2888R.string.ErrorOccurred)).show();
                    }
                });
                return;
            }
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                safeLastFragment.presentFragment(ProfileActivity.m1294of(l.longValue()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        lambda$new$0();
        CameraScanActivity.showAsSheet((Activity) LaunchActivity.instance, false, 1, (CameraScanActivity.CameraScanActivityDelegate) new C61427());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$8(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        this.codeField.requestFocus();
        AnimatedPhoneNumberEditText animatedPhoneNumberEditText = this.codeField;
        animatedPhoneNumberEditText.setSelection(animatedPhoneNumberEditText.length());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(View view) {
        doOnDone();
    }

    private void updateBottomTranslation(boolean z) {
        ViewPropertyAnimator viewPropertyAnimatorTranslationY = this.checkLayout.animate().translationY(z ? -AndroidUtilities.m1124dp(21.33f) : 0.0f);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        viewPropertyAnimatorTranslationY.setInterpolator(cubicBezierInterpolator).setDuration(420L).start();
        this.qrButtonContainer.animate().translationY(z ? -AndroidUtilities.m1124dp(10.665f) : 0.0f).setInterpolator(cubicBezierInterpolator).setDuration(420L).start();
    }

    private void updateQrButtonVisible(boolean z) {
        boolean zIsChecked = this.checkBox.isChecked();
        final boolean z2 = !zIsChecked;
        if (z) {
            this.qrButton.setVisibility(0);
            ViewPropertyAnimator viewPropertyAnimatorAlpha = this.qrButton.animate().alpha(!zIsChecked ? 1.0f : 0.0f);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            viewPropertyAnimatorAlpha.setInterpolator(cubicBezierInterpolator).setDuration(420L).withEndAction(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateQrButtonVisible$11(z2);
                }
            }).start();
            this.qrButtonSeparator.setVisibility(0);
            this.qrButtonSeparator.animate().alpha(!zIsChecked ? 1.0f : 0.0f).setInterpolator(cubicBezierInterpolator).setDuration(420L).withEndAction(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateQrButtonVisible$12(z2);
                }
            }).start();
            this.notesField.setVisibility(0);
            this.notesField.animate().alpha(zIsChecked ? 1.0f : 0.0f).setInterpolator(cubicBezierInterpolator).setDuration(420L).withEndAction(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateQrButtonVisible$13(z2);
                }
            }).start();
            return;
        }
        this.qrButton.animate().cancel();
        this.qrButton.setVisibility(!zIsChecked ? 0 : 4);
        this.qrButton.setAlpha(!zIsChecked ? 1.0f : 0.0f);
        this.qrButtonSeparator.animate().cancel();
        this.qrButtonSeparator.setVisibility(!zIsChecked ? 0 : 8);
        this.qrButtonSeparator.setAlpha(!zIsChecked ? 1.0f : 0.0f);
        this.notesField.animate().cancel();
        this.notesField.setVisibility(zIsChecked ? 0 : 4);
        this.notesField.setAlpha(zIsChecked ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateQrButtonVisible$11(boolean z) {
        if (z) {
            return;
        }
        this.qrButton.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateQrButtonVisible$12(boolean z) {
        if (z) {
            return;
        }
        this.qrButtonSeparator.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateQrButtonVisible$13(boolean z) {
        if (z) {
            this.notesField.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatedTextPhone() {
        String strReplaceAll = (this.codeField.getText().toString() + this.phoneField.getText().toString()).replaceAll("[^\\d]+", _UrlKt.FRAGMENT_ENCODE_SET);
        boolean z = false;
        for (int iMin = Math.min(3, strReplaceAll.length()); iMin >= 0; iMin--) {
            String strSubstring = strReplaceAll.substring(0, iMin);
            List list = (List) this.codesMap.get(strSubstring);
            if (list != null && !list.isEmpty()) {
                List list2 = (List) this.phoneFormatMap.get(strSubstring);
                if (list2 != null && !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (strReplaceAll.length() - iMin >= ((String) it.next()).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET).length()) {
                            z = true;
                            break;
                        }
                    }
                }
            }
            if (z) {
                break;
            }
        }
        if (!z) {
            if (TextUtils.isEmpty(this.lastPhone)) {
                return;
            }
            this.lastPhone = null;
            updatedPhone(null);
            return;
        }
        if (TextUtils.equals(this.lastPhone, strReplaceAll)) {
            return;
        }
        this.lastPhone = strReplaceAll;
        updatedPhone(strReplaceAll);
    }

    private void updatedPhone(final String str) {
        if (this.requestingPhoneId >= 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.requestingPhoneId, true);
            this.requestingPhoneId = -1;
        }
        if (TextUtils.isEmpty(str)) {
            this.phoneStatusView.animate().scaleX(0.5f).scaleY(0.5f).alpha(0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(420L).start();
            this.underPhoneTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            updateBottomTranslation(true);
            return;
        }
        this.phoneStatusView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(420L).start();
        this.phoneStatusView.setImageDrawable(new CircularProgressDrawable(AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(3.0f), getThemedColor(Theme.key_dialogTextBlue)));
        this.underPhoneTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        updateBottomTranslation(true);
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$updatedPhone$16(str, (TLRPC.User) obj);
            }
        };
        final TLRPC.TL_contact tL_contact = ContactsController.getInstance(this.currentAccount).contactsByPhone.get(PhoneFormat.stripExceptNumbers(str));
        if (tL_contact != null) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_contact.user_id));
            if (user != null) {
                callback.run(user);
                return;
            } else {
                MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updatedPhone$18(tL_contact, callback);
                    }
                });
                return;
            }
        }
        TLRPC.TL_contacts_resolvePhone tL_contacts_resolvePhone = new TLRPC.TL_contacts_resolvePhone();
        tL_contacts_resolvePhone.phone = PhoneFormat.stripExceptNumbers(str);
        this.requestingPhoneId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_resolvePhone, new RequestDelegate() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda19
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$updatedPhone$20(callback, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatedPhone$16(final String str, final TLRPC.User user) {
        if (user == null) {
            this.phoneStatusView.setImageDrawable(null);
            this.underPhoneTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag("This phone number is not on Telegram. **Invite >**", new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updatedPhone$14(str);
                }
            }), true, AndroidUtilities.m1124dp(2.6666667f), AndroidUtilities.m1124dp(1.0f)));
        } else {
            Drawable drawableMutate = getContext().getResources().getDrawable(C2888R.drawable.msg_text_check).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon), PorterDuff.Mode.SRC_IN));
            this.phoneStatusView.setImageDrawable(drawableMutate);
            if (user.contact) {
                this.underPhoneTextView.setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag("This phone number is already in your contacts. **View >**", new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updatedPhone$15(user);
                    }
                }), true, AndroidUtilities.m1124dp(2.6666667f), AndroidUtilities.m1124dp(1.0f)));
            } else {
                this.underPhoneTextView.setText("This phone number is on Telegram.");
            }
        }
        updateBottomTranslation(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatedPhone$14(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:+" + str));
        intent.putExtra("sms_body", LocaleController.formatString(C2888R.string.InviteText2, "https://telegram.org/dl"));
        getContext().startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatedPhone$15(TLRPC.User user) {
        lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(ProfileActivity.m1294of(user.f1825id));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatedPhone$18(TLRPC.TL_contact tL_contact, final Utilities.Callback callback) {
        final TLRPC.User user = MessagesStorage.getInstance(this.currentAccount).getUser(tL_contact.user_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(user);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatedPhone$20(final Utilities.Callback callback, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updatedPhone$19(tLObject, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$updatedPhone$19(TLObject tLObject, Utilities.Callback callback) {
        TLRPC.User user;
        if (tLObject instanceof TLRPC.TL_contacts_resolvedPeer) {
            TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_resolvedPeer.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_contacts_resolvedPeer.chats, false);
            long peerDialogId = DialogObject.getPeerDialogId(tL_contacts_resolvedPeer.peer);
            user = peerDialogId >= 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId)) : null;
        }
        callback.run(user);
    }

    private void doOnDone() {
        BaseFragment baseFragment;
        if (this.donePressed || (baseFragment = this.parentFragment) == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (this.firstNameField.getEditText().length() == 0) {
            VibratorUtils.vibrate();
            AndroidUtilities.shakeView(this.firstNameField);
            return;
        }
        if (this.codeField.length() == 0) {
            VibratorUtils.vibrate();
            AndroidUtilities.shakeView(this.codeField);
        } else if (this.phoneField.length() == 0) {
            VibratorUtils.vibrate();
            AndroidUtilities.shakeView(this.phoneField);
        } else if (this.checkBox.isChecked()) {
            PermissionRequest.ensurePermission(C2888R.raw.permission_request_contacts, C2888R.string.PermissionNoContactsSaving, "android.permission.WRITE_CONTACTS", new Utilities.Callback() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda13
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$doOnDone$21((Boolean) obj);
                }
            });
        } else {
            done();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doOnDone$21(Boolean bool) {
        if (bool.booleanValue()) {
            done();
        }
    }

    private void done() {
        this.donePressed = true;
        showEditDoneProgress(true, true);
        String str = "+" + this.codeField.getText().toString() + this.phoneField.getText().toString();
        String string = this.firstNameField.getEditText().getText().toString();
        String string2 = this.lastNameField.getEditText().getText().toString();
        String string3 = this.notesField.getVisibility() == 0 ? this.notesField.getEditText().getText().toString() : _UrlKt.FRAGMENT_ENCODE_SET;
        final TLRPC.TL_contacts_importContacts tL_contacts_importContacts = new TLRPC.TL_contacts_importContacts();
        final TLRPC.TL_inputPhoneContact tL_inputPhoneContact = new TLRPC.TL_inputPhoneContact();
        tL_inputPhoneContact.first_name = string;
        tL_inputPhoneContact.last_name = string2;
        tL_inputPhoneContact.phone = str;
        if (!TextUtils.isEmpty(string3)) {
            tL_inputPhoneContact.flags = 1 | tL_inputPhoneContact.flags;
            TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
            tL_inputPhoneContact.note = tL_textWithEntities;
            tL_textWithEntities.text = string3;
        }
        tL_contacts_importContacts.contacts.add(tL_inputPhoneContact);
        ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_importContacts, new RequestDelegate() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda20
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$done$23(tL_inputPhoneContact, tL_contacts_importContacts, tLObject, tL_error);
            }
        }, 2), this.classGuid);
        if (this.checkBox.isChecked()) {
            saveContact(getContext(), str, string, string2, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$done$23(final TLRPC.TL_inputPhoneContact tL_inputPhoneContact, final TLRPC.TL_contacts_importContacts tL_contacts_importContacts, TLObject tLObject, final TLRPC.TL_error tL_error) {
        final TLRPC.TL_contacts_importedContacts tL_contacts_importedContacts = (TLRPC.TL_contacts_importedContacts) tLObject;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$done$22(tL_contacts_importedContacts, tL_inputPhoneContact, tL_error, tL_contacts_importContacts);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$done$22(TLRPC.TL_contacts_importedContacts tL_contacts_importedContacts, TLRPC.TL_inputPhoneContact tL_inputPhoneContact, TLRPC.TL_error tL_error, TLRPC.TL_contacts_importContacts tL_contacts_importContacts) {
        this.donePressed = false;
        if (tL_contacts_importedContacts != null) {
            if (!tL_contacts_importedContacts.users.isEmpty()) {
                MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_importedContacts.users, false);
                MessagesController.getInstance(this.currentAccount).openChatOrProfileWith((TLRPC.User) tL_contacts_importedContacts.users.get(0), null, this.parentFragment, 1, false);
                lambda$new$0();
                return;
            } else {
                if (this.parentFragment.getParentActivity() == null) {
                    return;
                }
                showEditDoneProgress(false, true);
                AlertsCreator.createContactInviteDialog(this.parentFragment, tL_inputPhoneContact.first_name, tL_inputPhoneContact.last_name, tL_inputPhoneContact.phone);
                return;
            }
        }
        showEditDoneProgress(false, true);
        AlertsCreator.processError(this.currentAccount, tL_error, this.parentFragment, tL_contacts_importContacts, new Object[0]);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        this.firstNameField.getEditText().requestFocus();
        this.firstNameField.getEditText().setSelection(this.firstNameField.getEditText().length());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$24();
            }
        }, 50L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$24() {
        AndroidUtilities.showKeyboard(this.firstNameField.getEditText());
    }

    private void showEditDoneProgress(boolean z, boolean z2) {
        AndroidUtilities.updateViewVisibilityAnimated(this.doneButton, !z, 0.5f, z2);
        AndroidUtilities.updateViewVisibilityAnimated(this.progressView, z, 0.5f, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getPhoneNumber(Context context, TLRPC.User user, String str, boolean z) {
        BufferedReader bufferedReader;
        HashMap map = new HashMap();
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().getAssets().open("countries.txt")));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            String[] strArrSplit = line.split(";");
            map.put(strArrSplit[0], strArrSplit[2]);
            if (!str.startsWith("+")) {
                if (z || user == null || TextUtils.isEmpty(user.phone)) {
                    return "+" + str;
                }
                String str2 = user.phone;
                for (int i = 4; i >= 1; i--) {
                    String strSubstring = str2.substring(0, i);
                    if (((String) map.get(strSubstring)) != null) {
                        return "+" + strSubstring + str;
                    }
                }
            }
            return str;
        }
        bufferedReader.close();
        if (!str.startsWith("+")) {
        }
        return str;
    }

    public NewContactBottomSheet setInitialPhoneNumber(String str, boolean z) {
        this.initialPhoneNumber = str;
        this.initialPhoneNumberWithCountryCode = z;
        if (!TextUtils.isEmpty(str)) {
            TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
            if (this.initialPhoneNumber.startsWith("+")) {
                this.codeField.setText(this.initialPhoneNumber.substring(1));
            } else if (this.initialPhoneNumberWithCountryCode || currentUser == null || TextUtils.isEmpty(currentUser.phone)) {
                this.codeField.setText(this.initialPhoneNumber);
            } else {
                String str2 = currentUser.phone;
                int i = 4;
                while (true) {
                    if (i >= 1) {
                        List list = (List) this.codesMap.get(str2.substring(0, i));
                        if (list == null || list.size() <= 0) {
                            i--;
                        } else {
                            String str3 = ((CountrySelectActivity.Country) list.get(0)).code;
                            this.codeField.setText(str3);
                            if (str3.endsWith(MVEL.VERSION_SUB) && this.initialPhoneNumber.startsWith(MVEL.VERSION_SUB)) {
                                this.initialPhoneNumber = this.initialPhoneNumber.substring(1);
                            }
                        }
                    } else {
                        Context context = ApplicationLoader.applicationContext;
                        String upperCase = context != null ? ((TelephonyManager) context.getSystemService(TelephonyManager.class)).getSimCountryIso().toUpperCase(Locale.US) : Locale.getDefault().getCountry();
                        this.codeField.setText(upperCase);
                        if (upperCase.endsWith(MVEL.VERSION_SUB) && this.initialPhoneNumber.startsWith(MVEL.VERSION_SUB)) {
                            this.initialPhoneNumber = this.initialPhoneNumber.substring(1);
                        }
                    }
                }
                this.phoneField.setText(this.initialPhoneNumber);
            }
            this.initialPhoneNumber = null;
        }
        return this;
    }

    public void setInitialName(String str, String str2) {
        OutlineEditText outlineEditText = this.firstNameField;
        if (outlineEditText != null) {
            outlineEditText.getEditText().setText(str);
        } else {
            this.initialFirstName = str;
        }
        OutlineEditText outlineEditText2 = this.lastNameField;
        if (outlineEditText2 != null) {
            outlineEditText2.getEditText().setText(str2);
        } else {
            this.initialLastName = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountryHint(String str, CountrySelectActivity.Country country) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String languageFlag = LocaleController.getLanguageFlag(country.shortname);
        if (languageFlag != null) {
            spannableStringBuilder.append((CharSequence) languageFlag);
        }
        setCountryButtonText(Emoji.replaceEmoji(spannableStringBuilder, this.countryFlag.getPaint().getFontMetricsInt(), false));
        this.countryCodeForHint = str;
        this.wasCountryHintIndex = -1;
        invalidateCountryHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountryButtonText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = this.countryFlag.animate();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            viewPropertyAnimatorAnimate.setInterpolator(cubicBezierInterpolator).translationY(AndroidUtilities.m1124dp(30.0f)).setDuration(150L);
            this.plusTextView.animate().setInterpolator(cubicBezierInterpolator).translationX(-AndroidUtilities.m1124dp(30.0f)).setDuration(150L);
            this.codeField.animate().setInterpolator(cubicBezierInterpolator).translationX(-AndroidUtilities.m1124dp(30.0f)).setDuration(150L);
            return;
        }
        this.countryFlag.animate().setInterpolator(AndroidUtilities.overshootInterpolator).translationY(0.0f).setDuration(350L).start();
        ViewPropertyAnimator viewPropertyAnimatorAnimate2 = this.plusTextView.animate();
        CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.DEFAULT;
        viewPropertyAnimatorAnimate2.setInterpolator(cubicBezierInterpolator2).translationX(0.0f).setDuration(150L);
        this.codeField.animate().setInterpolator(cubicBezierInterpolator2).translationX(0.0f).setDuration(150L);
        this.countryFlag.setText(charSequence);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0090 A[PHI: r7
  0x0090: PHI (r7v3 int) = (r7v2 int), (r7v4 int) binds: [B:20:0x006d, B:31:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void invalidateCountryHint() {
        int i;
        int i2;
        String str = this.countryCodeForHint;
        String strReplace = this.phoneField.getText() != null ? this.phoneField.getText().toString().replace(" ", _UrlKt.FRAGMENT_ENCODE_SET) : _UrlKt.FRAGMENT_ENCODE_SET;
        if (this.phoneFormatMap.get(str) != null && !((List) this.phoneFormatMap.get(str)).isEmpty()) {
            List list = (List) this.phoneFormatMap.get(str);
            if (strReplace.isEmpty()) {
                i = -1;
            } else {
                i = 0;
                while (i < list.size()) {
                    if (strReplace.startsWith(((String) list.get(i)).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET).replace("X", _UrlKt.FRAGMENT_ENCODE_SET).replace(MVEL.VERSION_SUB, _UrlKt.FRAGMENT_ENCODE_SET))) {
                        break;
                    } else {
                        i++;
                    }
                }
                i = -1;
            }
            if (i == -1) {
                for (int i3 = 0; i3 < list.size(); i3++) {
                    String str2 = (String) list.get(i3);
                    if (str2.startsWith("X") || str2.startsWith(MVEL.VERSION_SUB)) {
                        i = i3;
                        break;
                    }
                }
                i2 = i != -1 ? i : 0;
            }
            if (this.wasCountryHintIndex != i2) {
                String str3 = (String) ((List) this.phoneFormatMap.get(str)).get(i2);
                int selectionStart = this.phoneField.getSelectionStart();
                int selectionEnd = this.phoneField.getSelectionEnd();
                this.phoneField.setHintText(str3 != null ? str3.replace('X', '0') : null);
                this.phoneField.setSelection(selectionStart, selectionEnd);
                this.wasCountryHintIndex = i2;
                return;
            }
            return;
        }
        if (this.wasCountryHintIndex != -1) {
            int selectionStart2 = this.phoneField.getSelectionStart();
            int selectionEnd2 = this.phoneField.getSelectionEnd();
            this.phoneField.setHintText((String) null);
            this.phoneField.setSelection(selectionStart2, selectionEnd2);
            this.wasCountryHintIndex = -1;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (this.ignoreSelection) {
            this.ignoreSelection = false;
            return;
        }
        this.ignoreOnTextChange = true;
        this.codeField.setText(((CountrySelectActivity.Country) this.countriesArray.get(i)).code);
        this.ignoreOnTextChange = false;
    }

    public void selectCountry(CountrySelectActivity.Country country) {
        this.ignoreOnTextChange = true;
        String str = country.code;
        this.codeField.setText(str);
        setCountryHint(str, country);
        this.ignoreOnTextChange = false;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        OutlineEditText outlineEditText = this.firstNameField;
        int i = ThemeDescription.FLAG_TEXTCOLOR;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(outlineEditText, i, null, null, null, null, i2));
        OutlineEditText outlineEditText2 = this.firstNameField;
        int i3 = ThemeDescription.FLAG_HINTTEXTCOLOR;
        int i4 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(outlineEditText2, i3, null, null, null, null, i4));
        OutlineEditText outlineEditText3 = this.firstNameField;
        int i5 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i6 = Theme.key_windowBackgroundWhiteInputField;
        arrayList.add(new ThemeDescription(outlineEditText3, i5, null, null, null, null, i6));
        OutlineEditText outlineEditText4 = this.firstNameField;
        int i7 = ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE;
        int i8 = Theme.key_windowBackgroundWhiteInputFieldActivated;
        arrayList.add(new ThemeDescription(outlineEditText4, i7, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.lastNameField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.codeField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.codeField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.codeField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.phoneField, ThemeDescription.FLAG_DRAWABLESELECTEDSTATE | ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.editDoneItemProgress, 0, null, null, null, null, Theme.key_contextProgressInner2));
        arrayList.add(new ThemeDescription(this.editDoneItemProgress, 0, null, null, null, null, Theme.key_contextProgressOuter2));
        return arrayList;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$25();
            }
        }, 50L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$25() {
        AndroidUtilities.hideKeyboard(this.contentLayout);
    }

    public static boolean saveContact(Context context, String str, String str2, String str3, String str4, AccountInfo accountInfo) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        ContentProviderOperation.Builder builderNewInsert = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
        builderNewInsert.withValue("account_type", null);
        builderNewInsert.withValue("account_name", null);
        arrayList.add(builderNewInsert.build());
        Uri uri = ContactsContract.Data.CONTENT_URI;
        ContentProviderOperation.Builder builderWithValue = ContentProviderOperation.newInsert(uri).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name");
        if (!TextUtils.isEmpty(str2)) {
            builderWithValue = builderWithValue.withValue("data2", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            builderWithValue = builderWithValue.withValue("data2", str3);
        }
        arrayList.add(builderWithValue.build());
        if (str != null && !str.isEmpty()) {
            arrayList.add(ContentProviderOperation.newInsert(uri).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", str).withValue("data2", 2).build());
        }
        if (str4 != null && !str4.isEmpty()) {
            arrayList.add(ContentProviderOperation.newInsert(uri).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/note").withValue("data1", str4).build());
        }
        try {
            context.getContentResolver().applyBatch("com.android.contacts", arrayList);
            return true;
        } catch (OperationApplicationException | RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
