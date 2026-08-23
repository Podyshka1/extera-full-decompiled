package com.google.android.datatransport;

/* JADX INFO: loaded from: classes.dex */
public interface TransportFactory {
    Transport getTransport(String str, Class cls, Encoding encoding, Transformer transformer);
}
