.class public final synthetic Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MusicBrowserService;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/service/media/MediaBrowserService$Result;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/MusicBrowserService;

    iput-object p2, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iput-object p3, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$3:Landroid/service/media/MediaBrowserService$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/MusicBrowserService;

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda1;->f$3:Landroid/service/media/MediaBrowserService$Result;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MusicBrowserService;->$r8$lambda$cSmcL6YiPVtQ6HnSyYoAriTyzLY(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    return-void
.end method
