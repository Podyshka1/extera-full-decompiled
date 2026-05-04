package org.telegram.p029ui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotForumHelper$$ExternalSyntheticLambda2;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.CheckBoxCell;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.RadioColorCell;
import org.telegram.p029ui.Cells.ShadowSectionCell;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Cells.TextSettingsCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.PremiumGradient;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.TextStyleSpan;
import org.telegram.p029ui.SessionsActivity;
import org.telegram.p029ui.bots.BotBiometry;
import org.telegram.p029ui.bots.BotBiometrySettings;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class PrivacySettingsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private static SpannableString premiumStar;
    private int advancedSectionRow;
    private boolean archiveChats;

    @Keep
    private int autoDeleteMesages;

    @Keep
    private int bioRow;

    @Keep
    private int birthdayRow;

    @Keep
    private int blockedRow;
    private int botsAndWebsitesShadowRow;
    private int botsBiometryRow;
    private int botsDetailRow;
    private int botsSectionRow;

    @Keep
    private int callsRow;

    @Keep
    private int contactsDeleteRow;
    private int contactsDetailRow;
    private int contactsSectionRow;

    @Keep
    private int contactsSuggestRow;

    @Keep
    private int contactsSyncRow;
    public ArrayList currentPasskeys;
    private TL_account.Password currentPassword;
    private boolean currentSuggest;
    private boolean currentSync;
    private int deleteAccountDetailRow;

    @Keep
    private int deleteAccountRow;
    private boolean deleteAccountUpdate;
    private SessionsActivity devicesActivityPreload;

    @Keep
    private int emailLoginRow;
    private boolean feeValue;

    @Keep
    private int forwardsRow;

    @Keep
    private int giftsRow;
    private int groupsDetailRow;
    private int groupsRow;

    @Keep
    private int lastSeenRow;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;

    @Keep
    private int musicRow;
    private int newChatsHeaderRow;

    @Keep
    private int newChatsRow;
    private int newChatsSectionRow;
    private boolean newSuggest;
    private boolean newSync;

    @Keep
    private int noncontactsRow;
    private boolean noncontactsValue;

    @Keep
    private int passcodeRow;

    @Keep
    private int passkeysRow;
    private int passportRow;

    @Keep
    private int passwordRow;

    @Keep
    private int paymentsClearRow;

    @Keep
    private int phoneNumberRow;
    private int privacySectionRow;
    private int privacyShadowRow;

    @Keep
    private int profilePhotoRow;
    private AlertDialog progressDialog;
    private int rowCount;
    private int secretDetailRow;

    @Keep
    private int secretMapRow;
    private boolean secretMapUpdate;
    private int secretSectionRow;

    @Keep
    private int secretWebpageRow;
    private int securitySectionRow;
    private int sessionsDetailRow;
    private int sessionsRow;

    @Keep
    private int voicesRow;
    private SessionsActivity webSessionsActivityPreload;

    @Keep
    private int webSessionsRow;
    private final ArrayList biometryBots = new ArrayList();
    private boolean[] clear = new boolean[2];

    /* JADX INFO: renamed from: $r8$lambda$DPP8-PtFa-lvDYsSlbRJJHb1FeA, reason: not valid java name */
    public static /* synthetic */ void m17052$r8$lambda$DPP8PtFalvDYsSlbRJJHb1FeA(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$nCUBhXGADMz2X7VlwI6Kii7dtoM(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$ozrsefcIfWZf5i3CX7ZHyh19qJA(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        getContactsController().loadPrivacySettings();
        getMessagesController().getBlockedPeers(true);
        boolean z = getUserConfig().syncContacts;
        this.newSync = z;
        this.currentSync = z;
        boolean z2 = getUserConfig().suggestContacts;
        this.newSuggest = z2;
        this.currentSuggest = z2;
        TLRPC.GlobalPrivacySettings globalPrivacySettings = getContactsController().getGlobalPrivacySettings();
        if (globalPrivacySettings != null) {
            this.archiveChats = globalPrivacySettings.archive_and_mute_new_noncontact_peers;
            this.noncontactsValue = globalPrivacySettings.new_noncontact_peers_require_premium;
            this.feeValue = (globalPrivacySettings.flags & 32) != 0;
        }
        updateRows();
        loadPasswordSettings();
        loadPasskeys();
        getNotificationCenter().addObserver(this, NotificationCenter.privacyRulesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.blockedUsersDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.didSetOrRemoveTwoStepPassword);
        getNotificationCenter().addObserver(this, NotificationCenter.didUpdateGlobalAutoDeleteTimer);
        getUserConfig().loadGlobalTTl();
        SessionsActivity sessionsActivity = new SessionsActivity(0);
        this.devicesActivityPreload = sessionsActivity;
        sessionsActivity.setDelegate(new SessionsActivity.Delegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.SessionsActivity.Delegate
            public final void sessionsLoaded() {
                this.f$0.lambda$onFragmentCreate$0();
            }
        });
        this.devicesActivityPreload.lambda$loadSessions$17(false);
        SessionsActivity sessionsActivity2 = new SessionsActivity(1);
        this.webSessionsActivityPreload = sessionsActivity2;
        sessionsActivity2.setDelegate(new SessionsActivity.Delegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.SessionsActivity.Delegate
            public final void sessionsLoaded() {
                this.f$0.lambda$onFragmentCreate$1();
            }
        });
        this.webSessionsActivityPreload.lambda$loadSessions$17(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$0() {
        int i;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter == null || (i = this.sessionsRow) < 0) {
            return;
        }
        listAdapter.notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$1() {
        if (this.listAdapter != null) {
            int sessionsCount = this.webSessionsActivityPreload.getSessionsCount();
            if (this.webSessionsRow >= 0 || sessionsCount <= 0) {
                return;
            }
            updateRows();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00cc  */
    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onFragmentDestroy() {
        boolean z;
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.privacyRulesUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.blockedUsersDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.didSetOrRemoveTwoStepPassword);
        getNotificationCenter().removeObserver(this, NotificationCenter.didUpdateGlobalAutoDeleteTimer);
        boolean z2 = true;
        if (this.currentSync != this.newSync) {
            UserConfig userConfig = getUserConfig();
            boolean z3 = this.newSync;
            userConfig.syncContacts = z3;
            if (z3 && ContactsController.hasContactsPermission()) {
                getContactsController().forceImportContacts();
                if (getParentActivity() != null) {
                    Toast.makeText(getParentActivity(), LocaleController.getString("SyncContactsAdded", C2888R.string.SyncContactsAdded), 0).show();
                }
            }
            z = true;
        } else {
            z = false;
        }
        boolean z4 = this.newSuggest;
        if (z4 != this.currentSuggest) {
            if (!z4) {
                getMediaDataController().clearTopPeers();
            }
            getUserConfig().suggestContacts = this.newSuggest;
            TLRPC.TL_contacts_toggleTopPeers tL_contacts_toggleTopPeers = new TLRPC.TL_contacts_toggleTopPeers();
            tL_contacts_toggleTopPeers.enabled = this.newSuggest;
            getConnectionsManager().sendRequest(tL_contacts_toggleTopPeers, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    PrivacySettingsActivity.$r8$lambda$ozrsefcIfWZf5i3CX7ZHyh19qJA(tLObject, tL_error);
                }
            });
            z = true;
        }
        TLRPC.GlobalPrivacySettings globalPrivacySettings = getContactsController().getGlobalPrivacySettings();
        if (globalPrivacySettings != null) {
            boolean z5 = globalPrivacySettings.archive_and_mute_new_noncontact_peers;
            boolean z6 = this.archiveChats;
            if (z5 != z6) {
                globalPrivacySettings.archive_and_mute_new_noncontact_peers = z6;
                TL_account.setGlobalPrivacySettings setglobalprivacysettings = new TL_account.setGlobalPrivacySettings();
                TLRPC.GlobalPrivacySettings globalPrivacySettings2 = getContactsController().getGlobalPrivacySettings();
                setglobalprivacysettings.settings = globalPrivacySettings2;
                if (globalPrivacySettings2 == null) {
                    setglobalprivacysettings.settings = new TLRPC.TL_globalPrivacySettings();
                }
                setglobalprivacysettings.settings.archive_and_mute_new_noncontact_peers = this.archiveChats;
                getConnectionsManager().sendRequest(setglobalprivacysettings, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        PrivacySettingsActivity.$r8$lambda$nCUBhXGADMz2X7VlwI6Kii7dtoM(tLObject, tL_error);
                    }
                });
            } else {
                z2 = z;
            }
        }
        if (z2) {
            getUserConfig().saveConfig(false);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.PrivacySettings));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PrivacySettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    PrivacySettingsActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false) { // from class: org.telegram.ui.PrivacySettingsActivity.2
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }
        };
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutAnimation(null);
        this.listView.setItemAnimator(null);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$createView$20(context, view, i);
            }
        });
        BotBiometry.getBots(getContext(), this.currentAccount, new Utilities.Callback() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createView$21((ArrayList) obj);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$20(Context context, View view, int i) {
        String string;
        String str;
        if (view.isEnabled()) {
            if (i == this.autoDeleteMesages) {
                if (getUserConfig().getGlobalTTl() >= 0) {
                    presentFragment(new AutoDeleteMessagesActivity());
                    return;
                }
                return;
            }
            if (i == this.blockedRow) {
                presentFragment(new PrivacyUsersActivity());
                return;
            }
            if (i == this.sessionsRow) {
                this.devicesActivityPreload.resetFragment();
                presentFragment(this.devicesActivityPreload);
                return;
            }
            if (i == this.webSessionsRow) {
                this.webSessionsActivityPreload.resetFragment();
                presentFragment(this.webSessionsActivityPreload);
                return;
            }
            int i2 = 4;
            if (i == this.deleteAccountRow) {
                if (getParentActivity() == null) {
                    return;
                }
                int deleteAccountTTL = getContactsController().getDeleteAccountTTL();
                if (deleteAccountTTL <= 31) {
                    i2 = 0;
                } else if (deleteAccountTTL <= 93) {
                    i2 = 1;
                } else if (deleteAccountTTL <= 182) {
                    i2 = 2;
                } else if (deleteAccountTTL != 548) {
                    i2 = deleteAccountTTL == 730 ? 5 : 3;
                }
                final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString("DeleteAccountTitle", C2888R.string.DeleteAccountTitle));
                String[] strArr = {LocaleController.formatPluralString("Months", 1, new Object[0]), LocaleController.formatPluralString("Months", 3, new Object[0]), LocaleController.formatPluralString("Months", 6, new Object[0]), LocaleController.formatPluralString("Months", 12, new Object[0]), LocaleController.formatPluralString("Months", 18, new Object[0]), LocaleController.formatPluralString("Months", 24, new Object[0])};
                LinearLayout linearLayout = new LinearLayout(getParentActivity());
                linearLayout.setOrientation(1);
                builder.setView(linearLayout);
                int i3 = 0;
                while (i3 < 6) {
                    RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
                    radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
                    radioColorCell.setTag(Integer.valueOf(i3));
                    radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                    radioColorCell.setTextAndValue(strArr[i3], i2 == i3);
                    linearLayout.addView(radioColorCell);
                    radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$6(builder, view2);
                        }
                    });
                    i3++;
                }
                builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                showDialog(builder.create());
                return;
            }
            if (i == this.lastSeenRow) {
                presentFragment(new PrivacyControlActivity(0));
                return;
            }
            if (i == this.phoneNumberRow) {
                presentFragment(new PrivacyControlActivity(6));
                return;
            }
            if (i == this.groupsRow) {
                presentFragment(new PrivacyControlActivity(1));
                return;
            }
            if (i == this.callsRow) {
                presentFragment(new PrivacyControlActivity(2));
                return;
            }
            if (i == this.profilePhotoRow) {
                presentFragment(new PrivacyControlActivity(4));
                return;
            }
            if (i == this.bioRow) {
                presentFragment(new PrivacyControlActivity(9));
                return;
            }
            if (i == this.musicRow) {
                presentFragment(new PrivacyControlActivity(14));
                return;
            }
            if (i == this.birthdayRow) {
                presentFragment(new PrivacyControlActivity(11));
                return;
            }
            if (i == this.giftsRow) {
                presentFragment(new PrivacyControlActivity(12));
                return;
            }
            if (i == this.forwardsRow) {
                presentFragment(new PrivacyControlActivity(5));
                return;
            }
            if (i == this.voicesRow) {
                presentFragment(new PrivacyControlActivity(8));
                return;
            }
            if (i == this.noncontactsRow) {
                presentFragment(new PrivacyControlActivity(10));
                return;
            }
            if (i == this.emailLoginRow) {
                TL_account.Password password = this.currentPassword;
                if (password == null || (str = password.login_email_pattern) == null) {
                    return;
                }
                SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(str);
                int iIndexOf = this.currentPassword.login_email_pattern.indexOf(42);
                int iLastIndexOf = this.currentPassword.login_email_pattern.lastIndexOf(42);
                if (iIndexOf != iLastIndexOf && iIndexOf != -1 && iLastIndexOf != -1) {
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    textStyleRun.flags |= 256;
                    textStyleRun.start = iIndexOf;
                    int i4 = iLastIndexOf + 1;
                    textStyleRun.end = i4;
                    spannableStringBuilderValueOf.setSpan(new TextStyleSpan(textStyleRun), iIndexOf, i4, 0);
                }
                new AlertDialog.Builder(context).setTitle(spannableStringBuilderValueOf).setMessage(LocaleController.getString(C2888R.string.EmailLoginChangeMessage)).setPositiveButton(LocaleController.getString(C2888R.string.ChangeEmail), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda10
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i5) {
                        this.f$0.lambda$createView$8(alertDialog, i5);
                    }
                }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).show();
                return;
            }
            if (i == this.passwordRow) {
                TL_account.Password password2 = this.currentPassword;
                if (password2 == null) {
                    return;
                }
                if (!TwoStepVerificationActivity.canHandleCurrentPassword(password2, false)) {
                    AlertsCreator.showUpdateAppAlert(getParentActivity(), LocaleController.getString("UpdateAppAlert", C2888R.string.UpdateAppAlert), true);
                }
                TL_account.Password password3 = this.currentPassword;
                if (password3.has_password) {
                    TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
                    twoStepVerificationActivity.setPassword(this.currentPassword);
                    presentFragment(twoStepVerificationActivity);
                    return;
                }
                presentFragment(new TwoStepVerificationSetupActivity(TextUtils.isEmpty(password3.email_unconfirmed_pattern) ? 6 : 5, this.currentPassword));
                return;
            }
            if (i == this.passkeysRow) {
                if (Build.VERSION.SDK_INT < 28 || !BuildVars.SUPPORTS_PASSKEYS) {
                    return;
                }
                TL_account.Password password4 = this.currentPassword;
                if (password4 == null || !password4.has_password) {
                    BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.chats_infotip, AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PaymentCardSavePaymentInformationInfoLine2).replace("*", "**")), LocaleController.getString(C2888R.string.Enable), new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$createView$9();
                        }
                    }).show();
                    return;
                }
                ArrayList arrayList = this.currentPasskeys;
                if (arrayList != null && !arrayList.isEmpty()) {
                    presentFragment(new PasskeysActivity(this.currentPasskeys));
                    return;
                } else {
                    PasskeysActivity.showLearnSheet(context, this.currentAccount, this.resourceProvider, true);
                    return;
                }
            }
            if (i == this.passcodeRow) {
                presentFragment(PasscodeActivity.determineOpenFragment());
                return;
            }
            if (i == this.secretWebpageRow) {
                if (getMessagesController().secretWebpagePreview == 1) {
                    getMessagesController().secretWebpagePreview = 0;
                } else {
                    getMessagesController().secretWebpagePreview = 1;
                }
                MessagesController.getGlobalMainSettings().edit().putInt("secretWebpage2", getMessagesController().secretWebpagePreview).apply();
                if (view instanceof TextCheckCell) {
                    ((TextCheckCell) view).setChecked(getMessagesController().secretWebpagePreview == 1);
                    return;
                }
                return;
            }
            if (i == this.contactsDeleteRow) {
                if (getParentActivity() == null) {
                    return;
                }
                AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
                builder2.setTitle(LocaleController.getString("SyncContactsDeleteTitle", C2888R.string.SyncContactsDeleteTitle));
                builder2.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("SyncContactsDeleteText", C2888R.string.SyncContactsDeleteText)));
                builder2.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), null);
                builder2.setPositiveButton(LocaleController.getString("Delete", C2888R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda12
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i5) {
                        this.f$0.lambda$createView$11(alertDialog, i5);
                    }
                });
                AlertDialog alertDialogCreate = builder2.create();
                showDialog(alertDialogCreate);
                TextView textView = (TextView) alertDialogCreate.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    return;
                }
                return;
            }
            if (i == this.contactsSuggestRow) {
                final TextCheckCell textCheckCell = (TextCheckCell) view;
                if (this.newSuggest) {
                    AlertDialog.Builder builder3 = new AlertDialog.Builder(getParentActivity());
                    builder3.setTitle(LocaleController.getString("SuggestContactsTitle", C2888R.string.SuggestContactsTitle));
                    builder3.setMessage(LocaleController.getString("SuggestContactsAlert", C2888R.string.SuggestContactsAlert));
                    builder3.setPositiveButton(LocaleController.getString("MuteDisable", C2888R.string.MuteDisable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda13
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i5) {
                            this.f$0.lambda$createView$14(textCheckCell, alertDialog, i5);
                        }
                    });
                    builder3.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), null);
                    AlertDialog alertDialogCreate2 = builder3.create();
                    showDialog(alertDialogCreate2);
                    TextView textView2 = (TextView) alertDialogCreate2.getButton(-1);
                    if (textView2 != null) {
                        textView2.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                        return;
                    }
                    return;
                }
                this.newSuggest = true;
                textCheckCell.setChecked(true);
                return;
            }
            if (i == this.newChatsRow) {
                boolean z = !this.archiveChats;
                this.archiveChats = z;
                ((TextCheckCell) view).setChecked(z);
                return;
            }
            if (i == this.contactsSyncRow) {
                boolean z2 = !this.newSync;
                this.newSync = z2;
                if (view instanceof TextCheckCell) {
                    ((TextCheckCell) view).setChecked(z2);
                    return;
                }
                return;
            }
            if (i == this.secretMapRow) {
                AlertsCreator.showSecretLocationAlert(getParentActivity(), this.currentAccount, new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$15();
                    }
                }, false, null);
                return;
            }
            if (i == this.paymentsClearRow) {
                AlertDialog.Builder builder4 = new AlertDialog.Builder(getParentActivity());
                builder4.setTitle(LocaleController.getString("PrivacyPaymentsClearAlertTitle", C2888R.string.PrivacyPaymentsClearAlertTitle));
                builder4.setMessage(LocaleController.getString("PrivacyPaymentsClearAlertText", C2888R.string.PrivacyPaymentsClearAlertText));
                LinearLayout linearLayout2 = new LinearLayout(getParentActivity());
                linearLayout2.setOrientation(1);
                builder4.setView(linearLayout2);
                for (int i5 = 0; i5 < 2; i5++) {
                    if (i5 == 0) {
                        string = LocaleController.getString("PrivacyClearShipping", C2888R.string.PrivacyClearShipping);
                    } else {
                        string = LocaleController.getString("PrivacyClearPayment", C2888R.string.PrivacyClearPayment);
                    }
                    this.clear[i5] = true;
                    CheckBoxCell checkBoxCell = new CheckBoxCell(getParentActivity(), 1, 21, null);
                    checkBoxCell.setTag(Integer.valueOf(i5));
                    checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                    checkBoxCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
                    linearLayout2.addView(checkBoxCell, LayoutHelper.createLinear(-1, 50));
                    checkBoxCell.setText(string, null, true, false);
                    checkBoxCell.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
                    checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$16(view2);
                        }
                    });
                }
                builder4.setPositiveButton(LocaleController.getString("ClearButton", C2888R.string.ClearButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda16
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i6) {
                        this.f$0.lambda$createView$19(alertDialog, i6);
                    }
                });
                builder4.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), null);
                showDialog(builder4.create());
                AlertDialog alertDialogCreate3 = builder4.create();
                showDialog(alertDialogCreate3);
                TextView textView3 = (TextView) alertDialogCreate3.getButton(-1);
                if (textView3 != null) {
                    textView3.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                    return;
                }
                return;
            }
            if (i == this.passportRow) {
                presentFragment(new PassportActivity(5, 0L, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, (String) null, (String) null, (String) null, (TL_account.authorizationForm) null, (TL_account.Password) null));
            } else if (i == this.botsBiometryRow) {
                presentFragment(new BotBiometrySettings());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(AlertDialog.Builder builder, View view) {
        int i;
        builder.getDismissRunnable().run();
        Integer num = (Integer) view.getTag();
        if (num.intValue() == 0) {
            i = 30;
        } else if (num.intValue() == 1) {
            i = 90;
        } else if (num.intValue() == 2) {
            i = 182;
        } else if (num.intValue() == 3) {
            i = 365;
        } else if (num.intValue() == 4) {
            i = 548;
        } else {
            i = num.intValue() == 5 ? 730 : 0;
        }
        final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.show();
        final TL_account.setAccountTTL setaccountttl = new TL_account.setAccountTTL();
        TLRPC.TL_accountDaysTTL tL_accountDaysTTL = new TLRPC.TL_accountDaysTTL();
        setaccountttl.ttl = tL_accountDaysTTL;
        tL_accountDaysTTL.days = i;
        getConnectionsManager().sendRequest(setaccountttl, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda21
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createView$5(alertDialog, setaccountttl, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(final AlertDialog alertDialog, final TL_account.setAccountTTL setaccountttl, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$4(alertDialog, tLObject, setaccountttl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(AlertDialog alertDialog, TLObject tLObject, TL_account.setAccountTTL setaccountttl) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            this.deleteAccountUpdate = true;
            getContactsController().setDeleteAccountTTL(setaccountttl.ttl.days);
            this.listAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(AlertDialog alertDialog, int i) {
        presentFragment(new LoginActivity().changeEmail(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$7();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7() {
        Bulletin.LottieLayout lottieLayout = new Bulletin.LottieLayout(getContext(), null);
        lottieLayout.setAnimation(C2888R.raw.email_check_inbox, new String[0]);
        lottieLayout.textView.setText(LocaleController.getString(C2888R.string.YourLoginEmailChangedSuccess));
        Bulletin.make(this, lottieLayout, 1500).show();
        try {
            this.fragmentView.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        loadPasswordSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9() {
        presentFragment(new TwoStepVerificationSetupActivity(TextUtils.isEmpty(this.currentPassword.email_unconfirmed_pattern) ? 6 : 5, this.currentPassword));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(AlertDialog alertDialog, int i) {
        AlertDialog alertDialogShow = new AlertDialog.Builder(getParentActivity(), 3, null).show();
        this.progressDialog = alertDialogShow;
        alertDialogShow.setCanCancel(false);
        if (this.currentSync != this.newSync) {
            UserConfig userConfig = getUserConfig();
            boolean z = this.newSync;
            userConfig.syncContacts = z;
            this.currentSync = z;
            getUserConfig().saveConfig(false);
        }
        getContactsController().deleteAllContacts(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$10();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10() {
        this.progressDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14(final TextCheckCell textCheckCell, AlertDialog alertDialog, int i) {
        TLRPC.TL_payments_clearSavedInfo tL_payments_clearSavedInfo = new TLRPC.TL_payments_clearSavedInfo();
        boolean[] zArr = this.clear;
        tL_payments_clearSavedInfo.credentials = zArr[1];
        tL_payments_clearSavedInfo.info = zArr[0];
        getUserConfig().tmpPassword = null;
        getUserConfig().saveConfig(false);
        getConnectionsManager().sendRequest(tL_payments_clearSavedInfo, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda20
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createView$13(textCheckCell, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(final TextCheckCell textCheckCell, TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$12(textCheckCell);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(TextCheckCell textCheckCell) {
        boolean z = !this.newSuggest;
        this.newSuggest = z;
        textCheckCell.setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15() {
        this.listAdapter.notifyDataSetChanged();
        this.secretMapUpdate = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16(View view) {
        CheckBoxCell checkBoxCell = (CheckBoxCell) view;
        int iIntValue = ((Integer) checkBoxCell.getTag()).intValue();
        boolean[] zArr = this.clear;
        boolean z = !zArr[iIntValue];
        zArr[iIntValue] = z;
        checkBoxCell.setChecked(z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(AlertDialog alertDialog, int i) {
        try {
            Dialog dialog = this.visibleDialog;
            if (dialog != null) {
                dialog.dismiss();
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("PrivacyPaymentsClearAlertTitle", C2888R.string.PrivacyPaymentsClearAlertTitle));
        builder.setMessage(LocaleController.getString("PrivacyPaymentsClearAlert", C2888R.string.PrivacyPaymentsClearAlert));
        builder.setPositiveButton(LocaleController.getString("ClearButton", C2888R.string.ClearButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda17
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog2, int i2) {
                this.f$0.lambda$createView$18(alertDialog2, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), null);
        showDialog(builder.create());
        AlertDialog alertDialogCreate = builder.create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(AlertDialog alertDialog, int i) {
        String string;
        TLRPC.TL_payments_clearSavedInfo tL_payments_clearSavedInfo = new TLRPC.TL_payments_clearSavedInfo();
        boolean[] zArr = this.clear;
        tL_payments_clearSavedInfo.credentials = zArr[1];
        tL_payments_clearSavedInfo.info = zArr[0];
        getUserConfig().tmpPassword = null;
        getUserConfig().saveConfig(false);
        getConnectionsManager().sendRequest(tL_payments_clearSavedInfo, new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                PrivacySettingsActivity.m17052$r8$lambda$DPP8PtFalvDYsSlbRJJHb1FeA(tLObject, tL_error);
            }
        });
        boolean[] zArr2 = this.clear;
        boolean z = zArr2[0];
        if (z && zArr2[1]) {
            string = LocaleController.getString("PrivacyPaymentsPaymentShippingCleared", C2888R.string.PrivacyPaymentsPaymentShippingCleared);
        } else if (z) {
            string = LocaleController.getString("PrivacyPaymentsShippingInfoCleared", C2888R.string.PrivacyPaymentsShippingInfoCleared);
        } else if (!zArr2[1]) {
            return;
        } else {
            string = LocaleController.getString("PrivacyPaymentsPaymentInfoCleared", C2888R.string.PrivacyPaymentsPaymentInfoCleared);
        }
        BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.chats_infotip, string).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$21(ArrayList arrayList) {
        this.biometryBots.clear();
        this.biometryBots.addAll(arrayList);
        updateRows(true);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ListAdapter listAdapter;
        if (i == NotificationCenter.privacyRulesUpdated) {
            TLRPC.GlobalPrivacySettings globalPrivacySettings = getContactsController().getGlobalPrivacySettings();
            if (globalPrivacySettings != null) {
                this.archiveChats = globalPrivacySettings.archive_and_mute_new_noncontact_peers;
                this.noncontactsValue = globalPrivacySettings.new_noncontact_peers_require_premium;
                this.feeValue = (globalPrivacySettings.flags & 32) != 0;
            }
            ListAdapter listAdapter2 = this.listAdapter;
            if (listAdapter2 != null) {
                listAdapter2.notifyDataSetChanged();
            }
        } else if (i == NotificationCenter.blockedUsersDidLoad) {
            this.listAdapter.notifyItemChanged(this.blockedRow);
        } else if (i == NotificationCenter.didSetOrRemoveTwoStepPassword) {
            if (objArr.length > 0) {
                this.currentPassword = (TL_account.Password) objArr[0];
                ListAdapter listAdapter3 = this.listAdapter;
                if (listAdapter3 != null) {
                    listAdapter3.notifyItemChanged(this.passwordRow);
                }
            } else {
                this.currentPassword = null;
                loadPasswordSettings();
                updateRows();
            }
        }
        if (i != NotificationCenter.didUpdateGlobalAutoDeleteTimer || (listAdapter = this.listAdapter) == null) {
            return;
        }
        listAdapter.notifyItemChanged(this.autoDeleteMesages);
    }

    private void updateRows() {
        updateRows(true);
    }

    public void updateRows(boolean z) {
        this.passkeysRow = -1;
        this.securitySectionRow = 0;
        int i = 1 + 1;
        this.passwordRow = 1;
        this.autoDeleteMesages = i;
        this.rowCount = i + 2;
        this.passcodeRow = i + 1;
        if (getMessagesController().config.settingsDisplayPasskeys.get() && Build.VERSION.SDK_INT >= 28 && BuildVars.SUPPORTS_PASSKEYS) {
            int i2 = this.rowCount;
            this.rowCount = i2 + 1;
            this.passkeysRow = i2;
        }
        TL_account.Password password = this.currentPassword;
        if (password == null ? SharedConfig.hasEmailLogin : password.login_email_pattern != null) {
            int i3 = this.rowCount;
            this.rowCount = i3 + 1;
            this.emailLoginRow = i3;
        } else {
            this.emailLoginRow = -1;
        }
        int i4 = this.rowCount;
        this.rowCount = i4 + 1;
        this.blockedRow = i4;
        if (password != null) {
            boolean z2 = password.login_email_pattern != null;
            if (SharedConfig.hasEmailLogin != z2) {
                SharedConfig.hasEmailLogin = z2;
                SharedConfig.saveConfig();
            }
        }
        int i5 = this.rowCount;
        this.sessionsRow = i5;
        this.sessionsDetailRow = i5 + 1;
        this.privacySectionRow = i5 + 2;
        this.phoneNumberRow = i5 + 3;
        this.lastSeenRow = i5 + 4;
        this.profilePhotoRow = i5 + 5;
        this.forwardsRow = i5 + 6;
        this.rowCount = i5 + 8;
        this.callsRow = i5 + 7;
        this.groupsDetailRow = -1;
        if (!getMessagesController().premiumFeaturesBlocked() || getUserConfig().isPremium()) {
            int i6 = this.rowCount;
            this.voicesRow = i6;
            this.rowCount = i6 + 2;
            this.noncontactsRow = i6 + 1;
        } else {
            this.voicesRow = -1;
            this.noncontactsRow = -1;
        }
        int i7 = this.rowCount;
        this.birthdayRow = i7;
        this.giftsRow = i7 + 1;
        this.bioRow = i7 + 2;
        this.musicRow = i7 + 3;
        this.groupsRow = i7 + 4;
        this.rowCount = i7 + 6;
        this.privacyShadowRow = i7 + 5;
        if (getMessagesController().autoarchiveAvailable || getUserConfig().isPremium()) {
            int i8 = this.rowCount;
            this.newChatsHeaderRow = i8;
            this.newChatsRow = i8 + 1;
            this.rowCount = i8 + 3;
            this.newChatsSectionRow = i8 + 2;
        } else {
            this.newChatsHeaderRow = -1;
            this.newChatsRow = -1;
            this.newChatsSectionRow = -1;
        }
        int i9 = this.rowCount;
        this.advancedSectionRow = i9;
        this.deleteAccountRow = i9 + 1;
        this.deleteAccountDetailRow = i9 + 2;
        this.rowCount = i9 + 4;
        this.botsSectionRow = i9 + 3;
        if (getUserConfig().hasSecureData) {
            int i10 = this.rowCount;
            this.rowCount = i10 + 1;
            this.passportRow = i10;
        } else {
            this.passportRow = -1;
        }
        int i11 = this.rowCount;
        this.rowCount = i11 + 1;
        this.paymentsClearRow = i11;
        if (!this.biometryBots.isEmpty()) {
            int i12 = this.rowCount;
            this.rowCount = i12 + 1;
            this.botsBiometryRow = i12;
        } else {
            this.botsBiometryRow = -1;
        }
        SessionsActivity sessionsActivity = this.webSessionsActivityPreload;
        if (sessionsActivity != null && sessionsActivity.getSessionsCount() > 0) {
            int i13 = this.rowCount;
            this.webSessionsRow = i13;
            this.rowCount = i13 + 2;
            this.botsDetailRow = i13 + 1;
            this.botsAndWebsitesShadowRow = -1;
        } else {
            this.webSessionsRow = -1;
            this.botsDetailRow = -1;
            int i14 = this.rowCount;
            this.rowCount = i14 + 1;
            this.botsAndWebsitesShadowRow = i14;
        }
        int i15 = this.rowCount;
        this.contactsSectionRow = i15;
        this.contactsDeleteRow = i15 + 1;
        this.contactsSyncRow = i15 + 2;
        this.contactsSuggestRow = i15 + 3;
        this.contactsDetailRow = i15 + 4;
        this.secretSectionRow = i15 + 5;
        this.secretMapRow = i15 + 6;
        this.secretWebpageRow = i15 + 7;
        this.rowCount = i15 + 9;
        this.secretDetailRow = i15 + 8;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter == null || !z) {
            return;
        }
        listAdapter.notifyDataSetChanged();
    }

    public PrivacySettingsActivity setCurrentPassword(TL_account.Password password) {
        this.currentPassword = password;
        if (password != null) {
            initPassword();
        }
        return this;
    }

    private void initPassword() {
        TwoStepVerificationActivity.initPasswordNewAlgo(this.currentPassword);
        if (!getUserConfig().hasSecureData && this.currentPassword.has_secure_values) {
            getUserConfig().hasSecureData = true;
            getUserConfig().saveConfig(false);
            updateRows();
            return;
        }
        TL_account.Password password = this.currentPassword;
        if (password != null) {
            int i = this.emailLoginRow;
            String str = password.login_email_pattern;
            boolean z = str != null && i == -1;
            boolean z2 = str == null && i != -1;
            if (z || z2) {
                updateRows(false);
                ListAdapter listAdapter = this.listAdapter;
                if (listAdapter != null) {
                    if (z) {
                        listAdapter.notifyItemInserted(this.emailLoginRow);
                    } else {
                        listAdapter.notifyItemRemoved(i);
                    }
                }
            }
        }
        ListAdapter listAdapter2 = this.listAdapter;
        if (listAdapter2 != null) {
            listAdapter2.notifyItemChanged(this.passwordRow);
        }
    }

    private void loadPasswordSettings() {
        getConnectionsManager().sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadPasswordSettings$23(tLObject, tL_error);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordSettings$23(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            final TL_account.Password password = (TL_account.Password) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadPasswordSettings$22(password);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasswordSettings$22(TL_account.Password password) {
        this.currentPassword = password;
        initPassword();
    }

    private void loadPasskeys() {
        getConnectionsManager().sendRequestTyped(new TL_account.getPasskeys(), new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$loadPasskeys$24((TL_account.Passkeys) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPasskeys$24(TL_account.Passkeys passkeys, TLRPC.TL_error tL_error) {
        if (passkeys != null) {
            this.currentPasskeys = passkeys.passkeys;
            updateRows();
        }
    }

    public static String formatRulesString(AccountInstance accountInstance, int i) {
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings;
        TLRPC.DisallowedGiftsSettings disallowedGiftsSettings2;
        Boolean bool;
        ArrayList<TLRPC.PrivacyRule> privacyRules = accountInstance.getContactsController().getPrivacyRules(i);
        TLRPC.GlobalPrivacySettings globalPrivacySettings = accountInstance.getContactsController().getGlobalPrivacySettings();
        if (privacyRules == null || privacyRules.size() == 0) {
            if (i == 3) {
                return LocaleController.getString(C2888R.string.P2PNobody);
            }
            return LocaleController.getString(C2888R.string.LastSeenNobody);
        }
        Boolean bool2 = null;
        byte b = -1;
        int size = 0;
        int size2 = 0;
        boolean z = false;
        for (int i2 = 0; i2 < privacyRules.size(); i2++) {
            TLRPC.PrivacyRule privacyRule = privacyRules.get(i2);
            if (privacyRule instanceof TLRPC.TL_privacyValueAllowChatParticipants) {
                TLRPC.TL_privacyValueAllowChatParticipants tL_privacyValueAllowChatParticipants = (TLRPC.TL_privacyValueAllowChatParticipants) privacyRule;
                int size3 = tL_privacyValueAllowChatParticipants.chats.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    TLRPC.Chat chat = accountInstance.getMessagesController().getChat((Long) tL_privacyValueAllowChatParticipants.chats.get(i3));
                    if (chat != null) {
                        size += chat.participants_count;
                    }
                }
            } else if (privacyRule instanceof TLRPC.TL_privacyValueDisallowChatParticipants) {
                TLRPC.TL_privacyValueDisallowChatParticipants tL_privacyValueDisallowChatParticipants = (TLRPC.TL_privacyValueDisallowChatParticipants) privacyRule;
                int size4 = tL_privacyValueDisallowChatParticipants.chats.size();
                for (int i4 = 0; i4 < size4; i4++) {
                    TLRPC.Chat chat2 = accountInstance.getMessagesController().getChat((Long) tL_privacyValueDisallowChatParticipants.chats.get(i4));
                    if (chat2 != null) {
                        size2 += chat2.participants_count;
                    }
                }
            } else if (privacyRule instanceof TLRPC.TL_privacyValueAllowUsers) {
                size += ((TLRPC.TL_privacyValueAllowUsers) privacyRule).users.size();
            } else if (privacyRule instanceof TLRPC.TL_privacyValueDisallowUsers) {
                size2 += ((TLRPC.TL_privacyValueDisallowUsers) privacyRule).users.size();
            } else if (privacyRule instanceof TLRPC.TL_privacyValueAllowPremium) {
                z = true;
            } else {
                if (privacyRule instanceof TLRPC.TL_privacyValueAllowBots) {
                    bool = Boolean.TRUE;
                } else if (privacyRule instanceof TLRPC.TL_privacyValueDisallowBots) {
                    bool = Boolean.FALSE;
                } else if (b == -1) {
                    if (privacyRule instanceof TLRPC.TL_privacyValueAllowAll) {
                        b = 0;
                    } else {
                        b = privacyRule instanceof TLRPC.TL_privacyValueDisallowAll ? (byte) 1 : (byte) 2;
                    }
                }
                bool2 = bool;
            }
        }
        if (i == 12 && globalPrivacySettings != null && (disallowedGiftsSettings2 = globalPrivacySettings.disallowed_stargifts) != null && disallowedGiftsSettings2.disallow_unique_stargifts && disallowedGiftsSettings2.disallow_unlimited_stargifts && disallowedGiftsSettings2.disallow_limited_stargifts && !disallowedGiftsSettings2.disallow_premium_gifts) {
            return LocaleController.getString(C2888R.string.PrivacyValueGiftsOnlyPremium);
        }
        if (i == 12 && globalPrivacySettings != null && (disallowedGiftsSettings = globalPrivacySettings.disallowed_stargifts) != null && disallowedGiftsSettings.disallow_unique_stargifts && disallowedGiftsSettings.disallow_unlimited_stargifts && disallowedGiftsSettings.disallow_limited_stargifts && disallowedGiftsSettings.disallow_premium_gifts) {
            return LocaleController.getString(C2888R.string.PrivacyValueGiftsNone);
        }
        if (b == 0 || (b == -1 && size2 > 0)) {
            if (i == 3) {
                return size2 == 0 ? LocaleController.getString(C2888R.string.P2PEverybody) : LocaleController.formatString(C2888R.string.P2PEverybodyMinus, Integer.valueOf(size2));
            }
            if (i != 12) {
                return size2 == 0 ? LocaleController.getString(C2888R.string.LastSeenEverybody) : LocaleController.formatString(C2888R.string.LastSeenEverybodyMinus, Integer.valueOf(size2));
            }
            if (size2 == 0) {
                return LocaleController.getString((bool2 == null || bool2.booleanValue()) ? C2888R.string.LastSeenEverybody : C2888R.string.PrivacyValueEveryoneExceptBots);
            }
            return LocaleController.formatString((bool2 == null || bool2.booleanValue()) ? C2888R.string.LastSeenEverybodyMinus : C2888R.string.PrivacyValueEveryoneExceptBotsMinus, Integer.valueOf(size2));
        }
        if (b != 2 && (b != -1 || size2 <= 0 || size <= 0)) {
            if (b != 1 && size <= 0) {
                if (bool2 != null && bool2.booleanValue()) {
                    return LocaleController.getString(C2888R.string.PrivacyValueOnlyBots);
                }
                return "unknown";
            }
            if (i == 3) {
                return size == 0 ? LocaleController.getString(C2888R.string.P2PNobody) : LocaleController.formatString(C2888R.string.P2PNobodyPlus, Integer.valueOf(size));
            }
            if (size != 0) {
                return LocaleController.formatString(z ? C2888R.string.LastSeenNobodyPremiumPlus : C2888R.string.LastSeenNobodyPlus, Integer.valueOf(size));
            }
            if (z) {
                return LocaleController.getString(C2888R.string.LastSeenNobodyPremium);
            }
            if (bool2 != null && bool2.booleanValue()) {
                return LocaleController.getString(C2888R.string.PrivacyValueOnlyBots);
            }
            return LocaleController.getString(C2888R.string.LastSeenNobody);
        }
        if (i == 3) {
            if (size == 0 && size2 == 0) {
                return LocaleController.getString("P2PContacts", C2888R.string.P2PContacts);
            }
            return (size == 0 || size2 == 0) ? size2 != 0 ? LocaleController.formatString(C2888R.string.P2PContactsMinus, Integer.valueOf(size2)) : LocaleController.formatString(C2888R.string.P2PContactsPlus, Integer.valueOf(size)) : LocaleController.formatString(C2888R.string.P2PContactsMinusPlus, Integer.valueOf(size2), Integer.valueOf(size));
        }
        if (size == 0 && size2 == 0) {
            if (z) {
                return LocaleController.getString(C2888R.string.LastSeenContactsPremium);
            }
            if (bool2 != null && bool2.booleanValue()) {
                return LocaleController.getString(C2888R.string.PrivacyContactsAndBotUsers);
            }
            return LocaleController.getString(C2888R.string.LastSeenContacts);
        }
        if (size != 0 && size2 != 0) {
            return LocaleController.formatString((bool2 == null || !bool2.booleanValue()) ? z ? C2888R.string.LastSeenContactsPremiumMinusPlus : C2888R.string.LastSeenContactsMinusPlus : C2888R.string.PrivacyContactsAndBotUsersMinusPlus, Integer.valueOf(size2), Integer.valueOf(size));
        }
        if (size2 != 0) {
            return LocaleController.formatString((bool2 == null || !bool2.booleanValue()) ? z ? C2888R.string.LastSeenContactsPremiumMinus : C2888R.string.LastSeenContactsMinus : C2888R.string.PrivacyContactsAndBotUsersMinus, Integer.valueOf(size2));
        }
        return LocaleController.formatString((bool2 == null || !bool2.booleanValue()) ? z ? C2888R.string.LastSeenContactsPremiumPlus : C2888R.string.LastSeenContactsPlus : C2888R.string.PrivacyContactsAndBotUsersPlus, Integer.valueOf(size));
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == PrivacySettingsActivity.this.passcodeRow || adapterPosition == PrivacySettingsActivity.this.passwordRow || adapterPosition == PrivacySettingsActivity.this.passkeysRow || adapterPosition == PrivacySettingsActivity.this.blockedRow || adapterPosition == PrivacySettingsActivity.this.sessionsRow || adapterPosition == PrivacySettingsActivity.this.secretWebpageRow || adapterPosition == PrivacySettingsActivity.this.webSessionsRow || (adapterPosition == PrivacySettingsActivity.this.groupsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(1)) || ((adapterPosition == PrivacySettingsActivity.this.lastSeenRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(0)) || ((adapterPosition == PrivacySettingsActivity.this.callsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(2)) || ((adapterPosition == PrivacySettingsActivity.this.profilePhotoRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(4)) || ((adapterPosition == PrivacySettingsActivity.this.bioRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(9)) || ((adapterPosition == PrivacySettingsActivity.this.musicRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(14)) || ((adapterPosition == PrivacySettingsActivity.this.birthdayRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(11)) || ((adapterPosition == PrivacySettingsActivity.this.giftsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(12)) || ((adapterPosition == PrivacySettingsActivity.this.forwardsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(5)) || ((adapterPosition == PrivacySettingsActivity.this.phoneNumberRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(6)) || ((adapterPosition == PrivacySettingsActivity.this.voicesRow && !PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(8)) || adapterPosition == PrivacySettingsActivity.this.noncontactsRow || ((adapterPosition == PrivacySettingsActivity.this.deleteAccountRow && !PrivacySettingsActivity.this.getContactsController().getLoadingDeleteInfo()) || ((adapterPosition == PrivacySettingsActivity.this.newChatsRow && !PrivacySettingsActivity.this.getContactsController().getLoadingGlobalSettings()) || adapterPosition == PrivacySettingsActivity.this.emailLoginRow || adapterPosition == PrivacySettingsActivity.this.paymentsClearRow || adapterPosition == PrivacySettingsActivity.this.secretMapRow || adapterPosition == PrivacySettingsActivity.this.contactsSyncRow || adapterPosition == PrivacySettingsActivity.this.passportRow || adapterPosition == PrivacySettingsActivity.this.contactsDeleteRow || adapterPosition == PrivacySettingsActivity.this.contactsSuggestRow || adapterPosition == PrivacySettingsActivity.this.autoDeleteMesages || adapterPosition == PrivacySettingsActivity.this.botsBiometryRow))))))))))));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PrivacySettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textSettingsCell;
            if (i == 0) {
                textSettingsCell = new TextSettingsCell(this.mContext);
            } else if (i == 1) {
                textSettingsCell = new TextInfoPrivacyCell(this.mContext);
            } else if (i == 2) {
                textSettingsCell = new HeaderCell(this.mContext);
            } else if (i == 4) {
                textSettingsCell = new ShadowSectionCell(this.mContext);
            } else if (i == 5) {
                textSettingsCell = new TextCell(this.mContext);
            } else {
                textSettingsCell = new TextCheckCell(this.mContext);
            }
            return new RecyclerListView.Holder(textSettingsCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            boolean z;
            String str;
            String string2;
            String string3;
            int i2;
            String string4;
            String str2;
            String string5;
            int i3;
            String str3;
            CharSequence charSequence;
            String str4;
            String str5;
            String string6;
            String str6;
            int itemViewType = viewHolder.getItemViewType();
            String pluralString = null;
            int i4 = 16;
            if (itemViewType == 0) {
                boolean z2 = viewHolder.itemView.getTag() != null && ((Integer) viewHolder.itemView.getTag()).intValue() == i;
                viewHolder.itemView.setTag(Integer.valueOf(i));
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                textSettingsCell.setBetterLayout(true);
                if (i == PrivacySettingsActivity.this.webSessionsRow) {
                    textSettingsCell.setText(LocaleController.getString("WebSessionsTitle", C2888R.string.WebSessionsTitle), false);
                } else if (i == PrivacySettingsActivity.this.phoneNumberRow) {
                    if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(6)) {
                        z = true;
                        i4 = 30;
                    } else {
                        pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 6);
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyPhone", C2888R.string.PrivacyPhone), pluralString, true);
                } else if (i == PrivacySettingsActivity.this.lastSeenRow) {
                    if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(0)) {
                        z = true;
                        i4 = 30;
                    } else {
                        pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 0);
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyLastSeen", C2888R.string.PrivacyLastSeen), pluralString, true);
                } else {
                    if (i == PrivacySettingsActivity.this.groupsRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(1)) {
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 1);
                            z = false;
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString(C2888R.string.PrivacyInvites), pluralString, false);
                    } else if (i == PrivacySettingsActivity.this.callsRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(2)) {
                            z = true;
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 2);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("Calls", C2888R.string.Calls), pluralString, true);
                    } else if (i == PrivacySettingsActivity.this.profilePhotoRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(4)) {
                            z = true;
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 4);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyProfilePhoto", C2888R.string.PrivacyProfilePhoto), pluralString, true);
                    } else if (i == PrivacySettingsActivity.this.bioRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(9)) {
                            z = true;
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 9);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyBio", C2888R.string.PrivacyBio), pluralString, true);
                    } else if (i == PrivacySettingsActivity.this.musicRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(14)) {
                            z = true;
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 14);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString(C2888R.string.PrivacyMusic), pluralString, true);
                    } else if (i == PrivacySettingsActivity.this.birthdayRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(11)) {
                            z = true;
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 11);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString(C2888R.string.PrivacyBirthday), pluralString, true);
                    } else if (i == PrivacySettingsActivity.this.giftsRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(12)) {
                            z = true;
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 12);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString(C2888R.string.PrivacyGifts), pluralString, true);
                    } else if (i == PrivacySettingsActivity.this.forwardsRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(5)) {
                            z = true;
                            i4 = 30;
                        } else {
                            pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 5);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyForwards", C2888R.string.PrivacyForwards), pluralString, true);
                    } else if (i == PrivacySettingsActivity.this.voicesRow) {
                        if (PrivacySettingsActivity.this.getContactsController().getLoadingPrivacyInfo(8)) {
                            z = true;
                            i4 = 30;
                        } else {
                            if (!PrivacySettingsActivity.this.getUserConfig().isPremium()) {
                                pluralString = LocaleController.getString(C2888R.string.P2PEverybody);
                            } else {
                                pluralString = PrivacySettingsActivity.formatRulesString(PrivacySettingsActivity.this.getAccountInstance(), 8);
                            }
                            z = false;
                        }
                        textSettingsCell.setTextAndValue(PrivacySettingsActivity.addPremiumStar(LocaleController.getString(C2888R.string.PrivacyVoiceMessages)), pluralString, PrivacySettingsActivity.this.noncontactsRow != -1);
                        textSettingsCell.getValueImageView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
                        z = z;
                    } else if (i == PrivacySettingsActivity.this.noncontactsRow) {
                        textSettingsCell.setTextAndValue((!PrivacySettingsActivity.this.getMessagesController().newNoncontactPeersRequirePremiumWithoutOwnpremium || PrivacySettingsActivity.this.getMessagesController().starsPaidMessagesAvailable) ? PrivacySettingsActivity.addPremiumStar(LocaleController.getString(C2888R.string.PrivacyMessages)) : LocaleController.getString(C2888R.string.PrivacyMessages), LocaleController.getString(PrivacySettingsActivity.this.feeValue ? C2888R.string.ContactsAndFee : PrivacySettingsActivity.this.noncontactsValue ? C2888R.string.ContactsAndPremium : C2888R.string.P2PEverybody), PrivacySettingsActivity.this.musicRow != -1);
                    } else if (i == PrivacySettingsActivity.this.passportRow) {
                        textSettingsCell.setText(LocaleController.getString("TelegramPassport", C2888R.string.TelegramPassport), true);
                    } else if (i == PrivacySettingsActivity.this.deleteAccountRow) {
                        if (!PrivacySettingsActivity.this.getContactsController().getLoadingDeleteInfo()) {
                            int deleteAccountTTL = PrivacySettingsActivity.this.getContactsController().getDeleteAccountTTL();
                            if (deleteAccountTTL <= 182) {
                                pluralString = LocaleController.formatPluralString("Months", deleteAccountTTL / 30, new Object[0]);
                            } else {
                                pluralString = deleteAccountTTL == 365 ? LocaleController.formatPluralString("Months", 12, new Object[0]) : deleteAccountTTL == 548 ? LocaleController.formatPluralString("Months", 18, new Object[0]) : deleteAccountTTL == 730 ? LocaleController.formatPluralString("Months", 24, new Object[0]) : deleteAccountTTL > 30 ? LocaleController.formatPluralString("Months", (int) Math.round(((double) deleteAccountTTL) / 30.0d), new Object[0]) : LocaleController.formatPluralString("Days", deleteAccountTTL, new Object[0]);
                            }
                            z = false;
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("DeleteAccountIfAwayFor3", C2888R.string.DeleteAccountIfAwayFor3), pluralString, PrivacySettingsActivity.this.deleteAccountUpdate, false);
                        PrivacySettingsActivity.this.deleteAccountUpdate = false;
                    } else if (i == PrivacySettingsActivity.this.paymentsClearRow) {
                        textSettingsCell.setText(LocaleController.getString("PrivacyPaymentsClear", C2888R.string.PrivacyPaymentsClear), true);
                    } else if (i == PrivacySettingsActivity.this.botsBiometryRow) {
                        textSettingsCell.setText(LocaleController.getString(C2888R.string.PrivacyBiometryBotsButton), true);
                    } else if (i == PrivacySettingsActivity.this.secretMapRow) {
                        int i5 = SharedConfig.mapPreviewType;
                        if (i5 == 0) {
                            string = LocaleController.getString("MapPreviewProviderTelegram", C2888R.string.MapPreviewProviderTelegram);
                        } else if (i5 == 1) {
                            string = LocaleController.getString("MapPreviewProviderGoogle", C2888R.string.MapPreviewProviderGoogle);
                        } else if (i5 == 2) {
                            string = LocaleController.getString("MapPreviewProviderNobody", C2888R.string.MapPreviewProviderNobody);
                        } else {
                            string = LocaleController.getString("MapPreviewProviderYandex", C2888R.string.MapPreviewProviderYandex);
                        }
                        textSettingsCell.setTextAndValue(LocaleController.getString("MapPreviewProvider", C2888R.string.MapPreviewProvider), string, PrivacySettingsActivity.this.secretMapUpdate, true);
                        PrivacySettingsActivity.this.secretMapUpdate = false;
                    } else if (i == PrivacySettingsActivity.this.contactsDeleteRow) {
                        textSettingsCell.setText(LocaleController.getString("SyncContactsDelete", C2888R.string.SyncContactsDelete), true);
                    }
                    z = z;
                }
                textSettingsCell.setDrawLoading(z, i4, z2);
                return;
            }
            if (itemViewType == 1) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                getItemCount();
                if (i == PrivacySettingsActivity.this.deleteAccountDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString("DeleteAccountHelp", C2888R.string.DeleteAccountHelp));
                    return;
                }
                if (i == PrivacySettingsActivity.this.groupsDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString("GroupsAndChannelsHelp", C2888R.string.GroupsAndChannelsHelp));
                    return;
                }
                if (i == PrivacySettingsActivity.this.sessionsDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString("SessionsSettingsInfo", C2888R.string.SessionsSettingsInfo));
                    return;
                }
                if (i == PrivacySettingsActivity.this.secretDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString("SecretWebPageInfo", C2888R.string.SecretWebPageInfo));
                    return;
                }
                if (i == PrivacySettingsActivity.this.botsDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString("PrivacyBotsInfo", C2888R.string.PrivacyBotsInfo));
                    return;
                }
                if (i == PrivacySettingsActivity.this.privacyShadowRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.PrivacyInvitesInfo));
                    return;
                } else if (i == PrivacySettingsActivity.this.contactsDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString("SuggestContactsInfo", C2888R.string.SuggestContactsInfo));
                    return;
                } else {
                    if (i == PrivacySettingsActivity.this.newChatsSectionRow) {
                        textInfoPrivacyCell.setText(LocaleController.getString("ArchiveAndMuteInfo", C2888R.string.ArchiveAndMuteInfo));
                        return;
                    }
                    return;
                }
            }
            if (itemViewType == 2) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i == PrivacySettingsActivity.this.privacySectionRow) {
                    headerCell.setText(LocaleController.getString("PrivacyTitle", C2888R.string.PrivacyTitle));
                    return;
                }
                if (i == PrivacySettingsActivity.this.securitySectionRow) {
                    headerCell.setText(LocaleController.getString("SecurityTitle", C2888R.string.SecurityTitle));
                    return;
                }
                if (i == PrivacySettingsActivity.this.advancedSectionRow) {
                    headerCell.setText(LocaleController.getString("DeleteMyAccount", C2888R.string.DeleteMyAccount));
                    return;
                }
                if (i == PrivacySettingsActivity.this.secretSectionRow) {
                    headerCell.setText(LocaleController.getString("SecretChat", C2888R.string.SecretChat));
                    return;
                }
                if (i == PrivacySettingsActivity.this.botsSectionRow) {
                    headerCell.setText(LocaleController.getString("PrivacyBots", C2888R.string.PrivacyBots));
                    return;
                } else if (i == PrivacySettingsActivity.this.contactsSectionRow) {
                    headerCell.setText(LocaleController.getString("Contacts", C2888R.string.Contacts));
                    return;
                } else {
                    if (i == PrivacySettingsActivity.this.newChatsHeaderRow) {
                        headerCell.setText(LocaleController.getString("NewChatsFromNonContacts", C2888R.string.NewChatsFromNonContacts));
                        return;
                    }
                    return;
                }
            }
            if (itemViewType == 3) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i == PrivacySettingsActivity.this.secretWebpageRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString("SecretWebPage", C2888R.string.SecretWebPage), PrivacySettingsActivity.this.getMessagesController().secretWebpagePreview == 1, false);
                    return;
                }
                if (i == PrivacySettingsActivity.this.contactsSyncRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString("SyncContacts", C2888R.string.SyncContacts), PrivacySettingsActivity.this.newSync, true);
                    return;
                } else if (i == PrivacySettingsActivity.this.contactsSuggestRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString("SuggestContacts", C2888R.string.SuggestContacts), PrivacySettingsActivity.this.newSuggest, false);
                    return;
                } else {
                    if (i == PrivacySettingsActivity.this.newChatsRow) {
                        textCheckCell.setTextAndCheck(LocaleController.getString("ArchiveAndMute", C2888R.string.ArchiveAndMute), PrivacySettingsActivity.this.archiveChats, false);
                        return;
                    }
                    return;
                }
            }
            if (itemViewType != 5) {
                return;
            }
            View view = viewHolder.itemView;
            TextCell textCell = (TextCell) view;
            boolean z3 = view.getTag() != null && ((Integer) viewHolder.itemView.getTag()).intValue() == i;
            viewHolder.itemView.setTag(Integer.valueOf(i));
            textCell.setPrioritizeTitleOverValue(false);
            if (i == PrivacySettingsActivity.this.autoDeleteMesages) {
                int globalTTl = PrivacySettingsActivity.this.getUserConfig().getGlobalTTl();
                if (globalTTl == -1) {
                    str6 = null;
                    z = true;
                } else {
                    if (globalTTl > 0) {
                        string6 = LocaleController.formatTTLString(globalTTl * 60);
                    } else {
                        string6 = LocaleController.getString("PasswordOff", C2888R.string.PasswordOff);
                    }
                    str6 = string6;
                }
                textCell.setTextAndValueAndIcon(LocaleController.getString("AutoDeleteMessages", C2888R.string.AutoDeleteMessages), str6, true, C2888R.drawable.msg2_autodelete, true);
            } else {
                int i6 = PrivacySettingsActivity.this.sessionsRow;
                String str7 = _UrlKt.FRAGMENT_ENCODE_SET;
                if (i == i6) {
                    if (PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount() == 0) {
                        if (PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount != 0) {
                            str4 = String.format(LocaleController.getInstance().getCurrentLocale(), TimeModel.NUMBER_FORMAT, Integer.valueOf(PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount));
                        } else {
                            str5 = _UrlKt.FRAGMENT_ENCODE_SET;
                            z = true;
                            PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount = PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount();
                            textCell.setTextAndValueAndIcon(LocaleController.getString("SessionsTitle", C2888R.string.SessionsTitle), str5, true, C2888R.drawable.msg2_devices, false);
                        }
                    } else {
                        str4 = String.format(LocaleController.getInstance().getCurrentLocale(), TimeModel.NUMBER_FORMAT, Integer.valueOf(PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount()));
                    }
                    str5 = str4;
                    PrivacySettingsActivity.this.getMessagesController().lastKnownSessionsCount = PrivacySettingsActivity.this.devicesActivityPreload.getSessionsCount();
                    textCell.setTextAndValueAndIcon(LocaleController.getString("SessionsTitle", C2888R.string.SessionsTitle), str5, true, C2888R.drawable.msg2_devices, false);
                } else if (i == PrivacySettingsActivity.this.emailLoginRow) {
                    if (PrivacySettingsActivity.this.currentPassword == null) {
                        z = true;
                        charSequence = str7;
                    } else {
                        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(PrivacySettingsActivity.this.currentPassword.login_email_pattern);
                        int iIndexOf = PrivacySettingsActivity.this.currentPassword.login_email_pattern.indexOf(42);
                        int iLastIndexOf = PrivacySettingsActivity.this.currentPassword.login_email_pattern.lastIndexOf(42);
                        charSequence = spannableStringBuilderValueOf;
                        charSequence = spannableStringBuilderValueOf;
                        charSequence = spannableStringBuilderValueOf;
                        if (iIndexOf != iLastIndexOf && iIndexOf != -1 && iLastIndexOf != -1) {
                            TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                            textStyleRun.flags |= 256;
                            textStyleRun.start = iIndexOf;
                            int i7 = iLastIndexOf + 1;
                            textStyleRun.end = i7;
                            spannableStringBuilderValueOf.setSpan(new TextStyleSpan(textStyleRun), iIndexOf, i7, 0);
                            charSequence = spannableStringBuilderValueOf;
                        }
                    }
                    textCell.setPrioritizeTitleOverValue(true);
                    textCell.setTextAndSpoilersValueAndIcon(LocaleController.getString(C2888R.string.EmailLogin), charSequence, C2888R.drawable.msg2_email, true);
                } else if (i == PrivacySettingsActivity.this.passwordRow) {
                    int i8 = C2888R.drawable.menu_2sv;
                    if (PrivacySettingsActivity.this.currentPassword == null) {
                        i3 = i8;
                        str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                        z = true;
                    } else {
                        if (PrivacySettingsActivity.this.currentPassword.has_password) {
                            i8 = C2888R.drawable.menu_2sv_on;
                            string5 = LocaleController.getString(C2888R.string.PasswordOn);
                        } else {
                            string5 = LocaleController.getString(C2888R.string.PasswordOff);
                        }
                        i3 = i8;
                        str3 = string5;
                    }
                    textCell.setTextAndValueAndIcon(LocaleController.getString(C2888R.string.TwoStepVerification), str3, true, i3, true);
                } else if (i == PrivacySettingsActivity.this.passkeysRow) {
                    ArrayList arrayList = PrivacySettingsActivity.this.currentPasskeys;
                    if (arrayList == null) {
                        str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                        z = true;
                    } else {
                        if (arrayList.size() == 1 && textCell.valueTextView.getPaint().measureText(((TL_account.Passkey) PrivacySettingsActivity.this.currentPasskeys.get(0)).name) < AndroidUtilities.displaySize.x / 3.0f) {
                            string4 = ((TL_account.Passkey) PrivacySettingsActivity.this.currentPasskeys.get(0)).name;
                        } else if (PrivacySettingsActivity.this.currentPasskeys.size() > 0) {
                            string4 = PrivacySettingsActivity.this.currentPasskeys.size() + _UrlKt.FRAGMENT_ENCODE_SET;
                        } else {
                            string4 = LocaleController.getString(C2888R.string.PasswordOff);
                        }
                        str2 = string4;
                    }
                    textCell.setTextAndValueAndIcon(LocaleController.getString(C2888R.string.Passkey), str2, true, C2888R.drawable.msg2_permissions, true);
                } else if (i == PrivacySettingsActivity.this.passcodeRow) {
                    if (SharedConfig.passcodeHash.length() != 0) {
                        string3 = LocaleController.getString(C2888R.string.PasswordOn);
                        i2 = C2888R.drawable.msg2_secret;
                    } else {
                        string3 = LocaleController.getString(C2888R.string.PasswordOff);
                        i2 = C2888R.drawable.msg2_secret;
                    }
                    textCell.setTextAndValueAndIcon(LocaleController.getString(C2888R.string.Passcode), string3, true, i2, true);
                } else if (i == PrivacySettingsActivity.this.blockedRow) {
                    int i9 = PrivacySettingsActivity.this.getMessagesController().totalBlockedCount;
                    if (i9 == 0) {
                        string2 = LocaleController.getString("BlockedEmpty", C2888R.string.BlockedEmpty);
                    } else if (i9 > 0) {
                        string2 = String.format(LocaleController.getInstance().getCurrentLocale(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i9));
                    } else {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                        z = true;
                        textCell.setTextAndValueAndIcon(LocaleController.getString("BlockedUsers", C2888R.string.BlockedUsers), str, true, C2888R.drawable.msg2_block2, true);
                    }
                    str = string2;
                    textCell.setTextAndValueAndIcon(LocaleController.getString("BlockedUsers", C2888R.string.BlockedUsers), str, true, C2888R.drawable.msg2_block2, true);
                }
            }
            textCell.setDrawLoading(z, 16, z3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == PrivacySettingsActivity.this.passportRow || i == PrivacySettingsActivity.this.lastSeenRow || i == PrivacySettingsActivity.this.phoneNumberRow || i == PrivacySettingsActivity.this.deleteAccountRow || i == PrivacySettingsActivity.this.webSessionsRow || i == PrivacySettingsActivity.this.groupsRow || i == PrivacySettingsActivity.this.paymentsClearRow || i == PrivacySettingsActivity.this.secretMapRow || i == PrivacySettingsActivity.this.contactsDeleteRow || i == PrivacySettingsActivity.this.botsBiometryRow) {
                return 0;
            }
            if (i == PrivacySettingsActivity.this.privacyShadowRow || i == PrivacySettingsActivity.this.deleteAccountDetailRow || i == PrivacySettingsActivity.this.groupsDetailRow || i == PrivacySettingsActivity.this.sessionsDetailRow || i == PrivacySettingsActivity.this.secretDetailRow || i == PrivacySettingsActivity.this.botsDetailRow || i == PrivacySettingsActivity.this.contactsDetailRow || i == PrivacySettingsActivity.this.newChatsSectionRow) {
                return 1;
            }
            if (i == PrivacySettingsActivity.this.securitySectionRow || i == PrivacySettingsActivity.this.advancedSectionRow || i == PrivacySettingsActivity.this.privacySectionRow || i == PrivacySettingsActivity.this.secretSectionRow || i == PrivacySettingsActivity.this.botsSectionRow || i == PrivacySettingsActivity.this.contactsSectionRow || i == PrivacySettingsActivity.this.newChatsHeaderRow) {
                return 2;
            }
            if (i == PrivacySettingsActivity.this.secretWebpageRow || i == PrivacySettingsActivity.this.contactsSyncRow || i == PrivacySettingsActivity.this.contactsSuggestRow || i == PrivacySettingsActivity.this.newChatsRow) {
                return 3;
            }
            if (i == PrivacySettingsActivity.this.botsAndWebsitesShadowRow) {
                return 4;
            }
            return (i == PrivacySettingsActivity.this.autoDeleteMesages || i == PrivacySettingsActivity.this.sessionsRow || i == PrivacySettingsActivity.this.emailLoginRow || i == PrivacySettingsActivity.this.passwordRow || i == PrivacySettingsActivity.this.passkeysRow || i == PrivacySettingsActivity.this.passcodeRow || i == PrivacySettingsActivity.this.blockedRow) ? 5 : 0;
        }
    }

    public static CharSequence addPremiumStar(String str) {
        if (premiumStar == null) {
            premiumStar = new SpannableString("★");
            AnimatedEmojiDrawable.WrapSizeDrawable wrapSizeDrawable = new AnimatedEmojiDrawable.WrapSizeDrawable(PremiumGradient.getInstance().premiumStarMenuDrawable, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f));
            wrapSizeDrawable.setBounds(0, 0, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f));
            premiumStar.setSpan(new ImageSpan(wrapSizeDrawable, 2), 0, premiumStar.length(), 17);
        }
        return new SpannableStringBuilder(str).append((CharSequence) " \u2009").append((CharSequence) premiumStar);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, HeaderCell.class, TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        return arrayList;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
