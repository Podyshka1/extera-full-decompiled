package androidx.car.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface IOnRequestPermissionsListener extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$IOnRequestPermissionsListener".replace(Typography.dollar, '.');

    public static class Default implements IOnRequestPermissionsListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.IOnRequestPermissionsListener
        public void onRequestPermissionsResult(String[] strArr, String[] strArr2) {
        }
    }

    void onRequestPermissionsResult(String[] strArr, String[] strArr2);

    public static abstract class Stub extends Binder implements IOnRequestPermissionsListener {
        static final int TRANSACTION_onRequestPermissionsResult = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IOnRequestPermissionsListener.DESCRIPTOR);
        }

        public static IOnRequestPermissionsListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IOnRequestPermissionsListener.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IOnRequestPermissionsListener)) {
                return (IOnRequestPermissionsListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IOnRequestPermissionsListener.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                onRequestPermissionsResult(parcel.createStringArray(), parcel.createStringArray());
                parcel2.writeNoException();
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        public static class Proxy implements IOnRequestPermissionsListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOnRequestPermissionsListener.DESCRIPTOR;
            }

            @Override // androidx.car.app.IOnRequestPermissionsListener
            public void onRequestPermissionsResult(String[] strArr, String[] strArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOnRequestPermissionsListener.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeStringArray(strArr2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
