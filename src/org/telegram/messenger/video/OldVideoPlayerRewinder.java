package org.telegram.messenger.video;

import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.Components.PhotoViewerWebView;
import org.telegram.ui.Components.VideoPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class OldVideoPlayerRewinder {
    private long rewindBackSeekPlayerPosition;
    public boolean rewindByBackSeek;
    public int rewindCount;
    private boolean rewindForward;
    private long rewindLastTime;
    private long rewindLastUpdatePlayerTime;
    private long startRewindFrom;
    private Runnable updateRewindRunnable;
    private VideoPlayer videoPlayer;
    private PhotoViewerWebView webView;
    private float playSpeed = 1.0f;
    private final Runnable backSeek = new Runnable() { // from class: org.telegram.messenger.video.OldVideoPlayerRewinder.1
        @Override // java.lang.Runnable
        public void run() {
            if (OldVideoPlayerRewinder.this.videoPlayer == null && OldVideoPlayerRewinder.this.webView == null) {
                return;
            }
            long duration = OldVideoPlayerRewinder.this.getDuration();
            if (duration == 0 || duration == -9223372036854775807L) {
                OldVideoPlayerRewinder.this.rewindLastTime = System.currentTimeMillis();
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = jCurrentTimeMillis - OldVideoPlayerRewinder.this.rewindLastTime;
            OldVideoPlayerRewinder.this.rewindLastTime = jCurrentTimeMillis;
            OldVideoPlayerRewinder oldVideoPlayerRewinder = OldVideoPlayerRewinder.this;
            int i = oldVideoPlayerRewinder.rewindCount;
            long j2 = j * (i == 1 ? 3L : i == 2 ? 6L : 12L);
            boolean z = oldVideoPlayerRewinder.rewindForward;
            OldVideoPlayerRewinder oldVideoPlayerRewinder2 = OldVideoPlayerRewinder.this;
            if (z) {
                oldVideoPlayerRewinder2.rewindBackSeekPlayerPosition += j2;
            } else {
                oldVideoPlayerRewinder2.rewindBackSeekPlayerPosition -= j2;
            }
            long j3 = OldVideoPlayerRewinder.this.rewindBackSeekPlayerPosition;
            OldVideoPlayerRewinder oldVideoPlayerRewinder3 = OldVideoPlayerRewinder.this;
            if (j3 < 0) {
                oldVideoPlayerRewinder3.rewindBackSeekPlayerPosition = 0L;
            } else if (oldVideoPlayerRewinder3.rewindBackSeekPlayerPosition > duration) {
                OldVideoPlayerRewinder.this.rewindBackSeekPlayerPosition = duration;
            }
            OldVideoPlayerRewinder oldVideoPlayerRewinder4 = OldVideoPlayerRewinder.this;
            if (oldVideoPlayerRewinder4.rewindByBackSeek && oldVideoPlayerRewinder4.rewindLastTime - OldVideoPlayerRewinder.this.rewindLastUpdatePlayerTime > 350) {
                OldVideoPlayerRewinder oldVideoPlayerRewinder5 = OldVideoPlayerRewinder.this;
                oldVideoPlayerRewinder5.rewindLastUpdatePlayerTime = oldVideoPlayerRewinder5.rewindLastTime;
                OldVideoPlayerRewinder oldVideoPlayerRewinder6 = OldVideoPlayerRewinder.this;
                oldVideoPlayerRewinder6.seekTo(oldVideoPlayerRewinder6.rewindBackSeekPlayerPosition);
            }
            OldVideoPlayerRewinder oldVideoPlayerRewinder7 = OldVideoPlayerRewinder.this;
            oldVideoPlayerRewinder7.updateRewindProgressUi(OldVideoPlayerRewinder.this.rewindBackSeekPlayerPosition - OldVideoPlayerRewinder.this.startRewindFrom, OldVideoPlayerRewinder.this.rewindBackSeekPlayerPosition / OldVideoPlayerRewinder.this.getDuration(), oldVideoPlayerRewinder7.rewindByBackSeek);
            if (OldVideoPlayerRewinder.this.rewindBackSeekPlayerPosition == 0 || OldVideoPlayerRewinder.this.rewindBackSeekPlayerPosition >= duration) {
                OldVideoPlayerRewinder oldVideoPlayerRewinder8 = OldVideoPlayerRewinder.this;
                if (oldVideoPlayerRewinder8.rewindByBackSeek) {
                    oldVideoPlayerRewinder8.rewindLastUpdatePlayerTime = oldVideoPlayerRewinder8.rewindLastTime;
                    OldVideoPlayerRewinder oldVideoPlayerRewinder9 = OldVideoPlayerRewinder.this;
                    oldVideoPlayerRewinder9.seekTo(oldVideoPlayerRewinder9.rewindBackSeekPlayerPosition);
                }
                OldVideoPlayerRewinder.this.cancelRewind();
            }
            OldVideoPlayerRewinder oldVideoPlayerRewinder10 = OldVideoPlayerRewinder.this;
            if (oldVideoPlayerRewinder10.rewindCount > 0) {
                AndroidUtilities.runOnUIThread(oldVideoPlayerRewinder10.backSeek, 16L);
            }
        }
    };

    public void onRewindCanceled() {
    }

    public void onRewindStart(boolean z) {
    }

    public void updateRewindProgressUi(long j, float f, boolean z) {
    }

    public void startRewind(PhotoViewerWebView photoViewerWebView, boolean z, float f) {
        this.webView = photoViewerWebView;
        this.playSpeed = f;
        this.rewindForward = z;
        cancelRewind();
        incrementRewindCount();
    }

    public void startRewind(VideoPlayer videoPlayer, boolean z, float f) {
        this.videoPlayer = videoPlayer;
        this.playSpeed = f;
        this.rewindForward = z;
        cancelRewind();
        incrementRewindCount();
    }

    public void cancelRewind() {
        if (this.rewindCount != 0) {
            this.rewindCount = 0;
            if (this.videoPlayer != null || this.webView != null) {
                if (this.rewindByBackSeek) {
                    seekTo(this.rewindBackSeekPlayerPosition);
                } else {
                    seekTo(getCurrentPosition());
                }
                setPlaybackSpeed(this.playSpeed);
            }
        }
        AndroidUtilities.cancelRunOnUIThread(this.backSeek);
        Runnable runnable = this.updateRewindRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.updateRewindRunnable = null;
        }
        onRewindCanceled();
    }

    private void incrementRewindCount() {
        if (this.videoPlayer == null && this.webView == null) {
            return;
        }
        int i = this.rewindCount + 1;
        this.rewindCount = i;
        boolean z = false;
        if (i == 1) {
            if (this.rewindForward && isPlaying()) {
                this.rewindByBackSeek = false;
            } else {
                this.rewindByBackSeek = true;
            }
        }
        if (this.rewindForward && !this.rewindByBackSeek) {
            int i2 = this.rewindCount;
            if (i2 == 1) {
                setPlaybackSpeed(4.0f);
            } else if (i2 == 2) {
                setPlaybackSpeed(7.0f);
            } else {
                setPlaybackSpeed(13.0f);
            }
            z = true;
        } else {
            int i3 = this.rewindCount;
            if (i3 == 1 || i3 == 2) {
                z = true;
            }
        }
        if (this.rewindCount == 1) {
            this.rewindBackSeekPlayerPosition = getCurrentPosition();
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.rewindLastTime = jCurrentTimeMillis;
            this.rewindLastUpdatePlayerTime = jCurrentTimeMillis;
            this.startRewindFrom = getCurrentPosition();
            onRewindStart(this.rewindForward);
        }
        AndroidUtilities.cancelRunOnUIThread(this.backSeek);
        AndroidUtilities.runOnUIThread(this.backSeek);
        if (z) {
            Runnable runnable = this.updateRewindRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.video.OldVideoPlayerRewinder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$incrementRewindCount$0();
                }
            };
            this.updateRewindRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$incrementRewindCount$0() {
        this.updateRewindRunnable = null;
        incrementRewindCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekTo(long j) {
        PhotoViewerWebView photoViewerWebView = this.webView;
        if (photoViewerWebView != null) {
            photoViewerWebView.seekTo(j);
            return;
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        videoPlayer.seekTo(j);
    }

    private void setPlaybackSpeed(float f) {
        PhotoViewerWebView photoViewerWebView = this.webView;
        if (photoViewerWebView != null) {
            photoViewerWebView.setPlaybackSpeed(f);
            return;
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return;
        }
        videoPlayer.setPlaybackSpeed(f);
    }

    private long getCurrentPosition() {
        if (this.webView != null) {
            return r0.getCurrentPosition();
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getCurrentPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getDuration() {
        if (this.webView != null) {
            return r0.getVideoDuration();
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return 0L;
        }
        return videoPlayer.getDuration();
    }

    private boolean isPlaying() {
        PhotoViewerWebView photoViewerWebView = this.webView;
        if (photoViewerWebView != null) {
            return photoViewerWebView.isPlaying();
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        if (videoPlayer == null) {
            return false;
        }
        return videoPlayer.isPlaying();
    }

    public float getVideoProgress() {
        return this.rewindBackSeekPlayerPosition / getDuration();
    }
}
