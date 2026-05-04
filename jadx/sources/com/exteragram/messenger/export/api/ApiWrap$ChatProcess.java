package com.exteragram.messenger.export.api;

import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$ChatProcess {
    public Runnable done;
    public Utilities.CallbackReturn fileProgress;
    public Utilities.CallbackReturn handleSlice;
    public ApiWrap$DialogInfo info;
    public Utilities.Callback requestDone;
    public ApiWrap$MessagesSlice slice;
    public Utilities.CallbackReturn start;
    public int localSplitIndex = 0;
    public int largestIdPlusOne = 1;
    public ApiWrap$ParseMediaContext context = new ApiWrap$ParseMediaContext();
    public boolean lastSlice = false;
    public int fileIndex = 0;
}
