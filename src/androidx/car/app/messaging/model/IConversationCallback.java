package androidx.car.app.messaging.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.car.app.IOnDoneCallback;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes3.dex */
public interface IConversationCallback extends IInterface {
    public static final String DESCRIPTOR = "androidx$car$app$messaging$model$IConversationCallback".replace(Typography.dollar, '.');

    public static class Default implements IConversationCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.car.app.messaging.model.IConversationCallback
        public void onMarkAsRead(IOnDoneCallback iOnDoneCallback) {
        }

        @Override // androidx.car.app.messaging.model.IConversationCallback
        public void onTextReply(IOnDoneCallback iOnDoneCallback, String str) {
        }
    }

    void onMarkAsRead(IOnDoneCallback iOnDoneCallback);

    void onTextReply(IOnDoneCallback iOnDoneCallback, String str);

    public static abstract class Stub extends Binder implements IConversationCallback {
        static final int TRANSACTION_onMarkAsRead = 2;
        static final int TRANSACTION_onTextReply = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IConversationCallback.DESCRIPTOR);
        }

        public static IConversationCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IConversationCallback.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IConversationCallback)) {
                return (IConversationCallback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IConversationCallback.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 2) {
                onMarkAsRead(IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()));
            } else if (i == 3) {
                onTextReply(IOnDoneCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return true;
        }

        public static class Proxy implements IConversationCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IConversationCallback.DESCRIPTOR;
            }

            @Override // androidx.car.app.messaging.model.IConversationCallback
            public void onMarkAsRead(IOnDoneCallback iOnDoneCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IConversationCallback.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.car.app.messaging.model.IConversationCallback
            public void onTextReply(IOnDoneCallback iOnDoneCallback, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IConversationCallback.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iOnDoneCallback);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
