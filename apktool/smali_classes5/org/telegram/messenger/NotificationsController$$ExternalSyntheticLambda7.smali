.class public final synthetic Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;->f$1:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->$r8$lambda$0CEGUOl_qmFmYy3ALvzz2hIMSaw(Ljava/util/function/Consumer;Ljava/util/HashSet;)V

    return-void
.end method
