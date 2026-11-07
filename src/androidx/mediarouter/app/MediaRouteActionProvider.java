package androidx.mediarouter.app;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ActionProvider;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterParams;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class MediaRouteActionProvider extends ActionProvider {
    private static final String TAG = "MRActionProvider";
    private MediaRouteButton mButton;
    private MediaRouteDialogFactory mDialogFactory;
    private final MediaRouter mRouter;
    private MediaRouteSelector mSelector;

    @Deprecated
    public void setAlwaysVisible(boolean z) {
    }

    public MediaRouteActionProvider(Context context) {
        super(context);
        this.mSelector = MediaRouteSelector.EMPTY;
        this.mDialogFactory = MediaRouteDialogFactory.getDefault();
        this.mRouter = MediaRouter.getInstance(context);
    }

    public MediaRouteSelector getRouteSelector() {
        return this.mSelector;
    }

    public void setRouteSelector(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            f$$ExternalSyntheticBUOutline1.m212m("selector must not be null");
            return;
        }
        if (this.mSelector.equals(mediaRouteSelector)) {
            return;
        }
        this.mSelector = mediaRouteSelector;
        MediaRouteButton mediaRouteButton = this.mButton;
        if (mediaRouteButton != null) {
            mediaRouteButton.setRouteSelector(mediaRouteSelector);
        }
    }

    @Deprecated
    public void enableDynamicGroup() {
        MediaRouterParams routerParams = this.mRouter.getRouterParams();
        MediaRouterParams.Builder builder = routerParams == null ? new MediaRouterParams.Builder() : new MediaRouterParams.Builder(routerParams);
        builder.setDialogType(2);
        this.mRouter.setRouterParams(builder.build());
    }

    public MediaRouteDialogFactory getDialogFactory() {
        return this.mDialogFactory;
    }

    public void setDialogFactory(MediaRouteDialogFactory mediaRouteDialogFactory) {
        if (mediaRouteDialogFactory == null) {
            f$$ExternalSyntheticBUOutline1.m212m("factory must not be null");
            return;
        }
        if (this.mDialogFactory != mediaRouteDialogFactory) {
            this.mDialogFactory = mediaRouteDialogFactory;
            MediaRouteButton mediaRouteButton = this.mButton;
            if (mediaRouteButton != null) {
                mediaRouteButton.setDialogFactory(mediaRouteDialogFactory);
            }
        }
    }

    public MediaRouteButton getMediaRouteButton() {
        return this.mButton;
    }

    public MediaRouteButton onCreateMediaRouteButton() {
        return new MediaRouteButton(getContext());
    }

    @Override // androidx.core.view.ActionProvider
    public View onCreateActionView() {
        if (this.mButton != null) {
            Log.e(TAG, "onCreateActionView: this ActionProvider is already associated with a menu item. Don't reuse MediaRouteActionProvider instances! Abandoning the old menu item...");
        }
        MediaRouteButton mediaRouteButtonOnCreateMediaRouteButton = onCreateMediaRouteButton();
        this.mButton = mediaRouteButtonOnCreateMediaRouteButton;
        mediaRouteButtonOnCreateMediaRouteButton.setCheatSheetEnabled(true);
        this.mButton.setRouteSelector(this.mSelector);
        this.mButton.setDialogFactory(this.mDialogFactory);
        this.mButton.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
        return this.mButton;
    }

    @Override // androidx.core.view.ActionProvider
    public boolean onPerformDefaultAction() {
        MediaRouteButton mediaRouteButton = this.mButton;
        if (mediaRouteButton != null) {
            return mediaRouteButton.showDialog();
        }
        return false;
    }
}
