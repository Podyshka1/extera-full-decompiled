package org.telegram.ui;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.transition.ChangeBounds;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.proxy.ProxyController;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.RadioCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.OutlineTextContainerView;
import org.telegram.ui.Components.QRCodeBottomSheet;
import org.telegram.ui.Components.SectionsScrollView;
import org.telegram.utils.proxy.ProxySettings;
import org.telegram.utils.proxy.WebProxyTransport;

/* JADX INFO: loaded from: classes6.dex */
public class ProxySettingsActivity extends BaseFragment {
    private boolean addingNewProxy;
    private ClipboardManager.OnPrimaryClipChangedListener clipChangedListener;
    private ClipboardManager clipboardManager;
    private SharedConfig.ProxyInfo currentProxyInfo;
    private int currentType;
    private ActionBarMenuItem doneItem;
    private HeaderCell headerCell;
    private boolean ignoreOnTextChange;
    private OutlineTextContainerView[] inputFieldContainers;
    private EditTextBoldCursor[] inputFields;
    private LinearLayout inputFieldsContainer;
    private FrameLayout inputFieldsSection;
    private LinearLayout linearLayout2;
    private TextSettingsCell pasteCell;
    private String[] pasteFields;
    private String pasteString;
    private int pasteType;
    private ScrollView scrollView;
    private ShadowSectionCell[] sectionCell;
    private TextSettingsCell shareCell;
    private ValueAnimator shareDoneAnimator;
    private boolean shareDoneEnabled;
    private float shareDoneProgress;
    private float[] shareDoneProgressAnimValues;
    private TextInfoPrivacyCell sponsorInfoCell;
    private RadioCell[] typeCell;

