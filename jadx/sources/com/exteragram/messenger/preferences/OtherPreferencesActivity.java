package com.exteragram.messenger.preferences;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.TextView;
import com.android.tools.p007r8.RecordTag;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.p010db.DatabaseHelper;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.BoostyBottomSheet;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.export.p011ui.ExportActivity;
import com.exteragram.messenger.p008ai.p009ui.AbstractC1011x1d8a54ff;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticBackport1;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.system.VibratorUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LinkifyPort;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import p022j$.util.Collection;
import p022j$.util.Objects;
import p022j$.util.function.Consumer$CC;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes.dex */
public class OtherPreferencesActivity extends BasePreferencesActivity {
    private List donates = new ArrayList();
    private final List subscribers = new ArrayList();

    public static List getDonates() {
        Set stringSetConfigValue = RemoteUtils.getStringSetConfigValue("donates", Collections.EMPTY_SET);
        ArrayList arrayList = new ArrayList();
        Iterator it = stringSetConfigValue.iterator();
        while (it.hasNext()) {
            String[] strArrSplit = ((String) it.next()).split("#");
            if (strArrSplit.length == 2) {
                arrayList.add(new Donate(strArrSplit[0], strArrSplit[1]));
            }
        }
        return arrayList;
    }

    public enum OtherItem {
        CRASHLYTICS,
        ANALYTICS,
        EXPORT_SETTINGS,
        EXPORT_DATA,
        RESET_SETTINGS,
        DELETE_ACCOUNT,
        DONATE;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        final List list = this.subscribers;
        Objects.requireNonNull(list);
        DatabaseHelper.getBoostySubscribers(new Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                list.addAll((List) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        return super.createView(context);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.LocalOther);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        Map mapM253m = PluginsController$$ExternalSyntheticBackport1.m253m(new Map.Entry[]{new AbstractMap.SimpleEntry("mastercard", new IconInfo(C2888R.drawable.mastercard_icon, Theme.isCurrentThemeDark() ? -1 : -16777216)), new AbstractMap.SimpleEntry("tonkeeper", new IconInfo(C2888R.drawable.ton_icon, Theme.isCurrentThemeDark() ? -14207411 : -15722977)), new AbstractMap.SimpleEntry("space", new IconInfo(C2888R.drawable.ton_space_icon, -13587978)), new AbstractMap.SimpleEntry("boosty", new IconInfo(C2888R.drawable.boosty_icon, Theme.isCurrentThemeDark() ? -1118482 : -14406868))});
        List donates = getDonates();
        this.donates = donates;
        if (!donates.isEmpty()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Support)));
            int i = 0;
            for (int i2 = 0; i2 < this.donates.size(); i2++) {
                Donate donate = (Donate) this.donates.get(i2);
                String lowerCase = donate.name().toLowerCase();
                IconInfo iconInfo = new IconInfo(C2888R.drawable.msg_payment_card, i);
                Iterator it = mapM253m.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (lowerCase.contains((CharSequence) entry.getKey())) {
                        iconInfo = (IconInfo) entry.getValue();
                        break;
                    }
                }
                UItem searchable = UItem.asButton(OtherItem.DONATE.getId() + i2, donate.name()).setSearchable(this);
                if (iconInfo.iconColor == 0) {
                    searchable.setIcon(iconInfo.iconResId);
                } else {
                    searchable.setColorfulIcon(iconInfo.iconResId, iconInfo.iconColor);
                }
                arrayList.add(searchable);
            }
            arrayList.add(UItem.asShadow(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.GetBadgeInfo), new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fillItems$0();
                }
            })));
        }
        arrayList.add(UItem.asHeader("Google"));
        arrayList.add(UItem.asCheck(OtherItem.CRASHLYTICS.getId(), "Crashlytics", C2888R.drawable.msg_report).setChecked(ExteraConfig.useGoogleCrashlytics).setSearchable(this).setLinkAlias("crashlytics", this));
        arrayList.add(UItem.asCheck(OtherItem.ANALYTICS.getId(), "Analytics", C2888R.drawable.msg_data).setChecked(ExteraConfig.useGoogleAnalytics).setSearchable(this).setLinkAlias("analytics", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.AnalyticsInfo)));
        arrayList.add(UItem.asButton(OtherItem.EXPORT_SETTINGS.getId(), C2888R.drawable.msg_settings, LocaleController.getString(C2888R.string.ExportSettings)).setSearchable(this).setLinkAlias("exportSettings", this));
        int iCount = (int) Collection.EL.stream(PluginsController.getInstance().plugins.values()).filter(new Predicate() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda2
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m268or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Plugin) obj).isEnabled();
            }
        }).count();
        if (BadgesController.INSTANCE.isDeveloper() && iCount <= 1) {
            arrayList.add(UItem.asButton(OtherItem.EXPORT_DATA.getId(), C2888R.drawable.msg_archive, LocaleController.getString(C2888R.string.ExportData)).setSearchable(this).setLinkAlias("exportData", this));
        }
        arrayList.add(UItem.asButton(OtherItem.RESET_SETTINGS.getId(), C2888R.drawable.msg_reset, LocaleController.getString(C2888R.string.ResetSettings)).setSearchable(this).setLinkAlias("resetSettings", this));
        arrayList.add(UItem.asButton(OtherItem.DELETE_ACCOUNT.getId(), C2888R.drawable.msg_clearcache, LocaleController.getString(C2888R.string.DeleteAccount)).red().setSearchable(this).setLinkAlias("deleteAccount", this));
        arrayList.add(UItem.asShadow());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$0() {
        SupporterBottomSheet.showAlert(this, null);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        OtherItem otherItem = OtherItem.DONATE;
        if (i2 >= otherItem.getId() && i2 < otherItem.getId() + this.donates.size()) {
            return handleDonateLongClick(uItem, view);
        }
        return super.onLongClick(uItem, view, i, f, f2);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        OtherItem otherItem = OtherItem.DONATE;
        if (i2 >= otherItem.getId() && i2 < otherItem.getId() + this.donates.size()) {
            handleDonateClick((Donate) this.donates.get(i2 - otherItem.getId()));
            return;
        }
        if (i2 <= 0 || i2 >= otherItem.getId()) {
            return;
        }
        int iOrdinal = OtherItem.values()[i2 - 1].ordinal();
        if (iOrdinal == 0) {
            toggleBooleanSettingAndRefresh("useGoogleCrashlytics", uItem, new com.google.android.exoplayer2.util.Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda3
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ExteraConfig.useGoogleCrashlytics = ((Boolean) obj).booleanValue();
                }
            });
            handleCrashlyticsClick();
            return;
        }
        if (iOrdinal == 1) {
            toggleBooleanSettingAndRefresh("useGoogleAnalytics", uItem, new com.google.android.exoplayer2.util.Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda4
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ExteraConfig.useGoogleAnalytics = ((Boolean) obj).booleanValue();
                }
            });
            handleAnalyticsClick();
            return;
        }
        if (iOrdinal == 2) {
            PreferencesUtils.getInstance().exportSettings(this);
            return;
        }
        if (iOrdinal == 3) {
            presentFragment(new ExportActivity(null));
        } else if (iOrdinal == 4) {
            handleResetSettingsClick();
        } else {
            if (iOrdinal != 5) {
                return;
            }
            handleDeleteAccountClick();
        }
    }

    private void handleCrashlyticsClick() {
        FirebaseCrashlytics firebaseCrashlytics = ApplicationLoader.getFirebaseCrashlytics();
        if (firebaseCrashlytics != null) {
            firebaseCrashlytics.setCrashlyticsCollectionEnabled(ExteraConfig.useGoogleCrashlytics);
        }
    }

    private void handleAnalyticsClick() {
        FirebaseAnalytics firebaseAnalytics = ApplicationLoader.getFirebaseAnalytics();
        if (firebaseAnalytics != null) {
            firebaseAnalytics.setAnalyticsCollectionEnabled(ExteraConfig.useGoogleAnalytics);
            if (ExteraConfig.useGoogleAnalytics) {
                return;
            }
            firebaseAnalytics.resetAnalyticsData();
        }
    }

    private void handleResetSettingsClick() {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ResetPreferencesInfo))).setTitle(LocaleController.getString(C2888R.string.ResetSettings)).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2888R.string.Reset), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$handleResetSettingsClick$3(alertDialog, i);
            }
        }).create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleResetSettingsClick$3(AlertDialog alertDialog, int i) {
        PreferencesUtils.clearPreferences();
        this.parentLayout.rebuildAllFragmentViews(false, false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        LocaleController.getInstance().recreateFormatters();
        Theme.reloadAllResources(getParentActivity());
        BulletinFactory.m1246of(this).createErrorBulletin(LocaleController.getString(C2888R.string.ResetPreferences), getResourceProvider()).show();
    }

    private void handleDeleteAccountClick() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(LocaleController.getString(C2888R.string.TosDeclineDeleteAccount));
        builder.setTitle(LocaleController.getString(C2888R.string.DeleteAccount));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Deactivate), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$handleDeleteAccountClick$7(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$handleDeleteAccountClick$8(alertDialogCreate, dialogInterface);
            }
        });
        showDialog(alertDialogCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$7(AlertDialog alertDialog, int i) {
        final AlertDialog alertDialog2 = new AlertDialog(getParentActivity(), 3);
        alertDialog2.setCanCancel(false);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleDeleteAccountClick$6(alertDialog2);
            }
        }, 500L);
        alertDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$6(final AlertDialog alertDialog) {
        TL_account.deleteAccount deleteaccount = new TL_account.deleteAccount();
        deleteaccount.reason = "ЭКСТЕРАГРАМ";
        getConnectionsManager().sendRequest(deleteaccount, new RequestDelegate() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$handleDeleteAccountClick$5(alertDialog, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$5(final AlertDialog alertDialog, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleDeleteAccountClick$4(alertDialog, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$4(AlertDialog alertDialog, TLObject tLObject, TLRPC.TL_error tL_error) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            getMessagesController().performLogout(0);
            return;
        }
        if (tL_error == null || tL_error.code != -1000) {
            String string = LocaleController.getString(C2888R.string.ErrorOccurred);
            if (tL_error != null) {
                string = string + "\n" + tL_error.text;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2888R.string.AppName));
            builder.setMessage(string);
            builder.setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null);
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$8(AlertDialog alertDialog, DialogInterface dialogInterface) {
        final TextView textView = (TextView) alertDialog.getButton(-1);
        textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        textView.setEnabled(false);
        final CharSequence text = textView.getText();
        new CountDownTimer(30000L, 100L) { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity.1
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                textView.setText(String.format(Locale.getDefault(), "%s • %d", text, Long.valueOf((j / 1000) + 1)));
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                textView.setText(text);
                textView.setEnabled(true);
            }
        }.start();
    }

    private void handleDonateClick(final Donate donate) {
        if (donate.name().toLowerCase().contains("ton")) {
            String str = "ton://transfer/" + donate.details() + "?text=" + String.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId());
            if (!Browser.isInternalUri(Uri.parse(str), new boolean[]{false})) {
                Browser.openUrl(getParentActivity(), str);
                return;
            } else {
                if (AndroidUtilities.addToClipboard(donate.details())) {
                    BulletinFactory.m1246of(this).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
                    return;
                }
                return;
            }
        }
        if (donate.name().toLowerCase().contains("boosty") && !this.subscribers.isEmpty()) {
            if (getParentActivity() == null) {
                return;
            }
            showDialog(new BoostyBottomSheet(getParentActivity(), this.subscribers) { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity.2
                @Override // com.exteragram.messenger.components.BoostyBottomSheet
                protected void onButtonClick() {
                    Browser.openUrl(OtherPreferencesActivity.this.getParentActivity(), donate.details());
                }
            });
        } else if (LinkifyPort.WEB_URL.matcher(donate.details()).matches()) {
            Browser.openUrl(getParentActivity(), donate.details());
        } else if (AndroidUtilities.addToClipboard(donate.details())) {
            BulletinFactory.m1246of(this).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
        }
    }

    private boolean handleDonateLongClick(UItem uItem, View view) {
        if (AndroidUtilities.addToClipboard(((Donate) this.donates.get(uItem.f2105id - OtherItem.DONATE.getId())).details())) {
            BulletinFactory.m1246of(this).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
        }
        view.performHapticFeedback(VibratorUtils.getType(3), 1);
        return false;
    }

    private static final class IconInfo extends RecordTag {
        private final int iconColor;
        private final int iconResId;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof IconInfo)) {
                return false;
            }
            IconInfo iconInfo = (IconInfo) obj;
            return this.iconResId == iconInfo.iconResId && this.iconColor == iconInfo.iconColor;
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{Integer.valueOf(this.iconResId), Integer.valueOf(this.iconColor)};
        }

        private IconInfo(int i, int i2) {
            this.iconResId = i;
            this.iconColor = i2;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return OtherPreferencesActivity$IconInfo$$ExternalSyntheticRecord0.m270m(this.iconResId, this.iconColor);
        }

        public final String toString() {
            return AbstractC1011x1d8a54ff.m224m($record$getFieldsAsObjects(), IconInfo.class, "iconResId;iconColor");
        }
    }

    public static final class Donate extends RecordTag {
        private final String details;
        private final String name;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof Donate)) {
                return false;
            }
            Donate donate = (Donate) obj;
            return Objects.equals(this.name, donate.name) && Objects.equals(this.details, donate.details);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.name, this.details};
        }

        public Donate(String str, String str2) {
            this.name = str;
            this.details = str2;
        }

        public String details() {
            return this.details;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return OtherPreferencesActivity$Donate$$ExternalSyntheticRecord0.m269m(this.name, this.details);
        }

        public String name() {
            return this.name;
        }

        public final String toString() {
            return AbstractC1011x1d8a54ff.m224m($record$getFieldsAsObjects(), Donate.class, "name;details");
        }
    }
}
