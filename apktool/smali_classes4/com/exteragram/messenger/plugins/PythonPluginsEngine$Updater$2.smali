.class Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->savePythonSdkArchive(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Document;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$autoRestartEngine:Z

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1781
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$2;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-boolean p2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$2;->val$autoRestartEngine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObserverTag()I
    .locals 1

    .line 1802
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->-$$Nest$sfgetTAG()I

    move-result v0

    return v0
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const-wide p1, -0x53131df61c0974dbL    # -2.769319667336797E-92

    .line 1784
    invoke-static {p1, p2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1785
    invoke-static {p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->-$$Nest$sfputisLoading(Z)V

    const/4 p1, 0x2

    .line 1786
    invoke-static {p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->-$$Nest$smsetStatus(I)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 1

    .line 1791
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$2;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$2;->val$autoRestartEngine:Z

    invoke-static {p1, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->-$$Nest$smcopyArchiveToPluginsDirectory(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method
