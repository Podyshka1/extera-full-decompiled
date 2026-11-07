package androidx.car.app.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface ISearchCallback extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$model$ISearchCallback".replace(Typography.dollar, '.');

    public static class Default implements ISearchCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.model.ISearchCallback
        public void onSearchSubmitted(String str, IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.model.ISearchCallback
        public void onSearchTextChanged(String str, IOnDoneCallback iOnDoneCallback) {
        }
    }

    void onSearchSubmitted(String str, IOnDoneCallback iOnDoneCallback);

    void onSearchTextChanged(String str, IOnDoneCallback iOnDoneCallback);

    public static abstract class Stub extends Binder implements ISearchCallback {
        static final int TRANSACTION_onSearchSubmitted = 3;
        static final int TRANSACTION_onSearchTextChanged = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ISearchCallback.DESCRIPTOR);
        }

        public static ISearchCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ISearchCallback.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ISearchCallback)) {
                return (ISearchCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = ISearchCallback.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                onSearchTextChanged(parcel.readString(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
            } else if (i == 3) {
                onSearchSubmitted(parcel.readString(), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        public static class Proxy implements ISearchCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISearchCallback.DESCRIPTOR;
            }

            @Override // androidx.car.app.model.ISearchCallback
            public void onSearchTextChanged(String str, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISearchCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.model.ISearchCallback
            public void onSearchSubmitted(String str, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISearchCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
