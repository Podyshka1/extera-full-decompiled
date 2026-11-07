package com.google.protobuf;

/* JADX INFO: loaded from: classes5.dex */
interface MessageInfo {
    MessageLite getDefaultInstance();

    ProtoSyntax getSyntax();

    boolean isMessageSetWireFormat();
}
