package com.neovisionaries.ws.client;

/* JADX INFO: loaded from: classes5.dex */
class Address {
    private final String mHost;
    private final int mPort;
    private transient String mString;

    public Address(String str, int i) {
        this.mHost = str;
        this.mPort = i;
    }

    public String getHostname() {
        return this.mHost;
    }

    public int getPort() {
        return this.mPort;
    }

    public String toString() {
        if (this.mString == null) {
            this.mString = String.format("%s:%d", this.mHost, Integer.valueOf(this.mPort));
        }
        return this.mString;
    }
}
