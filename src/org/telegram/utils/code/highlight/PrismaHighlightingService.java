package org.telegram.utils.code.highlight;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import okhttp3.internal.url._UrlKt;
import org.telegram.utils.code.highlight.PrismaHighlighter;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes8.dex */
public final class PrismaHighlightingService implements AutoCloseable {
    private final long byteLimit;
    private final LinkedHashMap<Key, Cached> cache;
    private long cachedBytes;
    private boolean closed;
    private final int entryLimit;
    private final Factory factory;
    private final FailureHandler failures;
    private Throwable initializationError;
    private volatile Set<String> languages;
    private final Object lock;
    private final HashMap<Key, ArrayList<Request>> pending;
    private Tokenizer tokenizer;
    private final ExecutorService worker;

    public interface Callback {
        void complete(Result result);
    }

    public interface Factory {
        Tokenizer create();
    }

    public interface FailureHandler {
        void failed(Throwable th);
    }

    public interface Tokenizer extends AutoCloseable {
        @Override // java.lang.AutoCloseable
        void close();

        String[] getLanguages();

        PrismaHighlighter.Tokenization tokenize(String str, String str2);
    }

    public static final class Result {
        public final Throwable error;
        public final PrismaHighlighter.Tokenization tokens;

        public Result(PrismaHighlighter.Tokenization tokenization, Throwable th) {
            this.tokens = tokenization;
            this.error = th;
        }
    }

    public static final class Request {
        private volatile Callback callback;

        public Request(Callback callback) {
            this.callback = callback;
        }

        public void cancel() {
            this.callback = null;
        }

        public void deliver(Result result) {
            Callback callback = this.callback;
            this.callback = null;
            if (callback != null) {
                callback.complete(result);
            }
        }

        public boolean isCancelled() {
            return this.callback == null;
        }
    }

    public static final class Key {
        final int hash;
        final String language;
        final String text;

        public Key(String str, String str2) {
            this.text = str;
            this.language = str2;
            this.hash = (str.hashCode() * 31) + str2.hashCode();
        }

        public int hashCode() {
            return this.hash;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return this.text.equals(key.text) && this.language.equals(key.language);
        }
    }

    public static final class Cached {
        final long bytes;
        final Result result;

        public Cached(Key key, Result result) {
            this.result = result;
            long length = (((long) (key.text.length() + key.language.length())) * 2) + 128;
            PrismaHighlighter.Tokenization tokenization = result.tokens;
            this.bytes = length + (tokenization == null ? 1024L : tokenization.estimatedBytes());
        }
    }

    public PrismaHighlightingService(Factory factory, FailureHandler failureHandler) {
        this(factory, failureHandler, 256, 8388608L);
    }

