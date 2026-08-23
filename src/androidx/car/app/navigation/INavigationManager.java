package androidx.car.app.navigation;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface INavigationManager extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$navigation$INavigationManager".replace(Typography.dollar, '.');

    public static class Default implements INavigationManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.navigation.INavigationManager
        public void onStopNavigation(IOnDoneCallback iOnDoneCallback) {
        }
    }

    void onStopNavigation(IOnDoneCallback iOnDoneCallback);

    public static abstract class Stub extends Binder implements INavigationManager {
        static final int TRANSACTION_onStopNavigation = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, INavigationManager.DESCRIPTOR);
        }

        public static INavigationManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(INavigationManager.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof INavigationManager)) {
                return (INavigationManager) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = INavigationManager.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                onStopNavigation(IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        public static class Proxy implements INavigationManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return INavigationManager.DESCRIPTOR;
            }

            @Override // androidx.car.app.navigation.INavigationManager
            public void onStopNavigation(IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(INavigationManager.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
