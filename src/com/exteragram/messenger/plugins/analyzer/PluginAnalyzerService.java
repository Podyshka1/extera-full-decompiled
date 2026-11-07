package com.exteragram.messenger.plugins.analyzer;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import java.io.File;
import java.nio.charset.Charset;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0014\u0018\u0000 (2\u00020\u0001:\u0002'(B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0002J0\u0010 \u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020%H\u0002J\b\u0010&\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015¨\u0006)"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzerService;", "Landroid/app/Service;", "<init>", "()V", "lock", _UrlKt.FRAGMENT_ENCODE_SET, "root", "Ljava/io/File;", "getRoot", "()Ljava/io/File;", "root$delegate", "Lkotlin/Lazy;", "cache", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerCache;", "getCache", "()Lcom/exteragram/messenger/plugins/analyzer/AnalyzerCache;", "cache$delegate", "buildId", _UrlKt.FRAGMENT_ENCODE_SET, "binder", "com/exteragram/messenger/plugins/analyzer/PluginAnalyzerService$binder$1", "Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzerService$binder$1;", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onDestroy", _UrlKt.FRAGMENT_ENCODE_SET, "analyze", "data", "Landroid/os/Parcel;", "reply", "reportFor", "path", "name", "sha256", "useCache", _UrlKt.FRAGMENT_ENCODE_SET, "ensureLibrary", "UnavailableException", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginAnalyzerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginAnalyzerService.kt\ncom/exteragram/messenger/plugins/analyzer/PluginAnalyzerService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"})
public final class PluginAnalyzerService extends Service {
    public static final int CALL_ANALYZE = 2;
    public static final int CALL_PID = 1;
    public static final String DESCRIPTOR = "com.exteragram.messenger.plugins.analyzer";
    private static final int FIRST_CALL = 1;
    private static final int LAST_CALL = 2;
    private static final String LIBRARY = "extera_analyzer";
    public static final int STATUS_ERROR = 2;
    public static final int STATUS_OK = 0;
    public static final int STATUS_UNAVAILABLE = 1;
    private String buildId;
    private final Object lock = new Object();

    /* JADX INFO: renamed from: root$delegate, reason: from kotlin metadata */
    private final Lazy root = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzerService$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PluginAnalyzerService.$r8$lambda$sEDVdHW_eXNGIZgYHe7DxwwPmMg(this.f$0);
        }
    });

    /* JADX INFO: renamed from: cache$delegate, reason: from kotlin metadata */
    private final Lazy cache = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzerService$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PluginAnalyzerService.$r8$lambda$DNQTi4DqlmvHTMGXsuYo0Z5RuUI(this.f$0);
        }
    });
    private final PluginAnalyzerService$binder$1 binder = new Binder() { // from class: com.exteragram.messenger.plugins.analyzer.PluginAnalyzerService$binder$1
        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws Throwable {
            if (code < 1 || code > 2) {
                return super.onTransact(code, data, reply, flags);
            }
            if (Binder.getCallingUid() != Process.myUid()) {
                return false;
            }
            data.enforceInterface(PluginAnalyzerService.DESCRIPTOR);
            if (code != 1) {
                if (code == 2) {
                    this.this$0.analyze(data, reply);
                }
            } else if (reply != null) {
                reply.writeInt(Process.myPid());
            }
            return true;
        }
    };

    public static File $r8$lambda$sEDVdHW_eXNGIZgYHe7DxwwPmMg(PluginAnalyzerService pluginAnalyzerService) {
        return new File(pluginAnalyzerService.getNoBackupFilesDir(), "plugin_analyzer");
    }

    private final File getRoot() {
        return (File) this.root.getValue();
    }

    public static AnalyzerCache $r8$lambda$DNQTi4DqlmvHTMGXsuYo0Z5RuUI(PluginAnalyzerService pluginAnalyzerService) {
        return new AnalyzerCache(new File(pluginAnalyzerService.getRoot(), "reports"));
    }

    private final AnalyzerCache getCache() {
        return (AnalyzerCache) this.cache.getValue();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Process.killProcess(Process.myPid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void analyze(Parcel data, Parcel reply) throws Throwable {
        Object obj;
        Object obj2;
        int i;
        String str;
        String str2;
        String string = data.readString();
        if (string == null) {
            string = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str3 = string;
        String string2 = data.readString();
        if (string2 == null) {
            string2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str4 = string2;
        String string3 = data.readString();
        if (string3 == null) {
            string3 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str5 = string3;
        boolean z = data.readInt() != 0;
        String string4 = data.readString();
        String string5 = data.readString();
        if (string5 == null) {
            string5 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str6 = string5;
        String string6 = data.readString();
        if (string6 == null) {
            string6 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        PluginAnalyzerService pluginAnalyzerService = this;
        String str7 = string6;
        Object obj3 = pluginAnalyzerService.lock;
        synchronized (obj3) {
            try {
                try {
                    String strEnsureLibrary = pluginAnalyzerService.ensureLibrary();
                    String strReportFor = pluginAnalyzerService.reportFor(strEnsureLibrary, str3, str4, str5, z);
                    if (string4 != null) {
                        str = strEnsureLibrary;
                        i = 2;
                        obj2 = obj3;
                        try {
                            String strReportFor2 = reportFor(str, string4, str6, str7, true);
                            Charset charset = Charsets.UTF_8;
                            str2 = new String(AnalyzerNative.diff(strReportFor2.getBytes(charset), strReportFor.getBytes(charset)), charset);
                        } catch (UnavailableException e) {
                            e = e;
                            if (reply != null) {
                                reply.writeInt(1);
                            }
                            if (reply != null) {
                                reply.writeString(e.getMessage());
                                Unit unit = Unit.INSTANCE;
                            }
                        } catch (IllegalStateException e2) {
                            e = e2;
                            if (reply != null) {
                                reply.writeInt(i);
                            }
                            if (reply != null) {
                                reply.writeString(e.getMessage());
                                Unit unit2 = Unit.INSTANCE;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            if (reply != null) {
                                reply.writeInt(i);
                            }
                            if (reply != null) {
                                reply.writeString(e.toString());
                                Unit unit3 = Unit.INSTANCE;
                            }
                        } catch (UnsatisfiedLinkError e4) {
                            e = e4;
                            if (reply != null) {
                                reply.writeInt(1);
                            }
                            if (reply != null) {
                                reply.writeString(e.toString());
                                Unit unit4 = Unit.INSTANCE;
                            }
                        }
                    } else {
                        str = strEnsureLibrary;
                        i = 2;
                        obj2 = obj3;
                        str2 = null;
                    }
                    if (reply != null) {
                        reply.writeInt(0);
                    }
                    if (reply != null) {
                        reply.writeString(str);
                    }
                    if (reply != null) {
                        reply.writeString(strReportFor);
                    }
                    if (reply != null) {
                        reply.writeString(str2);
                        Unit unit5 = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    th = th;
                    obj = pluginAnalyzerService;
                    throw th;
                }
            } catch (UnavailableException e5) {
                e = e5;
                obj2 = obj3;
            } catch (IllegalStateException e6) {
                e = e6;
                obj2 = obj3;
                i = 2;
            } catch (Exception e7) {
                e = e7;
                obj2 = obj3;
                i = 2;
            } catch (UnsatisfiedLinkError e8) {
                e = e8;
                obj2 = obj3;
            } catch (Throwable th2) {
                th = th2;
                obj = obj3;
                throw th;
            }
        }
    }

    private final String reportFor(String buildId, String path, String name, String sha256, boolean useCache) {
        String str;
        if (useCache && (str = getCache().get(buildId, sha256)) != null) {
            return str;
        }
        byte[] bytes = FilesKt.readBytes(new File(path));
        if (!Intrinsics.areEqual(AnalyzerHashesKt.sha256Hex(bytes), sha256)) {
            Segment$$ExternalSyntheticBUOutline1.m973m("plugin file changed during analysis");
            return null;
        }
        Charset charset = Charsets.UTF_8;
        String str2 = new String(AnalyzerNative.analyze(bytes, name.getBytes(charset)), charset);
        getCache().put(buildId, sha256, str2);
        return str2;
    }

    private final String ensureLibrary() throws UnavailableException {
        String str = this.buildId;
        if (str != null) {
            return str;
        }
        String strAnalyzerBuildId = AnalyzerHashesKt.analyzerBuildId(this);
        if (strAnalyzerBuildId == null) {
            throw new UnavailableException("analyzer is not packaged in this build");
        }
        getCache().prune(strAnalyzerBuildId);
        getCache().expire();
        FilesKt.deleteRecursively(new File(getRoot(), "runtime"));
        System.loadLibrary(LIBRARY);
        this.buildId = strAnalyzerBuildId;
        return strAnalyzerBuildId;
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzerService$UnavailableException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "message", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class UnavailableException extends Exception {
        public UnavailableException(String str) {
            super(str);
        }
    }
}
