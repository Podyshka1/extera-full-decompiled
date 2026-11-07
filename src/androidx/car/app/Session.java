package androidx.car.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import androidx.view.DefaultLifecycleObserver;
import androidx.view.Lifecycle;
import androidx.view.LifecycleObserver;
import androidx.view.LifecycleOwner;
import androidx.view.LifecycleRegistry;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Session implements LifecycleOwner {
    private CarContext mCarContext;
    private final LifecycleObserver mLifecycleObserver;
    private LifecycleRegistry mRegistry;
    final LifecycleRegistry mRegistryPublic;

    public void onCarConfigurationChanged(Configuration configuration) {
    }

    public abstract Screen onCreateScreen(Intent intent);

    public void onNewIntent(Intent intent) {
    }

    public Session() {
        LifecycleObserverImpl lifecycleObserverImpl = new LifecycleObserverImpl();
        this.mLifecycleObserver = lifecycleObserverImpl;
        this.mRegistry = new LifecycleRegistry(this);
        this.mRegistryPublic = new LifecycleRegistry(this);
        this.mRegistry.addObserver(lifecycleObserverImpl);
        this.mCarContext = CarContext.create(this.mRegistry);
    }

    @Override // androidx.view.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.mRegistryPublic;
    }

    public void handleLifecycleEvent(Lifecycle.Event event) {
        this.mRegistry.handleLifecycleEvent(event);
    }

    public final CarContext getCarContext() {
        CarContext carContext = this.mCarContext;
        Objects.requireNonNull(carContext);
        return carContext;
    }

    public void configure(Context context, HandshakeInfo handshakeInfo, HostInfo hostInfo, ICarHost iCarHost, Configuration configuration) {
        this.mCarContext.updateHandshakeInfo(handshakeInfo);
        this.mCarContext.updateHostInfo(hostInfo);
        this.mCarContext.attachBaseContext(context, configuration);
        this.mCarContext.setCarHost(iCarHost);
    }

    public void onCarConfigurationChangedInternal(Configuration configuration) {
        this.mCarContext.onCarConfigurationChanged(configuration);
        onCarConfigurationChanged(this.mCarContext.getResources().getConfiguration());
    }

    public class LifecycleObserverImpl implements DefaultLifecycleObserver {
        public LifecycleObserverImpl() {
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onCreate(LifecycleOwner lifecycleOwner) {
            Session.this.mRegistryPublic.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onStart(LifecycleOwner lifecycleOwner) {
            Session.this.mRegistryPublic.handleLifecycleEvent(Lifecycle.Event.ON_START);
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onResume(LifecycleOwner lifecycleOwner) {
            Session.this.mRegistryPublic.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onPause(LifecycleOwner lifecycleOwner) {
            Session.this.mRegistryPublic.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onStop(LifecycleOwner lifecycleOwner) {
            Session.this.mRegistryPublic.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        }

        @Override // androidx.view.DefaultLifecycleObserver
        public void onDestroy(LifecycleOwner lifecycleOwner) {
            Session.this.mRegistryPublic.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }
}
