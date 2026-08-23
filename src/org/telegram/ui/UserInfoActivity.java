package org.telegram.ui;

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
import com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Objects;
import java.util.function.Consumer;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.BusinessChatbotController;
import org.telegram.ui.Business.ChatbotsActivity;
import org.telegram.ui.Business.OpeningHoursActivity;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CircularProgressDrawable;
import org.telegram.ui.Components.CrossfadeDrawable;
import org.telegram.ui.Components.IconBackgroundColors;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalFragment;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.SettingsActivity;

/* JADX INFO: loaded from: classes6.dex */
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
    private int bioInfoHash = Integer.MIN_VALUE;
    private ArrayList<TL_account.TL_connectedBot> bots = new ArrayList<>();
    private final ArrayList<Integer> accountNumbers = new ArrayList<>();
    private AdminedChannelsFetcher channels = new AdminedChannelsFetcher(this.currentAccount, true);
    private boolean wasSaved = false;
    private int shiftDp = -4;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public CharSequence getTitle() {
        return LocaleController.getString(C2573R.string.EditAccountInfo2);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.privacyRulesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().addObserver(this, NotificationCenter.nowPlayingUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.updatedChatbot);
        getContactsController().loadPrivacySettings();
        BusinessChatbotController.getInstance(this.currentAccount).load(null);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.privacyRulesUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().removeObserver(this, NotificationCenter.nowPlayingUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.updatedChatbot);
        super.onFragmentDestroy();
        if (this.wasSaved) {
            return;
        }
        processDone(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openBioSettings() {
        presentFragment(new PrivacyControlActivity(9, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateBioInfo() {
        UniversalRecyclerView universalRecyclerView;
        int i = this.bioInfoHash;
        EditTextCell editTextCell = this.bioEdit;
        int i2 = 0;
        if (editTextCell == null || TextUtils.isEmpty(editTextCell.getText())) {
            this.bioInfo = LocaleController.getString(C2573R.string.EditProfileBioInfo2);
            this.bioInfoHash = Objects.hash(0);
        } else {
            ArrayList<TLRPC.PrivacyRule> privacyRules = getContactsController().getPrivacyRules(9);
            if (privacyRules == null) {
                this.bioInfo = LocaleController.getString(C2573R.string.Loading);
                this.bioInfoHash = Objects.hash(1);
            } else {
                int size = 0;
                int size2 = 0;
                boolean z = false;
                byte b2 = -1;
                for (int i3 = 0; i3 < privacyRules.size(); i3++) {
                    TLRPC.PrivacyRule privacyRule = privacyRules.get(i3);
                    if (privacyRule instanceof TLRPC.TL_privacyValueAllowChatParticipants) {
                        TLRPC.TL_privacyValueAllowChatParticipants tL_privacyValueAllowChatParticipants = (TLRPC.TL_privacyValueAllowChatParticipants) privacyRule;
                        int size3 = tL_privacyValueAllowChatParticipants.chats.size();
                        for (int i4 = 0; i4 < size3; i4++) {
                            TLRPC.Chat chat = getMessagesController().getChat(tL_privacyValueAllowChatParticipants.chats.get(i4));
                            if (chat != null) {
                                size2 += Math.max(0, chat.participants_count - 1);
                            }
                        }
                    } else if (privacyRule instanceof TLRPC.TL_privacyValueDisallowChatParticipants) {
                        TLRPC.TL_privacyValueDisallowChatParticipants tL_privacyValueDisallowChatParticipants = (TLRPC.TL_privacyValueDisallowChatParticipants) privacyRule;
                        int size4 = tL_privacyValueDisallowChatParticipants.chats.size();
                        for (int i5 = 0; i5 < size4; i5++) {
                            TLRPC.Chat chat2 = getMessagesController().getChat(tL_privacyValueDisallowChatParticipants.chats.get(i5));
                            if (chat2 != null) {
                                size += Math.max(0, chat2.participants_count - 1);
                            }
                        }
                    } else if (privacyRule instanceof TLRPC.TL_privacyValueAllowUsers) {
                        size2 += ((TLRPC.TL_privacyValueAllowUsers) privacyRule).users.size();
                    } else if (privacyRule instanceof TLRPC.TL_privacyValueDisallowUsers) {
                        size += ((TLRPC.TL_privacyValueDisallowUsers) privacyRule).users.size();
                    } else {
                        boolean z2 = privacyRule instanceof TLRPC.TL_privacyValueAllowAll;
                        if (z2) {
                            b2 = 0;
                        } else {
                            boolean z3 = privacyRule instanceof TLRPC.TL_privacyValueDisallowAll;
                            if (!z3 || z) {
                                if (privacyRule instanceof TLRPC.TL_privacyValueAllowContacts) {
                                    z = true;
                                } else if (b2 == -1) {
                                    if (!z2) {
                                        if (z3 && !z) {
                                            b2 = 1;
                                        }
                                    }
                                    b2 = 0;
                                }
                                b2 = 2;
                            }
                        }
                    }
                }
                if (b2 != 0 && (b2 != -1 || size <= 0)) {
                    i2 = (b2 == 2 || (b2 == -1 && size > 0 && size2 > 0)) ? 2 : (b2 == 1 || (b2 == -1 && size2 > 0)) ? 1 : -1;
                }
                if (i2 == 0) {
                    if (size <= 0) {
                        this.bioInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.EditProfileBioInfoEveryone), new UserInfoActivity$$ExternalSyntheticLambda1(this)), true);
                    } else {
                        this.bioInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C2573R.string.EditProfileBioInfoEveryoneExcept, Integer.valueOf(size)), new UserInfoActivity$$ExternalSyntheticLambda1(this)), true);
                    }
                } else if (i2 == 2) {
                    if (size <= 0 && size2 <= 0) {
                        this.bioInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.EditProfileBioInfoContacts), new UserInfoActivity$$ExternalSyntheticLambda1(this)), true);
                    } else {
                        String strConcat = size2 <= 0 ? _UrlKt.FRAGMENT_ENCODE_SET : "+" + size2;
                        if (size > 0) {
                            if (strConcat.length() > 0) {
                                strConcat = strConcat.concat(", ");
                            }
                            strConcat = strConcat + "-" + size;
                        }
                        this.bioInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C2573R.string.EditProfileBioInfoContactsExtra, strConcat), new UserInfoActivity$$ExternalSyntheticLambda1(this)), true);
                    }
                } else if (i2 != 0) {
                    this.bioInfo = AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.EditProfileBioInfoUnknown), new UserInfoActivity$$ExternalSyntheticLambda1(this));
                } else if (size2 <= 0) {
                    this.bioInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.EditProfileBioInfoNobody), new UserInfoActivity$$ExternalSyntheticLambda1(this)), true);
                } else {
                    this.bioInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.formatString(C2573R.string.EditProfileBioInfoNobodyExcept, Integer.valueOf(size2)), new UserInfoActivity$$ExternalSyntheticLambda1(this)), true);
                }
                this.bioInfoHash = Objects.hash(Integer.valueOf(i2 + 10), Integer.valueOf(size2), Integer.valueOf(size));
            }
        }
        if (i == this.bioInfoHash || (universalRecyclerView = this.listView) == null) {
            return;
        }
        universalRecyclerView.adapter.update(true);
    }

    @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i = -1;
        boolean z = false;
        boolean z2 = false;
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2573R.string.EditProfileFirstName), z, z2, i, this.resourceProvider) { // from class: org.telegram.ui.UserInfoActivity.1
            @Override // org.telegram.ui.Cells.EditTextCell
            public void onTextChanged(CharSequence charSequence) {
                super.onTextChanged(charSequence);
                UserInfoActivity.this.checkDone(true);
            }
        };
        this.firstNameEdit = editTextCell;
        editTextCell.setDivider(true);
        this.firstNameEdit.hideKeyboardOnEnter();
        EditTextCell editTextCell2 = new EditTextCell(context, LocaleController.getString(C2573R.string.EditProfileLastName), z, z2, i, this.resourceProvider) { // from class: org.telegram.ui.UserInfoActivity.2
            @Override // org.telegram.ui.Cells.EditTextCell
            public void onTextChanged(CharSequence charSequence) {
                super.onTextChanged(charSequence);
                UserInfoActivity.this.checkDone(true);
            }
        };
        this.lastNameEdit = editTextCell2;
        editTextCell2.hideKeyboardOnEnter();
        EditTextCell editTextCell3 = new EditTextCell(context, LocaleController.getString(C2573R.string.EditProfileBioHint2), true, z2, getMessagesController().getAboutLimit(), this.resourceProvider) { // from class: org.telegram.ui.UserInfoActivity.3
            @Override // org.telegram.ui.Cells.EditTextCell
            public void onTextChanged(CharSequence charSequence) {
                super.onTextChanged(charSequence);
                UserInfoActivity.this.checkDone(true);
                UserInfoActivity.this.updateBioInfo();
            }
        };
        this.bioEdit = editTextCell3;
        editTextCell3.setShowLimitWhenEmpty(true);
        updateBioInfo();
        this.bioInfo = AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.EditProfileBioInfo2), new UserInfoActivity$$ExternalSyntheticLambda1(this));
        super.createView(context);
        UniversalRecyclerView universalRecyclerView = super.listView;
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.setClipToPadding(false);
        this.actionBar.setAdaptiveBackground(this.listView);
        INavigationLayout iNavigationLayout = this.parentLayout;
        if (iNavigationLayout != null && iNavigationLayout.isRightLayout()) {
            this.actionBar.setBackButtonImage(C2573R.drawable.ic_ab_close);
        }
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
        Drawable drawableMutate = context.getResources().getDrawable(C2573R.drawable.ic_ab_done).mutate();
        int i2 = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
        this.doneButtonDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i2)));
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, this.doneButtonDrawable, AndroidUtilities.dp(56.0f), LocaleController.getString(C2573R.string.Done));
        checkDone(false);
        setValue();
        return this.fragmentView;
    }

    private void updateAccounts() {
        this.accountNumbers.clear();
        for (int i = 0; i < 16; i++) {
            if (UserConfig.getInstance(i).isClientActivated() && this.currentAccount != i) {
                this.accountNumbers.add(Integer.valueOf(i));
            }
        }
        Collections.sort(this.accountNumbers, new Comparator() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda11
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return UserInfoActivity.$r8$lambda$KOVUqJtbyR3NKG4ztFlfsPzpfV8((Integer) obj, (Integer) obj2);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$KOVUqJtbyR3NKG4ztFlfsPzpfV8(Integer num, Integer num2) {
        long j = UserConfig.getInstance(num.intValue()).loginTime;
        long j2 = UserConfig.getInstance(num2.intValue()).loginTime;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        ArrayList<TLRPC.PrivacyRule> privacyRules;
        this.addAccountRow = -1;
        this.numberRow = -1;
        updateAccounts();
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.EditProfileName)));
        this.firstNameRow = arrayList.size();
        arrayList.add(UItem.asCustom(this.firstNameEdit));
        this.lastNameRow = arrayList.size();
        arrayList.add(UItem.asCustom(this.lastNameEdit));
        arrayList.add(UItem.asShadow(-1, null));
        this.bioRow = arrayList.size();
        arrayList.add(UItem.asCustom(this.bioEdit));
        arrayList.add(UItem.asShadow(this.bioInfo));
        TLRPC.User currentUser = getUserConfig().getCurrentUser();
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.EditAccountInfoHeader)));
        if (currentUser != null) {
            this.numberRow = arrayList.size();
            IconBackgroundColors iconBackgroundColors = IconBackgroundColors.GREEN;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(7, iconBackgroundColors.top, iconBackgroundColors.bottom, C2573R.drawable.settings_calls, PhoneFormat.getInstance().format("+" + currentUser.phone), LocaleController.getString(C2573R.string.TapToChangePhone)));
        }
        this.usernameRow = arrayList.size();
        if (UserObject.getPublicUsername(currentUser) != null) {
            IconBackgroundColors iconBackgroundColors2 = IconBackgroundColors.ORANGE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(8, iconBackgroundColors2.top, iconBackgroundColors2.bottom, C2573R.drawable.filled_chatlist_mention, "@" + UserObject.getPublicUsername(currentUser), LocaleController.getString(C2573R.string.Username)));
        } else {
            IconBackgroundColors iconBackgroundColors3 = IconBackgroundColors.ORANGE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(8, iconBackgroundColors3.top, iconBackgroundColors3.bottom, C2573R.drawable.filled_chatlist_mention, LocaleController.getString(C2573R.string.AddUsername), null));
        }
        this.birthdayRow = arrayList.size();
        TL_account.TL_birthday tL_birthday = this.birthday;
        if (tL_birthday != null) {
            IconBackgroundColors iconBackgroundColors4 = IconBackgroundColors.BLUE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(9, iconBackgroundColors4.top, iconBackgroundColors4.bottom, C2573R.drawable.filled_birthday, birthdayString(tL_birthday), LocaleController.getString(C2573R.string.ContactBirthday)));
        } else {
            IconBackgroundColors iconBackgroundColors5 = IconBackgroundColors.BLUE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(9, iconBackgroundColors5.top, iconBackgroundColors5.bottom, C2573R.drawable.filled_birthday, LocaleController.getString(C2573R.string.AddBirthday), null));
        }
        if (!getContactsController().getLoadingPrivacyInfo(11) && (privacyRules = getContactsController().getPrivacyRules(11)) != null && this.birthdayInfo == null) {
            String string = LocaleController.getString(C2573R.string.EditProfileBirthdayInfoContacts);
            if (!privacyRules.isEmpty()) {
                int i = 0;
                while (true) {
                    if (i >= privacyRules.size()) {
                        break;
                    }
                    if (privacyRules.get(i) instanceof TLRPC.TL_privacyValueAllowContacts) {
                        string = LocaleController.getString(C2573R.string.EditProfileBirthdayInfoContacts);
                        break;
                    }
                    if ((privacyRules.get(i) instanceof TLRPC.TL_privacyValueAllowAll) || (privacyRules.get(i) instanceof TLRPC.TL_privacyValueDisallowAll)) {
                        string = LocaleController.getString(C2573R.string.EditProfileBirthdayInfo);
                    }
                    i++;
                }
            }
            this.birthdayInfo = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(string, new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fillItems$1();
                }
            }), true);
        }
        arrayList.add(UItem.asShadow(this.birthdayInfo));
        if (BadgesController.INSTANCE.hasBadge() && this.nowPlayingService != null) {
            IconBackgroundColors iconBackgroundColors6 = IconBackgroundColors.CYAN;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(12, iconBackgroundColors6.top, iconBackgroundColors6.bottom, C2573R.drawable.msg_filled_data_music, LocaleController.getString(C2573R.string.ScrobblingService), null, this.nowPlayingService.getDisplayName()));
        }
        this.channelRow = arrayList.size();
        if (this.channel == null) {
            IconBackgroundColors iconBackgroundColors7 = IconBackgroundColors.ORANGE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(3, iconBackgroundColors7.top, iconBackgroundColors7.bottom, C2573R.drawable.msg_filled_menu_channels, LocaleController.getString(C2573R.string.EditProfileChannelTitle), null, LocaleController.getString(C2573R.string.EditProfileChannelAdd)));
        } else {
            IconBackgroundColors iconBackgroundColors8 = IconBackgroundColors.ORANGE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(3, iconBackgroundColors8.top, iconBackgroundColors8.bottom, C2573R.drawable.msg_filled_menu_channels, LocaleController.getString(C2573R.string.EditProfileChannelTitle), this.channel.title));
        }
        if (this.hadHours) {
            IconBackgroundColors iconBackgroundColors9 = IconBackgroundColors.ORANGE_DEEP;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(4, iconBackgroundColors9.top, iconBackgroundColors9.bottom, C2573R.drawable.filled_premium_hours, LocaleController.getString(C2573R.string.EditProfileHours)));
        }
        if (this.hadLocation) {
            IconBackgroundColors iconBackgroundColors10 = IconBackgroundColors.RED;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(5, iconBackgroundColors10.top, iconBackgroundColors10.bottom, C2573R.drawable.filled_location, LocaleController.getString(C2573R.string.EditProfileLocation)));
        }
        ArrayList<TL_account.TL_connectedBot> arrayList2 = this.bots;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            ArrayList<TL_account.TL_connectedBot> arrayList3 = this.bots;
            int size = arrayList3.size();
            int i2 = 0;
            while (i2 < size) {
                TL_account.TL_connectedBot tL_connectedBot = arrayList3.get(i2);
                i2++;
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_connectedBot.bot_id));
                if (user != null) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(UserObject.getUserName(user));
                }
            }
            IconBackgroundColors iconBackgroundColors11 = IconBackgroundColors.PURPLE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(6, iconBackgroundColors11.top, iconBackgroundColors11.bottom, C2573R.drawable.premium_ai_editor, LocaleController.getString(C2573R.string.EditProfileChatAutomation), sb));
        } else {
            IconBackgroundColors iconBackgroundColors12 = IconBackgroundColors.PURPLE;
            arrayList.add(SettingsActivity.SettingCell.Factory.of(6, iconBackgroundColors12.top, iconBackgroundColors12.bottom, C2573R.drawable.premium_ai_editor, TextCell.applyNewSpan(LocaleController.getString(C2573R.string.EditProfileChatAutomation))));
        }
        arrayList.add(UItem.asShadow(-3, LocaleController.getString(C2573R.string.EditProfileChatAutomationInfo)));
        boolean z = UserConfig.getActivatedAccountsCount() < 16;
        if (z) {
            this.addAccountRow = arrayList.size();
            arrayList.add(InfoCell.Factory.of(10, C2573R.drawable.outline_add_account, LocaleController.getString(C2573R.string.AddAccount), null, 0).accent());
        }
        if (!this.accountNumbers.isEmpty()) {
            if (!z) {
                arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.SettingsAccounts)));
            }
            for (int i3 = 0; i3 < this.accountNumbers.size(); i3++) {
                arrayList.add(SettingsActivity.AccountCell.Factory.of(i3, this.accountNumbers.get(i3).intValue()));
            }
            if (!UserConfig.hasPremiumOnAccounts()) {
                int iMax = Math.max(0, UserConfig.getMaxAccountCount() - UserConfig.getActivatedAccountsCount());
                arrayList.add(UItem.asShadow(TextUtils.concat(iMax > 0 ? LocaleController.formatPluralStringComma("AddAccountInfo1", iMax) + " " : _UrlKt.FRAGMENT_ENCODE_SET, AndroidUtilities.replaceSingleTag(LocaleController.formatPluralStringComma("AddAccountInfo2", UserConfig.getMaxAccountCount()), new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fillItems$2();
                    }
                }))));
            } else {
                arrayList.add(UItem.asShadow(null));
            }
        }
        this.logoutRow = arrayList.size();
        arrayList.add(InfoCell.Factory.of(11, C2573R.drawable.msg_leave, LocaleController.getString(C2573R.string.LogOut), null, 0).red());
        arrayList.add(UItem.asShadow(-4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$1() {
        presentFragment(new PrivacyControlActivity(11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$2() {
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

    @Override // org.telegram.ui.Components.UniversalFragment
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        Integer numValueOf = null;
        int i2 = 0;
        if (uItem.id == 10) {
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
        int i5 = uItem.id;
        if (i5 == 1 || i5 == 9) {
            showDialog(AlertsCreator.createBirthdayPickerDialog(getContext(), LocaleController.getString(C2573R.string.EditProfileBirthdayTitle), LocaleController.getString(C2573R.string.EditProfileBirthdayButton), this.birthday, new Utilities.Callback() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$3((TL_account.TL_birthday) obj);
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
            presentFragment(new ChooseChannelFragment(adminedChannelsFetcher, chat == null ? 0L : chat.id, new Utilities.Callback() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onClick$4((TLRPC.Chat) obj);
                }
            }));
            return;
        }
        if (i5 == 5) {
            presentFragment(new org.telegram.ui.Business.LocationActivity());
            return;
        }
        if (i5 == 12) {
            presentFragment(new SetupNowPlayingActivity());
            return;
        }
        if (i5 == 4) {
            presentFragment(new OpeningHoursActivity());
            return;
        }
        if (i5 == 6) {
            presentFragment(new ChatbotsActivity());
            return;
        }
        if (i5 == 7) {
            presentFragment(new ActionIntroActivity(3));
        } else if (i5 == 8) {
            presentFragment(new ChangeUsernameActivity());
        } else if (i5 == 11) {
            presentFragment(new LogoutActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$3(TL_account.TL_birthday tL_birthday) {
        this.birthday = tL_birthday;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$4(TLRPC.Chat chat) {
        if (this.channel == chat) {
            return;
        }
        this.channel = chat;
        if (chat != null) {
            BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.contact_check, LocaleController.getString(C2573R.string.EditProfileChannelSet)).show();
        }
        checkDone(true);
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null) {
            universalRecyclerView.adapter.update(true);
        }
    }

    @Override // org.telegram.ui.Components.UniversalFragment
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        final String str;
        final int i2;
        TLRPC.User currentUser = getUserConfig().getCurrentUser();
        if (uItem.id == 7 && currentUser != null && !TextUtils.isEmpty(currentUser.phone)) {
            str = "+" + currentUser.phone;
            i2 = C2573R.string.PhoneCopied;
        } else {
            if (uItem.id != 8 || TextUtils.isEmpty(UserObject.getPublicUsername(currentUser))) {
                return false;
            }
            str = "@" + UserObject.getPublicUsername(currentUser);
            i2 = C2573R.string.UsernameCopied;
        }
        ItemOptions.makeOptions(this, view).setScrimViewBackground(this.listView.getClipBackground(view)).add(C2573R.drawable.msg_copy, LocaleController.getString(C2573R.string.Copy), new Runnable() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$5(str, i2);
            }
        }).setGravity(3).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$5(String str, int i) {
        AndroidUtilities.addToClipboard(str);
        if (AndroidUtilities.shouldShowClipboardToast()) {
            BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(i)).show();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ArrayList<TL_account.TL_connectedBot> arrayList;
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
            } else {
                updateBioInfo();
            }
            UniversalRecyclerView universalRecyclerView2 = this.listView;
            if (universalRecyclerView2 != null) {
                universalRecyclerView2.adapter.update(true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.updatedChatbot) {
            TL_account.connectedBots value = BusinessChatbotController.getInstance(this.currentAccount).getValue();
            if (value == null || (arrayList = value.connected_bots) == null) {
                arrayList = new ArrayList<>();
            }
            this.bots = arrayList;
            UniversalRecyclerView universalRecyclerView3 = this.listView;
            if (universalRecyclerView3 != null) {
                universalRecyclerView3.adapter.update(true);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
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
            public final void accept(Object obj) {
                this.f$0.lambda$setValue$8((NowPlayingInfoDTO) obj);
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
        return j != (chat != null ? chat.id : 0L);
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
        ActionBarMenuItem actionBarMenuItem = this.doneButton;
        if (z) {
            actionBarMenuItem.animate().alpha(zHasChanges ? 1.0f : 0.0f).scaleX(zHasChanges ? 1.0f : 0.0f).scaleY(zHasChanges ? 1.0f : 0.0f).setDuration(180L).start();
            return;
        }
        actionBarMenuItem.setAlpha(zHasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleX(zHasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleY(zHasChanges ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone(boolean z) {
        if (this.doneButtonDrawable.getProgress() > 0.0f) {
            return;
        }
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
        if (currentUser == null || userFull == null) {
            return;
        }
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
            boolean zIsEmpty = TextUtils.isEmpty(string3);
            int i2 = userFull.flags;
            userFull.flags = zIsEmpty ? i2 & (-3) : i2 | 2;
            arrayList.add(updateprofile);
        }
        final TL_account.TL_birthday tL_birthday = userFull.birthday;
        if (!birthdaysEqual(this.currentBirthday, this.birthday)) {
            TL_account.updateBirthday updatebirthday = new TL_account.updateBirthday();
            TL_account.TL_birthday tL_birthday2 = this.birthday;
            int i3 = userFull.flags2;
            if (tL_birthday2 != null) {
                userFull.flags2 = i3 | 32;
                userFull.birthday = tL_birthday2;
                updatebirthday.flags |= 1;
                updatebirthday.birthday = tL_birthday2;
            } else {
                userFull.flags2 = i3 & (-33);
                userFull.birthday = null;
            }
            arrayList.add(updatebirthday);
            getMessagesController().invalidateContentSettings();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumPromoUpdated, new Object[0]);
        }
        long j = this.currentChannel;
        TLRPC.Chat chat = this.channel;
        if (j != (chat != null ? chat.id : 0L)) {
            TL_account.updatePersonalChannel updatepersonalchannel = new TL_account.updatePersonalChannel();
            updatepersonalchannel.channel = MessagesController.getInputChannel(this.channel);
            TLRPC.Chat chat2 = this.channel;
            int i4 = userFull.flags;
            if (chat2 != null) {
                userFull.flags = i4 | 64;
                long j2 = userFull.personal_channel_id;
                long j3 = chat2.id;
                if (j2 != j3) {
                    userFull.personal_channel_message = 0;
                }
                userFull.personal_channel_id = j3;
            } else {
                userFull.flags = i4 & (-65);
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
        int i5 = 0;
        while (i5 < arrayList.size()) {
            final TLObject tLObject = (TLObject) arrayList.get(i5);
            final UserInfoActivity userInfoActivity = this;
            this.getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.ui.UserInfoActivity$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$processDone$10(tLObject, tL_birthday, userFull, iArr, arrayList, tLObject2, tL_error);
                }
            }, 1024);
            i5++;
            this = userInfoActivity;
        }
        UserInfoActivity userInfoActivity2 = this;
        userInfoActivity2.getMessagesStorage().updateUserInfo(userFull, false);
        userInfoActivity2.getUserConfig().saveConfig(true);
        NotificationCenter.getInstance(userInfoActivity2.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        NotificationCenter.getInstance(userInfoActivity2.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
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
                    showDialog(new AlertDialog.Builder(getContext(), this.resourceProvider).setTitle(LocaleController.getString(C2573R.string.PrivacyBirthdayTooOftenTitle)).setMessage(LocaleController.getString(C2573R.string.PrivacyBirthdayTooOftenMessage)).setPositiveButton(LocaleController.getString(C2573R.string.OK), null).create());
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
            BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2573R.string.UnknownError)).show();
            return;
        }
        this.wasSaved = true;
        int i = iArr[0] + 1;
        iArr[0] = i;
        if (i == arrayList.size()) {
            if (ExteraConfig.getTitleText() == 2) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserPremiumStatusChanged, new Object[0]);
            }
            finishFragment();
        }
    }

    public static class AdminedChannelsFetcher {
        public final int currentAccount;
        public final boolean for_personal;
        public boolean loaded;
        public boolean loading;
        public final ArrayList<TLRPC.Chat> chats = new ArrayList<>();
        private ArrayList<Runnable> callbacks = new ArrayList<>();

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
            ArrayList<Runnable> arrayList = this.callbacks;
            int size = arrayList.size();
            while (i < size) {
                Runnable runnable = arrayList.get(i);
                i++;
                runnable.run();
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

    public static class InfoCell extends LinearLayout {
        private boolean accent;
        private final ImageView icon2View;
        private final ImageView iconView;
        private boolean red;
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
            linearLayout.setPadding(0, AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f));
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
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        private void updateColors() {
            ImageView imageView = this.iconView;
            int color = Theme.getColor(this.red ? Theme.key_text_RedBold : this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
            this.icon2View.setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.red ? Theme.key_text_RedBold : this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), mode));
            this.titleView.setTextColor(Theme.getColor(this.red ? Theme.key_text_RedRegular : this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.subtitleView.setTextColor(Theme.getColor(this.red ? Theme.key_text_RedRegular : this.accent ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider));
        }

        public void set(int i, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, int i2) {
            this.accent = z;
            this.red = z2;
            this.iconView.setImageResource(i);
            ImageView imageView = this.icon2View;
            if (i2 != 0) {
                imageView.setVisibility(0);
                this.icon2View.setImageResource(i2);
            } else {
                imageView.setVisibility(8);
            }
            this.titleView.setText(charSequence);
            this.subtitleView.setText(charSequence2);
            this.subtitleView.setVisibility(TextUtils.isEmpty(charSequence2) ? 8 : 0);
            int iDp = AndroidUtilities.dp(TextUtils.isEmpty(charSequence2) ? 15.0f : 10.0f);
            this.textLayout.setPadding(0, iDp, 0, iDp);
            updateColors();
        }

        public static class Factory extends UItem.UItemFactory<InfoCell> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public InfoCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new InfoCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((InfoCell) view).set(uItem.iconResId, uItem.text, uItem.subtext, uItem.accent, uItem.red, uItem.intValue);
            }

            public static UItem of(int i, int i2, CharSequence charSequence, CharSequence charSequence2, int i3) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.iconResId = i2;
                uItemOfFactory.text = charSequence;
                uItemOfFactory.subtext = charSequence2;
                uItemOfFactory.intValue = i3;
                return uItemOfFactory;
            }
        }
    }

    public static class ChooseChannelFragment extends UniversalFragment {
        private AdminedChannelsFetcher channels;
        private boolean invalidateAfterPause = false;
        private String query;
        private ActionBarMenuItem searchItem;
        private long selectedChannel;
        private Utilities.Callback<TLRPC.Chat> whenSelected;

        @Override // org.telegram.ui.Components.UniversalFragment
        public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
            return false;
        }

        public ChooseChannelFragment(AdminedChannelsFetcher adminedChannelsFetcher, long j, Utilities.Callback<TLRPC.Chat> callback) {
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

        @Override // org.telegram.ui.Components.UniversalFragment, org.telegram.ui.ActionBar.BaseFragment
        public View createView(Context context) {
            ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C2573R.drawable.outline_header_search, getResourceProvider()).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.UserInfoActivity.ChooseChannelFragment.1
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
            actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2573R.string.Search));
            this.searchItem.setContentDescription(LocaleController.getString(C2573R.string.Search));
            this.searchItem.setVisibility(8);
            super.createView(context);
            this.listView.setSections();
            this.actionBar.setAdaptiveBackground(this.listView);
            return this.fragmentView;
        }

        @Override // org.telegram.ui.Components.UniversalFragment
        public CharSequence getTitle() {
            return LocaleController.getString(C2573R.string.EditProfileChannelTitle);
        }

        @Override // org.telegram.ui.Components.UniversalFragment
        public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
            if (TextUtils.isEmpty(this.query) && this.selectedChannel != 0) {
                arrayList.add(UItem.asButton(1, C2573R.drawable.msg_archive_hide, LocaleController.getString(C2573R.string.EditProfileChannelHide)).red());
                arrayList.add(UItem.asShadow(null));
            }
            if (TextUtils.isEmpty(this.query)) {
                arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.EditProfileChannelSelect)));
            }
            ArrayList<TLRPC.Chat> arrayList2 = this.channels.chats;
            int size = arrayList2.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                TLRPC.Chat chat = arrayList2.get(i2);
                i2++;
                TLRPC.Chat chat2 = chat;
                if (chat2 != null && !ChatObject.isMegagroup(chat2)) {
                    i++;
                    if (!TextUtils.isEmpty(this.query)) {
                        String lowerCase = this.query.toLowerCase();
                        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
                        String lowerCase2 = chat2.title.toLowerCase();
                        String strTranslitSafe2 = AndroidUtilities.translitSafe(lowerCase2);
                        if (!lowerCase2.startsWith(lowerCase)) {
                            if (!lowerCase2.contains(" " + lowerCase) && !strTranslitSafe2.startsWith(strTranslitSafe)) {
                                if (!strTranslitSafe2.contains(" " + strTranslitSafe)) {
                                }
                            }
                        }
                    }
                    arrayList.add(UItem.asFilterChat(true, -chat2.id).setChecked(this.selectedChannel == chat2.id));
                }
            }
            if (TextUtils.isEmpty(this.query) && i == 0) {
                arrayList.add(UItem.asButton(2, C2573R.drawable.msg_channel_create, LocaleController.getString(C2573R.string.EditProfileChannelStartNew)).accent());
            }
            arrayList.add(UItem.asShadow(null));
            ActionBarMenuItem actionBarMenuItem = this.searchItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(i <= 5 ? 8 : 0);
            }
        }

        @Override // org.telegram.ui.ActionBar.BaseFragment
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

        @Override // org.telegram.ui.Components.UniversalFragment
        public void onClick(UItem uItem, View view, int i, float f, float f2) {
            int i2 = uItem.id;
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

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
