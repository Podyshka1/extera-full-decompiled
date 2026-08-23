package org.telegram.ui.Business;

import android.content.SharedPreferences;
import android.text.TextUtils;
import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.format.TextStyle;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class TimezonesController {
    private static volatile TimezonesController[] Instance = new TimezonesController[16];
    private static final Object[] lockObjects = new Object[16];
    public final int currentAccount;
    private boolean loaded;
    private boolean loading;
    private final ArrayList<TLRPC.TL_timezone> timezones = new ArrayList<>();

    static {
        for (int i = 0; i < 16; i++) {
            lockObjects[i] = new Object();
        }
    }

    public static TimezonesController getInstance(int i) {
        TimezonesController timezonesController;
        TimezonesController timezonesController2 = Instance[i];
        if (timezonesController2 != null) {
            return timezonesController2;
        }
        synchronized (lockObjects[i]) {
            try {
                timezonesController = Instance[i];
                if (timezonesController == null) {
                    TimezonesController[] timezonesControllerArr = Instance;
                    TimezonesController timezonesController3 = new TimezonesController(i);
                    timezonesControllerArr[i] = timezonesController3;
                    timezonesController = timezonesController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return timezonesController;
    }

    private TimezonesController(int i) {
        this.currentAccount = i;
    }

    public ArrayList<TLRPC.TL_timezone> getTimezones() {
        load();
        return this.timezones;
    }

    public void load() {
        if (this.loading || this.loaded) {
            return;
        }
        this.loading = true;
        final SharedPreferences mainSettings = MessagesController.getInstance(this.currentAccount).getMainSettings();
        TLRPC.help_timezonesList help_timezoneslistTLdeserialize = null;
        String string = mainSettings.getString("timezones", null);
        if (string != null) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
            help_timezoneslistTLdeserialize = TLRPC.help_timezonesList.TLdeserialize(serializedData, serializedData.readInt32(false), false);
        }
        this.timezones.clear();
        if (help_timezoneslistTLdeserialize != null) {
            this.timezones.addAll(help_timezoneslistTLdeserialize.timezones);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.timezonesUpdated, new Object[0]);
        TLRPC.TL_help_getTimezonesList tL_help_getTimezonesList = new TLRPC.TL_help_getTimezonesList();
        tL_help_getTimezonesList.hash = help_timezoneslistTLdeserialize != null ? help_timezoneslistTLdeserialize.hash : 0;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_help_getTimezonesList, new RequestDelegate() { // from class: org.telegram.ui.Business.TimezonesController$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$load$1(mainSettings, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$1(final SharedPreferences sharedPreferences, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.TimezonesController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$0(tLObject, sharedPreferences);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(TLObject tLObject, SharedPreferences sharedPreferences) {
        if (tLObject instanceof TLRPC.TL_help_timezonesList) {
            this.timezones.clear();
            this.timezones.addAll(((TLRPC.TL_help_timezonesList) tLObject).timezones);
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            sharedPreferences.edit().putString("timezones", Utilities.bytesToHex(serializedData.toByteArray())).apply();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.timezonesUpdated, new Object[0]);
        }
        this.loaded = true;
        this.loading = false;
    }

    public String getSystemTimezoneId() {
        ZoneId zoneIdSystemDefault = ZoneId.systemDefault();
        String id = zoneIdSystemDefault != null ? zoneIdSystemDefault.getId() : null;
        if (this.loading || !this.loaded) {
            load();
            return id;
        }
        int i = 0;
        while (true) {
            if (i < this.timezones.size()) {
                if (TextUtils.equals(this.timezones.get(i).id, id)) {
                    break;
                }
                i++;
            } else {
                int totalSeconds = zoneIdSystemDefault != null ? zoneIdSystemDefault.getRules().getOffset(Instant.now()).getTotalSeconds() : 0;
                int i2 = 0;
                while (true) {
                    int size = this.timezones.size();
                    ArrayList<TLRPC.TL_timezone> arrayList = this.timezones;
                    if (i2 < size) {
                        TLRPC.TL_timezone tL_timezone = arrayList.get(i2);
                        if (totalSeconds == tL_timezone.utc_offset) {
                            return tL_timezone.id;
                        }
                        i2++;
                    } else if (!arrayList.isEmpty()) {
                        return this.timezones.get(0).id;
                    }
                }
            }
        }
        return id;
    }

    public TLRPC.TL_timezone findTimezone(String str) {
        if (str == null) {
            return null;
        }
        load();
        for (int i = 0; i < this.timezones.size(); i++) {
            TLRPC.TL_timezone tL_timezone = this.timezones.get(i);
            if (TextUtils.equals(tL_timezone.id, str)) {
                return tL_timezone;
            }
        }
        return null;
    }

    public String getTimezoneName(TLRPC.TL_timezone tL_timezone, boolean z) {
        if (tL_timezone == null) {
            return null;
        }
        String str = tL_timezone.name;
        if (!z) {
            return str;
        }
        return str + ", " + getTimezoneOffsetName(tL_timezone);
    }

    public String getTimezoneOffsetName(TLRPC.TL_timezone tL_timezone) {
        int i = tL_timezone.utc_offset;
        if (i == 0) {
            return "GMT";
        }
        String strConcat = "GMT".concat(i < 0 ? "-" : "+");
        int iAbs = Math.abs(tL_timezone.utc_offset) / 60;
        int i2 = iAbs / 60;
        int i3 = iAbs % 60;
        StringBuilder sb = new StringBuilder();
        sb.append(strConcat);
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        sb.append(i2 < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append(i2);
        String strConcat2 = sb.toString().concat(":");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strConcat2);
        if (i3 < 10) {
            str = MVEL.VERSION_SUB;
        }
        sb2.append(str);
        sb2.append(i3);
        return sb2.toString();
    }

    public String getTimezoneName(String str, boolean z) {
        String strConcat;
        TLRPC.TL_timezone tL_timezoneFindTimezone = findTimezone(str);
        if (tL_timezoneFindTimezone != null) {
            return getTimezoneName(tL_timezoneFindTimezone, z);
        }
        ZoneId zoneIdOf = ZoneId.of(str);
        String strConcat2 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (zoneIdOf == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (z) {
            String displayName = zoneIdOf.getRules().getOffset(Instant.now()).getDisplayName(TextStyle.FULL, LocaleController.getInstance().getCurrentLocale());
            strConcat = "GMT";
            if (displayName.length() != 1 || displayName.charAt(0) != 'Z') {
                strConcat = "GMT".concat(displayName);
            }
        } else {
            strConcat = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(zoneIdOf.getId().replace("/", ", ").replace("_", " "));
        if (strConcat != null) {
            strConcat2 = ", ".concat(strConcat);
        }
        sb.append(strConcat2);
        return sb.toString();
    }
}
