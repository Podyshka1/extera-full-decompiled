.class Lorg/telegram/ui/Components/ShareAlert$26;
.super Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getFillColor()I
    .locals 2

    .line 1776
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v0

    return v0
.end method

.method public isInScheduleMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInactive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
