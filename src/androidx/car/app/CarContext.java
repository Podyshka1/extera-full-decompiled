package androidx.car.app;

import android.content.ContextWrapper;
import androidx.car.app.IOnRequestPermissionsListener;
import androidx.view.Lifecycle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CarContext extends ContextWrapper {

    /* JADX INFO: renamed from: androidx.car.app.CarContext$1 */
    class BinderC03011 extends IOnRequestPermissionsListener.Stub {
        final /* synthetic */ CarContext this$0;
        final /* synthetic */ Executor val$executor;
        final /* synthetic */ Lifecycle val$lifecycle;
        final /* synthetic */ OnRequestPermissionsListener val$listener;

        public BinderC03011(CarContext carContext, Lifecycle lifecycle, Executor executor, OnRequestPermissionsListener onRequestPermissionsListener) {
            this.val$lifecycle = lifecycle;
            this.val$executor = executor;
        }

        @Override // androidx.car.app.IOnRequestPermissionsListener
        public void onRequestPermissionsResult(String[] strArr, String[] strArr2) {
            if (this.val$lifecycle.getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
                final List listAsList = Arrays.asList(strArr);
                final List listAsList2 = Arrays.asList(strArr2);
                final OnRequestPermissionsListener onRequestPermissionsListener = null;
                this.val$executor.execute(new Runnable(onRequestPermissionsListener, listAsList, listAsList2) { // from class: androidx.car.app.CarContext$1$$ExternalSyntheticLambda0
                    public final /* synthetic */ List f$1;
                    public final /* synthetic */ List f$2;

                    {
                        this.f$1 = listAsList;
                        this.f$2 = listAsList2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        ((OnRequestPermissionsListener) null).onRequestPermissionsResult(this.f$1, this.f$2);
                    }
                });
            }
        }
    }
}
