.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$m6od9kHW-9uO1euU4_-KKWj-l1k(Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method
