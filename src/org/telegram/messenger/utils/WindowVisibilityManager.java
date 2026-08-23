package org.telegram.messenger.utils;

import android.view.Window;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class WindowVisibilityManager {
    private boolean isHidden;
    private final OnVisibilityChangedListener listener;
    private int reasonsToHide;

    public interface Controller {
        void destroy();

        void setHidden(boolean z);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface OnVisibilityChangedListener {
        void onVisibilityChanged(boolean z);
    }

    public WindowVisibilityManager(Window window) {
        final WeakReference weakReference = new WeakReference(window);
        this.listener = new OnVisibilityChangedListener() { // from class: org.telegram.messenger.utils.WindowVisibilityManager$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.utils.WindowVisibilityManager.OnVisibilityChangedListener
            public final void onVisibilityChanged(boolean z) {
                WindowVisibilityManager.$r8$lambda$5BlAw3AoEPCLn11rm_5hye_Xvw0(weakReference, z);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$5BlAw3AoEPCLn11rm_5hye_Xvw0(WeakReference weakReference, boolean z) {
        Window window = (Window) weakReference.get();
        if (window != null) {
            window.getDecorView().setVisibility(z ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIsHidden(boolean z) {
        if (this.isHidden != z) {
            this.isHidden = z;
            this.listener.onVisibilityChanged(!z);
        }
    }

    public Controller obtainController() {
        return new ControllerImpl();
    }

    /* JADX INFO: loaded from: classes5.dex */
    public class ControllerImpl implements Controller {
        private boolean destroyed;
        private boolean hidden;

        private ControllerImpl() {
        }

        @Override // org.telegram.messenger.utils.WindowVisibilityManager.Controller
        public void setHidden(boolean z) {
            if (this.hidden == z || this.destroyed) {
                return;
            }
            this.hidden = z;
            WindowVisibilityManager windowVisibilityManager = WindowVisibilityManager.this;
            if (z) {
                windowVisibilityManager.reasonsToHide++;
            } else {
                windowVisibilityManager.reasonsToHide--;
            }
            WindowVisibilityManager windowVisibilityManager2 = WindowVisibilityManager.this;
            windowVisibilityManager2.setIsHidden(windowVisibilityManager2.reasonsToHide > 0);
        }

        @Override // org.telegram.messenger.utils.WindowVisibilityManager.Controller
        public void destroy() {
            setHidden(false);
            this.destroyed = true;
        }
    }
}
