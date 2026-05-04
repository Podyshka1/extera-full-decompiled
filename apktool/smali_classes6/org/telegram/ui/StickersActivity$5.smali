.class Lorg/telegram/ui/StickersActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity;->processSelectionMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$5;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCopy()Z
    .locals 1

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$5;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity;->clearSelected()V

    const/4 v0, 0x1

    return v0
.end method

.method public didShare()V
    .locals 1

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$5;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity;->clearSelected()V

    return-void
.end method
