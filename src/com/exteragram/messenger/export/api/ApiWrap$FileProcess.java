package com.exteragram.messenger.export.api;

import com.exteragram.messenger.export.output.OutputFile;
import java.util.Deque;
import java.util.concurrent.ConcurrentLinkedDeque;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.NativeByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$FileProcess {
    public Utilities.Callback done;
    public OutputFile file;
    public ApiWrap$FileLocation location;
    public ApiWrap$FileOrigin origin;
    public Utilities.CallbackReturn progress;
    public String relativePath;
    public long randomId = 0;
    public long offset = 0;
    public long size = 0;
    public long requestId = 0;
    public Deque requests = new ConcurrentLinkedDeque();

    public static class Request {
        public NativeByteBuffer bytes;
        public long offset = 0;
    }

    public ApiWrap$FileProcess(String str, OutputFile.Stats stats) {
        this.file = new OutputFile(str, stats);
    }
}
