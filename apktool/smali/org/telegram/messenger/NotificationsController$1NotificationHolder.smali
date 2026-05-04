.class Lorg/telegram/messenger/NotificationsController$1NotificationHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->showExtraNotifications(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;JJLjava/lang/String;[JILandroid/net/Uri;IZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationHolder"
.end annotation


# instance fields
.field chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field dialogId:J

.field id:I

.field name:Ljava/lang/String;

.field notification:Landroidx/core/app/NotificationCompat$Builder;

.field story:Z

.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field topicId:J

.field user:Lorg/telegram/tgnet/TLRPC$User;

.field final synthetic val$chatName:Ljava/lang/String;

.field final synthetic val$chatType:I

.field final synthetic val$importance:I

.field final synthetic val$isDefault:Z

.field final synthetic val$isInApp:Z

.field final synthetic val$isSilent:Z

.field final synthetic val$lastTopicId:J

.field final synthetic val$ledColor:I

.field final synthetic val$sound:Landroid/net/Uri;

.field final synthetic val$vibrationPattern:[J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;IJZJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;[JILandroid/net/Uri;IZZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZJ",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ")V"
        }
    .end annotation

    .line 4829
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-wide p12, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$lastTopicId:J

    iput-object p14, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$chatName:Ljava/lang/String;

    iput-object p15, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$vibrationPattern:[J

    move/from16 p1, p16

    iput p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$ledColor:I

    move-object/from16 p1, p17

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$sound:Landroid/net/Uri;

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$importance:I

    move/from16 p1, p19

    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$isDefault:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$isInApp:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$isSilent:Z

    move/from16 p1, p22

    iput p1, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$chatType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4830
    iput p2, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->id:I

    .line 4831
    iput-object p8, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->name:Ljava/lang/String;

    .line 4832
    iput-object p9, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 4833
    iput-object p10, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 4834
    iput-object p11, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->notification:Landroidx/core/app/NotificationCompat$Builder;

    .line 4835
    iput-wide p3, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->dialogId:J

    .line 4836
    iput-boolean p5, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->story:Z

    .line 4837
    iput-wide p6, p0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->topicId:J

    return-void
.end method


# virtual methods
.method call()V
    .locals 17

    move-object/from16 v1, p0

    .line 4841
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show dialog notification with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->dialogId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " user="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " chat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 4845
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->-$$Nest$sfgetnotificationManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iget v2, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->id:I

    iget-object v3, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4847
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4848
    iget-object v2, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->this$0:Lorg/telegram/messenger/NotificationsController;

    iget-object v3, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->notification:Landroidx/core/app/NotificationCompat$Builder;

    iget-wide v4, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->dialogId:J

    iget-wide v6, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$lastTopicId:J

    iget-object v8, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$chatName:Ljava/lang/String;

    iget-object v9, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$vibrationPattern:[J

    iget v10, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$ledColor:I

    iget-object v11, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$sound:Landroid/net/Uri;

    iget v12, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$importance:I

    iget-boolean v13, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$isDefault:Z

    iget-boolean v14, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$isInApp:Z

    iget-boolean v15, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$isSilent:Z

    iget v0, v1, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->val$chatType:I

    move/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/NotificationsController;->-$$Nest$mresetNotificationSound(Lorg/telegram/messenger/NotificationsController;Landroidx/core/app/NotificationCompat$Builder;JJLjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    return-void
.end method
