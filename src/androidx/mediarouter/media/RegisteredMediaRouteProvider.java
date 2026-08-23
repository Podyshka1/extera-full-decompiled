package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
final class RegisteredMediaRouteProvider extends MediaRouteProvider implements ServiceConnection {
    static final boolean DEBUG = false;
    static final String TAG = "MediaRouteProviderProxy";
    private Connection mActiveConnection;
    private boolean mBound;
    private final ComponentName mComponentName;
    private boolean mConnectionReady;
    private ControllerCallback mControllerCallback;
    private final ArrayList<ControllerConnection> mControllerConnections;
    final PrivateHandler mPrivateHandler;
    private boolean mStarted;

    public interface ControllerCallback {
        void onControllerReleasedByProvider(MediaRouteProvider.RouteController routeController);
    }

    public interface ControllerConnection {
        void attachConnection(Connection connection);

        void detachConnection();

        int getControllerId();
    }

    public static final class PrivateHandler extends Handler {
    }

    static {
        Log.isLoggable("MediaRouteProviderProxy", 3);
    }

    public RegisteredMediaRouteProvider(Context context, ComponentName componentName) {
        super(context, new MediaRouteProvider.ProviderMetadata(componentName));
        this.mControllerConnections = new ArrayList<>();
        this.mComponentName = componentName;
        this.mPrivateHandler = new PrivateHandler();
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.RouteController onCreateRouteController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("routeId cannot be null");
            return null;
        }
        return createRouteController(str, null, routeControllerOptions);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.RouteController onCreateRouteController(String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("routeId cannot be null");
            return null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("routeGroupId cannot be null");
            return null;
        }
        return createRouteController(str, str2, MediaRouteProvider.RouteControllerOptions.EMPTY);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.DynamicGroupRouteController onCreateDynamicGroupRouteController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("initialMemberRouteId cannot be null.");
            return null;
        }
        return createDynamicGroupRouteController(str, routeControllerOptions);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        if (this.mConnectionReady) {
            this.mActiveConnection.setDiscoveryRequest(mediaRouteDiscoveryRequest);
        }
        updateBinding();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.mBound) {
            disconnect();
            Messenger messenger = iBinder != null ? new Messenger(iBinder) : null;
            if (MediaRouteProviderProtocol.isValidRemoteMessenger(messenger)) {
                Connection connection = new Connection(messenger);
                if (connection.register()) {
                    this.mActiveConnection = connection;
                    return;
                }
                return;
            }
            Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        disconnect();
    }

    public String toString() {
        return "Service connection " + this.mComponentName.flattenToShortString();
    }

    public boolean hasComponentName(String str, String str2) {
        return this.mComponentName.getPackageName().equals(str) && this.mComponentName.getClassName().equals(str2);
    }

    public void start() {
        if (this.mStarted) {
            return;
        }
        this.mStarted = true;
        updateBinding();
    }

    public void stop() {
        if (this.mStarted) {
            this.mStarted = false;
            updateBinding();
        }
    }

    public void rebindIfDisconnected() {
        if (this.mActiveConnection == null && shouldBind()) {
            unbind();
            bind();
        }
    }

    public void setControllerCallback(ControllerCallback controllerCallback) {
        this.mControllerCallback = controllerCallback;
    }

    private void updateBinding() {
        if (shouldBind()) {
            bind();
        } else {
            unbind();
        }
    }

    private boolean shouldBind() {
        if (this.mStarted) {
            return (getDiscoveryRequest() == null && this.mControllerConnections.isEmpty()) ? false : true;
        }
        return false;
    }

    private void bind() {
        if (this.mBound) {
            return;
        }
        Intent intent = new Intent(MediaRouteProviderProtocol.SERVICE_INTERFACE);
        intent.setComponent(this.mComponentName);
        try {
            this.mBound = getContext().bindService(intent, this, Build.VERSION.SDK_INT >= 29 ? 4097 : 1);
        } catch (SecurityException unused) {
        }
    }

    private void unbind() {
        if (this.mBound) {
            this.mBound = false;
            disconnect();
            try {
                getContext().unbindService(this);
            } catch (IllegalArgumentException e) {
                Log.e("MediaRouteProviderProxy", this + ": unbindService failed", e);
            }
        }
    }

    private MediaRouteProvider.RouteController createRouteController(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        MediaRouteProviderDescriptor descriptor = getDescriptor();
        if (descriptor == null) {
            return null;
        }
        List<MediaRouteDescriptor> routes = descriptor.getRoutes();
        int size = routes.size();
        for (int i = 0; i < size; i++) {
            if (routes.get(i).getId().equals(str)) {
                RegisteredRouteController registeredRouteController = new RegisteredRouteController(str, str2, routeControllerOptions);
                this.mControllerConnections.add(registeredRouteController);
                if (this.mConnectionReady) {
                    registeredRouteController.attachConnection(this.mActiveConnection);
                }
                updateBinding();
                return registeredRouteController;
            }
        }
        return null;
    }

    private MediaRouteProvider.DynamicGroupRouteController createDynamicGroupRouteController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        MediaRouteProviderDescriptor descriptor = getDescriptor();
        if (descriptor == null) {
            return null;
        }
        List<MediaRouteDescriptor> routes = descriptor.getRoutes();
        int size = routes.size();
        for (int i = 0; i < size; i++) {
            if (routes.get(i).getId().equals(str)) {
                RegisteredDynamicController registeredDynamicController = new RegisteredDynamicController(str, routeControllerOptions);
                this.mControllerConnections.add(registeredDynamicController);
                if (this.mConnectionReady) {
                    registeredDynamicController.attachConnection(this.mActiveConnection);
                }
                updateBinding();
                return registeredDynamicController;
            }
        }
        return null;
    }

    public void onConnectionReady(Connection connection) {
        if (this.mActiveConnection == connection) {
            this.mConnectionReady = true;
            attachControllersToConnection();
            MediaRouteDiscoveryRequest discoveryRequest = getDiscoveryRequest();
            if (discoveryRequest != null) {
                this.mActiveConnection.setDiscoveryRequest(discoveryRequest);
            }
        }
    }

    public void onConnectionDied(Connection connection) {
        if (this.mActiveConnection == connection) {
            disconnect();
        }
    }

    public void onConnectionError(Connection connection, String str) {
        if (this.mActiveConnection == connection) {
            unbind();
        }
    }

    public void onConnectionDescriptorChanged(Connection connection, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        if (this.mActiveConnection == connection) {
            setDescriptor(mediaRouteProviderDescriptor);
        }
    }

    public void onDynamicRouteDescriptorChanged(Connection connection, int i, MediaRouteDescriptor mediaRouteDescriptor, List<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> list) {
        if (this.mActiveConnection == connection) {
            ControllerConnection controllerConnectionFindControllerById = findControllerById(i);
            if (controllerConnectionFindControllerById instanceof RegisteredDynamicController) {
                ((RegisteredDynamicController) controllerConnectionFindControllerById).onDynamicRoutesChanged(mediaRouteDescriptor, list);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onConnectionControllerReleasedByProvider(Connection connection, int i) {
        if (this.mActiveConnection == connection) {
            ControllerConnection controllerConnectionFindControllerById = findControllerById(i);
            ControllerCallback controllerCallback = this.mControllerCallback;
            if (controllerCallback != null && (controllerConnectionFindControllerById instanceof MediaRouteProvider.RouteController)) {
                controllerCallback.onControllerReleasedByProvider((MediaRouteProvider.RouteController) controllerConnectionFindControllerById);
            }
            if (controllerConnectionFindControllerById != 0) {
                onControllerReleased(controllerConnectionFindControllerById);
            }
        }
    }

    private ControllerConnection findControllerById(int i) {
        ArrayList<ControllerConnection> arrayList = this.mControllerConnections;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            ControllerConnection controllerConnection = arrayList.get(i2);
            i2++;
            ControllerConnection controllerConnection2 = controllerConnection;
            if (controllerConnection2.getControllerId() == i) {
                return controllerConnection2;
            }
        }
        return null;
    }

    private void disconnect() {
        if (this.mActiveConnection != null) {
            setDescriptor(null);
            this.mConnectionReady = false;
            detachControllersFromConnection();
            this.mActiveConnection.dispose();
            this.mActiveConnection = null;
        }
    }

    public void onControllerReleased(ControllerConnection controllerConnection) {
        this.mControllerConnections.remove(controllerConnection);
        controllerConnection.detachConnection();
        updateBinding();
    }

    private void attachControllersToConnection() {
        int size = this.mControllerConnections.size();
        for (int i = 0; i < size; i++) {
            this.mControllerConnections.get(i).attachConnection(this.mActiveConnection);
        }
    }

    private void detachControllersFromConnection() {
        int size = this.mControllerConnections.size();
        for (int i = 0; i < size; i++) {
            this.mControllerConnections.get(i).detachConnection();
        }
    }

    public final class RegisteredDynamicController extends MediaRouteProvider.DynamicGroupRouteController implements ControllerConnection {
        private Connection mConnection;
        String mGroupableSectionTitle;
        private final String mInitialMemberRouteId;
        private int mPendingUpdateVolumeDelta;
        private final MediaRouteProvider.RouteControllerOptions mRouteControllerOptions;
        private boolean mSelected;
        String mTransferableSectionTitle;
        private int mPendingSetVolume = -1;
        private int mControllerId = -1;

        public RegisteredDynamicController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            this.mInitialMemberRouteId = str;
            this.mRouteControllerOptions = routeControllerOptions;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public int getControllerId() {
            return this.mControllerId;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public void attachConnection(Connection connection) {
            MediaRouter.ControlRequestCallback controlRequestCallback = new MediaRouter.ControlRequestCallback() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProvider.RegisteredDynamicController.1
                @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                public void onResult(Bundle bundle) {
                    RegisteredDynamicController.this.mGroupableSectionTitle = bundle.getString(MediaRouteProviderProtocol.DATA_KEY_GROUPABLE_SECTION_TITLE);
                    RegisteredDynamicController.this.mTransferableSectionTitle = bundle.getString(MediaRouteProviderProtocol.DATA_KEY_TRANSFERABLE_SECTION_TITLE);
                }

                @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                public void onError(String str, Bundle bundle) {
                    Log.d("MediaRouteProviderProxy", "Error: " + str + ", data: " + bundle);
                }
            };
            this.mConnection = connection;
            int iCreateDynamicGroupRouteController = connection.createDynamicGroupRouteController(this.mInitialMemberRouteId, this.mRouteControllerOptions, controlRequestCallback);
            this.mControllerId = iCreateDynamicGroupRouteController;
            if (this.mSelected) {
                connection.selectRoute(iCreateDynamicGroupRouteController);
                int i = this.mPendingSetVolume;
                if (i >= 0) {
                    connection.setVolume(this.mControllerId, i);
                    this.mPendingSetVolume = -1;
                }
                int i2 = this.mPendingUpdateVolumeDelta;
                if (i2 != 0) {
                    connection.updateVolume(this.mControllerId, i2);
                    this.mPendingUpdateVolumeDelta = 0;
                }
            }
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public void detachConnection() {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.releaseRouteController(this.mControllerId);
                this.mConnection = null;
                this.mControllerId = 0;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onRelease() {
            RegisteredMediaRouteProvider.this.onControllerReleased(this);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSelect() {
            this.mSelected = true;
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.selectRoute(this.mControllerId);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUnselect() {
            onUnselect(0);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUnselect(int i) {
            this.mSelected = false;
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.unselectRoute(this.mControllerId, i);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSetVolume(int i) {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.setVolume(this.mControllerId, i);
            } else {
                this.mPendingSetVolume = i;
                this.mPendingUpdateVolumeDelta = 0;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUpdateVolume(int i) {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.updateVolume(this.mControllerId, i);
            } else {
                this.mPendingUpdateVolumeDelta += i;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public boolean onControlRequest(Intent intent, MediaRouter.ControlRequestCallback controlRequestCallback) {
            Connection connection = this.mConnection;
            if (connection != null) {
                return connection.sendControlRequest(this.mControllerId, intent, controlRequestCallback);
            }
            return false;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public String getGroupableSelectionTitle() {
            return this.mGroupableSectionTitle;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public String getTransferableSectionTitle() {
            return this.mTransferableSectionTitle;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onUpdateMemberRoutes(List<String> list) {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.updateMemberRoutes(this.mControllerId, list);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onAddMemberRoute(String str) {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.addMemberRoute(this.mControllerId, str);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onRemoveMemberRoute(String str) {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.removeMemberRoute(this.mControllerId, str);
            }
        }

        public void onDynamicRoutesChanged(MediaRouteDescriptor mediaRouteDescriptor, List<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> list) {
            notifyDynamicRoutesChanged(mediaRouteDescriptor, list);
        }
    }

    public final class RegisteredRouteController extends MediaRouteProvider.RouteController implements ControllerConnection {
        private Connection mConnection;
        private int mControllerId;
        private int mPendingSetVolume = -1;
        private int mPendingUpdateVolumeDelta;
        private final MediaRouteProvider.RouteControllerOptions mRouteControllerOptions;
        private final String mRouteGroupId;
        private final String mRouteId;
        private boolean mSelected;

        public RegisteredRouteController(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            this.mRouteId = str;
            this.mRouteGroupId = str2;
            this.mRouteControllerOptions = routeControllerOptions;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public int getControllerId() {
            return this.mControllerId;
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public void attachConnection(Connection connection) {
            this.mConnection = connection;
            int iCreateRouteController = connection.createRouteController(this.mRouteId, this.mRouteGroupId, this.mRouteControllerOptions);
            this.mControllerId = iCreateRouteController;
            if (this.mSelected) {
                connection.selectRoute(iCreateRouteController);
                int i = this.mPendingSetVolume;
                if (i >= 0) {
                    connection.setVolume(this.mControllerId, i);
                    this.mPendingSetVolume = -1;
                }
                int i2 = this.mPendingUpdateVolumeDelta;
                if (i2 != 0) {
                    connection.updateVolume(this.mControllerId, i2);
                    this.mPendingUpdateVolumeDelta = 0;
                }
            }
        }

        @Override // androidx.mediarouter.media.RegisteredMediaRouteProvider.ControllerConnection
        public void detachConnection() {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.releaseRouteController(this.mControllerId);
                this.mConnection = null;
                this.mControllerId = 0;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onRelease() {
            RegisteredMediaRouteProvider.this.onControllerReleased(this);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSelect() {
            this.mSelected = true;
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.selectRoute(this.mControllerId);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUnselect() {
            onUnselect(0);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUnselect(int i) {
            this.mSelected = false;
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.unselectRoute(this.mControllerId, i);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSetVolume(int i) {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.setVolume(this.mControllerId, i);
            } else {
                this.mPendingSetVolume = i;
                this.mPendingUpdateVolumeDelta = 0;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUpdateVolume(int i) {
            Connection connection = this.mConnection;
            if (connection != null) {
                connection.updateVolume(this.mControllerId, i);
            } else {
                this.mPendingUpdateVolumeDelta += i;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public boolean onControlRequest(Intent intent, MediaRouter.ControlRequestCallback controlRequestCallback) {
            Connection connection = this.mConnection;
            if (connection != null) {
                return connection.sendControlRequest(this.mControllerId, intent, controlRequestCallback);
            }
            return false;
        }
    }

    public final class Connection implements IBinder.DeathRecipient {
        private int mPendingRegisterRequestId;
        private final ReceiveHandler mReceiveHandler;
        private final Messenger mReceiveMessenger;
        private final Messenger mServiceMessenger;
        private int mServiceVersion;
        private int mNextRequestId = 1;
        private int mNextControllerId = 1;
        private final SparseArray<MediaRouter.ControlRequestCallback> mPendingCallbacks = new SparseArray<>();

        public Connection(Messenger messenger) {
            this.mServiceMessenger = messenger;
            ReceiveHandler receiveHandler = new ReceiveHandler(this);
            this.mReceiveHandler = receiveHandler;
            this.mReceiveMessenger = new Messenger(receiveHandler);
        }

        public boolean register() {
            int i = this.mNextRequestId;
            this.mNextRequestId = i + 1;
            this.mPendingRegisterRequestId = i;
            if (!sendRequest(1, i, 4, null, null)) {
                return false;
            }
            try {
                this.mServiceMessenger.getBinder().linkToDeath(this, 0);
                return true;
            } catch (RemoteException unused) {
                binderDied();
                return false;
            }
        }

        public void dispose() {
            sendRequest(2, 0, 0, null, null);
            this.mReceiveHandler.dispose();
            this.mServiceMessenger.getBinder().unlinkToDeath(this, 0);
            RegisteredMediaRouteProvider.this.mPrivateHandler.post(new Runnable() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProvider.Connection.1
                @Override // java.lang.Runnable
                public void run() {
                    Connection.this.failPendingCallbacks();
                }
            });
        }

        public void failPendingCallbacks() {
            int size = this.mPendingCallbacks.size();
            int i = 0;
            while (true) {
                SparseArray<MediaRouter.ControlRequestCallback> sparseArray = this.mPendingCallbacks;
                if (i < size) {
                    sparseArray.valueAt(i).onError(null, null);
                    i++;
                } else {
                    sparseArray.clear();
                    return;
                }
            }
        }

        public void onGenericFailure(int i) {
            if (i == this.mPendingRegisterRequestId) {
                this.mPendingRegisterRequestId = 0;
                RegisteredMediaRouteProvider.this.onConnectionError(this, "Registration failed");
            }
            MediaRouter.ControlRequestCallback controlRequestCallback = this.mPendingCallbacks.get(i);
            if (controlRequestCallback != null) {
                this.mPendingCallbacks.remove(i);
                controlRequestCallback.onError(null, null);
            }
        }

        public boolean onRegistered(int i, int i2, Bundle bundle) {
            if (this.mServiceVersion != 0 || i != this.mPendingRegisterRequestId || i2 < 1) {
                return false;
            }
            this.mPendingRegisterRequestId = 0;
            this.mServiceVersion = i2;
            RegisteredMediaRouteProvider.this.onConnectionDescriptorChanged(this, MediaRouteProviderDescriptor.fromBundle(bundle));
            RegisteredMediaRouteProvider.this.onConnectionReady(this);
            return true;
        }

        public boolean onDescriptorChanged(Bundle bundle) {
            if (this.mServiceVersion == 0) {
                return false;
            }
            RegisteredMediaRouteProvider.this.onConnectionDescriptorChanged(this, MediaRouteProviderDescriptor.fromBundle(bundle));
            return true;
        }

        public boolean onDynamicRouteDescriptorsChanged(int i, Bundle bundle) {
            int i2 = 0;
            if (this.mServiceVersion == 0) {
                return false;
            }
            Bundle bundle2 = (Bundle) bundle.getParcelable(MediaRouteProviderProtocol.DATA_KEY_GROUP_ROUTE_DESCRIPTOR);
            MediaRouteDescriptor mediaRouteDescriptorFromBundle = bundle2 != null ? MediaRouteDescriptor.fromBundle(bundle2) : null;
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(MediaRouteProviderProtocol.DATA_KEY_DYNAMIC_ROUTE_DESCRIPTORS);
            ArrayList arrayList = new ArrayList();
            int size = parcelableArrayList.size();
            while (i2 < size) {
                Object obj = parcelableArrayList.get(i2);
                i2++;
                arrayList.add(MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor.fromBundle((Bundle) obj));
            }
            RegisteredMediaRouteProvider.this.onDynamicRouteDescriptorChanged(this, i, mediaRouteDescriptorFromBundle, arrayList);
            return true;
        }

        public boolean onControlRequestSucceeded(int i, Bundle bundle) {
            MediaRouter.ControlRequestCallback controlRequestCallback = this.mPendingCallbacks.get(i);
            if (controlRequestCallback == null) {
                return false;
            }
            this.mPendingCallbacks.remove(i);
            controlRequestCallback.onResult(bundle);
            return true;
        }

        public boolean onControlRequestFailed(int i, String str, Bundle bundle) {
            MediaRouter.ControlRequestCallback controlRequestCallback = this.mPendingCallbacks.get(i);
            if (controlRequestCallback == null) {
                return false;
            }
            this.mPendingCallbacks.remove(i);
            controlRequestCallback.onError(str, bundle);
            return true;
        }

        public void onDynamicGroupRouteControllerCreated(int i, Bundle bundle) {
            MediaRouter.ControlRequestCallback controlRequestCallback = this.mPendingCallbacks.get(i);
            if (bundle != null && bundle.containsKey(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID)) {
                this.mPendingCallbacks.remove(i);
                controlRequestCallback.onResult(bundle);
            } else {
                controlRequestCallback.onError("DynamicGroupRouteController is created without valid route id.", bundle);
            }
        }

        public void onControllerReleasedByProvider(int i) {
            RegisteredMediaRouteProvider.this.onConnectionControllerReleasedByProvider(this, i);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            RegisteredMediaRouteProvider.this.mPrivateHandler.post(new Runnable() { // from class: androidx.mediarouter.media.RegisteredMediaRouteProvider.Connection.2
                @Override // java.lang.Runnable
                public void run() {
                    Connection connection = Connection.this;
                    RegisteredMediaRouteProvider.this.onConnectionDied(connection);
                }
            });
        }

        public int createRouteController(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            int i = this.mNextControllerId;
            this.mNextControllerId = i + 1;
            Bundle bundle = new Bundle();
            bundle.putString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID, str);
            bundle.putString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_LIBRARY_GROUP, str2);
            bundle.putParcelable(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_CONTROLLER_OPTIONS, routeControllerOptions.asBundle());
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            sendRequest(3, i2, i, null, bundle);
            return i;
        }

        public int createDynamicGroupRouteController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions, MediaRouter.ControlRequestCallback controlRequestCallback) {
            int i = this.mNextControllerId;
            this.mNextControllerId = i + 1;
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            Bundle bundle = new Bundle();
            bundle.putString(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_ID, str);
            bundle.putParcelable(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_CONTROLLER_OPTIONS, routeControllerOptions.asBundle());
            sendRequest(11, i2, i, null, bundle);
            this.mPendingCallbacks.put(i2, controlRequestCallback);
            return i;
        }

        public void releaseRouteController(int i) {
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            sendRequest(4, i2, i, null, null);
        }

        public void selectRoute(int i) {
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            sendRequest(5, i2, i, null, null);
        }

        public void unselectRoute(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaRouteProviderProtocol.CLIENT_DATA_UNSELECT_REASON, i2);
            int i3 = this.mNextRequestId;
            this.mNextRequestId = i3 + 1;
            sendRequest(6, i3, i, null, bundle);
        }

        public void setVolume(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, i2);
            int i3 = this.mNextRequestId;
            this.mNextRequestId = i3 + 1;
            sendRequest(7, i3, i, null, bundle);
        }

        public void updateVolume(int i, int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, i2);
            int i3 = this.mNextRequestId;
            this.mNextRequestId = i3 + 1;
            sendRequest(8, i3, i, null, bundle);
        }

        public boolean sendControlRequest(int i, Intent intent, MediaRouter.ControlRequestCallback controlRequestCallback) {
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            if (!sendRequest(9, i2, i, intent, null)) {
                return false;
            }
            if (controlRequestCallback == null) {
                return true;
            }
            this.mPendingCallbacks.put(i2, controlRequestCallback);
            return true;
        }

        public void updateMemberRoutes(int i, List<String> list) {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_IDS, new ArrayList<>(list));
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            sendRequest(14, i2, i, null, bundle);
        }

        public void addMemberRoute(int i, String str) {
            Bundle bundle = new Bundle();
            bundle.putString(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_ID, str);
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            sendRequest(12, i2, i, null, bundle);
        }

        public void removeMemberRoute(int i, String str) {
            Bundle bundle = new Bundle();
            bundle.putString(MediaRouteProviderProtocol.CLIENT_DATA_MEMBER_ROUTE_ID, str);
            int i2 = this.mNextRequestId;
            this.mNextRequestId = i2 + 1;
            sendRequest(13, i2, i, null, bundle);
        }

        public void setDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            int i = this.mNextRequestId;
            this.mNextRequestId = i + 1;
            sendRequest(10, i, 0, mediaRouteDiscoveryRequest != null ? mediaRouteDiscoveryRequest.asBundle() : null, null);
        }

        private boolean sendRequest(int i, int i2, int i3, Object obj, Bundle bundle) {
            Message messageObtain = Message.obtain();
            messageObtain.what = i;
            messageObtain.arg1 = i2;
            messageObtain.arg2 = i3;
            messageObtain.obj = obj;
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.mReceiveMessenger;
            try {
                this.mServiceMessenger.send(messageObtain);
                return true;
            } catch (DeadObjectException unused) {
                return false;
            } catch (RemoteException e) {
                if (i == 2) {
                    return false;
                }
                Log.e("MediaRouteProviderProxy", "Could not send message to service.", e);
                return false;
            }
        }
    }

    public static final class ReceiveHandler extends Handler {
        private final WeakReference<Connection> mConnectionRef;

        public ReceiveHandler(Connection connection) {
            this.mConnectionRef = new WeakReference<>(connection);
        }

        public void dispose() {
            this.mConnectionRef.clear();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Connection connection = this.mConnectionRef.get();
            if (connection == null || processMessage(connection, message.what, message.arg1, message.arg2, message.obj, message.peekData())) {
                return;
            }
            String str = RegisteredMediaRouteProvider.TAG;
        }

        private boolean processMessage(Connection connection, int i, int i2, int i3, Object obj, Bundle bundle) {
            switch (i) {
                case 0:
                    connection.onGenericFailure(i2);
                    return true;
                case 1:
                    return true;
                case 2:
                    if (obj == null || (obj instanceof Bundle)) {
                        return connection.onRegistered(i2, i3, (Bundle) obj);
                    }
                    return false;
                case 3:
                    if (obj == null || (obj instanceof Bundle)) {
                        return connection.onControlRequestSucceeded(i2, (Bundle) obj);
                    }
                    return false;
                case 4:
                    if (obj == null || (obj instanceof Bundle)) {
                        return connection.onControlRequestFailed(i2, bundle == null ? null : bundle.getString(MediaRouteProviderProtocol.SERVICE_DATA_ERROR), (Bundle) obj);
                    }
                    return false;
                case 5:
                    if (obj == null || (obj instanceof Bundle)) {
                        return connection.onDescriptorChanged((Bundle) obj);
                    }
                    return false;
                case 6:
                    if (obj instanceof Bundle) {
                        connection.onDynamicGroupRouteControllerCreated(i2, (Bundle) obj);
                        return false;
                    }
                    Log.w("MediaRouteProviderProxy", "No further information on the dynamic group controller");
                    return false;
                case 7:
                    if (obj == null || (obj instanceof Bundle)) {
                        return connection.onDynamicRouteDescriptorsChanged(i3, (Bundle) obj);
                    }
                    return false;
                case 8:
                    connection.onControllerReleasedByProvider(i3);
                    return false;
                default:
                    return false;
            }
        }
    }
}
