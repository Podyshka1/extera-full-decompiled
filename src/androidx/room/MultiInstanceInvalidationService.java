package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationService;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MultiInstanceInvalidationService extends Service {
    private int maxClientId;
    private final Map clientNames = new LinkedHashMap();
    private final RemoteCallbackList callbackList = new RemoteCallbackList() { // from class: androidx.room.MultiInstanceInvalidationService$callbackList$1
        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(IMultiInstanceInvalidationCallback callback, Object cookie) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            Intrinsics.checkNotNullParameter(cookie, "cookie");
            this.this$0.getClientNames$room_runtime().remove((Integer) cookie);
        }
    };
    private final IMultiInstanceInvalidationService.Stub binder = new IMultiInstanceInvalidationService.Stub() { // from class: androidx.room.MultiInstanceInvalidationService$binder$1
        @Override // androidx.room.IMultiInstanceInvalidationService
        public int registerCallback(IMultiInstanceInvalidationCallback callback, String str) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            int i = 0;
            if (str == null) {
                return 0;
            }
            RemoteCallbackList callbackList$room_runtime = this.this$0.getCallbackList$room_runtime();
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
            synchronized (callbackList$room_runtime) {
                try {
                    multiInstanceInvalidationService.setMaxClientId$room_runtime(multiInstanceInvalidationService.getMaxClientId$room_runtime() + 1);
                    int maxClientId$room_runtime = multiInstanceInvalidationService.getMaxClientId$room_runtime();
                    if (multiInstanceInvalidationService.getCallbackList$room_runtime().register(callback, Integer.valueOf(maxClientId$room_runtime))) {
                        multiInstanceInvalidationService.getClientNames$room_runtime().put(Integer.valueOf(maxClientId$room_runtime), str);
                        i = maxClientId$room_runtime;
                    } else {
                        multiInstanceInvalidationService.setMaxClientId$room_runtime(multiInstanceInvalidationService.getMaxClientId$room_runtime() - 1);
                        multiInstanceInvalidationService.getMaxClientId$room_runtime();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return i;
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void unregisterCallback(IMultiInstanceInvalidationCallback callback, int i) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            RemoteCallbackList callbackList$room_runtime = this.this$0.getCallbackList$room_runtime();
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
            synchronized (callbackList$room_runtime) {
                multiInstanceInvalidationService.getCallbackList$room_runtime().unregister(callback);
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void broadcastInvalidation(int i, String[] tables) {
            Intrinsics.checkNotNullParameter(tables, "tables");
            RemoteCallbackList callbackList$room_runtime = this.this$0.getCallbackList$room_runtime();
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.this$0;
            synchronized (callbackList$room_runtime) {
                String str = (String) multiInstanceInvalidationService.getClientNames$room_runtime().get(Integer.valueOf(i));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int iBeginBroadcast = multiInstanceInvalidationService.getCallbackList$room_runtime().beginBroadcast();
                for (int i2 = 0; i2 < iBeginBroadcast; i2++) {
                    try {
                        Object broadcastCookie = multiInstanceInvalidationService.getCallbackList$room_runtime().getBroadcastCookie(i2);
                        Intrinsics.checkNotNull(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                        Integer num = (Integer) broadcastCookie;
                        int iIntValue = num.intValue();
                        String str2 = (String) multiInstanceInvalidationService.getClientNames$room_runtime().get(num);
                        if (i != iIntValue && Intrinsics.areEqual(str, str2)) {
                            try {
                                ((IMultiInstanceInvalidationCallback) multiInstanceInvalidationService.getCallbackList$room_runtime().getBroadcastItem(i2)).onInvalidation(tables);
                                Unit unit = Unit.INSTANCE;
                            } catch (RemoteException e) {
                                Log.w("ROOM", "Error invoking a remote callback", e);
                            }
                        }
                    } catch (Throwable th) {
                        multiInstanceInvalidationService.getCallbackList$room_runtime().finishBroadcast();
                        throw th;
                    }
                }
                multiInstanceInvalidationService.getCallbackList$room_runtime().finishBroadcast();
                Unit unit2 = Unit.INSTANCE;
            }
        }
    };

    public final int getMaxClientId$room_runtime() {
        return this.maxClientId;
    }

    public final void setMaxClientId$room_runtime(int i) {
        this.maxClientId = i;
    }

    public final Map getClientNames$room_runtime() {
        return this.clientNames;
    }

    public final RemoteCallbackList getCallbackList$room_runtime() {
        return this.callbackList;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return this.binder;
    }
}
