package androidx.car.app;

import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.serialization.Bundleable;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface ISurfaceCallback extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$ISurfaceCallback".replace(Typography.dollar, '.');

    public static class Default implements ISurfaceCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onClick(float f, float f2) {
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onFling(float f, float f2) {
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onScale(float f, float f2, float f3) {
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onScroll(float f, float f2) {
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onStableAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onSurfaceAvailable(Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onSurfaceDestroyed(Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.ISurfaceCallback
        public void onVisibleAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback) {
        }
    }

    void onClick(float f, float f2);

    void onFling(float f, float f2);

    void onScale(float f, float f2, float f3);

    void onScroll(float f, float f2);

    void onStableAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback);

    void onSurfaceAvailable(Bundleable bundleable, IOnDoneCallback iOnDoneCallback);

    void onSurfaceDestroyed(Bundleable bundleable, IOnDoneCallback iOnDoneCallback);

    void onVisibleAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback);

    public static abstract class Stub extends Binder implements ISurfaceCallback {
        static final int TRANSACTION_onClick = 9;
        static final int TRANSACTION_onFling = 7;
        static final int TRANSACTION_onScale = 8;
        static final int TRANSACTION_onScroll = 6;
        static final int TRANSACTION_onStableAreaChanged = 4;
        static final int TRANSACTION_onSurfaceAvailable = 2;
        static final int TRANSACTION_onSurfaceDestroyed = 5;
        static final int TRANSACTION_onVisibleAreaChanged = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ISurfaceCallback.DESCRIPTOR);
        }

        public static ISurfaceCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ISurfaceCallback.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ISurfaceCallback)) {
                return (ISurfaceCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = ISurfaceCallback.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i) {
                case 2:
                    onSurfaceAvailable((Bundleable) _Parcel.readTypedObject(parcel, Bundleable.CREATOR), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    onVisibleAreaChanged((Rect) _Parcel.readTypedObject(parcel, Rect.CREATOR), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    onStableAreaChanged((Rect) _Parcel.readTypedObject(parcel, Rect.CREATOR), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    onSurfaceDestroyed((Bundleable) _Parcel.readTypedObject(parcel, Bundleable.CREATOR), IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    onScroll(parcel.readFloat(), parcel.readFloat());
                    return true;
                case 7:
                    onFling(parcel.readFloat(), parcel.readFloat());
                    return true;
                case 8:
                    onScale(parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
                    return true;
                case 9:
                    onClick(parcel.readFloat(), parcel.readFloat());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        public static class Proxy implements ISurfaceCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ISurfaceCallback.DESCRIPTOR;
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onSurfaceAvailable(Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, bundleable, 0);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onVisibleAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, rect, 0);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onStableAreaChanged(Rect rect, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, rect, 0);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onSurfaceDestroyed(Bundleable bundleable, IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, bundleable, 0);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onScroll(float f, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    parcelObtain.writeFloat(f2);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onFling(float f, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    parcelObtain.writeFloat(f2);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onScale(float f, float f2, float f3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeFloat(f3);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.ISurfaceCallback
            public void onClick(float f, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ISurfaceCallback.DESCRIPTOR);
                    parcelObtain.writeFloat(f);
                    parcelObtain.writeFloat(f2);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
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
