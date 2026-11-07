package androidx.mediarouter.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteProviderDescriptor;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.work.WorkerFactory$$ExternalSyntheticBUOutline0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MediaRouteProviderService extends Service {
    static final boolean DEBUG = false;
    static final int PRIVATE_MSG_CLIENT_DIED = 1;
    public static final String SERVICE_INTERFACE = "android.media.MediaRouteProviderService";
    static final String TAG = "MediaRouteProviderSrv";
    final MediaRouteProviderServiceImpl mImpl;
    final PrivateHandler mPrivateHandler;
    MediaRouteProvider mProvider;
    private final MediaRouteProvider.Callback mProviderCallback;
    private final ReceiveHandler mReceiveHandler;
    final Messenger mReceiveMessenger;

    public interface MediaRouteProviderServiceImpl {
        void addClientInfoListener(Executor executor, Consumer<List<ClientInfo>> consumer);

        void attachBaseContext(Context context);

        MediaRouteProvider.Callback getProviderCallback();

        boolean onAddMemberRoute(Messenger messenger, int i, int i2, String str);

        IBinder onBind(Intent intent);

        void onBinderDied(Messenger messenger);

        boolean onCreateDynamicGroupRouteController(Messenger messenger, int i, int i2, String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions);

        boolean onCreateRouteController(Messenger messenger, int i, int i2, String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions);

        boolean onRegisterClient(Messenger messenger, int i, int i2, String str);

        boolean onReleaseRouteController(Messenger messenger, int i, int i2);

        boolean onRemoveMemberRoute(Messenger messenger, int i, int i2, String str);

        boolean onRouteControlRequest(Messenger messenger, int i, int i2, Intent intent);

        boolean onSelectRoute(Messenger messenger, int i, int i2);

        boolean onSetDiscoveryRequest(Messenger messenger, int i, MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest);

        boolean onSetRouteVolume(Messenger messenger, int i, int i2, int i3);

        boolean onUnregisterClient(Messenger messenger, int i);

        boolean onUnselectRoute(Messenger messenger, int i, int i2, int i3);

        boolean onUpdateMemberRoutes(Messenger messenger, int i, int i2, List<String> list);

        boolean onUpdateRouteVolume(Messenger messenger, int i, int i2, int i3);

        void removeAllClientInfoListeners();

        void removeClientInfoListener(Consumer<List<ClientInfo>> consumer);
    }

    public abstract MediaRouteProvider onCreateMediaRouteProvider();

    static {
        Log.isLoggable(TAG, 3);
    }

    public MediaRouteProviderService() {
        ReceiveHandler receiveHandler = new ReceiveHandler(this);
        this.mReceiveHandler = receiveHandler;
        this.mReceiveMessenger = new Messenger(receiveHandler);
        this.mPrivateHandler = new PrivateHandler();
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new MediaRouteProviderServiceImplApi30(this);
        } else {
            this.mImpl = new MediaRouteProviderServiceImplBase(this);
        }
        this.mProviderCallback = this.mImpl.getProviderCallback();
    }

    public void addClientInfoListener(Executor executor, Consumer<List<ClientInfo>> consumer) {
        this.mImpl.addClientInfoListener(executor, consumer);
    }

    public void removeClientInfoListener(Consumer<List<ClientInfo>> consumer) {
        this.mImpl.removeClientInfoListener(consumer);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        this.mImpl.attachBaseContext(context);
    }

    public MediaRouteProvider getMediaRouteProvider() {
        return this.mProvider;
    }

    public void ensureProvider() {
        MediaRouteProvider mediaRouteProviderOnCreateMediaRouteProvider;
        if (this.mProvider != null || (mediaRouteProviderOnCreateMediaRouteProvider = onCreateMediaRouteProvider()) == null) {
            return;
        }
        String packageName = mediaRouteProviderOnCreateMediaRouteProvider.getMetadata().getPackageName();
        if (!packageName.equals(getPackageName())) {
            WorkerFactory$$ExternalSyntheticBUOutline0.m203m("onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: ", packageName, ".  Service package name: ", getPackageName(), ".");
        } else {
            this.mProvider = mediaRouteProviderOnCreateMediaRouteProvider;
            mediaRouteProviderOnCreateMediaRouteProvider.setCallback(this.mProviderCallback);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        MediaRouteProvider mediaRouteProvider = this.mProvider;
        if (mediaRouteProvider != null) {
            mediaRouteProvider.setCallback(null);
        }
        this.mImpl.removeAllClientInfoListeners();
        super.onDestroy();
    }

    public static Bundle createDescriptorBundleForClientVersion(MediaRouteProviderDescriptor mediaRouteProviderDescriptor, int i) {
        if (mediaRouteProviderDescriptor == null) {
            return null;
        }
        MediaRouteProviderDescriptor.Builder builder = new MediaRouteProviderDescriptor.Builder(mediaRouteProviderDescriptor);
        builder.setRoutes(null);
        if (i < 4) {
            builder.setSupportsDynamicGroupRoute(false);
        }
        for (MediaRouteDescriptor mediaRouteDescriptor : mediaRouteProviderDescriptor.getRoutes()) {
            if (i >= mediaRouteDescriptor.getMinClientVersion() && i <= mediaRouteDescriptor.getMaxClientVersion()) {
                builder.addRoute(mediaRouteDescriptor);
            }
        }
        return builder.build().asBundle();
    }

    public static void sendGenericFailure(Messenger messenger, int i) {
        if (i != 0) {
            sendMessage(messenger, 0, i, 0, null, null);
        }
    }

    public static void sendGenericSuccess(Messenger messenger, int i) {
        if (i != 0) {
            sendMessage(messenger, 1, i, 0, null, null);
        }
    }

    public static void sendMessage(Messenger messenger, int i, int i2, int i3, Object obj, Bundle bundle) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i;
        messageObtain.arg1 = i2;
        messageObtain.arg2 = i3;
        messageObtain.obj = obj;
        messageObtain.setData(bundle);
        try {
            messenger.send(messageObtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e) {
            Log.e(TAG, "Could not send message to " + getClientId(messenger), e);
        }
    }

    public static String getClientId(Messenger messenger) {
        return "Client connection " + messenger.getBinder().toString();
    }

    public static final class ClientInfo {
        private final String packageName;

        private ClientInfo(String str) {
            this.packageName = str;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public static final class Builder {
            private final String packageName;

            public Builder(String str) {
                this.packageName = str;
            }

            public ClientInfo build() {
                return new ClientInfo(this.packageName);
            }
        }
    }

    public final class PrivateHandler extends Handler {
        public PrivateHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            MediaRouteProviderService.this.mImpl.onBinderDied((Messenger) message.obj);
        }
    }

    public static final class ReceiveHandler extends Handler {
        private final WeakReference<MediaRouteProviderService> mServiceRef;

        public ReceiveHandler(MediaRouteProviderService mediaRouteProviderService) {
            this.mServiceRef = new WeakReference<>(mediaRouteProviderService);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String[] packagesForUid;
            Messenger messenger = message.replyTo;
            if (MediaRouteProviderProtocol.isValidRemoteMessenger(messenger)) {
                int i = message.what;
                int i2 = message.arg1;
                if (processMessage(i, messenger, i2, message.arg2, message.obj, message.peekData(), (i != 1 || (packagesForUid = this.mServiceRef.get().getPackageManager().getPackagesForUid(message.sendingUid)) == null || packagesForUid.length <= 0) ? null : packagesForUid[0])) {
                    return;
                }
                MediaRouteProviderService.sendGenericFailure(messenger, i2);
                return;
            }
            String str = MediaRouteProviderService.SERVICE_INTERFACE;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private boolean processMessage(int i, Messenger messenger, int i2, int i3, Object obj, Bundle bundle, String str) {
            MediaRouteProvider.RouteControllerOptions routeControllerOptions;
            MediaRouteProvider.RouteControllerOptions routeControllerOptions2;
            MediaRouteProviderService mediaRouteProviderService = this.mServiceRef.get();
            if (mediaRouteProviderService != null) {
                switch (i) {
                    case 1:
                        return mediaRouteProviderService.mImpl.onRegisterClient(messenger, i2, i3, str);
                    case 2:
                        return mediaRouteProviderService.mImpl.onUnregisterClient(messenger, i2);
                    case 3:
                        String string = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID);
                        String string2 = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_LIBRARY_GROUP);
                        Bundle bundle2 = (Bundle) bundle.getParcelable(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_CONTROLLER_OPTIONS);
                        if (bundle2 != null) {
                            routeControllerOptions = new MediaRouteProvider.RouteControllerOptions(bundle2);
                        } else {
                            routeControllerOptions = MediaRouteProvider.RouteControllerOptions.EMPTY;
                        }
                        if (string != null) {
                            return mediaRouteProviderService.mImpl.onCreateRouteController(messenger, i2, i3, string, string2, routeControllerOptions);
                        }
                        break;
                    case 4:
                        return mediaRouteProviderService.mImpl.onReleaseRouteController(messenger, i2, i3);
                    case 5:
                        return mediaRouteProviderService.mImpl.onSelectRoute(messenger, i2, i3);
                    case 6:
                        return mediaRouteProviderService.mImpl.onUnselectRoute(messenger, i2, i3, bundle != null ? bundle.getInt(MediaRouteProviderProtocol.CLIENT_DATA_UNSELECT_REASON, 0) : 0);
                    case 7:
                        int i4 = bundle.getInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, -1);
                        if (i4 >= 0) {
                            return mediaRouteProviderService.mImpl.onSetRouteVolume(messenger, i2, i3, i4);
                        }
                        break;
                    case 8:
                        int i5 = bundle.getInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, 0);
                        if (i5 != 0) {
                            return mediaRouteProviderService.mImpl.onUpdateRouteVolume(messenger, i2, i3, i5);
                        }
                        break;
                    case 9:
                        if (obj instanceof Intent) {
                            return mediaRouteProviderService.mImpl.onRouteControlRequest(messenger, i2, i3, (Intent) obj);
                        }
                        break;
                    case 10:
                        if (obj == null || (obj instanceof Bundle)) {
                            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequestFromBundle = MediaRouteDiscoveryRequest.fromBundle((Bundle) obj);
                            MediaRouteProviderServiceImpl mediaRouteProviderServiceImpl = mediaRouteProviderService.mImpl;
                            if (mediaRouteDiscoveryRequestFromBundle == null || !mediaRouteDiscoveryRequestFromBundle.isValid()) {
                                mediaRouteDiscoveryRequestFromBundle = null;
                            }
                            return mediaRouteProviderServiceImpl.onSetDiscoveryRequest(messenger, i2, mediaRouteDiscoveryRequestFromBundle);
                        }
                        break;
                    case 11:
                        String string3 = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_ID);
                        Bundle bundle3 = (Bundle) bundle.getParcelable(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_CONTROLLER_OPTIONS);
                        if (bundle3 != null) {
                            routeControllerOptions2 = new MediaRouteProvider.RouteControllerOptions(bundle3);
                        } else {
                            routeControllerOptions2 = MediaRouteProvider.RouteControllerOptions.EMPTY;
                        }
                        if (string3 != null) {
                            return mediaRouteProviderService.mImpl.onCreateDynamicGroupRouteController(messenger, i2, i3, string3, routeControllerOptions2);
                        }
                        break;
                    case 12:
                        String string4 = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_ID);
                        if (string4 != null) {
                            return mediaRouteProviderService.mImpl.onAddMemberRoute(messenger, i2, i3, string4);
                        }
                        break;
                    case 13:
                        String string5 = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_ID);
                        if (string5 != null) {
                            return mediaRouteProviderService.mImpl.onRemoveMemberRoute(messenger, i2, i3, string5);
                        }
                        break;
                    case 14:
                        ArrayList<String> stringArrayList = bundle.getStringArrayList(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_IDS);
                        if (stringArrayList != null) {
                            return mediaRouteProviderService.mImpl.onUpdateMemberRoutes(messenger, i2, i3, stringArrayList);
                        }
                        break;
                }
            }
            return false;
        }
    }

    public static class MediaRouteProviderServiceImplBase implements MediaRouteProviderServiceImpl {
        MediaRouteDiscoveryRequest mBaseDiscoveryRequest;
        long mBaseDiscoveryRequestTimestamp;
        MediaRouteDiscoveryRequest mCompositeDiscoveryRequest;
        final MediaRouteProviderService mService;
        final ArrayList<ClientRecord> mClients = new ArrayList<>();
        private final Map<Consumer<List<ClientInfo>>, Executor> mClientInfoListeners = new HashMap();
        private final Object mClientInfoListenersLock = new Object();
        private final MediaRouterActiveScanThrottlingHelper mActiveScanThrottlingHelper = new MediaRouterActiveScanThrottlingHelper(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.1
            @Override // java.lang.Runnable
            public void run() {
                MediaRouteProviderServiceImplBase.this.updateCompositeDiscoveryRequest();
            }
        });

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public void attachBaseContext(Context context) {
        }

        public MediaRouteProviderServiceImplBase(MediaRouteProviderService mediaRouteProviderService) {
            this.mService = mediaRouteProviderService;
        }

        public MediaRouteProviderService getService() {
            return this.mService;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public IBinder onBind(Intent intent) {
            if (!intent.getAction().equals(MediaRouteProviderProtocol.SERVICE_INTERFACE)) {
                return null;
            }
            this.mService.ensureProvider();
            if (this.mService.getMediaRouteProvider() != null) {
                return this.mService.mReceiveMessenger.getBinder();
            }
            return null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public MediaRouteProvider.Callback getProviderCallback() {
            return new ProviderCallbackBase();
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onRegisterClient(Messenger messenger, int i, int i2, String str) {
            if (i2 < 1 || findClient(messenger) >= 0) {
                return false;
            }
            ClientRecord clientRecordCreateClientRecord = createClientRecord(messenger, i2, str);
            if (!clientRecordCreateClientRecord.register()) {
                return false;
            }
            addClient(clientRecordCreateClientRecord);
            String str2 = MediaRouteProviderService.SERVICE_INTERFACE;
            if (i != 0) {
                MediaRouteProviderService.sendMessage(messenger, 2, i, 3, MediaRouteProviderService.createDescriptorBundleForClientVersion(this.mService.getMediaRouteProvider().getDescriptor(), clientRecordCreateClientRecord.mVersion), null);
            }
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onUnregisterClient(Messenger messenger, int i) {
            int iFindClient = findClient(messenger);
            if (iFindClient < 0) {
                return false;
            }
            ClientRecord clientRecordRemoveClient = removeClient(iFindClient);
            String str = MediaRouteProviderService.SERVICE_INTERFACE;
            clientRecordRemoveClient.dispose();
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public void onBinderDied(Messenger messenger) {
            int iFindClient = findClient(messenger);
            if (iFindClient >= 0) {
                ClientRecord clientRecordRemoveClient = removeClient(iFindClient);
                String str = MediaRouteProviderService.SERVICE_INTERFACE;
                clientRecordRemoveClient.dispose();
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onCreateRouteController(Messenger messenger, int i, int i2, String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            ClientRecord client = getClient(messenger);
            if (client == null || !client.createRouteController(str, str2, new MediaRouteProvider.RouteControllerOptions.Builder(routeControllerOptions).setClientPackageName(client.mPackageName).build(), i2)) {
                return false;
            }
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onCreateDynamicGroupRouteController(Messenger messenger, int i, int i2, String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            Bundle bundleCreateDynamicGroupRouteController;
            ClientRecord client = getClient(messenger);
            if (client == null || (bundleCreateDynamicGroupRouteController = client.createDynamicGroupRouteController(str, new MediaRouteProvider.RouteControllerOptions.Builder(routeControllerOptions).setClientPackageName(client.mPackageName).build(), i2)) == null) {
                return false;
            }
            MediaRouteProviderService.sendMessage(messenger, 6, i, 3, bundleCreateDynamicGroupRouteController, null);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onAddMemberRoute(Messenger messenger, int i, int i2, String str) {
            ClientRecord client = getClient(messenger);
            if (client == null) {
                return false;
            }
            MediaRouteProvider.RouteController routeController = client.getRouteController(i2);
            if (!(routeController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
                return false;
            }
            ((MediaRouteProvider.DynamicGroupRouteController) routeController).onAddMemberRoute(str);
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onRemoveMemberRoute(Messenger messenger, int i, int i2, String str) {
            ClientRecord client = getClient(messenger);
            if (client == null) {
                return false;
            }
            MediaRouteProvider.RouteController routeController = client.getRouteController(i2);
            if (!(routeController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
                return false;
            }
            ((MediaRouteProvider.DynamicGroupRouteController) routeController).onRemoveMemberRoute(str);
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onUpdateMemberRoutes(Messenger messenger, int i, int i2, List<String> list) {
            ClientRecord client = getClient(messenger);
            if (client == null) {
                return false;
            }
            MediaRouteProvider.RouteController routeController = client.getRouteController(i2);
            if (!(routeController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
                return false;
            }
            ((MediaRouteProvider.DynamicGroupRouteController) routeController).onUpdateMemberRoutes(list);
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onReleaseRouteController(Messenger messenger, int i, int i2) {
            ClientRecord client = getClient(messenger);
            if (client == null || !client.releaseRouteController(i2)) {
                return false;
            }
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onSelectRoute(Messenger messenger, int i, int i2) {
            MediaRouteProvider.RouteController routeController;
            ClientRecord client = getClient(messenger);
            if (client == null || (routeController = client.getRouteController(i2)) == null) {
                return false;
            }
            routeController.onSelect();
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onUnselectRoute(Messenger messenger, int i, int i2, int i3) {
            MediaRouteProvider.RouteController routeController;
            ClientRecord client = getClient(messenger);
            if (client == null || (routeController = client.getRouteController(i2)) == null) {
                return false;
            }
            routeController.onUnselect(i3);
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onSetRouteVolume(Messenger messenger, int i, int i2, int i3) {
            MediaRouteProvider.RouteController routeController;
            ClientRecord client = getClient(messenger);
            if (client == null || (routeController = client.getRouteController(i2)) == null) {
                return false;
            }
            routeController.onSetVolume(i3);
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onUpdateRouteVolume(Messenger messenger, int i, int i2, int i3) {
            MediaRouteProvider.RouteController routeController;
            ClientRecord client = getClient(messenger);
            if (client == null || (routeController = client.getRouteController(i2)) == null) {
                return false;
            }
            routeController.onUpdateVolume(i3);
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onRouteControlRequest(final Messenger messenger, final int i, final int i2, Intent intent) {
            MediaRouteProvider.RouteController routeController;
            final Intent intent2;
            MediaRouter.ControlRequestCallback controlRequestCallback;
            final ClientRecord client = getClient(messenger);
            if (client == null || (routeController = client.getRouteController(i2)) == null) {
                return false;
            }
            if (i != 0) {
                intent2 = intent;
                controlRequestCallback = new MediaRouter.ControlRequestCallback() { // from class: androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.2
                    @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                    public void onResult(Bundle bundle) {
                        String str = MediaRouteProviderService.SERVICE_INTERFACE;
                        if (MediaRouteProviderServiceImplBase.this.findClient(messenger) >= 0) {
                            MediaRouteProviderService.sendMessage(messenger, 3, i, 0, bundle, null);
                        }
                    }

                    @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                    public void onError(String str, Bundle bundle) {
                        String str2 = MediaRouteProviderService.SERVICE_INTERFACE;
                        if (MediaRouteProviderServiceImplBase.this.findClient(messenger) >= 0) {
                            if (str != null) {
                                Bundle bundle2 = new Bundle();
                                bundle2.putString("error", str);
                                MediaRouteProviderService.sendMessage(messenger, 4, i, 0, bundle, bundle2);
                                return;
                            }
                            MediaRouteProviderService.sendMessage(messenger, 4, i, 0, bundle, null);
                        }
                    }
                };
            } else {
                intent2 = intent;
                controlRequestCallback = null;
            }
            if (!routeController.onControlRequest(intent2, controlRequestCallback)) {
                return false;
            }
            String str = MediaRouteProviderService.SERVICE_INTERFACE;
            return true;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public boolean onSetDiscoveryRequest(Messenger messenger, int i, MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            ClientRecord client = getClient(messenger);
            if (client == null) {
                return false;
            }
            client.setDiscoveryRequest(mediaRouteDiscoveryRequest);
            MediaRouteProviderService.sendGenericSuccess(messenger, i);
            return true;
        }

        public void sendDescriptorChanged(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            int size = this.mClients.size();
            for (int i = 0; i < size; i++) {
                ClientRecord clientRecord = this.mClients.get(i);
                MediaRouteProviderService.sendMessage(clientRecord.mMessenger, 5, 0, 0, clientRecord.createDescriptorBundle(mediaRouteProviderDescriptor), null);
            }
        }

        public boolean setBaseDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (ObjectsCompat.equals(this.mBaseDiscoveryRequest, mediaRouteDiscoveryRequest) && !mediaRouteDiscoveryRequest.isActiveScan()) {
                return false;
            }
            this.mBaseDiscoveryRequest = mediaRouteDiscoveryRequest;
            this.mBaseDiscoveryRequestTimestamp = jElapsedRealtime;
            return updateCompositeDiscoveryRequest();
        }

        public boolean updateCompositeDiscoveryRequest() {
            MediaRouteSelector.Builder builder;
            this.mActiveScanThrottlingHelper.reset();
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = this.mBaseDiscoveryRequest;
            if (mediaRouteDiscoveryRequest != null) {
                this.mActiveScanThrottlingHelper.requestActiveScan(mediaRouteDiscoveryRequest.isActiveScan(), this.mBaseDiscoveryRequestTimestamp);
                builder = new MediaRouteSelector.Builder(this.mBaseDiscoveryRequest.getSelector());
            } else {
                builder = null;
            }
            int size = this.mClients.size();
            for (int i = 0; i < size; i++) {
                ClientRecord clientRecord = this.mClients.get(i);
                MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest2 = clientRecord.mDiscoveryRequest;
                if (mediaRouteDiscoveryRequest2 != null && (!mediaRouteDiscoveryRequest2.getSelector().isEmpty() || mediaRouteDiscoveryRequest2.isActiveScan())) {
                    this.mActiveScanThrottlingHelper.requestActiveScan(mediaRouteDiscoveryRequest2.isActiveScan(), clientRecord.mDiscoveryRequestTimestamp);
                    if (builder == null) {
                        builder = new MediaRouteSelector.Builder(mediaRouteDiscoveryRequest2.getSelector());
                    } else {
                        builder.addSelector(mediaRouteDiscoveryRequest2.getSelector());
                    }
                }
            }
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest3 = builder != null ? new MediaRouteDiscoveryRequest(builder.build(), this.mActiveScanThrottlingHelper.finalizeActiveScanAndScheduleSuppressActiveScanRunnable()) : null;
            if (ObjectsCompat.equals(this.mCompositeDiscoveryRequest, mediaRouteDiscoveryRequest3)) {
                return false;
            }
            this.mCompositeDiscoveryRequest = mediaRouteDiscoveryRequest3;
            MediaRouteProvider mediaRouteProvider = this.mService.getMediaRouteProvider();
            if (mediaRouteProvider == null) {
                return true;
            }
            mediaRouteProvider.setDiscoveryRequest(mediaRouteDiscoveryRequest3);
            return true;
        }

        private ClientRecord getClient(Messenger messenger) {
            int iFindClient = findClient(messenger);
            if (iFindClient >= 0) {
                return this.mClients.get(iFindClient);
            }
            return null;
        }

        public int findClient(Messenger messenger) {
            int size = this.mClients.size();
            for (int i = 0; i < size; i++) {
                if (this.mClients.get(i).hasMessenger(messenger)) {
                    return i;
                }
            }
            return -1;
        }

        public class ClientRecord implements IBinder.DeathRecipient {
            public MediaRouteDiscoveryRequest mDiscoveryRequest;
            public long mDiscoveryRequestTimestamp;
            public final Messenger mMessenger;
            public final String mPackageName;
            public final int mVersion;
            final SparseArray<MediaRouteProvider.RouteController> mControllers = new SparseArray<>();
            final MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener mDynamicRoutesChangedListener = new MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener() { // from class: androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord.1
                @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener
                public void onRoutesChanged(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
                    ClientRecord.this.sendDynamicRouteDescriptors(dynamicGroupRouteController, mediaRouteDescriptor, collection);
                }
            };

            public ClientRecord(Messenger messenger, int i, String str) {
                this.mMessenger = messenger;
                this.mVersion = i;
                this.mPackageName = str;
            }

            public boolean register() {
                try {
                    this.mMessenger.getBinder().linkToDeath(this, 0);
                    return true;
                } catch (RemoteException unused) {
                    binderDied();
                    return false;
                }
            }

            public void dispose() {
                int size = this.mControllers.size();
                int i = 0;
                while (true) {
                    SparseArray<MediaRouteProvider.RouteController> sparseArray = this.mControllers;
                    if (i < size) {
                        sparseArray.valueAt(i).onRelease();
                        i++;
                    } else {
                        sparseArray.clear();
                        this.mMessenger.getBinder().unlinkToDeath(this, 0);
                        setDiscoveryRequest(null);
                        return;
                    }
                }
            }

            public boolean hasMessenger(Messenger messenger) {
                return this.mMessenger.getBinder() == messenger.getBinder();
            }

            public boolean createRouteController(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions, int i) {
                MediaRouteProvider.RouteController routeControllerOnCreateRouteController;
                if (this.mControllers.indexOfKey(i) >= 0) {
                    return false;
                }
                MediaRouteProviderServiceImplBase mediaRouteProviderServiceImplBase = MediaRouteProviderServiceImplBase.this;
                if (str2 == null) {
                    routeControllerOnCreateRouteController = mediaRouteProviderServiceImplBase.mService.getMediaRouteProvider().onCreateRouteController(str, routeControllerOptions);
                } else {
                    routeControllerOnCreateRouteController = mediaRouteProviderServiceImplBase.mService.getMediaRouteProvider().onCreateRouteController(str, str2);
                }
                if (routeControllerOnCreateRouteController == null) {
                    return false;
                }
                this.mControllers.put(i, routeControllerOnCreateRouteController);
                return true;
            }

            public Bundle createDynamicGroupRouteController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions, int i) {
                MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerOnCreateDynamicGroupRouteController;
                if (this.mControllers.indexOfKey(i) >= 0 || (dynamicGroupRouteControllerOnCreateDynamicGroupRouteController = MediaRouteProviderServiceImplBase.this.mService.getMediaRouteProvider().onCreateDynamicGroupRouteController(str, routeControllerOptions)) == null) {
                    return null;
                }
                dynamicGroupRouteControllerOnCreateDynamicGroupRouteController.setOnDynamicRoutesChangedListener(ContextCompat.getMainExecutor(MediaRouteProviderServiceImplBase.this.mService.getApplicationContext()), this.mDynamicRoutesChangedListener);
                this.mControllers.put(i, dynamicGroupRouteControllerOnCreateDynamicGroupRouteController);
                Bundle bundle = new Bundle();
                bundle.putString(MediaRouteProviderProtocol.DATA_KEY_GROUPABLE_SECTION_TITLE, dynamicGroupRouteControllerOnCreateDynamicGroupRouteController.getGroupableSelectionTitle());
                bundle.putString(MediaRouteProviderProtocol.DATA_KEY_TRANSFERABLE_SECTION_TITLE, dynamicGroupRouteControllerOnCreateDynamicGroupRouteController.getTransferableSectionTitle());
                return bundle;
            }

            public boolean releaseRouteController(int i) {
                MediaRouteProvider.RouteController routeController = this.mControllers.get(i);
                if (routeController == null) {
                    return false;
                }
                this.mControllers.remove(i);
                routeController.onRelease();
                return true;
            }

            public MediaRouteProvider.RouteController getRouteController(int i) {
                return this.mControllers.get(i);
            }

            public boolean setDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (ObjectsCompat.equals(this.mDiscoveryRequest, mediaRouteDiscoveryRequest)) {
                    return false;
                }
                this.mDiscoveryRequest = mediaRouteDiscoveryRequest;
                this.mDiscoveryRequestTimestamp = jElapsedRealtime;
                return MediaRouteProviderServiceImplBase.this.updateCompositeDiscoveryRequest();
            }

            public Bundle createDescriptorBundle(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
                return MediaRouteProviderService.createDescriptorBundleForClientVersion(mediaRouteProviderDescriptor, this.mVersion);
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                MediaRouteProviderServiceImplBase.this.mService.mPrivateHandler.obtainMessage(1, this.mMessenger).sendToTarget();
            }

            public String toString() {
                return MediaRouteProviderService.getClientId(this.mMessenger);
            }

            public void sendDynamicRouteDescriptors(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
                int iIndexOfValue = this.mControllers.indexOfValue(dynamicGroupRouteController);
                if (iIndexOfValue < 0) {
                    Log.w(MediaRouteProviderService.TAG, "Ignoring unknown dynamic group route controller: " + dynamicGroupRouteController);
                    return;
                }
                int iKeyAt = this.mControllers.keyAt(iIndexOfValue);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> it = collection.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toBundle());
                }
                Bundle bundle = new Bundle();
                if (mediaRouteDescriptor != null) {
                    bundle.putParcelable(MediaRouteProviderProtocol.DATA_KEY_GROUP_ROUTE_DESCRIPTOR, mediaRouteDescriptor.asBundle());
                }
                bundle.putParcelableArrayList(MediaRouteProviderProtocol.DATA_KEY_DYNAMIC_ROUTE_DESCRIPTORS, arrayList);
                MediaRouteProviderService.sendMessage(this.mMessenger, 7, 0, iKeyAt, bundle, null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public ClientInfo getClientInfo() {
                return new ClientInfo.Builder(this.mPackageName).build();
            }
        }

        public ClientRecord createClientRecord(Messenger messenger, int i, String str) {
            return new ClientRecord(messenger, i, str);
        }

        private void addClient(ClientRecord clientRecord) {
            this.mClients.add(clientRecord);
            notifyClientRecordsChanged();
        }

        private ClientRecord removeClient(int i) {
            ClientRecord clientRecordRemove = this.mClients.remove(i);
            notifyClientRecordsChanged();
            return clientRecordRemove;
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public void addClientInfoListener(Executor executor, Consumer<List<ClientInfo>> consumer) {
            synchronized (this.mClientInfoListenersLock) {
                this.mClientInfoListeners.put(consumer, executor);
                notifyClientRecordsChanged();
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public void removeClientInfoListener(Consumer<List<ClientInfo>> consumer) {
            synchronized (this.mClientInfoListenersLock) {
                this.mClientInfoListeners.remove(consumer);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public void removeAllClientInfoListeners() {
            synchronized (this.mClientInfoListenersLock) {
                this.mClientInfoListeners.clear();
            }
        }

        private void notifyClientRecordsChanged() {
            if (this.mClientInfoListeners.isEmpty()) {
                return;
            }
            final ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList(this.mClients);
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                arrayList.add(((ClientRecord) obj).getClientInfo());
            }
            synchronized (this.mClientInfoListenersLock) {
                try {
                    for (Map.Entry<Consumer<List<ClientInfo>>, Executor> entry : this.mClientInfoListeners.entrySet()) {
                        final Consumer<List<ClientInfo>> key = entry.getKey();
                        entry.getValue().execute(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProviderService$MediaRouteProviderServiceImplBase$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                key.accept(arrayList);
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public class ProviderCallbackBase extends MediaRouteProvider.Callback {
            public ProviderCallbackBase() {
            }

            @Override // androidx.mediarouter.media.MediaRouteProvider.Callback
            public void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
                MediaRouteProviderServiceImplBase.this.sendDescriptorChanged(mediaRouteProviderDescriptor);
            }
        }
    }

    public static class MediaRouteProviderServiceImplApi30 extends MediaRouteProviderServiceImplBase {
        final MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener mDynamicRoutesChangedListener;
        MediaRoute2ProviderServiceAdapter mMR2ProviderServiceAdapter;

        public MediaRouteProviderServiceImplApi30(MediaRouteProviderService mediaRouteProviderService) {
            super(mediaRouteProviderService);
            this.mDynamicRoutesChangedListener = new MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener() { // from class: androidx.mediarouter.media.MediaRouteProviderService$MediaRouteProviderServiceImplApi30$$ExternalSyntheticLambda0
                @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener
                public final void onRoutesChanged(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
                    this.f$0.mMR2ProviderServiceAdapter.setDynamicRouteDescriptor(dynamicGroupRouteController, mediaRouteDescriptor, collection);
                }
            };
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase, androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public IBinder onBind(Intent intent) {
            this.mService.ensureProvider();
            if (this.mMR2ProviderServiceAdapter == null) {
                this.mMR2ProviderServiceAdapter = new MediaRoute2ProviderServiceAdapter(this);
                if (this.mService.getBaseContext() != null) {
                    this.mMR2ProviderServiceAdapter.attachBaseContext(this.mService);
                }
            }
            IBinder iBinderOnBind = super.onBind(intent);
            return iBinderOnBind != null ? iBinderOnBind : this.mMR2ProviderServiceAdapter.onBind(intent);
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase, androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImpl
        public void attachBaseContext(Context context) {
            MediaRoute2ProviderServiceAdapter mediaRoute2ProviderServiceAdapter = this.mMR2ProviderServiceAdapter;
            if (mediaRoute2ProviderServiceAdapter != null) {
                mediaRoute2ProviderServiceAdapter.attachBaseContext(context);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase
        public void sendDescriptorChanged(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            super.sendDescriptorChanged(mediaRouteProviderDescriptor);
            this.mMR2ProviderServiceAdapter.setProviderDescriptor(mediaRouteProviderDescriptor);
        }

        @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase
        public MediaRouteProviderServiceImplBase.ClientRecord createClientRecord(Messenger messenger, int i, String str) {
            return new ClientRecord(messenger, i, str);
        }

        public void setDynamicRoutesChangedListener(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController) {
            dynamicGroupRouteController.setOnDynamicRoutesChangedListener(ContextCompat.getMainExecutor(this.mService.getApplicationContext()), this.mDynamicRoutesChangedListener);
        }

        public class ClientRecord extends MediaRouteProviderServiceImplBase.ClientRecord {
            private static final long DISABLE_ROUTE_FOR_RELEASED_CONTROLLER_TIMEOUT_MS = 5000;
            private final Handler mClientHandler;
            private final Map<String, Integer> mReleasedControllerIds;
            private final Map<String, MediaRouteProvider.RouteController> mRouteIdToControllerMap;

            public ClientRecord(Messenger messenger, int i, String str) {
                super(messenger, i, str);
                this.mRouteIdToControllerMap = new ArrayMap();
                this.mClientHandler = new Handler(Looper.getMainLooper());
                if (i < 4) {
                    this.mReleasedControllerIds = new ArrayMap();
                } else {
                    this.mReleasedControllerIds = Collections.EMPTY_MAP;
                }
            }

            @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord
            public void dispose() {
                int size = this.mControllers.size();
                for (int i = 0; i < size; i++) {
                    MediaRouteProviderServiceImplApi30.this.mMR2ProviderServiceAdapter.notifyRouteControllerRemoved(this.mControllers.keyAt(i));
                }
                this.mRouteIdToControllerMap.clear();
                super.dispose();
            }

            @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord
            public boolean createRouteController(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions, int i) {
                ClientRecord clientRecord;
                String str3;
                int i2;
                MediaRouteProvider.RouteController routeController = this.mRouteIdToControllerMap.get(str);
                if (routeController != null) {
                    this.mControllers.put(i, routeController);
                    return true;
                }
                boolean zCreateRouteController = super.createRouteController(str, str2, routeControllerOptions, i);
                if (str2 == null && zCreateRouteController && this.mPackageName != null) {
                    clientRecord = this;
                    str3 = str;
                    i2 = i;
                    MediaRouteProviderServiceImplApi30.this.mMR2ProviderServiceAdapter.notifyRouteControllerAdded(clientRecord, this.mControllers.get(i), i2, this.mPackageName, str3);
                } else {
                    clientRecord = this;
                    str3 = str;
                    i2 = i;
                }
                if (zCreateRouteController) {
                    clientRecord.mRouteIdToControllerMap.put(str3, clientRecord.mControllers.get(i2));
                }
                return zCreateRouteController;
            }

            @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord
            public Bundle createDynamicGroupRouteController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions, int i) {
                Bundle bundleCreateDynamicGroupRouteController = super.createDynamicGroupRouteController(str, routeControllerOptions, i);
                if (bundleCreateDynamicGroupRouteController != null && this.mPackageName != null) {
                    MediaRouteProviderServiceImplApi30.this.mMR2ProviderServiceAdapter.notifyRouteControllerAdded(this, this.mControllers.get(i), i, this.mPackageName, str);
                }
                return bundleCreateDynamicGroupRouteController;
            }

            @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord
            public boolean releaseRouteController(int i) {
                MediaRouteProviderServiceImplApi30.this.mMR2ProviderServiceAdapter.notifyRouteControllerRemoved(i);
                MediaRouteProvider.RouteController routeController = this.mControllers.get(i);
                if (routeController != null) {
                    Iterator<Map.Entry<String, MediaRouteProvider.RouteController>> it = this.mRouteIdToControllerMap.entrySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry<String, MediaRouteProvider.RouteController> next = it.next();
                        if (next.getValue() == routeController) {
                            this.mRouteIdToControllerMap.remove(next.getKey());
                            break;
                        }
                    }
                }
                Iterator<Map.Entry<String, Integer>> it2 = this.mReleasedControllerIds.entrySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry<String, Integer> next2 = it2.next();
                    if (next2.getValue().intValue() == i) {
                        enableRouteForReleasedRouteController(next2.getKey());
                        break;
                    }
                }
                return super.releaseRouteController(i);
            }

            @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord
            public void sendDynamicRouteDescriptors(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
                super.sendDynamicRouteDescriptors(dynamicGroupRouteController, mediaRouteDescriptor, collection);
                MediaRoute2ProviderServiceAdapter mediaRoute2ProviderServiceAdapter = MediaRouteProviderServiceImplApi30.this.mMR2ProviderServiceAdapter;
                if (mediaRoute2ProviderServiceAdapter != null) {
                    mediaRoute2ProviderServiceAdapter.setDynamicRouteDescriptor(dynamicGroupRouteController, mediaRouteDescriptor, collection);
                }
            }

            @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord
            public Bundle createDescriptorBundle(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
                if (this.mReleasedControllerIds.isEmpty()) {
                    return super.createDescriptorBundle(mediaRouteProviderDescriptor);
                }
                ArrayList arrayList = new ArrayList();
                for (MediaRouteDescriptor mediaRouteDescriptor : mediaRouteProviderDescriptor.getRoutes()) {
                    if (this.mReleasedControllerIds.containsKey(mediaRouteDescriptor.getId())) {
                        arrayList.add(new MediaRouteDescriptor.Builder(mediaRouteDescriptor).setEnabled(false).build());
                    } else {
                        arrayList.add(mediaRouteDescriptor);
                    }
                }
                return super.createDescriptorBundle(new MediaRouteProviderDescriptor.Builder(mediaRouteProviderDescriptor).setRoutes(arrayList).build());
            }

            public void releaseControllerByProvider(MediaRouteProvider.RouteController routeController, String str) {
                int iFindControllerIdByController = findControllerIdByController(routeController);
                releaseRouteController(iFindControllerIdByController);
                if (this.mVersion < 4) {
                    disableRouteForReleasedRouteController(str, iFindControllerIdByController);
                } else {
                    if (iFindControllerIdByController < 0) {
                        Log.w(MediaRouteProviderService.TAG, "releaseControllerByProvider: Can't find the controller. route ID=" + str);
                        return;
                    }
                    MediaRouteProviderService.sendMessage(this.mMessenger, 8, 0, iFindControllerIdByController, null, null);
                }
            }

            private void disableRouteForReleasedRouteController(final String str, int i) {
                this.mReleasedControllerIds.put(str, Integer.valueOf(i));
                this.mClientHandler.postDelayed(new Runnable() { // from class: androidx.mediarouter.media.MediaRouteProviderService$MediaRouteProviderServiceImplApi30$ClientRecord$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.enableRouteForReleasedRouteController(str);
                    }
                }, DISABLE_ROUTE_FOR_RELEASED_CONTROLLER_TIMEOUT_MS);
                sendDescriptor();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void enableRouteForReleasedRouteController(String str) {
                if (this.mReleasedControllerIds.remove(str) == null) {
                    return;
                }
                sendDescriptor();
            }

            public void sendDescriptor() {
                MediaRouteProviderDescriptor descriptor = MediaRouteProviderServiceImplApi30.this.getService().getMediaRouteProvider().getDescriptor();
                if (descriptor != null) {
                    MediaRouteProviderService.sendMessage(this.mMessenger, 5, 0, 0, createDescriptorBundle(descriptor), null);
                }
            }

            public MediaRouteProvider.RouteController findControllerByRouteId(String str) {
                return this.mRouteIdToControllerMap.get(str);
            }

            public int findControllerIdByController(MediaRouteProvider.RouteController routeController) {
                int iIndexOfValue = this.mControllers.indexOfValue(routeController);
                if (iIndexOfValue < 0) {
                    return -1;
                }
                return this.mControllers.keyAt(iIndexOfValue);
            }
        }
    }
}
