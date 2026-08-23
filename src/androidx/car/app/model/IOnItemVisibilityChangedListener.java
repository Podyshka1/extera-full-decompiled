package androidx.car.app.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface IOnItemVisibilityChangedListener extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$model$IOnItemVisibilityChangedListener".replace(Typography.dollar, '.');

    public static class Default implements IOnItemVisibilityChangedListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.model.IOnItemVisibilityChangedListener
        public void onItemVisibilityChanged(int i, int i2, IOnDoneCallback iOnDoneCallback) {
        }
    }

    void onItemVisibilityChanged(int i, int i2, IOnDoneCallback iOnDoneCallback);

    public static abstract class Stub extends Binder implements IOnItemVisibilityChangedListener {
        static final int TRANSACTION_onItemVisibilityChanged = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IOnItemVisibilityChangedListener.DESCRIPTOR);
        }

        public static IOnItemVisibilityChangedListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IOnItemVisibilityChangedListener.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IOnItemVisibilityChangedListener)) {
                return (IOnItemVisibilityChangedListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IOnItemVisibilityChangedListener.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                onItemVisibilityChanged(parcel.readInt(), parcel.readInt(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        public static class Proxy implements IOnItemVisibilityChangedListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOnItemVisibilityChangedListener.DESCRIPTOR;
            }

            @Override // androidx.car.app.model.IOnItemVisibilityChangedListener
            public void onItemVisibilityChanged(int i, int i2, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IOnItemVisibilityChangedListener.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
