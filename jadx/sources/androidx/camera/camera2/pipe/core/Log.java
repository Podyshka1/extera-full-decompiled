package androidx.camera.camera2.pipe.core;

/* JADX INFO: loaded from: classes3.dex */
public final class Log {
    public static final Log INSTANCE = new Log();
    private static final boolean DEBUG_LOGGABLE = true;
    private static final boolean INFO_LOGGABLE = true;
    private static final boolean WARN_LOGGABLE = true;
    private static final boolean ERROR_LOGGABLE = true;

    private Log() {
    }

    public final boolean getDEBUG_LOGGABLE() {
        return DEBUG_LOGGABLE;
    }

    public final boolean getINFO_LOGGABLE() {
        return INFO_LOGGABLE;
    }

    public final boolean getWARN_LOGGABLE() {
        return WARN_LOGGABLE;
    }

    public final boolean getERROR_LOGGABLE() {
        return ERROR_LOGGABLE;
    }
}
