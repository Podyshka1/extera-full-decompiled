package org.telegram.messenger.pip.activity;

/* JADX INFO: loaded from: classes.dex */
public interface IPipActivityListener {
    default void onCompleteEnterToPip() {
    }

    void onCompleteExitFromPip(boolean z);

    default void onStartEnterToPip() {
    }

    default void onStartExitFromPip(boolean z) {
    }
}
