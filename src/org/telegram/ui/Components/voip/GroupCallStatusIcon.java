package org.telegram.ui.Components.voip;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.SystemClock;
import com.google.android.gms.cast.MediaError;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RLottieImageView;

/* JADX INFO: loaded from: classes7.dex */
public class GroupCallStatusIcon {
    Callback callback;
    RLottieImageView iconView;
    boolean isSpeaking;
    boolean lastMuted;
    boolean lastRaisedHand;
    private boolean mutedByMe;
    TLRPC.GroupCallParticipant participant;
    boolean updateRunnableScheduled;
    private Runnable shakeHandCallback = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };
    private Runnable raiseHandCallback = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$1();
        }
    };
    private Runnable updateRunnable = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$2();
        }
    };
    private Runnable checkRaiseRunnable = new Runnable() { // from class: org.telegram.ui.Components.voip.GroupCallStatusIcon$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$3();
        }
    };
    RLottieDrawable micDrawable = new RLottieDrawable(C2665R.raw.voice_mini, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f), true, null);
    RLottieDrawable shakeHandDrawable = new RLottieDrawable(C2665R.raw.hand_2, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), true, null);

    public interface Callback {
        void onStatusChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.shakeHandDrawable.setOnFinishCallback(null, 0);
        this.micDrawable.setOnFinishCallback(null, 0);
        RLottieImageView rLottieImageView = this.iconView;
        if (rLottieImageView != null) {
            rLottieImageView.setAnimation(this.micDrawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017 A[PHI: r2 r3
  0x0017: PHI (r2v3 int) = (r2v0 int), (r2v1 int) binds: [B:6:0x0015, B:12:0x0026] A[DONT_GENERATE, DONT_INLINE]
  0x0017: PHI (r3v2 int) = (r3v0 int), (r3v1 int) binds: [B:6:0x0015, B:12:0x0026] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$1() {
        int i;
        int iNextInt = Utilities.random.nextInt(100);
        int i2 = 120;
        if (iNextInt < 32) {
            i = 0;
        } else {
            i = 240;
            if (iNextInt < 64) {
                int i3 = i;
                i = i2;
                i2 = i3;
            } else {
                i2 = MediaError.DetailedErrorCode.DASH_MANIFEST_UNKNOWN;
                if (iNextInt >= 97) {
                    i = 540;
                    if (iNextInt != 98) {
                        i2 = 720;
                    }
                }
            }
        }
        this.shakeHandDrawable.setCustomEndFrame(i2);
        this.shakeHandDrawable.setOnFinishCallback(this.shakeHandCallback, i2 - 1);
        this.shakeHandDrawable.setCurrentFrame(i);
        RLottieImageView rLottieImageView = this.iconView;
        if (rLottieImageView != null) {
            rLottieImageView.setAnimation(this.shakeHandDrawable);
            this.iconView.playAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        this.isSpeaking = false;
        Callback callback = this.callback;
        if (callback != null) {
            callback.onStatusChanged();
        }
        this.updateRunnableScheduled = false;
    }

    public void setAmplitude(double d) {
        if (d > 1.5d) {
            if (this.updateRunnableScheduled) {
                AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            }
            if (!this.isSpeaking) {
                this.isSpeaking = true;
                Callback callback = this.callback;
                if (callback != null) {
                    callback.onStatusChanged();
                }
            }
            AndroidUtilities.runOnUIThread(this.updateRunnable, 500L);
            this.updateRunnableScheduled = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        updateIcon(true);
    }

    public void setImageView(RLottieImageView rLottieImageView) {
        this.iconView = rLottieImageView;
        updateIcon(false);
    }

    public void setParticipant(TLRPC.GroupCallParticipant groupCallParticipant, boolean z) {
        this.participant = groupCallParticipant;
        updateIcon(z);
    }

    public void updateIcon(boolean z) {
        TLRPC.GroupCallParticipant groupCallParticipant;
        boolean z2;
        boolean customEndFrame;
        boolean z3;
        if (this.iconView == null || (groupCallParticipant = this.participant) == null || this.micDrawable == null) {
            return;
        }
        boolean z4 = groupCallParticipant.muted_by_you && !groupCallParticipant.self;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        TLRPC.GroupCallParticipant groupCallParticipant2 = this.participant;
        if (jElapsedRealtime - groupCallParticipant2.lastVoiceUpdateTime < 500) {
            z2 = groupCallParticipant2.hasVoiceDelayed;
        } else {
            z2 = groupCallParticipant2.hasVoice;
        }
        boolean z5 = !groupCallParticipant2.self ? (!groupCallParticipant2.muted || (this.isSpeaking && z2)) && !z4 : VoIPService.getSharedInstance() == null || !VoIPService.getSharedInstance().isMicMute() || (this.isSpeaking && z2);
        TLRPC.GroupCallParticipant groupCallParticipant3 = this.participant;
        boolean z6 = ((groupCallParticipant3.muted && !this.isSpeaking) || z4) && !(((z3 = groupCallParticipant3.can_self_unmute) && !z4) || z3 || groupCallParticipant3.raise_hand_rating == 0);
        if (z6) {
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            long j = this.participant.lastRaiseHandDate;
            long j2 = jElapsedRealtime2 - j;
            if (j != 0 && j2 <= 5000) {
                AndroidUtilities.runOnUIThread(this.checkRaiseRunnable, 5000 - j2);
            }
            customEndFrame = this.micDrawable.setCustomEndFrame(136);
        } else {
            this.iconView.setAnimation(this.micDrawable);
            this.micDrawable.setOnFinishCallback(null, 0);
            if (z5 && this.lastRaisedHand) {
                customEndFrame = this.micDrawable.setCustomEndFrame(36);
            } else {
                customEndFrame = this.micDrawable.setCustomEndFrame(z5 ? 99 : 69);
            }
        }
        if (!z) {
            RLottieDrawable rLottieDrawable = this.micDrawable;
            rLottieDrawable.setCurrentFrame(rLottieDrawable.getCustomEndFrame() - 1, false, true);
            this.iconView.invalidate();
        } else if (customEndFrame) {
            if (z6) {
                this.micDrawable.setCurrentFrame(99);
                this.micDrawable.setCustomEndFrame(136);
            } else if (z5 && this.lastRaisedHand && !z6) {
                this.micDrawable.setCurrentFrame(0);
                this.micDrawable.setCustomEndFrame(36);
            } else {
                RLottieDrawable rLottieDrawable2 = this.micDrawable;
                if (z5) {
                    rLottieDrawable2.setCurrentFrame(69);
                    this.micDrawable.setCustomEndFrame(99);
                } else {
                    rLottieDrawable2.setCurrentFrame(36);
                    this.micDrawable.setCustomEndFrame(69);
                }
            }
            this.iconView.playAnimation();
            this.iconView.invalidate();
        }
        this.iconView.setAnimation(this.micDrawable);
        this.lastMuted = z5;
        this.lastRaisedHand = z6;
        if (this.mutedByMe != z4) {
            this.mutedByMe = z4;
            Callback callback = this.callback;
            if (callback != null) {
                callback.onStatusChanged();
            }
        }
    }

    public boolean isSpeaking() {
        return this.isSpeaking;
    }

    public boolean isMutedByMe() {
        return this.mutedByMe;
    }

    public boolean isMutedByAdmin() {
        TLRPC.GroupCallParticipant groupCallParticipant = this.participant;
        return (groupCallParticipant == null || !groupCallParticipant.muted || groupCallParticipant.can_self_unmute) ? false : true;
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
        if (callback == null) {
            this.isSpeaking = false;
            AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            AndroidUtilities.cancelRunOnUIThread(this.raiseHandCallback);
            AndroidUtilities.cancelRunOnUIThread(this.checkRaiseRunnable);
            this.micDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        }
    }
}
