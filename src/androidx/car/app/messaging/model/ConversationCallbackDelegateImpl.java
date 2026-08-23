package androidx.car.app.messaging.model;

import android.os.RemoteException;
import androidx.car.app.IOnDoneCallback;
import androidx.car.app.OnDoneCallback;
import androidx.car.app.messaging.model.ConversationCallbackDelegateImpl;
import androidx.car.app.messaging.model.IConversationCallback;
import androidx.car.app.utils.RemoteUtils;
import java.util.Objects;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
class ConversationCallbackDelegateImpl implements ConversationCallbackDelegate {
    private final IConversationCallback mConversationCallbackBinder;

    public ConversationCallbackDelegateImpl(ConversationCallback conversationCallback) {
        this.mConversationCallbackBinder = new ConversationCallbackStub(conversationCallback);
    }

    private ConversationCallbackDelegateImpl() {
        this.mConversationCallbackBinder = null;
    }

    public void sendMarkAsRead(OnDoneCallback onDoneCallback) {
        try {
            IConversationCallback iConversationCallback = this.mConversationCallbackBinder;
            Objects.requireNonNull(iConversationCallback);
            iConversationCallback.onMarkAsRead(RemoteUtils.createOnDoneCallbackStub(onDoneCallback));
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    public void sendTextReply(String str, OnDoneCallback onDoneCallback) {
        try {
            IConversationCallback iConversationCallback = this.mConversationCallbackBinder;
            Objects.requireNonNull(iConversationCallback);
            iConversationCallback.onTextReply(RemoteUtils.createOnDoneCallbackStub(onDoneCallback), str);
        } catch (RemoteException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    public static class ConversationCallbackStub extends IConversationCallback.Stub {
        private final ConversationCallback mConversationCallback;

        public ConversationCallbackStub(ConversationCallback conversationCallback) {
            this.mConversationCallback = conversationCallback;
        }

        @Override // androidx.car.app.messaging.model.IConversationCallback
        public void onMarkAsRead(IOnDoneCallback iOnDoneCallback) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onMarkAsRead", new RemoteUtils.HostCall() { // from class: androidx.car.app.messaging.model.ConversationCallbackDelegateImpl$ConversationCallbackStub$$ExternalSyntheticLambda1
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return ConversationCallbackDelegateImpl.ConversationCallbackStub.m1613$r8$lambda$N7BVLWGtNGN4ArPkcWjJcGYJaI(this.f$0);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$N7BVLWGtNGN4ArPkcWjJcGYJ-aI, reason: not valid java name */
        public static /* synthetic */ Object m1613$r8$lambda$N7BVLWGtNGN4ArPkcWjJcGYJaI(ConversationCallbackStub conversationCallbackStub) {
            conversationCallbackStub.mConversationCallback.onMarkAsRead();
            return null;
        }

        @Override // androidx.car.app.messaging.model.IConversationCallback
        public void onTextReply(IOnDoneCallback iOnDoneCallback, final String str) {
            RemoteUtils.dispatchCallFromHost(iOnDoneCallback, "onReply", new RemoteUtils.HostCall() { // from class: androidx.car.app.messaging.model.ConversationCallbackDelegateImpl$ConversationCallbackStub$$ExternalSyntheticLambda0
                @Override // androidx.car.app.utils.RemoteUtils.HostCall
                public final Object dispatch() {
                    return ConversationCallbackDelegateImpl.ConversationCallbackStub.$r8$lambda$Tbb_9lhfLXFSp06RpTThSQeIzOY(this.f$0, str);
                }
            });
        }

        public static /* synthetic */ Object $r8$lambda$Tbb_9lhfLXFSp06RpTThSQeIzOY(ConversationCallbackStub conversationCallbackStub, String str) {
            conversationCallbackStub.mConversationCallback.onTextReply(str);
            return null;
        }
    }
}
