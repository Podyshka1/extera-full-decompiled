package com.google.firebase.events;

/* JADX INFO: loaded from: classes.dex */
public interface EventHandler<T> {
    void handle(Event<T> event);
}
