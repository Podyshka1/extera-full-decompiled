package com.yandex.mapkit.navigation.automotive;

import com.yandex.mapkit.annotations.Speaker;

/* JADX INFO: loaded from: classes5.dex */
public interface Annotator {
    void addListener(AnnotatorListener annotatorListener);

    int getAnnotatedEvents();

    int getAnnotatedRoadEvents();

    boolean isValid();

    void mute();

    void removeListener(AnnotatorListener annotatorListener);

    void setAnnotatedEvents(int i);

    void setAnnotatedRoadEvents(int i);

    void setSpeaker(Speaker speaker);

    void unmute();
}
