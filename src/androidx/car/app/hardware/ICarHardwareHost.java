package androidx.car.app.hardware;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.car.app.hardware.ICarHardwareResult;
import androidx.car.app.serialization.Bundleable;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface ICarHardwareHost extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$hardware$ICarHardwareHost".replace(Typography.dollar, '.');

    public static class Default implements ICarHardwareHost {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.hardware.ICarHardwareHost
        public void getCarHardwareResult(int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult) {
        }

        @Override // androidx.car.app.hardware.ICarHardwareHost
        public void subscribeCarHardwareResult(int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult) {
        }

        @Override // androidx.car.app.hardware.ICarHardwareHost
        public void unsubscribeCarHardwareResult(int i, Bundleable bundleable) {
        }
    }

    void getCarHardwareResult(int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult);

    void subscribeCarHardwareResult(int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult);

    void unsubscribeCarHardwareResult(int i, Bundleable bundleable);

    public static abstract class Stub extends Binder implements ICarHardwareHost {
        static final int TRANSACTION_getCarHardwareResult = 2;
        static final int TRANSACTION_subscribeCarHardwareResult = 3;
        static final int TRANSACTION_unsubscribeCarHardwareResult = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ICarHardwareHost.DESCRIPTOR);
        }

        public static ICarHardwareHost asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ICarHardwareHost.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarHardwareHost)) {
                return (ICarHardwareHost) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = ICarHardwareHost.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                getCarHardwareResult(parcel.readInt(), (Bundleable) _Parcel.readTypedObject(parcel, Bundleable.CREATOR), ICarHardwareResult.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 3) {
                subscribeCarHardwareResult(parcel.readInt(), (Bundleable) _Parcel.readTypedObject(parcel, Bundleable.CREATOR), ICarHardwareResult.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 4) {
                unsubscribeCarHardwareResult(parcel.readInt(), (Bundleable) _Parcel.readTypedObject(parcel, Bundleable.CREATOR));
                parcel2.writeNoException();
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        public static class Proxy implements ICarHardwareHost {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ICarHardwareHost.DESCRIPTOR;
            }

            @Override // androidx.car.app.hardware.ICarHardwareHost
            public void getCarHardwareResult(int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarHardwareHost.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    _Parcel.writeTypedObject(parcelObtain, bundleable, 0);
                    parcelObtain.writeStrongInterface(iCarHardwareResult);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.hardware.ICarHardwareHost
            public void subscribeCarHardwareResult(int i, Bundleable bundleable, ICarHardwareResult iCarHardwareResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarHardwareHost.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    _Parcel.writeTypedObject(parcelObtain, bundleable, 0);
                    parcelObtain.writeStrongInterface(iCarHardwareResult);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.hardware.ICarHardwareHost
            public void unsubscribeCarHardwareResult(int i, Bundleable bundleable) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarHardwareHost.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    _Parcel.writeTypedObject(parcelObtain, bundleable, 0);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
        }
    }
}
