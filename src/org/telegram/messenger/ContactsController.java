package org.telegram.messenger;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.collection.LongSparseArray;
import com.google.android.gms.cast.MediaError;
import java.text.CollationKey;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.ContactsController;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.Bulletin;

/* JADX INFO: loaded from: classes.dex */
public class ContactsController extends BaseController {
    public static final int PRIVACY_RULES_TYPE_ADDED_BY_PHONE = 7;
    public static final int PRIVACY_RULES_TYPE_BIO = 9;
    public static final int PRIVACY_RULES_TYPE_BIRTHDAY = 11;
    public static final int PRIVACY_RULES_TYPE_CALLS = 2;
    public static final int PRIVACY_RULES_TYPE_COUNT = 15;
    public static final int PRIVACY_RULES_TYPE_FORWARDS = 5;
    public static final int PRIVACY_RULES_TYPE_GIFTS = 12;
    public static final int PRIVACY_RULES_TYPE_INVITE = 1;
    public static final int PRIVACY_RULES_TYPE_LASTSEEN = 0;
    public static final int PRIVACY_RULES_TYPE_MESSAGES = 10;
    public static final int PRIVACY_RULES_TYPE_MUSIC = 14;
    public static final int PRIVACY_RULES_TYPE_NO_PAID_MESSAGES = 13;
    public static final int PRIVACY_RULES_TYPE_P2P = 3;
    public static final int PRIVACY_RULES_TYPE_PHONE = 6;
    public static final int PRIVACY_RULES_TYPE_PHOTO = 4;
    public static final int PRIVACY_RULES_TYPE_VOICE_MESSAGES = 8;
    private static Collator cachedCollator;
    private static Locale cachedCollatorLocale;
    private ArrayList<TLRPC.PrivacyRule> addedByPhonePrivacyRules;
    private ArrayList<TLRPC.PrivacyRule> bioPrivacyRules;
    private ArrayList<TLRPC.PrivacyRule> birthdayPrivacyRules;
    private ArrayList<TLRPC.PrivacyRule> callPrivacyRules;
    private int completedRequestsCount;
    public ArrayList<TLRPC.TL_contact> contacts;
    public HashMap<String, Contact> contactsBook;
    private boolean contactsBookLoaded;
    public HashMap<String, Contact> contactsBookSPhones;
    public HashMap<String, TLRPC.TL_contact> contactsByPhone;
    public HashMap<String, TLRPC.TL_contact> contactsByShortPhone;
    public ConcurrentHashMap<Long, TLRPC.TL_contact> contactsDict;
    public boolean contactsLoaded;
    private boolean contactsSyncInProgress;
    private ArrayList<Long> delayedContactsUpdate;
    private int deleteAccountTTL;
    public boolean doneLoadingContacts;
    private ArrayList<TLRPC.PrivacyRule> forwardsPrivacyRules;
    private ArrayList<TLRPC.PrivacyRule> giftsPrivacyRules;
    private TLRPC.GlobalPrivacySettings globalPrivacySettings;
    private ArrayList<TLRPC.PrivacyRule> groupPrivacyRules;
    private boolean ignoreChanges;
    private String inviteLink;
    private String lastContactsVersions;
    private ArrayList<TLRPC.PrivacyRule> lastseenPrivacyRules;
    private final Object loadContactsSync;
    private boolean loadingContacts;
    private int loadingDeleteInfo;
    private int loadingGlobalSettings;
    private int[] loadingPrivacyInfo;
    private boolean migratingContacts;
    private ArrayList<TLRPC.PrivacyRule> musicPrivacyRules;
    private ArrayList<TLRPC.PrivacyRule> noPaidMessagesPrivacyRules;
    private final Object observerLock;
    private ArrayList<TLRPC.PrivacyRule> p2pPrivacyRules;
    public HashMap<String, Contact> phoneBookByShortPhones;
    public ArrayList<Contact> phoneBookContacts;
    public ArrayList<String> phoneBookSectionsArray;
    public HashMap<String, ArrayList<Object>> phoneBookSectionsDict;
    private ArrayList<TLRPC.PrivacyRule> phonePrivacyRules;
    private ArrayList<TLRPC.PrivacyRule> profilePhotoPrivacyRules;
    private HashMap<String, String> sectionsToReplace;
    public ArrayList<String> sortedUsersMutualSectionsArray;
    public ArrayList<String> sortedUsersSectionsArray;
    private Account systemAccount;
    private boolean updatingInviteLink;
    public HashMap<String, ArrayList<TLRPC.TL_contact>> usersMutualSectionsDict;
    public HashMap<String, ArrayList<TLRPC.TL_contact>> usersSectionsDict;
    private ArrayList<TLRPC.PrivacyRule> voiceMessagesRules;
    private static final String[] projectionPhones = {"lookup", "data1", "data2", "data3", "display_name", "account_type"};
    private static final String[] projectionNames = {"lookup", "data2", "data3", "data5"};
    private static volatile ContactsController[] Instance = new ContactsController[16];

