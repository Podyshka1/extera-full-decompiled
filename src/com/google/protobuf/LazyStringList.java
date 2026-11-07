package com.google.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface LazyStringList extends List {
    void add(ByteString byteString);

    Object getRaw(int i);

    List<?> getUnderlyingElements();

    LazyStringList getUnmodifiableView();
}
