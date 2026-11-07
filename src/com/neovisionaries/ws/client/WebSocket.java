package com.neovisionaries.ws.client;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.neovisionaries.ws.client.StateManager;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocket {
    private List<WebSocketExtension> mAgreedExtensions;
    private String mAgreedProtocol;
    private WebSocketFrame mClientCloseFrame;
    private boolean mDirectTextMessage;
    private boolean mExtended;
    private int mFrameQueueSize;
    private HandshakeBuilder mHandshakeBuilder;
    private WebSocketInputStream mInput;
    private int mMaxPayloadSize;
    private boolean mOnConnectedCalled;
    private WebSocketOutputStream mOutput;
    private PerMessageCompressionExtension mPerMessageCompressionExtension;
    private ReadingThread mReadingThread;
    private boolean mReadingThreadFinished;
    private boolean mReadingThreadStarted;
    private WebSocketFrame mServerCloseFrame;
    private Map<String, List<String>> mServerHeaders;
    private final SocketConnector mSocketConnector;
    private final WebSocketFactory mWebSocketFactory;
    private WritingThread mWritingThread;
    private boolean mWritingThreadFinished;
    private boolean mWritingThreadStarted;
    private final Object mThreadsLock = new Object();
    private boolean mAutoFlush = true;
    private boolean mMissingCloseFrameAllowed = true;
    private Object mOnConnectedCalledLock = new Object();
    private final StateManager mStateManager = new StateManager();
    private final ListenerManager mListenerManager = new ListenerManager(this);
    private final PingSender mPingSender = new PingSender(this, new CounterPayloadGenerator());
    private final PongSender mPongSender = new PongSender(this, new CounterPayloadGenerator());

    public WebSocket(WebSocketFactory webSocketFactory, boolean z, String str, String str2, String str3, SocketConnector socketConnector) {
        this.mWebSocketFactory = webSocketFactory;
        this.mSocketConnector = socketConnector;
        this.mHandshakeBuilder = new HandshakeBuilder(z, str, str2, str3);
    }

    public void finalize() throws Throwable {
        if (isInState(WebSocketState.CREATED)) {
            finish();
        }
        super.finalize();
    }

    public boolean isOpen() {
        return isInState(WebSocketState.OPEN);
    }

    private boolean isInState(WebSocketState webSocketState) {
        boolean z;
        synchronized (this.mStateManager) {
            z = this.mStateManager.getState() == webSocketState;
        }
        return z;
    }

    public boolean isExtended() {
        return this.mExtended;
    }

    public boolean isAutoFlush() {
        return this.mAutoFlush;
    }

    public boolean isMissingCloseFrameAllowed() {
        return this.mMissingCloseFrameAllowed;
    }

    public boolean isDirectTextMessage() {
        return this.mDirectTextMessage;
    }

    public int getFrameQueueSize() {
        return this.mFrameQueueSize;
    }

    public WebSocket addListener(WebSocketListener webSocketListener) {
        this.mListenerManager.addListener(webSocketListener);
        return this;
    }

    public Socket getSocket() {
        return this.mSocketConnector.getSocket();
    }

    public WebSocket connect() {
        changeStateOnConnect();
        try {
            this.mServerHeaders = shakeHands(this.mSocketConnector.connect());
            this.mPerMessageCompressionExtension = findAgreedPerMessageCompressionExtension();
            StateManager stateManager = this.mStateManager;
            WebSocketState webSocketState = WebSocketState.OPEN;
            stateManager.setState(webSocketState);
            this.mListenerManager.callOnStateChanged(webSocketState);
            startThreads();
            return this;
        } catch (WebSocketException e) {
            this.mSocketConnector.closeSilently();
            StateManager stateManager2 = this.mStateManager;
            WebSocketState webSocketState2 = WebSocketState.CLOSED;
            stateManager2.setState(webSocketState2);
            this.mListenerManager.callOnStateChanged(webSocketState2);
            throw e;
        }
    }

    public WebSocket connectAsynchronously() {
        ConnectThread connectThread = new ConnectThread(this);
        ListenerManager listenerManager = this.mListenerManager;
        if (listenerManager != null) {
            listenerManager.callOnThreadCreated(ThreadType.CONNECT_THREAD, connectThread);
        }
        connectThread.start();
        return this;
    }

    public WebSocket disconnect() {
        return disconnect(1000, null);
    }

    public WebSocket disconnect(int i, String str) {
        return disconnect(i, str, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    public WebSocket disconnect(int i, String str, long j) {
        synchronized (this.mStateManager) {
            try {
                int i2 = C22051.$SwitchMap$com$neovisionaries$ws$client$WebSocketState[this.mStateManager.getState().ordinal()];
                if (i2 == 1) {
                    finishAsynchronously();
                    return this;
                }
                if (i2 != 2) {
                    return this;
                }
                this.mStateManager.changeToClosing(StateManager.CloseInitiator.CLIENT);
                sendFrame(WebSocketFrame.createCloseFrame(i, str));
                this.mListenerManager.callOnStateChanged(WebSocketState.CLOSING);
                if (j < 0) {
                    j = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
                }
                stopThreads(j);
                return this;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: com.neovisionaries.ws.client.WebSocket$1 */
    public static /* synthetic */ class C22051 {
        static final /* synthetic */ int[] $SwitchMap$com$neovisionaries$ws$client$WebSocketState;

        static {
            int[] iArr = new int[WebSocketState.values().length];
            $SwitchMap$com$neovisionaries$ws$client$WebSocketState = iArr;
            try {
                iArr[WebSocketState.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$neovisionaries$ws$client$WebSocketState[WebSocketState.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public WebSocket sendFrame(WebSocketFrame webSocketFrame) {
        if (webSocketFrame != null) {
            synchronized (this.mStateManager) {
                try {
                    WebSocketState state = this.mStateManager.getState();
                    if (state != WebSocketState.OPEN && state != WebSocketState.CLOSING) {
                        return this;
                    }
                    WritingThread writingThread = this.mWritingThread;
                    if (writingThread != null) {
                        List<WebSocketFrame> listSplitIfNecessary = splitIfNecessary(webSocketFrame);
                        if (listSplitIfNecessary == null) {
                            writingThread.queueFrame(webSocketFrame);
                            return this;
                        }
                        Iterator<WebSocketFrame> it = listSplitIfNecessary.iterator();
                        while (it.hasNext()) {
                            writingThread.queueFrame(it.next());
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this;
    }

    private List<WebSocketFrame> splitIfNecessary(WebSocketFrame webSocketFrame) {
        return WebSocketFrame.splitIfNecessary(webSocketFrame, this.mMaxPayloadSize, this.mPerMessageCompressionExtension);
    }

    public WebSocket sendText(String str) {
        return sendFrame(WebSocketFrame.createTextFrame(str));
    }

    private void changeStateOnConnect() {
        WebSocketState webSocketState;
        synchronized (this.mStateManager) {
            if (this.mStateManager.getState() != WebSocketState.CREATED) {
                throw new WebSocketException(WebSocketError.NOT_IN_CREATED_STATE, "The current state of the WebSocket is not CREATED.");
            }
            StateManager stateManager = this.mStateManager;
            webSocketState = WebSocketState.CONNECTING;
            stateManager.setState(webSocketState);
        }
        this.mListenerManager.callOnStateChanged(webSocketState);
    }

    private Map<String, List<String>> shakeHands(Socket socket) throws WebSocketException {
        WebSocketInputStream webSocketInputStreamOpenInputStream = openInputStream(socket);
        WebSocketOutputStream webSocketOutputStreamOpenOutputStream = openOutputStream(socket);
        String strGenerateWebSocketKey = generateWebSocketKey();
        writeHandshake(webSocketOutputStreamOpenOutputStream, strGenerateWebSocketKey);
        Map<String, List<String>> handshake = readHandshake(webSocketInputStreamOpenInputStream, strGenerateWebSocketKey);
        this.mInput = webSocketInputStreamOpenInputStream;
        this.mOutput = webSocketOutputStreamOpenOutputStream;
        return handshake;
    }

    private WebSocketInputStream openInputStream(Socket socket) throws WebSocketException {
        try {
            return new WebSocketInputStream(new BufferedInputStream(socket.getInputStream()));
        } catch (IOException e) {
            throw new WebSocketException(WebSocketError.SOCKET_INPUT_STREAM_FAILURE, "Failed to get the input stream of the raw socket: " + e.getMessage(), e);
        }
    }

    private WebSocketOutputStream openOutputStream(Socket socket) throws WebSocketException {
        try {
            return new WebSocketOutputStream(new BufferedOutputStream(socket.getOutputStream()));
        } catch (IOException e) {
            throw new WebSocketException(WebSocketError.SOCKET_OUTPUT_STREAM_FAILURE, "Failed to get the output stream from the raw socket: " + e.getMessage(), e);
        }
    }

    private static String generateWebSocketKey() {
        byte[] bArr = new byte[16];
        Misc.nextBytes(bArr);
        return Base64.encode(bArr);
    }

    private void writeHandshake(WebSocketOutputStream webSocketOutputStream, String str) throws WebSocketException {
        this.mHandshakeBuilder.setKey(str);
        String strBuildRequestLine = this.mHandshakeBuilder.buildRequestLine();
        List<String[]> listBuildHeaders = this.mHandshakeBuilder.buildHeaders();
        String strBuild = HandshakeBuilder.build(strBuildRequestLine, listBuildHeaders);
        this.mListenerManager.callOnSendingHandshake(strBuildRequestLine, listBuildHeaders);
        try {
            webSocketOutputStream.write(strBuild);
            webSocketOutputStream.flush();
        } catch (IOException e) {
            throw new WebSocketException(WebSocketError.OPENING_HAHDSHAKE_REQUEST_FAILURE, "Failed to send an opening handshake request to the server: " + e.getMessage(), e);
        }
    }

    private Map<String, List<String>> readHandshake(WebSocketInputStream webSocketInputStream, String str) {
        return new HandshakeReader(this).readHandshake(webSocketInputStream, str);
    }

    private void startThreads() {
        ReadingThread readingThread = new ReadingThread(this);
        WritingThread writingThread = new WritingThread(this);
        synchronized (this.mThreadsLock) {
            this.mReadingThread = readingThread;
            this.mWritingThread = writingThread;
        }
        readingThread.callOnThreadCreated();
        writingThread.callOnThreadCreated();
        readingThread.start();
        writingThread.start();
    }

    private void stopThreads(long j) {
        ReadingThread readingThread;
        WritingThread writingThread;
        synchronized (this.mThreadsLock) {
            readingThread = this.mReadingThread;
            writingThread = this.mWritingThread;
            this.mReadingThread = null;
            this.mWritingThread = null;
        }
        if (readingThread != null) {
            readingThread.requestStop(j);
        }
        if (writingThread != null) {
            writingThread.requestStop();
        }
    }

    public WebSocketInputStream getInput() {
        return this.mInput;
    }

    public WebSocketOutputStream getOutput() {
        return this.mOutput;
    }

    public StateManager getStateManager() {
        return this.mStateManager;
    }

    public ListenerManager getListenerManager() {
        return this.mListenerManager;
    }

    public HandshakeBuilder getHandshakeBuilder() {
        return this.mHandshakeBuilder;
    }

    public void setAgreedExtensions(List<WebSocketExtension> list) {
        this.mAgreedExtensions = list;
    }

    public void setAgreedProtocol(String str) {
        this.mAgreedProtocol = str;
    }

    public void onReadingThreadStarted() {
        boolean z;
        synchronized (this.mThreadsLock) {
            this.mReadingThreadStarted = true;
            z = this.mWritingThreadStarted;
        }
        callOnConnectedIfNotYet();
        if (z) {
            onThreadsStarted();
        }
    }

    public void onWritingThreadStarted() {
        boolean z;
        synchronized (this.mThreadsLock) {
            this.mWritingThreadStarted = true;
            z = this.mReadingThreadStarted;
        }
        callOnConnectedIfNotYet();
        if (z) {
            onThreadsStarted();
        }
    }

    private void callOnConnectedIfNotYet() {
        synchronized (this.mOnConnectedCalledLock) {
            try {
                if (this.mOnConnectedCalled) {
                    return;
                }
                this.mOnConnectedCalled = true;
                this.mListenerManager.callOnConnected(this.mServerHeaders);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void onThreadsStarted() {
        this.mPingSender.start();
        this.mPongSender.start();
    }

    public void onReadingThreadFinished(WebSocketFrame webSocketFrame) {
        synchronized (this.mThreadsLock) {
            try {
                this.mReadingThreadFinished = true;
                this.mServerCloseFrame = webSocketFrame;
                if (this.mWritingThreadFinished) {
                    onThreadsFinished();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onWritingThreadFinished(WebSocketFrame webSocketFrame) {
        synchronized (this.mThreadsLock) {
            try {
                this.mWritingThreadFinished = true;
                this.mClientCloseFrame = webSocketFrame;
                if (this.mReadingThreadFinished) {
                    onThreadsFinished();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void onThreadsFinished() {
        finish();
    }

    public void finish() {
        WebSocketState webSocketState;
        this.mPingSender.stop();
        this.mPongSender.stop();
        Socket socket = this.mSocketConnector.getSocket();
        if (socket != null) {
            try {
                socket.close();
            } catch (Throwable unused) {
            }
        }
        synchronized (this.mStateManager) {
            StateManager stateManager = this.mStateManager;
            webSocketState = WebSocketState.CLOSED;
            stateManager.setState(webSocketState);
        }
        this.mListenerManager.callOnStateChanged(webSocketState);
        this.mListenerManager.callOnDisconnected(this.mServerCloseFrame, this.mClientCloseFrame, this.mStateManager.getClosedByServer());
    }

    private void finishAsynchronously() {
        FinishThread finishThread = new FinishThread(this);
        finishThread.callOnThreadCreated();
        finishThread.start();
    }

    private PerMessageCompressionExtension findAgreedPerMessageCompressionExtension() {
        List<WebSocketExtension> list = this.mAgreedExtensions;
        if (list == null) {
            return null;
        }
        for (WebSocketExtension webSocketExtension : list) {
            if (webSocketExtension instanceof PerMessageCompressionExtension) {
                return (PerMessageCompressionExtension) webSocketExtension;
            }
        }
        return null;
    }

    public PerMessageCompressionExtension getPerMessageCompressionExtension() {
        return this.mPerMessageCompressionExtension;
    }
}
