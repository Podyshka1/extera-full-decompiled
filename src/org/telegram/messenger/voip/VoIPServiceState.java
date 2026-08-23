package org.telegram.messenger.voip;

import java.util.ArrayList;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_phone;

/* JADX INFO: loaded from: classes.dex */
public interface VoIPServiceState {
    void acceptIncomingCall();

    void declineIncomingCall();

    long getCallDuration();

    int getCallState();

    TLRPC.GroupCall getGroupCall();

    ArrayList<TLRPC.GroupCallParticipant> getGroupParticipants();

    TL_phone.PhoneCall getPrivateCall();

    TLRPC.User getUser();

    boolean isCallingVideo();

    boolean isConference();

    boolean isOutgoing();

    void stopRinging();

    /* JADX INFO: renamed from: org.telegram.messenger.voip.VoIPServiceState$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    public abstract /* synthetic */ class CC {
        public static long $default$getCallDuration(VoIPServiceState voIPServiceState) {
            return 0L;
        }
    }
}
