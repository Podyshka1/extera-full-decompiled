package org.telegram.ui.Adapters;

import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseLocationAdapter extends AdapterWithDiffUtils {
    public final boolean biz;
    private int currentRequestNum;
    private BaseLocationAdapterDelegate delegate;
    private long dialogId;
    private String lastFoundQuery;
    private Location lastSearchLocation;
    private String lastSearchQuery;
    protected boolean searchInProgress;
    private Runnable searchRunnable;
    protected boolean searching;
    protected boolean searchingLocations;
    private boolean searchingUser;
    public final boolean stories;
    protected boolean searched = false;
    protected ArrayList<TLRPC.TL_messageMediaVenue> locations = new ArrayList<>();
    protected ArrayList<TLRPC.TL_messageMediaVenue> places = new ArrayList<>();
    private int currentAccount = UserConfig.selectedAccount;

    public interface BaseLocationAdapterDelegate {
        void didLoadSearchResult(ArrayList<TLRPC.TL_messageMediaVenue> arrayList);
    }

    public BaseLocationAdapter(boolean z, boolean z2) {
        this.stories = z;
        this.biz = z2;
    }

    public void destroy() {
        if (this.currentRequestNum != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.currentRequestNum, true);
            this.currentRequestNum = 0;
        }
    }

    public void setDelegate(long j, BaseLocationAdapterDelegate baseLocationAdapterDelegate) {
        this.dialogId = j;
        this.delegate = baseLocationAdapterDelegate;
    }

    public void searchDelayed(final String str, final Location location) {
        if (str == null || str.length() == 0) {
            this.places.clear();
            this.locations.clear();
            this.searchInProgress = false;
            update(true);
            return;
        }
        if (this.searchRunnable != null) {
            Utilities.searchQueue.cancelRunnable(this.searchRunnable);
            this.searchRunnable = null;
        }
        this.searchInProgress = true;
        DispatchQueue dispatchQueue = Utilities.searchQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDelayed$1(str, location);
            }
        };
        this.searchRunnable = runnable;
        dispatchQueue.postRunnable(runnable, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDelayed$1(final String str, final Location location) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDelayed$0(str, location);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDelayed$0(String str, Location location) {
        this.searchRunnable = null;
        this.lastSearchLocation = null;
        searchPlacesWithQuery(str, location, true);
    }

    private void searchBotUser() {
        String str;
        if (this.searchingUser) {
            return;
        }
        this.searchingUser = true;
        TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
        boolean z = this.stories;
        int i = this.currentAccount;
        if (z) {
            str = MessagesController.getInstance(i).storyVenueSearchBot;
        } else {
            str = MessagesController.getInstance(i).venueSearchBot;
        }
        tL_contacts_resolveUsername.username = str;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchBotUser$3(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchBotUser$3(final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchBotUser$2(tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchBotUser$2(TLObject tLObject) {
        TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_resolvedPeer.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(tL_contacts_resolvedPeer.chats, false);
        MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_contacts_resolvedPeer.users, tL_contacts_resolvedPeer.chats, true, true);
        Location location = this.lastSearchLocation;
        this.lastSearchLocation = null;
        searchPlacesWithQuery(this.lastSearchQuery, location, false);
    }

    public boolean isSearching() {
        return this.searchInProgress;
    }

    public String getLastSearchString() {
        return this.lastFoundQuery;
    }

    public void searchPlacesWithQuery(String str, Location location, boolean z) {
        searchPlacesWithQuery(str, location, z, false);
    }

    public void searchPlacesWithQuery(final String str, Location location, boolean z, boolean z2) {
        String str2;
        final BaseLocationAdapter baseLocationAdapter;
        final String str3;
        final Location location2;
        final Locale locale;
        if (location != null || this.stories) {
            Location location3 = this.lastSearchLocation;
            if (location3 == null || location == null || location.distanceTo(location3) >= 200.0f) {
                Locale locale2 = null;
                this.lastSearchLocation = location == null ? null : new Location(location);
                this.lastSearchQuery = str;
                if (this.searching) {
                    this.searching = false;
                    if (this.currentRequestNum != 0) {
                        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.currentRequestNum, true);
                        this.currentRequestNum = 0;
                    }
                }
                getItemCount();
                this.searching = true;
                this.searched = true;
                MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                boolean z3 = this.stories;
                int i = this.currentAccount;
                if (z3) {
                    str2 = MessagesController.getInstance(i).storyVenueSearchBot;
                } else {
                    str2 = MessagesController.getInstance(i).venueSearchBot;
                }
                TLObject userOrChat = messagesController.getUserOrChat(str2);
                if (!(userOrChat instanceof TLRPC.User)) {
                    if (z) {
                        searchBotUser();
                        return;
                    }
                    return;
                }
                TLRPC.User user = (TLRPC.User) userOrChat;
                TLRPC.TL_messages_getInlineBotResults tL_messages_getInlineBotResults = new TLRPC.TL_messages_getInlineBotResults();
                tL_messages_getInlineBotResults.query = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
                tL_messages_getInlineBotResults.bot = MessagesController.getInstance(this.currentAccount).getInputUser(user);
                tL_messages_getInlineBotResults.offset = _UrlKt.FRAGMENT_ENCODE_SET;
                if (location != null) {
                    TLRPC.TL_inputGeoPoint tL_inputGeoPoint = new TLRPC.TL_inputGeoPoint();
                    tL_messages_getInlineBotResults.geo_point = tL_inputGeoPoint;
                    tL_inputGeoPoint.lat = AndroidUtilities.fixLocationCoord(location.getLatitude());
                    tL_messages_getInlineBotResults.geo_point._long = AndroidUtilities.fixLocationCoord(location.getLongitude());
                    tL_messages_getInlineBotResults.flags |= 1;
                }
                if (DialogObject.isEncryptedDialog(this.dialogId)) {
                    tL_messages_getInlineBotResults.peer = new TLRPC.TL_inputPeerEmpty();
                } else {
                    tL_messages_getInlineBotResults.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                }
                if (!TextUtils.isEmpty(str) && (this.stories || this.biz)) {
                    this.searchingLocations = true;
                    final Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
                    if (!this.stories) {
                        locale = locale2;
                        baseLocationAdapter = this;
                        str3 = str;
                        location2 = location;
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$searchPlacesWithQuery$5(currentLocale, str3, locale, location2, str);
                            }
                        });
                    } else if (currentLocale.getLanguage().contains("en")) {
                        locale = currentLocale;
                        baseLocationAdapter = this;
                        str3 = str;
                        location2 = location;
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$searchPlacesWithQuery$5(currentLocale, str3, locale, location2, str);
                            }
                        });
                    } else {
                        locale2 = Locale.US;
                        locale = locale2;
                        baseLocationAdapter = this;
                        str3 = str;
                        location2 = location;
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$searchPlacesWithQuery$5(currentLocale, str3, locale, location2, str);
                            }
                        });
                    }
                } else {
                    baseLocationAdapter = this;
                    str3 = str;
                    location2 = location;
                    baseLocationAdapter.searchingLocations = false;
                }
                if (location2 == null) {
                    return;
                }
                baseLocationAdapter.currentRequestNum = ConnectionsManager.getInstance(baseLocationAdapter.currentAccount).sendRequest(tL_messages_getInlineBotResults, new RequestDelegate() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$searchPlacesWithQuery$7(str3, tLObject, tL_error);
                    }
                });
                baseLocationAdapter.update(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01e2 A[Catch: Exception -> 0x049e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x049e, blocks: (B:3:0x0009, B:7:0x0012, B:9:0x0023, B:11:0x0032, B:12:0x003d, B:14:0x0043, B:16:0x004b, B:18:0x0051, B:20:0x0059, B:22:0x005f, B:25:0x0070, B:27:0x0098, B:30:0x00a0, B:32:0x00aa, B:33:0x00ad, B:37:0x00c1, B:39:0x00cb, B:41:0x00d1, B:42:0x00d4, B:60:0x0113, B:62:0x0119, B:64:0x011f, B:65:0x0122, B:67:0x0127, B:69:0x012d, B:70:0x0130, B:74:0x013a, B:76:0x0144, B:78:0x0154, B:80:0x0160, B:82:0x016c, B:93:0x01ba, B:95:0x01c0, B:96:0x01c3, B:98:0x01cc, B:99:0x01cf, B:101:0x01d9, B:104:0x01e2, B:109:0x01f5, B:111:0x01fb, B:115:0x0229, B:117:0x022f, B:119:0x024b, B:120:0x024d, B:122:0x0255, B:124:0x0259, B:126:0x026c, B:128:0x0273, B:130:0x0279, B:131:0x027d, B:133:0x0283, B:134:0x0287, B:136:0x0296, B:138:0x02a5, B:140:0x02ab, B:142:0x02b7, B:144:0x02bd, B:146:0x02c7, B:148:0x02d5, B:150:0x02dc, B:152:0x02e2, B:154:0x02ec, B:156:0x02fa, B:157:0x02fe, B:159:0x0304, B:161:0x030e, B:163:0x031c, B:164:0x0320, B:166:0x0326, B:168:0x032c, B:170:0x0336, B:172:0x033c, B:173:0x033f, B:175:0x0345, B:178:0x034c, B:180:0x0351, B:185:0x0364, B:187:0x036a, B:191:0x037e, B:196:0x038d, B:198:0x0399, B:200:0x03d0, B:202:0x03e3, B:204:0x03ea, B:206:0x03f0, B:207:0x03f4, B:209:0x03fa, B:210:0x03fe, B:212:0x0408, B:213:0x0412, B:215:0x0418, B:216:0x0422, B:220:0x042f, B:222:0x0435, B:224:0x0441, B:226:0x0478, B:227:0x0485, B:183:0x0360, B:121:0x0252, B:86:0x017d, B:88:0x0191, B:90:0x019b, B:92:0x01b5, B:45:0x00db, B:47:0x00e5, B:49:0x00eb, B:50:0x00ee, B:51:0x00f2, B:53:0x00fc, B:55:0x0102, B:57:0x0108, B:58:0x010b), top: B:236:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x036a A[Catch: Exception -> 0x049e, TryCatch #0 {Exception -> 0x049e, blocks: (B:3:0x0009, B:7:0x0012, B:9:0x0023, B:11:0x0032, B:12:0x003d, B:14:0x0043, B:16:0x004b, B:18:0x0051, B:20:0x0059, B:22:0x005f, B:25:0x0070, B:27:0x0098, B:30:0x00a0, B:32:0x00aa, B:33:0x00ad, B:37:0x00c1, B:39:0x00cb, B:41:0x00d1, B:42:0x00d4, B:60:0x0113, B:62:0x0119, B:64:0x011f, B:65:0x0122, B:67:0x0127, B:69:0x012d, B:70:0x0130, B:74:0x013a, B:76:0x0144, B:78:0x0154, B:80:0x0160, B:82:0x016c, B:93:0x01ba, B:95:0x01c0, B:96:0x01c3, B:98:0x01cc, B:99:0x01cf, B:101:0x01d9, B:104:0x01e2, B:109:0x01f5, B:111:0x01fb, B:115:0x0229, B:117:0x022f, B:119:0x024b, B:120:0x024d, B:122:0x0255, B:124:0x0259, B:126:0x026c, B:128:0x0273, B:130:0x0279, B:131:0x027d, B:133:0x0283, B:134:0x0287, B:136:0x0296, B:138:0x02a5, B:140:0x02ab, B:142:0x02b7, B:144:0x02bd, B:146:0x02c7, B:148:0x02d5, B:150:0x02dc, B:152:0x02e2, B:154:0x02ec, B:156:0x02fa, B:157:0x02fe, B:159:0x0304, B:161:0x030e, B:163:0x031c, B:164:0x0320, B:166:0x0326, B:168:0x032c, B:170:0x0336, B:172:0x033c, B:173:0x033f, B:175:0x0345, B:178:0x034c, B:180:0x0351, B:185:0x0364, B:187:0x036a, B:191:0x037e, B:196:0x038d, B:198:0x0399, B:200:0x03d0, B:202:0x03e3, B:204:0x03ea, B:206:0x03f0, B:207:0x03f4, B:209:0x03fa, B:210:0x03fe, B:212:0x0408, B:213:0x0412, B:215:0x0418, B:216:0x0422, B:220:0x042f, B:222:0x0435, B:224:0x0441, B:226:0x0478, B:227:0x0485, B:183:0x0360, B:121:0x0252, B:86:0x017d, B:88:0x0191, B:90:0x019b, B:92:0x01b5, B:45:0x00db, B:47:0x00e5, B:49:0x00eb, B:50:0x00ee, B:51:0x00f2, B:53:0x00fc, B:55:0x0102, B:57:0x0108, B:58:0x010b), top: B:236:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x037e A[Catch: Exception -> 0x049e, TryCatch #0 {Exception -> 0x049e, blocks: (B:3:0x0009, B:7:0x0012, B:9:0x0023, B:11:0x0032, B:12:0x003d, B:14:0x0043, B:16:0x004b, B:18:0x0051, B:20:0x0059, B:22:0x005f, B:25:0x0070, B:27:0x0098, B:30:0x00a0, B:32:0x00aa, B:33:0x00ad, B:37:0x00c1, B:39:0x00cb, B:41:0x00d1, B:42:0x00d4, B:60:0x0113, B:62:0x0119, B:64:0x011f, B:65:0x0122, B:67:0x0127, B:69:0x012d, B:70:0x0130, B:74:0x013a, B:76:0x0144, B:78:0x0154, B:80:0x0160, B:82:0x016c, B:93:0x01ba, B:95:0x01c0, B:96:0x01c3, B:98:0x01cc, B:99:0x01cf, B:101:0x01d9, B:104:0x01e2, B:109:0x01f5, B:111:0x01fb, B:115:0x0229, B:117:0x022f, B:119:0x024b, B:120:0x024d, B:122:0x0255, B:124:0x0259, B:126:0x026c, B:128:0x0273, B:130:0x0279, B:131:0x027d, B:133:0x0283, B:134:0x0287, B:136:0x0296, B:138:0x02a5, B:140:0x02ab, B:142:0x02b7, B:144:0x02bd, B:146:0x02c7, B:148:0x02d5, B:150:0x02dc, B:152:0x02e2, B:154:0x02ec, B:156:0x02fa, B:157:0x02fe, B:159:0x0304, B:161:0x030e, B:163:0x031c, B:164:0x0320, B:166:0x0326, B:168:0x032c, B:170:0x0336, B:172:0x033c, B:173:0x033f, B:175:0x0345, B:178:0x034c, B:180:0x0351, B:185:0x0364, B:187:0x036a, B:191:0x037e, B:196:0x038d, B:198:0x0399, B:200:0x03d0, B:202:0x03e3, B:204:0x03ea, B:206:0x03f0, B:207:0x03f4, B:209:0x03fa, B:210:0x03fe, B:212:0x0408, B:213:0x0412, B:215:0x0418, B:216:0x0422, B:220:0x042f, B:222:0x0435, B:224:0x0441, B:226:0x0478, B:227:0x0485, B:183:0x0360, B:121:0x0252, B:86:0x017d, B:88:0x0191, B:90:0x019b, B:92:0x01b5, B:45:0x00db, B:47:0x00e5, B:49:0x00eb, B:50:0x00ee, B:51:0x00f2, B:53:0x00fc, B:55:0x0102, B:57:0x0108, B:58:0x010b), top: B:236:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0119 A[Catch: Exception -> 0x049e, TryCatch #0 {Exception -> 0x049e, blocks: (B:3:0x0009, B:7:0x0012, B:9:0x0023, B:11:0x0032, B:12:0x003d, B:14:0x0043, B:16:0x004b, B:18:0x0051, B:20:0x0059, B:22:0x005f, B:25:0x0070, B:27:0x0098, B:30:0x00a0, B:32:0x00aa, B:33:0x00ad, B:37:0x00c1, B:39:0x00cb, B:41:0x00d1, B:42:0x00d4, B:60:0x0113, B:62:0x0119, B:64:0x011f, B:65:0x0122, B:67:0x0127, B:69:0x012d, B:70:0x0130, B:74:0x013a, B:76:0x0144, B:78:0x0154, B:80:0x0160, B:82:0x016c, B:93:0x01ba, B:95:0x01c0, B:96:0x01c3, B:98:0x01cc, B:99:0x01cf, B:101:0x01d9, B:104:0x01e2, B:109:0x01f5, B:111:0x01fb, B:115:0x0229, B:117:0x022f, B:119:0x024b, B:120:0x024d, B:122:0x0255, B:124:0x0259, B:126:0x026c, B:128:0x0273, B:130:0x0279, B:131:0x027d, B:133:0x0283, B:134:0x0287, B:136:0x0296, B:138:0x02a5, B:140:0x02ab, B:142:0x02b7, B:144:0x02bd, B:146:0x02c7, B:148:0x02d5, B:150:0x02dc, B:152:0x02e2, B:154:0x02ec, B:156:0x02fa, B:157:0x02fe, B:159:0x0304, B:161:0x030e, B:163:0x031c, B:164:0x0320, B:166:0x0326, B:168:0x032c, B:170:0x0336, B:172:0x033c, B:173:0x033f, B:175:0x0345, B:178:0x034c, B:180:0x0351, B:185:0x0364, B:187:0x036a, B:191:0x037e, B:196:0x038d, B:198:0x0399, B:200:0x03d0, B:202:0x03e3, B:204:0x03ea, B:206:0x03f0, B:207:0x03f4, B:209:0x03fa, B:210:0x03fe, B:212:0x0408, B:213:0x0412, B:215:0x0418, B:216:0x0422, B:220:0x042f, B:222:0x0435, B:224:0x0441, B:226:0x0478, B:227:0x0485, B:183:0x0360, B:121:0x0252, B:86:0x017d, B:88:0x0191, B:90:0x019b, B:92:0x01b5, B:45:0x00db, B:47:0x00e5, B:49:0x00eb, B:50:0x00ee, B:51:0x00f2, B:53:0x00fc, B:55:0x0102, B:57:0x0108, B:58:0x010b), top: B:236:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0144 A[Catch: Exception -> 0x049e, TryCatch #0 {Exception -> 0x049e, blocks: (B:3:0x0009, B:7:0x0012, B:9:0x0023, B:11:0x0032, B:12:0x003d, B:14:0x0043, B:16:0x004b, B:18:0x0051, B:20:0x0059, B:22:0x005f, B:25:0x0070, B:27:0x0098, B:30:0x00a0, B:32:0x00aa, B:33:0x00ad, B:37:0x00c1, B:39:0x00cb, B:41:0x00d1, B:42:0x00d4, B:60:0x0113, B:62:0x0119, B:64:0x011f, B:65:0x0122, B:67:0x0127, B:69:0x012d, B:70:0x0130, B:74:0x013a, B:76:0x0144, B:78:0x0154, B:80:0x0160, B:82:0x016c, B:93:0x01ba, B:95:0x01c0, B:96:0x01c3, B:98:0x01cc, B:99:0x01cf, B:101:0x01d9, B:104:0x01e2, B:109:0x01f5, B:111:0x01fb, B:115:0x0229, B:117:0x022f, B:119:0x024b, B:120:0x024d, B:122:0x0255, B:124:0x0259, B:126:0x026c, B:128:0x0273, B:130:0x0279, B:131:0x027d, B:133:0x0283, B:134:0x0287, B:136:0x0296, B:138:0x02a5, B:140:0x02ab, B:142:0x02b7, B:144:0x02bd, B:146:0x02c7, B:148:0x02d5, B:150:0x02dc, B:152:0x02e2, B:154:0x02ec, B:156:0x02fa, B:157:0x02fe, B:159:0x0304, B:161:0x030e, B:163:0x031c, B:164:0x0320, B:166:0x0326, B:168:0x032c, B:170:0x0336, B:172:0x033c, B:173:0x033f, B:175:0x0345, B:178:0x034c, B:180:0x0351, B:185:0x0364, B:187:0x036a, B:191:0x037e, B:196:0x038d, B:198:0x0399, B:200:0x03d0, B:202:0x03e3, B:204:0x03ea, B:206:0x03f0, B:207:0x03f4, B:209:0x03fa, B:210:0x03fe, B:212:0x0408, B:213:0x0412, B:215:0x0418, B:216:0x0422, B:220:0x042f, B:222:0x0435, B:224:0x0441, B:226:0x0478, B:227:0x0485, B:183:0x0360, B:121:0x0252, B:86:0x017d, B:88:0x0191, B:90:0x019b, B:92:0x01b5, B:45:0x00db, B:47:0x00e5, B:49:0x00eb, B:50:0x00ee, B:51:0x00f2, B:53:0x00fc, B:55:0x0102, B:57:0x0108, B:58:0x010b), top: B:236:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$searchPlacesWithQuery$5(Locale locale, String str, Locale locale2, final Location location, final String str2) {
        List<Address> list;
        List<Address> list2;
        HashSet hashSet;
        int i;
        HashSet hashSet2;
        boolean z;
        boolean z2;
        String countryName;
        StringBuilder sb;
        HashSet hashSet3;
        boolean z3;
        StringBuilder sb2;
        boolean z4;
        String str3;
        int i2;
        BaseLocationAdapter baseLocationAdapter = this;
        final ArrayList arrayList = new ArrayList();
        try {
            int i3 = baseLocationAdapter.biz ? 10 : 5;
            List<Address> fromLocationName = new Geocoder(ApplicationLoader.applicationContext, locale).getFromLocationName(str, 5);
            List<Address> fromLocationName2 = baseLocationAdapter.stories ? new Geocoder(ApplicationLoader.applicationContext, locale2).getFromLocationName(str, 5) : null;
            HashSet hashSet4 = new HashSet();
            HashSet hashSet5 = new HashSet();
            int i4 = 0;
            while (i4 < fromLocationName.size()) {
                Address address = fromLocationName.get(i4);
                Address address2 = (fromLocationName2 == null || i4 >= fromLocationName2.size()) ? null : fromLocationName2.get(i4);
                if (address.hasLatitude() && address.hasLongitude()) {
                    double latitude = address.getLatitude();
                    double longitude = address.getLongitude();
                    StringBuilder sb3 = new StringBuilder();
                    list = fromLocationName2;
                    StringBuilder sb4 = new StringBuilder();
                    list2 = fromLocationName;
                    StringBuilder sb5 = new StringBuilder();
                    String locality = address.getLocality();
                    if (TextUtils.isEmpty(locality)) {
                        locality = address.getAdminArea();
                    }
                    String str4 = locality;
                    if (address2 != null && TextUtils.isEmpty(address2.getLocality())) {
                        address2.getAdminArea();
                    }
                    i = i4;
                    String thoroughfare = address.getThoroughfare();
                    Address address3 = address2;
                    if (TextUtils.isEmpty(thoroughfare)) {
                        hashSet2 = hashSet4;
                    } else {
                        hashSet2 = hashSet4;
                        if (!TextUtils.equals(thoroughfare, address.getAdminArea())) {
                            if (sb5.length() > 0) {
                                sb5.append(", ");
                            }
                            sb5.append(thoroughfare);
                        }
                        z = false;
                        if (TextUtils.isEmpty(str4)) {
                            z2 = true;
                        } else {
                            if (sb4.length() > 0) {
                                sb4.append(", ");
                            }
                            sb4.append(str4);
                            if (sb5 != null) {
                                if (sb5.length() > 0) {
                                    sb5.append(", ");
                                }
                                sb5.append(str4);
                            }
                            z2 = false;
                        }
                        boolean z5 = z;
                        countryName = address.getCountryName();
                        if (TextUtils.isEmpty(countryName)) {
                            sb = sb5;
                            hashSet3 = hashSet5;
                            z3 = z2;
                        } else {
                            sb = sb5;
                            z3 = z2;
                            if ("US".equals(address.getCountryCode()) || "AE".equals(address.getCountryCode()) || ("GB".equals(address.getCountryCode()) && "en".equals(locale.getLanguage()))) {
                                String[] strArrSplit = countryName.split(" ");
                                int length = strArrSplit.length;
                                str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                                hashSet3 = hashSet5;
                                int i5 = 0;
                                while (i5 < length) {
                                    int i6 = length;
                                    String str5 = strArrSplit[i5];
                                    if (str5.length() > 0) {
                                        i2 = i5;
                                        str3 = str3 + str5.charAt(0);
                                    } else {
                                        i2 = i5;
                                    }
                                    i5 = i2 + 1;
                                    length = i6;
                                }
                            } else {
                                str3 = countryName;
                                hashSet3 = hashSet5;
                            }
                            if (sb4.length() > 0) {
                                sb4.append(", ");
                            }
                            sb4.append(str3);
                            if (sb3.length() > 0) {
                                sb3.append(", ");
                            }
                            sb3.append(countryName);
                        }
                        if (baseLocationAdapter.biz) {
                            StringBuilder sb6 = new StringBuilder();
                            try {
                                String addressLine = address.getAddressLine(0);
                                if (!TextUtils.isEmpty(addressLine)) {
                                    sb6.append(addressLine);
                                }
                            } catch (Exception unused) {
                            }
                            if (sb6.length() > 0) {
                                TLRPC.TL_messageMediaVenue tL_messageMediaVenue = new TLRPC.TL_messageMediaVenue();
                                TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
                                tL_messageMediaVenue.geo = tL_geoPoint;
                                tL_geoPoint.lat = latitude;
                                tL_geoPoint._long = longitude;
                                tL_messageMediaVenue.query_id = -1L;
                                tL_messageMediaVenue.title = sb6.toString();
                                tL_messageMediaVenue.icon = "pin";
                                tL_messageMediaVenue.address = LocaleController.getString(C2665R.string.PassportAddress);
                                arrayList.add(tL_messageMediaVenue);
                            }
                            hashSet4 = hashSet2;
                            hashSet = hashSet3;
                        } else {
                            if (sb == null || sb.length() <= 0) {
                                sb2 = sb4;
                            } else {
                                TLRPC.TL_messageMediaVenue tL_messageMediaVenue2 = new TLRPC.TL_messageMediaVenue();
                                TLRPC.TL_geoPoint tL_geoPoint2 = new TLRPC.TL_geoPoint();
                                tL_messageMediaVenue2.geo = tL_geoPoint2;
                                tL_geoPoint2.lat = latitude;
                                tL_geoPoint2._long = longitude;
                                tL_messageMediaVenue2.query_id = -1L;
                                tL_messageMediaVenue2.title = sb.toString();
                                tL_messageMediaVenue2.icon = "pin";
                                tL_messageMediaVenue2.address = LocaleController.getString(z5 ? C2665R.string.PassportCity : C2665R.string.PassportStreet1);
                                if (address3 != null) {
                                    TL_stories.TL_geoPointAddress tL_geoPointAddress = new TL_stories.TL_geoPointAddress();
                                    tL_messageMediaVenue2.geoAddress = tL_geoPointAddress;
                                    tL_geoPointAddress.country_iso2 = address3.getCountryCode();
                                    String locality2 = TextUtils.isEmpty(null) ? address3.getLocality() : null;
                                    if (TextUtils.isEmpty(locality2)) {
                                        locality2 = address3.getAdminArea();
                                    }
                                    if (TextUtils.isEmpty(locality2)) {
                                        locality2 = address3.getSubAdminArea();
                                    }
                                    String adminArea = address3.getAdminArea();
                                    StringBuilder sb7 = new StringBuilder();
                                    if (TextUtils.isEmpty(adminArea)) {
                                        sb2 = sb4;
                                    } else {
                                        TL_stories.TL_geoPointAddress tL_geoPointAddress2 = tL_messageMediaVenue2.geoAddress;
                                        tL_geoPointAddress2.state = adminArea;
                                        sb2 = sb4;
                                        tL_geoPointAddress2.flags |= 1;
                                    }
                                    if (!TextUtils.isEmpty(locality2)) {
                                        TL_stories.TL_geoPointAddress tL_geoPointAddress3 = tL_messageMediaVenue2.geoAddress;
                                        tL_geoPointAddress3.city = locality2;
                                        tL_geoPointAddress3.flags |= 2;
                                    }
                                    if (!z5) {
                                        String thoroughfare2 = (!TextUtils.isEmpty(null) || TextUtils.equals(address3.getThoroughfare(), str4) || TextUtils.equals(address3.getThoroughfare(), address3.getCountryName())) ? null : address3.getThoroughfare();
                                        if (TextUtils.isEmpty(thoroughfare2) && !TextUtils.equals(address3.getSubLocality(), str4) && !TextUtils.equals(address3.getSubLocality(), address3.getCountryName())) {
                                            thoroughfare2 = address3.getSubLocality();
                                        }
                                        if (TextUtils.isEmpty(thoroughfare2) && !TextUtils.equals(address3.getLocality(), str4) && !TextUtils.equals(address3.getLocality(), address3.getCountryName())) {
                                            thoroughfare2 = address3.getLocality();
                                        }
                                        if (TextUtils.isEmpty(thoroughfare2) || TextUtils.equals(thoroughfare2, adminArea) || TextUtils.equals(thoroughfare2, address3.getCountryName())) {
                                            sb7 = null;
                                        } else {
                                            if (sb7.length() > 0) {
                                                sb7.append(", ");
                                            }
                                            sb7.append(thoroughfare2);
                                        }
                                        if (!TextUtils.isEmpty(sb7)) {
                                            int i7 = 0;
                                            while (true) {
                                                String[] strArr = LocationController.unnamedRoads;
                                                if (i7 >= strArr.length) {
                                                    break;
                                                }
                                                if (strArr[i7].equalsIgnoreCase(sb7.toString())) {
                                                    z4 = true;
                                                    break;
                                                }
                                                i7++;
                                            }
                                            if (!TextUtils.isEmpty(sb7)) {
                                                TL_stories.TL_geoPointAddress tL_geoPointAddress4 = tL_messageMediaVenue2.geoAddress;
                                                tL_geoPointAddress4.flags |= 4;
                                                tL_geoPointAddress4.street = sb7.toString();
                                            }
                                        }
                                        z4 = false;
                                        if (!TextUtils.isEmpty(sb7)) {
                                        }
                                    }
                                    if (!z4) {
                                        arrayList.add(tL_messageMediaVenue2);
                                        if (arrayList.size() >= i3) {
                                            break;
                                        }
                                    }
                                } else {
                                    sb2 = sb4;
                                }
                                z4 = false;
                                if (!z4) {
                                }
                            }
                            if (z3) {
                                hashSet = hashSet3;
                            } else {
                                hashSet = hashSet3;
                                if (!hashSet.contains(sb2.toString())) {
                                    TLRPC.TL_messageMediaVenue tL_messageMediaVenue3 = new TLRPC.TL_messageMediaVenue();
                                    TLRPC.TL_geoPoint tL_geoPoint3 = new TLRPC.TL_geoPoint();
                                    tL_messageMediaVenue3.geo = tL_geoPoint3;
                                    tL_geoPoint3.lat = latitude;
                                    tL_geoPoint3._long = longitude;
                                    tL_messageMediaVenue3.query_id = -1L;
                                    tL_messageMediaVenue3.title = sb2.toString();
                                    tL_messageMediaVenue3.icon = "https://ss3.4sqi.net/img/categories_v2/travel/hotel_64.png";
                                    tL_messageMediaVenue3.emoji = LocationController.countryCodeToEmoji(address.getCountryCode());
                                    hashSet.add(tL_messageMediaVenue3.title);
                                    tL_messageMediaVenue3.address = LocaleController.getString(C2665R.string.PassportCity);
                                    if (address3 != null) {
                                        TL_stories.TL_geoPointAddress tL_geoPointAddress5 = new TL_stories.TL_geoPointAddress();
                                        tL_messageMediaVenue3.geoAddress = tL_geoPointAddress5;
                                        tL_geoPointAddress5.country_iso2 = address3.getCountryCode();
                                        String locality3 = TextUtils.isEmpty(null) ? address3.getLocality() : null;
                                        if (TextUtils.isEmpty(locality3)) {
                                            locality3 = address3.getAdminArea();
                                        }
                                        if (TextUtils.isEmpty(locality3)) {
                                            locality3 = address3.getSubAdminArea();
                                        }
                                        String adminArea2 = address3.getAdminArea();
                                        if (!TextUtils.isEmpty(adminArea2)) {
                                            TL_stories.TL_geoPointAddress tL_geoPointAddress6 = tL_messageMediaVenue3.geoAddress;
                                            tL_geoPointAddress6.state = adminArea2;
                                            tL_geoPointAddress6.flags |= 1;
                                        }
                                        if (!TextUtils.isEmpty(locality3)) {
                                            TL_stories.TL_geoPointAddress tL_geoPointAddress7 = tL_messageMediaVenue3.geoAddress;
                                            tL_geoPointAddress7.city = locality3;
                                            tL_geoPointAddress7.flags |= 2;
                                        }
                                    }
                                    arrayList.add(tL_messageMediaVenue3);
                                    if (arrayList.size() >= i3) {
                                        break;
                                    }
                                }
                            }
                            if (sb3.length() > 0) {
                                hashSet4 = hashSet2;
                                if (hashSet4.contains(sb3.toString())) {
                                    continue;
                                } else {
                                    TLRPC.TL_messageMediaVenue tL_messageMediaVenue4 = new TLRPC.TL_messageMediaVenue();
                                    TLRPC.TL_geoPoint tL_geoPoint4 = new TLRPC.TL_geoPoint();
                                    tL_messageMediaVenue4.geo = tL_geoPoint4;
                                    tL_geoPoint4.lat = latitude;
                                    tL_geoPoint4._long = longitude;
                                    tL_messageMediaVenue4.query_id = -1L;
                                    tL_messageMediaVenue4.title = sb3.toString();
                                    tL_messageMediaVenue4.icon = "https://ss3.4sqi.net/img/categories_v2/building/government_capitolbuilding_64.png";
                                    tL_messageMediaVenue4.emoji = LocationController.countryCodeToEmoji(address.getCountryCode());
                                    hashSet4.add(tL_messageMediaVenue4.title);
                                    tL_messageMediaVenue4.address = LocaleController.getString(C2665R.string.Country);
                                    if (address3 != null) {
                                        TL_stories.TL_geoPointAddress tL_geoPointAddress8 = new TL_stories.TL_geoPointAddress();
                                        tL_messageMediaVenue4.geoAddress = tL_geoPointAddress8;
                                        tL_geoPointAddress8.country_iso2 = address3.getCountryCode();
                                    }
                                    arrayList.add(tL_messageMediaVenue4);
                                    if (arrayList.size() >= i3) {
                                        break;
                                    }
                                }
                            } else {
                                hashSet4 = hashSet2;
                            }
                        }
                    }
                    String subLocality = address.getSubLocality();
                    if (!TextUtils.isEmpty(subLocality)) {
                        if (sb5.length() > 0) {
                            sb5.append(", ");
                        }
                        sb5.append(subLocality);
                    } else {
                        String locality4 = address.getLocality();
                        if (!TextUtils.isEmpty(locality4) && !TextUtils.equals(locality4, str4)) {
                            if (sb5.length() > 0) {
                                sb5.append(", ");
                            }
                            sb5.append(locality4);
                        } else {
                            sb5 = null;
                            z = true;
                            if (TextUtils.isEmpty(str4)) {
                            }
                            boolean z52 = z;
                            countryName = address.getCountryName();
                            if (TextUtils.isEmpty(countryName)) {
                            }
                            if (baseLocationAdapter.biz) {
                            }
                        }
                    }
                    z = false;
                    if (TextUtils.isEmpty(str4)) {
                    }
                    boolean z522 = z;
                    countryName = address.getCountryName();
                    if (TextUtils.isEmpty(countryName)) {
                    }
                    if (baseLocationAdapter.biz) {
                    }
                } else {
                    list = fromLocationName2;
                    list2 = fromLocationName;
                    hashSet = hashSet5;
                    i = i4;
                }
                i4 = i + 1;
                baseLocationAdapter = this;
                hashSet5 = hashSet;
                fromLocationName2 = list;
                fromLocationName = list2;
            }
        } catch (Exception unused2) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchPlacesWithQuery$4(location, str2, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchPlacesWithQuery$4(Location location, String str, ArrayList arrayList) {
        this.searchingLocations = false;
        if (location == null) {
            this.currentRequestNum = 0;
            this.searching = false;
            this.places.clear();
            this.searchInProgress = false;
            this.lastFoundQuery = str;
        }
        this.locations.clear();
        this.locations.addAll(arrayList);
        update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchPlacesWithQuery$7(final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchPlacesWithQuery$6(tL_error, str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchPlacesWithQuery$6(TLRPC.TL_error tL_error, String str, TLObject tLObject) {
        if (tL_error == null) {
            this.currentRequestNum = 0;
            this.searching = false;
            this.places.clear();
            this.searchInProgress = false;
            this.lastFoundQuery = str;
            TLRPC.messages_BotResults messages_botresults = (TLRPC.messages_BotResults) tLObject;
            int size = messages_botresults.results.size();
            for (int i = 0; i < size; i++) {
                TLRPC.BotInlineResult botInlineResult = messages_botresults.results.get(i);
                if ("venue".equals(botInlineResult.type)) {
                    TLRPC.BotInlineMessage botInlineMessage = botInlineResult.send_message;
                    if (botInlineMessage instanceof TLRPC.TL_botInlineMessageMediaVenue) {
                        TLRPC.TL_botInlineMessageMediaVenue tL_botInlineMessageMediaVenue = (TLRPC.TL_botInlineMessageMediaVenue) botInlineMessage;
                        TLRPC.TL_messageMediaVenue tL_messageMediaVenue = new TLRPC.TL_messageMediaVenue();
                        tL_messageMediaVenue.geo = tL_botInlineMessageMediaVenue.geo;
                        tL_messageMediaVenue.address = tL_botInlineMessageMediaVenue.address;
                        tL_messageMediaVenue.title = tL_botInlineMessageMediaVenue.title;
                        tL_messageMediaVenue.icon = "https://ss3.4sqi.net/img/categories_v2/" + tL_botInlineMessageMediaVenue.venue_type + "_64.png";
                        tL_messageMediaVenue.venue_type = tL_botInlineMessageMediaVenue.venue_type;
                        tL_messageMediaVenue.venue_id = tL_botInlineMessageMediaVenue.venue_id;
                        tL_messageMediaVenue.provider = tL_botInlineMessageMediaVenue.provider;
                        tL_messageMediaVenue.query_id = messages_botresults.query_id;
                        tL_messageMediaVenue.result_id = botInlineResult.id;
                        this.places.add(tL_messageMediaVenue);
                    }
                }
            }
        }
        BaseLocationAdapterDelegate baseLocationAdapterDelegate = this.delegate;
        if (baseLocationAdapterDelegate != null) {
            baseLocationAdapterDelegate.didLoadSearchResult(this.places);
        }
        update(true);
    }

    public void update(boolean z) {
        notifyDataSetChanged();
    }
}
