package com.coremedia.iso.boxes;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes4.dex */
public interface Box {
    void getBox(WritableByteChannel writableByteChannel);

    Container getParent();

    long getSize();

    String getType();

    void setParent(Container container);
}
