package org.telegram.p029ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.NowPlayingInfoDTO;
import com.exteragram.messenger.api.model.NowPlayingServiceType;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.nowplaying.NowPlayingController;
import com.exteragram.messenger.nowplaying.p013ui.SetupNowPlayingActivity;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.function.Consumer;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.LocationActivity;
import org.telegram.p029ui.Business.OpeningHoursActivity;
import org.telegram.p029ui.Cells.EditTextCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CrossfadeDrawable;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalFragment;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.SettingsActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: loaded from: classes3.dex */
public class UserInfoActivity extends UniversalFragment implements NotificationCenter.NotificationCenterDelegate {

    @Keep
    public int addAccountRow;
    private EditTextCell bioEdit;
    private CharSequence bioInfo;

    @Keep
    public int bioRow;
    private TL_account.TL_birthday birthday;
    private CharSequence birthdayInfo;

    @Keep
    public int birthdayRow;
    private TLRPC.Chat channel;

    @Keep
    public int channelRow;
    private String currentBio;
    private TL_account.TL_birthday currentBirthday;
    private long currentChannel;
    private String currentFirstName;
    private String currentLastName;
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private EditTextCell firstNameEdit;

    @Keep
    public int firstNameRow;
    private boolean hadHours;
    private boolean hadLocation;
    private EditTextCell lastNameEdit;

    @Keep
    public int lastNameRow;
    public UniversalRecyclerView listView;

    @Keep
    public int logoutRow;
    private NowPlayingServiceType nowPlayingService;

    @Keep
    public int numberRow;

