package androidx.car.app.navigation.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface IPanModeListener extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$navigation$model$IPanModeListener".replace(Typography.dollar, '.');

    public static class Default implements IPanModeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.navigation.model.IPanModeListener
        public void onPanModeChanged(boolean z, IOnDoneCallback iOnDoneCallback) {
        }
    }

    void onPanModeChanged(boolean z, IOnDoneCallback iOnDoneCallback);

    public static abstract class Stub extends Binder implements IPanModeListener {
        static final int TRANSACTION_onPanModeChanged = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IPanModeListener.DESCRIPTOR);
        }

        public static IPanModeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IPanModeListener.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IPanModeListener)) {
                return (IPanModeListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IPanModeListener.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                onPanModeChanged(parcel.readInt() != 0, IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        public static class Proxy implements IPanModeListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IPanModeListener.DESCRIPTOR;
            }

            @Override // androidx.car.app.navigation.model.IPanModeListener
            public void onPanModeChanged(boolean z, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IPanModeListener.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