    public ProxySettingsActivity() {
        this.sectionCell = new ShadowSectionCell[4];
        this.typeCell = new RadioCell[3];
        this.currentType = -1;
        this.pasteType = -1;
        this.shareDoneProgress = 1.0f;
        this.shareDoneProgressAnimValues = new float[2];
        this.shareDoneEnabled = true;
        this.clipChangedListener = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda0
            @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
            public final void onPrimaryClipChanged() {
                this.f$0.updatePasteCell();
            }
        };
        this.currentProxyInfo = new SharedConfig.ProxyInfo(ProxySettings.EMPTY);
        this.addingNewProxy = true;
    }

    public ProxySettingsActivity(SharedConfig.ProxyInfo proxyInfo) {
        this.sectionCell = new ShadowSectionCell[4];
        this.typeCell = new RadioCell[3];
        this.currentType = -1;
        this.pasteType = -1;
        this.shareDoneProgress = 1.0f;
        this.shareDoneProgressAnimValues = new float[2];
        this.shareDoneEnabled = true;
        this.clipChangedListener = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda0
            @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
            public final void onPrimaryClipChanged() {
                this.f$0.updatePasteCell();
            }
        };
        this.currentProxyInfo = proxyInfo;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        this.clipboardManager.addPrimaryClipChangedListener(this.clipChangedListener);
        updatePasteCell();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        this.clipboardManager.removePrimaryClipChangedListener(this.clipChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        setProxyType(((Integer) view.getTag()).intValue(), true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        int i;
        this.actionBar.setTitle(LocaleController.getString(C2665R.string.ProxyDetails));
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(false);
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isLayersLayout()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ProxySettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    ProxySettingsActivity.this.finishFragment();
                    return;
                }
                boolean z = true;
                if (i2 != 1 || ProxySettingsActivity.this.getParentActivity() == null) {
                    return;
                }
                String strTrim = ProxySettingsActivity.this.inputFields[0].getText().toString().trim();
                String link = ProxySettingsActivity.this.addingNewProxy ? null : ProxySettingsActivity.this.currentProxyInfo.settings.getLink();
                boolean z2 = ProxySettingsActivity.this.currentType == 2;
                SharedConfig.ProxyInfo proxyInfo = ProxySettingsActivity.this.currentProxyInfo;
                ProxySettings.Builder port = ProxySettings.builder().setType(ProxySettings.intToType(ProxySettingsActivity.this.currentType)).setAddress(ProxySettingsActivity.this.inputFields[1].getText().toString()).setPort(z2 ? 0 : Utilities.parseInt((CharSequence) ProxySettingsActivity.this.inputFields[2].getText().toString()));
                int i3 = ProxySettingsActivity.this.currentType;
                String string = _UrlKt.FRAGMENT_ENCODE_SET;
                ProxySettings.Builder password = port.setUser(i3 == 0 ? ProxySettingsActivity.this.inputFields[3].getText().toString() : _UrlKt.FRAGMENT_ENCODE_SET).setPassword(ProxySettingsActivity.this.currentType == 0 ? ProxySettingsActivity.this.inputFields[4].getText().toString() : _UrlKt.FRAGMENT_ENCODE_SET);
                if (ProxySettingsActivity.this.currentType != 0) {
                    string = ProxySettingsActivity.this.inputFields[5].getText().toString();
                }
                proxyInfo.settings = password.setSecret(string).build();
                ProxyController proxyController = ProxyController.getInstance();
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                if (!ProxySettingsActivity.this.addingNewProxy && !globalMainSettings.getBoolean("proxy_enabled", false)) {
                    z = false;
                }
                ProxySettingsActivity proxySettingsActivity = ProxySettingsActivity.this;
                proxySettingsActivity.currentProxyInfo = proxyController.saveProxy(proxySettingsActivity.currentProxyInfo, link, strTrim);
                if (ProxySettingsActivity.this.addingNewProxy) {
                    proxyController.setCurrentProxy(ProxySettingsActivity.this.currentProxyInfo);
                }
                if (ProxySettingsActivity.this.addingNewProxy || proxyController.getCurrentProxy() == ProxySettingsActivity.this.currentProxyInfo) {
                    SharedPreferences.Editor editorEdit = globalMainSettings.edit();
                    editorEdit.putBoolean("proxy_enabled", z);
                    ProxySettingsActivity.this.currentProxyInfo.settings.toSharedPreferences(editorEdit);
                    ConnectionsManager.setProxySettings(z, ProxySettingsActivity.this.currentProxyInfo.settings);
                    editorEdit.apply();
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.proxySettingsChanged, new Object[0]);
                ProxySettingsActivity.this.finishFragment();
            }
        });
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth = this.actionBar.createMenu().addItemWithWidth(1, C2665R.drawable.ic_ab_done, AndroidUtilities.dp(56.0f));
        this.doneItem = actionBarMenuItemAddItemWithWidth;
        actionBarMenuItemAddItemWithWidth.setContentDescription(LocaleController.getString(C2665R.string.Done));
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.linearLayout2 = new SectionsScrollView.SectionsLinearLayout(context);
        SectionsScrollView sectionsScrollView = new SectionsScrollView(context, this.linearLayout2, this.resourceProvider);
        this.scrollView = sectionsScrollView;
        this.actionBar.setAdaptiveBackground(sectionsScrollView);
        this.scrollView.setFillViewport(true);
        AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, Theme.getColor(Theme.key_actionBarDefault));
        frameLayout.addView(this.scrollView, LayoutHelper.createFrame(-1, -1.0f));
        this.linearLayout2.setOrientation(1);
        this.scrollView.addView(this.linearLayout2, new FrameLayout.LayoutParams(-1, -2));
        int i2 = 6;
        this.inputFields = new EditTextBoldCursor[6];
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        };
        int i3 = 0;
        while (true) {
            RadioCell[] radioCellArr = this.typeCell;
            if (i3 >= radioCellArr.length) {
                break;
            }
            radioCellArr[i3] = new RadioCell(context);
            this.typeCell[i3].setBackground(Theme.getSelectorDrawable(true));
            this.typeCell[i3].setTag(Integer.valueOf(i3));
            if (i3 == 0) {
                i = C2665R.string.UseProxySocks5;
            } else if (i3 == 1) {
                i = C2665R.string.UseProxyTelegram;
            } else {
                i = C2665R.string.UseProxyWeb;
            }
            this.typeCell[i3].setText(LocaleController.getString(i), i3 == this.currentType, i3 != this.typeCell.length - 1);
            this.linearLayout2.addView(this.typeCell[i3], LayoutHelper.createLinear(-1, 50));
            this.typeCell[i3].setOnClickListener(onClickListener);
            i3++;
        }
        this.sectionCell[0] = new ShadowSectionCell(context);
        this.linearLayout2.addView(this.sectionCell[0], LayoutHelper.createLinear(-1, 14));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.inputFieldsSection = frameLayout2;
        frameLayout2.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(12.0f), 0);
        this.linearLayout2.addView(this.inputFieldsSection, LayoutHelper.createLinear(-1, -2));
        LinearLayout linearLayout = new LinearLayout(context);
        this.inputFieldsContainer = linearLayout;
        linearLayout.setOrientation(1);
        this.inputFieldsContainer.setTag(-33024);
        this.inputFieldsSection.addView(this.inputFieldsContainer, LayoutHelper.createFrame(-1, -2.0f));
        this.sectionCell[3] = new ShadowSectionCell(context);
        this.linearLayout2.addView(this.sectionCell[3], LayoutHelper.createLinear(-1, 14));
        this.inputFieldContainers = new OutlineTextContainerView[6];
        int i4 = 0;
        while (true) {
            int i5 = 4;
            int i6 = 5;
            if (i4 >= i2) {
                break;
            }
            OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
            this.inputFieldContainers[i4] = outlineTextContainerView;
            this.inputFields[i4] = new EditTextBoldCursor(context);
            this.inputFields[i4].setTag(Integer.valueOf(i4));
            this.inputFields[i4].setTextSize(1, 16.0f);
            this.inputFields[i4].setHintColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
            EditTextBoldCursor editTextBoldCursor = this.inputFields[i4];
            int i7 = Theme.key_windowBackgroundWhiteBlackText;
            editTextBoldCursor.setTextColor(Theme.getColor(i7));
            this.inputFields[i4].setBackground(null);
            this.inputFields[i4].setCursorColor(Theme.getColor(i7));
            this.inputFields[i4].setCursorSize(AndroidUtilities.dp(20.0f));
            this.inputFields[i4].setCursorWidth(1.5f);
            this.inputFields[i4].setSingleLine(true);
            this.inputFields[i4].setGravity(LocaleController.isRTL ? 5 : 3);
            if (i4 == 0) {
                this.inputFields[i4].setInputType(524289);
                this.inputFields[i4].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ProxySettingsActivity.2
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        ProxySettingsActivity.this.updateActionBarTitle();
                        ProxySettingsActivity proxySettingsActivity = ProxySettingsActivity.this;
                        proxySettingsActivity.updateFieldContainerState(0, proxySettingsActivity.inputFields[0].hasFocus(), true);
                    }
                });
            } else if (i4 == 1) {
                this.inputFields[i4].setInputType(524305);
                this.inputFields[i4].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ProxySettingsActivity.3
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        ProxySettingsActivity proxySettingsActivity = ProxySettingsActivity.this;
                        proxySettingsActivity.updateFieldContainerState(1, proxySettingsActivity.inputFields[1].hasFocus(), true);
                        ProxySettingsActivity.this.checkShareDone(true);
                    }
                });
            } else if (i4 == 2) {
                this.inputFields[i4].setInputType(2);
                this.inputFields[i4].addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ProxySettingsActivity.4
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        if (ProxySettingsActivity.this.ignoreOnTextChange) {
                            return;
                        }
                        EditTextBoldCursor editTextBoldCursor2 = ProxySettingsActivity.this.inputFields[2];
                        int selectionStart = editTextBoldCursor2.getSelectionStart();
                        String string = editTextBoldCursor2.getText().toString();
                        StringBuilder sb = new StringBuilder(string.length());
                        int i8 = 0;
                        while (i8 < string.length()) {
                            int i9 = i8 + 1;
                            String strSubstring = string.substring(i8, i9);
                            if ("0123456789".contains(strSubstring)) {
                                sb.append(strSubstring);
                            }
                            i8 = i9;
                        }
                        ProxySettingsActivity.this.ignoreOnTextChange = true;
                        int i10 = Utilities.parseInt((CharSequence) sb.toString());
                        if (i10 < 0 || i10 > 65535 || !string.equals(sb.toString())) {
                            if (i10 < 0) {
                                editTextBoldCursor2.setText(MVEL.VERSION_SUB);
                            } else if (i10 > 65535) {
                                editTextBoldCursor2.setText("65535");
                            } else {
                                editTextBoldCursor2.setText(sb.toString());
                            }
                        } else if (selectionStart >= 0) {
                            editTextBoldCursor2.setSelection(Math.min(selectionStart, editTextBoldCursor2.length()));
                        }
                        ProxySettingsActivity.this.ignoreOnTextChange = false;
                        ProxySettingsActivity proxySettingsActivity = ProxySettingsActivity.this;
                        proxySettingsActivity.updateFieldContainerState(2, proxySettingsActivity.inputFields[2].hasFocus(), true);
                        ProxySettingsActivity.this.checkShareDone(true);
                    }
                });
            } else if (i4 == 4) {
                this.inputFields[i4].setInputType(129);
                this.inputFields[i4].setTypeface(Typeface.DEFAULT);
                this.inputFields[i4].setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.inputFields[i4].addTextChangedListener(new SimpleFieldTextWatcher(i5));
            } else {
                EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
                if (i4 == 5) {
                    editTextBoldCursorArr[i4].setInputType(524289);
                    this.inputFields[i4].setTypeface(Typeface.DEFAULT);
                    this.inputFields[i4].setTransformationMethod(PasswordTransformationMethod.getInstance());
                    this.inputFields[i4].addTextChangedListener(new SimpleFieldTextWatcher(i6));
                } else {
                    editTextBoldCursorArr[i4].setInputType(524289);
                    this.inputFields[i4].addTextChangedListener(new SimpleFieldTextWatcher(i4));
                }
            }
            this.inputFields[i4].setImeOptions(268435461);
            if (i4 == 0) {
                outlineTextContainerView.setText(LocaleController.getString(C2665R.string.ProxyRename));
                this.inputFields[i4].setText(ProxyController.getInstance().getName(this.currentProxyInfo));
            } else if (i4 == 1) {
                outlineTextContainerView.setText(LocaleController.getString(C2665R.string.UseProxyAddress));
                this.inputFields[i4].setText(this.currentProxyInfo.settings.getAddress());
            } else if (i4 == 2) {
                outlineTextContainerView.setText(LocaleController.getString(C2665R.string.UseProxyPort));
                this.inputFields[i4].setText(_UrlKt.FRAGMENT_ENCODE_SET + this.currentProxyInfo.settings.getPort());
            } else if (i4 == 3) {
                outlineTextContainerView.setText(LocaleController.getString(C2665R.string.UseProxyUsername));
                this.inputFields[i4].setText(this.currentProxyInfo.settings.getUser());
            } else if (i4 == 4) {
                outlineTextContainerView.setText(LocaleController.getString(C2665R.string.UseProxyPassword));
                this.inputFields[i4].setText(this.currentProxyInfo.settings.getPassword());
            } else if (i4 == 5) {
                outlineTextContainerView.setText(LocaleController.getString(C2665R.string.UseProxySecret));
                this.inputFields[i4].setText(this.currentProxyInfo.settings.getSecret());
            }
            EditTextBoldCursor editTextBoldCursor2 = this.inputFields[i4];
            editTextBoldCursor2.setSelection(editTextBoldCursor2.length());
            this.inputFields[i4].setPadding(0, AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f));
            outlineTextContainerView.addView(this.inputFields[i4], LayoutHelper.createFrame(-1, -2.0f, 51, 16.0f, 0.0f, 16.0f, 0.0f));
            outlineTextContainerView.attachEditText(this.inputFields[i4]);
            this.inputFields[i4].setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z) {
                    this.f$0.lambda$createView$1(view, z);
                }
            });
            updateFieldContainerState(i4, false, false);
            this.inputFields[i4].setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda3
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
                    return this.f$0.lambda$createView$2(textView, i8, keyEvent);
                }
            });
            i4++;
            i2 = 6;
        }
        this.inputFieldsContainer.addView(this.inputFieldContainers[0], LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 12.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        this.inputFieldsContainer.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 12.0f));
        linearLayout2.addView(this.inputFieldContainers[1], LayoutHelper.createLinear(0, -2, 1.0f, 0, 0, 8, 0));
        linearLayout2.addView(this.inputFieldContainers[2], LayoutHelper.createLinear(112, -2, 8.0f, 0.0f, 0.0f, 0.0f));
        this.inputFieldsContainer.addView(this.inputFieldContainers[3], LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 12.0f));
        this.inputFieldsContainer.addView(this.inputFieldContainers[4], LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 12.0f));
        this.inputFieldsContainer.addView(this.inputFieldContainers[5], LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 12.0f));
        for (int i8 = 0; i8 < this.inputFieldsContainer.getChildCount(); i8++) {
            this.inputFieldsContainer.getChildAt(i8).setTag(-33024);
        }
        updateActionBarTitle();
        TextSettingsCell textSettingsCell = new TextSettingsCell(this.fragmentView.getContext());
        this.pasteCell = textSettingsCell;
        textSettingsCell.setBackground(Theme.getSelectorDrawable(true));
        this.pasteCell.setText(LocaleController.getString(C2665R.string.PasteFromClipboard), false);
        TextSettingsCell textSettingsCell2 = this.pasteCell;
        int i9 = Theme.key_windowBackgroundWhiteBlueText4;
        textSettingsCell2.setTextColor(Theme.getColor(i9));
        this.pasteCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$4(view);
            }
        });
        this.linearLayout2.addView(this.pasteCell, 0, LayoutHelper.createLinear(-1, -2));
        this.pasteCell.setVisibility(8);
        this.sectionCell[2] = new ShadowSectionCell(context);
        this.sectionCell[2].setVisibility(8);
        this.linearLayout2.addView(this.sectionCell[2], 1, LayoutHelper.createLinear(-1, -2));
        TextSettingsCell textSettingsCell3 = new TextSettingsCell(context);
        this.shareCell = textSettingsCell3;
        textSettingsCell3.setBackground(Theme.getSelectorDrawable(true));
        this.shareCell.setText(LocaleController.getString(C2665R.string.ShareFile), false);
        this.shareCell.setTextColor(Theme.getColor(i9));
        this.linearLayout2.addView(this.shareCell, LayoutHelper.createLinear(-1, -2));
        this.shareCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$5(context, view);
            }
        });
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context);
        this.sponsorInfoCell = textInfoPrivacyCell;
        textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.sponsorInfoCell.setText(LocaleController.getString(C2665R.string.UseProxyTelegramInfo2));
        this.sponsorInfoCell.setVisibility(8);
        this.linearLayout2.addView(this.sponsorInfoCell, LayoutHelper.createLinear(-1, -2));
        this.sectionCell[1] = new ShadowSectionCell(context);
        this.sectionCell[1].setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C2665R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
        this.linearLayout2.addView(this.sectionCell[1], LayoutHelper.createLinear(-1, -2));
        this.clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        this.shareDoneEnabled = true;
        this.shareDoneProgress = 1.0f;
        checkShareDone(false);
        this.currentType = -1;
        setProxyType(ProxySettings.typeToInt(this.currentProxyInfo.settings.getType()), false);
        this.pasteType = -1;
        this.pasteString = null;
        updatePasteCell();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view, boolean z) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        updateFieldContainerState(iIntValue, z, true);
        if (iIntValue == 5) {
            updateSecretVisibility(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            if (i != 6) {
                return false;
            }
            finishFragment();
            return true;
        }
        int iIntValue = ((Integer) textView.getTag()).intValue() + 1;
        EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
        if (iIntValue < editTextBoldCursorArr.length) {
            editTextBoldCursorArr[iIntValue].requestFocus();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        if (this.pasteType == -1) {
            return;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.pasteFields;
            if (i < strArr.length) {
                int i2 = this.pasteType;
                if ((i2 != 0 || i != 5) && (i2 != 1 || (i != 3 && i != 4))) {
                    String str = strArr[i];
                    EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
                    if (str != null) {
                        editTextBoldCursorArr[i].setText(str);
                    } else {
                        editTextBoldCursorArr[i].setText((CharSequence) null);
                    }
                    updateFieldContainerState(i, this.inputFields[i].hasFocus(), false);
                }
                i++;
            } else {
                EditTextBoldCursor editTextBoldCursor = this.inputFields[1];
                editTextBoldCursor.setSelection(editTextBoldCursor.length());
                setProxyType(this.pasteType, true, new Runnable() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$3();
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        AndroidUtilities.hideKeyboard(this.inputFieldsContainer.findFocus());
        for (int i = 1; i < this.pasteFields.length; i++) {
            int i2 = this.pasteType;
            if ((i2 != 0 || i == 5) && (i2 != 1 || i == 3 || i == 4)) {
                this.inputFields[i].setText((CharSequence) null);
                updateFieldContainerState(i, this.inputFields[i].hasFocus(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(Context context, View view) {
        String strBuildShareLink = ProxyController.getInstance().buildShareLink(this.currentProxyInfo, this.inputFields[0].getText().toString().trim());
        if (TextUtils.isEmpty(strBuildShareLink)) {
            return;
        }
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(context, LocaleController.getString(C2665R.string.ShareQrCode), strBuildShareLink, LocaleController.getString(C2665R.string.QRCodeLinkHelpProxy), true);
        qRCodeBottomSheet.setCenterImage(SvgHelper.getBitmap(AndroidUtilities.readRes(C2665R.raw.qr_dog), AndroidUtilities.dp(60.0f), AndroidUtilities.dp(60.0f), false));
        showDialog(qRCodeBottomSheet);
    }

    private void updateSecretVisibility(boolean z) {
        EditTextBoldCursor editTextBoldCursor;
        EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
        if (editTextBoldCursorArr == null || (editTextBoldCursor = editTextBoldCursorArr[5]) == null) {
            return;
        }
        int selectionStart = editTextBoldCursor.getSelectionStart();
        this.inputFields[5].setTransformationMethod(z ? null : PasswordTransformationMethod.getInstance());
        EditTextBoldCursor editTextBoldCursor2 = this.inputFields[5];
        editTextBoldCursor2.setSelection(Math.max(0, Math.min(selectionStart, editTextBoldCursor2.length())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFieldContainerState(int i, boolean z, boolean z2) {
        EditTextBoldCursor[] editTextBoldCursorArr;
        EditTextBoldCursor editTextBoldCursor;
        OutlineTextContainerView[] outlineTextContainerViewArr = this.inputFieldContainers;
        if (outlineTextContainerViewArr == null || (editTextBoldCursorArr = this.inputFields) == null || i < 0 || i >= outlineTextContainerViewArr.length || outlineTextContainerViewArr[i] == null || (editTextBoldCursor = editTextBoldCursorArr[i]) == null) {
            return;
        }
        this.inputFieldContainers[i].animateSelection(z ? 1.0f : 0.0f, (z || (editTextBoldCursor.getText() != null && this.inputFields[i].length() > 0)) ? 1.0f : 0.0f, z2);
    }

    public class SimpleFieldTextWatcher implements TextWatcher {
        private final int field;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private SimpleFieldTextWatcher(int i) {
            this.field = i;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ProxySettingsActivity proxySettingsActivity = ProxySettingsActivity.this;
            proxySettingsActivity.updateFieldContainerState(this.field, proxySettingsActivity.inputFields[this.field].hasFocus(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePasteCell() {
        Uri proxyUriFromText;
        ClipData primaryClip = this.clipboardManager.getPrimaryClip();
        String string = null;
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            try {
                string = primaryClip.getItemAt(0).coerceToText(this.fragmentView.getContext()).toString();
            } catch (Exception unused) {
            }
        }
        if (TextUtils.equals(string, this.pasteString)) {
            return;
        }
        this.pasteType = -1;
        this.pasteString = string;
        this.pasteFields = new String[this.inputFields.length];
        if (string != null && (proxyUriFromText = getProxyUriFromText(string)) != null) {
            String path = proxyUriFromText.getPath();
            String host = proxyUriFromText.getHost();
            if (TextUtils.equals(host, "socks") || TextUtils.equals(path, "/socks")) {
                this.pasteType = 0;
            } else if (TextUtils.equals(host, "proxy") || TextUtils.equals(path, "/proxy")) {
                this.pasteType = 1;
            } else if (TextUtils.equals(host, "webproxy") || TextUtils.equals(path, "/webproxy")) {
                this.pasteType = 2;
            }
            if (this.pasteType != -1) {
                this.pasteFields[0] = proxyUriFromText.getQueryParameter("title");
                this.pasteFields[1] = proxyUriFromText.getQueryParameter("server");
                this.pasteFields[2] = proxyUriFromText.getQueryParameter("port");
                int i = this.pasteType;
                String[] strArr = this.pasteFields;
                if (i == 0) {
                    strArr[3] = proxyUriFromText.getQueryParameter("user");
                    this.pasteFields[4] = proxyUriFromText.getQueryParameter("pass");
                } else {
                    strArr[5] = proxyUriFromText.getQueryParameter("secret");
                }
                if (this.pasteType == 2) {
                    this.pasteFields[2] = String.valueOf(443);
                }
            }
        }
        int i2 = this.pasteType;
        TextSettingsCell textSettingsCell = this.pasteCell;
        if (i2 != -1) {
            if (textSettingsCell.getVisibility() != 0) {
                this.pasteCell.setVisibility(0);
                this.sectionCell[2].setVisibility(0);
                return;
            }
            return;
        }
        if (textSettingsCell.getVisibility() != 8) {
            this.pasteCell.setVisibility(8);
            this.sectionCell[2].setVisibility(8);
        }
    }

    private Uri getProxyUriFromText(String str) {
        String[] strArr = {"https://t.me/socks?", "http://t.me/socks?", "t.me/socks?", "tg://socks?", "https://t.me/proxy?", "http://t.me/proxy?", "t.me/proxy?", "tg://proxy?"};
        for (int i = 0; i < 8; i++) {
            int iIndexOf = str.indexOf(strArr[i]);
            if (iIndexOf >= 0) {
                String strTrim = str.substring(iIndexOf).trim();
                int iIndexOf2 = strTrim.indexOf(32);
                if (iIndexOf2 >= 0) {
                    strTrim = strTrim.substring(0, iIndexOf2);
                }
                if (strTrim.startsWith("t.me/")) {
                    strTrim = "https://".concat(strTrim);
                }
                return Uri.parse(strTrim);
            }
        }
        return null;
    }

    private void setShareDoneEnabled(boolean z, boolean z2) {
        if (this.shareDoneEnabled != z) {
            ValueAnimator valueAnimator = this.shareDoneAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            } else if (z2) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.shareDoneAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.setDuration(200L);
                this.shareDoneAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda8
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setShareDoneEnabled$6(valueAnimator2);
                    }
                });
            }
            if (z2) {
                float[] fArr = this.shareDoneProgressAnimValues;
                fArr[0] = this.shareDoneProgress;
                fArr[1] = z ? 1.0f : 0.0f;
                this.shareDoneAnimator.start();
            } else {
                this.shareDoneProgress = z ? 1.0f : 0.0f;
                this.shareCell.setTextColor(Theme.getColor(z ? Theme.key_windowBackgroundWhiteBlueText4 : Theme.key_windowBackgroundWhiteGrayText2));
                this.doneItem.setAlpha(z ? 1.0f : 0.5f);
            }
            this.shareCell.setEnabled(z);
            this.doneItem.setEnabled(z);
            this.shareDoneEnabled = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setShareDoneEnabled$6(ValueAnimator valueAnimator) {
        this.shareDoneProgress = AndroidUtilities.lerp(this.shareDoneProgressAnimValues, valueAnimator.getAnimatedFraction());
        this.shareCell.setTextColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4), this.shareDoneProgress));
        this.doneItem.setAlpha((this.shareDoneProgress / 2.0f) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkShareDone(boolean z) {
        if (this.shareCell == null || this.doneItem == null) {
            return;
        }
        EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
        EditTextBoldCursor editTextBoldCursor = editTextBoldCursorArr[1];
        if (editTextBoldCursor == null || editTextBoldCursorArr[2] == null) {
            return;
        }
        if (this.currentType == 2) {
            setShareDoneEnabled(!TextUtils.isEmpty(WebProxyTransport.normalizeHost(editTextBoldCursor.getText().toString())) && WebProxyTransport.isValidSecret(this.inputFields[5].getText().toString()), z);
        } else {
            setShareDoneEnabled((editTextBoldCursor.length() == 0 || Utilities.parseInt((CharSequence) this.inputFields[2].getText().toString()) == 0) ? false : true, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarTitle() {
        String name;
        EditTextBoldCursor editTextBoldCursor;
        if (this.actionBar == null) {
            return;
        }
        EditTextBoldCursor[] editTextBoldCursorArr = this.inputFields;
        if (editTextBoldCursorArr != null && editTextBoldCursorArr.length > 0 && (editTextBoldCursor = editTextBoldCursorArr[0]) != null) {
            name = editTextBoldCursor.getText().toString().trim();
        } else {
            name = this.currentProxyInfo != null ? ProxyController.getInstance().getName(this.currentProxyInfo) : null;
        }
        ActionBar actionBar = this.actionBar;
        if (TextUtils.isEmpty(name)) {
            name = LocaleController.getString(C2665R.string.ProxyDetails);
        }
        actionBar.setTitle(name);
    }

    private void setProxyType(int i, boolean z) {
        setProxyType(i, z, null);
    }

    private void setProxyType(int i, boolean z, final Runnable runnable) {
        LinearLayout.LayoutParams layoutParams;
        if (this.currentType != i) {
            this.currentType = i;
            TransitionManager.endTransitions(this.linearLayout2);
            if (z) {
                TransitionSet duration = new TransitionSet().addTransition(new Fade(2)).addTransition(new ChangeBounds()).addTransition(new Fade(1)).setInterpolator((TimeInterpolator) CubicBezierInterpolator.DEFAULT).setDuration(250L);
                if (runnable != null) {
                    duration.addListener(new Transition.TransitionListener() { // from class: org.telegram.ui.ProxySettingsActivity.5
                        @Override // android.transition.Transition.TransitionListener
                        public void onTransitionCancel(Transition transition) {
                        }

                        @Override // android.transition.Transition.TransitionListener
                        public void onTransitionPause(Transition transition) {
                        }

                        @Override // android.transition.Transition.TransitionListener
                        public void onTransitionResume(Transition transition) {
                        }

                        @Override // android.transition.Transition.TransitionListener
                        public void onTransitionStart(Transition transition) {
                        }

                        @Override // android.transition.Transition.TransitionListener
                        public void onTransitionEnd(Transition transition) {
                            runnable.run();
                        }
                    });
                }
                TransitionManager.beginDelayedTransition(this.linearLayout2, duration);
            }
            int i2 = this.currentType;
            boolean z2 = i2 == 2;
            TextInfoPrivacyCell textInfoPrivacyCell = this.sponsorInfoCell;
            if (i2 == 0) {
                textInfoPrivacyCell.setVisibility(8);
                this.inputFieldContainers[5].setVisibility(8);
                this.inputFieldContainers[4].setVisibility(0);
                this.inputFieldContainers[3].setVisibility(0);
            } else {
                textInfoPrivacyCell.setVisibility(z2 ? 8 : 0);
                this.inputFieldContainers[5].setVisibility(0);
                this.inputFieldContainers[4].setVisibility(8);
                this.inputFieldContainers[3].setVisibility(8);
            }
            this.inputFieldContainers[2].setVisibility(z2 ? 8 : 0);
            if (z2) {
                this.inputFields[2].setText(String.valueOf(443));
            }
            int i3 = 0;
            while (true) {
                RadioCell[] radioCellArr = this.typeCell;
                if (i3 >= radioCellArr.length) {
                    break;
                }
                radioCellArr[i3].setChecked(this.currentType == i3, z);
                i3++;
            }
            OutlineTextContainerView outlineTextContainerView = this.inputFieldContainers[1];
            if (outlineTextContainerView != null && (layoutParams = (LinearLayout.LayoutParams) outlineTextContainerView.getLayoutParams()) != null) {
                int iDp = z2 ? 0 : AndroidUtilities.dp(8.0f);
                if (layoutParams.rightMargin != iDp) {
                    layoutParams.rightMargin = iDp;
                    this.inputFieldContainers[1].setLayoutParams(layoutParams);
                }
            }
            checkShareDone(z);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2 && this.addingNewProxy) {
            this.inputFields[0].requestFocus();
            AndroidUtilities.showKeyboard(this.inputFields[0]);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ProxySettingsActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$7();
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.scrollView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, Theme.key_actionBarDefaultSearch));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER, null, null, null, null, Theme.key_actionBarDefaultSearchPlaceholder));
        arrayList.add(new ThemeDescription(this.linearLayout2, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_listSelector));
        int i3 = Theme.key_windowBackgroundWhiteBlueText4;
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i3));
        arrayList.add(new ThemeDescription((View) null, 0, (Class[]) null, (String[]) null, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.pasteCell, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        int i4 = 0;
        for (int i5 = 0; i5 < this.typeCell.length; i5++) {
            arrayList.add(new ThemeDescription(this.typeCell[i5], 0, new Class[]{RadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
            arrayList.add(new ThemeDescription(this.typeCell[i5], ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackground));
            arrayList.add(new ThemeDescription(this.typeCell[i5], ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackgroundChecked));
        }
        if (this.inputFields != null) {
            for (int i6 = 0; i6 < this.inputFields.length; i6++) {
                EditTextBoldCursor editTextBoldCursor = this.inputFields[i6];
                int i7 = ThemeDescription.FLAG_TEXTCOLOR;
                int i8 = Theme.key_windowBackgroundWhiteBlackText;
                arrayList.add(new ThemeDescription(editTextBoldCursor, i7, null, null, null, null, i8));
                arrayList.add(new ThemeDescription(this.inputFields[i6], ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteHintText));
                arrayList.add(new ThemeDescription(this.inputFields[i6], ThemeDescription.FLAG_HINTTEXTCOLOR | ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_windowBackgroundWhiteBlueHeader));
                arrayList.add(new ThemeDescription(this.inputFields[i6], ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, i8));
            }
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteHintText));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteInputField));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteInputFieldActivated));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_text_RedBold));
        } else {
            arrayList.add(new ThemeDescription(null, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText));
            arrayList.add(new ThemeDescription(null, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteHintText));
        }
        arrayList.add(new ThemeDescription(this.headerCell, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.headerCell, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        while (true) {
            ShadowSectionCell[] shadowSectionCellArr = this.sectionCell;
            if (i4 < shadowSectionCellArr.length) {
                if (shadowSectionCellArr[i4] != null) {
                    arrayList.add(new ThemeDescription(this.sectionCell[i4], ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
                }
                i4++;
            } else {
                arrayList.add(new ThemeDescription(this.sponsorInfoCell, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
                arrayList.add(new ThemeDescription(this.sponsorInfoCell, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
                arrayList.add(new ThemeDescription(this.sponsorInfoCell, ThemeDescription.FLAG_LINKCOLOR, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteLinkText));
                return arrayList;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$7() {
        ValueAnimator valueAnimator;
        if (this.shareCell != null && ((valueAnimator = this.shareDoneAnimator) == null || !valueAnimator.isRunning())) {
            this.shareCell.setTextColor(Theme.getColor(this.shareDoneEnabled ? Theme.key_windowBackgroundWhiteBlueText4 : Theme.key_windowBackgroundWhiteGrayText2));
        }
        OutlineTextContainerView[] outlineTextContainerViewArr = this.inputFieldContainers;
        if (outlineTextContainerViewArr != null) {
            for (OutlineTextContainerView outlineTextContainerView : outlineTextContainerViewArr) {
                if (outlineTextContainerView != null) {
                    outlineTextContainerView.updateColor();
                }
            }
        }
    }
}
