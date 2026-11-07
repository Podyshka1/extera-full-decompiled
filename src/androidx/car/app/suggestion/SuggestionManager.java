package androidx.car.app.suggestion;

import androidx.car.app.CarContext;
import androidx.car.app.HostDispatcher;
import androidx.car.app.managers.Manager;
import androidx.view.DefaultLifecycleObserver;
import androidx.view.Lifecycle;
import androidx.view.LifecycleOwner;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class SuggestionManager implements Manager {
    private final HostDispatcher mHostDispatcher;

    public static SuggestionManager create(CarContext carContext, HostDispatcher hostDispatcher, Lifecycle lifecycle) {
        Objects.requireNonNull(carContext);
        Objects.requireNonNull(hostDispatcher);
        Objects.requireNonNull(lifecycle);
        return new SuggestionManager(carContext, hostDispatcher, lifecycle);
    }

    public SuggestionManager(CarContext carContext, HostDispatcher hostDispatcher, final Lifecycle lifecycle) {
        Objects.requireNonNull(carContext);
        Objects.requireNonNull(hostDispatcher);
        this.mHostDispatcher = hostDispatcher;
        lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: androidx.car.app.suggestion.SuggestionManager.1
            @Override // androidx.view.DefaultLifecycleObserver
            public void onDestroy(LifecycleOwner lifecycleOwner) {
                lifecycle.removeObserver(this);
            }
        });
    }
}