    public static /* synthetic */ void $r8$lambda$3kLSExHkbpEOZRcpxnKH3hiSKQ8(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public class MyContentObserver extends ContentObserver {
        private Runnable checkRunnable;

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return false;
        }

        /* JADX INFO: renamed from: $r8$lambda$V7bWM39F88C-9C-h7Xl0TeFehTo, reason: not valid java name */
        public static /* synthetic */ void m5144$r8$lambda$V7bWM39F88C9Ch7Xl0TeFehTo() {
            for (int i = 0; i < 16; i++) {
                if (UserConfig.getInstance(i).isClientActivated()) {
                    ConnectionsManager.getInstance(i).resumeNetworkMaybe();
                    ContactsController.getInstance(i).checkContacts();
                }
            }
        }

        public MyContentObserver() {
            super(null);
            this.checkRunnable = new Runnable() { // from class: org.telegram.messenger.ContactsController$MyContentObserver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsController.MyContentObserver.m5144$r8$lambda$V7bWM39F88C9Ch7Xl0TeFehTo();
                }
            };
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            synchronized (ContactsController.this.observerLock) {
                try {
                    if (ContactsController.this.ignoreChanges) {
                        return;
                    }
                    Utilities.globalQueue.cancelRunnable(this.checkRunnable);
                    Utilities.globalQueue.postRunnable(this.checkRunnable, 500L);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static Collator getLocaleCollator() {
        if (cachedCollator == null || cachedCollatorLocale != Locale.getDefault()) {
            try {
                Locale locale = Locale.getDefault();
                cachedCollatorLocale = locale;
                Collator collator = Collator.getInstance(locale);
                cachedCollator = collator;
                collator.setStrength(1);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
        if (cachedCollator == null) {
            try {
                Collator collator2 = Collator.getInstance();
                cachedCollator = collator2;
                collator2.setStrength(1);
            } catch (Exception e2) {
                FileLog.m898e(e2);
            }
        }
        if (cachedCollator == null) {
            cachedCollator = new Collator() { // from class: org.telegram.messenger.ContactsController.1
                @Override // java.text.Collator
                public CollationKey getCollationKey(String str) {
                    return null;
                }

                @Override // java.text.Collator
                public int hashCode() {
                    return 0;
                }

                @Override // java.text.Collator
                public int compare(String str, String str2) {
                    if (str == null || str2 == null) {
                        return 0;
                    }
                    return str.compareTo(str2);
                }
            };
        }
        return cachedCollator;
    }

    public static class Contact {
        public int contact_id;
        public String first_name;
        public int imported;
        public boolean isGoodProvider;
        public String key;
        public String last_name;
        public boolean namesFilled;
        public String provider;
        public TLRPC.User user;
        public ArrayList<String> phones = new ArrayList<>(4);
        public ArrayList<String> phoneTypes = new ArrayList<>(4);
        public ArrayList<String> shortPhones = new ArrayList<>(4);
        public ArrayList<Integer> phoneDeleted = new ArrayList<>(4);

        public String getLetter() {
            return getLetter(this.first_name, this.last_name);
        }

        public static String getLetter(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                return str.substring(0, 1);
            }
            if (!TextUtils.isEmpty(str2)) {
                return str2.substring(0, 1);
            }
            return "#";
        }
    }

    public static ContactsController getInstance(int i) {
        ContactsController contactsController;
        ContactsController contactsController2 = Instance[i];
        if (contactsController2 != null) {
            return contactsController2;
        }
        synchronized (ContactsController.class) {
            try {
                contactsController = Instance[i];
                if (contactsController == null) {
                    ContactsController[] contactsControllerArr = Instance;
                    ContactsController contactsController3 = new ContactsController(i);
                    contactsControllerArr[i] = contactsController3;
                    contactsController = contactsController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return contactsController;
    }

    public ContactsController(int i) {
        super(i);
        this.loadContactsSync = new Object();
        this.observerLock = new Object();
        this.lastContactsVersions = _UrlKt.FRAGMENT_ENCODE_SET;
        this.delayedContactsUpdate = new ArrayList<>();
        this.sectionsToReplace = new HashMap<>();
        this.loadingPrivacyInfo = new int[15];
        this.contactsBook = new HashMap<>();
        this.contactsBookSPhones = new HashMap<>();
        this.phoneBookContacts = new ArrayList<>();
        this.phoneBookSectionsDict = new HashMap<>();
        this.phoneBookSectionsArray = new ArrayList<>();
        this.phoneBookByShortPhones = new HashMap<>();
        this.contacts = new ArrayList<>();
        this.contactsDict = new ConcurrentHashMap<>(20, 1.0f, 2);
        this.usersSectionsDict = new HashMap<>();
        this.sortedUsersSectionsArray = new ArrayList<>();
        this.usersMutualSectionsDict = new HashMap<>();
        this.sortedUsersMutualSectionsArray = new ArrayList<>();
        this.contactsByPhone = new HashMap<>();
        this.contactsByShortPhone = new HashMap<>();
        if (MessagesController.getMainSettings(this.currentAccount).getBoolean("needGetStatuses", false)) {
            reloadContactsStatuses();
        }
        this.sectionsToReplace.put("À", "A");
        this.sectionsToReplace.put("Á", "A");
        this.sectionsToReplace.put("Ä", "A");
        this.sectionsToReplace.put("Ù", "U");
        this.sectionsToReplace.put("Ú", "U");
        this.sectionsToReplace.put("Ü", "U");
        this.sectionsToReplace.put("Ì", "I");
        this.sectionsToReplace.put("Í", "I");
        this.sectionsToReplace.put("Ï", "I");
        this.sectionsToReplace.put("È", "E");
        this.sectionsToReplace.put("É", "E");
        this.sectionsToReplace.put("Ê", "E");
        this.sectionsToReplace.put("Ë", "E");
        this.sectionsToReplace.put("Ò", "O");
        this.sectionsToReplace.put("Ó", "O");
        this.sectionsToReplace.put("Ö", "O");
        this.sectionsToReplace.put("Ç", "C");
        this.sectionsToReplace.put("Ñ", "N");
        this.sectionsToReplace.put("Ÿ", "Y");
        this.sectionsToReplace.put("Ý", "Y");
        this.sectionsToReplace.put("Ţ", "Y");
        if (i == 0) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        try {
            if (hasContactsPermission()) {
                ApplicationLoader.applicationContext.getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, new MyContentObserver());
            }
        } catch (Throwable unused) {
        }
    }

    public void cleanup() {
        this.contactsBook.clear();
        this.contactsBookSPhones.clear();
        this.phoneBookContacts.clear();
        this.contacts.clear();
        this.contactsDict.clear();
        this.usersSectionsDict.clear();
        this.usersMutualSectionsDict.clear();
        this.sortedUsersSectionsArray.clear();
        this.sortedUsersMutualSectionsArray.clear();
        this.delayedContactsUpdate.clear();
        this.contactsByPhone.clear();
        this.contactsByShortPhone.clear();
        this.phoneBookSectionsDict.clear();
        this.phoneBookSectionsArray.clear();
        this.phoneBookByShortPhones.clear();
        this.loadingContacts = false;
        this.contactsSyncInProgress = false;
        this.doneLoadingContacts = false;
        this.contactsLoaded = false;
        this.contactsBookLoaded = false;
        this.lastContactsVersions = _UrlKt.FRAGMENT_ENCODE_SET;
        this.loadingGlobalSettings = 0;
        this.loadingDeleteInfo = 0;
        this.deleteAccountTTL = 0;
        Arrays.fill(this.loadingPrivacyInfo, 0);
        this.lastseenPrivacyRules = null;
        this.groupPrivacyRules = null;
        this.callPrivacyRules = null;
        this.p2pPrivacyRules = null;
        this.profilePhotoPrivacyRules = null;
        this.bioPrivacyRules = null;
        this.musicPrivacyRules = null;
        this.birthdayPrivacyRules = null;
        this.giftsPrivacyRules = null;
        this.forwardsPrivacyRules = null;
        this.phonePrivacyRules = null;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanup$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$1() {
        this.migratingContacts = false;
        this.completedRequestsCount = 0;
    }

    public void checkInviteText() {
        SharedPreferences mainSettings = MessagesController.getMainSettings(this.currentAccount);
        this.inviteLink = mainSettings.getString("invitelink", null);
        int i = mainSettings.getInt("invitelinktime", 0);
        if (this.updatingInviteLink) {
            return;
        }
        if (this.inviteLink == null || Math.abs((System.currentTimeMillis() / 1000) - ((long) i)) >= 86400) {
            this.updatingInviteLink = true;
            getConnectionsManager().sendRequest(new TLRPC.TL_help_getInviteText(), new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda16
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$checkInviteText$3(tLObject, tL_error);
                }
            }, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkInviteText$3(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            final TLRPC.TL_help_inviteText tL_help_inviteText = (TLRPC.TL_help_inviteText) tLObject;
            if (tL_help_inviteText.message.length() != 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkInviteText$2(tL_help_inviteText);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkInviteText$2(TLRPC.TL_help_inviteText tL_help_inviteText) {
        this.updatingInviteLink = false;
        SharedPreferences.Editor editorEdit = MessagesController.getMainSettings(this.currentAccount).edit();
        String str = tL_help_inviteText.message;
        this.inviteLink = str;
        editorEdit.putString("invitelink", str);
        editorEdit.putInt("invitelinktime", (int) (System.currentTimeMillis() / 1000));
        editorEdit.apply();
    }

    public String getInviteText(int i) {
        String str = this.inviteLink;
        if (str == null) {
            str = "https://telegram.org/dl";
        }
        if (i <= 1) {
            return LocaleController.formatString(C2573R.string.InviteText2, str);
        }
        try {
            return String.format(LocaleController.getPluralString("InviteTextNum", i), Integer.valueOf(i), str);
        } catch (Exception unused) {
            return LocaleController.formatString(C2573R.string.InviteText2, str);
        }
    }

    public void checkAppAccount() {
        this.systemAccount = null;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkAppAccount$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkAppAccount$4() {
        AccountManager accountManager = AccountManager.get(ApplicationLoader.applicationContext);
        try {
            Account[] accountsByType = accountManager.getAccountsByType("org.telegram.messenger");
            for (int i = 0; i < accountsByType.length; i++) {
                Account account = accountsByType[i];
                int i2 = 0;
                while (true) {
                    if (i2 < 16) {
                        TLRPC.User currentUser = UserConfig.getInstance(i2).getCurrentUser();
                        if (currentUser != null) {
                            if (account.name.equals(_UrlKt.FRAGMENT_ENCODE_SET + currentUser.id)) {
                                if (i2 == this.currentAccount) {
                                    this.systemAccount = account;
                                }
                            }
                        }
                        i2++;
                    } else {
                        try {
                            accountManager.removeAccount(accountsByType[i], null, null);
                            break;
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        if (getUserConfig().isClientActivated()) {
            readContacts();
            if (this.systemAccount == null) {
                try {
                    Account account2 = new Account(_UrlKt.FRAGMENT_ENCODE_SET + getUserConfig().getClientUserId(), "org.telegram.messenger");
                    this.systemAccount = account2;
                    accountManager.addAccountExplicitly(account2, _UrlKt.FRAGMENT_ENCODE_SET, null);
                } catch (Exception unused3) {
                }
            }
        }
    }

    public void deleteUnknownAppAccounts() {
        try {
            this.systemAccount = null;
            AccountManager accountManager = AccountManager.get(ApplicationLoader.applicationContext);
            Account[] accountsByType = accountManager.getAccountsByType("org.telegram.messenger");
            for (int i = 0; i < accountsByType.length; i++) {
                Account account = accountsByType[i];
                int i2 = 0;
                while (true) {
                    if (i2 < 16) {
                        TLRPC.User currentUser = UserConfig.getInstance(i2).getCurrentUser();
                        if (currentUser != null) {
                            if (account.name.equals(_UrlKt.FRAGMENT_ENCODE_SET + currentUser.id)) {
                                break;
                            }
                        }
                        i2++;
                    } else {
                        try {
                            accountManager.removeAccount(accountsByType[i], null, null);
                            break;
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void checkContacts() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkContacts$5();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkContacts$5() {
        if (checkContactsInternal()) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("detected contacts change");
            }
            performSyncPhoneBook(getContactsCopy(this.contactsBook), true, false, true, false, true, false);
        }
    }

    public void forceImportContacts() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$forceImportContacts$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceImportContacts$6() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("force import contacts");
        }
        performSyncPhoneBook(new HashMap<>(), true, true, true, true, false, false);
    }

    public void syncPhoneBookByAlert(final HashMap<String, Contact> map, final boolean z, final boolean z2, final boolean z3) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$syncPhoneBookByAlert$7(map, z, z2, z3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$syncPhoneBookByAlert$7(HashMap map, boolean z, boolean z2, boolean z3) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("sync contacts by alert");
        }
        performSyncPhoneBook(map, true, z, z2, false, false, z3);
    }

    public void deleteAllContacts(final Runnable runnable) {
        resetImportedContacts();
        TLRPC.TL_contacts_deleteContacts tL_contacts_deleteContacts = new TLRPC.TL_contacts_deleteContacts();
        int size = this.contacts.size();
        for (int i = 0; i < size; i++) {
            tL_contacts_deleteContacts.id.add(getMessagesController().getInputUser(this.contacts.get(i).user_id));
        }
        getConnectionsManager().sendRequest(tL_contacts_deleteContacts, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$deleteAllContacts$9(runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllContacts$9(final Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            this.contactsBookSPhones.clear();
            this.contactsBook.clear();
            this.completedRequestsCount = 0;
            this.migratingContacts = false;
            this.contactsSyncInProgress = false;
            this.contactsLoaded = false;
            this.loadingContacts = false;
            this.contactsBookLoaded = false;
            this.lastContactsVersions = _UrlKt.FRAGMENT_ENCODE_SET;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$deleteAllContacts$8(runnable);
                }
            });
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllContacts$8(Runnable runnable) {
        AccountManager accountManager = AccountManager.get(ApplicationLoader.applicationContext);
        try {
            Account[] accountsByType = accountManager.getAccountsByType("org.telegram.messenger");
            this.systemAccount = null;
            for (Account account : accountsByType) {
                int i = 0;
                while (true) {
                    if (i >= 16) {
                        break;
                    }
                    TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
                    if (currentUser != null) {
                        if (account.name.equals(_UrlKt.FRAGMENT_ENCODE_SET + currentUser.id)) {
                            accountManager.removeAccount(account, null, null);
                            break;
                        }
                    }
                    i++;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Account account2 = new Account(_UrlKt.FRAGMENT_ENCODE_SET + getUserConfig().getClientUserId(), "org.telegram.messenger");
            this.systemAccount = account2;
            accountManager.addAccountExplicitly(account2, _UrlKt.FRAGMENT_ENCODE_SET, null);
        } catch (Exception unused2) {
        }
        getMessagesStorage().putCachedPhoneBook(new HashMap<>(), false, true);
        getMessagesStorage().putContacts(new ArrayList<>(), true);
        this.phoneBookContacts.clear();
        this.contacts.clear();
        this.contactsDict.clear();
        this.usersSectionsDict.clear();
        this.usersMutualSectionsDict.clear();
        this.sortedUsersSectionsArray.clear();
        this.phoneBookSectionsDict.clear();
        this.phoneBookSectionsArray.clear();
        this.phoneBookByShortPhones.clear();
        this.delayedContactsUpdate.clear();
        this.sortedUsersMutualSectionsArray.clear();
        this.contactsByPhone.clear();
        this.contactsByShortPhone.clear();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
        loadContacts(false, 0L);
        runnable.run();
    }

    public void resetImportedContacts() {
        getConnectionsManager().sendRequest(new TLRPC.TL_contacts_resetSaved(), new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda46
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                ContactsController.$r8$lambda$3kLSExHkbpEOZRcpxnKH3hiSKQ8(tLObject, tL_error);
            }
        });
    }

    private boolean checkContactsInternal() {
        boolean z = false;
        try {
            if (!hasContactsPermission()) {
                return false;
            }
            try {
                Cursor cursorQuery = ApplicationLoader.applicationContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"version"}, null, null, null);
                if (cursorQuery != null) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (cursorQuery.moveToNext()) {
                            sb.append(cursorQuery.getString(cursorQuery.getColumnIndex("version")));
                        }
                        String string = sb.toString();
                        if (this.lastContactsVersions.length() != 0 && !this.lastContactsVersions.equals(string)) {
                            z = true;
                        }
                        this.lastContactsVersions = string;
                    } finally {
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        } catch (Exception e2) {
            FileLog.m898e(e2);
        }
        return z;
    }

    public void readContacts() {
        synchronized (this.loadContactsSync) {
            try {
                if (this.loadingContacts) {
                    return;
                }
                this.loadingContacts = true;
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda61
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$readContacts$11();
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readContacts$11() {
        if (!this.contacts.isEmpty() || this.contactsLoaded) {
            synchronized (this.loadContactsSync) {
                this.loadingContacts = false;
            }
            return;
        }
        loadContacts(true, 0L);
    }

    private boolean isNotValidNameString(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= '0' && cCharAt <= '9') {
                i++;
            }
        }
        return i > 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:235:0x0547 A[Catch: all -> 0x054b, TRY_LEAVE, TryCatch #2 {all -> 0x054b, blocks: (B:233:0x0542, B:235:0x0547), top: B:261:0x0542 }] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0550 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:304:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HashMap<String, Contact> readContactsFromPhoneBook() {
        HashMap<String, Contact> map;
        Cursor cursorQuery;
        HashMap<String, Contact> map2;
        HashMap<String, Contact> map3;
        int i;
        ContentResolver contentResolver;
        ArrayList arrayList;
        long j;
        String str;
        int i2;
        int i3;
        int i4;
        Cursor cursorQuery2;
        ContentResolver contentResolver2;
        long j2;
        String str2;
        StringBuilder sb;
        ArrayList arrayList2;
        ContactsController contactsController;
        Cursor cursor;
        String str3;
        ContactsController contactsController2 = this;
        if (!contactsController2.getUserConfig().syncContacts) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("contacts sync disabled");
            }
            return new HashMap<>();
        }
        if (!hasContactsPermission()) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("app has no contacts permissions");
            }
            return new HashMap<>();
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            ContentResolver contentResolver3 = ApplicationLoader.applicationContext.getContentResolver();
            HashMap map4 = new HashMap();
            ArrayList arrayList3 = new ArrayList();
            cursorQuery = contentResolver3.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, projectionPhones, null, null, null);
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                String str4 = "+";
                int i5 = 1;
                if (cursorQuery == null) {
                    contentResolver = contentResolver3;
                    arrayList = arrayList3;
                    j = jCurrentTimeMillis;
                    str = "+";
                    i2 = 2;
                    i3 = 3;
                    cursorQuery2 = cursorQuery;
                    map2 = null;
                    i4 = 1;
                } else {
                    try {
                        int count = cursorQuery.getCount();
                        if (count > 0) {
                            map3 = new HashMap<>(count);
                            i = 1;
                            while (cursorQuery.moveToNext()) {
                                try {
                                    String string = cursorQuery.getString(i5);
                                    String string2 = cursorQuery.getString(5);
                                    if (string2 == null) {
                                        string2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                    boolean z = string2.indexOf(".sim") != 0;
                                    if (TextUtils.isEmpty(string)) {
                                        contentResolver2 = contentResolver3;
                                    } else {
                                        contentResolver2 = contentResolver3;
                                        String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(string, true);
                                        if (!TextUtils.isEmpty(strStripExceptNumbers)) {
                                            String strSubstring = strStripExceptNumbers.startsWith(str4) ? strStripExceptNumbers.substring(1) : strStripExceptNumbers;
                                            j2 = jCurrentTimeMillis;
                                            String string3 = cursorQuery.getString(0);
                                            sb2.setLength(0);
                                            DatabaseUtils.appendEscapedSQLString(sb2, string3);
                                            String string4 = sb2.toString();
                                            str2 = str4;
                                            Contact contact = (Contact) map4.get(strSubstring);
                                            if (contact != null) {
                                                if (!contact.isGoodProvider && !string2.equals(contact.provider)) {
                                                    sb2.setLength(0);
                                                    DatabaseUtils.appendEscapedSQLString(sb2, contact.key);
                                                    arrayList3.remove(sb2.toString());
                                                    arrayList3.add(string4);
                                                    contact.key = string3;
                                                    contact.isGoodProvider = z;
                                                    contact.provider = string2;
                                                }
                                                contentResolver3 = contentResolver2;
                                                jCurrentTimeMillis = j2;
                                                str4 = str2;
                                                i5 = 1;
                                            } else {
                                                if (!arrayList3.contains(string4)) {
                                                    arrayList3.add(string4);
                                                }
                                                int i6 = cursorQuery.getInt(2);
                                                Contact contact2 = map3.get(string3);
                                                if (contact2 == null) {
                                                    contact2 = new Contact();
                                                    sb = sb2;
                                                    String string5 = cursorQuery.getString(4);
                                                    String strTrim = string5 == null ? _UrlKt.FRAGMENT_ENCODE_SET : string5.trim();
                                                    if (contactsController2.isNotValidNameString(strTrim)) {
                                                        contact2.first_name = strTrim;
                                                        contact2.last_name = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        arrayList2 = arrayList3;
                                                    } else {
                                                        int iLastIndexOf = strTrim.lastIndexOf(32);
                                                        arrayList2 = arrayList3;
                                                        if (iLastIndexOf != -1) {
                                                            contact2.first_name = strTrim.substring(0, iLastIndexOf).trim();
                                                            contact2.last_name = strTrim.substring(iLastIndexOf + 1).trim();
                                                        } else {
                                                            contact2.first_name = strTrim;
                                                            contact2.last_name = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        }
                                                    }
                                                    contact2.provider = string2;
                                                    contact2.isGoodProvider = z;
                                                    contact2.key = string3;
                                                    contact2.contact_id = i;
                                                    map3.put(string3, contact2);
                                                    i++;
                                                } else {
                                                    sb = sb2;
                                                    arrayList2 = arrayList3;
                                                }
                                                contact2.shortPhones.add(strSubstring);
                                                contact2.phones.add(strStripExceptNumbers);
                                                contact2.phoneDeleted.add(0);
                                                if (i6 == 0) {
                                                    String string6 = cursorQuery.getString(3);
                                                    ArrayList<String> arrayList4 = contact2.phoneTypes;
                                                    if (string6 == null) {
                                                        string6 = LocaleController.getString(C2573R.string.PhoneMobile);
                                                    }
                                                    arrayList4.add(string6);
                                                } else if (i6 == 1) {
                                                    contact2.phoneTypes.add(LocaleController.getString(C2573R.string.PhoneHome));
                                                } else if (i6 == 2) {
                                                    contact2.phoneTypes.add(LocaleController.getString(C2573R.string.PhoneMobile));
                                                    map4.put(strSubstring, contact2);
                                                    contactsController2 = this;
                                                    arrayList3 = arrayList2;
                                                    contentResolver3 = contentResolver2;
                                                    jCurrentTimeMillis = j2;
                                                    sb2 = sb;
                                                    str4 = str2;
                                                    i5 = 1;
                                                } else {
                                                    if (i6 == 3) {
                                                        contact2.phoneTypes.add(LocaleController.getString(C2573R.string.PhoneWork));
                                                    } else {
                                                        ArrayList<String> arrayList5 = contact2.phoneTypes;
                                                        if (i6 == 12) {
                                                            arrayList5.add(LocaleController.getString(C2573R.string.PhoneMain));
                                                        } else {
                                                            arrayList5.add(LocaleController.getString(C2573R.string.PhoneOther));
                                                        }
                                                    }
                                                    map4.put(strSubstring, contact2);
                                                    contactsController2 = this;
                                                    arrayList3 = arrayList2;
                                                    contentResolver3 = contentResolver2;
                                                    jCurrentTimeMillis = j2;
                                                    sb2 = sb;
                                                    str4 = str2;
                                                    i5 = 1;
                                                }
                                                map4.put(strSubstring, contact2);
                                                contactsController2 = this;
                                                arrayList3 = arrayList2;
                                                contentResolver3 = contentResolver2;
                                                jCurrentTimeMillis = j2;
                                                sb2 = sb;
                                                str4 = str2;
                                                i5 = 1;
                                            }
                                        }
                                    }
                                    j2 = jCurrentTimeMillis;
                                    str2 = str4;
                                    contentResolver3 = contentResolver2;
                                    jCurrentTimeMillis = j2;
                                    str4 = str2;
                                    i5 = 1;
                                } catch (Throwable th) {
                                    th = th;
                                    map = map3;
                                    try {
                                        FileLog.m898e(th);
                                        if (map != null) {
                                        }
                                        if (cursorQuery != null) {
                                        }
                                        map2 = map;
                                        if (map2 == null) {
                                        }
                                    } finally {
                                    }
                                }
                            }
                        } else {
                            map3 = null;
                            i = 1;
                        }
                        contentResolver = contentResolver3;
                        arrayList = arrayList3;
                        j = jCurrentTimeMillis;
                        str = str4;
                        i2 = 2;
                        i3 = 3;
                        try {
                            cursorQuery.close();
                        } catch (Exception unused) {
                        }
                        map2 = map3;
                        i4 = i;
                        cursorQuery2 = null;
                    } catch (Throwable th2) {
                        th = th2;
                        map = null;
                    }
                }
                try {
                    String strJoin = TextUtils.join(",", arrayList);
                    int i7 = i2;
                    ContentResolver contentResolver4 = contentResolver;
                    cursorQuery2 = contentResolver4.query(ContactsContract.Data.CONTENT_URI, projectionNames, "lookup IN (" + strJoin + ") AND mimetype = 'vnd.android.cursor.item/name'", null, null);
                    if (cursorQuery2 != null) {
                        while (cursorQuery2.moveToNext()) {
                            String string7 = cursorQuery2.getString(0);
                            String string8 = cursorQuery2.getString(1);
                            String string9 = cursorQuery2.getString(i7);
                            String string10 = cursorQuery2.getString(i3);
                            Contact contact3 = map2 != null ? map2.get(string7) : null;
                            if (contact3 != null && !contact3.namesFilled) {
                                if (contact3.isGoodProvider) {
                                    if (string8 != null) {
                                        contact3.first_name = string8;
                                    } else {
                                        contact3.first_name = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                    if (string9 != null) {
                                        contact3.last_name = string9;
                                    } else {
                                        contact3.last_name = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                    if (!TextUtils.isEmpty(string10)) {
                                        if (TextUtils.isEmpty(contact3.first_name)) {
                                            contact3.first_name = string10;
                                        } else {
                                            contact3.first_name += " " + string10;
                                        }
                                    }
                                } else if ((!isNotValidNameString(string8) && (contact3.first_name.contains(string8) || string8.contains(contact3.first_name))) || (!isNotValidNameString(string9) && (contact3.last_name.contains(string9) || string8.contains(contact3.last_name)))) {
                                    if (string8 != null) {
                                        contact3.first_name = string8;
                                    } else {
                                        contact3.first_name = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                    if (!TextUtils.isEmpty(string10)) {
                                        if (TextUtils.isEmpty(contact3.first_name)) {
                                            contact3.first_name = string10;
                                        } else {
                                            contact3.first_name += " " + string10;
                                        }
                                    }
                                    if (string9 != null) {
                                        contact3.last_name = string9;
                                    } else {
                                        contact3.last_name = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                }
                                contact3.namesFilled = true;
                            }
                        }
                        contactsController = this;
                        try {
                            cursorQuery2.close();
                        } catch (Exception unused2) {
                        }
                        cursorQuery2 = null;
                    } else {
                        contactsController = this;
                    }
                    try {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("loading contacts 1 query time = ");
                        sb3.append(System.currentTimeMillis() - j);
                        sb3.append(" contactsSize = ");
                        sb3.append(map2 == null ? 0 : map2.size());
                        FileLog.m895d(sb3.toString());
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        HashMap map5 = new HashMap();
                        ArrayList arrayList6 = new ArrayList();
                        Cursor cursorQuery3 = contentResolver4.query(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id", "lookup", "display_name"}, "has_phone_number = ?", new String[]{MVEL.VERSION_SUB}, null);
                        if (cursorQuery3 != null) {
                            while (cursorQuery3.moveToNext()) {
                                PhoneBookContact phoneBookContact = new PhoneBookContact();
                                phoneBookContact.id = cursorQuery3.getString(0);
                                phoneBookContact.lookup_key = cursorQuery3.getString(1);
                                phoneBookContact.name = cursorQuery3.getString(i7);
                                if (map2 == null || map2.get(phoneBookContact.lookup_key) == null) {
                                    if (!TextUtils.isEmpty(phoneBookContact.name)) {
                                        map5.put(phoneBookContact.id, phoneBookContact);
                                        arrayList6.add(phoneBookContact.id);
                                    }
                                }
                            }
                            cursorQuery3.close();
                        }
                        FileLog.m895d("loading contacts 2 query time = " + (System.currentTimeMillis() - jCurrentTimeMillis2) + " phoneBookConacts size = " + arrayList6.size());
                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                        if (!arrayList6.isEmpty()) {
                            Pattern patternCompile = Pattern.compile(".*(\\+[0-9 \\-]+).*");
                            cursor = cursorQuery2;
                            try {
                                cursorQuery2 = contentResolver4.query(ContactsContract.Data.CONTENT_URI, new String[]{"contact_id", "data1", "data2", "data3", "data4"}, "contact_id IN (" + TextUtils.join(", ", arrayList6) + ")", null, null);
                                if (cursorQuery2 != null) {
                                    while (cursorQuery2.moveToNext()) {
                                        PhoneBookContact phoneBookContact2 = (PhoneBookContact) map5.get(cursorQuery2.getString(0));
                                        if (phoneBookContact2 != null) {
                                            String[] strArr = {cursorQuery2.getString(1), cursorQuery2.getString(2), cursorQuery2.getString(3), cursorQuery2.getString(4)};
                                            int i8 = 0;
                                            for (int i9 = 4; i8 < i9; i9 = 4) {
                                                String str5 = strArr[i8];
                                                if (str5 != null) {
                                                    Matcher matcher = patternCompile.matcher(str5);
                                                    if (matcher.matches()) {
                                                        phoneBookContact2.phone = matcher.group(1).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET).replace("-", _UrlKt.FRAGMENT_ENCODE_SET);
                                                    }
                                                    String strSubstring2 = phoneBookContact2.phone;
                                                    if (strSubstring2 != null) {
                                                        str3 = str;
                                                        if (strSubstring2.startsWith(str3)) {
                                                            strSubstring2 = phoneBookContact2.phone.substring(1);
                                                        }
                                                        Contact contact4 = new Contact();
                                                        contact4.first_name = phoneBookContact2.name;
                                                        contact4.last_name = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        int i10 = i4 + 1;
                                                        contact4.contact_id = i4;
                                                        contact4.key = phoneBookContact2.lookup_key;
                                                        contact4.phones.add(phoneBookContact2.phone);
                                                        contact4.shortPhones.add(strSubstring2);
                                                        contact4.phoneDeleted.add(0);
                                                        contact4.phoneTypes.add(LocaleController.getString(C2573R.string.PhoneOther));
                                                        if (map2 == null) {
                                                            map2 = new HashMap<>();
                                                        }
                                                        map2.put(phoneBookContact2.lookup_key, contact4);
                                                        i4 = i10;
                                                        str = str3;
                                                    }
                                                }
                                                i8++;
                                                str = str;
                                            }
                                        }
                                        str3 = str;
                                        str = str3;
                                    }
                                    cursorQuery2.close();
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                map = map2;
                                cursorQuery = cursor;
                                FileLog.m898e(th);
                                if (map != null) {
                                    map.clear();
                                }
                                if (cursorQuery != null) {
                                    try {
                                        cursorQuery.close();
                                    } catch (Exception e) {
                                        FileLog.m898e(e);
                                    }
                                }
                                map2 = map;
                            }
                        }
                        FileLog.m895d("loading contacts 3 query time = " + (System.currentTimeMillis() - jCurrentTimeMillis3));
                        if (cursorQuery2 != null) {
                            try {
                                cursorQuery2.close();
                            } catch (Exception e2) {
                                FileLog.m898e(e2);
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        cursor = cursorQuery2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    cursorQuery = cursorQuery2;
                    map = map2;
                }
            } catch (Throwable th6) {
                th = th6;
                map = null;
            }
        } catch (Throwable th7) {
            th = th7;
            map = null;
            cursorQuery = null;
        }
        return map2 == null ? map2 : new HashMap<>();
    }

    public HashMap<String, Contact> getContactsCopy(HashMap<String, Contact> map) {
        HashMap<String, Contact> map2 = new HashMap<>();
        for (Map.Entry<String, Contact> entry : map.entrySet()) {
            Contact contact = new Contact();
            Contact value = entry.getValue();
            contact.phoneDeleted.addAll(value.phoneDeleted);
            contact.phones.addAll(value.phones);
            contact.phoneTypes.addAll(value.phoneTypes);
            contact.shortPhones.addAll(value.shortPhones);
            contact.first_name = value.first_name;
            contact.last_name = value.last_name;
            contact.contact_id = value.contact_id;
            String str = value.key;
            contact.key = str;
            map2.put(str, contact);
        }
        return map2;
    }

    public void migratePhoneBookToV7(final SparseArray<Contact> sparseArray) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$migratePhoneBookToV7$12(sparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$migratePhoneBookToV7$12(SparseArray sparseArray) {
        if (this.migratingContacts) {
            return;
        }
        this.migratingContacts = true;
        HashMap<String, Contact> map = new HashMap<>();
        HashMap<String, Contact> contactsFromPhoneBook = readContactsFromPhoneBook();
        HashMap map2 = new HashMap();
        Iterator<Map.Entry<String, Contact>> it = contactsFromPhoneBook.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Contact value = it.next().getValue();
            for (int i = 0; i < value.shortPhones.size(); i++) {
                map2.put(value.shortPhones.get(i), value.key);
            }
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            Contact contact = (Contact) sparseArray.valueAt(i2);
            int i3 = 0;
            while (true) {
                if (i3 >= contact.shortPhones.size()) {
                    break;
                }
                String str = (String) map2.get(contact.shortPhones.get(i3));
                if (str != null) {
                    contact.key = str;
                    map.put(str, contact);
                    break;
                }
                i3++;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("migrated contacts " + map.size() + " of " + sparseArray.size());
        }
        getMessagesStorage().putCachedPhoneBook(map, true, false);
    }

    public void performSyncPhoneBook(final HashMap<String, Contact> map, final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final boolean z6) {
        if (z2 || this.contactsBookLoaded) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSyncPhoneBook$25(map, z3, z, z2, z4, z5, z6);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:112:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0344 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0155 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01da A[PHI: r16
  0x01da: PHI (r16v21 int) = (r16v13 int), (r16v23 int), (r16v23 int), (r16v23 int) binds: [B:65:0x01b2, B:67:0x01bc, B:69:0x01c4, B:73:0x01d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$performSyncPhoneBook$25(final HashMap map, final boolean z, boolean z2, final boolean z3, boolean z4, boolean z5, boolean z6) {
        int i;
        ArrayList arrayList;
        HashMap map2;
        HashMap map3;
        int i2;
        int i3;
        final HashMap map4;
        final int i4;
        Contact contact;
        HashMap map5;
        boolean z7;
        int i5;
        HashMap<String, Contact> map6;
        HashMap map7;
        Iterator<Map.Entry<String, Contact>> it;
        HashMap map8;
        int i6;
        int iIndexOf;
        int i7;
        HashMap<String, Contact> map9;
        int i8;
        HashMap map10;
        int i9;
        boolean z8;
        HashMap map11 = new HashMap();
        Iterator it2 = map.entrySet().iterator();
        while (true) {
            i = 0;
            if (!it2.hasNext()) {
                break;
            }
            Contact contact2 = (Contact) ((Map.Entry) it2.next()).getValue();
            while (i < contact2.shortPhones.size()) {
                map11.put(contact2.shortPhones.get(i), contact2);
                i++;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("start read contacts from phone");
        }
        if (!z) {
            checkContactsInternal();
        }
        HashMap<String, Contact> contactsFromPhoneBook = readContactsFromPhoneBook();
        HashMap map12 = new HashMap();
        HashMap map13 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        Iterator<Map.Entry<String, Contact>> it3 = contactsFromPhoneBook.entrySet().iterator();
        while (it3.hasNext()) {
            Contact value = it3.next().getValue();
            int size = value.shortPhones.size();
            for (int i10 = 0; i10 < size; i10++) {
                map13.put(value.shortPhones.get(i10).substring(Math.max(0, r12.length() - 7)), value);
            }
            String letter = value.getLetter();
            ArrayList arrayList3 = (ArrayList) map12.get(letter);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                map12.put(letter, arrayList3);
                arrayList2.add(letter);
            }
            arrayList3.add(value);
        }
        final HashMap map14 = new HashMap();
        int size2 = map.size();
        ArrayList arrayList4 = new ArrayList();
        if (map.isEmpty()) {
            arrayList = arrayList2;
            map2 = map13;
            map3 = map12;
            if (z2) {
                int i11 = 0;
                for (Map.Entry<String, Contact> entry : contactsFromPhoneBook.entrySet()) {
                    Contact value2 = entry.getValue();
                    entry.getKey();
                    for (int i12 = 0; i12 < value2.phones.size(); i12++) {
                        if (!z4) {
                            String str = value2.shortPhones.get(i12);
                            String strSubstring = str.substring(Math.max(0, str.length() - 7));
                            TLRPC.TL_contact tL_contact = this.contactsByPhone.get(str);
                            if (tL_contact != null) {
                                TLRPC.User user = getMessagesController().getUser(Long.valueOf(tL_contact.user_id));
                                if (user != null) {
                                    i11++;
                                    String str2 = user.first_name;
                                    if (str2 == null) {
                                        str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                    String str3 = user.last_name;
                                    if (str3 == null) {
                                        str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                    if ((!str2.equals(value2.first_name) || !str3.equals(value2.last_name)) && (!TextUtils.isEmpty(value2.first_name) || !TextUtils.isEmpty(value2.last_name))) {
                                    }
                                }
                            } else if (this.contactsByShortPhone.containsKey(strSubstring)) {
                                i11++;
                            }
                            TLRPC.TL_inputPhoneContact tL_inputPhoneContact = new TLRPC.TL_inputPhoneContact();
                            tL_inputPhoneContact.client_id = ((long) value2.contact_id) | (((long) i12) << 32);
                            tL_inputPhoneContact.first_name = value2.first_name;
                            tL_inputPhoneContact.last_name = value2.last_name;
                            tL_inputPhoneContact.phone = value2.phones.get(i12);
                            arrayList4.add(tL_inputPhoneContact);
                        } else {
                            TLRPC.TL_inputPhoneContact tL_inputPhoneContact2 = new TLRPC.TL_inputPhoneContact();
                            tL_inputPhoneContact2.client_id = ((long) value2.contact_id) | (((long) i12) << 32);
                            tL_inputPhoneContact2.first_name = value2.first_name;
                            tL_inputPhoneContact2.last_name = value2.last_name;
                            tL_inputPhoneContact2.phone = value2.phones.get(i12);
                            arrayList4.add(tL_inputPhoneContact2);
                        }
                    }
                }
                i2 = i11;
            } else {
                i2 = 0;
            }
            i3 = 0;
        } else {
            Iterator<Map.Entry<String, Contact>> it4 = contactsFromPhoneBook.entrySet().iterator();
            i3 = 0;
            int i13 = 0;
            while (it4.hasNext()) {
                Map.Entry<String, Contact> next = it4.next();
                String key = next.getKey();
                Contact value3 = next.getValue();
                Contact contact3 = (Contact) map.get(key);
                ArrayList arrayList5 = arrayList2;
                if (contact3 == null) {
                    while (i < value3.shortPhones.size()) {
                        contact = (Contact) map11.get(value3.shortPhones.get(i));
                        if (contact != null) {
                            key = contact.key;
                            break;
                        }
                        i++;
                    }
                    contact = contact3;
                } else {
                    contact = contact3;
                }
                if (contact != null) {
                    value3.imported = contact.imported;
                }
                if (contact != null) {
                    if (TextUtils.isEmpty(value3.first_name)) {
                        map5 = map11;
                    } else {
                        map5 = map11;
                        if (contact.first_name.equals(value3.first_name)) {
                        }
                        z7 = true;
                        if (contact == null || z7) {
                            i5 = size2;
                            map6 = contactsFromPhoneBook;
                            map7 = map13;
                            it = it4;
                            map8 = map12;
                            for (i6 = 0; i6 < value3.phones.size(); i6++) {
                                String str4 = value3.shortPhones.get(i6);
                                str4.substring(Math.max(0, str4.length() - 7));
                                map14.put(str4, value3);
                                if (contact != null && (iIndexOf = contact.shortPhones.indexOf(str4)) != -1) {
                                    Integer num = contact.phoneDeleted.get(iIndexOf);
                                    value3.phoneDeleted.set(i6, num);
                                    if (num.intValue() == 1) {
                                    }
                                } else if (z2) {
                                    if (!z7) {
                                        if (this.contactsByPhone.containsKey(str4)) {
                                            i13++;
                                        } else {
                                            i3++;
                                            TLRPC.TL_inputPhoneContact tL_inputPhoneContact3 = new TLRPC.TL_inputPhoneContact();
                                            tL_inputPhoneContact3.client_id = ((long) value3.contact_id) | (((long) i6) << 32);
                                            tL_inputPhoneContact3.first_name = value3.first_name;
                                            tL_inputPhoneContact3.last_name = value3.last_name;
                                            tL_inputPhoneContact3.phone = value3.phones.get(i6);
                                            arrayList4.add(tL_inputPhoneContact3);
                                        }
                                    } else {
                                        TLRPC.TL_inputPhoneContact tL_inputPhoneContact32 = new TLRPC.TL_inputPhoneContact();
                                        tL_inputPhoneContact32.client_id = ((long) value3.contact_id) | (((long) i6) << 32);
                                        tL_inputPhoneContact32.first_name = value3.first_name;
                                        tL_inputPhoneContact32.last_name = value3.last_name;
                                        tL_inputPhoneContact32.phone = value3.phones.get(i6);
                                        arrayList4.add(tL_inputPhoneContact32);
                                    }
                                }
                            }
                            if (contact == null) {
                                map.remove(key);
                            }
                        } else {
                            int i14 = 0;
                            while (i14 < value3.phones.size()) {
                                String str5 = value3.shortPhones.get(i14);
                                HashMap map15 = map13;
                                Iterator<Map.Entry<String, Contact>> it5 = it4;
                                String strSubstring2 = str5.substring(Math.max(0, str5.length() - 7));
                                map14.put(str5, value3);
                                int iIndexOf2 = contact.shortPhones.indexOf(str5);
                                if (z2) {
                                    i8 = iIndexOf2;
                                    TLRPC.TL_contact tL_contact2 = this.contactsByPhone.get(str5);
                                    if (tL_contact2 != null) {
                                        map10 = map12;
                                        i7 = size2;
                                        map9 = contactsFromPhoneBook;
                                        TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(tL_contact2.user_id));
                                        if (user2 != null) {
                                            i13++;
                                            if (TextUtils.isEmpty(user2.first_name) && TextUtils.isEmpty(user2.last_name) && !(TextUtils.isEmpty(value3.first_name) && TextUtils.isEmpty(value3.last_name))) {
                                                z8 = true;
                                                i8 = -1;
                                            } else {
                                                z8 = false;
                                            }
                                            i9 = i8;
                                        }
                                        if (i9 == -1) {
                                            value3.phoneDeleted.set(i14, contact.phoneDeleted.get(i9));
                                            contact.phones.remove(i9);
                                            contact.shortPhones.remove(i9);
                                            contact.phoneDeleted.remove(i9);
                                            contact.phoneTypes.remove(i9);
                                        } else if (z2) {
                                            if (!z8) {
                                                TLRPC.TL_contact tL_contact3 = this.contactsByPhone.get(str5);
                                                if (tL_contact3 != null) {
                                                    TLRPC.User user3 = getMessagesController().getUser(Long.valueOf(tL_contact3.user_id));
                                                    if (user3 != null) {
                                                        i13++;
                                                        String str6 = user3.first_name;
                                                        if (str6 == null) {
                                                            str6 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        }
                                                        String str7 = user3.last_name;
                                                        if (str7 == null) {
                                                            str7 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        }
                                                        if ((!str6.equals(value3.first_name) || !str7.equals(value3.last_name)) && (!TextUtils.isEmpty(value3.first_name) || !TextUtils.isEmpty(value3.last_name))) {
                                                        }
                                                    } else {
                                                        i3++;
                                                    }
                                                } else if (this.contactsByShortPhone.containsKey(strSubstring2)) {
                                                    i13++;
                                                }
                                                TLRPC.TL_inputPhoneContact tL_inputPhoneContact4 = new TLRPC.TL_inputPhoneContact();
                                                tL_inputPhoneContact4.client_id = ((long) value3.contact_id) | (((long) i14) << 32);
                                                tL_inputPhoneContact4.first_name = value3.first_name;
                                                tL_inputPhoneContact4.last_name = value3.last_name;
                                                tL_inputPhoneContact4.phone = value3.phones.get(i14);
                                                arrayList4.add(tL_inputPhoneContact4);
                                            } else {
                                                TLRPC.TL_inputPhoneContact tL_inputPhoneContact42 = new TLRPC.TL_inputPhoneContact();
                                                tL_inputPhoneContact42.client_id = ((long) value3.contact_id) | (((long) i14) << 32);
                                                tL_inputPhoneContact42.first_name = value3.first_name;
                                                tL_inputPhoneContact42.last_name = value3.last_name;
                                                tL_inputPhoneContact42.phone = value3.phones.get(i14);
                                                arrayList4.add(tL_inputPhoneContact42);
                                            }
                                        }
                                        i14++;
                                        it4 = it5;
                                        map13 = map15;
                                        map12 = map10;
                                        contactsFromPhoneBook = map9;
                                        size2 = i7;
                                    } else {
                                        i7 = size2;
                                        map9 = contactsFromPhoneBook;
                                        map10 = map12;
                                        if (this.contactsByShortPhone.containsKey(strSubstring2)) {
                                            i13++;
                                        }
                                    }
                                } else {
                                    i7 = size2;
                                    map9 = contactsFromPhoneBook;
                                    i8 = iIndexOf2;
                                    map10 = map12;
                                }
                                i9 = i8;
                                z8 = false;
                                if (i9 == -1) {
                                }
                                i14++;
                                it4 = it5;
                                map13 = map15;
                                map12 = map10;
                                contactsFromPhoneBook = map9;
                                size2 = i7;
                            }
                            i5 = size2;
                            map6 = contactsFromPhoneBook;
                            map7 = map13;
                            it = it4;
                            map8 = map12;
                            if (contact.phones.isEmpty()) {
                                map.remove(key);
                            }
                        }
                        map11 = map5;
                        arrayList2 = arrayList5;
                        it4 = it;
                        map13 = map7;
                        map12 = map8;
                        contactsFromPhoneBook = map6;
                        size2 = i5;
                        i = 0;
                    }
                    if (!TextUtils.isEmpty(value3.last_name) && !contact.last_name.equals(value3.last_name)) {
                        z7 = true;
                    }
                    if (contact == null) {
                        i5 = size2;
                        map6 = contactsFromPhoneBook;
                        map7 = map13;
                        it = it4;
                        map8 = map12;
                        while (i6 < value3.phones.size()) {
                        }
                        if (contact == null) {
                        }
                    }
                    map11 = map5;
                    arrayList2 = arrayList5;
                    it4 = it;
                    map13 = map7;
                    map12 = map8;
                    contactsFromPhoneBook = map6;
                    size2 = i5;
                    i = 0;
                } else {
                    map5 = map11;
                }
                z7 = false;
                if (contact == null) {
                }
                map11 = map5;
                arrayList2 = arrayList5;
                it4 = it;
                map13 = map7;
                map12 = map8;
                contactsFromPhoneBook = map6;
                size2 = i5;
                i = 0;
            }
            int i15 = size2;
            HashMap<String, Contact> map16 = contactsFromPhoneBook;
            arrayList = arrayList2;
            map2 = map13;
            map3 = map12;
            if (!z3 && map.isEmpty() && arrayList4.isEmpty()) {
                size2 = i15;
                if (size2 == map16.size()) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("contacts not changed!");
                        return;
                    }
                    return;
                }
            } else {
                size2 = i15;
            }
            if (!z2 || map.isEmpty() || map16.isEmpty() || !arrayList4.isEmpty()) {
                contactsFromPhoneBook = map16;
            } else {
                contactsFromPhoneBook = map16;
                getMessagesStorage().putCachedPhoneBook(contactsFromPhoneBook, false, false);
            }
            i2 = i13;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("done processing contacts");
        }
        if (z2) {
            if (!arrayList4.isEmpty()) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m896e("start import contacts");
                }
                if (!z5 || i3 == 0) {
                    map4 = map14;
                    i4 = 0;
                } else if (i3 >= 30) {
                    map4 = map14;
                    i4 = 1;
                } else if (z3 && size2 == 0 && this.contactsByPhone.size() - i2 > (this.contactsByPhone.size() / 3) * 2) {
                    map4 = map14;
                    i4 = 2;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("new phone book contacts " + i3 + " serverContactsInPhonebook " + i2 + " totalContacts " + this.contactsByPhone.size());
                }
                if (i4 != 0) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$performSyncPhoneBook$14(i4, map, z3, z);
                        }
                    });
                    return;
                }
                if (z6) {
                    final HashMap<String, Contact> map17 = contactsFromPhoneBook;
                    final HashMap map18 = map4;
                    final ArrayList arrayList6 = arrayList;
                    final HashMap map19 = map2;
                    final HashMap map20 = map3;
                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$performSyncPhoneBook$16(map18, map17, z3, map20, arrayList6, map19);
                        }
                    });
                    return;
                }
                final ContactsController contactsController = this;
                HashMap<String, Contact> map21 = contactsFromPhoneBook;
                ArrayList arrayList7 = arrayList;
                HashMap map22 = map2;
                HashMap map23 = map3;
                final boolean[] zArr = {false};
                final HashMap map24 = new HashMap(map21);
                HashMap<String, Contact> map25 = map21;
                final SparseArray sparseArray = new SparseArray();
                Iterator it6 = map24.entrySet().iterator();
                while (it6.hasNext()) {
                    Contact contact4 = (Contact) ((Map.Entry) it6.next()).getValue();
                    sparseArray.put(contact4.contact_id, contact4.key);
                }
                contactsController.completedRequestsCount = 0;
                int iCeil = (int) Math.ceil(((double) arrayList4.size()) / 500.0d);
                int i16 = 0;
                while (i16 < iCeil) {
                    final ArrayList arrayList8 = arrayList7;
                    final TLRPC.TL_contacts_importContacts tL_contacts_importContacts = new TLRPC.TL_contacts_importContacts();
                    int i17 = i16 * MediaError.DetailedErrorCode.SEGMENT_UNKNOWN;
                    tL_contacts_importContacts.contacts = new ArrayList<>(arrayList4.subList(i17, Math.min(i17 + MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, arrayList4.size())));
                    ConnectionsManager connectionsManager = contactsController.getConnectionsManager();
                    final HashMap map26 = map22;
                    final int i18 = iCeil;
                    final HashMap map27 = map23;
                    final HashMap<String, Contact> map28 = map25;
                    RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda11
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$performSyncPhoneBook$20(map24, sparseArray, zArr, map28, tL_contacts_importContacts, i18, map4, z3, map27, arrayList8, map26, tLObject, tL_error);
                        }
                    };
                    map23 = map27;
                    arrayList7 = arrayList8;
                    map22 = map26;
                    connectionsManager.sendRequest(tL_contacts_importContacts, requestDelegate, 6);
                    i16++;
                    map24 = map24;
                    iCeil = i18;
                    map4 = map4;
                    map25 = map28;
                    sparseArray = sparseArray;
                    contactsController = this;
                }
                return;
            }
            final HashMap<String, Contact> map29 = contactsFromPhoneBook;
            final ArrayList arrayList9 = arrayList;
            final HashMap map30 = map2;
            final HashMap map31 = map3;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSyncPhoneBook$22(map14, map29, z3, map31, arrayList9, map30);
                }
            });
            return;
        }
        final HashMap<String, Contact> map32 = contactsFromPhoneBook;
        final ArrayList arrayList10 = arrayList;
        final HashMap map33 = map2;
        final HashMap map34 = map3;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSyncPhoneBook$24(map14, map32, z3, map34, arrayList10, map33);
            }
        });
        if (map32.isEmpty()) {
            return;
        }
        getMessagesStorage().putCachedPhoneBook(map32, false, false);
    }

    private /* synthetic */ void lambda$performSyncPhoneBook$13(HashMap map) {
        ArrayList<TLRPC.User> arrayList = new ArrayList<>();
        if (map != null && !map.isEmpty()) {
            try {
                HashMap map2 = new HashMap();
                for (int i = 0; i < this.contacts.size(); i++) {
                    TLRPC.User user = getMessagesController().getUser(Long.valueOf(this.contacts.get(i).user_id));
                    if (user != null && !TextUtils.isEmpty(user.phone)) {
                        map2.put(user.phone, user);
                    }
                }
                Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    Contact contact = (Contact) ((Map.Entry) it.next()).getValue();
                    int i2 = 0;
                    boolean z = false;
                    while (i2 < contact.shortPhones.size()) {
                        TLRPC.User user2 = (TLRPC.User) map2.get(contact.shortPhones.get(i2));
                        if (user2 != null) {
                            arrayList.add(user2);
                            contact.shortPhones.remove(i2);
                            i2--;
                            z = true;
                        }
                        i2++;
                    }
                    if (z) {
                        contact.shortPhones.size();
                    }
                }
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        deleteContact(arrayList, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$14(int i, HashMap map, boolean z, boolean z2) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.hasNewContactsToImport, Integer.valueOf(i), map, Boolean.valueOf(z), Boolean.valueOf(z2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$16(HashMap map, HashMap map2, boolean z, final HashMap map3, final ArrayList arrayList, final HashMap map4) {
        this.contactsBookSPhones = map;
        this.contactsBook = map2;
        this.contactsSyncInProgress = false;
        this.contactsBookLoaded = true;
        if (z) {
            this.contactsLoaded = true;
        }
        if (!this.delayedContactsUpdate.isEmpty() && this.contactsLoaded) {
            applyContactsUpdates(this.delayedContactsUpdate, null, null, null);
            this.delayedContactsUpdate.clear();
        }
        getMessagesStorage().putCachedPhoneBook(map2, false, false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSyncPhoneBook$15(map3, arrayList, map4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$15(HashMap map, ArrayList arrayList, HashMap map2) {
        lambda$performSyncPhoneBook$23(map, arrayList, map2);
        updateUnregisteredContacts();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsImported, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$20(HashMap map, SparseArray sparseArray, final boolean[] zArr, HashMap map2, TLRPC.TL_contacts_importContacts tL_contacts_importContacts, int i, final HashMap map3, final boolean z, final HashMap map4, final ArrayList arrayList, final HashMap map5, TLObject tLObject, TLRPC.TL_error tL_error) {
        HashMap map6;
        this.completedRequestsCount++;
        if (tL_error == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("contacts imported");
            }
            TLRPC.TL_contacts_importedContacts tL_contacts_importedContacts = (TLRPC.TL_contacts_importedContacts) tLObject;
            if (!tL_contacts_importedContacts.retry_contacts.isEmpty()) {
                for (int i2 = 0; i2 < tL_contacts_importedContacts.retry_contacts.size(); i2++) {
                    map.remove(sparseArray.get((int) tL_contacts_importedContacts.retry_contacts.get(i2).longValue()));
                }
                zArr[0] = true;
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("result has retry contacts");
                }
            }
            for (int i3 = 0; i3 < tL_contacts_importedContacts.popular_invites.size(); i3++) {
                TLRPC.TL_popularContact tL_popularContact = tL_contacts_importedContacts.popular_invites.get(i3);
                Contact contact = (Contact) map2.get(sparseArray.get((int) tL_popularContact.client_id));
                if (contact != null) {
                    contact.imported = tL_popularContact.importers;
                }
            }
            map6 = map2;
            getMessagesStorage().putUsersAndChats(tL_contacts_importedContacts.users, null, true, true);
            ArrayList<TLRPC.TL_contact> arrayList2 = new ArrayList<>();
            for (int i4 = 0; i4 < tL_contacts_importedContacts.imported.size(); i4++) {
                TLRPC.TL_contact tL_contact = new TLRPC.TL_contact();
                tL_contact.user_id = tL_contacts_importedContacts.imported.get(i4).user_id;
                arrayList2.add(tL_contact);
            }
            processLoadedContacts(arrayList2, tL_contacts_importedContacts.users, 2);
        } else {
            map6 = map2;
            for (int i5 = 0; i5 < tL_contacts_importContacts.contacts.size(); i5++) {
                map.remove(sparseArray.get((int) tL_contacts_importContacts.contacts.get(i5).client_id));
            }
            zArr[0] = true;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("import contacts error " + tL_error.text);
            }
        }
        if (this.completedRequestsCount == i) {
            if (!map.isEmpty()) {
                getMessagesStorage().putCachedPhoneBook(map, false, false);
            }
            final HashMap map7 = map6;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSyncPhoneBook$19(map3, map7, z, map4, arrayList, map5, zArr);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$19(HashMap map, HashMap map2, boolean z, final HashMap map3, final ArrayList arrayList, final HashMap map4, boolean[] zArr) {
        this.contactsBookSPhones = map;
        this.contactsBook = map2;
        this.contactsSyncInProgress = false;
        this.contactsBookLoaded = true;
        if (z) {
            this.contactsLoaded = true;
        }
        if (!this.delayedContactsUpdate.isEmpty() && this.contactsLoaded) {
            applyContactsUpdates(this.delayedContactsUpdate, null, null, null);
            this.delayedContactsUpdate.clear();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSyncPhoneBook$17(map3, arrayList, map4);
            }
        });
        if (zArr[0]) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$performSyncPhoneBook$18();
                }
            }, 300000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$17(HashMap map, ArrayList arrayList, HashMap map2) {
        lambda$performSyncPhoneBook$23(map, arrayList, map2);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsImported, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$18() {
        getMessagesStorage().getCachedPhoneBook(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$22(HashMap map, HashMap map2, boolean z, final HashMap map3, final ArrayList arrayList, final HashMap map4) {
        this.contactsBookSPhones = map;
        this.contactsBook = map2;
        this.contactsSyncInProgress = false;
        this.contactsBookLoaded = true;
        if (z) {
            this.contactsLoaded = true;
        }
        if (!this.delayedContactsUpdate.isEmpty() && this.contactsLoaded) {
            applyContactsUpdates(this.delayedContactsUpdate, null, null, null);
            this.delayedContactsUpdate.clear();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSyncPhoneBook$21(map3, arrayList, map4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$21(HashMap map, ArrayList arrayList, HashMap map2) {
        lambda$performSyncPhoneBook$23(map, arrayList, map2);
        updateUnregisteredContacts();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsImported, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSyncPhoneBook$24(HashMap map, HashMap map2, boolean z, final HashMap map3, final ArrayList arrayList, final HashMap map4) {
        this.contactsBookSPhones = map;
        this.contactsBook = map2;
        this.contactsSyncInProgress = false;
        this.contactsBookLoaded = true;
        if (z) {
            this.contactsLoaded = true;
        }
        if (!this.delayedContactsUpdate.isEmpty() && this.contactsLoaded) {
            applyContactsUpdates(this.delayedContactsUpdate, null, null, null);
            this.delayedContactsUpdate.clear();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$performSyncPhoneBook$23(map3, arrayList, map4);
            }
        });
    }

    public boolean isLoadingContacts() {
        boolean z;
        synchronized (this.loadContactsSync) {
            z = this.loadingContacts;
        }
        return z;
    }

    private long getContactsHash(ArrayList<TLRPC.TL_contact> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda50
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ContactsController.$r8$lambda$EoqSNI82ZJZ2JYcR7TTNAdah2R4((TLRPC.TL_contact) obj, (TLRPC.TL_contact) obj2);
            }
        });
        int size = arrayList2.size();
        long jCalcHash = 0;
        for (int i = -1; i < size; i++) {
            if (i == -1) {
                jCalcHash = MediaDataController.calcHash(jCalcHash, getUserConfig().contactsSavedCount);
            } else {
                jCalcHash = MediaDataController.calcHash(jCalcHash, ((TLRPC.TL_contact) arrayList2.get(i)).user_id);
            }
        }
        return jCalcHash;
    }

    public static /* synthetic */ int $r8$lambda$EoqSNI82ZJZ2JYcR7TTNAdah2R4(TLRPC.TL_contact tL_contact, TLRPC.TL_contact tL_contact2) {
        long j = tL_contact.user_id;
        long j2 = tL_contact2.user_id;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    public void loadContacts(boolean z, final long j) {
        synchronized (this.loadContactsSync) {
            this.loadingContacts = true;
        }
        if (z) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("load contacts from cache");
            }
            getMessagesStorage().getContacts();
        } else {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("load contacts from server");
            }
            TLRPC.TL_contacts_getContacts tL_contacts_getContacts = new TLRPC.TL_contacts_getContacts();
            tL_contacts_getContacts.hash = j;
            getConnectionsManager().sendRequest(tL_contacts_getContacts, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda22
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadContacts$28(j, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadContacts$28(long j, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            TLRPC.contacts_Contacts contacts_contacts = (TLRPC.contacts_Contacts) tLObject;
            if (j != 0 && (contacts_contacts instanceof TLRPC.TL_contacts_contactsNotModified)) {
                this.contactsLoaded = true;
                if (!this.delayedContactsUpdate.isEmpty() && this.contactsBookLoaded) {
                    applyContactsUpdates(this.delayedContactsUpdate, null, null, null);
                    this.delayedContactsUpdate.clear();
                }
                getUserConfig().lastContactsSyncTime = (int) (System.currentTimeMillis() / 1000);
                getUserConfig().saveConfig(false);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadContacts$27();
                    }
                });
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("load contacts don't change");
                    return;
                }
                return;
            }
            getUserConfig().contactsSavedCount = contacts_contacts.saved_count;
            getUserConfig().saveConfig(false);
            processLoadedContacts(contacts_contacts.contacts, contacts_contacts.users, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadContacts$27() {
        synchronized (this.loadContactsSync) {
            this.loadingContacts = false;
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
    }

    public void processLoadedContacts(final ArrayList<TLRPC.TL_contact> arrayList, final ArrayList<TLRPC.User> arrayList2, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedContacts$37(arrayList2, i, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedContacts$37(final ArrayList arrayList, final int i, final ArrayList arrayList2) {
        getMessagesController().putUsers(arrayList, i == 1);
        final LongSparseArray longSparseArray = new LongSparseArray();
        final boolean zIsEmpty = arrayList2.isEmpty();
        if (i == 2 && !this.contacts.isEmpty()) {
            int i2 = 0;
            while (i2 < arrayList2.size()) {
                if (this.contactsDict.get(Long.valueOf(((TLRPC.TL_contact) arrayList2.get(i2)).user_id)) != null) {
                    arrayList2.remove(i2);
                    i2--;
                }
                i2++;
            }
            arrayList2.addAll(this.contacts);
        }
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(((TLRPC.TL_contact) arrayList2.get(i3)).user_id));
            if (user != null) {
                longSparseArray.put(user.id, user);
            }
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedContacts$36(i, arrayList2, arrayList, longSparseArray, zIsEmpty);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processLoadedContacts$36(final int i, final ArrayList arrayList, ArrayList arrayList2, LongSparseArray longSparseArray, final boolean z) {
        final HashMap map;
        final HashMap map2;
        int i2;
        ConcurrentHashMap concurrentHashMap;
        int i3;
        String upperCase;
        ArrayList arrayList3;
        ArrayList arrayList4 = arrayList;
        final LongSparseArray longSparseArray2 = longSparseArray;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("done loading contacts");
        }
        if (i == 1 && (arrayList4.isEmpty() || Math.abs((System.currentTimeMillis() / 1000) - ((long) getUserConfig().lastContactsSyncTime)) >= 86400)) {
            loadContacts(false, getContactsHash(arrayList4));
            if (arrayList4.isEmpty()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda39
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$processLoadedContacts$29();
                    }
                });
                return;
            }
        }
        if (i == 0) {
            getUserConfig().lastContactsSyncTime = (int) (System.currentTimeMillis() / 1000);
            getUserConfig().saveConfig(false);
        }
        int i4 = 0;
        final boolean z2 = false;
        while (i4 < arrayList4.size()) {
            TLRPC.TL_contact tL_contact = (TLRPC.TL_contact) arrayList4.get(i4);
            if (MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_contact.user_id)) == null && tL_contact.user_id != getUserConfig().getClientUserId()) {
                arrayList4.remove(i4);
                i4--;
                z2 = true;
            }
            i4++;
        }
        if (i != 1) {
            getMessagesStorage().putUsersAndChats(arrayList2, null, true, true);
            getMessagesStorage().putContacts(arrayList4, i != 2);
        }
        final Collator localeCollator = getLocaleCollator();
        Collections.sort(arrayList4, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda40
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                LongSparseArray longSparseArray3 = longSparseArray2;
                return localeCollator.compare(UserObject.getFirstName((TLRPC.User) longSparseArray3.get(((TLRPC.TL_contact) obj).user_id)), UserObject.getFirstName((TLRPC.User) longSparseArray3.get(((TLRPC.TL_contact) obj2).user_id)));
            }
        });
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap(20, 1.0f, 2);
        final HashMap map3 = new HashMap();
        final HashMap map4 = new HashMap();
        final ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        if (this.contactsBookLoaded) {
            map = null;
            map2 = null;
        } else {
            map = new HashMap();
            map2 = new HashMap();
        }
        int i5 = 0;
        while (i5 < arrayList4.size()) {
            TLRPC.TL_contact tL_contact2 = (TLRPC.TL_contact) arrayList4.get(i5);
            ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
            TLRPC.User user = (TLRPC.User) longSparseArray2.get(tL_contact2.user_id);
            if (user == null) {
                i2 = i5;
                arrayList3 = arrayList6;
                i3 = 0;
                concurrentHashMap = concurrentHashMap3;
            } else {
                i2 = i5;
                ArrayList arrayList7 = arrayList6;
                concurrentHashMap = concurrentHashMap3;
                concurrentHashMap.put(Long.valueOf(tL_contact2.user_id), tL_contact2);
                if (map == null || TextUtils.isEmpty(user.phone)) {
                    i3 = 0;
                } else {
                    map.put(user.phone, tL_contact2);
                    i3 = 0;
                    map2.put(user.phone.substring(Math.max(0, r12.length() - 7)), tL_contact2);
                }
                String firstName = UserObject.getFirstName(user);
                if (firstName.length() > 1) {
                    firstName = firstName.substring(i3, 1);
                }
                if (firstName.length() == 0) {
                    upperCase = "#";
                } else {
                    upperCase = firstName.toUpperCase();
                }
                String str = this.sectionsToReplace.get(upperCase);
                if (str != null) {
                    upperCase = str;
                }
                ArrayList arrayList8 = (ArrayList) map3.get(upperCase);
                if (arrayList8 == null) {
                    arrayList8 = new ArrayList();
                    map3.put(upperCase, arrayList8);
                    arrayList5.add(upperCase);
                }
                arrayList8.add(tL_contact2);
                if (user.mutual_contact) {
                    ArrayList arrayList9 = (ArrayList) map4.get(upperCase);
                    if (arrayList9 == null) {
                        arrayList9 = new ArrayList();
                        map4.put(upperCase, arrayList9);
                        arrayList3 = arrayList7;
                        arrayList3.add(upperCase);
                    } else {
                        arrayList3 = arrayList7;
                    }
                    arrayList9.add(tL_contact2);
                } else {
                    arrayList3 = arrayList7;
                }
            }
            i5 = i2 + 1;
            ConcurrentHashMap concurrentHashMap4 = concurrentHashMap;
            arrayList6 = arrayList3;
            concurrentHashMap2 = concurrentHashMap4;
            longSparseArray2 = longSparseArray;
            arrayList4 = arrayList;
        }
        final ArrayList arrayList10 = arrayList6;
        final ConcurrentHashMap concurrentHashMap5 = concurrentHashMap2;
        Collections.sort(arrayList5, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda41
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ContactsController.$r8$lambda$7FRrR4a9X27JXVm5UFt68w07Xyw(localeCollator, (String) obj, (String) obj2);
            }
        });
        Collections.sort(arrayList10, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda42
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ContactsController.$r8$lambda$qp1Mm9C7fv5a8XV5V4R8DcUSLyE(localeCollator, (String) obj, (String) obj2);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedContacts$33(arrayList, concurrentHashMap5, map3, map4, arrayList5, arrayList10, i, z, z2);
            }
        });
        if (!this.delayedContactsUpdate.isEmpty() && this.contactsLoaded && this.contactsBookLoaded) {
            applyContactsUpdates(this.delayedContactsUpdate, null, null, null);
            this.delayedContactsUpdate.clear();
        }
        if (map != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processLoadedContacts$35(map, map2);
                }
            });
        } else {
            this.contactsLoaded = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedContacts$29() {
        this.doneLoadingContacts = true;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
    }

    public static /* synthetic */ int $r8$lambda$7FRrR4a9X27JXVm5UFt68w07Xyw(Collator collator, String str, String str2) {
        char cCharAt = str.charAt(0);
        char cCharAt2 = str2.charAt(0);
        if (cCharAt == '#') {
            return 1;
        }
        if (cCharAt2 == '#') {
            return -1;
        }
        return collator.compare(str, str2);
    }

    public static /* synthetic */ int $r8$lambda$qp1Mm9C7fv5a8XV5V4R8DcUSLyE(Collator collator, String str, String str2) {
        char cCharAt = str.charAt(0);
        char cCharAt2 = str2.charAt(0);
        if (cCharAt == '#') {
            return 1;
        }
        if (cCharAt2 == '#') {
            return -1;
        }
        return collator.compare(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedContacts$33(ArrayList arrayList, ConcurrentHashMap concurrentHashMap, HashMap map, HashMap map2, ArrayList arrayList2, ArrayList arrayList3, int i, boolean z, boolean z2) {
        this.contacts = arrayList;
        this.contactsDict = concurrentHashMap;
        this.usersSectionsDict = map;
        this.usersMutualSectionsDict = map2;
        this.sortedUsersSectionsArray = arrayList2;
        this.sortedUsersMutualSectionsArray = arrayList3;
        this.doneLoadingContacts = true;
        if (i != 2) {
            synchronized (this.loadContactsSync) {
                this.loadingContacts = false;
            }
        }
        performWriteContactsToPhoneBook();
        updateUnregisteredContacts();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
        if (i != 1 && !z) {
            saveContactsLoadTime();
        } else {
            reloadContactsStatusesMaybe(false);
        }
        if (z2) {
            loadContacts(false, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedContacts$35(final HashMap map, final HashMap map2) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processLoadedContacts$34(map, map2);
            }
        });
        if (this.contactsSyncInProgress) {
            return;
        }
        this.contactsSyncInProgress = true;
        getMessagesStorage().getCachedPhoneBook(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedContacts$34(HashMap map, HashMap map2) {
        this.contactsByPhone = map;
        this.contactsByShortPhone = map2;
    }

    public boolean isContact(long j) {
        return this.contactsDict.get(Long.valueOf(j)) != null;
    }

    public void reloadContactsStatusesMaybe(boolean z) {
        try {
            if (MessagesController.getMainSettings(this.currentAccount).getLong("lastReloadStatusTime", 0L) >= System.currentTimeMillis() - 10800000 && !z) {
                return;
            }
            reloadContactsStatuses();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    private void saveContactsLoadTime() {
        try {
            MessagesController.getMainSettings(this.currentAccount).edit().putLong("lastReloadStatusTime", System.currentTimeMillis()).apply();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: mergePhonebookAndTelegramContacts, reason: merged with bridge method [inline-methods] */
    public void lambda$performSyncPhoneBook$23(HashMap<String, ArrayList<Object>> map, ArrayList<String> arrayList, HashMap<String, Contact> map2) {
        mergePhonebookAndTelegramContacts(map, arrayList, map2, true);
    }

    private void mergePhonebookAndTelegramContacts(final HashMap<String, ArrayList<Object>> map, final ArrayList<String> arrayList, final HashMap<String, Contact> map2, final boolean z) {
        final ArrayList arrayList2 = new ArrayList(this.contacts);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$mergePhonebookAndTelegramContacts$41(z, arrayList2, map2, map, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mergePhonebookAndTelegramContacts$41(boolean z, ArrayList arrayList, final HashMap map, final HashMap map2, final ArrayList arrayList2) {
        if (z) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC.User user = getMessagesController().getUser(Long.valueOf(((TLRPC.TL_contact) arrayList.get(i)).user_id));
                if (user != null && !TextUtils.isEmpty(user.phone)) {
                    Contact contact = (Contact) map.get(user.phone.substring(Math.max(0, r3.length() - 7)));
                    if (contact != null) {
                        if (contact.user == null) {
                            contact.user = user;
                        }
                    } else {
                        String letter = Contact.getLetter(user.first_name, user.last_name);
                        ArrayList arrayList3 = (ArrayList) map2.get(letter);
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                            map2.put(letter, arrayList3);
                            arrayList2.add(letter);
                        }
                        arrayList3.add(user);
                    }
                }
            }
        }
        final Collator localeCollator = getLocaleCollator();
        Iterator it = map2.values().iterator();
        while (it.hasNext()) {
            Collections.sort((ArrayList) it.next(), new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda25
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ContactsController.m5131$r8$lambda$WzPKw0eDXIhv6oQVE8ad2kfSmY(localeCollator, obj, obj2);
                }
            });
        }
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda26
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ContactsController.$r8$lambda$LmjoaGJCZKV1FB4RaDKP3eteBZo(localeCollator, (String) obj, (String) obj2);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$mergePhonebookAndTelegramContacts$40(arrayList2, map, map2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$WzPKw0eDXIhv6oQVE8-ad2kfSmY, reason: not valid java name */
    public static /* synthetic */ int m5131$r8$lambda$WzPKw0eDXIhv6oQVE8ad2kfSmY(Collator collator, Object obj, Object obj2) {
        String name;
        String name2;
        boolean z = obj instanceof TLRPC.User;
        String name3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (z) {
            TLRPC.User user = (TLRPC.User) obj;
            name = formatName(user.first_name, user.last_name);
        } else if (obj instanceof Contact) {
            Contact contact = (Contact) obj;
            TLRPC.User user2 = contact.user;
            if (user2 != null) {
                name = formatName(user2.first_name, user2.last_name);
            } else {
                name = formatName(contact.first_name, contact.last_name);
            }
        } else {
            name = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (obj2 instanceof TLRPC.User) {
            TLRPC.User user3 = (TLRPC.User) obj2;
            name3 = formatName(user3.first_name, user3.last_name);
        } else if (obj2 instanceof Contact) {
            Contact contact2 = (Contact) obj2;
            TLRPC.User user4 = contact2.user;
            if (user4 != null) {
                name2 = formatName(user4.first_name, user4.last_name);
            } else {
                name2 = formatName(contact2.first_name, contact2.last_name);
            }
            name3 = name2;
        }
        return collator.compare(name, name3);
    }

    public static /* synthetic */ int $r8$lambda$LmjoaGJCZKV1FB4RaDKP3eteBZo(Collator collator, String str, String str2) {
        char cCharAt = str.charAt(0);
        char cCharAt2 = str2.charAt(0);
        if (cCharAt == '#') {
            return 1;
        }
        if (cCharAt2 == '#') {
            return -1;
        }
        return collator.compare(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mergePhonebookAndTelegramContacts$40(ArrayList arrayList, HashMap map, HashMap map2) {
        this.phoneBookSectionsArray = arrayList;
        this.phoneBookByShortPhones = map;
        this.phoneBookSectionsDict = map2;
    }

    private void updateUnregisteredContacts() {
        HashMap map = new HashMap();
        int size = this.contacts.size();
        for (int i = 0; i < size; i++) {
            TLRPC.TL_contact tL_contact = this.contacts.get(i);
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(tL_contact.user_id));
            if (user != null && !TextUtils.isEmpty(user.phone)) {
                map.put(user.phone, tL_contact);
            }
        }
        ArrayList<Contact> arrayList = new ArrayList<>();
        Iterator<Map.Entry<String, Contact>> it = this.contactsBook.entrySet().iterator();
        while (it.hasNext()) {
            Contact value = it.next().getValue();
            int i2 = 0;
            while (true) {
                if (i2 < value.phones.size()) {
                    if (map.containsKey(value.shortPhones.get(i2)) || value.phoneDeleted.get(i2).intValue() == 1) {
                        break;
                    } else {
                        i2++;
                    }
                } else {
                    arrayList.add(value);
                    break;
                }
            }
        }
        final Collator localeCollator = getLocaleCollator();
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda51
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ContactsController.$r8$lambda$yGcrFYDPChyOJMc3cE_7E1f7VFk(localeCollator, (ContactsController.Contact) obj, (ContactsController.Contact) obj2);
            }
        });
        this.phoneBookContacts = arrayList;
    }

    public static /* synthetic */ int $r8$lambda$yGcrFYDPChyOJMc3cE_7E1f7VFk(Collator collator, Contact contact, Contact contact2) {
        String str = contact.first_name;
        if (str.length() == 0) {
            str = contact.last_name;
        }
        String str2 = contact2.first_name;
        if (str2.length() == 0) {
            str2 = contact2.last_name;
        }
        return collator.compare(str, str2);
    }

    private void buildContactsSectionsArrays(boolean z) {
        String upperCase;
        final Collator localeCollator = getLocaleCollator();
        if (z) {
            Collections.sort(this.contacts, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda17
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.lambda$buildContactsSectionsArrays$43(localeCollator, (TLRPC.TL_contact) obj, (TLRPC.TL_contact) obj2);
                }
            });
        }
        HashMap<String, ArrayList<TLRPC.TL_contact>> map = new HashMap<>();
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < this.contacts.size(); i++) {
            TLRPC.TL_contact tL_contact = this.contacts.get(i);
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(tL_contact.user_id));
            if (user != null) {
                String firstName = UserObject.getFirstName(user);
                if (firstName.length() > 1) {
                    firstName = firstName.substring(0, 1);
                }
                if (firstName.length() == 0) {
                    upperCase = "#";
                } else {
                    upperCase = firstName.toUpperCase();
                }
                String str = this.sectionsToReplace.get(upperCase);
                if (str != null) {
                    upperCase = str;
                }
                ArrayList<TLRPC.TL_contact> arrayList2 = map.get(upperCase);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    map.put(upperCase, arrayList2);
                    arrayList.add(upperCase);
                }
                arrayList2.add(tL_contact);
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda18
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ContactsController.m5136$r8$lambda$hj1bMqpqHFptNGw1SaNPswetxQ(localeCollator, (String) obj, (String) obj2);
            }
        });
        this.usersSectionsDict = map;
        this.sortedUsersSectionsArray = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$buildContactsSectionsArrays$43(Collator collator, TLRPC.TL_contact tL_contact, TLRPC.TL_contact tL_contact2) {
        return collator.compare(UserObject.getFirstName(getMessagesController().getUser(Long.valueOf(tL_contact.user_id))), UserObject.getFirstName(getMessagesController().getUser(Long.valueOf(tL_contact2.user_id))));
    }

    /* JADX INFO: renamed from: $r8$lambda$hj1bMqpqHFptNGw-1SaNPswetxQ, reason: not valid java name */
    public static /* synthetic */ int m5136$r8$lambda$hj1bMqpqHFptNGw1SaNPswetxQ(Collator collator, String str, String str2) {
        char cCharAt = str.charAt(0);
        char cCharAt2 = str2.charAt(0);
        if (cCharAt == '#') {
            return 1;
        }
        if (cCharAt2 == '#') {
            return -1;
        }
        return collator.compare(str, str2);
    }

    public static boolean hasContactsPermission() {
        return ApplicationLoader.applicationContext.checkSelfPermission("android.permission.READ_CONTACTS") == 0;
    }

    public static boolean hasContactsWritePermission() {
        return ApplicationLoader.applicationContext.checkSelfPermission("android.permission.WRITE_CONTACTS") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: performWriteContactsToPhoneBookInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$performWriteContactsToPhoneBook$45(ArrayList<TLRPC.TL_contact> arrayList) throws Throwable {
        Account account;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Cursor cursor = null;
        try {
            try {
                account = this.systemAccount;
            } catch (Exception e) {
                e = e;
            }
            if (hasContactsPermission() && account != null && hasContactsWritePermission()) {
                SharedPreferences mainSettings = MessagesController.getMainSettings(this.currentAccount);
                boolean z = mainSettings.getBoolean("contacts_updated_v7", false);
                boolean z2 = !z;
                if (!z) {
                    mainSettings.edit().putBoolean("contacts_updated_v7", true).apply();
                }
                ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
                Cursor cursorQuery = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "sync2"}, null, null, null);
                try {
                    LongSparseArray longSparseArray = new LongSparseArray();
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            longSparseArray.put(cursorQuery.getLong(1), Long.valueOf(cursorQuery.getLong(0)));
                        }
                        cursorQuery.close();
                        FileLog.m895d("performWriteContactsToPhoneBookInternal contacts array " + arrayList.size() + " " + z2 + " bookContactsSize=" + longSparseArray.size() + " currentAccount=" + this.currentAccount);
                        ArrayList<ContentProviderOperation> arrayList2 = null;
                        for (int i = 0; i < arrayList.size(); i++) {
                            TLRPC.TL_contact tL_contact = arrayList.get(i);
                            if (!z || longSparseArray.indexOfKey(tL_contact.user_id) < 0) {
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList<>();
                                }
                                applyContactToPhoneBook(arrayList2, getMessagesController().getUser(Long.valueOf(tL_contact.user_id)));
                                if (arrayList2.size() > 450) {
                                    contentResolver.applyBatch("com.android.contacts", arrayList2);
                                    arrayList2.clear();
                                }
                            }
                        }
                        if (arrayList2 != null && !arrayList2.isEmpty()) {
                            contentResolver.applyBatch("com.android.contacts", arrayList2);
                            arrayList2.clear();
                        }
                    } else {
                        cursor = cursorQuery;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor = cursorQuery;
                    FileLog.m898e(e);
                    if (cursor != null) {
                    }
                    FileLog.m895d("performWriteContactsToPhoneBookInternal " + (System.currentTimeMillis() - jCurrentTimeMillis));
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
                if (cursor != null) {
                    cursor.close();
                }
                FileLog.m895d("performWriteContactsToPhoneBookInternal " + (System.currentTimeMillis() - jCurrentTimeMillis));
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void performWriteContactsToPhoneBook() {
        final ArrayList arrayList = new ArrayList(this.contacts);
        Utilities.phoneBookQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$performWriteContactsToPhoneBook$45(arrayList);
            }
        });
    }

    private void applyContactsUpdates(ArrayList<Long> arrayList, ConcurrentHashMap<Long, TLRPC.User> concurrentHashMap, final ArrayList<TLRPC.TL_contact> arrayList2, final ArrayList<Long> arrayList3) {
        int iIndexOf;
        int iIndexOf2;
        if (arrayList2 == null || arrayList3 == null) {
            arrayList2 = new ArrayList<>();
            arrayList3 = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                Long l = arrayList.get(i);
                if (l.longValue() > 0) {
                    TLRPC.TL_contact tL_contact = new TLRPC.TL_contact();
                    tL_contact.user_id = l.longValue();
                    arrayList2.add(tL_contact);
                } else if (l.longValue() < 0) {
                    arrayList3.add(Long.valueOf(-l.longValue()));
                }
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("process update - contacts add = " + arrayList2.size() + " delete = " + arrayList3.size());
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        int i2 = 0;
        boolean z = false;
        while (true) {
            if (i2 >= arrayList2.size()) {
                break;
            }
            TLRPC.TL_contact tL_contact2 = arrayList2.get(i2);
            TLRPC.User user = concurrentHashMap != null ? concurrentHashMap.get(Long.valueOf(tL_contact2.user_id)) : null;
            if (user == null) {
                user = getMessagesController().getUser(Long.valueOf(tL_contact2.user_id));
            } else {
                getMessagesController().putUser(user, true);
            }
            if (user == null || TextUtils.isEmpty(user.phone)) {
                z = true;
            } else {
                Contact contact = this.contactsBookSPhones.get(user.phone);
                if (contact != null && (iIndexOf2 = contact.shortPhones.indexOf(user.phone)) != -1) {
                    contact.phoneDeleted.set(iIndexOf2, 0);
                }
                if (sb.length() != 0) {
                    sb.append(",");
                }
                sb.append(user.phone);
            }
            i2++;
        }
        for (int i3 = 0; i3 < arrayList3.size(); i3++) {
            final Long l2 = arrayList3.get(i3);
            Utilities.phoneBookQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$applyContactsUpdates$46(l2);
                }
            });
            TLRPC.User user2 = concurrentHashMap != null ? concurrentHashMap.get(l2) : null;
            if (user2 == null) {
                user2 = getMessagesController().getUser(l2);
            } else {
                getMessagesController().putUser(user2, true);
            }
            if (user2 == null) {
                z = true;
            } else if (!TextUtils.isEmpty(user2.phone)) {
                Contact contact2 = this.contactsBookSPhones.get(user2.phone);
                if (contact2 != null && (iIndexOf = contact2.shortPhones.indexOf(user2.phone)) != -1) {
                    contact2.phoneDeleted.set(iIndexOf, 1);
                }
                if (sb2.length() != 0) {
                    sb2.append(",");
                }
                sb2.append(user2.phone);
            }
        }
        if (sb.length() != 0 || sb2.length() != 0) {
            getMessagesStorage().applyPhoneBookUpdates(sb.toString(), sb2.toString());
        }
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$applyContactsUpdates$47();
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$applyContactsUpdates$48(arrayList2, arrayList3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyContactsUpdates$46(Long l) {
        deleteContactFromPhoneBook(l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyContactsUpdates$47() {
        loadContacts(false, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyContactsUpdates$48(ArrayList arrayList, ArrayList arrayList2) {
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.TL_contact tL_contact = (TLRPC.TL_contact) arrayList.get(i);
            if (this.contactsDict.get(Long.valueOf(tL_contact.user_id)) == null) {
                this.contacts.add(tL_contact);
                this.contactsDict.put(Long.valueOf(tL_contact.user_id), tL_contact);
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            Long l = (Long) arrayList2.get(i2);
            TLRPC.TL_contact tL_contact2 = this.contactsDict.get(l);
            if (tL_contact2 != null) {
                this.contacts.remove(tL_contact2);
                this.contactsDict.remove(l);
            }
        }
        if (!arrayList.isEmpty()) {
            updateUnregisteredContacts();
            performWriteContactsToPhoneBook();
        }
        performSyncPhoneBook(getContactsCopy(this.contactsBook), false, false, false, false, true, false);
        buildContactsSectionsArrays(!arrayList.isEmpty());
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
    }

    public void processContactsUpdates(ArrayList<Long> arrayList, ConcurrentHashMap<Long, TLRPC.User> concurrentHashMap) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<TLRPC.TL_contact> arrayList2 = new ArrayList<>();
        ArrayList<Long> arrayList3 = new ArrayList<>();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Long l = arrayList.get(i);
            i++;
            Long l2 = l;
            if (l2.longValue() > 0) {
                TLRPC.TL_contact tL_contact = new TLRPC.TL_contact();
                tL_contact.user_id = l2.longValue();
                arrayList2.add(tL_contact);
                if (!this.delayedContactsUpdate.isEmpty() && (iIndexOf = this.delayedContactsUpdate.indexOf(Long.valueOf(-l2.longValue()))) != -1) {
                    this.delayedContactsUpdate.remove(iIndexOf);
                }
            } else if (l2.longValue() < 0) {
                arrayList3.add(Long.valueOf(-l2.longValue()));
                if (!this.delayedContactsUpdate.isEmpty() && (iIndexOf2 = this.delayedContactsUpdate.indexOf(Long.valueOf(-l2.longValue()))) != -1) {
                    this.delayedContactsUpdate.remove(iIndexOf2);
                }
            }
        }
        if (!arrayList3.isEmpty()) {
            getMessagesStorage().deleteContacts(arrayList3);
        }
        if (!arrayList2.isEmpty()) {
            getMessagesStorage().putContacts(arrayList2, false);
        }
        if (!this.contactsLoaded || !this.contactsBookLoaded) {
            this.delayedContactsUpdate.addAll(arrayList);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("delay update - contacts add = " + arrayList2.size() + " delete = " + arrayList3.size());
                return;
            }
            return;
        }
        applyContactsUpdates(arrayList, concurrentHashMap, arrayList2, arrayList3);
    }

    public long addContactToPhoneBook(TLRPC.User user, boolean z) {
        Uri uri;
        long j = -1;
        if (this.systemAccount == null || user == null || !hasContactsWritePermission()) {
            return -1L;
        }
        synchronized (this.observerLock) {
            this.ignoreChanges = true;
        }
        ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
        if (z) {
            try {
                contentResolver.delete(ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").appendQueryParameter("account_name", this.systemAccount.name).appendQueryParameter("account_type", this.systemAccount.type).build(), "sync2 = " + user.id, null);
            } catch (Exception unused) {
            }
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        applyContactToPhoneBook(arrayList, user);
        try {
            ContentProviderResult[] contentProviderResultArrApplyBatch = contentResolver.applyBatch("com.android.contacts", arrayList);
            if (contentProviderResultArrApplyBatch != null && contentProviderResultArrApplyBatch.length > 0 && (uri = contentProviderResultArrApplyBatch[0].uri) != null) {
                j = Long.parseLong(uri.getLastPathSegment());
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        synchronized (this.observerLock) {
            this.ignoreChanges = false;
        }
        return j;
    }

    private void applyContactToPhoneBook(ArrayList<ContentProviderOperation> arrayList, TLRPC.User user) {
        String name;
        if (user == null) {
            return;
        }
        int size = arrayList.size();
        ContentProviderOperation.Builder builderNewInsert = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
        builderNewInsert.withValue("account_name", this.systemAccount.name);
        builderNewInsert.withValue("account_type", this.systemAccount.type);
        builderNewInsert.withValue("sync1", TextUtils.isEmpty(user.phone) ? _UrlKt.FRAGMENT_ENCODE_SET : user.phone);
        builderNewInsert.withValue("sync2", Long.valueOf(user.id));
        arrayList.add(builderNewInsert.build());
        Uri uri = ContactsContract.Data.CONTENT_URI;
        ContentProviderOperation.Builder builderNewInsert2 = ContentProviderOperation.newInsert(uri);
        builderNewInsert2.withValueBackReference("raw_contact_id", size);
        builderNewInsert2.withValue("mimetype", "vnd.android.cursor.item/name");
        builderNewInsert2.withValue("data2", user.first_name);
        builderNewInsert2.withValue("data3", user.last_name);
        arrayList.add(builderNewInsert2.build());
        if (TextUtils.isEmpty(user.phone)) {
            name = formatName(user.first_name, user.last_name);
        } else {
            name = "+" + user.phone;
        }
        ContentProviderOperation.Builder builderNewInsert3 = ContentProviderOperation.newInsert(uri);
        builderNewInsert3.withValueBackReference("raw_contact_id", size);
        builderNewInsert3.withValue("mimetype", "vnd.android.cursor.item/vnd.org.telegram.messenger.android.profile");
        builderNewInsert3.withValue("data1", Long.valueOf(user.id));
        builderNewInsert3.withValue("data2", "Telegram Profile");
        builderNewInsert3.withValue("data3", LocaleController.formatString("ContactShortcutMessage", C2573R.string.ContactShortcutMessage, name));
        builderNewInsert3.withValue("data4", Long.valueOf(user.id));
        arrayList.add(builderNewInsert3.build());
        ContentProviderOperation.Builder builderNewInsert4 = ContentProviderOperation.newInsert(uri);
        builderNewInsert4.withValueBackReference("raw_contact_id", size);
        builderNewInsert4.withValue("mimetype", "vnd.android.cursor.item/vnd.org.telegram.messenger.android.call");
        builderNewInsert4.withValue("data1", Long.valueOf(user.id));
        builderNewInsert4.withValue("data2", "Telegram Voice Call");
        builderNewInsert4.withValue("data3", LocaleController.formatString("ContactShortcutVoiceCall", C2573R.string.ContactShortcutVoiceCall, name));
        builderNewInsert4.withValue("data4", Long.valueOf(user.id));
        arrayList.add(builderNewInsert4.build());
        ContentProviderOperation.Builder builderNewInsert5 = ContentProviderOperation.newInsert(uri);
        builderNewInsert5.withValueBackReference("raw_contact_id", size);
        builderNewInsert5.withValue("mimetype", "vnd.android.cursor.item/vnd.org.telegram.messenger.android.call.video");
        builderNewInsert5.withValue("data1", Long.valueOf(user.id));
        builderNewInsert5.withValue("data2", "Telegram Video Call");
        builderNewInsert5.withValue("data3", LocaleController.formatString("ContactShortcutVideoCall", C2573R.string.ContactShortcutVideoCall, name));
        builderNewInsert5.withValue("data4", Long.valueOf(user.id));
        arrayList.add(builderNewInsert5.build());
    }

    private void deleteContactFromPhoneBook(long j) {
        if (hasContactsPermission()) {
            synchronized (this.observerLock) {
                this.ignoreChanges = true;
            }
            try {
                ApplicationLoader.applicationContext.getContentResolver().delete(ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").appendQueryParameter("account_name", this.systemAccount.name).appendQueryParameter("account_type", this.systemAccount.type).build(), "sync2 = " + j, null);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
            synchronized (this.observerLock) {
                this.ignoreChanges = false;
            }
        }
    }

    public void markAsContacted(final String str) {
        if (str == null) {
            return;
        }
        Utilities.phoneBookQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                ContactsController.m5125$r8$lambda$KdxsDzNdBySWkSquPm6yasNp8U(str);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$KdxsDzNdBySWk-SquPm6yasNp8U, reason: not valid java name */
    public static /* synthetic */ void m5125$r8$lambda$KdxsDzNdBySWkSquPm6yasNp8U(String str) {
        Uri uri = Uri.parse(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put("last_time_contacted", Long.valueOf(System.currentTimeMillis()));
        ApplicationLoader.applicationContext.getContentResolver().update(uri, contentValues, null, null);
    }

    public void addContact(TLRPC.User user, boolean z) {
        addContact(user, null, z);
    }

    public void addContact(final TLRPC.User user, TLRPC.TL_textWithEntities tL_textWithEntities, boolean z) {
        if (user == null) {
            return;
        }
        TLRPC.TL_contacts_addContact tL_contacts_addContact = new TLRPC.TL_contacts_addContact();
        tL_contacts_addContact.id = getMessagesController().getInputUser(user);
        tL_contacts_addContact.first_name = user.first_name;
        tL_contacts_addContact.last_name = user.last_name;
        String str = user.phone;
        tL_contacts_addContact.phone = str;
        tL_contacts_addContact.add_phone_privacy_exception = z;
        if (str == null) {
            tL_contacts_addContact.phone = _UrlKt.FRAGMENT_ENCODE_SET;
        } else if (str.length() > 0 && !tL_contacts_addContact.phone.startsWith("+")) {
            tL_contacts_addContact.phone = "+" + tL_contacts_addContact.phone;
        }
        if (tL_textWithEntities != null) {
            tL_contacts_addContact.flags |= 2;
            tL_contacts_addContact.note = tL_textWithEntities;
        }
        getConnectionsManager().sendRequest(tL_contacts_addContact, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$addContact$52(user, tLObject, tL_error);
            }
        }, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addContact$52(final TLRPC.User user, TLObject tLObject, TLRPC.TL_error tL_error) {
        int iIndexOf;
        if (tL_error != null) {
            return;
        }
        final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
        TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
        if (userProfilePhoto != null && userProfilePhoto.personal) {
            for (int i = 0; i < updates.users.size(); i++) {
                if (updates.users.get(i).id == user.id) {
                    updates.users.get(i).photo = user.photo;
                }
            }
        }
        getMessagesController().processUpdates(updates, false);
        for (int i2 = 0; i2 < updates.users.size(); i2++) {
            final TLRPC.User user2 = updates.users.get(i2);
            if (user2.id == user.id) {
                Utilities.phoneBookQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$addContact$50(user2);
                    }
                });
                TLRPC.TL_contact tL_contact = new TLRPC.TL_contact();
                tL_contact.user_id = user2.id;
                ArrayList<TLRPC.TL_contact> arrayList = new ArrayList<>();
                arrayList.add(tL_contact);
                getMessagesStorage().putContacts(arrayList, false);
                if (!TextUtils.isEmpty(user2.phone)) {
                    formatName(user2.first_name, user2.last_name);
                    getMessagesStorage().applyPhoneBookUpdates(user2.phone, _UrlKt.FRAGMENT_ENCODE_SET);
                    Contact contact = this.contactsBookSPhones.get(user2.phone);
                    if (contact != null && (iIndexOf = contact.shortPhones.indexOf(user2.phone)) != -1) {
                        contact.phoneDeleted.set(iIndexOf, 0);
                    }
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addContact$51(updates, user);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addContact$50(TLRPC.User user) {
        addContactToPhoneBook(user, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addContact$51(TLRPC.Updates updates, TLRPC.User user) {
        Contact contact;
        boolean z = false;
        for (int i = 0; i < updates.users.size(); i++) {
            TLRPC.User user2 = updates.users.get(i);
            if (user2.contact && (contact = this.contactsBookSPhones.get(user2.phone)) != null) {
                String letter = contact.getLetter();
                String letter2 = Contact.getLetter(user.first_name, user.last_name);
                if (contact.user == null) {
                    contact.user = user;
                    if (!letter.equals(letter2)) {
                        ArrayList<Object> arrayList = this.phoneBookSectionsDict.get(letter2);
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                            this.phoneBookSectionsDict.put(letter2, arrayList);
                            this.phoneBookSectionsArray.add(letter2);
                        }
                        arrayList.add(contact);
                        ArrayList<Object> arrayList2 = this.phoneBookSectionsDict.get(letter);
                        if (arrayList2 != null) {
                            int size = arrayList2.size();
                            int i2 = 0;
                            while (true) {
                                if (i2 >= size) {
                                    break;
                                }
                                Object obj = arrayList2.get(i2);
                                i2++;
                                if (obj instanceof Contact) {
                                    Contact contact2 = (Contact) obj;
                                    if (contact2.contact_id == contact.contact_id) {
                                        if (arrayList2.remove(contact2) && arrayList2.isEmpty()) {
                                            this.phoneBookSectionsDict.remove(letter);
                                            this.phoneBookSectionsArray.remove(letter);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z = true;
                }
            }
            if (user2.contact && this.contactsDict.get(Long.valueOf(user2.id)) == null) {
                TLRPC.TL_contact tL_contact = new TLRPC.TL_contact();
                tL_contact.user_id = user2.id;
                this.contacts.add(tL_contact);
                this.contactsDict.put(Long.valueOf(tL_contact.user_id), tL_contact);
            }
        }
        buildContactsSectionsArrays(true);
        if (z) {
            mergePhonebookAndTelegramContacts(this.phoneBookSectionsDict, this.phoneBookSectionsArray, this.phoneBookByShortPhones, false);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
    }

    public void deleteContactsUndoable(Context context, BaseFragment baseFragment, final ArrayList<TLRPC.User> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        final HashMap map = new HashMap();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC.User user = arrayList.get(i);
            TLRPC.TL_contact tL_contact = this.contactsDict.get(Long.valueOf(user.id));
            user.contact = false;
            this.contacts.remove(tL_contact);
            this.contactsDict.remove(Long.valueOf(user.id));
            map.put(user, tL_contact);
        }
        buildContactsSectionsArrays(false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
        Bulletin.SimpleLayout simpleLayout = new Bulletin.SimpleLayout(context, baseFragment.getResourceProvider());
        simpleLayout.setTimer();
        simpleLayout.textView.setText(LocaleController.formatPluralString("ContactsDeletedUndo", map.size(), new Object[0]));
        Bulletin.UndoButton undoButton = new Bulletin.UndoButton(context, true, true, baseFragment.getResourceProvider());
        undoButton.setUndoAction(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteContactsUndoable$53(map);
            }
        });
        undoButton.setDelayedAction(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteContactsUndoable$54(arrayList);
            }
        });
        simpleLayout.setButton(undoButton);
        Bulletin.make(baseFragment, simpleLayout, 5000).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteContactsUndoable$53(HashMap map) {
        for (Map.Entry entry : map.entrySet()) {
            TLRPC.User user = (TLRPC.User) entry.getKey();
            TLRPC.TL_contact tL_contact = (TLRPC.TL_contact) entry.getValue();
            user.contact = true;
            this.contacts.add(tL_contact);
            this.contactsDict.put(Long.valueOf(user.id), tL_contact);
        }
        buildContactsSectionsArrays(true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteContactsUndoable$54(ArrayList arrayList) {
        deleteContact(arrayList, false);
    }

    public void deleteContact(final ArrayList<TLRPC.User> arrayList, final boolean z) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        TLRPC.TL_contacts_deleteContacts tL_contacts_deleteContacts = new TLRPC.TL_contacts_deleteContacts();
        final ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC.User user = arrayList.get(i);
            getMessagesController().getStoriesController().removeContact(user.id);
            TLRPC.InputUser inputUser = getMessagesController().getInputUser(user);
            if (inputUser != null) {
                user.contact = false;
                arrayList2.add(Long.valueOf(user.id));
                tL_contacts_deleteContacts.id.add(inputUser);
            }
        }
        final String str = arrayList.get(0).first_name;
        getConnectionsManager().sendRequest(tL_contacts_deleteContacts, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda35
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$deleteContact$57(arrayList2, arrayList, z, str, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteContact$57(ArrayList arrayList, final ArrayList arrayList2, final boolean z, final String str, TLObject tLObject, TLRPC.TL_error tL_error) {
        int iIndexOf;
        if (tL_error != null) {
            return;
        }
        getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        getMessagesStorage().deleteContacts(arrayList);
        Utilities.phoneBookQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteContact$55(arrayList2);
            }
        });
        for (int i = 0; i < arrayList2.size(); i++) {
            TLRPC.User user = (TLRPC.User) arrayList2.get(i);
            if (!TextUtils.isEmpty(user.phone)) {
                getMessagesStorage().applyPhoneBookUpdates(user.phone, _UrlKt.FRAGMENT_ENCODE_SET);
                Contact contact = this.contactsBookSPhones.get(user.phone);
                if (contact != null && (iIndexOf = contact.shortPhones.indexOf(user.phone)) != -1) {
                    contact.phoneDeleted.set(iIndexOf, 1);
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteContact$56(arrayList2, z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteContact$55(ArrayList arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            deleteContactFromPhoneBook(((TLRPC.User) obj).id);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteContact$56(ArrayList arrayList, boolean z, String str) {
        int size = arrayList.size();
        boolean z2 = false;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.User user = (TLRPC.User) obj;
            TLRPC.TL_contact tL_contact = this.contactsDict.get(Long.valueOf(user.id));
            if (tL_contact != null) {
                this.contacts.remove(tL_contact);
                this.contactsDict.remove(Long.valueOf(user.id));
                z2 = true;
            }
        }
        if (z2) {
            buildContactsSectionsArrays(false);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_NAME));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.contactsDidLoad, new Object[0]);
        if (z) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.formatString("DeletedFromYourContacts", C2573R.string.DeletedFromYourContacts, str));
        }
    }

    private void reloadContactsStatuses() {
        saveContactsLoadTime();
        getMessagesController().clearFullUsers();
        final SharedPreferences.Editor editorEdit = MessagesController.getMainSettings(this.currentAccount).edit();
        editorEdit.putBoolean("needGetStatuses", true).apply();
        getConnectionsManager().sendRequest(new TLRPC.TL_contacts_getStatuses(), new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda57
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$reloadContactsStatuses$59(editorEdit, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reloadContactsStatuses$59(final SharedPreferences.Editor editor, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof Vector) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reloadContactsStatuses$58(editor, tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reloadContactsStatuses$58(SharedPreferences.Editor editor, TLObject tLObject) {
        editor.remove("needGetStatuses").commit();
        Vector vector = (Vector) tLObject;
        if (!vector.objects.isEmpty()) {
            ArrayList<TLRPC.User> arrayList = new ArrayList<>();
            ArrayList<T> arrayList2 = vector.objects;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                TLRPC.TL_user tL_user = new TLRPC.TL_user();
                TLRPC.TL_contactStatus tL_contactStatus = (TLRPC.TL_contactStatus) obj;
                if (tL_contactStatus != null) {
                    TLRPC.UserStatus userStatus = tL_contactStatus.status;
                    if (userStatus instanceof TLRPC.TL_userStatusRecently) {
                        userStatus.expires = userStatus.by_me ? -1000 : -100;
                    } else if (userStatus instanceof TLRPC.TL_userStatusLastWeek) {
                        userStatus.expires = userStatus.by_me ? -1001 : -101;
                    } else if (userStatus instanceof TLRPC.TL_userStatusLastMonth) {
                        userStatus.expires = userStatus.by_me ? -1002 : -102;
                    }
                    TLRPC.User user = getMessagesController().getUser(Long.valueOf(tL_contactStatus.user_id));
                    if (user != null) {
                        user.status = tL_contactStatus.status;
                    }
                    tL_user.status = tL_contactStatus.status;
                    arrayList.add(tL_user);
                }
            }
            getMessagesStorage().updateUsers(arrayList, true, true, true);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_STATUS));
    }

    public void loadGlobalPrivacySetting() {
        if (this.loadingGlobalSettings == 0) {
            this.loadingGlobalSettings = 1;
            getConnectionsManager().sendRequest(new TL_account.getGlobalPrivacySettings(), new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda28
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadGlobalPrivacySetting$61(tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGlobalPrivacySetting$61(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadGlobalPrivacySetting$60(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGlobalPrivacySetting$60(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            this.globalPrivacySettings = (TLRPC.GlobalPrivacySettings) tLObject;
            this.loadingGlobalSettings = 2;
        } else {
            this.loadingGlobalSettings = 0;
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.privacyRulesUpdated, new Object[0]);
    }

    public void loadPrivacySettings() {
        loadPrivacySettings(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadPrivacySettings(boolean z) {
        if (this.loadingDeleteInfo == 0) {
            this.loadingDeleteInfo = 1;
            getConnectionsManager().sendRequest(new TL_account.getAccountTTL(), new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda58
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadPrivacySettings$63(tLObject, tL_error);
                }
            });
        }
        loadGlobalPrivacySetting();
        final int i = 0;
        while (true) {
            int[] iArr = this.loadingPrivacyInfo;
            if (i >= iArr.length) {
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.privacyRulesUpdated, new Object[0]);
                return;
            }
            if (z) {
                if (iArr[i] != 1) {
                    iArr[i] = 1;
                    TL_account.getPrivacy getprivacy = new TL_account.getPrivacy();
                    switch (i) {
                        case 0:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyStatusTimestamp();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 1:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyChatInvite();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 2:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyPhoneCall();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 3:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyPhoneP2P();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 4:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyProfilePhoto();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 5:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyForwards();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 6:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyPhoneNumber();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 7:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyAddedByPhone();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 8:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyVoiceMessages();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 9:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyAbout();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 11:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyBirthday();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 12:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyStarGiftsAutoSave();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 13:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeyNoPaidMessages();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                        case 14:
                            getprivacy.key = new TLRPC.TL_inputPrivacyKeySavedMusic();
                            getConnectionsManager().sendRequest(getprivacy, new RequestDelegate() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda59
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$loadPrivacySettings$65(i, tLObject, tL_error);
                                }
                            });
                            break;
                    }
                }
            } else if (iArr[i] != 0) {
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPrivacySettings$63(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPrivacySettings$62(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPrivacySettings$62(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            this.deleteAccountTTL = ((TLRPC.TL_accountDaysTTL) tLObject).days;
            this.loadingDeleteInfo = 2;
        } else {
            this.loadingDeleteInfo = 0;
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.privacyRulesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPrivacySettings$65(final int i, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ContactsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPrivacySettings$64(tL_error, tLObject, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPrivacySettings$64(TLRPC.TL_error tL_error, TLObject tLObject, int i) {
        if (tL_error == null) {
            TL_account.privacyRules privacyrules = (TL_account.privacyRules) tLObject;
            getMessagesController().putUsers(privacyrules.users, false);
            getMessagesController().putChats(privacyrules.chats, false);
            switch (i) {
                case 0:
                    this.lastseenPrivacyRules = privacyrules.rules;
                    break;
                case 1:
                    this.groupPrivacyRules = privacyrules.rules;
                    break;
                case 2:
                    this.callPrivacyRules = privacyrules.rules;
                    break;
                case 3:
                    this.p2pPrivacyRules = privacyrules.rules;
                    break;
                case 4:
                    this.profilePhotoPrivacyRules = privacyrules.rules;
                    break;
                case 5:
                    this.forwardsPrivacyRules = privacyrules.rules;
                    break;
                case 6:
                    this.phonePrivacyRules = privacyrules.rules;
                    break;
                case 7:
                case 10:
                default:
                    this.addedByPhonePrivacyRules = privacyrules.rules;
                    break;
                case 8:
                    this.voiceMessagesRules = privacyrules.rules;
                    break;
                case 9:
                    this.bioPrivacyRules = privacyrules.rules;
                    break;
                case 11:
                    this.birthdayPrivacyRules = privacyrules.rules;
                    break;
                case 12:
                    this.giftsPrivacyRules = privacyrules.rules;
                    break;
                case 13:
                    this.noPaidMessagesPrivacyRules = privacyrules.rules;
                    break;
                case 14:
                    this.musicPrivacyRules = privacyrules.rules;
                    break;
            }
            this.loadingPrivacyInfo[i] = 2;
        } else {
            this.loadingPrivacyInfo[i] = 0;
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.privacyRulesUpdated, new Object[0]);
    }

    public void setDeleteAccountTTL(int i) {
        this.deleteAccountTTL = i;
    }

    public int getDeleteAccountTTL() {
        return this.deleteAccountTTL;
    }

    public boolean getLoadingDeleteInfo() {
        return this.loadingDeleteInfo != 2;
    }

    public boolean getLoadingGlobalSettings() {
        return this.loadingGlobalSettings != 2;
    }

    public boolean getLoadingPrivacyInfo(int i) {
        return this.loadingPrivacyInfo[i] != 2;
    }

    public TLRPC.GlobalPrivacySettings getGlobalPrivacySettings() {
        return this.globalPrivacySettings;
    }

    public ArrayList<TLRPC.PrivacyRule> getPrivacyRules(int i) {
        switch (i) {
            case 0:
                return this.lastseenPrivacyRules;
            case 1:
                return this.groupPrivacyRules;
            case 2:
                return this.callPrivacyRules;
            case 3:
                return this.p2pPrivacyRules;
            case 4:
                return this.profilePhotoPrivacyRules;
            case 5:
                return this.forwardsPrivacyRules;
            case 6:
                return this.phonePrivacyRules;
            case 7:
                return this.addedByPhonePrivacyRules;
            case 8:
                return this.voiceMessagesRules;
            case 9:
                return this.bioPrivacyRules;
            case 10:
            default:
                return null;
            case 11:
                return this.birthdayPrivacyRules;
            case 12:
                return this.giftsPrivacyRules;
            case 13:
                return this.noPaidMessagesPrivacyRules;
            case 14:
                return this.musicPrivacyRules;
        }
    }

    public void setPrivacyRules(ArrayList<TLRPC.PrivacyRule> arrayList, int i) {
        switch (i) {
            case 0:
                this.lastseenPrivacyRules = arrayList;
                break;
            case 1:
                this.groupPrivacyRules = arrayList;
                break;
            case 2:
                this.callPrivacyRules = arrayList;
                break;
            case 3:
                this.p2pPrivacyRules = arrayList;
                break;
            case 4:
                this.profilePhotoPrivacyRules = arrayList;
                break;
            case 5:
                this.forwardsPrivacyRules = arrayList;
                break;
            case 6:
                this.phonePrivacyRules = arrayList;
                break;
            case 7:
                this.addedByPhonePrivacyRules = arrayList;
                break;
            case 8:
                this.voiceMessagesRules = arrayList;
                break;
            case 9:
                this.bioPrivacyRules = arrayList;
                break;
            case 11:
                this.birthdayPrivacyRules = arrayList;
                break;
            case 12:
                this.giftsPrivacyRules = arrayList;
                break;
            case 13:
                this.noPaidMessagesPrivacyRules = arrayList;
                break;
            case 14:
                this.musicPrivacyRules = arrayList;
                break;
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.privacyRulesUpdated, new Object[0]);
        reloadContactsStatuses();
    }

    public void createOrUpdateConnectionServiceContact(long j, String str, String str2) {
        Cursor cursor;
        int i;
        Cursor cursor2;
        if (hasContactsPermission()) {
            try {
                ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                Uri uriBuild = ContactsContract.Groups.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
                Uri uriBuild2 = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
                Account account = this.systemAccount;
                Cursor cursorQuery = contentResolver.query(uriBuild, new String[]{"_id"}, "title=? AND account_type=? AND account_name=?", new String[]{"TelegramConnectionService", account.type, account.name}, null);
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    i = cursorQuery.getInt(0);
                    cursor = cursorQuery;
                } else {
                    ContentValues contentValues = new ContentValues();
                    cursor = cursorQuery;
                    contentValues.put("account_type", this.systemAccount.type);
                    contentValues.put("account_name", this.systemAccount.name);
                    contentValues.put("group_visible", (Integer) 0);
                    contentValues.put("group_is_read_only", (Integer) 1);
                    contentValues.put("title", "TelegramConnectionService");
                    i = Integer.parseInt(contentResolver.insert(uriBuild, contentValues).getLastPathSegment());
                }
                if (cursor != null) {
                    cursor.close();
                }
                Uri uri = ContactsContract.Data.CONTENT_URI;
                Cursor cursorQuery2 = contentResolver.query(uri, new String[]{"raw_contact_id"}, "mimetype=? AND data1=?", new String[]{"vnd.android.cursor.item/group_membership", i + _UrlKt.FRAGMENT_ENCODE_SET}, null);
                int size = arrayList.size();
                int i2 = i;
                if (cursorQuery2 != null && cursorQuery2.moveToFirst()) {
                    int i3 = cursorQuery2.getInt(0);
                    cursor2 = cursorQuery2;
                    arrayList.add(ContentProviderOperation.newUpdate(uriBuild2).withSelection("_id=?", new String[]{i3 + _UrlKt.FRAGMENT_ENCODE_SET}).withValue("deleted", 0).build());
                    ContentProviderOperation.Builder builderWithSelection = ContentProviderOperation.newUpdate(uri).withSelection("raw_contact_id=? AND mimetype=?", new String[]{i3 + _UrlKt.FRAGMENT_ENCODE_SET, "vnd.android.cursor.item/phone_v2"});
                    StringBuilder sb = new StringBuilder("+99084");
                    sb.append(j);
                    arrayList.add(builderWithSelection.withValue("data1", sb.toString()).build());
                    arrayList.add(ContentProviderOperation.newUpdate(uri).withSelection("raw_contact_id=? AND mimetype=?", new String[]{i3 + _UrlKt.FRAGMENT_ENCODE_SET, "vnd.android.cursor.item/name"}).withValue("data2", str).withValue("data3", str2).build());
                } else {
                    cursor2 = cursorQuery2;
                    arrayList.add(ContentProviderOperation.newInsert(uriBuild2).withValue("account_type", this.systemAccount.type).withValue("account_name", this.systemAccount.name).withValue("raw_contact_is_read_only", 1).withValue("aggregation_mode", 3).build());
                    arrayList.add(ContentProviderOperation.newInsert(uri).withValueBackReference("raw_contact_id", size).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data2", str).withValue("data3", str2).build());
                    arrayList.add(ContentProviderOperation.newInsert(uri).withValueBackReference("raw_contact_id", size).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", "+99084" + j).build());
                    arrayList.add(ContentProviderOperation.newInsert(uri).withValueBackReference("raw_contact_id", size).withValue("mimetype", "vnd.android.cursor.item/group_membership").withValue("data1", Integer.valueOf(i2)).build());
                }
                if (cursor2 != null) {
                    cursor2.close();
                }
                contentResolver.applyBatch("com.android.contacts", arrayList);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
    }

    public void deleteConnectionServiceContact() {
        if (hasContactsPermission()) {
            try {
                ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
                Account account = this.systemAccount;
                Cursor cursorQuery = contentResolver.query(ContactsContract.Groups.CONTENT_URI, new String[]{"_id"}, "title=? AND account_type=? AND account_name=?", new String[]{"TelegramConnectionService", account.type, account.name}, null);
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                int i = cursorQuery.getInt(0);
                cursorQuery.close();
                Cursor cursorQuery2 = contentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "mimetype=? AND data1=?", new String[]{"vnd.android.cursor.item/group_membership", i + _UrlKt.FRAGMENT_ENCODE_SET}, null);
                if (cursorQuery2 == null || !cursorQuery2.moveToFirst()) {
                    if (cursorQuery2 != null) {
                        cursorQuery2.close();
                        return;
                    }
                    return;
                }
                int i2 = cursorQuery2.getInt(0);
                cursorQuery2.close();
                contentResolver.delete(ContactsContract.RawContacts.CONTENT_URI, "_id=?", new String[]{i2 + _UrlKt.FRAGMENT_ENCODE_SET});
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
    }

    public static String formatName(TLObject tLObject) {
        if (tLObject instanceof TLRPC.User) {
            return formatName((TLRPC.User) tLObject);
        }
        if (tLObject instanceof TLRPC.Chat) {
            return ((TLRPC.Chat) tLObject).title;
        }
        return LocaleController.getString(C2573R.string.HiddenName);
    }

    public static String formatName(TLRPC.User user) {
        if (user == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return formatName(user.first_name, user.last_name, 0);
    }

    public static String formatName(String str, String str2) {
        return formatName(str, str2, 0);
    }

    public static String formatName(String str, String str2, int i) {
        if (str != null) {
            str = str.trim();
        }
        if (str != null && str2 == null && i > 0 && str.contains(" ")) {
            int iIndexOf = str.indexOf(" ");
            String strSubstring = str.substring(iIndexOf + 1);
            str = str.substring(0, iIndexOf);
            str2 = strSubstring;
        }
        if (str2 != null) {
            str2 = str2.trim();
        }
        StringBuilder sb = new StringBuilder((str != null ? str.length() : 0) + (str2 != null ? str2.length() : 0) + 1);
        if (LocaleController.nameDisplayOrder == 1) {
            if (str != null && str.length() > 0) {
                if (i > 0 && str.length() > i + 2) {
                    return str.substring(0, i).concat("…");
                }
                sb.append(str);
                if (str2 != null && str2.length() > 0) {
                    sb.append(" ");
                    if (i > 0 && sb.length() + str2.length() > i) {
                        sb.append(str2.charAt(0));
                    } else {
                        sb.append(str2);
                    }
                }
            } else if (str2 != null && str2.length() > 0) {
                if (i > 0 && str2.length() > i + 2) {
                    return str2.substring(0, i).concat("…");
                }
                sb.append(str2);
            }
        } else if (str2 != null && str2.length() > 0) {
            if (i > 0 && str2.length() > i + 2) {
                return str2.substring(0, i).concat("…");
            }
            sb.append(str2);
            if (str != null && str.length() > 0) {
                sb.append(" ");
                if (i > 0 && sb.length() + str.length() > i) {
                    sb.append(str.charAt(0));
                } else {
                    sb.append(str);
                }
            }
        } else if (str != null && str.length() > 0) {
            if (i > 0 && str.length() > i + 2) {
                return str.substring(0, i).concat("…");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public class PhoneBookContact {
        String id;
        String lookup_key;
        String name;
        String phone;

        private PhoneBookContact() {
        }
    }

    public static <T extends TLRPC.PrivacyRule> T findRule(ArrayList<TLRPC.PrivacyRule> arrayList, Class<T> cls) {
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.PrivacyRule privacyRule = arrayList.get(i);
            i++;
            TLRPC.PrivacyRule privacyRule2 = privacyRule;
            if (cls.isInstance(privacyRule2)) {
                return cls.cast(privacyRule2);
            }
        }
        return null;
    }
}
