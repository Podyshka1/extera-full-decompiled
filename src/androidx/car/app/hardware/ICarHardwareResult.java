package androidx.car.app.hardware;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.car.app.serialization.Bundleable;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface ICarHardwareResult extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$hardware$ICarHardwareResult".replace(Typography.dollar, '.');

    public static class Default implements ICarHardwareResult {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.hardware.ICarHardwareResult
        public void onCarHardwareResult(int i, boolean z, Bundleable bundleable, IBinder iBinder) {
        }
    }

    void onCarHardwareResult(int i, boolean z, Bundleable bundleable, IBinder iBinder);

    public static abstract class Stub extends Binder implements ICarHardwareResult {
        static final int TRANSACTION_onCarHardwareResult = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, ICarHardwareResult.DESCRIPTOR);
        }

        public static ICarHardwareResult asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ICarHardwareResult.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICarHardwareResult)) {
                return (ICarHardwareResult) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = ICarHardwareResult.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                onCarHardwareResult(parcel.readInt(), parcel.readInt() != 0, (Bundleable) _Parcel.readTypedObject(parcel, Bundleable.CREATOR), parcel.readStrongBinder());
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        public static class Proxy implements ICarHardwareResult {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ICarHardwareResult.DESCRIPTOR;
            }

            @Override // androidx.car.app.hardware.ICarHardwareResult
            public void onCarHardwareResult(int i, boolean z, Bundleable bundleable, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(ICarHardwareResult.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    _Parcel.writeTypedObject(parcelObtain, bundleable, 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(2, parcelObtain, null, 1);
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
