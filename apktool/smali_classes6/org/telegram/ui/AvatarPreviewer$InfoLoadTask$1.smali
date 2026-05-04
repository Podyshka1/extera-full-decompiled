.class Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 309
    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    invoke-static {p2}, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->-$$Nest$fgetloading(Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    invoke-static {p2}, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->-$$Nest$fgetnotificationId(Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask$1;->this$0:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;->onReceiveNotification([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
