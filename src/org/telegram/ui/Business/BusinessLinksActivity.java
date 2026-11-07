package org.telegram.ui.Business;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.cast.MediaError;
import com.google.android.material.navigation.NavigationBarView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.AlertDialogDecor;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedColor;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.URLSpanCopyToClipboard;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes6.dex */
public class BusinessLinksActivity extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {
    private static AlertDialog currentDialog;

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        super.createView(context);
        this.listView.setSections();
        this.listView.adapter.setApplyBackground(false);
        this.actionBar.setAdaptiveBackground(this.listView, true);
        return this.fragmentView;
    }

    public static void openRenameAlert(Context context, final int i, final TL_account.TL_businessChatLink tL_businessChatLink, final Theme.ResourcesProvider resourcesProvider, boolean z) {
        AlertDialog.Builder builder;
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        View currentFocus = activityFindActivity != null ? activityFindActivity.getCurrentFocus() : null;
        boolean z2 = lastFragment != null && (lastFragment.getFragmentView() instanceof SizeNotifierFrameLayout) && ((SizeNotifierFrameLayout) lastFragment.getFragmentView()).measureKeyboardHeight() > AndroidUtilities.dp(20.0f) && !z;
        final View view = currentFocus;
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        if (z2) {
            builder = new AlertDialogDecor.Builder(context, resourcesProvider);
        } else {
            builder = new AlertDialog.Builder(context, resourcesProvider);
        }
        builder.setTitle(LocaleController.getString(C2665R.string.BusinessLinksRenameTitle));
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.Business.BusinessLinksActivity.1
            AnimatedTextView.AnimatedTextDrawable limit;
            AnimatedColor limitColor = new AnimatedColor(this);
            private int limitCount;

            {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
                this.limit = animatedTextDrawable;
                animatedTextDrawable.setAnimationProperties(0.2f, 0L, 160L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.limit.setTextSize(AndroidUtilities.dp(15.33f));
                this.limit.setCallback(this);
                this.limit.setGravity(5);
            }

            @Override // android.widget.TextView, android.view.View
            public boolean verifyDrawable(Drawable drawable) {
                return drawable == this.limit || super.verifyDrawable(drawable);
            }

            @Override // org.telegram.ui.Components.EditTextBoldCursor, org.telegram.ui.Components.EditTextEffects, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                super.onTextChanged(charSequence, i2, i3, i4);
                if (this.limit != null) {
                    this.limitCount = 32 - charSequence.length();
                    this.limit.cancelAnimation();
                    AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.limit;
                    int i5 = this.limitCount;
                    String str = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (i5 <= 4) {
                        str = _UrlKt.FRAGMENT_ENCODE_SET + this.limitCount;
                    }
                    animatedTextDrawable.setText(str);
                }
            }

            @Override // android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.limit.setTextColor(this.limitColor.set(Theme.getColor(this.limitCount < 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, resourcesProvider)));
                this.limit.setBounds(getScrollX(), 0, getScrollX() + getWidth(), getHeight());
                this.limit.draw(canvas);
            }

            @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(36.0f), TLObject.FLAG_30));
            }
        };
        MediaDataController.getInstance(i).fetchNewEmojiKeywords(AndroidUtilities.getCurrentKeyboardLanguage(), true);
        editTextBoldCursor.setInputType(49153);
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setText(tL_businessChatLink.title);
        int i2 = Theme.key_dialogTextBlack;
        editTextBoldCursor.setTextColor(Theme.getColor(i2, resourcesProvider));
        editTextBoldCursor.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
        editTextBoldCursor.setCursorColor(Theme.getColor(Theme.key_chat_messagePanelCursor));
        editTextBoldCursor.setHintText(LocaleController.getString(C2665R.string.BusinessLinksNamePlaceholder));
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setFocusable(true);
        editTextBoldCursor.setLineColors(Theme.getColor(Theme.key_windowBackgroundWhiteInputField, resourcesProvider), Theme.getColor(Theme.key_windowBackgroundWhiteInputFieldActivated, resourcesProvider), Theme.getColor(Theme.key_text_RedRegular, resourcesProvider));
        editTextBoldCursor.setImeOptions(6);
        editTextBoldCursor.setBackgroundDrawable(null);
        editTextBoldCursor.setPadding(0, 0, AndroidUtilities.dp(42.0f), 0);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setTextSize(1, 16.0f);
        textView.setText(LocaleController.getString(C2665R.string.BusinessLinksRenameMessage));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 24.0f, 5.0f, 24.0f, 12.0f));
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.dp(292.0f));
        editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda4
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                return BusinessLinksActivity.$r8$lambda$DtBQAB1IVKEeN5sJZ6_I4zgsmCc(editTextBoldCursor, i, tL_businessChatLink, alertDialogArr, view, textView2, i3, keyEvent);
            }
        });
        builder.setPositiveButton(LocaleController.getString(C2665R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                BusinessLinksActivity.$r8$lambda$cxMI8a8s6tOBqxsSlMOAHU39TGw(editTextBoldCursor, i, tL_businessChatLink, alertDialog, i3);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                alertDialog.dismiss();
            }
        });
        if (z2) {
            AlertDialog alertDialogCreate = builder.create();
            currentDialog = alertDialogCreate;
            alertDialogArr[0] = alertDialogCreate;
            alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda7
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    BusinessLinksActivity.$r8$lambda$vhM1hkg1IjU1VS1KeY8WYqWMkdE(view, dialogInterface);
                }
            });
            currentDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    BusinessLinksActivity.$r8$lambda$uViQvlykjsAe5Vxc8gEsQJWvtWI(editTextBoldCursor, dialogInterface);
                }
            });
            currentDialog.showDelayed(250L);
        } else {
            builder.overrideDismissListener(new Utilities.Callback() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    BusinessLinksActivity.$r8$lambda$JbvWftK4TSlZUFN3lwTgZOzHk8g(view, editTextBoldCursor, (Runnable) obj);
                }
            });
            AlertDialog alertDialogCreate2 = builder.create();
            alertDialogArr[0] = alertDialogCreate2;
            alertDialogCreate2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda10
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    AndroidUtilities.hideKeyboard(editTextBoldCursor);
                }
            });
            alertDialogArr[0].setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda11
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    BusinessLinksActivity.$r8$lambda$UcDw_lm1x7o2YELRhLAwjiy5CUg(view, editTextBoldCursor, dialogInterface);
                }
            });
            alertDialogArr[0].show();
        }
        alertDialogArr[0].setDismissDialogByButtons(false);
        editTextBoldCursor.setSelection(editTextBoldCursor.getText().length());
    }

    public static /* synthetic */ boolean $r8$lambda$DtBQAB1IVKEeN5sJZ6_I4zgsmCc(EditTextBoldCursor editTextBoldCursor, int i, TL_account.TL_businessChatLink tL_businessChatLink, AlertDialog[] alertDialogArr, View view, TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 6) {
            return false;
        }
        String string = editTextBoldCursor.getText().toString();
        if (string.length() > 32) {
            AndroidUtilities.shakeView(editTextBoldCursor);
            return true;
        }
        BusinessLinksController.getInstance(i).editLinkTitle(tL_businessChatLink.link, string);
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        if (alertDialogArr[0] == currentDialog) {
            currentDialog = null;
        }
        if (view != null) {
            view.requestFocus();
        }
        return true;
    }

    public static /* synthetic */ void $r8$lambda$cxMI8a8s6tOBqxsSlMOAHU39TGw(EditTextBoldCursor editTextBoldCursor, int i, TL_account.TL_businessChatLink tL_businessChatLink, AlertDialog alertDialog, int i2) {
        String string = editTextBoldCursor.getText().toString();
        if (string.length() > 32) {
            AndroidUtilities.shakeView(editTextBoldCursor);
        } else {
            BusinessLinksController.getInstance(i).editLinkTitle(tL_businessChatLink.link, string);
            alertDialog.dismiss();
        }
    }

    public static /* synthetic */ void $r8$lambda$vhM1hkg1IjU1VS1KeY8WYqWMkdE(View view, DialogInterface dialogInterface) {
        currentDialog = null;
        if (view != null) {
            view.requestFocus();
        }
    }

    public static /* synthetic */ void $r8$lambda$uViQvlykjsAe5Vxc8gEsQJWvtWI(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    public static /* synthetic */ void $r8$lambda$JbvWftK4TSlZUFN3lwTgZOzHk8g(View view, EditTextBoldCursor editTextBoldCursor, Runnable runnable) {
        if (view != null) {
            view.requestFocus();
        }
        AndroidUtilities.hideKeyboard(editTextBoldCursor);
        AndroidUtilities.runOnUIThread(runnable, 80L);
    }

    public static /* synthetic */ void $r8$lambda$UcDw_lm1x7o2YELRhLAwjiy5CUg(View view, EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        if (view != null) {
            view.clearFocus();
        }
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    public static boolean closeRenameAlert(boolean z) {
        AlertDialog alertDialog = currentDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return false;
        }
        if (!z) {
            return true;
        }
        currentDialog.dismiss();
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.businessLinksUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.businessLinkCreated);
        getNotificationCenter().addObserver(this, NotificationCenter.needDeleteBusinessLink);
        getNotificationCenter().addObserver(this, NotificationCenter.privacyRulesUpdated);
        BusinessLinksController.getInstance(this.currentAccount).load(true);
        ContactsController.getInstance(this.currentAccount).loadPrivacySettings();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.businessLinksUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.businessLinkCreated);
        getNotificationCenter().removeObserver(this, NotificationCenter.needDeleteBusinessLink);
        getNotificationCenter().removeObserver(this, NotificationCenter.privacyRulesUpdated);
        Bulletin.hideVisible();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        AlertDialog alertDialog = currentDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        currentDialog.dismiss();
        return false;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(C2665R.string.BusinessLinks);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int getPrivacyType(ArrayList<TLRPC.PrivacyRule> arrayList) {
        byte b2 = -1;
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.PrivacyRule privacyRule = arrayList.get(i);
            if (!(privacyRule instanceof TLRPC.TL_privacyValueAllowChatParticipants)) {
                if (!(privacyRule instanceof TLRPC.TL_privacyValueDisallowChatParticipants)) {
                    if (!(privacyRule instanceof TLRPC.TL_privacyValueAllowUsers)) {
                        if (privacyRule instanceof TLRPC.TL_privacyValueDisallowUsers) {
                            z = true;
                        } else if (!(privacyRule instanceof TLRPC.TL_privacyValueAllowPremium) && b2 == -1) {
                            if (privacyRule instanceof TLRPC.TL_privacyValueAllowAll) {
                                b2 = 0;
                            } else {
                                b2 = privacyRule instanceof TLRPC.TL_privacyValueDisallowAll ? (byte) 1 : (byte) 2;
                            }
                        }
                    }
                }
            }
        }
        if (b2 == 0 || (b2 == -1 && z)) {
            return 0;
        }
        return b2 == 2 ? 2 : 1;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        String string;
        arrayList.add(UItem.asTopView(LocaleController.getString(C2665R.string.BusinessLinks), LocaleController.getString(C2665R.string.BusinessLinksInfo), C2665R.raw.biz_links));
        universalAdapter.whiteSectionStart();
        if (BusinessLinksController.getInstance(this.currentAccount).canAddNew()) {
            arrayList.add(UItem.asButton(1, C2665R.drawable.menu_link_create, LocaleController.getString(C2665R.string.BusinessLinksAdd)).accent());
        }
        ArrayList<TL_account.TL_businessChatLink> arrayList2 = BusinessLinksController.getInstance(this.currentAccount).links;
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            TL_account.TL_businessChatLink tL_businessChatLink = arrayList2.get(i2);
            i2++;
            arrayList.add(UItem.asBusinessChatLink(new BusinessLinkWrapper(tL_businessChatLink)));
        }
        universalAdapter.whiteSectionEnd();
        TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        String str = MessagesController.getInstance(this.currentAccount).linkPrefix + "/";
        ArrayList arrayList3 = new ArrayList(2);
        String publicUsername = UserObject.getPublicUsername(currentUser);
        if (publicUsername != null) {
            arrayList3.add(str.concat(publicUsername));
        }
        ArrayList<TLRPC.PrivacyRule> privacyRules = ContactsController.getInstance(this.currentAccount).getPrivacyRules(6);
        ArrayList<TLRPC.PrivacyRule> privacyRules2 = ContactsController.getInstance(this.currentAccount).getPrivacyRules(7);
        if (!TextUtils.isEmpty(currentUser.phone) && privacyRules != null && privacyRules2 != null && (getPrivacyType(privacyRules) != 1 || getPrivacyType(privacyRules2) != 2)) {
            arrayList3.add(str + "+" + currentUser.phone);
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        if (arrayList3.size() == 2) {
            string = LocaleController.formatString(C2665R.string.BusinessLinksFooterTwoLinks, arrayList3.get(0), arrayList3.get(1));
        } else {
            string = LocaleController.formatString(C2665R.string.BusinessLinksFooterOneLink, arrayList3.get(0));
        }
        SpannableString spannableString = new SpannableString(string);
        int size2 = arrayList3.size();
        while (i < size2) {
            Object obj = arrayList3.get(i);
            i++;
            String str2 = (String) obj;
            int iIndexOf = string.indexOf(str2);
            if (iIndexOf > -1) {
                spannableString.setSpan(new URLSpanCopyToClipboard("https://" + str2, this), iIndexOf, str2.length() + iIndexOf, 33);
            }
        }
        arrayList.add(UItem.asShadow(spannableString));
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.id == 1) {
            BusinessLinksController.getInstance(this.currentAccount).createEmptyLink();
            return;
        }
        if (uItem.viewType == 29) {
            Object obj = uItem.object;
            if (obj instanceof BusinessLinkWrapper) {
                Bundle bundle = new Bundle();
                bundle.putInt("chatMode", 6);
                bundle.putString("business_link", ((BusinessLinkWrapper) obj).link.link);
                presentFragment(new ChatActivity(bundle));
            }
        }
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.viewType != 29) {
            return false;
        }
        Object obj = uItem.object;
        if (!(obj instanceof BusinessLinkWrapper)) {
            return false;
        }
        final TL_account.TL_businessChatLink tL_businessChatLink = ((BusinessLinkWrapper) obj).link;
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.add(C2665R.drawable.msg_copy, LocaleController.getString(C2665R.string.Copy), new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BusinessLinksActivity.$r8$lambda$22WngckNHnN_AZ8f8CZXwLcfKho(tL_businessChatLink);
            }
        });
        itemOptionsMakeOptions.add(C2665R.drawable.msg_share, LocaleController.getString(C2665R.string.LinkActionShare), new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$9(tL_businessChatLink);
            }
        });
        itemOptionsMakeOptions.add(C2665R.drawable.msg_edit, LocaleController.getString(C2665R.string.Rename), new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$10(tL_businessChatLink);
            }
        });
        itemOptionsMakeOptions.add(C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.Delete), true, new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$12(tL_businessChatLink);
            }
        });
        itemOptionsMakeOptions.setScrimViewBackground(this.listView.getClipBackground(view));
        itemOptionsMakeOptions.show();
        return true;
    }

    public static /* synthetic */ void $r8$lambda$22WngckNHnN_AZ8f8CZXwLcfKho(TL_account.TL_businessChatLink tL_businessChatLink) {
        AndroidUtilities.addToClipboard(tL_businessChatLink.link);
        BulletinFactory.of(LaunchActivity.getLastFragment()).createCopyLinkBulletin().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$9(TL_account.TL_businessChatLink tL_businessChatLink) {
        Intent intent = new Intent(getContext(), (Class<?>) LaunchActivity.class);
        intent.setAction("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", tL_businessChatLink.link);
        startActivityForResult(intent, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$10(TL_account.TL_businessChatLink tL_businessChatLink) {
        openRenameAlert(getContext(), this.currentAccount, tL_businessChatLink, this.resourceProvider, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$12(final TL_account.TL_businessChatLink tL_businessChatLink) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getContext(), getResourceProvider()).setTitle(LocaleController.getString(C2665R.string.BusinessLinksDeleteTitle)).setMessage(LocaleController.getString(C2665R.string.BusinessLinksDeleteMessage)).setPositiveButton(LocaleController.getString(C2665R.string.Remove), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onLongClick$11(tL_businessChatLink, alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null).create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(getThemedColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$11(TL_account.TL_businessChatLink tL_businessChatLink, AlertDialog alertDialog, int i) {
        BusinessLinksController.getInstance(this.currentAccount).deleteLinkUndoable(this, tL_businessChatLink.link);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalAdapter universalAdapter;
        if (i == NotificationCenter.businessLinksUpdated || i == NotificationCenter.privacyRulesUpdated) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
                return;
            }
            universalAdapter.update(true);
            return;
        }
        if (i == NotificationCenter.businessLinkCreated) {
            TL_account.TL_businessChatLink tL_businessChatLink = (TL_account.TL_businessChatLink) objArr[0];
            Bundle bundle = new Bundle();
            bundle.putInt("chatMode", 6);
            bundle.putString("business_link", tL_businessChatLink.link);
            presentFragment(new ChatActivity(bundle));
            return;
        }
        if (i == NotificationCenter.needDeleteBusinessLink) {
            BusinessLinksController.getInstance(this.currentAccount).deleteLinkUndoable(this, ((TL_account.TL_businessChatLink) objArr[0]).link);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class BusinessLinkWrapper {
        TL_account.TL_businessChatLink link;

        public BusinessLinkWrapper(TL_account.TL_businessChatLink tL_businessChatLink) {
            this.link = tL_businessChatLink;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                BusinessLinkWrapper businessLinkWrapper = (BusinessLinkWrapper) obj;
                TL_account.TL_businessChatLink tL_businessChatLink = this.link;
                int i = tL_businessChatLink.views;
                TL_account.TL_businessChatLink tL_businessChatLink2 = businessLinkWrapper.link;
                if (i == tL_businessChatLink2.views && TextUtils.equals(tL_businessChatLink.link, tL_businessChatLink2.link) && TextUtils.equals(this.link.title, businessLinkWrapper.link.title) && TextUtils.equals(this.link.message, businessLinkWrapper.link.message) && MediaDataController.entitiesEqual(this.link.entities, businessLinkWrapper.link.entities)) {
                    return true;
                }
            }
            return false;
        }
    }

    @SuppressLint({"ViewConstructor"})
    public static class BusinessLinkView extends FrameLayout {
        private TL_account.TL_businessChatLink businessLink;
        private final SimpleTextView clicksCountTextView;
        private final ImageView imageView;
        private final SpoilersTextView messagePreviewTextView;
        private boolean needDivider;
        private final Theme.ResourcesProvider resourcesProvider;
        private final SimpleTextView titleTextView;

        public BusinessLinkView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setWillNotDraw(false);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setImageResource(C2665R.drawable.msg_limit_links);
            imageView.setPadding(AndroidUtilities.dp(9.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(9.0f));
            imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(36.0f), Theme.getColor(Theme.key_featuredStickers_addButton)));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Business.BusinessLinksActivity$BusinessLinkView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            addView(imageView, LayoutHelper.createFrameRelatively(36.0f, 36.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 14.0f, 0.0f, 14.0f, 0.0f));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.titleTextView = simpleTextView;
            simpleTextView.setTextSize(15);
            simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            addView(simpleTextView, LayoutHelper.createFrameRelatively(-1.0f, 20.0f, 55, 64.0f, 10.0f, 14.0f, 0.0f));
            SimpleTextView simpleTextView2 = new SimpleTextView(context);
            this.clicksCountTextView = simpleTextView2;
            simpleTextView2.setTextSize(14);
            int i = Theme.key_windowBackgroundWhiteGrayText2;
            simpleTextView2.setTextColor(Theme.getColor(i));
            simpleTextView2.setGravity(LocaleController.isRTL ? 3 : 5);
            addView(simpleTextView2, LayoutHelper.createFrameRelatively(-1.0f, 18.0f, 55, 64.0f, 10.66f, 14.0f, 0.0f));
            SpoilersTextView spoilersTextView = new SpoilersTextView(context);
            this.messagePreviewTextView = spoilersTextView;
            spoilersTextView.setTextSize(1, 13.0f);
            spoilersTextView.setMaxLines(1);
            spoilersTextView.setEllipsize(TextUtils.TruncateAt.END);
            spoilersTextView.setTextColor(Theme.getColor(i, resourcesProvider));
            spoilersTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            spoilersTextView.allowClickSpoilers = false;
            spoilersTextView.setUseAlphaForEmoji(false);
            NotificationCenter.listenEmojiLoading(spoilersTextView);
            addView(spoilersTextView, LayoutHelper.createFrameRelatively(-1.0f, 20.0f, 87, 64.0f, 0.0f, 14.0f, 6.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            TL_account.TL_businessChatLink tL_businessChatLink = this.businessLink;
            if (tL_businessChatLink != null) {
                AndroidUtilities.addToClipboard(tL_businessChatLink.link);
                BulletinFactory.of(LaunchActivity.getLastFragment()).createCopyLinkBulletin().show();
            }
        }

        public void set(BusinessLinkWrapper businessLinkWrapper, boolean z) {
            this.needDivider = z;
            TL_account.TL_businessChatLink tL_businessChatLink = businessLinkWrapper.link;
            this.businessLink = tL_businessChatLink;
            boolean zIsEmpty = TextUtils.isEmpty(tL_businessChatLink.title);
            SimpleTextView simpleTextView = this.titleTextView;
            if (!zIsEmpty) {
                simpleTextView.setText(this.businessLink.title);
            } else {
                simpleTextView.setText(BusinessLinksController.stripHttps(this.businessLink.link));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.businessLink.message);
            TL_account.TL_businessChatLink tL_businessChatLink2 = this.businessLink;
            MediaDataController.addTextStyleRuns(tL_businessChatLink2.entities, tL_businessChatLink2.message, spannableStringBuilder);
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(spannableStringBuilder, this.messagePreviewTextView.getPaint().getFontMetricsInt(), false);
            MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, this.businessLink.entities, this.messagePreviewTextView.getPaint().getFontMetricsInt());
            this.messagePreviewTextView.setText(charSequenceReplaceEmoji);
            int i = this.businessLink.views;
            SimpleTextView simpleTextView2 = this.clicksCountTextView;
            if (i == 0) {
                simpleTextView2.setText(LocaleController.formatString(C2665R.string.NoClicks, new Object[0]));
            } else {
                simpleTextView2.setText(LocaleController.formatPluralString("Clicks", i, new Object[0]));
            }
            this.clicksCountTextView.requestLayout();
            invalidate();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.needDivider) {
                Paint themePaint = Theme.getThemePaint("paintDivider", this.resourcesProvider);
                if (themePaint == null) {
                    themePaint = Theme.dividerPaint;
                }
                canvas.drawRect(AndroidUtilities.dp(LocaleController.isRTL ? 0.0f : 64.0f), getMeasuredHeight() - 1, getWidth() - AndroidUtilities.dp(LocaleController.isRTL ? 64.0f : 0.0f), getMeasuredHeight(), themePaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(56.0f) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            boolean z2 = LocaleController.isRTL;
            SimpleTextView simpleTextView = this.titleTextView;
            if (z2) {
                simpleTextView.setPadding(this.clicksCountTextView.getTextWidth(), 0, 0, 0);
            } else {
                simpleTextView.setPadding(0, 0, this.clicksCountTextView.getTextWidth(), 0);
            }
        }
    }
}
