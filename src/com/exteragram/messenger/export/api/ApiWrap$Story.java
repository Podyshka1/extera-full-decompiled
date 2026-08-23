package com.exteragram.messenger.export.api;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$Story {
    public ArrayList caption;
    public ApiWrap$Media media;

    /* JADX INFO: renamed from: id */
    public int f276id = 0;
    public int date = 0;
    public int expires = 0;
    public boolean pinned = false;

    public ApiWrap$File file() {
        return this.media.getFile();
    }

    public ApiWrap$Image thumb() {
        return this.media.getThumb();
    }
}
