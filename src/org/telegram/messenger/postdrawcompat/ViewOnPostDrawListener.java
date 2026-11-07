package org.telegram.messenger.postdrawcompat;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;
import org.telegram.messenger.C2807R;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ViewOnPostDrawListener {
    public static void addListener(View view, OnPostDrawListener onPostDrawListener) {
        RootState rootStateAttachToRoot;
        if (view == null || onPostDrawListener == null) {
            return;
        }
        if (view.isAttachedToWindow() && view == view.getRootView()) {
            f$$ExternalSyntheticBUOutline1.m215m("Cannot add OnPostDrawListener to root view");
            return;
        }
        ViewState viewState = getViewState(view);
        if (viewState == null) {
            viewState = new ViewState();
            view.setTag(C2807R.id.tag_view_on_post_draw_state, viewState);
            view.addOnAttachStateChangeListener(viewState.attachStateChangeListener);
        }
        if (viewState.listeners.contains(onPostDrawListener)) {
            return;
        }
        viewState.listeners.add(onPostDrawListener);
        if (!view.isAttachedToWindow() || (rootStateAttachToRoot = attachToRoot(view, viewState)) == null) {
            return;
        }
        rootStateAttachToRoot.viewOnPostDraw.addOnPostDrawListener(onPostDrawListener);
    }

    public static void removeListener(View view, OnPostDrawListener onPostDrawListener) {
        ViewState viewState;
        if (view == null || onPostDrawListener == null || (viewState = getViewState(view)) == null || !viewState.listeners.remove(onPostDrawListener)) {
            return;
        }
        RootState rootState = viewState.rootState;
        if (rootState != null) {
            rootState.viewOnPostDraw.removeOnPostDrawListener(onPostDrawListener);
        }
        if (viewState.listeners.isEmpty()) {
            viewState.rootState = null;
            view.removeOnAttachStateChangeListener(viewState.attachStateChangeListener);
            view.setTag(C2807R.id.tag_view_on_post_draw_state, null);
        }
    }

    private static RootState attachToRoot(View view, ViewState viewState) {
        RootState rootState = viewState.rootState;
        if (rootState != null) {
            return rootState;
        }
        View rootView = view.getRootView();
        if (view == rootView) {
            f$$ExternalSyntheticBUOutline1.m215m("Cannot add OnPostDrawListener to root view");
            return null;
        }
        if (!(rootView instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) rootView;
        RootState rootState2 = getRootState(viewGroup);
        if (rootState2 == null) {
            ViewOnPostDraw viewOnPostDraw = new ViewOnPostDraw(viewGroup.getContext());
            RootState rootState3 = new RootState(viewOnPostDraw);
            viewGroup.setTag(C2807R.id.tag_view_on_post_draw_root_state, rootState3);
            if (viewGroup instanceof FrameLayout) {
                viewGroup.addView(viewOnPostDraw, new FrameLayout.LayoutParams(1, 1, 17));
            } else {
                viewGroup.addView(viewOnPostDraw, new ViewGroup.LayoutParams(1, 1));
            }
            rootState2 = rootState3;
        }
        viewState.rootState = rootState2;
        return rootState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void attachAllListeners(View view, ViewState viewState) {
        RootState rootStateAttachToRoot = attachToRoot(view, viewState);
        if (rootStateAttachToRoot == null) {
            return;
        }
        ArrayList<OnPostDrawListener> arrayList = viewState.listeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            OnPostDrawListener onPostDrawListener = arrayList.get(i);
            i++;
            rootStateAttachToRoot.viewOnPostDraw.addOnPostDrawListener(onPostDrawListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void detachAllListeners(ViewState viewState) {
        RootState rootState = viewState.rootState;
        if (rootState == null) {
            return;
        }
        ArrayList<OnPostDrawListener> arrayList = viewState.listeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            OnPostDrawListener onPostDrawListener = arrayList.get(i);
            i++;
            rootState.viewOnPostDraw.removeOnPostDrawListener(onPostDrawListener);
        }
        viewState.rootState = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ViewState getViewState(View view) {
        return (ViewState) view.getTag(C2807R.id.tag_view_on_post_draw_state);
    }

    private static RootState getRootState(ViewGroup viewGroup) {
        return (RootState) viewGroup.getTag(C2807R.id.tag_view_on_post_draw_root_state);
    }

    public static final class ViewState {
        final View.OnAttachStateChangeListener attachStateChangeListener;
        final ArrayList<OnPostDrawListener> listeners;
        RootState rootState;

        private ViewState() {
            this.listeners = new ArrayList<>();
            this.attachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.messenger.postdrawcompat.ViewOnPostDrawListener.ViewState.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    ViewState viewState = ViewOnPostDrawListener.getViewState(view);
                    if (viewState != null) {
                        ViewOnPostDrawListener.attachAllListeners(view, viewState);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    ViewState viewState = ViewOnPostDrawListener.getViewState(view);
                    if (viewState != null) {
                        ViewOnPostDrawListener.detachAllListeners(viewState);
                    }
                }
            };
        }
    }

    public static final class RootState {
        final ViewOnPostDraw viewOnPostDraw;

        public RootState(ViewOnPostDraw viewOnPostDraw) {
            this.viewOnPostDraw = viewOnPostDraw;
        }
    }
}
