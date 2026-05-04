.class Lorg/telegram/ui/Components/ShareAlert$6;
.super Lorg/telegram/ui/Components/ShareAlert$SwitchView;
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
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTabSwitch(I)V
    .locals 0

    .line 1028
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$6;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$mupdateLinkTextView(Lorg/telegram/ui/Components/ShareAlert;)V

    return-void
.end method
