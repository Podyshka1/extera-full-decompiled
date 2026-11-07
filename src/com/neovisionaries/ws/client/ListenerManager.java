package com.neovisionaries.ws.client;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
class ListenerManager {
    private List<WebSocketListener> mCopiedListeners;
    private final List<WebSocketListener> mListeners = new ArrayList();
    private boolean mSyncNeeded = true;
    private final WebSocket mWebSocket;

    public ListenerManager(WebSocket webSocket) {
        this.mWebSocket = webSocket;
    }

    public void addListener(WebSocketListener webSocketListener) {
        if (webSocketListener == null) {
            return;
        }
        synchronized (this.mListeners) {
            this.mListeners.add(webSocketListener);
            this.mSyncNeeded = true;
        }
    }

    private List<WebSocketListener> getSynchronizedListeners() {
        synchronized (this.mListeners) {
            try {
                if (!this.mSyncNeeded) {
                    return this.mCopiedListeners;
                }
                ArrayList arrayList = new ArrayList(this.mListeners.size());
                Iterator<WebSocketListener> it = this.mListeners.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
                this.mCopiedListeners = arrayList;
                this.mSyncNeeded = false;
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void callOnStateChanged(WebSocketState webSocketState) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onStateChanged(this.mWebSocket, webSocketState);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnConnected(Map<String, List<String>> map) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onConnected(this.mWebSocket, map);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnConnectError(WebSocketException webSocketException) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onConnectError(this.mWebSocket, webSocketException);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnDisconnected(WebSocketFrame webSocketFrame, WebSocketFrame webSocketFrame2, boolean z) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onDisconnected(this.mWebSocket, webSocketFrame, webSocketFrame2, z);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnContinuationFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onContinuationFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnTextFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onTextFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnBinaryFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onBinaryFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnCloseFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onCloseFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnPingFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onPingFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnPongFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onPongFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnTextMessage(String str) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onTextMessage(this.mWebSocket, str);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnTextMessage(byte[] bArr) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onTextMessage(this.mWebSocket, bArr);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnBinaryMessage(byte[] bArr) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onBinaryMessage(this.mWebSocket, bArr);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnSendingFrame(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onSendingFrame(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnFrameSent(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onFrameSent(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnFrameUnsent(WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onFrameUnsent(this.mWebSocket, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnThreadCreated(ThreadType threadType, Thread thread) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onThreadCreated(this.mWebSocket, threadType, thread);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnThreadStarted(ThreadType threadType, Thread thread) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onThreadStarted(this.mWebSocket, threadType, thread);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnThreadStopping(ThreadType threadType, Thread thread) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onThreadStopping(this.mWebSocket, threadType, thread);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnError(WebSocketException webSocketException) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onError(this.mWebSocket, webSocketException);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnFrameError(WebSocketException webSocketException, WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onFrameError(this.mWebSocket, webSocketException, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnMessageError(WebSocketException webSocketException, List<WebSocketFrame> list) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onMessageError(this.mWebSocket, webSocketException, list);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnMessageDecompressionError(WebSocketException webSocketException, byte[] bArr) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onMessageDecompressionError(this.mWebSocket, webSocketException, bArr);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnTextMessageError(WebSocketException webSocketException, byte[] bArr) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onTextMessageError(this.mWebSocket, webSocketException, bArr);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnSendError(WebSocketException webSocketException, WebSocketFrame webSocketFrame) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onSendError(this.mWebSocket, webSocketException, webSocketFrame);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    public void callOnUnexpectedError(WebSocketException webSocketException) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onUnexpectedError(this.mWebSocket, webSocketException);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }

    private void callHandleCallbackError(WebSocketListener webSocketListener, Throwable th) {
        try {
            webSocketListener.handleCallbackError(this.mWebSocket, th);
        } catch (Throwable unused) {
        }
    }

    public void callOnSendingHandshake(String str, List<String[]> list) {
        for (WebSocketListener webSocketListener : getSynchronizedListeners()) {
            try {
                webSocketListener.onSendingHandshake(this.mWebSocket, str, list);
            } catch (Throwable th) {
                callHandleCallbackError(webSocketListener, th);
            }
        }
    }
}
