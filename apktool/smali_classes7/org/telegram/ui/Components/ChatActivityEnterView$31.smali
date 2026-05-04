.class Lorg/telegram/ui/Components/ChatActivityEnterView$31;
.super Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createDoneButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 0

    .line 3838
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$31;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method


# virtual methods
.method public isInactive()Z
    .locals 1

    .line 3846
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$31;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
