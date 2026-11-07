package com.neovisionaries.ws.client;

import com.neovisionaries.ws.client.StateManager;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes5.dex */
class WritingThread extends WebSocketThread {
    private WebSocketFrame mCloseFrame;
    private boolean mFlushNeeded;
    private final LinkedList<WebSocketFrame> mFrames;
    private final PerMessageCompressionExtension mPMCE;
    private boolean mStopRequested;
    private boolean mStopped;

    public WritingThread(WebSocket webSocket) {
        super("WritingThread", webSocket, ThreadType.WRITING_THREAD);
        this.mFrames = new LinkedList<>();
        this.mPMCE = webSocket.getPerMessageCompressionExtension();
    }

    @Override // com.neovisionaries.ws.client.WebSocketThread
    public void runMain() {
        try {
            main();
        } catch (Throwable th) {
            WebSocketException webSocketException = new WebSocketException(WebSocketError.UNEXPECTED_ERROR_IN_WRITING_THREAD, "An uncaught throwable was detected in the writing thread: " + th.getMessage(), th);
            ListenerManager listenerManager = this.mWebSocket.getListenerManager();
            listenerManager.callOnError(webSocketException);
            listenerManager.callOnUnexpectedError(webSocketException);
        }
        synchronized (this) {
            this.mStopped = true;
            notifyAll();
        }
        notifyFinished();
    }

    private void main() {
        this.mWebSocket.onWritingThreadStarted();
        while (true) {
            int iWaitForFrames = waitForFrames();
            if (iWaitForFrames != 1) {
                if (iWaitForFrames == 3) {
                    flushIgnoreError();
                } else if (iWaitForFrames == 2) {
                    continue;
                } else {
                    try {
                        sendFrames(false);
                    } catch (WebSocketException unused) {
                    }
                }
            }
            try {
                sendFrames(true);
                return;
            } catch (WebSocketException unused2) {
                return;
            }
        }
    }

    public void requestStop() {
        synchronized (this) {
            this.mStopRequested = true;
            notifyAll();
        }
    }

    public boolean queueFrame(WebSocketFrame webSocketFrame) {
        int frameQueueSize;
        synchronized (this) {
            while (!this.mStopped) {
                try {
                    if (!this.mStopRequested && this.mCloseFrame == null && !webSocketFrame.isControlFrame() && (frameQueueSize = this.mWebSocket.getFrameQueueSize()) != 0 && this.mFrames.size() >= frameQueueSize) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                    if (isHighPriorityFrame(webSocketFrame)) {
                        addHighPriorityFrame(webSocketFrame);
                    } else {
                        this.mFrames.addLast(webSocketFrame);
                    }
                    notifyAll();
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return false;
        }
    }

    private static boolean isHighPriorityFrame(WebSocketFrame webSocketFrame) {
        return webSocketFrame.isPingFrame() || webSocketFrame.isPongFrame();
    }

    private void addHighPriorityFrame(WebSocketFrame webSocketFrame) {
        Iterator<WebSocketFrame> it = this.mFrames.iterator();
        int i = 0;
        while (it.hasNext() && isHighPriorityFrame(it.next())) {
            i++;
        }
        this.mFrames.add(i, webSocketFrame);
    }

    private void flushIgnoreError() {
        try {
            flush();
        } catch (IOException unused) {
        }
    }

    private void flush() throws IOException {
        this.mWebSocket.getOutput().flush();
    }

    private int waitForFrames() {
        synchronized (this) {
            try {
                if (this.mStopRequested) {
                    return 1;
                }
                if (this.mCloseFrame != null) {
                    return 1;
                }
                if (this.mFrames.size() == 0) {
                    if (this.mFlushNeeded) {
                        this.mFlushNeeded = false;
                        return 3;
                    }
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
                if (this.mStopRequested) {
                    return 1;
                }
                if (this.mFrames.size() != 0) {
                    return 0;
                }
                if (!this.mFlushNeeded) {
                    return 2;
                }
                this.mFlushNeeded = false;
                return 3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
    
        sendFrame(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        if (r2.isPingFrame() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        if (r2.isPongFrame() == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (isFlushNeeded(r5) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0037, code lost:
    
        r0 = flushIfLongInterval(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003c, code lost:
    
        doFlush();
        r0 = java.lang.System.currentTimeMillis();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void sendFrames(boolean z) throws WebSocketException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (true) {
            synchronized (this) {
                WebSocketFrame webSocketFramePoll = this.mFrames.poll();
                notifyAll();
                if (webSocketFramePoll == null) {
                    break;
                }
            }
        }
        if (isFlushNeeded(z)) {
            doFlush();
        }
    }

    private boolean isFlushNeeded(boolean z) {
        return z || this.mWebSocket.isAutoFlush() || this.mFlushNeeded || this.mCloseFrame != null;
    }

    private long flushIfLongInterval(long j) throws WebSocketException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (1000 >= jCurrentTimeMillis - j) {
            return j;
        }
        doFlush();
        return jCurrentTimeMillis;
    }

    private void doFlush() throws WebSocketException {
        try {
            flush();
            synchronized (this) {
                this.mFlushNeeded = false;
            }
        } catch (IOException e) {
            WebSocketException webSocketException = new WebSocketException(WebSocketError.FLUSH_ERROR, "Flushing frames to the server failed: " + e.getMessage(), e);
            ListenerManager listenerManager = this.mWebSocket.getListenerManager();
            listenerManager.callOnError(webSocketException);
            listenerManager.callOnSendError(webSocketException, null);
            throw webSocketException;
        }
    }

    private void sendFrame(WebSocketFrame webSocketFrame) throws WebSocketException {
        WebSocketFrame webSocketFrameCompressFrame = WebSocketFrame.compressFrame(webSocketFrame, this.mPMCE);
        this.mWebSocket.getListenerManager().callOnSendingFrame(webSocketFrameCompressFrame);
        if (this.mCloseFrame == null) {
            if (webSocketFrameCompressFrame.isCloseFrame()) {
                this.mCloseFrame = webSocketFrameCompressFrame;
            }
            if (webSocketFrameCompressFrame.isCloseFrame()) {
                changeToClosing();
            }
            try {
                this.mWebSocket.getOutput().write(webSocketFrameCompressFrame);
                this.mWebSocket.getListenerManager().callOnFrameSent(webSocketFrameCompressFrame);
                return;
            } catch (IOException e) {
                WebSocketException webSocketException = new WebSocketException(WebSocketError.IO_ERROR_IN_WRITING, "An I/O error occurred when a frame was tried to be sent: " + e.getMessage(), e);
                ListenerManager listenerManager = this.mWebSocket.getListenerManager();
                listenerManager.callOnError(webSocketException);
                listenerManager.callOnSendError(webSocketException, webSocketFrameCompressFrame);
                throw webSocketException;
            }
        }
        this.mWebSocket.getListenerManager().callOnFrameUnsent(webSocketFrameCompressFrame);
    }

    private void changeToClosing() {
        WebSocketState webSocketState;
        boolean z;
        StateManager stateManager = this.mWebSocket.getStateManager();
        synchronized (stateManager) {
            try {
                WebSocketState state = stateManager.getState();
                webSocketState = WebSocketState.CLOSING;
                if (state == webSocketState || state == WebSocketState.CLOSED) {
                    z = false;
                } else {
                    stateManager.changeToClosing(StateManager.CloseInitiator.CLIENT);
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            this.mWebSocket.getListenerManager().callOnStateChanged(webSocketState);
        }
    }

    private void notifyFinished() {
        this.mWebSocket.onWritingThreadFinished(this.mCloseFrame);
    }
}
