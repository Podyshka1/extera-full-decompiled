package androidx.car.app.constraints;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface IConstraintHost extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$constraints$IConstraintHost".replace(Typography.dollar, '.');

    public static class Default implements IConstraintHost {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.constraints.IConstraintHost
        public int getContentLimit(int i) {
            return 0;
        }

        @Override // androidx.car.app.constraints.IConstraintHost
        public boolean isAppDrivenRefreshEnabled() {
            return false;
        }
    }

    int getContentLimit(int i);

    boolean isAppDrivenRefreshEnabled();

    public static abstract class Stub extends Binder implements IConstraintHost {
        static final int TRANSACTION_getContentLimit = 2;
        static final int TRANSACTION_isAppDrivenRefreshEnabled = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IConstraintHost.DESCRIPTOR);
        }

        public static IConstraintHost asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IConstraintHost.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IConstraintHost)) {
                return (IConstraintHost) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IConstraintHost.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                int contentLimit = getContentLimit(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(contentLimit);
            } else if (i == 3) {
                boolean zIsAppDrivenRefreshEnabled = isAppDrivenRefreshEnabled();
                parcel2.writeNoException();
                parcel2.writeInt(zIsAppDrivenRefreshEnabled ? 1 : 0);
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        public static class Proxy implements IConstraintHost {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IConstraintHost.DESCRIPTOR;
            }

            @Override // androidx.car.app.constraints.IConstraintHost
            public int getContentLimit(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IConstraintHost.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.constraints.IConstraintHost
            public boolean isAppDrivenRefreshEnabled() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IConstraintHost.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
