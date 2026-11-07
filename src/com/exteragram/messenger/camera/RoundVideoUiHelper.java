package com.exteragram.messenger.camera;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import com.exteragram.messenger.CameraType;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.VideoMessagesCamera;
import com.exteragram.messenger.debug.DebugConfig;
import com.exteragram.messenger.debug.DebugOverlayView;
import com.exteragram.messenger.utils.system.SystemUtils;
import java.io.File;
import java.io.FileOutputStream;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Stories.recorder.DualCameraView;
import org.telegram.ui.Stories.recorder.FlashViews;
import org.telegram.ui.Stories.recorder.SliderView;
import org.telegram.utils.recorder.round.RoundVideoSession;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RoundVideoUiHelper {
    private static Bitmap backCameraThumb;
    private static Bitmap frontCameraThumb;

    public static void applySessionSettings(RoundVideoSession.Builder builder, boolean z) {
        VideoMessagesCamera videoMessagesCamera = ExteraConfig.getVideoMessagesCamera();
        if (videoMessagesCamera != VideoMessagesCamera.ASK) {
            z = videoMessagesCamera == VideoMessagesCamera.FRONT;
        }
        builder.setInitialFacing(z ? RoundVideoSession.CameraFacing.FRONT : RoundVideoSession.CameraFacing.BACK).setFrameRate(ExteraConfig.getExtendedFramesPerSecond() ? RoundVideoSession.FrameRate.FPS_60 : RoundVideoSession.FrameRate.FPS_30).setVideoBitrate(SystemUtils.getRoundVideoBitrate() * 1024).setAudioBitrate(SystemUtils.getRoundAudioBitrate() * 1024).setOutputSize(SystemUtils.getRoundVideoResolution()).setDualCameraEnabled(DualCameraView.roundDualAvailableStatic(ApplicationLoader.applicationContext)).setMaximumDurationMs(SystemUtils.getRoundVideoMaxDurationMs()).setCameraXEnabled(ExteraConfig.getCameraType() == CameraType.CAMERA_X);
    }

    public static void onActiveFacingChanged(RoundVideoSession.CameraFacing cameraFacing) {
        if (!ExteraConfig.getRememberLastUsedCamera() || ExteraConfig.getVideoMessagesCamera() == VideoMessagesCamera.ASK) {
            return;
        }
        ExteraConfig.setVideoMessagesCamera(cameraFacing == RoundVideoSession.CameraFacing.FRONT ? VideoMessagesCamera.FRONT : VideoMessagesCamera.REAR);
    }

    public static Bitmap getCameraThumb(RoundVideoSession.CameraFacing cameraFacing) {
        boolean z = cameraFacing == RoundVideoSession.CameraFacing.FRONT;
        Bitmap bitmapDecodeFile = z ? frontCameraThumb : backCameraThumb;
        if (bitmapDecodeFile != null) {
            return bitmapDecodeFile;
        }
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(getCameraThumbFile(cameraFacing).getAbsolutePath());
        } catch (Throwable unused) {
        }
        if (z) {
            frontCameraThumb = bitmapDecodeFile;
        } else {
            backCameraThumb = bitmapDecodeFile;
        }
        return bitmapDecodeFile;
    }

    public static void storeCameraThumb(RoundVideoSession.CameraFacing cameraFacing, final Bitmap bitmap) {
        if (cameraFacing == RoundVideoSession.CameraFacing.FRONT) {
            frontCameraThumb = bitmap;
        } else {
            backCameraThumb = bitmap;
        }
        final File cameraThumbFile = getCameraThumbFile(cameraFacing);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.camera.RoundVideoUiHelper$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RoundVideoUiHelper.m2327$r8$lambda$gLjtP16RJ0x9cVMMVT7R5ZfXk(cameraThumbFile, bitmap);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$gLjt-P16RJ0x9cVMM-VT7R5ZfXk, reason: not valid java name */
    public static /* synthetic */ void m2327$r8$lambda$gLjtP16RJ0x9cVMMVT7R5ZfXk(File file, Bitmap bitmap) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                fileOutputStream.close();
            } finally {
            }
        } catch (Throwable unused) {
        }
    }

    private static File getCameraThumbFile(RoundVideoSession.CameraFacing cameraFacing) {
        return new File(ApplicationLoader.getFilesDirFixed(), cameraFacing == RoundVideoSession.CameraFacing.FRONT ? "icthumb_front.jpg" : "icthumb_back.jpg");
    }

    public static void applyFlashSettings(FlashViews flashViews) {
        flashViews.setWarmth(ExteraConfig.getFlashWarmth());
        flashViews.setIntensity(ExteraConfig.getFlashIntensity());
    }

    public static void addDebugOverlay(ViewGroup viewGroup, DebugOverlayView.DataSource dataSource) {
        if (DebugConfig.getDebugCameraMetrics()) {
            DebugOverlayView debugOverlayView = new DebugOverlayView(viewGroup.getContext());
            debugOverlayView.setDataSource(dataSource);
            viewGroup.addView(debugOverlayView, DebugOverlayView.createLayoutParams());
        }
    }

    public static void populateDebugOverlay(DebugOverlayView.ContentBuilder contentBuilder, Context context, RoundVideoSession roundVideoSession, RoundVideoSession.StateInfo stateInfo, RoundVideoSession.CameraCapabilities cameraCapabilities, InstantCameraZoomSlider instantCameraZoomSlider) {
        contentBuilder.title("InstantCamera2");
        if (roundVideoSession == null) {
            contentBuilder.line("session=null");
            return;
        }
        contentBuilder.kv("output", roundVideoSession.getOutputResolution().getSize() + "p " + (roundVideoSession.getVideoBitrate() / 1000) + "kbps");
        if (stateInfo != null) {
            contentBuilder.kv("state", stateInfo.getState()).kv("recordedMs", stateInfo.getRecordedDurationMs() + "/" + stateInfo.getMaximumDurationMs()).kv("flash", Boolean.valueOf(stateInfo.isFlashEnabled())).kv("switching", Boolean.valueOf(stateInfo.isCameraSwitching()));
        }
        contentBuilder.section("Camera2");
        if (cameraCapabilities == null) {
            contentBuilder.line("capabilities=null");
            return;
        }
        RoundVideoSession.FrameRate activeFrameRate = cameraCapabilities.getActiveFrameRate();
        DebugOverlayView.ContentBuilder contentBuilderKv = contentBuilder.kv("id", cameraCapabilities.getActiveCameraId()).kv("facing", cameraCapabilities.getRequestedFacing() + "->" + cameraCapabilities.getActiveFacing()).kv("mode", cameraCapabilities.getRequestedResolution() + "->" + cameraCapabilities.getActiveResolution());
        StringBuilder sb = new StringBuilder();
        sb.append(cameraCapabilities.getRequestedFrameRate().getValue());
        sb.append("->");
        sb.append(activeFrameRate == null ? "null" : Integer.valueOf(activeFrameRate.getValue()));
        DebugOverlayView.ContentBuilder contentBuilderLine = contentBuilderKv.kv("fps", sb.toString()).kv("flashType", cameraCapabilities.getFlashType()).kv("stabilization", Boolean.valueOf(ExteraConfig.getCameraStabilization())).line("zoom=" + instantCameraZoomSlider.getZoom() + " [" + instantCameraZoomSlider.getMinimumZoom() + ".." + instantCameraZoomSlider.getMaximumZoom() + "]");
        StringBuilder sb2 = new StringBuilder("zoom.stops=");
        sb2.append(CameraDebugUtils.formatZoomStops(instantCameraZoomSlider.getToggleStops()));
        DebugOverlayView.ContentBuilder contentBuilderLine2 = contentBuilderLine.line(sb2.toString());
        StringBuilder sb3 = new StringBuilder("zoom.lenses=");
        sb3.append(CameraDebugUtils.formatZoomStops(instantCameraZoomSlider.getOpticalZoomRatios()));
        contentBuilderLine2.line(sb3.toString()).line("c2.fpsRanges=" + CameraDebugUtils.getCamera2SupportedFpsRanges(context, cameraCapabilities.getActiveCameraId())).line("ids=" + CameraDebugUtils.getCamera2CameraList(context));
    }

    public static ItemOptions showFlashOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view, final FlashViews flashViews, Runnable runnable) {
        return ItemOptions.makeOptions(viewGroup, resourcesProvider, view).addView(new SliderView(viewGroup.getContext(), 1).setValue(ExteraConfig.getFlashWarmth()).setOnValueChange(new Utilities.Callback() { // from class: com.exteragram.messenger.camera.RoundVideoUiHelper$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                RoundVideoUiHelper.m2326$r8$lambda$HTcZLs1ziyymvk98rr3jkv3eS4(flashViews, (Float) obj);
            }
        })).addSpaceGap().addView(new SliderView(viewGroup.getContext(), 2).setMinMax(0.5f, 1.0f).setValue(ExteraConfig.getFlashIntensity()).setOnValueChange(new Utilities.Callback() { // from class: com.exteragram.messenger.camera.RoundVideoUiHelper$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                RoundVideoUiHelper.$r8$lambda$l_o1vPRrcg_YKf9zKdsoeSTz5m4(flashViews, (Float) obj);
            }
        })).setOnDismiss(runnable).setDimAlpha(50).setGravity(5).translate(AndroidUtilities.dp(46.0f), AndroidUtilities.dp(4.0f)).setBackgroundColor(-1155851493).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$HTcZ-Ls1ziyymvk98rr3jkv3eS4, reason: not valid java name */
    public static /* synthetic */ void m2326$r8$lambda$HTcZLs1ziyymvk98rr3jkv3eS4(FlashViews flashViews, Float f) {
        ExteraConfig.setFlashWarmth(f.floatValue());
        flashViews.setWarmth(f.floatValue());
    }

    public static /* synthetic */ void $r8$lambda$l_o1vPRrcg_YKf9zKdsoeSTz5m4(FlashViews flashViews, Float f) {
        ExteraConfig.setFlashIntensity(f.floatValue());
        flashViews.setIntensity(f.floatValue());
    }
}
