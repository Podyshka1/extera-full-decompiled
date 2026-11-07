package androidx.media3.session;

import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.text.TextUtils;
import android.view.Surface;
import androidx.core.util.ObjectsCompat;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Rating;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.ConnectedControllersManager;
import androidx.media3.session.IMediaSession;
import androidx.media3.session.MediaSession;
import androidx.media3.session.MediaSessionStub;
import androidx.media3.session.PlayerInfo;
import androidx.media3.session.legacy.MediaSessionManager;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
final class MediaSessionStub extends IMediaSession.Stub {
    private final ConnectedControllersManager<IBinder> connectedControllersManager;
    private int nextUniqueTrackGroupIdPrefix;
    private final WeakReference<MediaSessionImpl> sessionImpl;
    private final Set<MediaSession.ControllerInfo> pendingControllers = Collections.synchronizedSet(new HashSet());
    private ImmutableBiMap<TrackGroup, String> trackGroupIdMap = ImmutableBiMap.of();

    public interface ControllerPlayerTask {
        void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo);
    }

    public interface MediaItemPlayerTask {
        void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List<MediaItem> list);
    }

    public interface MediaItemsWithStartPositionPlayerTask {
        void run(PlayerWrapper playerWrapper, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition);
    }

    public interface SessionTask<T, K extends MediaSessionImpl> {
        T run(K k, MediaSession.ControllerInfo controllerInfo, int i);
    }

    public MediaSessionStub(MediaSessionImpl mediaSessionImpl) {
        this.sessionImpl = new WeakReference<>(mediaSessionImpl);
        this.connectedControllersManager = new ConnectedControllersManager<>(mediaSessionImpl);
    }

    public ConnectedControllersManager<IBinder> getConnectedControllersManager() {
        return this.connectedControllersManager;
    }

    private static void sendSessionResult(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i, SessionResult sessionResult) {
        try {
            ((MediaSession.ControllerCb) Assertions.checkStateNotNull(controllerInfo.getControllerCb())).onSessionResult(i, sessionResult);
            mediaSessionImpl.triggerPlayerInfoUpdate();
        } catch (RemoteException e) {
            Log.m164w("MediaSessionStub", "Failed to send result to controller " + controllerInfo, e);
        }
    }

    private static <K extends MediaSessionImpl> SessionTask<ListenableFuture<Void>, K> sendSessionResultSuccess(final Consumer<PlayerWrapper> consumer) {
        return sendSessionResultSuccess(new ControllerPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda72
            @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
            public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
                consumer.accept(playerWrapper);
            }
        });
    }

    private static <K extends MediaSessionImpl> SessionTask<ListenableFuture<Void>, K> sendSessionResultSuccess(final ControllerPlayerTask controllerPlayerTask) {
        return new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda68
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
                return MediaSessionStub.$r8$lambda$w6qIkBSRZSZXrnt4gax8PQOK6u8(controllerPlayerTask, mediaSessionImpl, controllerInfo, i);
            }
        };
    }

    public static /* synthetic */ ListenableFuture $r8$lambda$w6qIkBSRZSZXrnt4gax8PQOK6u8(ControllerPlayerTask controllerPlayerTask, MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
        if (mediaSessionImpl.isReleased()) {
            return Futures.immediateVoidFuture();
        }
        controllerPlayerTask.run(mediaSessionImpl.getPlayerWrapper(), controllerInfo);
        sendSessionResult(mediaSessionImpl, controllerInfo, i, new SessionResult(0));
        return Futures.immediateVoidFuture();
    }

    private static <K extends MediaSessionImpl> SessionTask<ListenableFuture<Void>, K> sendSessionResultWhenReady(final SessionTask<ListenableFuture<SessionResult>, K> sessionTask) {
        return new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda74
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
                return MediaSessionStub.handleSessionTaskWhenReady(mediaSessionImpl, controllerInfo, i, sessionTask, new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda82
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        MediaSessionStub.$r8$lambda$SjZC1HY1SjS6ktIzYoyCorTzbWs(mediaSessionImpl, controllerInfo, i, (ListenableFuture) obj);
                    }
                });
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$SjZC1HY1SjS6ktIzYoyCorTzbWs(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i, ListenableFuture listenableFuture) {
        SessionResult sessionResult;
        try {
            sessionResult = (SessionResult) Assertions.checkNotNull((SessionResult) listenableFuture.get(), "SessionResult must not be null");
        } catch (InterruptedException e) {
            e = e;
            Log.m164w("MediaSessionStub", "Session operation failed", e);
            sessionResult = new SessionResult(!(e.getCause() instanceof UnsupportedOperationException) ? -6 : -1);
        } catch (CancellationException e2) {
            Log.m164w("MediaSessionStub", "Session operation cancelled", e2);
            sessionResult = new SessionResult(1);
        } catch (ExecutionException e3) {
            e = e3;
            Log.m164w("MediaSessionStub", "Session operation failed", e);
            sessionResult = new SessionResult(!(e.getCause() instanceof UnsupportedOperationException) ? -6 : -1);
        }
        sendSessionResult(mediaSessionImpl, controllerInfo, i, sessionResult);
    }

    private static <K extends MediaSessionImpl> SessionTask<ListenableFuture<SessionResult>, K> handleMediaItemsWhenReady(final SessionTask<ListenableFuture<List<MediaItem>>, K> sessionTask, final MediaItemPlayerTask mediaItemPlayerTask) {
        return new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda75
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
                return MediaSessionStub.m1981$r8$lambda$NNomdGBsxRck4A0A21lVx5ADcI(sessionTask, mediaItemPlayerTask, mediaSessionImpl, controllerInfo, i);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$NNomdGB-sxRck4A0A21lVx5ADcI, reason: not valid java name */
    public static /* synthetic */ ListenableFuture m1981$r8$lambda$NNomdGBsxRck4A0A21lVx5ADcI(SessionTask sessionTask, final MediaItemPlayerTask mediaItemPlayerTask, final MediaSessionImpl mediaSessionImpl, final MediaSession.ControllerInfo controllerInfo, int i) {
        if (mediaSessionImpl.isReleased()) {
            return Futures.immediateFuture(new SessionResult(-100));
        }
        return Util.transformFutureAsync((ListenableFuture) sessionTask.run(mediaSessionImpl, controllerInfo, i), new AsyncFunction() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda81
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                MediaSessionImpl mediaSessionImpl2 = mediaSessionImpl;
                MediaSession.ControllerInfo controllerInfo2 = controllerInfo;
                return Util.postOrRunWithCompletion(mediaSessionImpl2.getApplicationHandler(), mediaSessionImpl2.callWithControllerForCurrentRequestSet(controllerInfo2, new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda85
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSessionStub.$r8$lambda$yJgpcYXXKZF9DSZCkx_tkq7p_pA(mediaSessionImpl2, mediaItemPlayerTask, controllerInfo2, list);
                    }
                }), new SessionResult(0));
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$yJgpcYXXKZF9DSZCkx_tkq7p_pA(MediaSessionImpl mediaSessionImpl, MediaItemPlayerTask mediaItemPlayerTask, MediaSession.ControllerInfo controllerInfo, List list) {
        if (mediaSessionImpl.isReleased()) {
            return;
        }
        mediaItemPlayerTask.run(mediaSessionImpl.getPlayerWrapper(), controllerInfo, list);
    }

    private static <K extends MediaSessionImpl> SessionTask<ListenableFuture<SessionResult>, K> handleMediaItemsWithStartPositionWhenReady(final SessionTask<ListenableFuture<MediaSession.MediaItemsWithStartPosition>, K> sessionTask, final MediaItemsWithStartPositionPlayerTask mediaItemsWithStartPositionPlayerTask) {
        return new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda71
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
                return MediaSessionStub.$r8$lambda$G2yFvKUfRMY9Pnv8FG4VEvznbt0(sessionTask, mediaItemsWithStartPositionPlayerTask, mediaSessionImpl, controllerInfo, i);
            }
        };
    }

    public static /* synthetic */ ListenableFuture $r8$lambda$G2yFvKUfRMY9Pnv8FG4VEvznbt0(SessionTask sessionTask, final MediaItemsWithStartPositionPlayerTask mediaItemsWithStartPositionPlayerTask, final MediaSessionImpl mediaSessionImpl, final MediaSession.ControllerInfo controllerInfo, int i) {
        if (mediaSessionImpl.isReleased()) {
            return Futures.immediateFuture(new SessionResult(-100));
        }
        return Util.transformFutureAsync((ListenableFuture) sessionTask.run(mediaSessionImpl, controllerInfo, i), new AsyncFunction() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda77
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                MediaSessionImpl mediaSessionImpl2 = mediaSessionImpl;
                return Util.postOrRunWithCompletion(mediaSessionImpl2.getApplicationHandler(), mediaSessionImpl2.callWithControllerForCurrentRequestSet(controllerInfo, new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda84
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSessionStub.$r8$lambda$6LU3_piQnzAW2gdi3_ZmbUEYE2M(mediaSessionImpl2, mediaItemsWithStartPositionPlayerTask, mediaItemsWithStartPosition);
                    }
                }), new SessionResult(0));
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$6LU3_piQnzAW2gdi3_ZmbUEYE2M(MediaSessionImpl mediaSessionImpl, MediaItemsWithStartPositionPlayerTask mediaItemsWithStartPositionPlayerTask, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition) {
        if (mediaSessionImpl.isReleased()) {
            return;
        }
        mediaItemsWithStartPositionPlayerTask.run(mediaSessionImpl.getPlayerWrapper(), mediaItemsWithStartPosition);
    }

    private static void sendLibraryResult(MediaSession.ControllerInfo controllerInfo, int i, LibraryResult<?> libraryResult) {
        try {
            ((MediaSession.ControllerCb) Assertions.checkStateNotNull(controllerInfo.getControllerCb())).onLibraryResult(i, libraryResult);
        } catch (RemoteException e) {
            Log.m164w("MediaSessionStub", "Failed to send result to browser " + controllerInfo, e);
        }
    }

    private static <V, K extends MediaLibrarySessionImpl> SessionTask<ListenableFuture<Void>, K> sendLibraryResultWhenReady(final SessionTask<ListenableFuture<LibraryResult<V>>, K> sessionTask) {
        return new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda73
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
                MediaSessionStub.SessionTask sessionTask2 = sessionTask;
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                return MediaSessionStub.handleSessionTaskWhenReady(null, controllerInfo, i, sessionTask2, new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda76
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        MediaSessionStub.m1976$r8$lambda$2isH75fLe4J0Dtj3oqE3ggOXeg(controllerInfo, i, (ListenableFuture) obj);
                    }
                });
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: $r8$lambda$2isH75fLe4J0Dtj3oqE-3ggOXeg, reason: not valid java name */
    public static /* synthetic */ void m1976$r8$lambda$2isH75fLe4J0Dtj3oqE3ggOXeg(MediaSession.ControllerInfo controllerInfo, int i, ListenableFuture listenableFuture) {
        LibraryResult libraryResultOfError;
        try {
            libraryResultOfError = (LibraryResult) Assertions.checkNotNull((LibraryResult) listenableFuture.get(), "LibraryResult must not be null");
        } catch (InterruptedException e) {
            e = e;
            Log.m164w("MediaSessionStub", "Library operation failed", e);
            libraryResultOfError = LibraryResult.ofError(-1);
        } catch (CancellationException e2) {
            Log.m164w("MediaSessionStub", "Library operation cancelled", e2);
            libraryResultOfError = LibraryResult.ofError(1);
        } catch (ExecutionException e3) {
            e = e3;
            Log.m164w("MediaSessionStub", "Library operation failed", e);
            libraryResultOfError = LibraryResult.ofError(-1);
        }
        sendLibraryResult(controllerInfo, i, libraryResultOfError);
    }

    private <K extends MediaSessionImpl> void queueSessionTaskWithPlayerCommand(IMediaController iMediaController, int i, int i2, SessionTask<ListenableFuture<Void>, K> sessionTask) {
        MediaSession.ControllerInfo controller = this.connectedControllersManager.getController(iMediaController.asBinder());
        if (controller != null) {
            queueSessionTaskWithPlayerCommandForControllerInfo(controller, i, i2, sessionTask);
        }
    }

    private <K extends MediaSessionImpl> void queueSessionTaskWithPlayerCommandForControllerInfo(final MediaSession.ControllerInfo controllerInfo, final int i, final int i2, final SessionTask<ListenableFuture<Void>, K> sessionTask) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final MediaSessionImpl mediaSessionImpl = this.sessionImpl.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.isReleased()) {
                Util.postOrRun(mediaSessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda70
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSessionStub.m1987$r8$lambda$bvK32CkttsLHWKTbiPRQQ31Hus(this.f$0, controllerInfo, i2, mediaSessionImpl, i, sessionTask);
                    }
                });
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$bvK32Cktts-LHWKTbiPRQQ31Hus, reason: not valid java name */
    public static /* synthetic */ void m1987$r8$lambda$bvK32CkttsLHWKTbiPRQQ31Hus(MediaSessionStub mediaSessionStub, final MediaSession.ControllerInfo controllerInfo, int i, final MediaSessionImpl mediaSessionImpl, final int i2, final SessionTask sessionTask) {
        if (!mediaSessionStub.connectedControllersManager.isPlayerCommandAvailable(controllerInfo, i)) {
            sendSessionResult(mediaSessionImpl, controllerInfo, i2, new SessionResult(-4));
            return;
        }
        int iOnPlayerCommandRequestOnHandler = mediaSessionImpl.onPlayerCommandRequestOnHandler(controllerInfo, i);
        if (iOnPlayerCommandRequestOnHandler != 0) {
            sendSessionResult(mediaSessionImpl, controllerInfo, i2, new SessionResult(iOnPlayerCommandRequestOnHandler));
        } else if (i == 27) {
            mediaSessionImpl.callWithControllerForCurrentRequestSet(controllerInfo, new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    sessionTask.run(mediaSessionImpl, controllerInfo, i2);
                }
            }).run();
            mediaSessionStub.connectedControllersManager.addToCommandQueue(controllerInfo, i, new ConnectedControllersManager.AsyncCommand() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda79
                @Override // androidx.media3.session.ConnectedControllersManager.AsyncCommand
                public final ListenableFuture run() {
                    return Futures.immediateVoidFuture();
                }
            });
        } else {
            mediaSessionStub.connectedControllersManager.addToCommandQueue(controllerInfo, i, new ConnectedControllersManager.AsyncCommand() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda80
                @Override // androidx.media3.session.ConnectedControllersManager.AsyncCommand
                public final ListenableFuture run() {
                    return MediaSessionStub.$r8$lambda$RRPw6LAp1NW6DX57p_2Wvz9dOWQ(sessionTask, mediaSessionImpl, controllerInfo, i2);
                }
            });
        }
    }

    public static /* synthetic */ ListenableFuture $r8$lambda$RRPw6LAp1NW6DX57p_2Wvz9dOWQ(SessionTask sessionTask, MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
        return (ListenableFuture) sessionTask.run(mediaSessionImpl, controllerInfo, i);
    }

    private <K extends MediaSessionImpl> void dispatchSessionTaskWithSessionCommand(IMediaController iMediaController, int i, int i2, SessionTask<ListenableFuture<Void>, K> sessionTask) {
        dispatchSessionTaskWithSessionCommand(iMediaController, i, null, i2, sessionTask);
    }

    private <K extends MediaSessionImpl> void dispatchSessionTaskWithSessionCommand(IMediaController iMediaController, int i, SessionCommand sessionCommand, SessionTask<ListenableFuture<Void>, K> sessionTask) {
        dispatchSessionTaskWithSessionCommand(iMediaController, i, sessionCommand, 0, sessionTask);
    }

    private <K extends MediaSessionImpl> void dispatchSessionTaskWithSessionCommand(IMediaController iMediaController, final int i, final SessionCommand sessionCommand, final int i2, final SessionTask<ListenableFuture<Void>, K> sessionTask) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final MediaSessionImpl mediaSessionImpl = this.sessionImpl.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.isReleased()) {
                final MediaSession.ControllerInfo controller = this.connectedControllersManager.getController(iMediaController.asBinder());
                if (controller != null) {
                    Util.postOrRun(mediaSessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda69
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaSessionStub.m1971$r8$lambda$sO_dzuDVi4Um3NQeY2UpD6YZKo(this.f$0, controller, sessionCommand, mediaSessionImpl, i, i2, sessionTask);
                        }
                    });
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                } else {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-sO_dzuDVi4Um3NQeY2UpD6YZKo, reason: not valid java name */
    public static /* synthetic */ void m1971$r8$lambda$sO_dzuDVi4Um3NQeY2UpD6YZKo(MediaSessionStub mediaSessionStub, MediaSession.ControllerInfo controllerInfo, SessionCommand sessionCommand, MediaSessionImpl mediaSessionImpl, int i, int i2, SessionTask sessionTask) {
        if (mediaSessionStub.connectedControllersManager.isConnected(controllerInfo)) {
            ConnectedControllersManager<IBinder> connectedControllersManager = mediaSessionStub.connectedControllersManager;
            if (sessionCommand != null) {
                if (!connectedControllersManager.isSessionCommandAvailable(controllerInfo, sessionCommand)) {
                    sendSessionResult(mediaSessionImpl, controllerInfo, i, new SessionResult(-4));
                    return;
                }
            } else if (!connectedControllersManager.isSessionCommandAvailable(controllerInfo, i2)) {
                sendSessionResult(mediaSessionImpl, controllerInfo, i, new SessionResult(-4));
                return;
            }
            sessionTask.run(mediaSessionImpl, controllerInfo, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T, K extends MediaSessionImpl> ListenableFuture<Void> handleSessionTaskWhenReady(final K k, MediaSession.ControllerInfo controllerInfo, int i, SessionTask<ListenableFuture<T>, K> sessionTask, final Consumer<ListenableFuture<T>> consumer) {
        if (k.isReleased()) {
            return Futures.immediateVoidFuture();
        }
        final ListenableFuture<T> listenableFutureRun = sessionTask.run(k, controllerInfo, i);
        final SettableFuture settableFutureCreate = SettableFuture.create();
        listenableFutureRun.addListener(new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda83
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionStub.$r8$lambda$zNvv3J7cSmshUkEZlCtyHBdu4zw(k, settableFutureCreate, consumer, listenableFutureRun);
            }
        }, MoreExecutors.directExecutor());
        return settableFutureCreate;
    }

    public static /* synthetic */ void $r8$lambda$zNvv3J7cSmshUkEZlCtyHBdu4zw(MediaSessionImpl mediaSessionImpl, SettableFuture settableFuture, Consumer consumer, ListenableFuture listenableFuture) {
        if (mediaSessionImpl.isReleased()) {
            settableFuture.set(null);
            return;
        }
        try {
            consumer.accept(listenableFuture);
            settableFuture.set(null);
        } catch (Throwable th) {
            settableFuture.setException(th);
        }
    }

    private int maybeCorrectMediaItemIndex(MediaSession.ControllerInfo controllerInfo, PlayerWrapper playerWrapper, int i) {
        return (playerWrapper.isCommandAvailable(17) && !this.connectedControllersManager.isPlayerCommandAvailable(controllerInfo, 17) && this.connectedControllersManager.isPlayerCommandAvailable(controllerInfo, 16)) ? i + playerWrapper.getCurrentMediaItemIndex() : i;
    }

    public void connect(final IMediaController iMediaController, final MediaSession.ControllerInfo controllerInfo) {
        if (iMediaController == null || controllerInfo == null) {
            SessionUtil.disconnectIMediaController(iMediaController);
            return;
        }
        final MediaSessionImpl mediaSessionImpl = this.sessionImpl.get();
        if (mediaSessionImpl == null || mediaSessionImpl.isReleased()) {
            SessionUtil.disconnectIMediaController(iMediaController);
        } else {
            this.pendingControllers.add(controllerInfo);
            Util.postOrRun(mediaSessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    MediaSessionStub.$r8$lambda$eBYEb4hdvmb8_NvJdQcYW_NbeUQ(this.f$0, controllerInfo, mediaSessionImpl, iMediaController);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$eBYEb4hdvmb8_NvJdQcYW_NbeUQ(MediaSessionStub mediaSessionStub, MediaSession.ControllerInfo controllerInfo, MediaSessionImpl mediaSessionImpl, IMediaController iMediaController) throws Throwable {
        IMediaController iMediaController2;
        Player.Commands commands;
        mediaSessionStub.getClass();
        boolean z = false;
        try {
            mediaSessionStub.pendingControllers.remove(controllerInfo);
            if (mediaSessionImpl.isReleased()) {
                SessionUtil.disconnectIMediaController(iMediaController);
                return;
            }
            IBinder callbackBinder = ((Controller2Cb) Assertions.checkStateNotNull((Controller2Cb) controllerInfo.getControllerCb())).getCallbackBinder();
            MediaSession.ConnectionResult connectionResultOnConnectOnHandler = mediaSessionImpl.onConnectOnHandler(controllerInfo);
            if (!connectionResultOnConnectOnHandler.isAccepted && !controllerInfo.isTrusted()) {
                SessionUtil.disconnectIMediaController(iMediaController);
                return;
            }
            if (!connectionResultOnConnectOnHandler.isAccepted) {
                connectionResultOnConnectOnHandler = MediaSession.ConnectionResult.accept(SessionCommands.EMPTY, Player.Commands.EMPTY);
            }
            if (mediaSessionStub.connectedControllersManager.isConnected(controllerInfo)) {
                Log.m163w("MediaSessionStub", "Controller " + controllerInfo + " has sent connection request multiple times");
            }
            mediaSessionStub.connectedControllersManager.addController(callbackBinder, controllerInfo, connectionResultOnConnectOnHandler.availableSessionCommands, connectionResultOnConnectOnHandler.availablePlayerCommands);
            SequencedFutureManager sequencedFutureManager = mediaSessionStub.connectedControllersManager.getSequencedFutureManager(controllerInfo);
            if (sequencedFutureManager == null) {
                Log.m163w("MediaSessionStub", "Ignoring connection request from unknown controller info");
                SessionUtil.disconnectIMediaController(iMediaController);
                return;
            }
            PlayerWrapper playerWrapper = mediaSessionImpl.getPlayerWrapper();
            PlayerInfo playerInfo = mediaSessionImpl.getPlayerInfo();
            PlaybackException playbackException = mediaSessionImpl.getPlaybackException();
            if (playbackException == null) {
                commands = connectionResultOnConnectOnHandler.availablePlayerCommands;
            } else {
                mediaSessionStub.connectedControllersManager.setPlaybackException(controllerInfo, playbackException, connectionResultOnConnectOnHandler.availablePlayerCommands);
                playerInfo = MediaSessionImpl.createPlayerInfoForCustomPlaybackException(playerInfo, playbackException);
                commands = (Player.Commands) Assertions.checkNotNull(MediaSessionImpl.createPlayerCommandsForCustomErrorState(connectionResultOnConnectOnHandler.availablePlayerCommands));
            }
            Player.Commands commands2 = commands;
            PlayerInfo playerInfoGenerateAndCacheUniqueTrackGroupIds = mediaSessionStub.generateAndCacheUniqueTrackGroupIds(playerInfo);
            MediaSession.Token platformToken = mediaSessionImpl.getPlatformToken();
            PendingIntent sessionActivity = connectionResultOnConnectOnHandler.sessionActivity;
            if (sessionActivity == null) {
                sessionActivity = mediaSessionImpl.getSessionActivity();
            }
            ImmutableList<CommandButton> customLayout = connectionResultOnConnectOnHandler.customLayout;
            if (customLayout == null) {
                customLayout = mediaSessionImpl.getCustomLayout();
            }
            ImmutableList<CommandButton> mediaButtonPreferences = connectionResultOnConnectOnHandler.mediaButtonPreferences;
            if (mediaButtonPreferences == null) {
                mediaButtonPreferences = mediaSessionImpl.getMediaButtonPreferences();
            }
            ImmutableList<CommandButton> commandButtonsForMediaItems = mediaSessionImpl.getCommandButtonsForMediaItems();
            SessionCommands sessionCommands = connectionResultOnConnectOnHandler.availableSessionCommands;
            Player.Commands availableCommands = playerWrapper.getAvailableCommands();
            Bundle extras = mediaSessionImpl.getToken().getExtras();
            Bundle sessionExtras = connectionResultOnConnectOnHandler.sessionExtras;
            if (sessionExtras == null) {
                sessionExtras = mediaSessionImpl.getSessionExtras();
            }
            ConnectionState connectionState = new ConnectionState(1008001300, 5, mediaSessionStub, sessionActivity, customLayout, mediaButtonPreferences, commandButtonsForMediaItems, sessionCommands, commands2, availableCommands, extras, sessionExtras, playerInfoGenerateAndCacheUniqueTrackGroupIds, platformToken);
            if (mediaSessionImpl.isReleased()) {
                SessionUtil.disconnectIMediaController(iMediaController);
                return;
            }
            try {
                iMediaController2 = iMediaController;
                try {
                    try {
                        iMediaController2.onConnected(sequencedFutureManager.obtainNextSequenceNumber(), connectionState.toBundleForRemoteProcess(controllerInfo.getInterfaceVersion()));
                        z = true;
                    } catch (RemoteException unused) {
                    }
                } catch (Throwable th) {
                    th = th;
                    if (!z) {
                        SessionUtil.disconnectIMediaController(iMediaController2);
                    }
                    throw th;
                }
            } catch (RemoteException unused2) {
                iMediaController2 = iMediaController;
            }
            if (z) {
                mediaSessionImpl.onPostConnectOnHandler(controllerInfo);
            }
            if (z) {
                return;
            }
            SessionUtil.disconnectIMediaController(iMediaController2);
        } catch (Throwable th2) {
            th = th2;
            iMediaController2 = iMediaController;
        }
    }

    public void release() {
        ImmutableList<MediaSession.ControllerInfo> connectedControllers = this.connectedControllersManager.getConnectedControllers();
        int size = connectedControllers.size();
        int i = 0;
        while (i < size) {
            MediaSession.ControllerInfo controllerInfo = connectedControllers.get(i);
            i++;
            MediaSession.ControllerInfo controllerInfo2 = controllerInfo;
            this.connectedControllersManager.removeController(controllerInfo2);
            MediaSession.ControllerCb controllerCb = controllerInfo2.getControllerCb();
            if (controllerCb != null) {
                controllerCb.onDisconnected(0);
            }
        }
        Iterator<MediaSession.ControllerInfo> it = this.pendingControllers.iterator();
        while (it.hasNext()) {
            MediaSession.ControllerCb controllerCb2 = it.next().getControllerCb();
            if (controllerCb2 != null) {
                controllerCb2.onDisconnected(0);
            }
        }
        this.pendingControllers.clear();
        this.sessionImpl.clear();
    }

    @Override // androidx.media3.session.IMediaSession
    public void connect(IMediaController iMediaController, int i, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            ConnectionRequest connectionRequestFromBundle = ConnectionRequest.fromBundle(bundle);
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            if (callingPid == 0) {
                callingPid = connectionRequestFromBundle.pid;
            }
            try {
                MediaSessionManager.RemoteUserInfo remoteUserInfo = new MediaSessionManager.RemoteUserInfo(connectionRequestFromBundle.packageName, callingPid, callingUid);
                MediaSessionImpl mediaSessionImpl = this.sessionImpl.get();
                boolean z = mediaSessionImpl != null && MediaSessionManager.getSessionManager(mediaSessionImpl.getContext()).isTrustedForMediaControl(remoteUserInfo);
                int i2 = connectionRequestFromBundle.libraryVersion;
                int i3 = connectionRequestFromBundle.controllerInterfaceVersion;
                connect(iMediaController, new MediaSession.ControllerInfo(remoteUserInfo, i2, i3, z, new Controller2Cb(iMediaController, i3), connectionRequestFromBundle.connectionHints, connectionRequestFromBundle.maxCommandsForMediaItems));
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                throw th;
            }
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for ConnectionRequest", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void stop(IMediaController iMediaController, int i) {
        MediaSession.ControllerInfo controller;
        if (iMediaController == null || (controller = this.connectedControllersManager.getController(iMediaController.asBinder())) == null) {
            return;
        }
        stopForControllerInfo(controller, i);
    }

    public void stopForControllerInfo(MediaSession.ControllerInfo controllerInfo, int i) {
        queueSessionTaskWithPlayerCommandForControllerInfo(controllerInfo, i, 3, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda55
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).stop();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void release(final IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            MediaSessionImpl mediaSessionImpl = this.sessionImpl.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.isReleased()) {
                Util.postOrRun(mediaSessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.connectedControllersManager.removeController(iMediaController.asBinder());
                    }
                });
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void onControllerResult(IMediaController iMediaController, int i, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            SessionResult sessionResultFromBundle = SessionResult.fromBundle(bundle);
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                SequencedFutureManager sequencedFutureManager = this.connectedControllersManager.getSequencedFutureManager(iMediaController.asBinder());
                if (sequencedFutureManager == null) {
                    return;
                }
                sequencedFutureManager.setFutureResult(i, sessionResultFromBundle);
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for SessionResult", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void play(IMediaController iMediaController, int i) {
        MediaSession.ControllerInfo controller;
        if (iMediaController == null || (controller = this.connectedControllersManager.getController(iMediaController.asBinder())) == null) {
            return;
        }
        playForControllerInfo(controller, i);
    }

    public void playForControllerInfo(final MediaSession.ControllerInfo controllerInfo, int i) {
        queueSessionTaskWithPlayerCommandForControllerInfo(controllerInfo, i, 1, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda35
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                MediaSessionStub.m1996$r8$lambda$wMocS4AH4xsCwAU3JbOpgcmZug(this.f$0, controllerInfo, (PlayerWrapper) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$wMocS4AH4xsCwAU3JbOpgcmZu-g, reason: not valid java name */
    public static /* synthetic */ void m1996$r8$lambda$wMocS4AH4xsCwAU3JbOpgcmZug(MediaSessionStub mediaSessionStub, MediaSession.ControllerInfo controllerInfo, PlayerWrapper playerWrapper) {
        MediaSessionImpl mediaSessionImpl = mediaSessionStub.sessionImpl.get();
        if (mediaSessionImpl == null || mediaSessionImpl.isReleased()) {
            return;
        }
        mediaSessionImpl.handleMediaControllerPlayRequest(controllerInfo, false);
    }

    @Override // androidx.media3.session.IMediaSession
    public void pause(IMediaController iMediaController, int i) {
        MediaSession.ControllerInfo controller;
        if (iMediaController == null || (controller = this.connectedControllersManager.getController(iMediaController.asBinder())) == null) {
            return;
        }
        pauseForControllerInfo(controller, i);
    }

    public void pauseForControllerInfo(MediaSession.ControllerInfo controllerInfo, int i) {
        queueSessionTaskWithPlayerCommandForControllerInfo(controllerInfo, i, 1, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda20
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).pause();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void prepare(IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 2, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda58
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).prepare();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekToDefaultPosition(IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 4, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda5
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekToDefaultPosition();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekToDefaultPositionWithMediaItemIndex(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController == null || i2 < 0) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 10, sendSessionResultSuccess(new ControllerPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda16
            @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
            public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
                playerWrapper.seekToDefaultPosition(this.f$0.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i2));
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekTo(IMediaController iMediaController, int i, final long j) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 5, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda65
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekTo(j);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekToWithMediaItemIndex(IMediaController iMediaController, int i, final int i2, final long j) {
        if (iMediaController == null || i2 < 0) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 10, sendSessionResultSuccess(new ControllerPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda19
            @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
            public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
                playerWrapper.seekTo(this.f$0.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i2), j);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekBack(IMediaController iMediaController, int i) {
        MediaSession.ControllerInfo controller;
        if (iMediaController == null || (controller = this.connectedControllersManager.getController(iMediaController.asBinder())) == null) {
            return;
        }
        seekBackForControllerInfo(controller, i);
    }

    public void seekBackForControllerInfo(MediaSession.ControllerInfo controllerInfo, int i) {
        queueSessionTaskWithPlayerCommandForControllerInfo(controllerInfo, i, 11, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda27
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekBack();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekForward(IMediaController iMediaController, int i) {
        MediaSession.ControllerInfo controller;
        if (iMediaController == null || (controller = this.connectedControllersManager.getController(iMediaController.asBinder())) == null) {
            return;
        }
        seekForwardForControllerInfo(controller, i);
    }

    public void seekForwardForControllerInfo(MediaSession.ControllerInfo controllerInfo, int i) {
        queueSessionTaskWithPlayerCommandForControllerInfo(controllerInfo, i, 12, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda42
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekForward();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void onCustomCommand(IMediaController iMediaController, int i, Bundle bundle, final Bundle bundle2) {
        if (iMediaController == null || bundle == null || bundle2 == null) {
            return;
        }
        try {
            final SessionCommand sessionCommandFromBundle = SessionCommand.fromBundle(bundle);
            dispatchSessionTaskWithSessionCommand(iMediaController, i, sessionCommandFromBundle, sendSessionResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda29
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    return mediaSessionImpl.onCustomCommandOnHandler(controllerInfo, sessionCommandFromBundle, bundle2);
                }
            }));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for SessionCommand", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setRatingWithMediaId(IMediaController iMediaController, int i, final String str, Bundle bundle) {
        if (iMediaController == null || str == null || bundle == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.m163w("MediaSessionStub", "setRatingWithMediaId(): Ignoring empty mediaId");
            return;
        }
        try {
            final Rating ratingFromBundle = Rating.fromBundle(bundle);
            dispatchSessionTaskWithSessionCommand(iMediaController, i, 40010, sendSessionResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda44
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    return mediaSessionImpl.onSetRatingOnHandler(controllerInfo, str, ratingFromBundle);
                }
            }));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for Rating", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setRating(IMediaController iMediaController, int i, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final Rating ratingFromBundle = Rating.fromBundle(bundle);
            dispatchSessionTaskWithSessionCommand(iMediaController, i, 40010, sendSessionResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda10
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    return mediaSessionImpl.onSetRatingOnHandler(controllerInfo, ratingFromBundle);
                }
            }));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for Rating", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setPlaybackSpeed(IMediaController iMediaController, int i, final float f) {
        if (iMediaController == null || f <= 0.0f) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 13, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda18
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setPlaybackSpeed(f);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setPlaybackParameters(IMediaController iMediaController, int i, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final PlaybackParameters playbackParametersFromBundle = PlaybackParameters.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 13, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda30
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    ((PlayerWrapper) obj).setPlaybackParameters(playbackParametersFromBundle);
                }
            }));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for PlaybackParameters", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setMediaItem(IMediaController iMediaController, int i, Bundle bundle) {
        setMediaItemWithResetPosition(iMediaController, i, bundle, true);
    }

    @Override // androidx.media3.session.IMediaSession
    public void setMediaItemWithStartPosition(IMediaController iMediaController, int i, Bundle bundle, final long j) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final MediaItem mediaItemFromBundle = MediaItem.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 31, sendSessionResultWhenReady(handleMediaItemsWithStartPositionWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda61
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    return mediaSessionImpl.onSetMediaItemsOnHandler(controllerInfo, ImmutableList.of(mediaItemFromBundle), 0, j);
                }
            }, new MediaSessionStub$$ExternalSyntheticLambda9())));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setMediaItemWithResetPosition(IMediaController iMediaController, int i, Bundle bundle, final boolean z) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final MediaItem mediaItemFromBundle = MediaItem.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 31, sendSessionResultWhenReady(handleMediaItemsWithStartPositionWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda31
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    MediaItem mediaItem = mediaItemFromBundle;
                    boolean z2 = z;
                    return mediaSessionImpl.onSetMediaItemsOnHandler(controllerInfo, ImmutableList.of(mediaItem), z2 ? -1 : mediaSessionImpl.getPlayerWrapper().getCurrentMediaItemIndex(), z2 ? -9223372036854775807L : mediaSessionImpl.getPlayerWrapper().getCurrentPosition());
                }
            }, new MediaSessionStub$$ExternalSyntheticLambda9())));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setMediaItems(IMediaController iMediaController, int i, IBinder iBinder) {
        setMediaItemsWithResetPosition(iMediaController, i, iBinder, true);
    }

    @Override // androidx.media3.session.IMediaSession
    public void setMediaItemsWithResetPosition(IMediaController iMediaController, int i, IBinder iBinder, final boolean z) {
        if (iMediaController == null || iBinder == null) {
            return;
        }
        try {
            final ImmutableList immutableListFromBundleList = BundleCollectionUtil.fromBundleList(new MediaSessionStub$$ExternalSyntheticLambda7(), BundleListRetriever.getList(iBinder));
            queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWithStartPositionWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda8
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    List list = immutableListFromBundleList;
                    boolean z2 = z;
                    return mediaSessionImpl.onSetMediaItemsOnHandler(controllerInfo, list, z2 ? -1 : mediaSessionImpl.getPlayerWrapper().getCurrentMediaItemIndex(), z2 ? -9223372036854775807L : mediaSessionImpl.getPlayerWrapper().getCurrentPosition());
                }
            }, new MediaSessionStub$$ExternalSyntheticLambda9())));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setMediaItemsWithStartIndex(IMediaController iMediaController, int i, IBinder iBinder, final int i2, final long j) {
        if (iMediaController == null || iBinder == null) {
            return;
        }
        if (i2 == -1 || i2 >= 0) {
            try {
                final ImmutableList immutableListFromBundleList = BundleCollectionUtil.fromBundleList(new MediaSessionStub$$ExternalSyntheticLambda7(), BundleListRetriever.getList(iBinder));
                queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWithStartPositionWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda40
                    @Override // androidx.media3.session.MediaSessionStub.SessionTask
                    public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i3) {
                        return MediaSessionStub.$r8$lambda$jctfXnkx38NPsW6JGZSFETdj3xU(immutableListFromBundleList, i2, j, mediaSessionImpl, controllerInfo, i3);
                    }
                }, new MediaSessionStub$$ExternalSyntheticLambda9())));
            } catch (RuntimeException e) {
                Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
            }
        }
    }

    public static /* synthetic */ ListenableFuture $r8$lambda$jctfXnkx38NPsW6JGZSFETdj3xU(List list, int i, long j, MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int currentMediaItemIndex = i == -1 ? mediaSessionImpl.getPlayerWrapper().getCurrentMediaItemIndex() : i;
        if (i == -1) {
            j = mediaSessionImpl.getPlayerWrapper().getCurrentPosition();
        }
        return mediaSessionImpl.onSetMediaItemsOnHandler(controllerInfo, list, currentMediaItemIndex, j);
    }

    @Override // androidx.media3.session.IMediaSession
    public void setPlaylistMetadata(IMediaController iMediaController, int i, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final MediaMetadata mediaMetadataFromBundle = MediaMetadata.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 19, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda60
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    ((PlayerWrapper) obj).setPlaylistMetadata(mediaMetadataFromBundle);
                }
            }));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaMetadata", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void addMediaItem(IMediaController iMediaController, int i, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final MediaItem mediaItemFromBundle = MediaItem.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda50
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    return mediaSessionImpl.onAddMediaItemsOnHandler(controllerInfo, ImmutableList.of(mediaItemFromBundle));
                }
            }, new MediaItemPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda51
                @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
                public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
                    playerWrapper.addMediaItems(list);
                }
            })));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void addMediaItemWithIndex(IMediaController iMediaController, int i, final int i2, Bundle bundle) {
        if (iMediaController == null || bundle == null || i2 < 0) {
            return;
        }
        try {
            final MediaItem mediaItemFromBundle = MediaItem.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda21
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i3) {
                    return mediaSessionImpl.onAddMediaItemsOnHandler(controllerInfo, ImmutableList.of(mediaItemFromBundle));
                }
            }, new MediaItemPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda22
                @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
                public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
                    playerWrapper.addMediaItems(this.f$0.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i2), list);
                }
            })));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void addMediaItems(IMediaController iMediaController, int i, IBinder iBinder) {
        if (iMediaController == null || iBinder == null) {
            return;
        }
        try {
            final ImmutableList immutableListFromBundleList = BundleCollectionUtil.fromBundleList(new MediaSessionStub$$ExternalSyntheticLambda7(), BundleListRetriever.getList(iBinder));
            queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda48
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    return mediaSessionImpl.onAddMediaItemsOnHandler(controllerInfo, immutableListFromBundleList);
                }
            }, new MediaItemPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda49
                @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
                public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
                    playerWrapper.addMediaItems(list);
                }
            })));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void addMediaItemsWithIndex(IMediaController iMediaController, int i, final int i2, IBinder iBinder) {
        if (iMediaController == null || iBinder == null || i2 < 0) {
            return;
        }
        try {
            final ImmutableList immutableListFromBundleList = BundleCollectionUtil.fromBundleList(new MediaSessionStub$$ExternalSyntheticLambda7(), BundleListRetriever.getList(iBinder));
            queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda33
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i3) {
                    return mediaSessionImpl.onAddMediaItemsOnHandler(controllerInfo, immutableListFromBundleList);
                }
            }, new MediaItemPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda34
                @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
                public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
                    playerWrapper.addMediaItems(this.f$0.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i2), list);
                }
            })));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void removeMediaItem(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController == null || i2 < 0) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultSuccess(new ControllerPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda6
            @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
            public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
                playerWrapper.removeMediaItem(this.f$0.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i2));
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void removeMediaItems(IMediaController iMediaController, int i, final int i2, final int i3) {
        if (iMediaController == null || i2 < 0 || i3 < i2) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultSuccess(new ControllerPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda0
            @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
            public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
                MediaSessionStub mediaSessionStub = this.f$0;
                playerWrapper.removeMediaItems(mediaSessionStub.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i2), mediaSessionStub.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i3));
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void clearMediaItems(IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda66
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).clearMediaItems();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void moveMediaItem(IMediaController iMediaController, int i, final int i2, final int i3) {
        if (iMediaController == null || i2 < 0 || i3 < 0) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda63
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).moveMediaItem(i2, i3);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void moveMediaItems(IMediaController iMediaController, int i, final int i2, final int i3, final int i4) {
        if (iMediaController == null || i2 < 0 || i3 < i2 || i4 < 0) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda39
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).moveMediaItems(i2, i3, i4);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void replaceMediaItem(IMediaController iMediaController, int i, final int i2, Bundle bundle) {
        if (iMediaController == null || bundle == null || i2 < 0) {
            return;
        }
        try {
            final MediaItem mediaItemFromBundle = MediaItem.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda25
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i3) {
                    return mediaSessionImpl.onAddMediaItemsOnHandler(controllerInfo, ImmutableList.of(mediaItemFromBundle));
                }
            }, new MediaItemPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda26
                @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
                public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
                    MediaSessionStub.$r8$lambda$MzTDuo4pdhfWYP7Zt5IqdPqqs3I(this.f$0, i2, playerWrapper, controllerInfo, list);
                }
            })));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    public static /* synthetic */ void $r8$lambda$MzTDuo4pdhfWYP7Zt5IqdPqqs3I(MediaSessionStub mediaSessionStub, int i, PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
        mediaSessionStub.getClass();
        if (list.size() == 1) {
            playerWrapper.replaceMediaItem(mediaSessionStub.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i), (MediaItem) list.get(0));
        } else {
            playerWrapper.replaceMediaItems(mediaSessionStub.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i), mediaSessionStub.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i + 1), list);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void replaceMediaItems(IMediaController iMediaController, int i, final int i2, final int i3, IBinder iBinder) {
        if (iMediaController == null || iBinder == null || i2 < 0 || i3 < i2) {
            return;
        }
        try {
            final ImmutableList immutableListFromBundleList = BundleCollectionUtil.fromBundleList(new MediaSessionStub$$ExternalSyntheticLambda7(), BundleListRetriever.getList(iBinder));
            queueSessionTaskWithPlayerCommand(iMediaController, i, 20, sendSessionResultWhenReady(handleMediaItemsWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda14
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i4) {
                    return mediaSessionImpl.onAddMediaItemsOnHandler(controllerInfo, immutableListFromBundleList);
                }
            }, new MediaItemPlayerTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda15
                @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
                public final void run(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
                    MediaSessionStub mediaSessionStub = this.f$0;
                    playerWrapper.replaceMediaItems(mediaSessionStub.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i2), mediaSessionStub.maybeCorrectMediaItemIndex(controllerInfo, playerWrapper, i3), list);
                }
            })));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for MediaItem", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekToPreviousMediaItem(IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 6, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda38
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekToPreviousMediaItem();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekToNextMediaItem(IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 8, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda23
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekToNextMediaItem();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekToPrevious(IMediaController iMediaController, int i) {
        MediaSession.ControllerInfo controller;
        if (iMediaController == null || (controller = this.connectedControllersManager.getController(iMediaController.asBinder())) == null) {
            return;
        }
        seekToPreviousForControllerInfo(controller, i);
    }

    public void seekToPreviousForControllerInfo(MediaSession.ControllerInfo controllerInfo, int i) {
        queueSessionTaskWithPlayerCommandForControllerInfo(controllerInfo, i, 7, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda32
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekToPrevious();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void seekToNext(IMediaController iMediaController, int i) {
        MediaSession.ControllerInfo controller;
        if (iMediaController == null || (controller = this.connectedControllersManager.getController(iMediaController.asBinder())) == null) {
            return;
        }
        seekToNextForControllerInfo(controller, i);
    }

    public void seekToNextForControllerInfo(MediaSession.ControllerInfo controllerInfo, int i) {
        queueSessionTaskWithPlayerCommandForControllerInfo(controllerInfo, i, 9, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda43
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).seekToNext();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setRepeatMode(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController == null) {
            return;
        }
        if (i2 == 2 || i2 == 0 || i2 == 1) {
            queueSessionTaskWithPlayerCommand(iMediaController, i, 15, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda46
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    ((PlayerWrapper) obj).setRepeatMode(i2);
                }
            }));
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setShuffleModeEnabled(IMediaController iMediaController, int i, final boolean z) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 14, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda54
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setShuffleModeEnabled(z);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setVideoSurface(IMediaController iMediaController, int i, final Surface surface) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 27, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda56
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setVideoSurface(surface);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setVolume(IMediaController iMediaController, int i, final float f) {
        if (iMediaController == null || f < 0.0f || f > 1.0f) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 24, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda53
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setVolume(f);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setDeviceVolume(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController == null || i2 < 0) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 25, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda64
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setDeviceVolume(i2);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setDeviceVolumeWithFlags(IMediaController iMediaController, int i, final int i2, final int i3) {
        if (iMediaController == null || i2 < 0) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 33, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda45
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setDeviceVolume(i2, i3);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void increaseDeviceVolume(IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 26, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda24
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).increaseDeviceVolume();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void increaseDeviceVolumeWithFlags(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 34, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda36
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).increaseDeviceVolume(i2);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void decreaseDeviceVolume(IMediaController iMediaController, int i) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 26, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda4
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).decreaseDeviceVolume();
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void decreaseDeviceVolumeWithFlags(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 34, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda2
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).decreaseDeviceVolume(i2);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setDeviceMuted(IMediaController iMediaController, int i, final boolean z) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 26, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda28
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setDeviceMuted(z);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setDeviceMutedWithFlags(IMediaController iMediaController, int i, final boolean z, final int i2) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 34, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda59
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setDeviceMuted(z, i2);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void setAudioAttributes(IMediaController iMediaController, int i, Bundle bundle, final boolean z) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final AudioAttributes audioAttributesFromBundle = AudioAttributes.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 35, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda47
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    ((PlayerWrapper) obj).setAudioAttributes(audioAttributesFromBundle, z);
                }
            }));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for AudioAttributes", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setPlayWhenReady(IMediaController iMediaController, int i, final boolean z) {
        if (iMediaController == null) {
            return;
        }
        queueSessionTaskWithPlayerCommand(iMediaController, i, 1, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda17
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ((PlayerWrapper) obj).setPlayWhenReady(z);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public void flushCommandQueue(IMediaController iMediaController) {
        if (iMediaController == null) {
            return;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            MediaSessionImpl mediaSessionImpl = this.sessionImpl.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.isReleased()) {
                final MediaSession.ControllerInfo controller = this.connectedControllersManager.getController(iMediaController.asBinder());
                if (controller != null) {
                    Util.postOrRun(mediaSessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda37
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.connectedControllersManager.flushCommandQueue(controller);
                        }
                    });
                }
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void setTrackSelectionParameters(IMediaController iMediaController, int i, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            final TrackSelectionParameters trackSelectionParametersFromBundle = TrackSelectionParameters.fromBundle(bundle);
            queueSessionTaskWithPlayerCommand(iMediaController, i, 29, sendSessionResultSuccess((Consumer<PlayerWrapper>) new Consumer() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    ((PlayerWrapper) obj).setTrackSelectionParameters(this.f$0.updateOverridesUsingUniqueTrackGroupIds(trackSelectionParametersFromBundle));
                }
            }));
        } catch (RuntimeException e) {
            Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for TrackSelectionParameters", e);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public void getLibraryRoot(IMediaController iMediaController, int i, Bundle bundle) {
        final MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsFromBundle;
        if (iMediaController == null) {
            return;
        }
        if (bundle == null) {
            mediaLibraryService$LibraryParamsFromBundle = null;
        } else {
            try {
                mediaLibraryService$LibraryParamsFromBundle = MediaLibraryService$LibraryParams.fromBundle(bundle);
            } catch (RuntimeException e) {
                Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for LibraryParams", e);
                return;
            }
        }
        dispatchSessionTaskWithSessionCommand(iMediaController, i, 50000, sendLibraryResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda57
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = mediaLibraryService$LibraryParamsFromBundle;
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                return MediaSessionStub.m1978$r8$lambda$4u38cwJjRvGrJnjKvlnyWzyPfU(mediaLibraryService$LibraryParams, null, controllerInfo, i2);
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$4u38cwJjRvGrJn-jKvlnyWzyPfU, reason: not valid java name */
    public static /* synthetic */ ListenableFuture m1978$r8$lambda$4u38cwJjRvGrJnjKvlnyWzyPfU(MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
        throw null;
    }

    @Override // androidx.media3.session.IMediaSession
    public void getItem(IMediaController iMediaController, int i, final String str) {
        if (iMediaController == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.m163w("MediaSessionStub", "getItem(): Ignoring empty mediaId");
        } else {
            dispatchSessionTaskWithSessionCommand(iMediaController, i, 50004, sendLibraryResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda41
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    String str2 = str;
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                    return MediaSessionStub.$r8$lambda$lbi7uaDr5xncGNoo38cOPym_eO4(str2, null, controllerInfo, i2);
                }
            }));
        }
    }

    public static /* synthetic */ ListenableFuture $r8$lambda$lbi7uaDr5xncGNoo38cOPym_eO4(String str, MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
        throw null;
    }

    @Override // androidx.media3.session.IMediaSession
    public void getChildren(IMediaController iMediaController, int i, final String str, final int i2, final int i3, Bundle bundle) {
        final MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsFromBundle;
        if (iMediaController == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.m163w("MediaSessionStub", "getChildren(): Ignoring empty parentId");
            return;
        }
        if (i2 < 0) {
            Log.m163w("MediaSessionStub", "getChildren(): Ignoring negative page");
            return;
        }
        if (i3 < 1) {
            Log.m163w("MediaSessionStub", "getChildren(): Ignoring pageSize less than 1");
            return;
        }
        if (bundle == null) {
            mediaLibraryService$LibraryParamsFromBundle = null;
        } else {
            try {
                mediaLibraryService$LibraryParamsFromBundle = MediaLibraryService$LibraryParams.fromBundle(bundle);
            } catch (RuntimeException e) {
                Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for LibraryParams", e);
                return;
            }
        }
        dispatchSessionTaskWithSessionCommand(iMediaController, i, 50003, sendLibraryResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda12
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i4) {
                String str2 = str;
                int i5 = i2;
                int i6 = i3;
                MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = mediaLibraryService$LibraryParamsFromBundle;
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                return MediaSessionStub.m1986$r8$lambda$_N5BktRJWFjwk7XLhrty_xH19M(str2, i5, i6, mediaLibraryService$LibraryParams, null, controllerInfo, i4);
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$_N5B-ktRJWFjwk7XLhrty_xH19M, reason: not valid java name */
    public static /* synthetic */ ListenableFuture m1986$r8$lambda$_N5BktRJWFjwk7XLhrty_xH19M(String str, int i, int i2, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaSession.ControllerInfo controllerInfo, int i3) {
        throw null;
    }

    @Override // androidx.media3.session.IMediaSession
    public void search(IMediaController iMediaController, int i, final String str, Bundle bundle) {
        final MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsFromBundle;
        if (iMediaController == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.m163w("MediaSessionStub", "search(): Ignoring empty query");
            return;
        }
        if (bundle == null) {
            mediaLibraryService$LibraryParamsFromBundle = null;
        } else {
            try {
                mediaLibraryService$LibraryParamsFromBundle = MediaLibraryService$LibraryParams.fromBundle(bundle);
            } catch (RuntimeException e) {
                Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for LibraryParams", e);
                return;
            }
        }
        dispatchSessionTaskWithSessionCommand(iMediaController, i, 50005, sendLibraryResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda67
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                String str2 = str;
                MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = mediaLibraryService$LibraryParamsFromBundle;
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                return MediaSessionStub.m1974$r8$lambda$2T_8vWEogaRDt89KsNGfIqK7gw(str2, mediaLibraryService$LibraryParams, null, controllerInfo, i2);
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$2T_8vW-EogaRDt89KsNGfIqK7gw, reason: not valid java name */
    public static /* synthetic */ ListenableFuture m1974$r8$lambda$2T_8vWEogaRDt89KsNGfIqK7gw(String str, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
        throw null;
    }

    @Override // androidx.media3.session.IMediaSession
    public void getSearchResult(IMediaController iMediaController, int i, final String str, final int i2, final int i3, Bundle bundle) {
        final MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsFromBundle;
        if (iMediaController == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.m163w("MediaSessionStub", "getSearchResult(): Ignoring empty query");
            return;
        }
        if (i2 < 0) {
            Log.m163w("MediaSessionStub", "getSearchResult(): Ignoring negative page");
            return;
        }
        if (i3 < 1) {
            Log.m163w("MediaSessionStub", "getSearchResult(): Ignoring pageSize less than 1");
            return;
        }
        if (bundle == null) {
            mediaLibraryService$LibraryParamsFromBundle = null;
        } else {
            try {
                mediaLibraryService$LibraryParamsFromBundle = MediaLibraryService$LibraryParams.fromBundle(bundle);
            } catch (RuntimeException e) {
                Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for LibraryParams", e);
                return;
            }
        }
        dispatchSessionTaskWithSessionCommand(iMediaController, i, 50006, sendLibraryResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda52
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i4) {
                String str2 = str;
                int i5 = i2;
                int i6 = i3;
                MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = mediaLibraryService$LibraryParamsFromBundle;
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                return MediaSessionStub.m1990$r8$lambda$lnOMCm1EtshGmAsX3bb8oWGPU4(str2, i5, i6, mediaLibraryService$LibraryParams, null, controllerInfo, i4);
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$lnOMCm1EtshGmAsX3bb8oWGPU-4, reason: not valid java name */
    public static /* synthetic */ ListenableFuture m1990$r8$lambda$lnOMCm1EtshGmAsX3bb8oWGPU4(String str, int i, int i2, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaSession.ControllerInfo controllerInfo, int i3) {
        throw null;
    }

    @Override // androidx.media3.session.IMediaSession
    public void subscribe(IMediaController iMediaController, int i, final String str, Bundle bundle) {
        final MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsFromBundle;
        if (iMediaController == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.m163w("MediaSessionStub", "subscribe(): Ignoring empty parentId");
            return;
        }
        if (bundle == null) {
            mediaLibraryService$LibraryParamsFromBundle = null;
        } else {
            try {
                mediaLibraryService$LibraryParamsFromBundle = MediaLibraryService$LibraryParams.fromBundle(bundle);
            } catch (RuntimeException e) {
                Log.m164w("MediaSessionStub", "Ignoring malformed Bundle for LibraryParams", e);
                return;
            }
        }
        dispatchSessionTaskWithSessionCommand(iMediaController, i, 50001, sendLibraryResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda62
            @Override // androidx.media3.session.MediaSessionStub.SessionTask
            public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                String str2 = str;
                MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = mediaLibraryService$LibraryParamsFromBundle;
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                return MediaSessionStub.m1985$r8$lambda$Xc4eNQfbEJS3aLWoIm18RfatR8(str2, mediaLibraryService$LibraryParams, null, controllerInfo, i2);
            }
        }));
    }

    /* JADX INFO: renamed from: $r8$lambda$Xc4eNQfbE-JS3aLWoIm18RfatR8, reason: not valid java name */
    public static /* synthetic */ ListenableFuture m1985$r8$lambda$Xc4eNQfbEJS3aLWoIm18RfatR8(String str, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
        throw null;
    }

    @Override // androidx.media3.session.IMediaSession
    public void unsubscribe(IMediaController iMediaController, int i, final String str) {
        if (iMediaController == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.m163w("MediaSessionStub", "unsubscribe(): Ignoring empty parentId");
        } else {
            dispatchSessionTaskWithSessionCommand(iMediaController, i, 50002, sendLibraryResultWhenReady(new SessionTask() { // from class: androidx.media3.session.MediaSessionStub$$ExternalSyntheticLambda11
                @Override // androidx.media3.session.MediaSessionStub.SessionTask
                public final Object run(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
                    String str2 = str;
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(mediaSessionImpl);
                    return MediaSessionStub.$r8$lambda$RnYLpwrJxrN7hpkjiYAImZ9IBvo(str2, null, controllerInfo, i2);
                }
            }));
        }
    }

    public static /* synthetic */ ListenableFuture $r8$lambda$RnYLpwrJxrN7hpkjiYAImZ9IBvo(String str, MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaSession.ControllerInfo controllerInfo, int i) {
        throw null;
    }

    public PlayerInfo generateAndCacheUniqueTrackGroupIds(PlayerInfo playerInfo) {
        ImmutableList<Tracks.Group> groups = playerInfo.currentTracks.getGroups();
        ImmutableList.Builder builder = ImmutableList.builder();
        ImmutableBiMap.Builder builder2 = ImmutableBiMap.builder();
        for (int i = 0; i < groups.size(); i++) {
            Tracks.Group group = groups.get(i);
            TrackGroup mediaTrackGroup = group.getMediaTrackGroup();
            String strGenerateUniqueTrackGroupId = this.trackGroupIdMap.get(mediaTrackGroup);
            if (strGenerateUniqueTrackGroupId == null) {
                strGenerateUniqueTrackGroupId = generateUniqueTrackGroupId(mediaTrackGroup);
            }
            builder2.put(mediaTrackGroup, strGenerateUniqueTrackGroupId);
            builder.add(group.copyWithId(strGenerateUniqueTrackGroupId));
        }
        this.trackGroupIdMap = builder2.buildOrThrow();
        PlayerInfo playerInfoCopyWithCurrentTracks = playerInfo.copyWithCurrentTracks(new Tracks(builder.build()));
        if (playerInfoCopyWithCurrentTracks.trackSelectionParameters.overrides.isEmpty()) {
            return playerInfoCopyWithCurrentTracks;
        }
        TrackSelectionParameters.Builder builderClearOverrides = playerInfoCopyWithCurrentTracks.trackSelectionParameters.buildUpon().clearOverrides();
        UnmodifiableIterator<TrackSelectionOverride> it = playerInfoCopyWithCurrentTracks.trackSelectionParameters.overrides.values().iterator();
        while (it.hasNext()) {
            TrackSelectionOverride next = it.next();
            TrackGroup trackGroup = next.mediaTrackGroup;
            String str = this.trackGroupIdMap.get(trackGroup);
            if (str != null) {
                builderClearOverrides.addOverride(new TrackSelectionOverride(trackGroup.copyWithId(str), next.trackIndices));
            } else {
                builderClearOverrides.addOverride(next);
            }
        }
        return playerInfoCopyWithCurrentTracks.copyWithTrackSelectionParameters(builderClearOverrides.build());
    }

    private TrackSelectionParameters updateOverridesUsingUniqueTrackGroupIds(TrackSelectionParameters trackSelectionParameters) {
        if (trackSelectionParameters.overrides.isEmpty()) {
            return trackSelectionParameters;
        }
        TrackSelectionParameters.Builder builderClearOverrides = trackSelectionParameters.buildUpon().clearOverrides();
        UnmodifiableIterator<TrackSelectionOverride> it = trackSelectionParameters.overrides.values().iterator();
        while (it.hasNext()) {
            TrackSelectionOverride next = it.next();
            TrackGroup trackGroup = this.trackGroupIdMap.inverse().get(next.mediaTrackGroup.id);
            if (trackGroup != null && next.mediaTrackGroup.length == trackGroup.length) {
                builderClearOverrides.addOverride(new TrackSelectionOverride(trackGroup, next.trackIndices));
            } else {
                builderClearOverrides.addOverride(next);
            }
        }
        return builderClearOverrides.build();
    }

    private String generateUniqueTrackGroupId(TrackGroup trackGroup) {
        StringBuilder sb = new StringBuilder();
        int i = this.nextUniqueTrackGroupIdPrefix;
        this.nextUniqueTrackGroupIdPrefix = i + 1;
        sb.append(Util.intToStringMaxRadix(i));
        sb.append("-");
        sb.append(trackGroup.id);
        return sb.toString();
    }

    public static final class Controller2Cb implements MediaSession.ControllerCb {
        private final int controllerInterfaceVersion;
        private final IMediaController iController;

        public Controller2Cb(IMediaController iMediaController, int i) {
            this.iController = iMediaController;
            this.controllerInterfaceVersion = i;
        }

        public IBinder getCallbackBinder() {
            return this.iController.asBinder();
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onSessionResult(int i, SessionResult sessionResult) {
            this.iController.onSessionResult(i, sessionResult.toBundle());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onLibraryResult(int i, LibraryResult<?> libraryResult) {
            this.iController.onLibraryResult(i, libraryResult.toBundle());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlayerInfoChanged(int i, PlayerInfo playerInfo, Player.Commands commands, boolean z, boolean z2) {
            Assertions.checkState(this.controllerInterfaceVersion != 0);
            boolean z3 = z || !commands.contains(17);
            boolean z4 = z2 || !commands.contains(30);
            if (this.controllerInterfaceVersion >= 2) {
                this.iController.onPlayerInfoChangedWithExclusions(i, playerInfo.filterByAvailableCommands(commands, z, z2).toBundleForRemoteProcess(this.controllerInterfaceVersion), new PlayerInfo.BundlingExclusions(z3, z4).toBundle());
            } else {
                this.iController.onPlayerInfoChanged(i, playerInfo.filterByAvailableCommands(commands, z, true).toBundleForRemoteProcess(this.controllerInterfaceVersion), z3);
            }
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onAvailableCommandsChangedFromPlayer(int i, Player.Commands commands) {
            this.iController.onAvailableCommandsChangedFromPlayer(i, commands.toBundle());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void sendCustomCommand(int i, SessionCommand sessionCommand, Bundle bundle) {
            this.iController.onCustomCommand(i, sessionCommand.toBundle(), bundle);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onDisconnected(int i) {
            SessionUtil.disconnectIMediaController(this.iController);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPeriodicSessionPositionInfoChanged(int i, SessionPositionInfo sessionPositionInfo, boolean z, boolean z2, int i2) {
            this.iController.onPeriodicSessionPositionInfoChanged(i, sessionPositionInfo.filterByAvailableCommands(z, z2).toBundle(i2));
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onRenderedFirstFrame(int i) {
            this.iController.onRenderedFirstFrame(i);
        }

        public int hashCode() {
            return ObjectsCompat.hash(getCallbackBinder());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != Controller2Cb.class) {
                return false;
            }
            return Objects.equals(getCallbackBinder(), ((Controller2Cb) obj).getCallbackBinder());
        }
    }
}
