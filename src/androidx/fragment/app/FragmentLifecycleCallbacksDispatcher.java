package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class FragmentLifecycleCallbacksDispatcher {
    private final FragmentManager mFragmentManager;
    private final CopyOnWriteArrayList mLifecycleCallbacks = new CopyOnWriteArrayList();

    FragmentLifecycleCallbacksDispatcher(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    void dispatchOnFragmentPreAttached(Fragment fragment, boolean z) {
        this.mFragmentManager.getHost().getContext();
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentPreAttached(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentAttached(Fragment fragment, boolean z) {
        this.mFragmentManager.getHost().getContext();
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentAttached(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentPreCreated(Fragment fragment, Bundle bundle, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentPreCreated(fragment, bundle, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentCreated(Fragment fragment, Bundle bundle, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentCreated(fragment, bundle, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentActivityCreated(Fragment fragment, Bundle bundle, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentActivityCreated(fragment, bundle, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentViewCreated(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentViewCreated(fragment, view, bundle, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentStarted(Fragment fragment, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentStarted(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentResumed(Fragment fragment, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentResumed(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentPaused(Fragment fragment, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentPaused(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentStopped(Fragment fragment, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentStopped(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentSaveInstanceState(Fragment fragment, Bundle bundle, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentSaveInstanceState(fragment, bundle, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentViewDestroyed(Fragment fragment, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentViewDestroyed(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentDestroyed(Fragment fragment, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentDestroyed(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }

    void dispatchOnFragmentDetached(Fragment fragment, boolean z) {
        Fragment parent = this.mFragmentManager.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().dispatchOnFragmentDetached(fragment, true);
        }
        Iterator it = this.mLifecycleCallbacks.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            if (z) {
                throw null;
            }
            throw null;
        }
    }
}
