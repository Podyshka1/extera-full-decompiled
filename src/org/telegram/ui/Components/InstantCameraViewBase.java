package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import com.exteragram.messenger.CameraType;
import com.exteragram.messenger.ExteraConfig;
import org.telegram.messenger.ImageReceiver;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.InstantCameraView;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.utils.settings.SharedSettings;

/* JADX INFO: loaded from: classes7.dex */
public abstract class InstantCameraViewBase extends FrameLayout {
    private AnimationCallback animationCallback;
    private RecordingUiFrameCallback recordingUiFrameCallback;
    private boolean recordingUiFrameClockActive;
    private TrimCallback trimCallback;

    public interface AnimationCallback {
        void onAnimation(boolean z, boolean z2);
    }

    public interface RecordingUiFrameCallback {
        void onActiveChanged(boolean z);

        void onFrame(long j);
    }

    public interface TrimCallback {
        void onTrimChanged(float f, float f2);
    }

    public abstract void cancel(boolean z);

    public abstract void changeVideoPreviewState(int i, float f);

    public abstract View getButtonsLayout();

    public abstract InstantViewCameraContainer getCameraContainer();

    public abstract RectF getCameraRect();

    public abstract View getMuteImageView();

    public abstract Paint getPaint();

    public abstract TextureView getTextureView();

    public abstract void hideCamera(boolean z);

    public abstract boolean isPaused();

    public abstract void onPanTranslationUpdate(float f);

    public abstract void send(int i, boolean z, int i2, int i3, int i4, long j, long j2);

    public abstract void setButtonsBackground(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory, BlurredBackgroundColorProvider blurredBackgroundColorProvider);

    public abstract void setInternalPadding(int i);

    public abstract void setIsMessageTransition(boolean z);

    public abstract void showCamera(boolean z);

    public abstract void togglePause();

    public InstantCameraViewBase(Context context) {
        super(context);
    }

    public static InstantCameraViewBase create(Context context, InstantCameraView.Delegate delegate, Theme.ResourcesProvider resourcesProvider, boolean z) {
        if (SharedSettings.roundVideoCamera2Enabled.get() && ExteraConfig.getCameraType() == CameraType.CAMERA_2) {
            return new InstantCameraView2(context, delegate, resourcesProvider, z);
        }
        return new InstantCameraView(context, delegate, resourcesProvider, z);
    }

    public static void setUseCamera2Implementation(boolean z) {
        SharedSettings.roundVideoCamera2Enabled.set(z);
    }

    public final void setAnimationCallback(AnimationCallback animationCallback) {
        this.animationCallback = animationCallback;
    }

    public final void setTrimCallback(TrimCallback trimCallback) {
        this.trimCallback = trimCallback;
    }

    public final void setRecordingUiFrameCallback(RecordingUiFrameCallback recordingUiFrameCallback) {
        this.recordingUiFrameCallback = recordingUiFrameCallback;
        if (recordingUiFrameCallback != null) {
            recordingUiFrameCallback.onActiveChanged(this.recordingUiFrameClockActive);
        }
    }

    public final void dispatchAnimationState(boolean z, boolean z2) {
        AnimationCallback animationCallback = this.animationCallback;
        if (animationCallback != null) {
            animationCallback.onAnimation(z, z2);
        }
    }

    public final void dispatchTrimRange(float f, float f2) {
        TrimCallback trimCallback = this.trimCallback;
        if (trimCallback != null) {
            trimCallback.onTrimChanged(f, f2);
        }
    }

    public final void dispatchRecordingUiFrameClockActive(boolean z) {
        if (this.recordingUiFrameClockActive == z) {
            return;
        }
        this.recordingUiFrameClockActive = z;
        RecordingUiFrameCallback recordingUiFrameCallback = this.recordingUiFrameCallback;
        if (recordingUiFrameCallback != null) {
            recordingUiFrameCallback.onActiveChanged(z);
        }
    }

    public final void dispatchRecordingUiFrame(long j) {
        RecordingUiFrameCallback recordingUiFrameCallback = this.recordingUiFrameCallback;
        if (recordingUiFrameCallback != null) {
            recordingUiFrameCallback.onFrame(j);
        }
    }

    public static abstract class InstantViewCameraContainer extends FrameLayout {
        public abstract void setImageReceiver(ImageReceiver imageReceiver);

        public InstantViewCameraContainer(Context context) {
            super(context);
        }
    }
}
