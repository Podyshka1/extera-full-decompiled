package com.yandex.mapkit.annotations;

/* JADX INFO: loaded from: classes5.dex */
public interface Speaker {
    double duration(LocalizedPhrase localizedPhrase);

    void reset();

    void say(LocalizedPhrase localizedPhrase);
}
