package com.yandex.runtime.view.internal;

import android.view.MotionEvent;
import com.yandex.runtime.bindings.internal.ArchiveWriter;

/* JADX INFO: loaded from: classes5.dex */
public class TouchEvent {

    public enum Type {
        BEGAN,
        ENDED,
        MOVED,
        CANCELED
    }

    public static boolean isTouchEvent(MotionEvent motionEvent) {
        return getType(motionEvent) != null;
    }

    private static Type getType(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            return Type.BEGAN;
        }
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked == 3) {
                    return Type.CANCELED;
                }
                if (actionMasked != 5 && actionMasked != 6) {
                    return null;
                }
            }
            return Type.MOVED;
        }
        return Type.ENDED;
    }

    private static boolean filterAction(MotionEvent motionEvent, int i) {
        return (motionEvent.getActionMasked() == 6 && motionEvent.getActionIndex() == i) ? false : true;
    }

    private static int getFilteredActionsCount(MotionEvent motionEvent) {
        int i = 0;
        for (int i2 = 0; i2 < motionEvent.getPointerCount(); i2++) {
            if (filterAction(motionEvent, i2)) {
                i++;
            }
        }
        return i;
    }

    public static void serialize(MotionEvent motionEvent, ArchiveWriter archiveWriter) {
        archiveWriter.add(getType(motionEvent), false, (Class<Type>) Type.class);
        archiveWriter.add(motionEvent.getEventTime());
        archiveWriter.add(getFilteredActionsCount(motionEvent));
        for (int i = 0; i < motionEvent.getPointerCount(); i++) {
            if (filterAction(motionEvent, i)) {
                archiveWriter.add(motionEvent.getPointerId(i));
                archiveWriter.add(motionEvent.getX(i));
                archiveWriter.add(motionEvent.getY(i));
            }
        }
    }
}
