package com.exteragram.messenger.export.api;

import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$StoriesProcess {
    public Utilities.CallbackReturn fileProgress;
    public Runnable finish;
    public Utilities.CallbackReturn handleSlice;
    public ApiWrap$StoriesSlice slice;
    public Utilities.CallbackReturn start;
    public int processed = 0;
    public int offsetId = 0;
    public boolean lastSlice = false;
    public int fileIndex = 0;
}
