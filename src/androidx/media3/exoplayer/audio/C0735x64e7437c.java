package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioOutput;

/* JADX INFO: renamed from: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$StreamEventCallbackV29$1$$ExternalSyntheticLambda0 */
/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class C0735x64e7437c implements ListenerSet.Event {
    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        ((AudioOutput.Listener) obj).onOffloadDataRequest();
    }
}
