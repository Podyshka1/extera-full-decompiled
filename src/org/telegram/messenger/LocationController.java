package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.collection.LongSparseArray;
import androidx.core.util.Consumer;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.ILocationServiceProvider;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.Components.PermissionRequest;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"MissingPermission"})
public class LocationController extends BaseController implements NotificationCenter.NotificationCenterDelegate, ILocationServiceProvider.IAPIConnectionCallbacks, ILocationServiceProvider.IAPIOnConnectionFailedListener {
    private static final int BACKGROUD_UPDATE_TIME = 30000;
    private static final long FASTEST_INTERVAL = 1000;
    private static final int FOREGROUND_UPDATE_TIME = 20000;
    private static final int LOCATION_ACQUIRE_TIME = 10000;
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    private static final int SEND_NEW_LOCATION_TIME = 2000;
    public static final int TYPE_BIZ = 1;
    public static final int TYPE_STORY = 2;
    private static final long UPDATE_INTERVAL = 1000;
    private static final int WATCH_LOCATION_TIMEOUT = 65000;
    private ILocationServiceProvider.IMapApiClient apiClient;
    private LongSparseArray<Boolean> cacheRequests;
    private FusedLocationListener fusedLocationListener;
    private GpsLocationListener gpsLocationListener;
    private Location lastKnownLocation;
    private boolean lastLocationByMaps;
    private long lastLocationSendTime;
    private long lastLocationStartTime;
    private LongSparseArray<Integer> lastReadLocationTime;
    private long locationEndWatchTime;
    private LocationManager locationManager;
    private ILocationServiceProvider.ILocationRequest locationRequest;
    private boolean locationSentSinceLastMapUpdate;
    public LongSparseArray<ArrayList<TLRPC.Message>> locationsCache;
    private GpsLocationListener networkLocationListener;
    private GpsLocationListener passiveLocationListener;
    private SparseIntArray requests;
    private Boolean servicesAvailable;
    private ArrayList<SharingLocationInfo> sharingLocations;
    private LongSparseArray<SharingLocationInfo> sharingLocationsMap;
    private LongSparseArray<SharingLocationInfo> sharingLocationsMapUI;
    public ArrayList<SharingLocationInfo> sharingLocationsUI;
    private boolean started;
    private boolean wasConnectedToPlayServices;
    private static volatile LocationController[] Instance = new LocationController[16];
    public static String[] unnamedRoads = {"Unnamed Road", "Вulicya bez nazvi", "Нeizvestnaya doroga", "İsimsiz Yol", "Ceļš bez nosaukuma", "Kelias be pavadinimo", "Droga bez nazwy", "Cesta bez názvu", "Silnice bez názvu", "Drum fără nume", "Route sans nom", "Vía sin nombre", "Estrada sem nome", "Οdos xoris onomasia", "Rrugë pa emër", "Пat bez ime", "Нeimenovani put", "Strada senza nome", "Straße ohne Straßennamen"};
    private static HashMap<LocationFetchCallback, Runnable> callbacks = new HashMap<>();

    /* JADX INFO: loaded from: classes5.dex */
    public interface LocationFetchCallback {
        void onLocationAddressAvailable(String str, String str2, TLRPC.TL_messageMediaVenue tL_messageMediaVenue, TLRPC.TL_messageMediaVenue tL_messageMediaVenue2, Location location);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class SharingLocationInfo {
        public int account;
        public long did;
        public int lastSentProximityMeters;
        public MessageObject messageObject;
        public int mid;
        public int period;
        public int proximityMeters;
        public int stopTime;
    }

    @Override // org.telegram.messenger.ILocationServiceProvider.IAPIConnectionCallbacks
    public void onConnectionSuspended(int i) {
    }

    public static LocationController getInstance(int i) {
        LocationController locationController;
        LocationController locationController2 = Instance[i];
        if (locationController2 != null) {
            return locationController2;
        }
        synchronized (LocationController.class) {
            try {
                locationController = Instance[i];
                if (locationController == null) {
                    LocationController[] locationControllerArr = Instance;
                    LocationController locationController3 = new LocationController(i);
                    locationControllerArr[i] = locationController3;
                    locationController = locationController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return locationController;
    }

    public class GpsLocationListener implements LocationListener {
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        private GpsLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location == null) {
                return;
            }
            if (LocationController.this.lastKnownLocation != null && (this == LocationController.this.networkLocationListener || this == LocationController.this.passiveLocationListener)) {
                if (LocationController.this.started || location.distanceTo(LocationController.this.lastKnownLocation) <= 20.0f) {
                    return;
                }
                LocationController.this.setLastKnownLocation(location);
                LocationController.this.lastLocationSendTime = SystemClock.elapsedRealtime() - 25000;
                return;
            }
            LocationController.this.setLastKnownLocation(location);
        }
    }

    public class FusedLocationListener implements ILocationServiceProvider.ILocationListener {
        private FusedLocationListener() {
        }

        @Override // org.telegram.messenger.ILocationServiceProvider.ILocationListener
        public void onLocationChanged(Location location) {
            if (location == null) {
                return;
            }
            LocationController.this.setLastKnownLocation(location);
        }
    }

    public LocationController(int i) {
        super(i);
        this.sharingLocationsMap = new LongSparseArray<>();
        this.sharingLocations = new ArrayList<>();
        this.locationsCache = new LongSparseArray<>();
        this.lastReadLocationTime = new LongSparseArray<>();
        this.gpsLocationListener = new GpsLocationListener();
        this.networkLocationListener = new GpsLocationListener();
        this.passiveLocationListener = new GpsLocationListener();
        this.fusedLocationListener = new FusedLocationListener();
        this.locationSentSinceLastMapUpdate = true;
        this.requests = new SparseIntArray();
        this.cacheRequests = new LongSparseArray<>();
        this.sharingLocationsUI = new ArrayList<>();
        this.sharingLocationsMapUI = new LongSparseArray<>();
        this.locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
        this.apiClient = ApplicationLoader.getLocationServiceProvider().onCreateLocationServicesAPI(ApplicationLoader.applicationContext, this, this);
        ILocationServiceProvider.ILocationRequest iLocationRequestOnCreateLocationRequest = ApplicationLoader.getLocationServiceProvider().onCreateLocationRequest();
        this.locationRequest = iLocationRequestOnCreateLocationRequest;
        iLocationRequestOnCreateLocationRequest.setPriority(0);
        this.locationRequest.setInterval(1000L);
        this.locationRequest.setFastestInterval(1000L);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        loadSharingLocations();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        LocationController locationController = getAccountInstance().getLocationController();
        getNotificationCenter().addObserver(locationController, NotificationCenter.didReceiveNewMessages);
        getNotificationCenter().addObserver(locationController, NotificationCenter.messagesDeleted);
        getNotificationCenter().addObserver(locationController, NotificationCenter.replaceMessagesObjects);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ArrayList<TLRPC.Message> arrayList;
        ArrayList<TLRPC.Message> arrayList2;
        if (i == NotificationCenter.didReceiveNewMessages) {
            if (((Boolean) objArr[2]).booleanValue()) {
                return;
            }
            Long l = (Long) objArr[0];
            long jLongValue = l.longValue();
            if (isSharingLocation(jLongValue) && (arrayList2 = this.locationsCache.get(jLongValue)) != null) {
                ArrayList arrayList3 = (ArrayList) objArr[1];
                boolean z = false;
                for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                    MessageObject messageObject = (MessageObject) arrayList3.get(i3);
                    if (messageObject.isLiveLocation()) {
                        int i4 = 0;
                        while (true) {
                            if (i4 >= arrayList2.size()) {
                                arrayList2.add(messageObject.messageOwner);
                                break;
                            } else {
                                if (MessageObject.getFromChatId(arrayList2.get(i4)) == messageObject.getFromChatId()) {
                                    arrayList2.set(i4, messageObject.messageOwner);
                                    break;
                                }
                                i4++;
                            }
                        }
                        z = true;
                    } else if (messageObject.messageOwner.action instanceof TLRPC.TL_messageActionGeoProximityReached) {
                        long dialogId = messageObject.getDialogId();
                        if (DialogObject.isUserDialog(dialogId)) {
                            setProximityLocation(dialogId, 0, false);
                        }
                    }
                }
                if (z) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsCacheChanged, l, Integer.valueOf(this.currentAccount));
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagesDeleted) {
            if (((Boolean) objArr[2]).booleanValue() || this.sharingLocationsUI.isEmpty()) {
                return;
            }
            ArrayList arrayList4 = (ArrayList) objArr[0];
            long jLongValue2 = ((Long) objArr[1]).longValue();
            ArrayList arrayList5 = null;
            for (int i5 = 0; i5 < this.sharingLocationsUI.size(); i5++) {
                SharingLocationInfo sharingLocationInfo = this.sharingLocationsUI.get(i5);
                MessageObject messageObject2 = sharingLocationInfo.messageObject;
                if (jLongValue2 == (messageObject2 != null ? messageObject2.getChannelId() : 0L) && arrayList4.contains(Integer.valueOf(sharingLocationInfo.mid))) {
                    if (arrayList5 == null) {
                        arrayList5 = new ArrayList();
                    }
                    arrayList5.add(Long.valueOf(sharingLocationInfo.did));
                }
            }
            if (arrayList5 != null) {
                for (int i6 = 0; i6 < arrayList5.size(); i6++) {
                    removeSharingLocation(((Long) arrayList5.get(i6)).longValue());
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.replaceMessagesObjects) {
            Long l2 = (Long) objArr[0];
            long jLongValue3 = l2.longValue();
            if (isSharingLocation(jLongValue3) && (arrayList = this.locationsCache.get(jLongValue3)) != null) {
                ArrayList arrayList6 = (ArrayList) objArr[1];
                boolean z2 = false;
                for (int i7 = 0; i7 < arrayList6.size(); i7++) {
                    MessageObject messageObject3 = (MessageObject) arrayList6.get(i7);
                    int i8 = 0;
                    while (true) {
                        if (i8 >= arrayList.size()) {
                            break;
                        }
                        if (MessageObject.getFromChatId(arrayList.get(i8)) == messageObject3.getFromChatId()) {
                            if (!messageObject3.isLiveLocation()) {
                                arrayList.remove(i8);
                            } else {
                                arrayList.set(i8, messageObject3.messageOwner);
                            }
                            z2 = true;
                        } else {
                            i8++;
                        }
                    }
                }
                if (z2) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsCacheChanged, l2, Integer.valueOf(this.currentAccount));
                }
            }
        }
    }

