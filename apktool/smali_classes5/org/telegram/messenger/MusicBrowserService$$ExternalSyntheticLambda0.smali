.class public final synthetic Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MusicBrowserService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/service/media/MediaBrowserService$Result;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/MusicBrowserService;

    iput-object p2, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda0;->f$2:Landroid/service/media/MediaBrowserService$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/MusicBrowserService;

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$$ExternalSyntheticLambda0;->f$2:Landroid/service/media/MediaBrowserService$Result;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MusicBrowserService;->$r8$lambda$ERJaPXt5LY8D0DjFJnKqifIuV3Q(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    return-void
.end method
