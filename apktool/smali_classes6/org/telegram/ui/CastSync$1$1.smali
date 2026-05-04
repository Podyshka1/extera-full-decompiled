.class Lorg/telegram/ui/CastSync$1$1;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CastSync$1;->onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CastSync$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CastSync$1;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/telegram/ui/CastSync$1$1;->this$0:Lorg/telegram/ui/CastSync$1;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaError(Lcom/google/android/gms/cast/MediaError;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chromecast Media Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusUpdated()V
    .locals 1

    .line 98
    const-string v0, "onStatusUpdated"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lorg/telegram/ui/CastSync;->syncInterface()V

    return-void
.end method
