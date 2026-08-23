package org.telegram.ui.Stories.recorder;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.text.TextUtils;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.core.PillType;
import j$.util.DesugarTimeZone;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.PermissionRequest;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.DarkThemeResourceProvider;
import org.telegram.ui.Stories.recorder.Weather;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Weather {
    private static String cacheKey;
    private static State cacheValue;
    private static boolean requestingLocation;

    static {
        NotificationCenter.getGlobalInstance().addObserver(new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                Weather.m21597$r8$lambda$lwBNB9yWTZ_sQq5Y12nEz3hF4(i, i2, objArr);
            }
        }, NotificationCenter.pillStackSettingsChanged);
    }

    /* JADX INFO: renamed from: $r8$lambda$lwBNB9yWTZ_sQ-q5Y12nEz-3hF4, reason: not valid java name */
    public static /* synthetic */ void m21597$r8$lambda$lwBNB9yWTZ_sQq5Y12nEz3hF4(int i, int i2, Object[] objArr) {
        if (i == NotificationCenter.pillStackSettingsChanged && PillStackConfig.shouldUpdatePill(objArr, PillType.WEATHER.getId())) {
            clearCache();
        }
    }

    public static boolean isDefaultCelsius() {
        String id = TimeZone.getDefault().getID();
        return (id.startsWith("US/") || "America/Nassau".equals(id) || "America/Belize".equals(id) || "America/Cayman".equals(id) || "Pacific/Palau".equals(id)) ? false : true;
    }

    public static class State extends TLObject {
        public String emoji;
        public double lat;
        public double lng;
        public float temperature;

        public String getEmoji() {
            return this.emoji;
        }

        public String getTemperature() {
            return getTemperature(Weather.isDefaultCelsius());
        }

        public String getTemperature(boolean z) {
            float f = this.temperature;
            if (z) {
                return Math.round(f) + "°C";
            }
            return ((int) Math.round(((((double) f) * 9.0d) / 5.0d) + 32.0d)) + "°F";
        }

        public static State TLdeserialize(AbstractSerializedData abstractSerializedData) {
            State state = new State();
            state.lat = abstractSerializedData.readDouble(false);
            state.lng = abstractSerializedData.readDouble(false);
            state.emoji = abstractSerializedData.readString(false);
            state.temperature = abstractSerializedData.readFloat(false);
            return state;
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeDouble(this.lat);
            outputSerializedData.writeDouble(this.lng);
            outputSerializedData.writeString(this.emoji);
            outputSerializedData.writeFloat(this.temperature);
        }
    }

    public static void fetchExtera(Utilities.Callback<State> callback) {
        if (PillStackConfig.getUseCurrentLocation()) {
            if (!isLocationPermissionGranted()) {
                callback.run(null);
                return;
            } else {
                fetch(false, callback);
                return;
            }
        }
        double d = 55.7558d;
        double d2 = 37.6173d;
        if (PillStackConfig.getCustomWeatherLocation() != null) {
            try {
                TLRPC.GeoPoint geoPoint = (TLRPC.GeoPoint) ExteraConfig.getGSON().fromJson(PillStackConfig.getCustomWeatherLocation(), TLRPC.TL_geoPoint.class);
                d = geoPoint.lat;
                d2 = geoPoint._long;
            } catch (Exception unused) {
            }
        }
        fetch(d, d2, callback);
    }

    public static boolean isLocationPermissionGranted() {
        Context context = ApplicationLoader.applicationContext;
        return context.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 || context.checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public static boolean isLocationEnabled() {
        try {
            LocationManager locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
            if (locationManager == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                return locationManager.isLocationEnabled();
            }
            return locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network") || locationManager.isProviderEnabled("passive");
        } catch (Exception e) {
            FileLog.m898e(e);
            return false;
        }
    }

    public static void fetch(final boolean z, final Utilities.Callback<State> callback) {
        if (callback == null) {
            return;
        }
        getUserLocation(z, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                Weather.m21598$r8$lambda$t3ZkHizLhHzQ8gS5sVl0ruSWok(callback, z, (Location) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$t3ZkH-izLhHzQ8gS5sVl0ruSWok, reason: not valid java name */
    public static /* synthetic */ void m21598$r8$lambda$t3ZkHizLhHzQ8gS5sVl0ruSWok(final Utilities.Callback callback, final boolean z, Location location) {
        if (location == null) {
            callback.run(null);
            return;
        }
        Activity activityFindActivity = LaunchActivity.instance;
        if (activityFindActivity == null) {
            activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
        }
        if (activityFindActivity == null || activityFindActivity.isFinishing()) {
            callback.run(null);
            return;
        }
        final AlertDialog alertDialog = z ? new AlertDialog(activityFindActivity, 3, new DarkThemeResourceProvider()) : null;
        if (z) {
            alertDialog.showDelayed(200L);
        }
        final Runnable runnableFetch = fetch(location.getLatitude(), location.getLongitude(), new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda10
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                Weather.$r8$lambda$Fj5il8a0wiK9X50oPwXxScWnjE0(z, alertDialog, callback, (Weather.State) obj);
            }
        });
        if (!z || runnableFetch == null) {
            return;
        }
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                runnableFetch.run();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Fj5il8a0wiK9X50oPwXxScWnjE0(boolean z, AlertDialog alertDialog, Utilities.Callback callback, State state) {
        if (z) {
            alertDialog.dismissUnless(350L);
        }
        callback.run(state);
    }

    public static void clearCache() {
        cacheKey = null;
    }

    public static State getCached() {
        if (cacheValue == null) {
            try {
                String string = PillStackConfig.getPreferences().getString("weatherCacheKey", null);
                String string2 = PillStackConfig.getPreferences().getString("weatherCacheValue", null);
                if (string2 != null) {
                    cacheKey = string;
                    cacheValue = (State) ExteraConfig.getGSON().fromJson(string2, State.class);
                }
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
        return cacheValue;
    }

    private static void saveCache(String str, State state) {
        if (state == null) {
            return;
        }
        try {
            cacheKey = str;
            cacheValue = state;
            String json = ExteraConfig.getGSON().toJson(state);
            PillStackConfig.getEditor().putString("weatherCacheKey", str).apply();
            PillStackConfig.getEditor().putString("weatherCacheValue", json).apply();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public static Runnable fetch(final double d, final double d2, final Utilities.Callback<State> callback) {
        if (callback == null) {
            return null;
        }
        Date date = new Date();
        Calendar calendar = Calendar.getInstance(DesugarTimeZone.getTimeZone("UTC"));
        calendar.setTime(date);
        final String str = Math.round(d * 1000.0d) + ":" + Math.round(1000.0d * d2) + "at" + (((calendar.getTimeInMillis() / 1000) / 60) / 60);
        State cached = getCached();
        if (cached != null && TextUtils.equals(cacheKey, str)) {
            callback.run(cached);
            return null;
        }
        final int[] iArr = new int[1];
        final MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        final ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        String str2 = messagesController.weatherSearchUsername;
        final TLRPC.User[] userArr = {messagesController.getUser(str2)};
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Weather.$r8$lambda$giPJVZXgDvfv1Gjcv1pBtZl327Q(messagesController, userArr, d, d2, iArr, connectionsManager, callback, str);
            }
        };
        if (userArr[0] == null) {
            TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
            tL_contacts_resolveUsername.username = str2;
            iArr[0] = connectionsManager.sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            Weather.$r8$lambda$hk9az5DrJFjlueUS6FNBCLlJ_t4(iArr, tLObject, messagesController, userArr, runnable, callback);
                        }
                    });
                }
            });
        } else {
            runnable.run();
        }
        return new Runnable() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Weather.m21596$r8$lambda$kQEEFmTKZQS0IaXdAEjQLsMnw(iArr, connectionsManager);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$giPJVZXgDvfv1Gjcv1pBtZl327Q(MessagesController messagesController, TLRPC.User[] userArr, final double d, final double d2, final int[] iArr, ConnectionsManager connectionsManager, final Utilities.Callback callback, final String str) {
        TLRPC.TL_messages_getInlineBotResults tL_messages_getInlineBotResults = new TLRPC.TL_messages_getInlineBotResults();
        tL_messages_getInlineBotResults.bot = messagesController.getInputUser(userArr[0]);
        tL_messages_getInlineBotResults.query = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_messages_getInlineBotResults.offset = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_messages_getInlineBotResults.flags |= 1;
        TLRPC.TL_inputGeoPoint tL_inputGeoPoint = new TLRPC.TL_inputGeoPoint();
        tL_messages_getInlineBotResults.geo_point = tL_inputGeoPoint;
        tL_inputGeoPoint.lat = d;
        tL_inputGeoPoint._long = d2;
        tL_messages_getInlineBotResults.peer = new TLRPC.TL_inputPeerEmpty();
        iArr[0] = connectionsManager.sendRequest(tL_messages_getInlineBotResults, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda12
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        Weather.$r8$lambda$pYcAfzKADThXEZeQ0_S7R5cfPv4(iArr, tLObject, callback, d, d, str);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$pYcAfzKADThXEZeQ0_S7R5cfPv4(int[] iArr, TLObject tLObject, Utilities.Callback callback, double d, double d2, String str) {
        iArr[0] = 0;
        if (tLObject instanceof TLRPC.messages_BotResults) {
            TLRPC.messages_BotResults messages_botresults = (TLRPC.messages_BotResults) tLObject;
            if (!messages_botresults.results.isEmpty()) {
                TLRPC.BotInlineResult botInlineResult = messages_botresults.results.get(0);
                String str2 = botInlineResult.title;
                try {
                    float f = Float.parseFloat(botInlineResult.description);
                    State state = new State();
                    state.lat = d;
                    state.lng = d2;
                    state.emoji = str2;
                    state.temperature = f;
                    saveCache(str, state);
                    callback.run(state);
                    return;
                } catch (Exception unused) {
                    callback.run(getCached());
                    return;
                }
            }
        }
        callback.run(getCached());
    }

    public static /* synthetic */ void $r8$lambda$hk9az5DrJFjlueUS6FNBCLlJ_t4(int[] iArr, TLObject tLObject, MessagesController messagesController, TLRPC.User[] userArr, Runnable runnable, Utilities.Callback callback) {
        iArr[0] = 0;
        if (tLObject instanceof TLRPC.TL_contacts_resolvedPeer) {
            TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
            messagesController.putUsers(tL_contacts_resolvedPeer.users, false);
            messagesController.putChats(tL_contacts_resolvedPeer.chats, false);
            TLRPC.User user = messagesController.getUser(Long.valueOf(DialogObject.getPeerDialogId(tL_contacts_resolvedPeer.peer)));
            userArr[0] = user;
            if (user != null) {
                runnable.run();
                return;
            }
        }
        callback.run(getCached());
    }

    /* JADX INFO: renamed from: $r8$lambda$kQ-EEFmTKZQS0Ia-XdAEjQLsMnw, reason: not valid java name */
    public static /* synthetic */ void m21596$r8$lambda$kQEEFmTKZQS0IaXdAEjQLsMnw(int[] iArr, ConnectionsManager connectionsManager) {
        int i = iArr[0];
        if (i != 0) {
            connectionsManager.cancelRequest(i, true);
            iArr[0] = 0;
        }
    }

    @SuppressLint({"MissingPermission"})
    public static void getUserLocation(final boolean z, final Utilities.Callback<Location> callback) {
        if (callback == null) {
            return;
        }
        if (requestingLocation) {
            callback.run(null);
        } else {
            requestingLocation = true;
            PermissionRequest.ensureEitherPermission(C2573R.raw.permission_request_location, C2573R.string.WeatherLocationPermissionNo, new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    Weather.$r8$lambda$fvqkoXIkTbli7Ns6qnkozliUScs(callback, z, (Boolean) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$fvqkoXIkTbli7Ns6qnkozliUScs(Utilities.Callback callback, boolean z, Boolean bool) {
        requestingLocation = false;
        if (!bool.booleanValue()) {
            callback.run(null);
            return;
        }
        final LocationManager locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
        List<String> providers = locationManager.getProviders(true);
        Location lastKnownLocation = null;
        for (int size = providers.size() - 1; size >= 0; size--) {
            lastKnownLocation = locationManager.getLastKnownLocation(providers.get(size));
            if (lastKnownLocation != null) {
                break;
            }
        }
        if (lastKnownLocation == null && z) {
            if (!locationManager.isProviderEnabled("gps")) {
                final Context context = LaunchActivity.instance;
                if (context == null) {
                    context = ApplicationLoader.applicationContext;
                }
                if (context != null) {
                    try {
                        AlertDialog.Builder builder = new AlertDialog.Builder(context);
                        builder.setTopAnimation(C2573R.raw.permission_request_location, 72, false, Theme.getColor(Theme.key_dialogTopBackground));
                        builder.setMessage(LocaleController.getString(C2573R.string.GpsDisabledAlertText));
                        builder.setPositiveButton(LocaleController.getString(C2573R.string.Enable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda6
                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                            public final void onClick(AlertDialog alertDialog, int i) {
                                context.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
                        builder.show();
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                }
            } else {
                try {
                    final Utilities.Callback[] callbackArr = {callback};
                    final LocationListener[] locationListenerArr = {null};
                    final Runnable[] runnableArr = {null};
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            Weather.$r8$lambda$4S3GuGxOiu6SPlKA4XuA0c1MPc8(locationListenerArr, locationManager, runnableArr);
                        }
                    };
                    LocationListener locationListener = new LocationListener() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda8
                        @Override // android.location.LocationListener
                        public final void onLocationChanged(Location location) {
                            Weather.m21595$r8$lambda$My5p7ErkTbKx6HW0WXr0AxDwNU(runnable, callbackArr, location);
                        }
                    };
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.Weather$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            Weather.m21600$r8$lambda$x1itkN7KveLOXacSOqWbhVGf2I(runnable, callbackArr);
                        }
                    };
                    locationListenerArr[0] = locationListener;
                    runnableArr[0] = runnable2;
                    locationManager.requestLocationUpdates("gps", 1000L, 0.0f, locationListener);
                    AndroidUtilities.runOnUIThread(runnable2, 15000L);
                    return;
                } catch (Exception e2) {
                    FileLog.m898e(e2);
                    callback.run(null);
                    return;
                }
            }
        }
        callback.run(lastKnownLocation);
    }

    public static /* synthetic */ void $r8$lambda$4S3GuGxOiu6SPlKA4XuA0c1MPc8(LocationListener[] locationListenerArr, LocationManager locationManager, Runnable[] runnableArr) {
        LocationListener locationListener = locationListenerArr[0];
        if (locationListener != null) {
            locationManager.removeUpdates(locationListener);
            locationListenerArr[0] = null;
        }
        Runnable runnable = runnableArr[0];
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            runnableArr[0] = null;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$My5p7ErkTbKx6-HW0WXr0AxDwNU, reason: not valid java name */
    public static /* synthetic */ void m21595$r8$lambda$My5p7ErkTbKx6HW0WXr0AxDwNU(Runnable runnable, Utilities.Callback[] callbackArr, Location location) {
        runnable.run();
        Utilities.Callback callback = callbackArr[0];
        if (callback != null) {
            callback.run(location);
            callbackArr[0] = null;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$x1i-tkN7KveLOXacSOqWbhVGf2I, reason: not valid java name */
    public static /* synthetic */ void m21600$r8$lambda$x1itkN7KveLOXacSOqWbhVGf2I(Runnable runnable, Utilities.Callback[] callbackArr) {
        runnable.run();
        Utilities.Callback callback = callbackArr[0];
        if (callback != null) {
            callback.run(null);
            callbackArr[0] = null;
        }
    }
}
