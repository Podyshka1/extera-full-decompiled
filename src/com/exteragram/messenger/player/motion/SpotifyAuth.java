package com.exteragram.messenger.player.motion;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.customtabs.CustomTabsIntent;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SpotifyAuth {
    private static ServerSocket server;

    public interface Callback {
        void onResult(boolean z);
    }

    public static void login(Context context, final Callback callback) {
        cancel();
        final String strRandom = random(48);
        final String strRandom2 = random(16);
        try {
            final ServerSocket serverSocket = new ServerSocket();
            serverSocket.setReuseAddress(true);
            serverSocket.bind(new InetSocketAddress(InetAddress.getByAddress(new byte[]{ByteCompanionObject.MAX_VALUE, 0, 0, 1}), 8898));
            serverSocket.setSoTimeout(300000);
            synchronized (SpotifyAuth.class) {
                server = serverSocket;
            }
            new Thread(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyAuth$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    SpotifyAuth.listen(serverSocket, strRandom2, strRandom, callback);
                }
            }, "spotifyLogin").start();
            Uri uriBuild = Uri.parse("https://accounts.spotify.com/authorize").buildUpon().appendQueryParameter("client_id", "65b708073fc0480ea92a077233ca87bd").appendQueryParameter("response_type", "code").appendQueryParameter("redirect_uri", "http://127.0.0.1:8898/login").appendQueryParameter("scope", "streaming user-read-private user-read-email").appendQueryParameter("code_challenge_method", "S256").appendQueryParameter("code_challenge", challenge(strRandom)).appendQueryParameter("state", strRandom2).build();
            try {
                new CustomTabsIntent.Builder().setToolbarColor(Theme.getColor(Theme.key_actionBarBrowser)).setShowTitle(true).build().launchUrl(context, uriBuild);
            } catch (Exception e) {
                FileLog.m1040e(e);
                try {
                    context.startActivity(new Intent("android.intent.action.VIEW", uriBuild).addFlags(268435456));
                } catch (Exception e2) {
                    FileLog.m1040e(e2);
                    cancel();
                    callback.onResult(false);
                }
            }
        } catch (IOException e3) {
            FileLog.m1040e(e3);
            callback.onResult(false);
        }
    }

    public static synchronized void cancel() {
        ServerSocket serverSocket = server;
        if (serverSocket != null) {
            closeQuietly(serverSocket);
            server = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void listen(ServerSocket serverSocket, String str, String str2, final Callback callback) throws Throwable {
        boolean z;
        String queryParameter;
        Socket socketAccept;
        String str3;
        Uri uri;
        while (true) {
            z = true;
            try {
                socketAccept = serverSocket.accept();
                try {
                    socketAccept.setSoTimeout(10000);
                    String line = new BufferedReader(new InputStreamReader(socketAccept.getInputStream(), StandardCharsets.UTF_8)).readLine();
                    String[] strArrSplit = line != null ? line.split(" ") : new String[0];
                    if (strArrSplit.length >= 2) {
                        uri = Uri.parse("http://127.0.0.1" + strArrSplit[1]);
                    } else {
                        uri = null;
                    }
                    if (uri != null && "/login".equals(uri.getPath())) {
                        break;
                    }
                    respond(socketAccept.getOutputStream(), "404 Not Found", _UrlKt.FRAGMENT_ENCODE_SET);
                    socketAccept.close();
                } catch (Throwable th) {
                    th = th;
                    str3 = null;
                }
            } catch (IOException e) {
                e = e;
                queryParameter = null;
            }
        }
        queryParameter = str.equals(uri.getQueryParameter("state")) ? uri.getQueryParameter("code") : null;
        try {
            respond(socketAccept.getOutputStream(), "200 OK", page(queryParameter != null));
            try {
                socketAccept.close();
            } catch (IOException e2) {
                e = e2;
                if (!serverSocket.isClosed()) {
                }
            }
            synchronized (SpotifyAuth.class) {
                try {
                    if (server == serverSocket) {
                        z = false;
                    }
                    if (!z) {
                        server = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            closeQuietly(serverSocket);
            if (z) {
                return;
            }
            if (queryParameter == null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyAuth$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onResult(false);
                    }
                });
            } else {
                Objects.requireNonNull(callback);
                SpotifyCanvasRepository.exchangeCode(queryParameter, str2, new Utilities.Callback() { // from class: com.exteragram.messenger.player.motion.SpotifyAuth$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        callback.onResult(((Boolean) obj).booleanValue());
                    }
                });
            }
        } catch (Throwable th3) {
            str3 = queryParameter;
            th = th3;
            try {
                if (socketAccept != null) {
                    try {
                        socketAccept.close();
                    } catch (Throwable th4) {
                        th.addSuppressed(th4);
                    }
                }
                throw th;
            } catch (IOException e3) {
                e = e3;
                queryParameter = str3;
                if (!serverSocket.isClosed()) {
                    FileLog.m1040e(e);
                }
                synchronized (SpotifyAuth.class) {
                }
            }
        }
    }

    private static String page(boolean z) {
        String str = "intent://#Intent;package=" + ApplicationLoader.applicationContext.getPackageName() + ";action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;end";
        StringBuilder sb = new StringBuilder("<!doctype html><html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"></head><body style=\"margin:0;padding:64px 24px;background:#121212;color:#fff;font:18px sans-serif;text-align:center\"><p>");
        sb.append(LocaleController.getString(z ? C2807R.string.PlayerSpotifyLoginDone : C2807R.string.PlayerSpotifyLoginFailed));
        sb.append("</p><p><a id=\"back\" href=\"");
        sb.append(str);
        sb.append("\" style=\"color:#1ed760;font-weight:bold\">");
        sb.append(LocaleController.getString(C2807R.string.PlayerSpotifyLoginBack));
        sb.append("</a></p><script>location.href=document.getElementById('back').href</script></body></html>");
        return sb.toString();
    }

    private static void respond(OutputStream outputStream, String str, String str2) throws IOException {
        byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
        outputStream.write(("HTTP/1.1 " + str + "\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: " + bytes.length + "\r\nConnection: close\r\n\r\n").getBytes(StandardCharsets.US_ASCII));
        outputStream.write(bytes);
        outputStream.flush();
    }

    private static String random(int i) {
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }

    private static String challenge(String str) {
        try {
            return Base64.encodeToString(MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.US_ASCII)), 11);
        } catch (Exception e) {
            UnsafeUtil$$ExternalSyntheticBUOutline0.m507m(e);
            return null;
        }
    }

    private static void closeQuietly(ServerSocket serverSocket) {
        try {
            serverSocket.close();
        } catch (IOException unused) {
        }
    }
}
