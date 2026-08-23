package org.telegram.p029ui.Business;

import android.content.SharedPreferences;
import android.text.TextUtils;
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
import p022j$.time.Instant;
import p022j$.time.ZoneId;
import p022j$.time.format.TextStyle;

/* JADX INFO: loaded from: classes6.dex */
public class TimezonesController {
    private static volatile TimezonesController[] Instance = new TimezonesController[16];
    private static final Object[] lockObjects = new Object[16];
    public final int currentAccount;
    private boolean loaded;
    private boolean loading;
    private final ArrayList timezones = new ArrayList();

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

    public ArrayList getTimezones() {
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
                if (TextUtils.equals(((TLRPC.TL_timezone) this.timezones.get(i)).f1809id, id)) {
                    break;
                }
                i++;
            } else {
                int totalSeconds = zoneIdSystemDefault != null ? zoneIdSystemDefault.getRules().getOffset(Instant.now()).getTotalSeconds() : 0;
                for (int i2 = 0; i2 < this.timezones.size(); i2++) {
                    TLRPC.TL_timezone tL_timezone = (TLRPC.TL_timezone) this.timezones.get(i2);
                    if (totalSeconds == tL_timezone.utc_offset) {
                        return tL_timezone.f1809id;
                    }
                }
                if (!this.timezones.isEmpty()) {
                    return ((TLRPC.TL_timezone) this.timezones.get(0)).f1809id;
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
            TLRPC.TL_timezone tL_timezone = (TLRPC.TL_timezone) this.timezones.get(i);
            if (TextUtils.equals(tL_timezone.f1809id, str)) {
                return tL_timezone;
            }
        }
        return null;
    }

    public String getTimezoneName(TLRPC.TL_timezone tL_timezone, boolean z) {
        if (tL_timezone == null) {
            return null;
        }
        if (z) {
            return tL_timezone.name + ", " + getTimezoneOffsetName(tL_timezone);
        }
        return tL_timezone.name;
    }

    public String getTimezoneOffsetName(TLRPC.TL_timezone tL_timezone) {
        if (tL_timezone.utc_offset == 0) {
            return "GMT";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("GMT");
        sb.append(tL_timezone.utc_offset < 0 ? "-" : "+");
        String string = sb.toString();
        int iAbs = Math.abs(tL_timezone.utc_offset) / 60;
        int i = iAbs / 60;
        int i2 = iAbs % 60;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(string);
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        sb2.append(i < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb2.append(i);
        String str2 = sb2.toString() + ":";
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str2);
        if (i2 < 10) {
            str = MVEL.VERSION_SUB;
        }
        sb3.append(str);
        sb3.append(i2);
        return sb3.toString();
    }

    public String getTimezoneName(String str, boolean z) {
        String str2;
        TLRPC.TL_timezone tL_timezoneFindTimezone = findTimezone(str);
        if (tL_timezoneFindTimezone != null) {
            return getTimezoneName(tL_timezoneFindTimezone, z);
        }
        ZoneId zoneIdM642of = ZoneId.m642of(str);
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (zoneIdM642of == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (z) {
            String displayName = zoneIdM642of.getRules().getOffset(Instant.now()).getDisplayName(TextStyle.FULL, LocaleController.getInstance().getCurrentLocale());
            str2 = "GMT";
            if (displayName.length() != 1 || displayName.charAt(0) != 'Z') {
                str2 = "GMT" + displayName;
            }
        } else {
            str2 = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(zoneIdM642of.getId().replace("/", ", ").replace("_", " "));
        if (str2 != null) {
            str3 = ", " + str2;
        }
        sb.append(str3);
        return sb.toString();
    }
}
