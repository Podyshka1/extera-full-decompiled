.class Lorg/telegram/ui/Components/ChatActivityEnterView$44;
.super Lorg/telegram/ui/MessageSendPreview;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->onSendLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 4986
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$44;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onEffectChange(J)V
    .locals 1

    .line 4989
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$44;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEffectId(J)V

    return-void
.end method
