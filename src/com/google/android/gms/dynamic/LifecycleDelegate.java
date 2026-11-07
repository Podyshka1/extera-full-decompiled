package com.google.android.gms.dynamic;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public interface LifecycleDelegate {
    void onCreate(Bundle bundle);

    void onDestroy();

    void onLowMemory();

    void onPause();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();
}
