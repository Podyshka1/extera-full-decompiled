package com.exteragram.messenger.forward;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public interface ForwardContext {

    public static class ForwardParams {
        public boolean noQuote;
    }

    ForwardParams getForwardParams();

    boolean isForwardNoQuote();

    void setForwardParams(boolean z);

    /* JADX INFO: renamed from: com.exteragram.messenger.forward.ForwardContext$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$writeForwardParams(ForwardContext forwardContext, Bundle bundle) {
            if (bundle == null) {
                return;
            }
            bundle.putBoolean("forward_noquote", forwardContext.isForwardNoQuote());
        }

        public static void $default$readForwardParams(ForwardContext forwardContext, Bundle bundle) {
            if (bundle == null) {
                return;
            }
            forwardContext.setForwardParams(bundle.getBoolean("forward_noquote", false));
        }
    }
}
