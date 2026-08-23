package me.vkryl.android.animator;

/* JADX INFO: loaded from: classes.dex */
public interface Animatable {
    boolean applyAnimation(float f);

    default void applyChanges() {
    }

    void finishAnimation(boolean z);

    default boolean hasChanges() {
        return false;
    }

    default void prepareChanges() {
    }
}