    public PrismaHighlightingService(Factory factory, FailureHandler failureHandler, int i, long j) {
        this.lock = new Object();
        this.cache = new LinkedHashMap<>(16, 0.75f, true);
        this.pending = new HashMap<>();
        if (factory == null) {
            f$$ExternalSyntheticBUOutline2.m216m(PluginsConstants.Settings.FACTORY);
            throw null;
        }
        if (i < 0 || j < 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Cache limits");
            throw null;
        }
        this.factory = factory;
        this.failures = failureHandler;
        this.entryLimit = i;
        this.byteLimit = j;
        this.worker = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: org.telegram.utils.code.highlight.PrismaHighlightingService$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return PrismaHighlightingService.m24435$r8$lambda$XcqrUBw9iwkk26xkJXYiiqryA(runnable);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Xcq-rUBw9iwk-k26xkJXYiiqryA, reason: not valid java name */
    public static /* synthetic */ Thread m24435$r8$lambda$XcqrUBw9iwkk26xkJXYiiqryA(Runnable runnable) {
        Thread thread = new Thread(runnable, "PrismaHighlight");
        thread.setDaemon(true);
        return thread;
    }

    public static String normalizeLanguage(String str) {
        String lowerCase;
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        lowerCase = str.trim().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        switch (lowerCase) {
            case "c#":
                return "csharp";
            case "fc":
                return "func";
            case "c++":
                return "cpp";
            case "fif":
                return "fift";
            case "tl-b":
                return "tlb";
            default:
                return lowerCase;
        }
    }

    public Request request(String str, String str2, Callback callback) {
        if (str == null || callback == null) {
            throw null;
        }
        final Key key = new Key(str, normalizeLanguage(str2));
        Request request = new Request(callback);
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    throw new IllegalStateException("Service is closed");
                }
                ArrayList<Request> arrayList = this.pending.get(key);
                if (arrayList != null) {
                    arrayList.add(request);
                    return request;
                }
                ArrayList<Request> arrayList2 = new ArrayList<>();
                arrayList2.add(request);
                this.pending.put(key, arrayList2);
                this.worker.execute(new Runnable() { // from class: org.telegram.utils.code.highlight.PrismaHighlightingService$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$request$1(key);
                    }
                });
                return request;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void prepare() {
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.worker.execute(new Runnable() { // from class: org.telegram.utils.code.highlight.PrismaHighlightingService$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            this.f$0.initialize();
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Set<String> getLanguages() {
        return this.languages;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean initialize() throws Throwable {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return false;
                }
                if (this.tokenizer != null) {
                    return true;
                }
                if (this.initializationError != null) {
                    return false;
                }
                try {
                    try {
                        Tokenizer tokenizerCreate = this.factory.create();
                        if (tokenizerCreate == null) {
                            throw new IllegalStateException("Tokenizer factory returned null");
                        }
                        try {
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            Collections.addAll(linkedHashSet, tokenizerCreate.getLanguages());
                            if (linkedHashSet.contains("func")) {
                                linkedHashSet.add("fc");
                            }
                            if (linkedHashSet.contains("fift")) {
                                linkedHashSet.add("fif");
                            }
                            if (linkedHashSet.contains("tlb")) {
                                linkedHashSet.add("tl-b");
                            }
                            this.languages = Collections.unmodifiableSet(linkedHashSet);
                            this.tokenizer = tokenizerCreate;
                            return true;
                        } catch (Error e) {
                            e = e;
                            tokenizerCreate.close();
                            throw e;
                        } catch (RuntimeException e2) {
                            e = e2;
                            tokenizerCreate.close();
                            throw e;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        this.initializationError = e;
                        report(e);
                        return false;
                    }
                } catch (LinkageError e4) {
                    e = e4;
                    this.initializationError = e;
                    report(e);
                    return false;
                } catch (OutOfMemoryError e5) {
                    e = e5;
                    this.initializationError = e;
                    report(e);
                    return false;
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: process, reason: merged with bridge method [inline-methods] */
    public void lambda$request$1(Key key) {
        Result result;
        Result result2;
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                ArrayList<Request> arrayList = this.pending.get(key);
                if (arrayList != null) {
                    int size = arrayList.size();
                    int i = 0;
                    int i2 = 0;
                    while (i2 < size) {
                        Request request = arrayList.get(i2);
                        i2++;
                        if (!request.isCancelled()) {
                            Cached cached = this.cache.get(key);
                            if (cached != null) {
                                result2 = cached.result;
                            } else if (!initialize()) {
                                result2 = new Result(null, this.initializationError);
                            } else {
                                try {
                                    PrismaHighlighter.Tokenization tokenization = this.tokenizer.tokenize(key.text, key.language);
                                    tokenization.styledRanges();
                                    result = new Result(tokenization, null);
                                } catch (LinkageError | OutOfMemoryError | RuntimeException e) {
                                    report(e);
                                    result = new Result(null, e);
                                }
                                result2 = result;
                            }
                            synchronized (this.lock) {
                                try {
                                    if (this.closed) {
                                        return;
                                    }
                                    if (cached == null && result2.error == null) {
                                        put(key, result2);
                                    }
                                    ArrayList<Request> arrayListRemove = this.pending.remove(key);
                                    if (arrayListRemove == null) {
                                        return;
                                    }
                                    int size2 = arrayListRemove.size();
                                    while (i < size2) {
                                        Request request2 = arrayListRemove.get(i);
                                        i++;
                                        try {
                                            request2.deliver(result2);
                                        } catch (LinkageError | RuntimeException e2) {
                                            report(e2);
                                        }
                                    }
                                    return;
                                } finally {
                                }
                            }
                        }
                    }
                }
                this.pending.remove(key);
            } finally {
            }
        }
    }

    private void put(Key key, Result result) {
        Cached cached = new Cached(key, result);
        if (this.entryLimit == 0 || cached.bytes > this.byteLimit) {
            return;
        }
        this.cache.put(key, cached);
        this.cachedBytes += cached.bytes;
        while (true) {
            if (this.cache.size() <= this.entryLimit && this.cachedBytes <= this.byteLimit) {
                return;
            }
            Map.Entry<Key, Cached> next = this.cache.entrySet().iterator().next();
            this.cachedBytes -= next.getValue().bytes;
            this.cache.remove(next.getKey());
        }
    }

    private void report(Throwable th) {
        FailureHandler failureHandler = this.failures;
        if (failureHandler == null) {
            return;
        }
        try {
            failureHandler.failed(th);
        } catch (LinkageError | RuntimeException unused) {
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                for (ArrayList<Request> arrayList : this.pending.values()) {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Request request = arrayList.get(i);
                        i++;
                        request.cancel();
                    }
                }
                this.pending.clear();
                this.cache.clear();
                this.cachedBytes = 0L;
                this.worker.execute(new Runnable() { // from class: org.telegram.utils.code.highlight.PrismaHighlightingService$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$close$2();
                    }
                });
                this.worker.shutdown();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$2() {
        Tokenizer tokenizer = this.tokenizer;
        if (tokenizer != null) {
            tokenizer.close();
        }
    }
}
