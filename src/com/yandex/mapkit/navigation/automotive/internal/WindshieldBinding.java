package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.navigation.automotive.UpcomingDirectionSign;
import com.yandex.mapkit.navigation.automotive.UpcomingLaneSign;
import com.yandex.mapkit.navigation.automotive.UpcomingManoeuvre;
import com.yandex.mapkit.navigation.automotive.UpcomingRoadEvent;
import com.yandex.mapkit.navigation.automotive.Windshield;
import com.yandex.mapkit.navigation.automotive.WindshieldListener;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class WindshieldBinding implements Windshield {
    private final NativeObject nativeObject;
    protected Subscription<WindshieldListener> windshieldListenerSubscription = new Subscription<WindshieldListener>() { // from class: com.yandex.mapkit.navigation.automotive.internal.WindshieldBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(WindshieldListener windshieldListener) {
            return WindshieldBinding.createWindshieldListener(windshieldListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createWindshieldListener(WindshieldListener windshieldListener);

    @Override // com.yandex.mapkit.navigation.automotive.Windshield
    public native void addListener(WindshieldListener windshieldListener);

    @Override // com.yandex.mapkit.navigation.automotive.Windshield
    public native List<UpcomingDirectionSign> getDirectionSigns();

    @Override // com.yandex.mapkit.navigation.automotive.Windshield
    public native List<UpcomingLaneSign> getLaneSigns();

    @Override // com.yandex.mapkit.navigation.automotive.Windshield
    public native List<UpcomingManoeuvre> getManoeuvres();

    @Override // com.yandex.mapkit.navigation.automotive.Windshield
    public native List<UpcomingRoadEvent> getRoadEvents();

    @Override // com.yandex.mapkit.navigation.automotive.Windshield
    public native boolean isValid();

    @Override // com.yandex.mapkit.navigation.automotive.Windshield
    public native void removeListener(WindshieldListener windshieldListener);

    public WindshieldBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
