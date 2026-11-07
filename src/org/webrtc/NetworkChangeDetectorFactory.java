package org.webrtc;

import android.content.Context;
import org.webrtc.NetworkChangeDetector;

/* JADX INFO: loaded from: classes8.dex */
public interface NetworkChangeDetectorFactory {
    NetworkChangeDetector create(NetworkChangeDetector.Observer observer, Context context);
}
