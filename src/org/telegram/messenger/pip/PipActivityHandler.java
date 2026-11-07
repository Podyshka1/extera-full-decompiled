package org.telegram.messenger.pip;

import android.app.Activity;
import android.app.PictureInPictureParams;
import android.app.PictureInPictureUiState;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Log;
import android.view.Choreographer;
import androidx.core.math.MathUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.pip.activity.IPipActivity;
import org.telegram.messenger.pip.activity.IPipActivityActionListener;
import org.telegram.messenger.pip.activity.IPipActivityAnimationListener;
import org.telegram.messenger.pip.activity.IPipActivityHandler;
import org.telegram.messenger.pip.activity.IPipActivityListener;
import org.telegram.messenger.pip.utils.PipActions;
import org.telegram.messenger.pip.utils.PipDuration;
import org.telegram.messenger.pip.utils.PipUtils;

/* JADX INFO: loaded from: classes.dex */
class PipActivityHandler implements IPipActivityHandler {
    private final Activity activity;
    private boolean hasFrameListener;
    private boolean isActivityStarted;
    private boolean isInPictureInPictureModeInternal;
    private boolean isInPictureInPictureStash;
    private PictureInPictureParams pictureInPictureParams;
    private final ArrayList<IPipActivityListener> listeners = new ArrayList<>();
    private final ArrayList<IPipActivityAnimationListener> animationListeners = new ArrayList<>();
    private final HashMap<String, ArrayList<IPipActivityActionListener>> actionListeners = new HashMap<>();
    private float lastProgress = -1.0f;
    private final PipDuration durationEnter = new PipDuration("enter");
    private final PipDuration durationLeave = new PipDuration("leave");
    private final Choreographer choreographer = Choreographer.getInstance();
    private final Choreographer.FrameCallback callback = new Choreographer.FrameCallback() { // from class: org.telegram.messenger.pip.PipActivityHandler$$ExternalSyntheticLambda0
        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            this.f$0.onFrameInternal(j);
        }
    };
    private final BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: org.telegram.messenger.pip.PipActivityHandler.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (PipActions.isPipIntent(intent)) {
                PipActivityHandler.this.dispatchAction(PipActions.getSourceId(intent), PipActions.getActionId(intent));
            }
        }
    };

    public PipActivityHandler(Activity activity) {
        this.activity = activity;
    }

    public void addPipListener(IPipActivityListener iPipActivityListener) {
        this.listeners.add(iPipActivityListener);
    }

    public void removePipListener(IPipActivityListener iPipActivityListener) {
        this.listeners.remove(iPipActivityListener);
    }

    public void addAnimationListener(IPipActivityAnimationListener iPipActivityAnimationListener) {
        this.animationListeners.add(iPipActivityAnimationListener);
    }

    public void removeAnimationListener(IPipActivityAnimationListener iPipActivityAnimationListener) {
        this.animationListeners.remove(iPipActivityAnimationListener);
    }

    public void addActionListener(String str, IPipActivityActionListener iPipActivityActionListener) {
        ArrayList<IPipActivityActionListener> arrayList = this.actionListeners.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.actionListeners.put(str, arrayList);
        }
        arrayList.add(iPipActivityActionListener);
    }

    public void removeActionListener(String str, IPipActivityActionListener iPipActivityActionListener) {
        ArrayList<IPipActivityActionListener> arrayList = this.actionListeners.get(str);
        if (arrayList == null) {
            return;
        }
        arrayList.remove(iPipActivityActionListener);
        if (arrayList.isEmpty()) {
            this.actionListeners.remove(str);
        }
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onPictureInPictureRequested() {
        Log.i("PIP_DEBUG", "[Activity] onPictureInPictureRequested");
        manualEnterPictureInPictureModeInternal();
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onUserLeaveHint() {
        Log.i("PIP_DEBUG", "[Activity] onUserLeaveHint");
        manualEnterPictureInPictureModeInternal();
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onStart() {
        Log.i("PIP_DEBUG", "[Activity] onStart");
        this.isActivityStarted = true;
        IntentFilter intentFilter = new IntentFilter("PIP_CUSTOM_EVENT");
        int i = Build.VERSION.SDK_INT;
        Activity activity = this.activity;
        if (i >= 33) {
            activity.registerReceiver(this.broadcastReceiver, intentFilter, 4);
        } else {
            activity.registerReceiver(this.broadcastReceiver, intentFilter);
        }
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onResume() {
        Log.i("PIP_DEBUG", "[Activity] onResume");
        if (this.isInPictureInPictureModeInternal) {
            dispatchCompleteExitPip(false);
        }
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onPause() {
        Log.i("PIP_DEBUG", "[Activity] onPause");
        if (AndroidUtilities.isInPictureInPictureMode(this.activity) && hasContentForPictureInPictureMode() && PipUtils.useAutoEnterInPictureInPictureMode()) {
            dispatchStartEnterPip();
        }
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onStop() {
        Log.i("PIP_DEBUG", "[Activity] onStop");
        this.isActivityStarted = false;
        if (this.isInPictureInPictureModeInternal) {
            dispatchStartExitPip(true);
        }
        this.activity.unregisterReceiver(this.broadcastReceiver);
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        Log.i("PIP_DEBUG", "[Activity] onPictureInPictureModeChanged " + z);
        if (this.isInPictureInPictureModeInternal) {
            if (z) {
                dispatchCompleteEnterPip();
            } else if (this.isActivityStarted) {
                dispatchStartExitPip(false);
            } else {
                dispatchCompleteExitPip(true);
            }
        }
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onConfigurationChanged(Configuration configuration) {
        Log.i("PIP_DEBUG", "[Activity] onConfigurationChanged");
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void setPictureInPictureParams(PictureInPictureParams pictureInPictureParams) {
        Log.i("PIP_DEBUG", "[Activity] setPictureInPictureParams");
        this.pictureInPictureParams = pictureInPictureParams;
    }

    @Override // org.telegram.messenger.pip.activity.IPipActivityHandler
    public void onPictureInPictureUiStateChanged(PictureInPictureUiState pictureInPictureUiState) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            if (i >= 35) {
                Log.i("PIP_DEBUG", "[Activity] onPictureInPictureUiStateChanged " + pictureInPictureUiState.isStashed() + " " + pictureInPictureUiState.isTransitioningToPip());
                if (pictureInPictureUiState.isTransitioningToPip() && hasContentForPictureInPictureMode()) {
                    dispatchStartEnterPip();
                }
            } else {
                Log.i("PIP_DEBUG", "[Activity] onPictureInPictureUiStateChanged " + pictureInPictureUiState.isStashed());
            }
            boolean zIsStashed = pictureInPictureUiState.isStashed();
            if (this.isInPictureInPictureStash != zIsStashed) {
                this.isInPictureInPictureStash = zIsStashed;
                if (zIsStashed) {
                    dispatchStashStartPip();
                } else {
                    dispatchStashEndPip();
                }
            }
        }
    }

    private boolean hasContentForPictureInPictureMode() {
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        if (componentCallbacks2 instanceof IPipActivity) {
            return ((IPipActivity) componentCallbacks2).getPipController().hasContentForPictureInPictureMode();
        }
        return false;
    }

    private void manualEnterPictureInPictureModeInternal() {
        if (this.isInPictureInPictureModeInternal || PipUtils.useAutoEnterInPictureInPictureMode() || Build.VERSION.SDK_INT < 26 || this.pictureInPictureParams == null || !hasContentForPictureInPictureMode()) {
            return;
        }
        dispatchStartEnterPip();
        this.activity.enterPictureInPictureMode(this.pictureInPictureParams);
    }

    private void dispatchStartEnterPip() {
        this.isInPictureInPictureModeInternal = true;
        int i = 0;
        this.isInPictureInPictureStash = false;
        ArrayList<IPipActivityListener> arrayList = this.listeners;
        int size = arrayList.size();
        while (i < size) {
            IPipActivityListener iPipActivityListener = arrayList.get(i);
            i++;
            iPipActivityListener.onStartEnterToPip();
        }
        dispatchEnterAnimationStart();
    }

    private void dispatchCompleteEnterPip() {
        dispatchEnterAnimationEnd();
        ArrayList<IPipActivityListener> arrayList = this.listeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityListener iPipActivityListener = arrayList.get(i);
            i++;
            iPipActivityListener.onCompleteEnterToPip();
        }
    }

    private void dispatchStashStartPip() {
        ArrayList<IPipActivityListener> arrayList = this.listeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityListener iPipActivityListener = arrayList.get(i);
            i++;
            iPipActivityListener.onPipStashStart();
        }
    }

    private void dispatchStashEndPip() {
        ArrayList<IPipActivityListener> arrayList = this.listeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityListener iPipActivityListener = arrayList.get(i);
            i++;
            iPipActivityListener.onPipStashEnd();
        }
    }

    private void dispatchStartExitPip(boolean z) {
        ArrayList<IPipActivityListener> arrayList = this.listeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityListener iPipActivityListener = arrayList.get(i);
            i++;
            iPipActivityListener.onStartExitFromPip(z);
        }
        dispatchLeaveAnimationStart();
    }

    private void dispatchCompleteExitPip(boolean z) {
        dispatchLeaveAnimationEnd();
        int i = 0;
        this.isInPictureInPictureModeInternal = false;
        ArrayList<IPipActivityListener> arrayList = this.listeners;
        int size = arrayList.size();
        while (i < size) {
            IPipActivityListener iPipActivityListener = arrayList.get(i);
            i++;
            iPipActivityListener.onCompleteExitFromPip(z);
        }
    }

    private void dispatchEnterAnimationStart() {
        long jEstimated = this.durationEnter.estimated();
        ArrayList<IPipActivityAnimationListener> arrayList = this.animationListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityAnimationListener iPipActivityAnimationListener = arrayList.get(i);
            i++;
            iPipActivityAnimationListener.onEnterAnimationStart(jEstimated);
        }
        dispatchTransitionAnimationProgress(0.0f);
        this.durationEnter.start();
        subscribeToFrameUpdates();
    }

    private void dispatchEnterAnimationEnd() {
        dispatchTransitionAnimationProgress(1.0f);
        long jEnd = this.durationEnter.end();
        ArrayList<IPipActivityAnimationListener> arrayList = this.animationListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityAnimationListener iPipActivityAnimationListener = arrayList.get(i);
            i++;
            iPipActivityAnimationListener.onEnterAnimationEnd(jEnd);
        }
        unsubscribeFromFrameUpdates();
    }

    private void dispatchLeaveAnimationStart() {
        long jEstimated = this.durationLeave.estimated();
        ArrayList<IPipActivityAnimationListener> arrayList = this.animationListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityAnimationListener iPipActivityAnimationListener = arrayList.get(i);
            i++;
            iPipActivityAnimationListener.onLeaveAnimationStart(jEstimated);
        }
        dispatchTransitionAnimationProgress(1.0f);
        this.durationLeave.start();
        subscribeToFrameUpdates();
    }

    private void dispatchLeaveAnimationEnd() {
        dispatchTransitionAnimationProgress(0.0f);
        long jEnd = this.durationLeave.end();
        ArrayList<IPipActivityAnimationListener> arrayList = this.animationListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityAnimationListener iPipActivityAnimationListener = arrayList.get(i);
            i++;
            iPipActivityAnimationListener.onLeaveAnimationEnd(jEnd);
        }
        unsubscribeFromFrameUpdates();
    }

    private void dispatchTransitionAnimationProgress(float f) {
        if (f == this.lastProgress) {
            return;
        }
        this.lastProgress = f;
        ArrayList<IPipActivityAnimationListener> arrayList = this.animationListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            IPipActivityAnimationListener iPipActivityAnimationListener = arrayList.get(i);
            i++;
            iPipActivityAnimationListener.onTransitionAnimationProgress(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchAction(String str, int i) {
        ArrayList<IPipActivityActionListener> arrayList = this.actionListeners.get(str);
        if (arrayList == null) {
            return;
        }
        Iterator<IPipActivityActionListener> it = arrayList.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
    }

    private void subscribeToFrameUpdates() {
        if (this.hasFrameListener) {
            return;
        }
        this.hasFrameListener = true;
        this.choreographer.postFrameCallback(this.callback);
    }

    private void unsubscribeFromFrameUpdates() {
        if (this.hasFrameListener) {
            this.hasFrameListener = false;
            this.choreographer.removeFrameCallback(this.callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFrameInternal(long j) {
        if (this.hasFrameListener) {
            ArrayList<IPipActivityAnimationListener> arrayList = this.animationListeners;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                IPipActivityAnimationListener iPipActivityAnimationListener = arrayList.get(i);
                i++;
                iPipActivityAnimationListener.onTransitionAnimationFrame();
            }
            if (this.durationEnter.isStarted()) {
                dispatchTransitionAnimationProgress(MathUtils.clamp(this.durationEnter.progress() / 0.95f, 0.0f, 1.0f));
            } else if (this.durationLeave.isStarted()) {
                dispatchTransitionAnimationProgress(MathUtils.clamp(1.0f - (this.durationLeave.progress() / 0.95f), 0.0f, 1.0f));
            }
            this.choreographer.postFrameCallback(this.callback);
        }
    }
}
