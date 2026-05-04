package com.exteragram.messenger.export.api;

import java.util.HashMap;
import java.util.Map;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ApiWrap$ChatsProcess {
    public Utilities.Callback done;
    public Utilities.CallbackReturn progress;
    public ApiWrap$DialogsInfo info = new ApiWrap$DialogsInfo();
    public int processedCount = 0;
    public Map indexByPeer = new HashMap();
}