    @Keep
    public int usernameRow;
    private boolean valueSet;
    private final ArrayList accountNumbers = new ArrayList();
    private AdminedChannelsFetcher channels = new AdminedChannelsFetcher(this.currentAccount, true);
    private boolean wasSaved = false;
    private int shiftDp = -4;

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        return false;
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.EditAccountInfo2);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.privacyRulesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().addObserver(this, NotificationCenter.nowPlayingUpdated);
        getContactsController().loadPrivacySettings();
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.privacyRulesUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().removeObserver(this, NotificationCenter.nowPlayingUpdated);
        super.onFragmentDestroy();
        if (this.wasSaved) {
            return;
        }
        processDone(false);
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i = -1;
        boolean z = false;
        boolean z2 = false;
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2888R.string.EditProfileFirstName), z, z2, i, this.resourceProvider) { // from class: org.telegram.ui.UserInfoActivity.1
            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onTextChanged(CharSequence charSequence) {
                super.onTextChanged(charSequence);
                UserInfoActivity.this.checkDone(true);
            }
        };
        this.firstNameEdit = editTextCell;
        editTextCell.setDivider(true);
        this.firstNameEdit.hideKeyboardOnEnter();
        EditTextCell editTextCell2 = new EditTextCell(context, LocaleController.getString(C2888R.string.EditProfileLastName), z, z2, i, this.resourceProvider) { // from class: org.telegram.ui.UserInfoActivity.2
            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onTextChanged(CharSequence charSequence) {
                super.onTextChanged(charSequence);
                UserInfoActivity.this.checkDone(true);
            }
        };
        this.lastNameEdit = editTextCell2;
        editTextCell2.hideKeyboardOnEnter();
        EditTextCell editTextCell3 = new EditTextCell(context, LocaleController.getString(C2888R.string.EditProfileBioHint), true, z2, getMessagesController().getAboutLimit(), this.resourceProvider) { // from class: org.telegram.ui.UserInfoActivity.3
            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onTextChanged(CharSequence charSequence) {
                super.onTextChanged(charSequence);
                UserInfoActivity.this.checkDone(true);
            }
        };
        this.bioEdit = editTextCell3;
        editTextCell3.setShowLimitWhenEmpty(true);
        this.bioInfo = AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.EditProfileBioInfo), new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$0();
            }
        });
        super.createView(context);
        UniversalRecyclerView universalRecyclerView = super.listView;
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.setClipToPadding(false);
        this.actionBar.setAdaptiveBackground(this.listView);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.UserInfoActivity.4
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (UserInfoActivity.this.onBackPressed(true)) {
                        UserInfoActivity.this.finishFragment();
                    }
                } else if (i2 == 1) {
                    UserInfoActivity.this.processDone(true);
                }
            }
        });
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.ic_ab_done).mutate();
        int i2 = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
        this.doneButtonDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i2)));
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, this.doneButtonDrawable, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        checkDone(false);
        setValue();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0() {
        presentFragment(new PrivacyControlActivity(9, true));
    }

    private void updateAccounts() {
        this.accountNumbers.clear();
        for (int i = 0; i < 16; i++) {
            if (UserConfig.getInstance(i).isClientActivated() && this.currentAccount != i) {
                this.accountNumbers.add(Integer.valueOf(i));
            }
        }
        Collections.sort(this.accountNumbers, new Comparator() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda10
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return UserInfoActivity.$r8$lambda$r2we3DhZmZutKhGc1e0Q0n0nvvI((Integer) obj, (Integer) obj2);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$r2we3DhZmZutKhGc1e0Q0n0nvvI(Integer num, Integer num2) {
        long j = UserConfig.getInstance(num.intValue()).loginTime;
        long j2 = UserConfig.getInstance(num2.intValue()).loginTime;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        ArrayList<TLRPC.PrivacyRule> privacyRules;
        this.addAccountRow = -1;
        this.numberRow = -1;
        updateAccounts();
        TLRPC.User currentUser = getUserConfig().getCurrentUser();
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.EditAccountInfoHeader)));
        if (currentUser != null) {
            this.numberRow = arrayList.size();
            arrayList.add(InfoCell.Factory.m1334of(6, C2888R.drawable.menu_phone, PhoneFormat.getInstance().format("+" + currentUser.phone), LocaleController.getString(C2888R.string.TapToChangePhone), 0));
        }
        this.usernameRow = arrayList.size();
        if (UserObject.getPublicUsername(currentUser) != null) {
            arrayList.add(InfoCell.Factory.m1334of(7, C2888R.drawable.menu_username_change, "@" + UserObject.getPublicUsername(currentUser), LocaleController.getString(C2888R.string.Username), 0));
        } else {
            arrayList.add(InfoCell.Factory.m1334of(7, C2888R.drawable.menu_username_set, LocaleController.getString(C2888R.string.AddUsername), null, 0).accent());
        }
        this.birthdayRow = arrayList.size();
        TL_account.TL_birthday tL_birthday = this.birthday;
        if (tL_birthday != null) {
            arrayList.add(InfoCell.Factory.m1334of(8, C2888R.drawable.menu_birthday, birthdayString(tL_birthday), LocaleController.getString(C2888R.string.ContactBirthday), 0));
        } else {
            arrayList.add(InfoCell.Factory.m1334of(8, C2888R.drawable.menu_birthday, LocaleController.getString(C2888R.string.AddBirthday), null, 0).accent());
        }
        if (!getContactsController().getLoadingPrivacyInfo(11) && (privacyRules = getContactsController().getPrivacyRules(11)) != null && this.birthdayInfo == null) {
            String string = LocaleController.getString(C2888R.string.EditProfileBirthdayInfoContacts);
            if (!privacyRules.isEmpty()) {
                int i = 0;
                while (true) {
                    if (i >= privacyRules.size()) {
                        break;
                    }
                    if (privacyRules.get(i) instanceof TLRPC.TL_privacyValueAllowContacts) {
                        string = LocaleController.getString(C2888R.string.EditProfileBirthdayInfoContacts);
                        break;
                    }
                    if ((privacyRules.get(i) instanceof TLRPC.TL_privacyValueAllowAll) || (privacyRules.get(i) instanceof TLRPC.TL_privacyValueDisallowAll)) {
                        string = LocaleController.getString(C2888R.string.EditProfileBirthdayInfo);
                    }
                    i++;
                }
            }
            this.birthdayInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(string, new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fillItems$2();
                }
            }), true);
        }
        arrayList.add(UItem.asShadow(this.birthdayInfo));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.EditProfileName)));
        this.firstNameRow = arrayList.size();
        arrayList.add(UItem.asCustom(this.firstNameEdit));
        this.lastNameRow = arrayList.size();
        arrayList.add(UItem.asCustom(this.lastNameEdit));
        arrayList.add(UItem.asShadow(-1, null));
        if (BadgesController.INSTANCE.hasBadge() && this.nowPlayingService != null) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.NowPlaying)));
            arrayList.add(UItem.asButton(11, LocaleController.getString(C2888R.string.ScrobblingService), this.nowPlayingService.getDisplayName()));
            arrayList.add(UItem.asShadow(null));
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.EditProfileBio)));
        this.bioRow = arrayList.size();
        arrayList.add(UItem.asCustom(this.bioEdit));
        arrayList.add(UItem.asShadow(this.bioInfo));
        arrayList.add(UItem.asShadow(-2, null));
        this.channelRow = arrayList.size();
        if (this.channel == null) {
            arrayList.add(InfoCell.Factory.m1334of(3, C2888R.drawable.msg_channel_create, LocaleController.getString(C2888R.string.EditProfileChannelTitleAdd), null, 0).accent());
        } else {
            arrayList.add(UItem.asButton(3, LocaleController.getString(C2888R.string.EditProfileChannelTitle), this.channel.title));
        }
        if (this.hadLocation) {
            arrayList.add(UItem.asButton(4, C2888R.drawable.menu_premium_clock, LocaleController.getString(C2888R.string.EditProfileHours)));
        }
        if (this.hadLocation) {
            arrayList.add(UItem.asButton(5, C2888R.drawable.msg_map, LocaleController.getString(C2888R.string.EditProfileLocation)));
        }
        arrayList.add(UItem.asShadow(-3, null));
        boolean z = UserConfig.getActivatedAccountsCount() < 16;
        if (z) {
            this.addAccountRow = arrayList.size();
            arrayList.add(InfoCell.Factory.m1334of(9, C2888R.drawable.outline_add_account, LocaleController.getString(C2888R.string.AddAccount), null, 0).accent());
        }
        if (!this.accountNumbers.isEmpty()) {
            if (!z) {
                arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.SettingsAccounts)));
            }
            for (int i2 = 0; i2 < this.accountNumbers.size(); i2++) {
                arrayList.add(SettingsActivity.AccountCell.Factory.m1299of(i2, ((Integer) this.accountNumbers.get(i2)).intValue()));
            }
            if (!UserConfig.hasPremiumOnAccounts()) {
                int iMax = Math.max(0, UserConfig.getMaxAccountCount() - UserConfig.getActivatedAccountsCount());
                arrayList.add(UItem.asShadow(TextUtils.concat(iMax > 0 ? LocaleController.formatPluralStringComma("AddAccountInfo1", iMax) + " " : _UrlKt.FRAGMENT_ENCODE_SET, AndroidUtilities.replaceSingleTag(LocaleController.formatPluralStringComma("AddAccountInfo2", UserConfig.getMaxAccountCount()), new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fillItems$3();
                    }
                }))));
            } else {
                arrayList.add(UItem.asShadow(null));
            }
        }
        this.logoutRow = arrayList.size();
        arrayList.add(UItem.asButton(10, C2888R.drawable.msg_leave, LocaleController.getString(C2888R.string.LogOut)).red());
        arrayList.add(UItem.asShadow(-4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$2() {
        presentFragment(new PrivacyControlActivity(11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$3() {
        presentFragment(new PremiumPreviewFragment("add_account"));
    }

    public static String birthdayString(TL_account.TL_birthday tL_birthday) {
        if (tL_birthday == null) {
            return "—";
        }
        if ((tL_birthday.flags & 1) != 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, tL_birthday.year);
            calendar.set(2, tL_birthday.month - 1);
            calendar.set(5, tL_birthday.day);
            return LocaleController.getInstance().getFormatterBoostExpired().format(calendar.getTimeInMillis());
        }
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(2, tL_birthday.month - 1);
        calendar2.set(5, tL_birthday.day);
        return LocaleController.getInstance().getFormatterDayMonth().format(calendar2.getTimeInMillis());
    }

    @Override // org.telegram.p029ui.Components.UniversalFragment
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        Integer numValueOf = null;
        int i2 = 0;
        if (uItem.f2105id == 9) {
            for (int i3 = 15; i3 >= 0; i3--) {
                if (!UserConfig.getInstance(i3).isClientActivated()) {
                    i2++;
                    if (numValueOf == null) {
                        numValueOf = Integer.valueOf(i3);
                    }
                }
            }
            if (!UserConfig.hasPremiumOnAccounts()) {
                i2 -= 8;
            }
            if (i2 > 0 && numValueOf != null) {
                presentFragment(new LoginActivity(numValueOf.intValue()));
                return;
            } else {
                if (UserConfig.hasPremiumOnAccounts()) {
                    return;
                }
                showDialog(new LimitReachedBottomSheet(this, getContext(), 7, this.currentAccount, null));
                return;
            }
        }
        if (uItem.instanceOf(SettingsActivity.AccountCell.Factory.class)) {
            int i4 = uItem.intValue;
            LaunchActivity launchActivity = LaunchActivity.instance;
            if (launchActivity != null) {
                launchActivity.switchToAccount(i4, true);
                return;
            }
            return;
        }
        int i5 = uItem.f2105id;
        if (i5 == 1 || i5 == 8) {
            showDialog(AlertsCreator.createBirthdayPickerDialog(getContext(), LocaleController.getString(C2888R.string.EditProfileBirthdayTitle), LocaleController.getString(C2888R.string.EditProfileBirthdayButton), this.birthday, new Utilities.Callback() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$4((TL_account.TL_birthday) obj);
                }
            }, null, false, this.birthday != null, getResourceProvider()).create());
            return;
        }
        if (i5 == 2) {
            this.birthday = null;
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
            }
            checkDone(true);
            return;
        }
        if (i5 == 3) {
            AdminedChannelsFetcher adminedChannelsFetcher = this.channels;
            TLRPC.Chat chat = this.channel;
            presentFragment(new ChooseChannelFragment(adminedChannelsFetcher, chat == null ? 0L : chat.f1660id, new Utilities.Callback() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$5((TLRPC.Chat) obj);
                }
            }));
            return;
        }
        if (i5 == 5) {
            presentFragment(new LocationActivity());
            return;
        }
        if (i5 == 11) {
            presentFragment(new SetupNowPlayingActivity());
            return;
        }
        if (i5 == 4) {
            presentFragment(new OpeningHoursActivity());
            return;
        }
        if (i5 == 6) {
            presentFragment(new ActionIntroActivity(3));
        } else if (i5 == 7) {
            presentFragment(new ChangeUsernameActivity());
        } else if (i5 == 10) {
            presentFragment(new LogoutActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$4(TL_account.TL_birthday tL_birthday) {
        this.birthday = tL_birthday;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$5(TLRPC.Chat chat) {
        if (this.channel == chat) {
            return;
        }
        this.channel = chat;
        if (chat != null) {
            BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.EditProfileChannelSet)).show();
        }
        checkDone(true);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.userInfoDidLoad) {
            setValue();
            return;
        }
        if (i == NotificationCenter.updateInterfaces) {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.privacyRulesUpdated || i == NotificationCenter.nowPlayingUpdated) {
            if (i == NotificationCenter.nowPlayingUpdated) {
                Object obj = objArr[0];
                if (obj instanceof NowPlayingServiceType) {
                    this.nowPlayingService = (NowPlayingServiceType) obj;
                }
            }
            UniversalRecyclerView universalRecyclerView2 = this.listView;
            if (universalRecyclerView2 != null) {
                universalRecyclerView2.adapter.update(true);
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.channels.invalidate();
        this.channels.subscribe(new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onResume$6();
            }
        });
        this.channels.fetch();
        this.birthdayInfo = null;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$6() {
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
    }

    private void setValue() {
        UniversalAdapter universalAdapter;
        if (this.valueSet) {
            return;
        }
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        if (userFull == null) {
            getMessagesController().loadUserInfo(getUserConfig().getCurrentUser(), true, getClassGuid());
            return;
        }
        TLRPC.User currentUser = userFull.user;
        if (currentUser == null) {
            currentUser = getUserConfig().getCurrentUser();
        }
        if (currentUser == null) {
            return;
        }
        EditTextCell editTextCell = this.firstNameEdit;
        String str = currentUser.first_name;
        this.currentFirstName = str;
        editTextCell.setText(str);
        EditTextCell editTextCell2 = this.lastNameEdit;
        String str2 = currentUser.last_name;
        this.currentLastName = str2;
        editTextCell2.setText(str2);
        EditTextCell editTextCell3 = this.bioEdit;
        String str3 = userFull.about;
        this.currentBio = str3;
        editTextCell3.setText(str3);
        TL_account.TL_birthday tL_birthday = userFull.birthday;
        this.currentBirthday = tL_birthday;
        this.birthday = tL_birthday;
        if ((userFull.flags2 & 64) != 0) {
            this.currentChannel = userFull.personal_channel_id;
            this.channel = getMessagesController().getChat(Long.valueOf(this.currentChannel));
        } else {
            this.currentChannel = 0L;
            this.channel = null;
        }
        this.hadHours = userFull.business_work_hours != null;
        this.hadLocation = userFull.business_location != null;
        NowPlayingController.getNowPlayingInfo(new Consumer() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                this.f$0.lambda$setValue$8((NowPlayingInfoDTO) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        checkDone(true);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
        }
        this.valueSet = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setValue$8(final NowPlayingInfoDTO nowPlayingInfoDTO) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setValue$7(nowPlayingInfoDTO);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setValue$7(NowPlayingInfoDTO nowPlayingInfoDTO) {
        this.nowPlayingService = nowPlayingInfoDTO == null ? null : nowPlayingInfoDTO.getServiceType();
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
    }

    public boolean hasChanges() {
        String str = this.currentFirstName;
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (!TextUtils.equals(str, this.firstNameEdit.getText().toString())) {
            return true;
        }
        String str3 = this.currentLastName;
        if (str3 == null) {
            str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (!TextUtils.equals(str3, this.lastNameEdit.getText().toString())) {
            return true;
        }
        String str4 = this.currentBio;
        if (str4 != null) {
            str2 = str4;
        }
        if (!TextUtils.equals(str2, this.bioEdit.getText().toString()) || !birthdaysEqual(this.currentBirthday, this.birthday)) {
            return true;
        }
        long j = this.currentChannel;
        TLRPC.Chat chat = this.channel;
        return j != (chat != null ? chat.f1660id : 0L);
    }

    public static boolean birthdaysEqual(TL_account.TL_birthday tL_birthday, TL_account.TL_birthday tL_birthday2) {
        return (tL_birthday == null) != (tL_birthday2 != null) && (tL_birthday == null || (tL_birthday.day == tL_birthday2.day && tL_birthday.month == tL_birthday2.month && tL_birthday.year == tL_birthday2.year));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDone(boolean z) {
        if (this.doneButton == null) {
            return;
        }
        boolean zHasChanges = hasChanges();
        this.doneButton.setEnabled(zHasChanges);
        if (z) {
            this.doneButton.animate().alpha(zHasChanges ? 1.0f : 0.0f).scaleX(zHasChanges ? 1.0f : 0.0f).scaleY(zHasChanges ? 1.0f : 0.0f).setDuration(180L).start();
            return;
        }
        this.doneButton.setAlpha(zHasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleX(zHasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleY(zHasChanges ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone(boolean z) {
        if (this.doneButtonDrawable.getProgress() <= 0.0f) {
            if (z && TextUtils.isEmpty(this.firstNameEdit.getText())) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                EditTextCell editTextCell = this.firstNameEdit;
                int i = -this.shiftDp;
                this.shiftDp = i;
                AndroidUtilities.shakeViewSpring(editTextCell, i);
                return;
            }
            this.doneButtonDrawable.animateToProgress(1.0f);
            TLRPC.User currentUser = getUserConfig().getCurrentUser();
            final TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
            if (currentUser != null && userFull != null) {
                final ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(this.firstNameEdit.getText()) && (!TextUtils.equals(this.currentFirstName, this.firstNameEdit.getText().toString()) || !TextUtils.equals(this.currentLastName, this.lastNameEdit.getText().toString()) || !TextUtils.equals(this.currentBio, this.bioEdit.getText().toString()))) {
                    TL_account.updateProfile updateprofile = new TL_account.updateProfile();
                    updateprofile.flags |= 1;
                    String string = this.firstNameEdit.getText().toString();
                    currentUser.first_name = string;
                    updateprofile.first_name = string;
                    updateprofile.flags |= 2;
                    String string2 = this.lastNameEdit.getText().toString();
                    currentUser.last_name = string2;
                    updateprofile.last_name = string2;
                    updateprofile.flags |= 4;
                    String string3 = this.bioEdit.getText().toString();
                    userFull.about = string3;
                    updateprofile.about = string3;
                    userFull.flags = TextUtils.isEmpty(string3) ? userFull.flags & (-3) : userFull.flags | 2;
                    arrayList.add(updateprofile);
                }
                final TL_account.TL_birthday tL_birthday = userFull.birthday;
                if (!birthdaysEqual(this.currentBirthday, this.birthday)) {
                    TL_account.updateBirthday updatebirthday = new TL_account.updateBirthday();
                    TL_account.TL_birthday tL_birthday2 = this.birthday;
                    if (tL_birthday2 != null) {
                        userFull.flags2 |= 32;
                        userFull.birthday = tL_birthday2;
                        updatebirthday.flags |= 1;
                        updatebirthday.birthday = tL_birthday2;
                    } else {
                        userFull.flags2 &= -33;
                        userFull.birthday = null;
                    }
                    arrayList.add(updatebirthday);
                    getMessagesController().invalidateContentSettings();
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumPromoUpdated, new Object[0]);
                }
                long j = this.currentChannel;
                TLRPC.Chat chat = this.channel;
                if (j != (chat != null ? chat.f1660id : 0L)) {
                    TL_account.updatePersonalChannel updatepersonalchannel = new TL_account.updatePersonalChannel();
                    updatepersonalchannel.channel = MessagesController.getInputChannel(this.channel);
                    TLRPC.Chat chat2 = this.channel;
                    if (chat2 != null) {
                        userFull.flags |= 64;
                        long j2 = userFull.personal_channel_id;
                        long j3 = chat2.f1660id;
                        if (j2 != j3) {
                            userFull.personal_channel_message = 0;
                        }
                        userFull.personal_channel_id = j3;
                    } else {
                        userFull.flags &= -65;
                        userFull.personal_channel_message = 0;
                        userFull.personal_channel_id = 0L;
                    }
                    arrayList.add(updatepersonalchannel);
                }
                if (arrayList.isEmpty()) {
                    finishFragment();
                    return;
                }
                final int[] iArr = {0};
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    final TLObject tLObject = (TLObject) arrayList.get(i2);
                    getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda3
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$processDone$10(tLObject, tL_birthday, userFull, iArr, arrayList, tLObject2, tL_error);
                        }
                    }, 1024);
                }
                getMessagesStorage().updateUserInfo(userFull, false);
                getUserConfig().saveConfig(true);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$10(final TLObject tLObject, final TL_account.TL_birthday tL_birthday, final TLRPC.UserFull userFull, final int[] iArr, final ArrayList arrayList, final TLObject tLObject2, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$9(tL_error, tLObject, tL_birthday, userFull, tLObject2, iArr, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$9(TLRPC.TL_error tL_error, TLObject tLObject, TL_account.TL_birthday tL_birthday, TLRPC.UserFull userFull, TLObject tLObject2, int[] iArr, ArrayList arrayList) {
        String str;
        if (tL_error != null) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            boolean z = tLObject instanceof TL_account.updateBirthday;
            if (z && (str = tL_error.text) != null && str.startsWith("FLOOD_WAIT_")) {
                if (getContext() != null) {
                    showDialog(new AlertDialog.Builder(getContext(), this.resourceProvider).setTitle(LocaleController.getString(C2888R.string.PrivacyBirthdayTooOftenTitle)).setMessage(LocaleController.getString(C2888R.string.PrivacyBirthdayTooOftenMessage)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).create());
                }
            } else {
                BulletinFactory.showError(tL_error);
            }
            if (z) {
                if (tL_birthday != null) {
                    userFull.flags |= 32;
                } else {
                    userFull.flags &= -33;
                }
                userFull.birthday = tL_birthday;
                getMessagesStorage().updateUserInfo(userFull, false);
                return;
            }
            return;
        }
        if (tLObject2 instanceof TLRPC.TL_boolFalse) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            BulletinFactory.m1246of(this).createErrorBulletin(LocaleController.getString(C2888R.string.UnknownError)).show();
            return;
        }
        this.wasSaved = true;
        int i = iArr[0] + 1;
        iArr[0] = i;
        if (i == arrayList.size()) {
            if (ExteraConfig.titleText == 2) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserPremiumStatusChanged, new Object[0]);
            }
            finishFragment();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class AdminedChannelsFetcher {
        public final int currentAccount;
        public final boolean for_personal;
        public boolean loaded;
        public boolean loading;
        public final ArrayList chats = new ArrayList();
        private ArrayList callbacks = new ArrayList();

        public AdminedChannelsFetcher(int i, boolean z) {
            this.currentAccount = i;
            this.for_personal = z;
        }

        public void invalidate() {
            this.loaded = false;
        }

        public void fetch() {
            if (this.loaded || this.loading) {
                return;
            }
            this.loading = true;
            TLRPC.TL_channels_getAdminedPublicChannels tL_channels_getAdminedPublicChannels = new TLRPC.TL_channels_getAdminedPublicChannels();
            tL_channels_getAdminedPublicChannels.for_personal = this.for_personal;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_getAdminedPublicChannels, new RequestDelegate() { // from class: org.telegram.ui.UserInfoActivity$AdminedChannelsFetcher$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$fetch$1(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fetch$1(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.UserInfoActivity$AdminedChannelsFetcher$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fetch$0(tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fetch$0(TLObject tLObject) {
            if (tLObject instanceof TLRPC.messages_Chats) {
                this.chats.clear();
                this.chats.addAll(((TLRPC.messages_Chats) tLObject).chats);
            }
            int i = 0;
            MessagesController.getInstance(this.currentAccount).putChats(this.chats, false);
            this.loading = false;
            this.loaded = true;
            ArrayList arrayList = this.callbacks;
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Runnable) obj).run();
            }
            this.callbacks.clear();
        }

        public void subscribe(Runnable runnable) {
            if (this.loaded) {
                runnable.run();
            } else {
                this.callbacks.add(runnable);
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    private static class InfoCell extends LinearLayout {
        private boolean accent;
        private final ImageView icon2View;
        private final ImageView iconView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView subtitleView;
        private final LinearLayout textLayout;
        private final TextView titleView;

        public InfoCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            setOrientation(0);
            this.resourcesProvider = resourcesProvider;
            ImageView imageView = new ImageView(context);
            this.iconView = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            addView(imageView, LayoutHelper.createLinear(40, 40, 19, 12, 0, 12, 0));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setPadding(0, AndroidUtilities.m1124dp(10.0f), 0, AndroidUtilities.m1124dp(10.0f));
            addView(linearLayout, LayoutHelper.createLinear(0, -2, 1.0f, 23, 0, 0, 32, 0));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 16.0f);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 7, 0, 0, 0, 0));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 13.0f);
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 7, 0.0f, 4.33f, 0.0f, 0.0f));
            ImageView imageView2 = new ImageView(context);
            this.icon2View = imageView2;
            imageView2.setScaleType(scaleType);
            addView(imageView2, LayoutHelper.createLinear(40, 40, 21, 12, 0, 12, 0));
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        private void updateColors() {
            ImageView imageView = this.iconView;
            int color = Theme.getColor(this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
            this.icon2View.setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), mode));
            this.titleView.setTextColor(Theme.getColor(this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.subtitleView.setTextColor(Theme.getColor(this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider));
        }

        public void set(int i, CharSequence charSequence, CharSequence charSequence2, boolean z, int i2) {
            this.accent = z;
            this.iconView.setImageResource(i);
            if (i2 != 0) {
                this.icon2View.setVisibility(0);
                this.icon2View.setImageResource(i2);
            } else {
                this.icon2View.setVisibility(8);
            }
            this.titleView.setText(charSequence);
            this.subtitleView.setText(charSequence2);
            this.subtitleView.setVisibility(TextUtils.isEmpty(charSequence2) ? 8 : 0);
            int iM1124dp = AndroidUtilities.m1124dp(TextUtils.isEmpty(charSequence2) ? 15.0f : 10.0f);
            this.textLayout.setPadding(0, iM1124dp, 0, iM1124dp);
            updateColors();
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public InfoCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new InfoCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((InfoCell) view).set(uItem.iconResId, uItem.text, uItem.subtext, uItem.accent, uItem.intValue);
            }

            /* JADX INFO: renamed from: of */
            public static UItem m1334of(int i, int i2, CharSequence charSequence, CharSequence charSequence2, int i3) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = i;
                uItemOfFactory.iconResId = i2;
                uItemOfFactory.text = charSequence;
                uItemOfFactory.subtext = charSequence2;
                uItemOfFactory.intValue = i3;
                return uItemOfFactory;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes6.dex */
    static class ChooseChannelFragment extends UniversalFragment {
        private AdminedChannelsFetcher channels;
        private boolean invalidateAfterPause = false;
        private String query;
        private ActionBarMenuItem searchItem;
        private long selectedChannel;
        private Utilities.Callback whenSelected;

        @Override // org.telegram.p029ui.Components.UniversalFragment
        protected boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
            return false;
        }

        public ChooseChannelFragment(AdminedChannelsFetcher adminedChannelsFetcher, long j, Utilities.Callback callback) {
            this.channels = adminedChannelsFetcher;
            this.selectedChannel = j;
            this.whenSelected = callback;
            adminedChannelsFetcher.subscribe(new Runnable() { // from class: org.telegram.ui.UserInfoActivity$ChooseChannelFragment$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
            }
        }

        @Override // org.telegram.p029ui.Components.UniversalFragment, org.telegram.p029ui.ActionBar.BaseFragment
        public View createView(Context context) {
            ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C2888R.drawable.outline_header_search, getResourceProvider()).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.UserInfoActivity.ChooseChannelFragment.1
                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchExpand() {
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchCollapse() {
                    ChooseChannelFragment.this.query = null;
                    UniversalRecyclerView universalRecyclerView = ChooseChannelFragment.this.listView;
                    if (universalRecyclerView != null) {
                        universalRecyclerView.adapter.update(true);
                    }
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onTextChanged(EditText editText) {
                    ChooseChannelFragment.this.query = editText.getText().toString();
                    UniversalRecyclerView universalRecyclerView = ChooseChannelFragment.this.listView;
                    if (universalRecyclerView != null) {
                        universalRecyclerView.adapter.update(true);
                    }
                }
            });
            this.searchItem = actionBarMenuItemSearchListener;
            actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2888R.string.Search));
            this.searchItem.setContentDescription(LocaleController.getString(C2888R.string.Search));
            this.searchItem.setVisibility(8);
            super.createView(context);
            this.listView.setSections();
            this.actionBar.setAdaptiveBackground(this.listView);
            return this.fragmentView;
        }

        @Override // org.telegram.p029ui.Components.UniversalFragment
        protected CharSequence getTitle() {
            return LocaleController.getString(C2888R.string.EditProfileChannelTitle);
        }

        @Override // org.telegram.p029ui.Components.UniversalFragment
        protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
            if (TextUtils.isEmpty(this.query) && this.selectedChannel != 0) {
                arrayList.add(UItem.asButton(1, C2888R.drawable.msg_archive_hide, LocaleController.getString(C2888R.string.EditProfileChannelHide)).red());
                arrayList.add(UItem.asShadow(null));
            }
            if (TextUtils.isEmpty(this.query)) {
                arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.EditProfileChannelSelect)));
            }
            ArrayList arrayList2 = this.channels.chats;
            int size = arrayList2.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                TLRPC.Chat chat = (TLRPC.Chat) obj;
                if (chat != null && !ChatObject.isMegagroup(chat)) {
                    i++;
                    if (!TextUtils.isEmpty(this.query)) {
                        String lowerCase = this.query.toLowerCase();
                        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
                        String lowerCase2 = chat.title.toLowerCase();
                        String strTranslitSafe2 = AndroidUtilities.translitSafe(lowerCase2);
                        if (!lowerCase2.startsWith(lowerCase)) {
                            if (!lowerCase2.contains(" " + lowerCase) && !strTranslitSafe2.startsWith(strTranslitSafe)) {
                                if (!strTranslitSafe2.contains(" " + strTranslitSafe)) {
                                }
                            }
                        }
                    }
                    arrayList.add(UItem.asFilterChat(true, -chat.f1660id).setChecked(this.selectedChannel == chat.f1660id));
                }
            }
            if (TextUtils.isEmpty(this.query) && i == 0) {
                arrayList.add(UItem.asButton(2, C2888R.drawable.msg_channel_create, LocaleController.getString(C2888R.string.EditProfileChannelStartNew)).accent());
            }
            arrayList.add(UItem.asShadow(null));
            ActionBarMenuItem actionBarMenuItem = this.searchItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(i <= 5 ? 8 : 0);
            }
        }

        @Override // org.telegram.p029ui.ActionBar.BaseFragment
        public void onResume() {
            super.onResume();
            if (this.invalidateAfterPause) {
                this.channels.invalidate();
                this.channels.subscribe(new Runnable() { // from class: org.telegram.ui.UserInfoActivity$ChooseChannelFragment$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onResume$1();
                    }
                });
                this.invalidateAfterPause = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResume$1() {
            UniversalRecyclerView universalRecyclerView = this.listView;
            if (universalRecyclerView != null) {
                universalRecyclerView.adapter.update(true);
            }
        }

        @Override // org.telegram.p029ui.Components.UniversalFragment
        protected void onClick(UItem uItem, View view, int i, float f, float f2) {
            int i2 = uItem.f2105id;
            if (i2 == 1) {
                this.whenSelected.run(null);
                finishFragment();
                return;
            }
            if (i2 == 2) {
                this.invalidateAfterPause = true;
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                if (!BuildVars.DEBUG_VERSION && globalMainSettings.getBoolean("channel_intro", false)) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("step", 0);
                    presentFragment(new ChannelCreateActivity(bundle));
                    return;
                } else {
                    presentFragment(new ActionIntroActivity(0));
                    globalMainSettings.edit().putBoolean("channel_intro", true).apply();
                    return;
                }
            }
            if (uItem.viewType == 12) {
                finishFragment();
                this.whenSelected.run(getMessagesController().getChat(Long.valueOf(-uItem.dialogId)));
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