    @Override // org.telegram.messenger.ILocationServiceProvider.IAPIConnectionCallbacks
    public void onConnected(Bundle bundle) {
        this.wasConnectedToPlayServices = true;
        try {
            ApplicationLoader.getLocationServiceProvider().checkLocationSettings(this.locationRequest, new Consumer() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda5
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onConnected$4((Integer) obj);
                }
            });
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$4(final Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            startFusedLocationRequest(true);
        } else if (iIntValue == 1) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConnected$2(num);
                }
            });
        } else {
            if (iIntValue != 2) {
                return;
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConnected$3();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$2(final Integer num) {
        if (this.sharingLocations.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onConnected$1(num);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$1(Integer num) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowPlayServicesAlert, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnected$3() {
        this.servicesAvailable = Boolean.FALSE;
        try {
            this.apiClient.disconnect();
            start();
        } catch (Throwable unused) {
        }
    }

    public void startFusedLocationRequest(final boolean z) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startFusedLocationRequest$5(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startFusedLocationRequest$5(boolean z) {
        if (!z) {
            this.servicesAvailable = Boolean.FALSE;
        }
        if (this.sharingLocations.isEmpty()) {
            return;
        }
        if (z) {
            try {
                ApplicationLoader.getLocationServiceProvider().getLastLocation(new Consumer() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda7
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.setLastKnownLocation((Location) obj);
                    }
                });
                ApplicationLoader.getLocationServiceProvider().requestLocationUpdates(this.locationRequest, this.fusedLocationListener);
                return;
            } catch (Throwable th) {
                FileLog.m992e(th);
                return;
            }
        }
        start();
    }

    @Override // org.telegram.messenger.ILocationServiceProvider.IAPIOnConnectionFailedListener
    public void onConnectionFailed() {
        if (this.wasConnectedToPlayServices) {
            return;
        }
        this.servicesAvailable = Boolean.FALSE;
        if (this.started) {
            this.started = false;
            start();
        }
    }

    private boolean checkServices() {
        if (this.servicesAvailable == null) {
            this.servicesAvailable = Boolean.valueOf(ApplicationLoader.getLocationServiceProvider().checkServices());
        }
        return this.servicesAvailable.booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void broadcastLastKnownLocation(boolean z) {
        TLRPC.GeoPoint geoPoint;
        if (this.lastKnownLocation == null) {
            return;
        }
        if (this.requests.size() != 0) {
            if (z) {
                for (int i = 0; i < this.requests.size(); i++) {
                    getConnectionsManager().cancelRequest(this.requests.keyAt(i), false);
                }
            }
            this.requests.clear();
        }
        if (!this.sharingLocations.isEmpty()) {
            int currentTime = getConnectionsManager().getCurrentTime();
            float[] fArr = new float[1];
            for (int i2 = 0; i2 < this.sharingLocations.size(); i2++) {
                final SharingLocationInfo sharingLocationInfo = this.sharingLocations.get(i2);
                TLRPC.Message message = sharingLocationInfo.messageObject.messageOwner;
                TLRPC.MessageMedia messageMedia = message.media;
                if (messageMedia != null && (geoPoint = messageMedia.geo) != null && sharingLocationInfo.lastSentProximityMeters == sharingLocationInfo.proximityMeters) {
                    int i3 = message.edit_date;
                    if (i3 == 0) {
                        i3 = message.date;
                    }
                    if (Math.abs(currentTime - i3) < 10) {
                        Location.distanceBetween(geoPoint.lat, geoPoint._long, this.lastKnownLocation.getLatitude(), this.lastKnownLocation.getLongitude(), fArr);
                        if (fArr[0] < 1.0f) {
                        }
                    }
                } else {
                    final TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
                    tL_messages_editMessage.peer = getMessagesController().getInputPeer(sharingLocationInfo.did);
                    tL_messages_editMessage.id = sharingLocationInfo.mid;
                    tL_messages_editMessage.flags |= 16384;
                    TLRPC.TL_inputMediaGeoLive tL_inputMediaGeoLive = new TLRPC.TL_inputMediaGeoLive();
                    tL_messages_editMessage.media = tL_inputMediaGeoLive;
                    tL_inputMediaGeoLive.stopped = false;
                    tL_inputMediaGeoLive.geo_point = new TLRPC.TL_inputGeoPoint();
                    tL_messages_editMessage.media.geo_point.lat = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLatitude());
                    tL_messages_editMessage.media.geo_point._long = AndroidUtilities.fixLocationCoord(this.lastKnownLocation.getLongitude());
                    tL_messages_editMessage.media.geo_point.accuracy_radius = (int) this.lastKnownLocation.getAccuracy();
                    TLRPC.InputMedia inputMedia = tL_messages_editMessage.media;
                    TLRPC.InputGeoPoint inputGeoPoint = inputMedia.geo_point;
                    if (inputGeoPoint.accuracy_radius != 0) {
                        inputGeoPoint.flags |= 1;
                    }
                    int i4 = sharingLocationInfo.lastSentProximityMeters;
                    int i5 = sharingLocationInfo.proximityMeters;
                    if (i4 != i5) {
                        inputMedia.proximity_notification_radius = i5;
                        inputMedia.flags |= 8;
                    }
                    inputMedia.heading = getHeading(this.lastKnownLocation);
                    tL_messages_editMessage.media.flags |= 4;
                    int iSendRequest = getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda22
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$broadcastLastKnownLocation$7(sharingLocationInfo, iArr, tL_messages_editMessage, tLObject, tL_error);
                        }
                    });
                    final int[] iArr = {iSendRequest};
                    this.requests.put(iSendRequest, 0);
                }
            }
        }
        getConnectionsManager().resumeNetworkMaybe();
        if (shouldStopGps()) {
            stop(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastLastKnownLocation$7(final SharingLocationInfo sharingLocationInfo, int[] iArr, TLRPC.TL_messages_editMessage tL_messages_editMessage, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            if (tL_error.text.equals("MESSAGE_ID_INVALID")) {
                this.sharingLocations.remove(sharingLocationInfo);
                this.sharingLocationsMap.remove(sharingLocationInfo.did);
                saveSharingLocation(sharingLocationInfo, 1);
                this.requests.delete(iArr[0]);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$broadcastLastKnownLocation$6(sharingLocationInfo);
                    }
                });
                return;
            }
            return;
        }
        if ((tL_messages_editMessage.flags & 8) != 0) {
            sharingLocationInfo.lastSentProximityMeters = tL_messages_editMessage.media.proximity_notification_radius;
        }
        TLRPC.Updates updates = (TLRPC.Updates) tLObject;
        boolean z = false;
        for (int i = 0; i < updates.updates.size(); i++) {
            TLRPC.Update update = updates.updates.get(i);
            if (update instanceof TL_update.TL_updateEditMessage) {
                sharingLocationInfo.messageObject.messageOwner = ((TL_update.TL_updateEditMessage) update).message;
            } else if (update instanceof TL_update.TL_updateEditChannelMessage) {
                sharingLocationInfo.messageObject.messageOwner = ((TL_update.TL_updateEditChannelMessage) update).message;
            }
            z = true;
        }
        if (z) {
            saveSharingLocation(sharingLocationInfo, 0);
        }
        getMessagesController().processUpdates(updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastLastKnownLocation$6(SharingLocationInfo sharingLocationInfo) {
        this.sharingLocationsUI.remove(sharingLocationInfo);
        this.sharingLocationsMapUI.remove(sharingLocationInfo.did);
        if (this.sharingLocationsUI.isEmpty()) {
            stopService();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    private boolean shouldStopGps() {
        return SystemClock.elapsedRealtime() > this.locationEndWatchTime;
    }

    public void setNewLocationEndWatchTime() {
        if (this.sharingLocations.isEmpty()) {
            return;
        }
        this.locationEndWatchTime = SystemClock.elapsedRealtime() + 65000;
        start();
    }

    public void update() {
        getUserConfig();
        if (!this.sharingLocations.isEmpty()) {
            int i = 0;
            while (i < this.sharingLocations.size()) {
                final SharingLocationInfo sharingLocationInfo = this.sharingLocations.get(i);
                if (sharingLocationInfo.stopTime <= getConnectionsManager().getCurrentTime()) {
                    this.sharingLocations.remove(i);
                    this.sharingLocationsMap.remove(sharingLocationInfo.did);
                    saveSharingLocation(sharingLocationInfo, 1);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$update$8(sharingLocationInfo);
                        }
                    });
                    i--;
                }
                i++;
            }
        }
        if (this.started) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.lastLocationByMaps || Math.abs(this.lastLocationStartTime - jElapsedRealtime) > NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS || shouldSendLocationNow()) {
                this.lastLocationByMaps = false;
                this.locationSentSinceLastMapUpdate = true;
                boolean z = SystemClock.elapsedRealtime() - this.lastLocationSendTime > 2000;
                this.lastLocationStartTime = jElapsedRealtime;
                this.lastLocationSendTime = SystemClock.elapsedRealtime();
                broadcastLastKnownLocation(z);
                return;
            }
            return;
        }
        if (this.sharingLocations.isEmpty() || Math.abs(this.lastLocationSendTime - SystemClock.elapsedRealtime()) <= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
            return;
        }
        this.lastLocationStartTime = SystemClock.elapsedRealtime();
        start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$8(SharingLocationInfo sharingLocationInfo) {
        this.sharingLocationsUI.remove(sharingLocationInfo);
        this.sharingLocationsMapUI.remove(sharingLocationInfo.did);
        if (this.sharingLocationsUI.isEmpty()) {
            stopService();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    private boolean shouldSendLocationNow() {
        return shouldStopGps() && Math.abs(this.lastLocationSendTime - SystemClock.elapsedRealtime()) >= 2000;
    }

    public void cleanup() {
        this.sharingLocationsUI.clear();
        this.sharingLocationsMapUI.clear();
        this.locationsCache.clear();
        this.cacheRequests.clear();
        this.lastReadLocationTime.clear();
        stopService();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanup$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$9() {
        this.locationEndWatchTime = 0L;
        this.requests.clear();
        this.sharingLocationsMap.clear();
        this.sharingLocations.clear();
        setLastKnownLocation(null);
        stop(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLastKnownLocation(Location location) {
        if (location == null || (SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos()) / 1000000000 <= 300) {
            this.lastKnownLocation = location;
            if (location != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newLocationAvailable, new Object[0]);
                    }
                });
            }
        }
    }

    public void addSharingLocation(TLRPC.Message message) {
        final SharingLocationInfo sharingLocationInfo = new SharingLocationInfo();
        sharingLocationInfo.did = message.dialog_id;
        sharingLocationInfo.mid = message.id;
        TLRPC.MessageMedia messageMedia = message.media;
        sharingLocationInfo.period = messageMedia.period;
        int i = messageMedia.proximity_notification_radius;
        sharingLocationInfo.proximityMeters = i;
        sharingLocationInfo.lastSentProximityMeters = i;
        sharingLocationInfo.account = this.currentAccount;
        sharingLocationInfo.messageObject = new MessageObject(this.currentAccount, message, false, false);
        if (sharingLocationInfo.period == Integer.MAX_VALUE) {
            sharingLocationInfo.stopTime = Integer.MAX_VALUE;
        } else {
            sharingLocationInfo.stopTime = getConnectionsManager().getCurrentTime() + sharingLocationInfo.period;
        }
        final SharingLocationInfo sharingLocationInfo2 = this.sharingLocationsMap.get(sharingLocationInfo.did);
        this.sharingLocationsMap.put(sharingLocationInfo.did, sharingLocationInfo);
        if (sharingLocationInfo2 != null) {
            this.sharingLocations.remove(sharingLocationInfo2);
        }
        this.sharingLocations.add(sharingLocationInfo);
        saveSharingLocation(sharingLocationInfo, 0);
        this.lastLocationSendTime = SystemClock.elapsedRealtime() - 25000;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addSharingLocation$11(sharingLocationInfo2, sharingLocationInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSharingLocation$11(SharingLocationInfo sharingLocationInfo, SharingLocationInfo sharingLocationInfo2) {
        if (sharingLocationInfo != null) {
            this.sharingLocationsUI.remove(sharingLocationInfo);
        }
        this.sharingLocationsUI.add(sharingLocationInfo2);
        this.sharingLocationsMapUI.put(sharingLocationInfo2.did, sharingLocationInfo2);
        startService();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    public boolean isSharingLocation(long j) {
        return this.sharingLocationsMapUI.indexOfKey(j) >= 0;
    }

    public SharingLocationInfo getSharingLocationInfo(long j) {
        return this.sharingLocationsMapUI.get(j);
    }

    public boolean setProximityLocation(final long j, final int i, boolean z) {
        SharingLocationInfo sharingLocationInfo = this.sharingLocationsMapUI.get(j);
        if (sharingLocationInfo != null) {
            sharingLocationInfo.proximityMeters = i;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setProximityLocation$12(i, j);
            }
        });
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setProximityLocation$13();
                }
            });
        }
        return sharingLocationInfo != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProximityLocation$12(int i, long j) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("UPDATE sharing_locations SET proximity = ? WHERE uid = ?");
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindInteger(1, i);
            sQLitePreparedStatementExecuteFast.bindLong(2, j);
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProximityLocation$13() {
        broadcastLastKnownLocation(true);
    }

    public static int getHeading(Location location) {
        float bearing = location.getBearing();
        return (bearing <= 0.0f || bearing >= 1.0f) ? (int) bearing : bearing < 0.5f ? 360 : 1;
    }

    private void loadSharingLocations() {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$17();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$17() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList<TLRPC.User> arrayList2 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList3 = new ArrayList<>();
        try {
            ArrayList<Long> arrayList4 = new ArrayList<>();
            ArrayList arrayList5 = new ArrayList();
            SQLiteCursor sQLiteCursorQueryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT uid, mid, date, period, message, proximity FROM sharing_locations WHERE 1", new Object[0]);
            while (sQLiteCursorQueryFinalized.next()) {
                SharingLocationInfo sharingLocationInfo = new SharingLocationInfo();
                sharingLocationInfo.did = sQLiteCursorQueryFinalized.longValue(0);
                sharingLocationInfo.mid = sQLiteCursorQueryFinalized.intValue(1);
                sharingLocationInfo.stopTime = sQLiteCursorQueryFinalized.intValue(2);
                sharingLocationInfo.period = sQLiteCursorQueryFinalized.intValue(3);
                sharingLocationInfo.proximityMeters = sQLiteCursorQueryFinalized.intValue(5);
                sharingLocationInfo.account = this.currentAccount;
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(4);
                if (nativeByteBufferByteBufferValue != null) {
                    MessageObject messageObject = new MessageObject(this.currentAccount, TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false), false, false);
                    sharingLocationInfo.messageObject = messageObject;
                    MessagesStorage.addUsersAndChatsFromMessage(messageObject.messageOwner, arrayList4, arrayList5, null);
                    nativeByteBufferByteBufferValue.reuse();
                }
                arrayList.add(sharingLocationInfo);
                boolean zIsChatDialog = DialogObject.isChatDialog(sharingLocationInfo.did);
                long j = sharingLocationInfo.did;
                if (zIsChatDialog) {
                    if (!arrayList5.contains(Long.valueOf(-j))) {
                        arrayList5.add(Long.valueOf(-sharingLocationInfo.did));
                    }
                } else if (DialogObject.isUserDialog(j) && !arrayList4.contains(Long.valueOf(sharingLocationInfo.did))) {
                    arrayList4.add(Long.valueOf(sharingLocationInfo.did));
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            if (!arrayList5.isEmpty()) {
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList5), arrayList3);
            }
            getMessagesStorage().getUsersInternal(arrayList4, arrayList2);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$16(arrayList2, arrayList3, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$16(ArrayList arrayList, ArrayList arrayList2, final ArrayList arrayList3) {
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$15(arrayList3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$15(final ArrayList arrayList) {
        this.sharingLocations.addAll(arrayList);
        for (int i = 0; i < this.sharingLocations.size(); i++) {
            SharingLocationInfo sharingLocationInfo = this.sharingLocations.get(i);
            this.sharingLocationsMap.put(sharingLocationInfo.did, sharingLocationInfo);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSharingLocations$14(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSharingLocations$14(ArrayList arrayList) {
        this.sharingLocationsUI.addAll(arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            SharingLocationInfo sharingLocationInfo = (SharingLocationInfo) arrayList.get(i);
            this.sharingLocationsMapUI.put(sharingLocationInfo.did, sharingLocationInfo);
        }
        startService();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    private void saveSharingLocation(final SharingLocationInfo sharingLocationInfo, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveSharingLocation$18(i, sharingLocationInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveSharingLocation$18(int i, SharingLocationInfo sharingLocationInfo) {
        try {
            if (i == 2) {
                getMessagesStorage().getDatabase().executeFast("DELETE FROM sharing_locations WHERE 1").stepThis().dispose();
                return;
            }
            if (i == 1) {
                if (sharingLocationInfo == null) {
                    return;
                }
                getMessagesStorage().getDatabase().executeFast("DELETE FROM sharing_locations WHERE uid = " + sharingLocationInfo.did).stepThis().dispose();
                return;
            }
            if (sharingLocationInfo == null) {
                return;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO sharing_locations VALUES(?, ?, ?, ?, ?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(sharingLocationInfo.messageObject.messageOwner.getObjectSize());
            sharingLocationInfo.messageObject.messageOwner.serializeToStream(nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindLong(1, sharingLocationInfo.did);
            sQLitePreparedStatementExecuteFast.bindInteger(2, sharingLocationInfo.mid);
            sQLitePreparedStatementExecuteFast.bindInteger(3, sharingLocationInfo.stopTime);
            sQLitePreparedStatementExecuteFast.bindInteger(4, sharingLocationInfo.period);
            sQLitePreparedStatementExecuteFast.bindByteBuffer(5, nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindInteger(6, sharingLocationInfo.proximityMeters);
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
            nativeByteBuffer.reuse();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    public void removeSharingLocation(final long j) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeSharingLocation$21(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeSharingLocation$21(long j) {
        final SharingLocationInfo sharingLocationInfo = this.sharingLocationsMap.get(j);
        this.sharingLocationsMap.remove(j);
        if (sharingLocationInfo != null) {
            TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
            tL_messages_editMessage.peer = getMessagesController().getInputPeer(sharingLocationInfo.did);
            tL_messages_editMessage.id = sharingLocationInfo.mid;
            tL_messages_editMessage.flags |= 16384;
            TLRPC.TL_inputMediaGeoLive tL_inputMediaGeoLive = new TLRPC.TL_inputMediaGeoLive();
            tL_messages_editMessage.media = tL_inputMediaGeoLive;
            tL_inputMediaGeoLive.stopped = true;
            tL_inputMediaGeoLive.geo_point = new TLRPC.TL_inputGeoPointEmpty();
            getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda15
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$removeSharingLocation$19(tLObject, tL_error);
                }
            });
            this.sharingLocations.remove(sharingLocationInfo);
            saveSharingLocation(sharingLocationInfo, 1);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeSharingLocation$20(sharingLocationInfo);
                }
            });
            if (this.sharingLocations.isEmpty()) {
                stop(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeSharingLocation$19(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            return;
        }
        getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeSharingLocation$20(SharingLocationInfo sharingLocationInfo) {
        this.sharingLocationsUI.remove(sharingLocationInfo);
        this.sharingLocationsMapUI.remove(sharingLocationInfo.did);
        if (this.sharingLocationsUI.isEmpty()) {
            stopService();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    private void startService() {
        try {
            if (!PermissionRequest.hasPermission("android.permission.ACCESS_COARSE_LOCATION") && !PermissionRequest.hasPermission("android.permission.ACCESS_FINE_LOCATION")) {
                return;
            }
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, (Class<?>) LocationSharingService.class));
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
    }

    private void stopService() {
        ApplicationLoader.applicationContext.stopService(new Intent(ApplicationLoader.applicationContext, (Class<?>) LocationSharingService.class));
    }

    public void removeAllLocationSharings() {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeAllLocationSharings$24();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAllLocationSharings$24() {
        int i = 0;
        while (true) {
            int size = this.sharingLocations.size();
            ArrayList<SharingLocationInfo> arrayList = this.sharingLocations;
            if (i < size) {
                SharingLocationInfo sharingLocationInfo = arrayList.get(i);
                TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
                tL_messages_editMessage.peer = getMessagesController().getInputPeer(sharingLocationInfo.did);
                tL_messages_editMessage.id = sharingLocationInfo.mid;
                tL_messages_editMessage.flags |= 16384;
                TLRPC.TL_inputMediaGeoLive tL_inputMediaGeoLive = new TLRPC.TL_inputMediaGeoLive();
                tL_messages_editMessage.media = tL_inputMediaGeoLive;
                tL_inputMediaGeoLive.stopped = true;
                tL_inputMediaGeoLive.geo_point = new TLRPC.TL_inputGeoPointEmpty();
                getConnectionsManager().sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda24
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$removeAllLocationSharings$22(tLObject, tL_error);
                    }
                });
                i++;
            } else {
                arrayList.clear();
                this.sharingLocationsMap.clear();
                saveSharingLocation(null, 2);
                stop(true);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$removeAllLocationSharings$23();
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAllLocationSharings$22(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            return;
        }
        getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAllLocationSharings$23() {
        this.sharingLocationsUI.clear();
        this.sharingLocationsMapUI.clear();
        stopService();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsChanged, new Object[0]);
    }

    public void setMapLocation(Location location, boolean z) {
        Location location2;
        if (location == null) {
            return;
        }
        this.lastLocationByMaps = true;
        if (z || ((location2 = this.lastKnownLocation) != null && location2.distanceTo(location) >= 20.0f)) {
            this.lastLocationSendTime = SystemClock.elapsedRealtime() - NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
            this.locationSentSinceLastMapUpdate = false;
        } else if (this.locationSentSinceLastMapUpdate) {
            this.lastLocationSendTime = SystemClock.elapsedRealtime() - NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
            this.locationSentSinceLastMapUpdate = false;
        }
        setLastKnownLocation(location);
    }

    private void start() {
        if (this.started) {
            return;
        }
        this.lastLocationStartTime = SystemClock.elapsedRealtime();
        this.started = true;
        if (checkServices()) {
            try {
                this.apiClient.connect();
                return;
            } catch (Throwable th) {
                FileLog.m992e(th);
            }
        }
        try {
            this.locationManager.requestLocationUpdates("gps", 1L, 0.0f, this.gpsLocationListener);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        try {
            this.locationManager.requestLocationUpdates("network", 1L, 0.0f, this.networkLocationListener);
        } catch (Exception e2) {
            FileLog.m992e(e2);
        }
        try {
            this.locationManager.requestLocationUpdates("passive", 1L, 0.0f, this.passiveLocationListener);
        } catch (Exception e3) {
            FileLog.m992e(e3);
        }
        if (this.lastKnownLocation == null) {
            try {
                setLastKnownLocation(this.locationManager.getLastKnownLocation("gps"));
                if (this.lastKnownLocation == null) {
                    setLastKnownLocation(this.locationManager.getLastKnownLocation("network"));
                }
            } catch (Exception e4) {
                FileLog.m992e(e4);
            }
        }
    }

    private void stop(boolean z) {
        this.started = false;
        if (checkServices()) {
            try {
                ApplicationLoader.getLocationServiceProvider().removeLocationUpdates(this.fusedLocationListener);
                this.apiClient.disconnect();
            } catch (Throwable th) {
                FileLog.m992e(th);
            }
        }
        this.locationManager.removeUpdates(this.gpsLocationListener);
        if (z) {
            this.locationManager.removeUpdates(this.networkLocationListener);
            this.locationManager.removeUpdates(this.passiveLocationListener);
        }
    }

    public Location getLastKnownLocation() {
        return this.lastKnownLocation;
    }

    public void loadLiveLocations(final long j) {
        if (this.cacheRequests.indexOfKey(j) >= 0) {
            return;
        }
        this.cacheRequests.put(j, Boolean.TRUE);
        TLRPC.TL_messages_getRecentLocations tL_messages_getRecentLocations = new TLRPC.TL_messages_getRecentLocations();
        tL_messages_getRecentLocations.peer = getMessagesController().getInputPeer(j);
        tL_messages_getRecentLocations.limit = 100;
        getConnectionsManager().sendRequest(tL_messages_getRecentLocations, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda23
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadLiveLocations$26(j, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLiveLocations$26(final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLiveLocations$25(j, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLiveLocations$25(long j, TLObject tLObject) {
        this.cacheRequests.delete(j);
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        int i = 0;
        while (i < messages_messages.messages.size()) {
            if (!(messages_messages.messages.get(i).media instanceof TLRPC.TL_messageMediaGeoLive)) {
                messages_messages.messages.remove(i);
                i--;
            }
            i++;
        }
        getMessagesStorage().putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
        getMessagesController().putUsers(messages_messages.users, false);
        getMessagesController().putChats(messages_messages.chats, false);
        this.locationsCache.put(j, messages_messages.messages);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveLocationsCacheChanged, Long.valueOf(j), Integer.valueOf(this.currentAccount));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0078  */
    /* JADX WARN: Type inference failed for: r1v10, types: [org.telegram.tgnet.TLRPC$TL_channels_readMessageContents] */
    /* JADX WARN: Type inference failed for: r1v6, types: [org.telegram.tgnet.TLRPC$TL_messages_readMessageContents] */
    /* JADX WARN: Type inference failed for: r1v7, types: [org.telegram.tgnet.TLObject] */
    /* JADX WARN: Type inference failed for: r7v2, types: [org.telegram.tgnet.ConnectionsManager] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void markLiveLoactionsAsRead(long j) {
        ArrayList<TLRPC.Message> arrayList;
        ?? tL_messages_readMessageContents;
        if (DialogObject.isEncryptedDialog(j) || (arrayList = this.locationsCache.get(j)) == null || arrayList.isEmpty()) {
            return;
        }
        Integer num = this.lastReadLocationTime.get(j);
        int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() / 1000);
        if (num == null || num.intValue() + 60 <= iElapsedRealtime) {
            this.lastReadLocationTime.put(j, Integer.valueOf(iElapsedRealtime));
            int i = 0;
            if (DialogObject.isChatDialog(j)) {
                long j2 = -j;
                if (ChatObject.isChannel(j2, this.currentAccount)) {
                    tL_messages_readMessageContents = new TLRPC.TL_channels_readMessageContents();
                    int size = arrayList.size();
                    while (i < size) {
                        tL_messages_readMessageContents.id.add(Integer.valueOf(arrayList.get(i).id));
                        i++;
                    }
                    tL_messages_readMessageContents.channel = getMessagesController().getInputChannel(j2);
                } else {
                    tL_messages_readMessageContents = new TLRPC.TL_messages_readMessageContents();
                    int size2 = arrayList.size();
                    while (i < size2) {
                        tL_messages_readMessageContents.id.add(Integer.valueOf(arrayList.get(i).id));
                        i++;
                    }
                }
            }
            getConnectionsManager().sendRequest(tL_messages_readMessageContents, new RequestDelegate() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda29
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$markLiveLoactionsAsRead$27(tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markLiveLoactionsAsRead$27(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_messages_affectedMessages) {
            TLRPC.TL_messages_affectedMessages tL_messages_affectedMessages = (TLRPC.TL_messages_affectedMessages) tLObject;
            getMessagesController().processNewDifferenceParams(-1, tL_messages_affectedMessages.pts, -1, tL_messages_affectedMessages.pts_count);
        }
    }

    public static int getLocationsCount() {
        int size = 0;
        for (int i = 0; i < 16; i++) {
            size += getInstance(i).sharingLocationsUI.size();
        }
        return size;
    }

    public static void fetchLocationAddress(Location location, LocationFetchCallback locationFetchCallback) {
        fetchLocationAddress(location, 0, locationFetchCallback);
    }

    public static void fetchLocationAddress(final Location location, final int i, final LocationFetchCallback locationFetchCallback) {
        Locale systemDefaultLocale;
        if (locationFetchCallback == null) {
            return;
        }
        Runnable runnable = callbacks.get(locationFetchCallback);
        if (runnable != null) {
            Utilities.globalQueue.cancelRunnable(runnable);
            callbacks.remove(locationFetchCallback);
        }
        if (location == null) {
            locationFetchCallback.onLocationAddressAvailable(null, null, null, null, null);
            return;
        }
        try {
            systemDefaultLocale = LocaleController.getInstance().getCurrentLocale();
        } catch (Exception unused) {
            systemDefaultLocale = LocaleController.getInstance().getSystemDefaultLocale();
        }
        final Locale locale = systemDefaultLocale;
        final Locale locale2 = locale.getLanguage().contains("en") ? locale : Locale.US;
        DispatchQueue dispatchQueue = Utilities.globalQueue;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                LocationController.$r8$lambda$tlUU8lHFc_rWHayxFAniRRtUDs0(locale, location, i, locale2, locationFetchCallback);
            }
        };
        dispatchQueue.postRunnable(runnable2, 300L);
        callbacks.put(locationFetchCallback, runnable2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0204 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0225 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02a2 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02e6 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x030d A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0321 A[Catch: Exception -> 0x013b, TRY_ENTER, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0330 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0366 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0380 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x03fa A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0421 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x043a A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0450 A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x045e A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x049b A[Catch: Exception -> 0x013b, TryCatch #1 {Exception -> 0x013b, blocks: (B:292:0x04d7, B:294:0x04dd, B:64:0x012b, B:66:0x0136, B:69:0x0141, B:71:0x0147, B:72:0x014b, B:74:0x0151, B:77:0x015b, B:79:0x0161, B:81:0x0168, B:83:0x016e, B:84:0x0172, B:86:0x0178, B:87:0x017c, B:89:0x0187, B:91:0x018d, B:93:0x0197, B:95:0x01a5, B:97:0x01ac, B:99:0x01b2, B:101:0x01bc, B:103:0x01cc, B:106:0x01d5, B:108:0x01db, B:110:0x01e5, B:112:0x01f5, B:115:0x01fe, B:117:0x0204, B:119:0x020a, B:121:0x0214, B:123:0x021a, B:124:0x021d, B:127:0x0225, B:129:0x022b, B:131:0x0235, B:133:0x0243, B:135:0x024a, B:137:0x0250, B:139:0x025a, B:141:0x026a, B:144:0x0273, B:146:0x0279, B:148:0x0283, B:150:0x0293, B:153:0x029c, B:155:0x02a2, B:157:0x02a8, B:159:0x02b2, B:161:0x02b8, B:162:0x02bb, B:164:0x02c1, B:167:0x02c8, B:169:0x02cd, B:172:0x02dd, B:173:0x02e0, B:175:0x02e6, B:177:0x02ec, B:178:0x02ef, B:180:0x02f4, B:182:0x02fa, B:183:0x02fd, B:186:0x0303, B:188:0x030d, B:190:0x0313, B:193:0x0321, B:195:0x0327, B:196:0x032a, B:198:0x0330, B:200:0x033a, B:202:0x0340, B:203:0x0343, B:204:0x0346, B:206:0x0350, B:208:0x0356, B:209:0x0359, B:210:0x035c, B:212:0x0366, B:214:0x036c, B:215:0x036f, B:216:0x0372, B:218:0x0380, B:220:0x0386, B:221:0x0389, B:225:0x03a4, B:229:0x03b7, B:231:0x03bd, B:233:0x03c6, B:243:0x03ef, B:245:0x03fa, B:247:0x0402, B:249:0x0418, B:250:0x041b, B:252:0x0421, B:253:0x0424, B:255:0x0430, B:257:0x043a, B:259:0x0440, B:260:0x0443, B:261:0x0446, B:263:0x0450, B:265:0x0456, B:266:0x0459, B:268:0x045e, B:270:0x0468, B:272:0x046e, B:273:0x0471, B:274:0x0474, B:276:0x047e, B:278:0x0484, B:279:0x0487, B:280:0x048a, B:283:0x049b, B:235:0x03cf, B:237:0x03db, B:240:0x03e2, B:290:0x04b5), top: B:351:0x0055 }] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v58 */
    /* JADX WARN: Type inference failed for: r11v59 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v60 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8, types: [org.telegram.tgnet.TLRPC$MessageMedia, org.telegram.tgnet.TLRPC$TL_messageMediaVenue] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.telegram.tgnet.TLRPC$TL_messageMediaVenue] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r6v1, types: [org.telegram.tgnet.TLRPC$TL_messageMediaVenue] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$tlUU8lHFc_rWHayxFAniRRtUDs0(Locale locale, final Location location, int i, Locale locale2, final LocationFetchCallback locationFetchCallback) {
        ?? r16;
        ?? r8;
        final ?? r6;
        final ?? r5;
        final String str;
        final String str2;
        ?? r162;
        List<Address> fromLocation;
        List<Address> fromLocation2;
        boolean z;
        String string;
        String string2;
        String string3;
        String string4;
        String str3;
        String str4;
        String countryCode;
        ?? tL_messageMediaVenue;
        ?? r82;
        boolean z2;
        String adminArea;
        String locality;
        String str5;
        String subLocality;
        String str6;
        String locality2;
        boolean z3;
        String subThoroughfare;
        boolean z4;
        String thoroughfare;
        String locality3;
        String countryName;
        StringBuilder sb;
        boolean z5;
        StringBuilder sb2;
        StringBuilder sb3;
        String countryName2;
        String locality4;
        String str7;
        String subLocality2;
        String str8;
        String locality5;
        String addressLine;
        StringBuilder sb4 = new StringBuilder();
        TL_stories.TL_geoPointAddress tL_geoPointAddress = new TL_stories.TL_geoPointAddress();
        TL_stories.TL_geoPointAddress tL_geoPointAddress2 = new TL_stories.TL_geoPointAddress();
        try {
            fromLocation = new Geocoder(ApplicationLoader.applicationContext, locale).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
            if (i != 2) {
                fromLocation2 = null;
            } else if (locale2 == locale) {
                fromLocation2 = fromLocation;
            } else {
                try {
                    r16 = 1;
                    fromLocation2 = new Geocoder(ApplicationLoader.applicationContext, locale2).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
                } catch (Exception unused) {
                    r8 = 0;
                    r162 = 0;
                    str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                    str = str2;
                    r5 = r8;
                    r6 = r162;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                        }
                    });
                }
            }
            z = true;
            try {
            } catch (Exception unused2) {
                r8 = r16;
                r162 = r16;
                str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                str = str2;
                r5 = r8;
                r6 = r162;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                    }
                });
            }
        } catch (Exception unused3) {
            r16 = 0;
        }
        if (fromLocation.size() <= 0) {
            r16 = 0;
            string = i == 1 ? null : String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
            string2 = string;
            string3 = null;
            string4 = null;
            str3 = null;
            str4 = null;
            countryCode = null;
            z = true;
        } else {
            int i2 = 0;
            Address address = fromLocation.get(0);
            Address address2 = (fromLocation2 == null || fromLocation2.size() < 1) ? null : fromLocation2.get(0);
            if (i == 1) {
                ArrayList arrayList = new ArrayList();
                try {
                    addressLine = address.getAddressLine(0);
                } catch (Exception unused4) {
                    addressLine = null;
                }
                if (TextUtils.isEmpty(addressLine)) {
                    try {
                        arrayList.add(address.getSubThoroughfare());
                    } catch (Exception unused5) {
                    }
                    try {
                        arrayList.add(address.getThoroughfare());
                    } catch (Exception unused6) {
                    }
                    try {
                        arrayList.add(address.getAdminArea());
                    } catch (Exception unused7) {
                    }
                    try {
                        arrayList.add(address.getCountryName());
                    } catch (Exception unused8) {
                    }
                } else {
                    arrayList.add(addressLine);
                }
                int i3 = 0;
                while (i3 < arrayList.size()) {
                    if (arrayList.get(i3) != null) {
                        String[] strArrSplit = ((String) arrayList.get(i3)).split(", ");
                        if (strArrSplit.length > 1) {
                            arrayList.remove(i3);
                            for (String str9 : strArrSplit) {
                                arrayList.add(i3, str9);
                                i3++;
                            }
                        }
                    }
                    i3++;
                }
                while (i2 < arrayList.size()) {
                    if (TextUtils.isEmpty((CharSequence) arrayList.get(i2)) || arrayList.indexOf(arrayList.get(i2)) != i2 || ((String) arrayList.get(i2)).matches("^\\s*\\d{4,}\\s*$")) {
                        arrayList.remove(i2);
                        i2--;
                    }
                    i2++;
                }
                string = arrayList.isEmpty() ? null : TextUtils.join(", ", arrayList);
                string2 = string;
                string3 = null;
                string4 = null;
                str3 = null;
                countryCode = null;
                z2 = false;
                locality = null;
            } else {
                StringBuilder sb5 = new StringBuilder();
                StringBuilder sb6 = new StringBuilder();
                StringBuilder sb7 = new StringBuilder();
                z2 = false;
                StringBuilder sb8 = new StringBuilder();
                String locality6 = TextUtils.isEmpty(null) ? address.getLocality() : null;
                if (TextUtils.isEmpty(locality6)) {
                    locality6 = address.getAdminArea();
                }
                if (TextUtils.isEmpty(locality6)) {
                    locality6 = address.getSubAdminArea();
                }
                String str10 = locality6;
                if (address2 != null) {
                    locality = TextUtils.isEmpty(null) ? address2.getLocality() : null;
                    if (TextUtils.isEmpty(locality)) {
                        locality = address2.getAdminArea();
                    }
                    if (TextUtils.isEmpty(locality)) {
                        locality = address2.getSubAdminArea();
                    }
                    adminArea = address2.getAdminArea();
                } else {
                    adminArea = null;
                    locality = null;
                }
                String thoroughfare2 = (!TextUtils.isEmpty(null) || TextUtils.equals(address.getThoroughfare(), str10) || TextUtils.equals(address.getThoroughfare(), address.getCountryName())) ? null : address.getThoroughfare();
                if (TextUtils.isEmpty(thoroughfare2) && !TextUtils.equals(address.getSubLocality(), str10)) {
                    str5 = thoroughfare2;
                    if (!TextUtils.equals(address.getSubLocality(), address.getCountryName())) {
                        subLocality = address.getSubLocality();
                    }
                    if (TextUtils.isEmpty(subLocality) || TextUtils.equals(address.getLocality(), str10)) {
                        str6 = subLocality;
                    } else {
                        str6 = subLocality;
                        if (!TextUtils.equals(address.getLocality(), address.getCountryName())) {
                            locality2 = address.getLocality();
                        }
                        if (TextUtils.isEmpty(locality2) || TextUtils.equals(locality2, str10) || TextUtils.equals(locality2, address.getCountryName())) {
                            sb8 = null;
                        } else {
                            if (sb8.length() > 0) {
                                sb8.append(", ");
                            }
                            sb8.append(locality2);
                        }
                        if (address2 != null) {
                            String thoroughfare3 = (!TextUtils.isEmpty(null) || TextUtils.equals(address2.getThoroughfare(), str10) || TextUtils.equals(address2.getThoroughfare(), address2.getCountryName())) ? null : address2.getThoroughfare();
                            if (TextUtils.isEmpty(thoroughfare3) && !TextUtils.equals(address2.getSubLocality(), str10)) {
                                str7 = thoroughfare3;
                                if (!TextUtils.equals(address2.getSubLocality(), address2.getCountryName())) {
                                    subLocality2 = address2.getSubLocality();
                                }
                                if (TextUtils.isEmpty(subLocality2) || TextUtils.equals(address2.getLocality(), str10)) {
                                    str8 = subLocality2;
                                } else {
                                    str8 = subLocality2;
                                    if (!TextUtils.equals(address2.getLocality(), address2.getCountryName())) {
                                        locality5 = address2.getLocality();
                                    }
                                    if (TextUtils.isEmpty(locality5) || TextUtils.equals(locality5, adminArea) || TextUtils.equals(locality5, address2.getCountryName())) {
                                        sb4 = null;
                                    } else {
                                        if (sb4.length() > 0) {
                                            sb4.append(", ");
                                        }
                                        sb4.append(locality5);
                                    }
                                    if (!TextUtils.isEmpty(sb4)) {
                                        int i4 = 0;
                                        while (true) {
                                            String[] strArr = unnamedRoads;
                                            if (i4 >= strArr.length) {
                                                break;
                                            }
                                            if (strArr[i4].equalsIgnoreCase(sb4.toString())) {
                                                sb4 = null;
                                                sb8 = null;
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                }
                                locality5 = str8;
                                if (TextUtils.isEmpty(locality5)) {
                                    sb4 = null;
                                    if (!TextUtils.isEmpty(sb4)) {
                                    }
                                }
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                                    }
                                });
                            }
                            str7 = thoroughfare3;
                            subLocality2 = str7;
                            if (TextUtils.isEmpty(subLocality2)) {
                                str8 = subLocality2;
                                locality5 = str8;
                                if (TextUtils.isEmpty(locality5)) {
                                }
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                                }
                            });
                        }
                        if (TextUtils.isEmpty(str10)) {
                            if (sb7.length() > 0) {
                                sb7.append(", ");
                            }
                            sb7.append(str10);
                            if (sb8 != null) {
                                if (sb8.length() > 0) {
                                    sb8.append(", ");
                                }
                                sb8.append(str10);
                            }
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        subThoroughfare = address.getSubThoroughfare();
                        if (TextUtils.isEmpty(subThoroughfare)) {
                            sb5.append(subThoroughfare);
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        thoroughfare = address.getThoroughfare();
                        boolean z6 = z3;
                        if (!TextUtils.isEmpty(thoroughfare)) {
                            if (sb5.length() > 0) {
                                sb5.append(" ");
                            }
                            sb5.append(thoroughfare);
                            z4 = true;
                        }
                        if (!z4) {
                            String adminArea2 = address.getAdminArea();
                            if (!TextUtils.isEmpty(adminArea2)) {
                                if (sb5.length() > 0) {
                                    sb5.append(", ");
                                }
                                sb5.append(adminArea2);
                            }
                            String subAdminArea = address.getSubAdminArea();
                            if (!TextUtils.isEmpty(subAdminArea)) {
                                if (sb5.length() > 0) {
                                    sb5.append(", ");
                                }
                                sb5.append(subAdminArea);
                            }
                        }
                        locality3 = address.getLocality();
                        if (!TextUtils.isEmpty(locality3)) {
                            if (sb5.length() > 0) {
                                sb5.append(", ");
                            }
                            sb5.append(locality3);
                        }
                        countryCode = address.getCountryCode();
                        countryName = address.getCountryName();
                        if (TextUtils.isEmpty(countryName)) {
                            if (sb5.length() > 0) {
                                sb5.append(", ");
                            }
                            sb5.append(countryName);
                            sb = sb5;
                            String language = locale.getLanguage();
                            z5 = z4;
                            if ("US".equals(address.getCountryCode())) {
                                sb2 = sb4;
                                sb3 = sb8;
                            } else {
                                sb2 = sb4;
                                sb3 = sb8;
                                if ("AE".equals(address.getCountryCode())) {
                                }
                                if (!"GB".equals(address.getCountryCode()) && "en".equals(language)) {
                                    String[] strArrSplit2 = countryName.split(" ");
                                    countryName = _UrlKt.FRAGMENT_ENCODE_SET;
                                    for (String str11 : strArrSplit2) {
                                        if (str11.length() > 0) {
                                            countryName = countryName + str11.charAt(0);
                                        }
                                    }
                                    if (sb7.length() > 0) {
                                    }
                                    sb7.append(countryName);
                                } else {
                                    if ("US".equals(address.getCountryCode())) {
                                        countryName = "USA";
                                    }
                                    if (sb7.length() > 0) {
                                        sb7.append(", ");
                                    }
                                    sb7.append(countryName);
                                }
                            }
                            if ("en".equals(language) || "uk".equals(language) || "ru".equals(language)) {
                                String[] strArrSplit22 = countryName.split(" ");
                                countryName = _UrlKt.FRAGMENT_ENCODE_SET;
                                while (i < r2) {
                                }
                                if (sb7.length() > 0) {
                                }
                                sb7.append(countryName);
                            } else {
                                if (!"GB".equals(address.getCountryCode())) {
                                }
                                if ("US".equals(address.getCountryCode())) {
                                }
                                if (sb7.length() > 0) {
                                }
                                sb7.append(countryName);
                            }
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                                }
                            });
                        }
                        sb = sb5;
                        z5 = z4;
                        sb2 = sb4;
                        sb3 = sb8;
                        countryName2 = address.getCountryName();
                        if (!TextUtils.isEmpty(countryName2)) {
                            if (sb6.length() > 0) {
                                sb6.append(", ");
                            }
                            sb6.append(countryName2);
                        }
                        locality4 = address.getLocality();
                        if (!TextUtils.isEmpty(locality4)) {
                            if (sb6.length() > 0) {
                                sb6.append(", ");
                            }
                            sb6.append(locality4);
                        }
                        if (!z5) {
                            String adminArea3 = address.getAdminArea();
                            if (!TextUtils.isEmpty(adminArea3)) {
                                if (sb6.length() > 0) {
                                    sb6.append(", ");
                                }
                                sb6.append(adminArea3);
                            }
                            String subAdminArea2 = address.getSubAdminArea();
                            if (!TextUtils.isEmpty(subAdminArea2)) {
                                if (sb6.length() > 0) {
                                    sb6.append(", ");
                                }
                                sb6.append(subAdminArea2);
                            }
                        }
                        string = sb.toString();
                        string2 = sb6.toString();
                        string3 = sb7.toString();
                        string4 = sb3 != null ? null : sb3.toString();
                        str3 = adminArea;
                        sb4 = sb2;
                        z = z6;
                    }
                    locality2 = str6;
                    if (TextUtils.isEmpty(locality2)) {
                        sb8 = null;
                        if (address2 != null) {
                        }
                        if (TextUtils.isEmpty(str10)) {
                        }
                        subThoroughfare = address.getSubThoroughfare();
                        if (TextUtils.isEmpty(subThoroughfare)) {
                        }
                        thoroughfare = address.getThoroughfare();
                        boolean z62 = z3;
                        if (!TextUtils.isEmpty(thoroughfare)) {
                        }
                        if (!z4) {
                        }
                        locality3 = address.getLocality();
                        if (!TextUtils.isEmpty(locality3)) {
                        }
                        countryCode = address.getCountryCode();
                        countryName = address.getCountryName();
                        if (TextUtils.isEmpty(countryName)) {
                        }
                        countryName2 = address.getCountryName();
                        if (!TextUtils.isEmpty(countryName2)) {
                        }
                        locality4 = address.getLocality();
                        if (!TextUtils.isEmpty(locality4)) {
                        }
                        if (!z5) {
                        }
                        string = sb.toString();
                        string2 = sb6.toString();
                        string3 = sb7.toString();
                        if (sb3 != null) {
                        }
                        str3 = adminArea;
                        sb4 = sb2;
                        z = z62;
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                        }
                    });
                }
                str5 = thoroughfare2;
                subLocality = str5;
                if (TextUtils.isEmpty(subLocality)) {
                    str6 = subLocality;
                    locality2 = str6;
                    if (TextUtils.isEmpty(locality2)) {
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                    }
                });
            }
            str4 = locality;
            r16 = z2;
        }
        if (TextUtils.isEmpty(string3)) {
            tL_messageMediaVenue = r16;
        } else {
            tL_messageMediaVenue = new TLRPC.TL_messageMediaVenue();
            try {
                TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
                tL_messageMediaVenue.geo = tL_geoPoint;
                tL_geoPoint.lat = location.getLatitude();
                tL_messageMediaVenue.geo._long = location.getLongitude();
                tL_messageMediaVenue.query_id = -1L;
                tL_messageMediaVenue.title = string3;
                tL_messageMediaVenue.icon = z ? "https://ss3.4sqi.net/img/categories_v2/building/government_capitolbuilding_64.png" : "https://ss3.4sqi.net/img/categories_v2/travel/hotel_64.png";
                tL_messageMediaVenue.emoji = countryCodeToEmoji(countryCode);
                tL_messageMediaVenue.address = LocaleController.getString(z ? C2665R.string.Country : C2665R.string.PassportCity);
                tL_messageMediaVenue.geoAddress = tL_geoPointAddress;
                tL_geoPointAddress.country_iso2 = countryCode;
                tL_messageMediaVenue = tL_messageMediaVenue;
                if (!z) {
                    if (!TextUtils.isEmpty(str3)) {
                        tL_geoPointAddress.flags |= 1;
                        tL_geoPointAddress.state = str3;
                    }
                    tL_messageMediaVenue = tL_messageMediaVenue;
                    if (!TextUtils.isEmpty(str4)) {
                        tL_geoPointAddress.flags |= 2;
                        tL_geoPointAddress.city = str4;
                        tL_messageMediaVenue = tL_messageMediaVenue;
                    }
                }
            } catch (Exception unused9) {
                r8 = tL_messageMediaVenue;
                r162 = r16;
                str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                str = str2;
                r5 = r8;
                r6 = r162;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                    }
                });
            }
        }
        if (TextUtils.isEmpty(string4)) {
            r82 = r16;
        } else {
            TLRPC.TL_messageMediaVenue tL_messageMediaVenue2 = new TLRPC.TL_messageMediaVenue();
            try {
                TLRPC.TL_geoPoint tL_geoPoint2 = new TLRPC.TL_geoPoint();
                tL_messageMediaVenue2.geo = tL_geoPoint2;
                tL_geoPoint2.lat = location.getLatitude();
                tL_messageMediaVenue2.geo._long = location.getLongitude();
                tL_messageMediaVenue2.query_id = -1L;
                tL_messageMediaVenue2.title = string4;
                tL_messageMediaVenue2.icon = "pin";
                tL_messageMediaVenue2.address = LocaleController.getString(C2665R.string.PassportStreet1);
                tL_messageMediaVenue2.geoAddress = tL_geoPointAddress2;
                tL_geoPointAddress2.country_iso2 = countryCode;
                if (!TextUtils.isEmpty(str3)) {
                    tL_geoPointAddress2.flags |= 1;
                    tL_geoPointAddress2.state = str3;
                }
                if (!TextUtils.isEmpty(str4)) {
                    tL_geoPointAddress2.flags |= 2;
                    tL_geoPointAddress2.city = str4;
                }
                if (!TextUtils.isEmpty(sb4)) {
                    tL_geoPointAddress2.flags |= 4;
                    tL_geoPointAddress2.street = sb4.toString();
                }
                r82 = tL_messageMediaVenue2;
            } catch (Exception unused10) {
                r16 = tL_messageMediaVenue2;
                r8 = tL_messageMediaVenue;
                r162 = r16;
                str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                str = str2;
                r5 = r8;
                r6 = r162;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                    }
                });
            }
        }
        if (tL_messageMediaVenue == 0 && r82 == 0) {
            try {
                String strDetectOcean = detectOcean(location.getLongitude(), location.getLatitude());
                if (strDetectOcean != null) {
                    TLRPC.TL_messageMediaVenue tL_messageMediaVenue3 = new TLRPC.TL_messageMediaVenue();
                    try {
                        TLRPC.TL_geoPoint tL_geoPoint3 = new TLRPC.TL_geoPoint();
                        tL_messageMediaVenue3.geo = tL_geoPoint3;
                        tL_geoPoint3.lat = location.getLatitude();
                        tL_messageMediaVenue3.geo._long = location.getLongitude();
                        tL_messageMediaVenue3.query_id = -1L;
                        tL_messageMediaVenue3.title = strDetectOcean;
                        tL_messageMediaVenue3.icon = "pin";
                        tL_messageMediaVenue3.emoji = "🌊";
                        tL_messageMediaVenue3.address = "Ocean";
                        tL_messageMediaVenue = tL_messageMediaVenue3;
                    } catch (Exception unused11) {
                        r162 = r82;
                        r8 = tL_messageMediaVenue3;
                        str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                        str = str2;
                        r5 = r8;
                        r6 = r162;
                    }
                }
            } catch (Exception unused12) {
                r16 = r82;
                r8 = tL_messageMediaVenue;
                r162 = r16;
                str2 = String.format(Locale.US, "Unknown address (%f,%f)", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                str = str2;
                r5 = r8;
                r6 = r162;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
                    }
                });
            }
        }
        str2 = string;
        str = string2;
        r6 = r82;
        r5 = tL_messageMediaVenue;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.LocationController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                LocationController.m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(locationFetchCallback, str2, str, r5, r6, location);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$8phspgl9XnVUhi-I1NM3sbFuOEw, reason: not valid java name */
    public static /* synthetic */ void m5315$r8$lambda$8phspgl9XnVUhiI1NM3sbFuOEw(LocationFetchCallback locationFetchCallback, String str, String str2, TLRPC.TL_messageMediaVenue tL_messageMediaVenue, TLRPC.TL_messageMediaVenue tL_messageMediaVenue2, Location location) {
        callbacks.remove(locationFetchCallback);
        locationFetchCallback.onLocationAddressAvailable(str, str2, tL_messageMediaVenue, tL_messageMediaVenue2, location);
    }

    public static String countryCodeToEmoji(String str) {
        if (str == null) {
            return null;
        }
        String upperCase = str.toUpperCase();
        int iCodePointCount = upperCase.codePointCount(0, upperCase.length());
        if (iCodePointCount > 2) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < iCodePointCount; i++) {
            sb.append(Character.toChars(Character.codePointAt(upperCase, i) - (-127397)));
        }
        return sb.toString();
    }

    public static String detectOcean(double d, double d2) {
        if (d2 > 65.0d) {
            return "Arctic Ocean";
        }
        if (d > -88.0d && d < 40.0d && d2 > 0.0d) {
            return "Atlantic Ocean";
        }
        if (d > -60.0d && d < 20.0d && d2 <= 0.0d) {
            return "Atlantic Ocean";
        }
        if (d2 <= 30.0d && d >= 20.0d && d < 150.0d) {
            return "Indian Ocean";
        }
        if ((d > 106.0d || d < -60.0d) && d2 > 0.0d) {
            return "Pacific Ocean";
        }
        if ((d > 150.0d || d < -60.0d) && d2 <= 0.0d) {
            return "Pacific Ocean";
        }
        return null;
    }
}
