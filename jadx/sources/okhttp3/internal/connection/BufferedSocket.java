package okhttp3.internal.connection;

import okio.BufferedSink;
import okio.BufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
public interface BufferedSocket extends Socket {
    @Override // okio.Socket
    /* synthetic */ void cancel();

    @Override // okio.Socket
    BufferedSink getSink();

    @Override // okio.Socket
    /* synthetic */ Sink getSink();

    @Override // okio.Socket
    BufferedSource getSource();

    @Override // okio.Socket
    /* synthetic */ Source getSource();
}
