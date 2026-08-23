package com.exteragram.messenger.export.api;

import java.util.ArrayList;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$UserpicsProcess {
    public Utilities.CallbackReturn fileProgress;
    public Runnable finish;
    public Utilities.CallbackReturn handleSlice;
    public ArrayList slice;
    public Utilities.CallbackReturn start;
    public int processed = 0;
    public long maxId = 0;
    public boolean lastSlice = false;
    public int fileIndex = 0;
}
