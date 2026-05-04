.class Lorg/telegram/ui/Components/InstantCameraView$8;
.super Ljava/io/File;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;->showCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$8;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .line 877
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 878
    const-string v0, "delete camera file"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 880
    :cond_0
    invoke-super {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
