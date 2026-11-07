package org.telegram.ui;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Trace;
import android.view.Choreographer;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.utils.DebugRecordingCanvas;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.SeekBarView;

/* JADX INFO: loaded from: classes6.dex */
public class DebugRecordingCanvasReplayFragment extends BaseFragment {
    private FrameLayout contentView;
    private int currentFrame;
    private final DebugRecordingCanvas debugRecordingCanvas;
    private int framesCount;
    private ImageButton playButton;
    private View replayView;
    private SeekBarView seekBarView;
    private boolean isPlaying = false;
    private final Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback() { // from class: org.telegram.ui.DebugRecordingCanvasReplayFragment.1
        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            if (DebugRecordingCanvasReplayFragment.this.isPlaying) {
                DebugRecordingCanvasReplayFragment.this.currentFrame++;
                if (DebugRecordingCanvasReplayFragment.this.currentFrame > DebugRecordingCanvasReplayFragment.this.framesCount) {
                    DebugRecordingCanvasReplayFragment.this.currentFrame = 0;
                    DebugRecordingCanvasReplayFragment.this.isPlaying = false;
                }
                DebugRecordingCanvasReplayFragment.this.seekBarView.setProgress(DebugRecordingCanvasReplayFragment.this.currentFrame / DebugRecordingCanvasReplayFragment.this.framesCount);
                DebugRecordingCanvasReplayFragment.this.replayView.invalidate();
                Choreographer.getInstance().postFrameCallback(this);
            }
        }
    };

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public DebugRecordingCanvasReplayFragment(DebugRecordingCanvas debugRecordingCanvas) {
        this.currentFrame = 0;
        this.debugRecordingCanvas = debugRecordingCanvas;
        this.framesCount = debugRecordingCanvas.getCommandCount();
        this.currentFrame = 0;
        this.hasOwnBackground = true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ActionBar createActionBar(Context context) {
        ActionBar actionBarCreateActionBar = super.createActionBar(context);
        actionBarCreateActionBar.setAddToContainer(false);
        return actionBarCreateActionBar;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.contentView = frameLayout;
        this.fragmentView = frameLayout;
        View view = new View(context) { // from class: org.telegram.ui.DebugRecordingCanvasReplayFragment.2
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                Trace.beginSection("render_" + DebugRecordingCanvasReplayFragment.this.currentFrame + "_" + DebugRecordingCanvasReplayFragment.this.framesCount);
                super.onDraw(canvas);
                if (!DebugRecordingCanvasReplayFragment.this.isPlaying) {
                    invalidate();
                }
                int i = DebugRecordingCanvasReplayFragment.this.currentFrame;
                int i2 = DebugRecordingCanvasReplayFragment.this.framesCount;
                DebugRecordingCanvasReplayFragment debugRecordingCanvasReplayFragment = DebugRecordingCanvasReplayFragment.this;
                if (i == i2) {
                    debugRecordingCanvasReplayFragment.debugRecordingCanvas.replayAll(canvas);
                } else {
                    debugRecordingCanvasReplayFragment.debugRecordingCanvas.replayCommands(canvas, DebugRecordingCanvasReplayFragment.this.currentFrame);
                }
                Trace.endSection();
            }
        };
        this.replayView = view;
        this.contentView.addView(view, LayoutHelper.createFrameMatchParent());
        this.playButton = new ImageButton(context);
        updatePlayButtonIcon();
        this.playButton.setBackgroundColor(0);
        this.playButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DebugRecordingCanvasReplayFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$0(view2);
            }
        });
        SeekBarView seekBarView = new SeekBarView(context);
        this.seekBarView = seekBarView;
        seekBarView.setReportChanges(true);
        this.seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.DebugRecordingCanvasReplayFragment.3
            @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarDrag(boolean z, float f) {
                DebugRecordingCanvasReplayFragment.this.stopPlayback();
                DebugRecordingCanvasReplayFragment.this.currentFrame = Math.round(r2.framesCount * f);
                DebugRecordingCanvasReplayFragment.this.replayView.invalidate();
            }
        });
        this.seekBarView.setProgress(this.currentFrame / this.framesCount);
        FrameLayout frameLayout2 = new FrameLayout(context);
        frameLayout2.addView(this.playButton, LayoutHelper.createFrame(38, 38.0f, 19, 0.0f, 0.0f, 0.0f, 0.0f));
        frameLayout2.addView(this.seekBarView, LayoutHelper.createFrame(-1, 38.0f, 16, 46.0f, 0.0f, 0.0f, 0.0f));
        this.contentView.addView(frameLayout2, LayoutHelper.createFrame(-1, 38.0f, 80, 16.0f, 0.0f, 16.0f, 16.0f));
        frameLayout2.setTranslationY(-AndroidUtilities.navigationBarHeight);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        togglePlayback();
    }

    private void togglePlayback() {
        if (this.isPlaying) {
            stopPlayback();
        } else {
            startPlayback();
        }
    }

    private void startPlayback() {
        this.isPlaying = true;
        this.currentFrame = 0;
        updatePlayButtonIcon();
        Choreographer.getInstance().postFrameCallback(this.frameCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPlayback() {
        this.isPlaying = false;
        Choreographer.getInstance().removeFrameCallback(this.frameCallback);
        updatePlayButtonIcon();
    }

    private void updatePlayButtonIcon() {
        ImageButton imageButton = this.playButton;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageResource(this.isPlaying ? R.drawable.ic_media_pause : R.drawable.ic_media_play);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        stopPlayback();
    }
}
