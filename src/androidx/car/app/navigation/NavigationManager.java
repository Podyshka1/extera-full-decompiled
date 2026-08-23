package androidx.car.app.navigation;

import androidx.car.app.IOnDoneCallback;
import androidx.car.app.navigation.INavigationManager;
import androidx.car.app.navigation.NavigationManager;
import androidx.car.app.utils.RemoteUtils;
import androidx.view.Lifecycle;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NavigationManager {

    /* JADX INFO: renamed from: androidx.car.app.navigation.NavigationManager$1 */
    class BinderC03171 extends INavigationManager.Stub {
        final /* synthetic */ NavigationManager this$0;
        final /* synthetic */ Lifecycle val$lifecycle;

        public BinderC03171(NavigationManager navigationManager, Lifecycle lifecycle) {
            this.val$lifecycle = lifecycle;
        }

        @Override // androidx.car.app.navigation.INavigationManager
        public void onStopNavigation(IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(this.val$lifecycle, iOnDoneCallback, "onStopNavigation", new RemoteUtils.HostCall() { // from class: androidx.car.app.navigation.NavigationManager$1$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return NavigationManager.BinderC03171.$r8$lambda$GO2OrYvvWaXZTH1XkmNcVUSxmKU(this.f$0);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$GO2OrYvvWaXZTH1XkmNcVUSxmKU(BinderC03171 binderC03171) {
            binderC03171.getClass();
            throw null;
        }
    }
}
