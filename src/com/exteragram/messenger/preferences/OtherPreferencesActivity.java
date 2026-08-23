package com.exteragram.messenger.preferences;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.TextView;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord0;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.api.db.DatabaseHelper;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.BoostyBottomSheet;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.export.ui.ExportActivity;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.system.VibratorUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LinkifyPort;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class OtherPreferencesActivity extends BasePreferencesActivity {
    private List<Donate> donates = new ArrayList();
    private final List<BoostySubscriberDTO> subscribers = new ArrayList();

    public static List<Donate> getDonates() {
        Set<String> stringSetConfigValue = RemoteUtils.getStringSetConfigValue("donates", Collections.EMPTY_SET);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = stringSetConfigValue.iterator();
        while (it.hasNext()) {
            String[] strArrSplit = it.next().split("#");
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

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        final List<BoostySubscriberDTO> list = this.subscribers;
        Objects.requireNonNull(list);
        DatabaseHelper.getBoostySubscribers(new Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                list.addAll((List) obj);
            }
        });
        return super.createView(context);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2573R.string.LocalOther);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        Map mapM231m = OtherPreferencesActivity$$ExternalSyntheticBackport1.m231m(new Map.Entry[]{new AbstractMap.SimpleEntry("mastercard", new IconInfo(C2573R.drawable.mastercard_icon, Theme.isCurrentThemeDark() ? -1 : -16777216)), new AbstractMap.SimpleEntry("tonkeeper", new IconInfo(C2573R.drawable.ton_icon, Theme.isCurrentThemeDark() ? -14207411 : -15722977)), new AbstractMap.SimpleEntry("space", new IconInfo(C2573R.drawable.ton_space_icon, -13587978)), new AbstractMap.SimpleEntry("boosty", new IconInfo(C2573R.drawable.boosty_icon, Theme.isCurrentThemeDark() ? -1118482 : -14406868))});
        List<Donate> donates = getDonates();
        this.donates = donates;
        if (!donates.isEmpty()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.Support)));
            int i = 0;
            for (int i2 = 0; i2 < this.donates.size(); i2++) {
                Donate donate = this.donates.get(i2);
                String lowerCase = donate.name().toLowerCase();
                IconInfo iconInfo = new IconInfo(C2573R.drawable.msg_payment_card, i);
                Iterator it = mapM231m.entrySet().iterator();
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
            arrayList.add(UItem.asShadow(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.GetBadgeInfo), new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fillItems$0();
                }
            })));
        }
        arrayList.add(UItem.asHeader("Google"));
        arrayList.add(UItem.asCheck(OtherItem.CRASHLYTICS.getId(), "Crashlytics", C2573R.drawable.msg_report).setChecked(ExteraConfig.getUseGoogleCrashlytics()).setSearchable(this).setLinkAlias("crashlytics", this));
        arrayList.add(UItem.asCheck(OtherItem.ANALYTICS.getId(), "Analytics", C2573R.drawable.msg_data).setChecked(ExteraConfig.getUseGoogleAnalytics()).setSearchable(this).setLinkAlias("analytics", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.AnalyticsInfo)));
        arrayList.add(UItem.asButton(OtherItem.EXPORT_SETTINGS.getId(), C2573R.drawable.msg_settings, LocaleController.getString(C2573R.string.ExportSettings)).setSearchable(this).setLinkAlias("exportSettings", this));
        int iCount = (int) PluginsController.getInstance().getPlugins().values().stream().filter(new Predicate() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Plugin) obj).isEnabled();
            }
        }).count();
        if (BadgesController.INSTANCE.isDeveloper() && iCount <= 1) {
            arrayList.add(UItem.asButton(OtherItem.EXPORT_DATA.getId(), C2573R.drawable.msg_archive, LocaleController.getString(C2573R.string.ExportData)).setSearchable(this).setLinkAlias("exportData", this));
        }
        arrayList.add(UItem.asButton(OtherItem.RESET_SETTINGS.getId(), C2573R.drawable.msg_reset, LocaleController.getString(C2573R.string.ResetSettings)).setSearchable(this).setLinkAlias("resetSettings", this));
        arrayList.add(UItem.asButton(OtherItem.DELETE_ACCOUNT.getId(), C2573R.drawable.msg_clearcache, LocaleController.getString(C2573R.string.DeleteAccount)).red().setSearchable(this).setLinkAlias("deleteAccount", this));
        arrayList.add(UItem.asShadow());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$0() {
        SupporterBottomSheet.showAlert(this, null);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        OtherItem otherItem = OtherItem.DONATE;
        if (i2 >= otherItem.getId() && i2 < otherItem.getId() + this.donates.size()) {
            return handleDonateLongClick(uItem, view);
        }
        return super.onLongClick(uItem, view, i, f, f2);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        OtherItem otherItem = OtherItem.DONATE;
        if (i2 >= otherItem.getId() && i2 < otherItem.getId() + this.donates.size()) {
            handleDonateClick(this.donates.get(i2 - otherItem.getId()));
        }
        if (i2 <= 0 || i2 >= otherItem.getId()) {
            return;
        }
        switch (C11583.f196x634c182a[OtherItem.values()[i2 - 1].ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh(uItem, new com.google.android.exoplayer2.util.Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUseGoogleCrashlytics(((Boolean) obj).booleanValue());
                    }
                });
                handleCrashlyticsClick();
                break;
            case 2:
                toggleBooleanSettingAndRefresh(uItem, new com.google.android.exoplayer2.util.Consumer() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUseGoogleAnalytics(((Boolean) obj).booleanValue());
                    }
                });
                handleAnalyticsClick();
                break;
            case 3:
                handleResetSettingsClick();
                break;
            case 4:
                handleDeleteAccountClick();
                break;
            case 5:
                PreferencesUtils.getInstance().exportSettings(this);
                break;
            case 6:
                presentFragment(new ExportActivity(null));
                break;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.OtherPreferencesActivity$3 */
    public static /* synthetic */ class C11583 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$preferences$OtherPreferencesActivity$OtherItem */
        static final /* synthetic */ int[] f196x634c182a;

        static {
            int[] iArr = new int[OtherItem.values().length];
            f196x634c182a = iArr;
            try {
                iArr[OtherItem.CRASHLYTICS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f196x634c182a[OtherItem.ANALYTICS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f196x634c182a[OtherItem.RESET_SETTINGS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f196x634c182a[OtherItem.DELETE_ACCOUNT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f196x634c182a[OtherItem.EXPORT_SETTINGS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f196x634c182a[OtherItem.EXPORT_DATA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void handleCrashlyticsClick() {
        FirebaseCrashlytics firebaseCrashlytics = ApplicationLoader.getFirebaseCrashlytics();
        if (firebaseCrashlytics != null) {
            firebaseCrashlytics.setCrashlyticsCollectionEnabled(ExteraConfig.getUseGoogleCrashlytics());
        }
    }

    private void handleAnalyticsClick() {
        FirebaseAnalytics firebaseAnalytics = ApplicationLoader.getFirebaseAnalytics();
        if (firebaseAnalytics != null) {
            firebaseAnalytics.setAnalyticsCollectionEnabled(ExteraConfig.getUseGoogleAnalytics());
            if (ExteraConfig.getUseGoogleAnalytics()) {
                return;
            }
            firebaseAnalytics.resetAnalyticsData();
        }
    }

    private void handleResetSettingsClick() {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2573R.string.ResetPreferencesInfo))).setTitle(LocaleController.getString(C2573R.string.ResetSettings)).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2573R.string.Reset), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$handleResetSettingsClick$1(alertDialog, i);
            }
        }).create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleResetSettingsClick$1(AlertDialog alertDialog, int i) {
        PreferencesUtils.clearPreferences();
        this.parentLayout.rebuildFragments(0);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        LocaleController.getInstance().recreateFormatters();
        Theme.reloadAllResources(getParentActivity());
        BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2573R.string.ResetPreferences), getResourceProvider()).show();
    }

    private void handleDeleteAccountClick() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(LocaleController.getString(C2573R.string.TosDeclineDeleteAccount));
        builder.setTitle(LocaleController.getString(C2573R.string.DeleteAccount));
        builder.setPositiveButton(LocaleController.getString(C2573R.string.Deactivate), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$handleDeleteAccountClick$5(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$handleDeleteAccountClick$6(alertDialogCreate, dialogInterface);
            }
        });
        showDialog(alertDialogCreate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$5(AlertDialog alertDialog, int i) {
        final AlertDialog alertDialog2 = new AlertDialog(getParentActivity(), 3);
        alertDialog2.setCanCancel(false);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleDeleteAccountClick$4(alertDialog2);
            }
        }, 500L);
        alertDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$4(final AlertDialog alertDialog) {
        TL_account.deleteAccount deleteaccount = new TL_account.deleteAccount();
        deleteaccount.reason = "ЭКСТЕРАГРАМ";
        getConnectionsManager().sendRequest(deleteaccount, new RequestDelegate() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$handleDeleteAccountClick$3(alertDialog, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$3(final AlertDialog alertDialog, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleDeleteAccountClick$2(alertDialog, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$2(AlertDialog alertDialog, TLObject tLObject, TLRPC.TL_error tL_error) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            getMessagesController().performLogout(0);
            return;
        }
        if (tL_error == null || tL_error.code != -1000) {
            String string = LocaleController.getString(C2573R.string.ErrorOccurred);
            if (tL_error != null) {
                string = string + "\n" + tL_error.text;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2573R.string.AppName));
            builder.setMessage(string);
            builder.setPositiveButton(LocaleController.getString(C2573R.string.OK), null);
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteAccountClick$6(AlertDialog alertDialog, DialogInterface dialogInterface) {
        final TextView textView = (TextView) alertDialog.getButton(-1);
        textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        textView.setEnabled(false);
        final CharSequence text = textView.getText();
        new CountDownTimer(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, 100L) { // from class: com.exteragram.messenger.preferences.OtherPreferencesActivity.1
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
                    BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2573R.string.TextCopied)).show();
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
                public void onButtonClick() {
                    Browser.openUrl(OtherPreferencesActivity.this.getParentActivity(), donate.details());
                }
            });
        } else if (LinkifyPort.WEB_URL.matcher(donate.details()).matches()) {
            Browser.openUrl(getParentActivity(), donate.details());
        } else if (AndroidUtilities.addToClipboard(donate.details())) {
            BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2573R.string.TextCopied)).show();
        }
    }

    private boolean handleDonateLongClick(UItem uItem, View view) {
        if (AndroidUtilities.addToClipboard(this.donates.get(uItem.id - OtherItem.DONATE.getId()).details())) {
            BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2573R.string.TextCopied)).show();
        }
        view.performHapticFeedback(VibratorUtils.getType(3), 1);
        return false;
    }

    public static final class IconInfo extends RecordTag {
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
            return OtherPreferencesActivity$IconInfo$$ExternalSyntheticRecord0.m232m(this.iconResId, this.iconColor);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m203m($record$getFieldsAsObjects(), IconInfo.class, "iconResId;iconColor");
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
            return Client$ImagePayload$$ExternalSyntheticRecord0.m202m(this.name, this.details);
        }

        public String name() {
            return this.name;
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m203m($record$getFieldsAsObjects(), Donate.class, "name;details");
        }
    }
}
