.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda242;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/messenger/NotificationsController$StoryNotification;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/NotificationsController$StoryNotification;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda242;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda242;->f$1:Lorg/telegram/messenger/NotificationsController$StoryNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda242;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda242;->f$1:Lorg/telegram/messenger/NotificationsController$StoryNotification;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$ijfno8YVViJS8AMtYA4Nmvtf4Zw(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/NotificationsController$StoryNotification;)V

    return-void
.end method
